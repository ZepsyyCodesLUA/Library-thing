local WindowTable = {}

function WindowTable:CreateWindow()

	local AmazonX = Instance.new("ScreenGui")
	local AmazonXMainFrame = Instance.new("Frame")
	local mainCorner = Instance.new("UICorner")
	local sideBar = Instance.new("Frame")
	local mainCorner_2 = Instance.new("UICorner")
	local allTabs = Instance.new("Frame")
	local mainCorner_3 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local allPages = Instance.new("Frame")
	local mainCorner_5 = Instance.new("UICorner")
	local pagesFolder = Instance.new("Folder")


	--Properties:

	AmazonX.Name = "Amazon X"
	AmazonX.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	AmazonX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	AmazonXMainFrame.Name = "AmazonXMainFrame"
	AmazonXMainFrame.Parent = AmazonX
	AmazonXMainFrame.BackgroundColor3 = Color3.fromRGB(255, 96, 99)
	AmazonXMainFrame.Position = UDim2.new(0.328506112, 0, 0.3264516, 0)
	AmazonXMainFrame.Size = UDim2.new(0, 450, 0, 269)

	mainCorner.CornerRadius = UDim.new(0, 3)
	mainCorner.Name = "mainCorner"
	mainCorner.Parent = AmazonXMainFrame

	sideBar.Name = "sideBar"
	sideBar.Parent = AmazonXMainFrame
	sideBar.BackgroundColor3 = Color3.fromRGB(135, 51, 53)
	sideBar.Size = UDim2.new(0, 119, 0, 268)

	mainCorner_2.CornerRadius = UDim.new(0, 3)
	mainCorner_2.Name = "mainCorner"
	mainCorner_2.Parent = sideBar

	allTabs.Name = "allTabs"
	allTabs.Parent = sideBar
	allTabs.BackgroundColor3 = Color3.fromRGB(135, 51, 53)
	allTabs.Position = UDim2.new(0.0672268942, 0, 0.0223880596, 0)
	allTabs.Size = UDim2.new(0, 104, 0, 256)

	mainCorner_3.CornerRadius = UDim.new(0, 3)
	mainCorner_3.Name = "mainCorner"
	mainCorner_3.Parent = allTabs




	UIListLayout.Parent = allTabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	allPages.Name = "allPages"
	allPages.Parent = sideBar
	allPages.BackgroundColor3 = Color3.fromRGB(135, 51, 53)
	allPages.Position = UDim2.new(1.06722689, 0, 0.0223880596, 0)
	allPages.Size = UDim2.new(0, 316, 0, 256)

	mainCorner_5.CornerRadius = UDim.new(0, 3)
	mainCorner_5.Name = "mainCorner"
	mainCorner_5.Parent = allPages

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = allPages


	
	local TabHandler = {}
	
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local TextButton = Instance.new("TextButton")
		local newPage = Instance.new("ScrollingFrame")
		local elementsListing = Instance.new("UIListLayout")
		local mainCorner_4 = Instance.new("UICorner")

		TextButton.Parent = allTabs
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 64, 67)
		TextButton.Size = UDim2.new(0, 104, 0, 28)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Text = tabname
		TextButton.TextSize = 22.000
		TextButton.TextWrapped = true
		
		TextButton.MouseButton1Click:Connect(function()
			for i,v in next, pagesFolder:GetChildren() do
				v.Visible = false
			end
			newPage.Visible = true
		end)
		
		newPage.Name = "newPage"
		newPage.Parent = allPages
		newPage.Active = true
		newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		newPage.BackgroundTransparency = 1.000
		newPage.BorderSizePixel = 0
		newPage.Size = UDim2.new(0, 316, 0, 256)
		newPage.ScrollBarThickness = 8

		elementsListing.Name = "elementsListing"
		elementsListing.Parent = newPage
		elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
		
		mainCorner_4.CornerRadius = UDim.new(0, 3)
		mainCorner_4.Name = "mainCorner"
		mainCorner_4.Parent = TextButton
	end
	
	return TabHandler
end

return WindowTable
