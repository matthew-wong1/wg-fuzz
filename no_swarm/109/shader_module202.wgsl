struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(78445u, 33102u, 49864u), vec3<u32>(119497u, 1u, 9700u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 0u, 22560u), vec3<u32>(36223u, 275u, 14690u), vec3<u32>(16870u, 0u, 1u), vec3<u32>(51908u, 1u, 55933u), vec3<u32>(53105u, 60452u, 11723u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1961u, 7568u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 11782u), vec3<u32>(1u, 3633u, 26641u), vec3<u32>(28990u, 34921u, 11686u), vec3<u32>(1u, 0u, 0u), vec3<u32>(7073u, 4294967295u, 1951u), vec3<u32>(23158u, 9057u, 4294967295u), vec3<u32>(1054u, 1u, 20695u), vec3<u32>(13704u, 0u, 2564u), vec3<u32>(1u, 23526u, 23u), vec3<u32>(35092u, 0u, 1u), vec3<u32>(1u, 0u, 68602u), vec3<u32>(1u, 65502u, 19544u), vec3<u32>(19103u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u));

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true));

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec4<f32>(-1995f, 452f, 1245f, -902f), Struct_3(vec2<u32>(4294967295u, 74858u), Struct_1(2147483647i, 0i, vec4<i32>(2147483647i, 2147483647i, 23802i, 6746i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i)), Struct_1(27695i, 0i, vec4<i32>(-21899i, i32(-2147483648), -8330i, -10326i), vec4<i32>(-31789i, 29136i, -7240i, 9522i)), vec2<u32>(1u, 1u)), Struct_3(vec2<u32>(21624u, 0u), Struct_1(0i, 2147483647i, vec4<i32>(19551i, -1i, 32700i, -1i), vec4<i32>(-25258i, 1i, 1i, 22766i)), Struct_1(2147483647i, 1i, vec4<i32>(33834i, -1i, 2147483647i, 0i), vec4<i32>(14749i, -10211i, i32(-2147483648), -1i)), vec2<u32>(0u, 20812u))), Struct_4(vec4<f32>(-802f, -1727f, -1465f, 1332f), Struct_3(vec2<u32>(4294967295u, 1u), Struct_1(-1i, 13836i, vec4<i32>(2577i, 2147483647i, 2147483647i, 1i), vec4<i32>(17882i, -22757i, -754i, 2147483647i)), Struct_1(3690i, -1i, vec4<i32>(0i, 1i, 17821i, 20790i), vec4<i32>(0i, 333i, 1i, -1i)), vec2<u32>(61674u, 1u)), Struct_3(vec2<u32>(0u, 0u), Struct_1(-9022i, -9823i, vec4<i32>(42138i, 1i, 2147483647i, 1i), vec4<i32>(2147483647i, 2147483647i, 7933i, -19821i)), Struct_1(-1i, 1i, vec4<i32>(154i, i32(-2147483648), -82089i, 6732i), vec4<i32>(-1i, 13893i, -1i, -1i)), vec2<u32>(6166u, 11029u))), Struct_4(vec4<f32>(-300f, 1087f, -1000f, -908f), Struct_3(vec2<u32>(0u, 1u), Struct_1(2147483647i, -1i, vec4<i32>(-1i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -1i, -1i)), Struct_1(20702i, 1i, vec4<i32>(-1i, 0i, 14491i, 0i), vec4<i32>(-8638i, 7838i, 46163i, -16655i)), vec2<u32>(4294967295u, 33262u)), Struct_3(vec2<u32>(4294967295u, 0u), Struct_1(i32(-2147483648), 0i, vec4<i32>(56373i, 1i, -36247i, -22840i), vec4<i32>(i32(-2147483648), 2147483647i, -35872i, -5636i)), Struct_1(0i, -1i, vec4<i32>(39707i, i32(-2147483648), 0i, -52299i), vec4<i32>(i32(-2147483648), i32(-2147483648), 3418i, -14000i)), vec2<u32>(39230u, 4294967295u))), Struct_4(vec4<f32>(173f, -758f, -2347f, -1371f), Struct_3(vec2<u32>(0u, 79764u), Struct_1(-1536i, 0i, vec4<i32>(1i, i32(-2147483648), -52552i, -9444i), vec4<i32>(2147483647i, 567i, -5410i, 26898i)), Struct_1(0i, -14493i, vec4<i32>(0i, 1i, i32(-2147483648), 10158i), vec4<i32>(-28021i, 0i, 0i, 2147483647i)), vec2<u32>(32485u, 74448u)), Struct_3(vec2<u32>(25112u, 43026u), Struct_1(2147483647i, -1i, vec4<i32>(-14224i, -11694i, -31719i, 28100i), vec4<i32>(-1i, 2147483647i, -1i, 2147483647i)), Struct_1(-2906i, 25309i, vec4<i32>(2147483647i, -34526i, 51592i, -70700i), vec4<i32>(20025i, -35332i, 2147483647i, -6745i)), vec2<u32>(24426u, 54937u))), Struct_4(vec4<f32>(463f, 196f, -791f, 417f), Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(31933i, -1i, vec4<i32>(-21484i, -1i, 13168i, -24555i), vec4<i32>(-1i, 1i, 1i, 58485i)), Struct_1(8485i, 2147483647i, vec4<i32>(2147483647i, i32(-2147483648), -44619i, i32(-2147483648)), vec4<i32>(1i, 83402i, -17921i, 55802i)), vec2<u32>(24529u, 4294967295u)), Struct_3(vec2<u32>(4294967295u, 1u), Struct_1(2147483647i, -1i, vec4<i32>(-1i, 0i, -3862i, 1i), vec4<i32>(0i, 29521i, 21764i, 44552i)), Struct_1(0i, 1i, vec4<i32>(2147483647i, -74771i, -73975i, 1i), vec4<i32>(0i, -75859i, -18971i, 32104i)), vec2<u32>(2440u, 0u))), Struct_4(vec4<f32>(-675f, 1117f, 357f, -533f), Struct_3(vec2<u32>(14881u, 9268u), Struct_1(-1i, 0i, vec4<i32>(2147483647i, -4548i, 1i, 0i), vec4<i32>(-16145i, -41916i, 2147483647i, i32(-2147483648))), Struct_1(25169i, i32(-2147483648), vec4<i32>(-26017i, 30985i, 1i, 2147483647i), vec4<i32>(-42560i, 0i, -768i, -21848i)), vec2<u32>(0u, 54192u)), Struct_3(vec2<u32>(62198u, 17608u), Struct_1(i32(-2147483648), 2147483647i, vec4<i32>(-1428i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-18349i, i32(-2147483648), -5656i, -1i)), Struct_1(1i, 1i, vec4<i32>(1i, 2147483647i, 25089i, 0i), vec4<i32>(-7427i, 1i, 0i, 1i)), vec2<u32>(23161u, 4294967295u))), Struct_4(vec4<f32>(-1501f, -1662f, -875f, -300f), Struct_3(vec2<u32>(1u, 4294967295u), Struct_1(40008i, -1i, vec4<i32>(-3087i, 1572i, -60266i, 25751i), vec4<i32>(2147483647i, 19574i, 2147483647i, 2147483647i)), Struct_1(36966i, 0i, vec4<i32>(1i, -47415i, -1i, 1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i)), vec2<u32>(40655u, 1u)), Struct_3(vec2<u32>(22958u, 1u), Struct_1(-25995i, 9449i, vec4<i32>(-1i, i32(-2147483648), -21613i, 0i), vec4<i32>(21335i, -1i, -13130i, -24074i)), Struct_1(-27233i, i32(-2147483648), vec4<i32>(-4241i, -1i, -1i, 25380i), vec4<i32>(36702i, 2147483647i, -1138i, i32(-2147483648))), vec2<u32>(0u, 0u))), Struct_4(vec4<f32>(380f, -1107f, 1000f, 772f), Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(-26800i, 13904i, vec4<i32>(-12317i, 9799i, 2147483647i, 0i), vec4<i32>(1i, -1i, i32(-2147483648), -14854i)), Struct_1(34483i, i32(-2147483648), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<i32>(0i, 0i, 2147483647i, 25008i)), vec2<u32>(48573u, 76397u)), Struct_3(vec2<u32>(1u, 53019u), Struct_1(2147483647i, -1047i, vec4<i32>(i32(-2147483648), 2147483647i, 24908i, -1i), vec4<i32>(0i, -1i, -11974i, 1600i)), Struct_1(i32(-2147483648), 1i, vec4<i32>(-656i, -61866i, -12590i, 2147483647i), vec4<i32>(-2178i, -30412i, 2147483647i, 0i)), vec2<u32>(12896u, 51110u))), Struct_4(vec4<f32>(-579f, -661f, -1820f, -1058f), Struct_3(vec2<u32>(43217u, 1u), Struct_1(-1i, 1142i, vec4<i32>(27513i, 1i, -15905i, i32(-2147483648)), vec4<i32>(-33680i, -25297i, -10586i, i32(-2147483648))), Struct_1(-7634i, i32(-2147483648), vec4<i32>(1i, -52652i, -39123i, -58766i), vec4<i32>(-3095i, 16389i, -1i, 38224i)), vec2<u32>(65462u, 1u)), Struct_3(vec2<u32>(49625u, 0u), Struct_1(-1050i, 0i, vec4<i32>(9880i, i32(-2147483648), 7063i, -10810i), vec4<i32>(23783i, i32(-2147483648), -1i, 2147483647i)), Struct_1(48579i, 19444i, vec4<i32>(-34847i, i32(-2147483648), -1i, -91623i), vec4<i32>(-1i, 7758i, 1i, -4478i)), vec2<u32>(88481u, 4294967295u))), Struct_4(vec4<f32>(1000f, -1035f, -1899f, 576f), Struct_3(vec2<u32>(51700u, 25005u), Struct_1(-77085i, -1i, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -7550i), vec4<i32>(i32(-2147483648), 993i, -73249i, -1i)), Struct_1(25762i, -16880i, vec4<i32>(1i, 808i, -19277i, 2147483647i), vec4<i32>(0i, 3685i, i32(-2147483648), i32(-2147483648))), vec2<u32>(0u, 16509u)), Struct_3(vec2<u32>(23840u, 1u), Struct_1(-1i, 327i, vec4<i32>(11416i, 1i, -27893i, -1i), vec4<i32>(6411i, -32938i, -9188i, 39802i)), Struct_1(-48615i, 1i, vec4<i32>(-35549i, 6136i, -6342i, -29091i), vec4<i32>(-40045i, -9841i, 0i, 16597i)), vec2<u32>(51949u, 75258u))), Struct_4(vec4<f32>(-1402f, -1019f, -579f, 1000f), Struct_3(vec2<u32>(0u, 30153u), Struct_1(-40823i, -1i, vec4<i32>(-1i, -37936i, 2147483647i, -16900i), vec4<i32>(0i, -10911i, 24869i, -22209i)), Struct_1(-28653i, -26703i, vec4<i32>(-78184i, 2147483647i, 3273i, 37132i), vec4<i32>(-1i, i32(-2147483648), 4503i, i32(-2147483648))), vec2<u32>(0u, 31628u)), Struct_3(vec2<u32>(4294967295u, 94842u), Struct_1(22089i, 2147483647i, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -4956i), vec4<i32>(0i, -2715i, -34473i, -53557i)), Struct_1(-32610i, i32(-2147483648), vec4<i32>(20162i, 2147483647i, 24017i, 2147483647i), vec4<i32>(-1i, 1i, 1i, 53508i)), vec2<u32>(4294967295u, 4294967295u))), Struct_4(vec4<f32>(596f, 999f, -203f, 1000f), Struct_3(vec2<u32>(88023u, 5983u), Struct_1(1i, 2147483647i, vec4<i32>(-23369i, -55836i, 2147483647i, -45205i), vec4<i32>(66389i, -1i, 1i, -8309i)), Struct_1(0i, 0i, vec4<i32>(i32(-2147483648), 0i, -1i, -44610i), vec4<i32>(7107i, i32(-2147483648), 0i, 3397i)), vec2<u32>(18982u, 38771u)), Struct_3(vec2<u32>(0u, 33801u), Struct_1(2147483647i, 14129i, vec4<i32>(7916i, 5930i, -1i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 342i, 2147483647i)), Struct_1(0i, -31883i, vec4<i32>(51676i, 22635i, -20690i, -21215i), vec4<i32>(2911i, 2147483647i, 58921i, 0i)), vec2<u32>(45146u, 49688u))), Struct_4(vec4<f32>(-774f, -2789f, -1389f, -1346f), Struct_3(vec2<u32>(4294967295u, 16539u), Struct_1(2147483647i, -11916i, vec4<i32>(2147483647i, 1i, 47003i, 2147483647i), vec4<i32>(-30255i, 0i, 98078i, -2567i)), Struct_1(47459i, 34539i, vec4<i32>(-5228i, -9114i, -1i, 11412i), vec4<i32>(1i, 11186i, 1i, 45350i)), vec2<u32>(9559u, 1u)), Struct_3(vec2<u32>(64214u, 26594u), Struct_1(2147483647i, 1i, vec4<i32>(1i, -5128i, i32(-2147483648), 1i), vec4<i32>(1i, -9263i, 4451i, -34666i)), Struct_1(-43709i, -1i, vec4<i32>(0i, 41112i, 18715i, -66233i), vec4<i32>(-1i, 2147483647i, -3578i, 28186i)), vec2<u32>(0u, 78336u))), Struct_4(vec4<f32>(-1000f, -192f, -612f, -1333f), Struct_3(vec2<u32>(30691u, 0u), Struct_1(0i, 1i, vec4<i32>(-27815i, 1i, 1i, 0i), vec4<i32>(-2764i, 2147483647i, -22612i, -24583i)), Struct_1(2147483647i, 1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 29608i, 5550i), vec4<i32>(1i, 1i, i32(-2147483648), -69036i)), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(0u, 0u), Struct_1(i32(-2147483648), -17484i, vec4<i32>(-1i, 0i, 40486i, 2147483647i), vec4<i32>(1i, -21615i, 34475i, 17240i)), Struct_1(-13648i, 0i, vec4<i32>(-15163i, -33734i, -11875i, 18751i), vec4<i32>(-43817i, 0i, 14752i, 28867i)), vec2<u32>(29603u, 1u))), Struct_4(vec4<f32>(-125f, 1640f, -1000f, -256f), Struct_3(vec2<u32>(1u, 65853u), Struct_1(-33834i, 0i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<i32>(2147483647i, -38166i, 2147483647i, -442i)), Struct_1(8693i, 0i, vec4<i32>(73545i, -8088i, -21151i, -69469i), vec4<i32>(0i, -22814i, -44909i, i32(-2147483648))), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(2694u, 1u), Struct_1(2147483647i, 2147483647i, vec4<i32>(43951i, 0i, -18173i, 15220i), vec4<i32>(26612i, 2147483647i, -26254i, 16428i)), Struct_1(1i, 4125i, vec4<i32>(-20253i, -1i, -12421i, -26326i), vec4<i32>(1i, -1i, 29173i, i32(-2147483648))), vec2<u32>(4294967295u, 4294967295u))), Struct_4(vec4<f32>(314f, 602f, -929f, -523f), Struct_3(vec2<u32>(9593u, 50773u), Struct_1(0i, -14450i, vec4<i32>(-23547i, 1i, 2147483647i, 15857i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 15305i)), Struct_1(9797i, 2147483647i, vec4<i32>(58775i, 1i, i32(-2147483648), -74928i), vec4<i32>(0i, 2883i, 1683i, -9012i)), vec2<u32>(10028u, 4294967295u)), Struct_3(vec2<u32>(1u, 40433u), Struct_1(53599i, 22161i, vec4<i32>(0i, -31752i, -1i, -1i), vec4<i32>(-46372i, 20094i, -19620i, 0i)), Struct_1(-22494i, 13652i, vec4<i32>(1i, 38739i, 62921i, -1i), vec4<i32>(-9967i, 39721i, 38977i, 22976i)), vec2<u32>(1u, 1u))), Struct_4(vec4<f32>(1294f, 320f, -1084f, -611f), Struct_3(vec2<u32>(39861u, 0u), Struct_1(-66827i, i32(-2147483648), vec4<i32>(19528i, 41308i, -53677i, -1i), vec4<i32>(38228i, -68939i, 7241i, -28488i)), Struct_1(-1i, 12252i, vec4<i32>(2147483647i, 0i, -14524i, 25912i), vec4<i32>(-43448i, 2814i, -1i, 2147483647i)), vec2<u32>(5663u, 4902u)), Struct_3(vec2<u32>(1u, 0u), Struct_1(i32(-2147483648), 2147483647i, vec4<i32>(2147483647i, -17512i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, 29235i, 77758i)), Struct_1(10680i, 13111i, vec4<i32>(-1i, 37550i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-31330i, -7493i, 0i, -1i)), vec2<u32>(10620u, 4294967295u))), Struct_4(vec4<f32>(388f, 1443f, -1000f, -487f), Struct_3(vec2<u32>(46864u, 4294967295u), Struct_1(1i, 2147483647i, vec4<i32>(i32(-2147483648), -4994i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 17747i, i32(-2147483648))), Struct_1(-1i, 14157i, vec4<i32>(52003i, -1i, -1i, 15077i), vec4<i32>(0i, -5036i, 0i, -1i)), vec2<u32>(2371u, 1u)), Struct_3(vec2<u32>(4294967295u, 0u), Struct_1(-23233i, 1i, vec4<i32>(60571i, i32(-2147483648), 0i, 30951i), vec4<i32>(46366i, -14535i, 2147483647i, i32(-2147483648))), Struct_1(1i, -58480i, vec4<i32>(-36546i, 22969i, 27389i, 74125i), vec4<i32>(8163i, 56691i, -37129i, 31542i)), vec2<u32>(1u, 1u))), Struct_4(vec4<f32>(1345f, -1000f, -417f, 1486f), Struct_3(vec2<u32>(0u, 9375u), Struct_1(i32(-2147483648), -4258i, vec4<i32>(-25228i, -1i, 20965i, 15214i), vec4<i32>(1i, -82258i, -2089i, 2147483647i)), Struct_1(980i, 0i, vec4<i32>(-24400i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(32385i, 0i, -16408i, 35292i)), vec2<u32>(67965u, 1u)), Struct_3(vec2<u32>(86482u, 10206u), Struct_1(-25941i, -2354i, vec4<i32>(0i, -6013i, -3197i, 19040i), vec4<i32>(2147483647i, 2147483647i, 14832i, -7277i)), Struct_1(16407i, 2147483647i, vec4<i32>(-1i, 0i, -28984i, 5437i), vec4<i32>(0i, -31881i, 33271i, 42222i)), vec2<u32>(0u, 97306u))), Struct_4(vec4<f32>(-1912f, -931f, -1000f, -773f), Struct_3(vec2<u32>(12765u, 15381u), Struct_1(2147483647i, -43323i, vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec4<i32>(0i, 1i, -34135i, -1i)), Struct_1(26120i, 0i, vec4<i32>(-75174i, 0i, 0i, 0i), vec4<i32>(-1i, 0i, i32(-2147483648), 18422i)), vec2<u32>(58495u, 46075u)), Struct_3(vec2<u32>(4294967295u, 0u), Struct_1(50513i, -86032i, vec4<i32>(2147483647i, -65878i, 2147483647i, 0i), vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(-20834i, 25807i, vec4<i32>(-57189i, 9120i, -32685i, i32(-2147483648)), vec4<i32>(64841i, 5221i, 1i, 0i)), vec2<u32>(56332u, 0u))));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global2 = array<vec4<bool>, 16>();
    var var_0 = global3[_wgslsmith_index_u32(arg_0.a.x, 20u)];
    return min(2147483647i, -12151i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_u32(~abs(u_input.c.x) & 61947u, u_input.e), Struct_1(_wgslsmith_add_i32(u_input.a, 52750i), func_3(Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.c.x, u_input.d)), Struct_1(u_input.b, u_input.b, vec4<i32>(u_input.a, u_input.b, u_input.a, -29288i), vec4<i32>(-1i, u_input.b, 0i, 1i)), Struct_1(42494i, u_input.b, vec4<i32>(u_input.b, 2147483647i, -15882i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b)), ~vec2<u32>(u_input.d, 0u))), _wgslsmith_add_vec4_i32(~max(vec4<i32>(u_input.b, -1i, 1i, 13636i), vec4<i32>(u_input.b, -8104i, u_input.b, 2147483647i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, 14331i, u_input.a)), reverseBits(vec4<i32>(u_input.b, u_input.a, -32301i, -1i)))), max(vec4<i32>(-1i, u_input.a, u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-19971i, -30365i, 32949i, u_input.b), vec4<i32>(u_input.a, -3541i, -1i, 0i))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(2244u, 10961u, 0u, 37006u) >> (vec4<u32>(u_input.e, u_input.c.x, 8386u, u_input.d) % vec4<u32>(32u)), vec4<u32>(626u, 4219u, u_input.e, u_input.d) >> (vec4<u32>(10640u, u_input.d, 7641u, u_input.d) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.d, 1u, u_input.e) & vec4<u32>(4294967295u, 30662u, 1u, 1u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-37024i, u_input.b), -u_input.b), u_input.a, ~(-u_input.a)), ~abs(u_input.a | 0i), _wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, -8006i, u_input.a), vec4<i32>(2147483647i, u_input.b, -20418i, u_input.a), vec4<i32>(-14910i, -10728i, u_input.a, -11162i)), vec4<i32>(-34369i, i32(-1i) * -1i, -1i, 0i), ~(~vec4<i32>(u_input.b, -1i, -40101i, u_input.a))), vec4<i32>(-u_input.b, -u_input.b, ~u_input.a, u_input.b >> (0u % 32u)) | _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a, 2147483647i, 48568i), vec4<i32>(u_input.a, -3476i, u_input.a, 1i)), vec4<i32>(41258i, 1i, -33530i, 2147483647i))), _wgslsmith_f_op_f32(floor(-1000f)), true);
    global0 = array<vec3<u32>, 26>();
    global3 = array<Struct_4, 20>();
    var var_1 = Struct_2((_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 0u, 4294967295u), vec3<u32>(u_input.e, 16014u, u_input.d), vec3<u32>(12812u, 73325u, 5461u)), abs(vec3<u32>(1u, 0u, var_0.a))) | u_input.c.x) | 4049u, var_0.b, var_0.b, -1313f, any(vec3<bool>(true, var_0.e, ~0u <= var_0.a)));
    let var_2 = vec4<i32>(~_wgslsmith_mult_i32(var_0.c.b, ~(var_1.c.b ^ var_1.b.a)), ~(~var_0.b.a), 1i, var_1.c.d.x);
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(arg_1, !arg_1, !any(global2[_wgslsmith_index_u32(4294967295u, 16u)]));
    let var_1 = Struct_2(u_input.d, arg_0, func_2(), arg_2, true);
    global2 = array<vec4<bool>, 16>();
    let var_2 = Struct_4(vec4<f32>(1f, _wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(-var_1.d)), -1000f, var_1.d), Struct_3(u_input.c, func_2(), var_1.c, u_input.c), Struct_3(countOneBits(max(vec2<u32>(58604u, var_1.a), u_input.c)), func_2(), func_2(), u_input.c));
    let var_3 = var_1;
    return var_3;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<vec4<bool>, 16>();
    global0 = array<vec3<u32>, 26>();
    return func_4(func_2(), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(652f, -878f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2141f - _wgslsmith_f_op_f32(-1889f * -1351f)) * _wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(f32(-1f) * -1838f))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))))), select(vec3<i32>(-2147483647i, -u_input.a, ~(-arg_0)), countOneBits(select(vec3<i32>(u_input.b, arg_0, arg_0), vec3<i32>(u_input.a, -14086i, arg_0), vec3<bool>(false, false, true))) << (global0[_wgslsmith_index_u32(1u, 26u)] % vec3<u32>(32u)), true));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(round(-550f)) == arg_1.d;
    let var_1 = vec2<i32>(~(~(-2147483647i)), min(abs(i32(-1i) * -21173i), -_wgslsmith_mult_i32(arg_1.c.a, func_1(u_input.b).b.a)));
    var_0 = func_4(arg_1.c, func_1(arg_1.c.c.x).e, _wgslsmith_f_op_f32(511f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(trunc(arg_1.d)))), abs(_wgslsmith_clamp_vec3_i32(arg_1.b.c.xyw, arg_1.b.d.zzz | vec3<i32>(0i, 1i, var_1.x), vec3<i32>(arg_1.b.d.x, 16341i, u_input.b)))).e && arg_1.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(498f)))), arg_1.d, arg_1.d, arg_1.d))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d, -1835f), func_4(Struct_1(u_input.b, 22539i, vec4<i32>(var_1.x, arg_1.b.b, -1i, arg_1.c.b), arg_1.b.c), true, 708f, arg_1.b.c.yxw).d, arg_1.e)), arg_1.d, 477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-192f * arg_1.d), _wgslsmith_div_f32(-860f, -1550f), -1642f, -1039f), vec4<f32>(_wgslsmith_div_f32(arg_1.d, 1143f), arg_1.d, _wgslsmith_f_op_f32(min(arg_1.d, arg_1.d)), -441f), false)), !(!global2[_wgslsmith_index_u32(1u, 16u)]))));
    let var_3 = !arg_1.e;
    return StorageBuffer(1i, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 1u), arg_0.xy) ^ vec2<u32>(reverseBits(0u), max(0u, arg_0.x))), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(arg_0.zx, vec2<u32>(arg_1.a, arg_1.a))) | _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1.a), u_input.c), abs(u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, var_2.x, arg_1.d, -538f))) * var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1269f, 442f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec2<bool>(true, true)), true != any(select(global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(u_input.d, 16u)], vec4<bool>(false, true, false, true))), false & ((u_input.d >> (u_input.e % 32u)) >= u_input.c.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1818f + _wgslsmith_f_op_f32(-1000f * 325f)))), _wgslsmith_f_op_f32(1000f * -342f), _wgslsmith_f_op_f32(227f * _wgslsmith_f_op_f32(floor(-100f))), _wgslsmith_f_op_f32(f32(-1f) * -730f));
    var var_2 = _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_mod_i32(u_input.b, -u_input.a), u_input.a, 1i, -u_input.b)), ~(vec4<i32>(-53511i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, 24747i, u_input.b), vec4<i32>(u_input.b, u_input.a, 40780i, 0i)), -u_input.b) ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, 0i, -6358i), vec4<i32>(u_input.a, 1i, u_input.b, u_input.a)))));
    global1 = 2147483647i;
    var var_3 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.x, -1000f))))) != _wgslsmith_f_op_f32(-var_1.x)) | (var_0.x & select(var_0.x, true, any(select(vec2<bool>(var_0.x, var_0.x), var_0.zz, vec2<bool>(var_0.x, var_0.x)))));
    global2 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = func_5(vec3<u32>(u_input.c.x, ~u_input.e, min(_wgslsmith_div_u32(64894u, ~u_input.e), 22623u)), func_1(var_2.x));
}

