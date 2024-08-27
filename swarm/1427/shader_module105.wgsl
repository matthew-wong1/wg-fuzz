struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: vec2<u32>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -1i, -1i), vec3<bool>(false, true, true), 0u, vec3<bool>(false, true, false)), vec4<i32>(-30370i, 2147483647i, 3378i, -1i), Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec3<bool>(true, true, false), 38522u, vec3<bool>(true, false, true))), Struct_1(vec3<i32>(i32(-2147483648), -31898i, 2147483647i), vec3<bool>(false, true, false), 4308u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(2147483647i, -54248i, 0i), vec3<bool>(false, false, true), 517u, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(8006i, 4214i, -5232i), vec3<bool>(true, false, true), 4294967295u, vec3<bool>(false, true, true)), 4294967295u), Struct_3(Struct_2(Struct_1(vec3<i32>(58557i, 0i, i32(-2147483648)), vec3<bool>(true, true, false), 1u, vec3<bool>(false, true, true)), vec4<i32>(-75906i, 1512i, 16625i, -9223i), Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec3<bool>(false, true, true), 0u, vec3<bool>(true, false, true))), Struct_1(vec3<i32>(-66567i, 0i, 1i), vec3<bool>(false, true, false), 11579u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 1i, -68890i), vec3<bool>(true, true, true), 0u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(1i, 0i, 8580i), vec3<bool>(true, false, false), 15096u, vec3<bool>(true, true, true)), 51949u), Struct_3(Struct_2(Struct_1(vec3<i32>(-11164i, -19177i, 53695i), vec3<bool>(true, false, false), 0u, vec3<bool>(true, false, false)), vec4<i32>(2147483647i, -1i, 2147483647i, -61510i), Struct_1(vec3<i32>(1i, -11921i, 34488i), vec3<bool>(true, false, false), 0u, vec3<bool>(false, true, false))), Struct_1(vec3<i32>(-56213i, 2147483647i, 36342i), vec3<bool>(true, false, false), 12243u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(2147483647i, 44426i, 4123i), vec3<bool>(false, false, true), 1u, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(46477i, 0i, 1i), vec3<bool>(false, false, false), 4493u, vec3<bool>(false, false, true)), 4294967295u), Struct_3(Struct_2(Struct_1(vec3<i32>(12284i, -1i, 0i), vec3<bool>(true, true, false), 85004u, vec3<bool>(true, true, true)), vec4<i32>(17119i, 48664i, -1i, 1i), Struct_1(vec3<i32>(1944i, 0i, 30114i), vec3<bool>(false, true, true), 0u, vec3<bool>(false, true, false))), Struct_1(vec3<i32>(-1i, -25281i, 1i), vec3<bool>(false, true, false), 63567u, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-24749i, i32(-2147483648), 1i), vec3<bool>(true, true, false), 517u, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(2147483647i, -24865i, 0i), vec3<bool>(false, false, false), 4294967295u, vec3<bool>(false, true, true)), 30476u), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 0i, 21270i), vec3<bool>(false, false, false), 1u, vec3<bool>(false, true, true)), vec4<i32>(4983i, 1i, 22371i, 2147483647i), Struct_1(vec3<i32>(1083i, -36826i, 178i), vec3<bool>(false, false, true), 0u, vec3<bool>(false, false, false))), Struct_1(vec3<i32>(-8977i, -1i, 9744i), vec3<bool>(false, true, false), 1u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(1i, -7868i, 31480i), vec3<bool>(false, false, true), 4294967295u, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-1i, 9735i, -1i), vec3<bool>(false, false, false), 4294967295u, vec3<bool>(true, false, false)), 68814u), Struct_3(Struct_2(Struct_1(vec3<i32>(27082i, -1i, i32(-2147483648)), vec3<bool>(false, true, true), 1u, vec3<bool>(false, true, false)), vec4<i32>(0i, 13619i, 2147483647i, i32(-2147483648)), Struct_1(vec3<i32>(2147483647i, 6556i, -636i), vec3<bool>(false, false, false), 1u, vec3<bool>(true, false, false))), Struct_1(vec3<i32>(i32(-2147483648), -14316i, 2147483647i), vec3<bool>(false, false, false), 6444u, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(0i, 1i, 8632i), vec3<bool>(false, false, true), 1u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(5562i, 2147483647i, -18553i), vec3<bool>(false, true, true), 4294967295u, vec3<bool>(false, true, false)), 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<bool>(true, false, false), 67381u, vec3<bool>(false, true, false)), vec4<i32>(-41901i, 2147483647i, 42635i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 58169i, 46009i), vec3<bool>(false, false, false), 0u, vec3<bool>(true, true, true))), Struct_1(vec3<i32>(-745i, 2147483647i, -32824i), vec3<bool>(false, false, true), 1145u, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(49882i, 0i, -1i), vec3<bool>(true, false, true), 31356u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-32743i, -9331i, 0i), vec3<bool>(true, true, false), 1u, vec3<bool>(false, true, false)), 0u), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 0i, i32(-2147483648)), vec3<bool>(true, true, true), 4294967295u, vec3<bool>(true, false, false)), vec4<i32>(2147483647i, 1i, -22547i, i32(-2147483648)), Struct_1(vec3<i32>(13981i, 43549i, -38731i), vec3<bool>(true, false, true), 4294967295u, vec3<bool>(true, true, false))), Struct_1(vec3<i32>(-69162i, 59802i, 1i), vec3<bool>(false, false, true), 36207u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(43657i, 17527i, 7663i), vec3<bool>(true, true, false), 71650u, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(5488i, 70144i, 0i), vec3<bool>(false, false, false), 4294967295u, vec3<bool>(true, true, false)), 0u), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -34427i, -5137i), vec3<bool>(false, true, false), 59337u, vec3<bool>(false, true, false)), vec4<i32>(0i, 44321i, 1i, 25099i), Struct_1(vec3<i32>(-3734i, 43831i, -32088i), vec3<bool>(true, true, true), 0u, vec3<bool>(false, false, false))), Struct_1(vec3<i32>(2147483647i, 10727i, 20292i), vec3<bool>(false, true, false), 0u, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 81490i), vec3<bool>(true, true, true), 70938u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-11866i, -1i, -1i), vec3<bool>(false, false, false), 31010u, vec3<bool>(false, true, true)), 4294967295u), Struct_3(Struct_2(Struct_1(vec3<i32>(30111i, 2147483647i, 20856i), vec3<bool>(false, true, true), 4294967295u, vec3<bool>(true, false, true)), vec4<i32>(0i, -35436i, 0i, 0i), Struct_1(vec3<i32>(8283i, 0i, -2807i), vec3<bool>(true, false, false), 0u, vec3<bool>(true, true, true))), Struct_1(vec3<i32>(1i, 2147483647i, -23494i), vec3<bool>(false, false, true), 0u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(16901i, -36414i, i32(-2147483648)), vec3<bool>(false, false, true), 50985u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-5861i, 0i, 1i), vec3<bool>(false, true, false), 4294967295u, vec3<bool>(false, true, true)), 10810u), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -19173i, 0i), vec3<bool>(true, false, false), 56335u, vec3<bool>(true, true, true)), vec4<i32>(i32(-2147483648), -45761i, 0i, i32(-2147483648)), Struct_1(vec3<i32>(-1i, 5321i, 2147483647i), vec3<bool>(true, false, true), 0u, vec3<bool>(true, false, false))), Struct_1(vec3<i32>(9517i, 2147483647i, 1i), vec3<bool>(false, true, false), 14705u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-9949i, 1i, i32(-2147483648)), vec3<bool>(true, true, false), 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-1i, 1i, 17759i), vec3<bool>(false, false, true), 60389u, vec3<bool>(false, true, false)), 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 14342i, 2147483647i), vec3<bool>(false, true, true), 23894u, vec3<bool>(true, true, true)), vec4<i32>(-839i, -45417i, -1i, 0i), Struct_1(vec3<i32>(13096i, 1i, -19360i), vec3<bool>(true, false, true), 3799u, vec3<bool>(true, true, true))), Struct_1(vec3<i32>(945i, -8679i, -35749i), vec3<bool>(false, true, false), 5214u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), -201i, 1i), vec3<bool>(false, false, true), 29316u, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(45120i, 40603i, 6488i), vec3<bool>(true, true, true), 3645u, vec3<bool>(false, true, false)), 4815u), Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, 56347i, 1i), vec3<bool>(false, true, true), 43079u, vec3<bool>(true, true, true)), vec4<i32>(1i, 2147483647i, 0i, 0i), Struct_1(vec3<i32>(-16706i, 2147483647i, 2147483647i), vec3<bool>(true, false, true), 4294967295u, vec3<bool>(true, true, true))), Struct_1(vec3<i32>(0i, 1i, -36407i), vec3<bool>(true, true, false), 900u, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(i32(-2147483648), -52505i, 2147483647i), vec3<bool>(true, true, false), 4294967295u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-1i, 1i, -54969i), vec3<bool>(true, false, false), 0u, vec3<bool>(false, false, false)), 4294967295u), Struct_3(Struct_2(Struct_1(vec3<i32>(32348i, 43667i, 31135i), vec3<bool>(true, false, true), 72357u, vec3<bool>(false, true, true)), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -2856i), Struct_1(vec3<i32>(-17144i, -18606i, i32(-2147483648)), vec3<bool>(true, true, false), 4294967295u, vec3<bool>(true, true, true))), Struct_1(vec3<i32>(8230i, -1i, -19517i), vec3<bool>(true, false, false), 60686u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(1i, 1447i, 2147483647i), vec3<bool>(true, false, true), 25196u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(23482i, i32(-2147483648), -34999i), vec3<bool>(true, true, false), 0u, vec3<bool>(false, true, true)), 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(-55382i, 3147i, -31351i), vec3<bool>(false, false, true), 18402u, vec3<bool>(false, false, false)), vec4<i32>(-14285i, 8485i, -6367i, 22180i), Struct_1(vec3<i32>(29883i, -23686i, 6673i), vec3<bool>(false, true, false), 1u, vec3<bool>(false, false, true))), Struct_1(vec3<i32>(-1i, -8223i, -507i), vec3<bool>(false, false, true), 55649u, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(24176i, 0i, -21429i), vec3<bool>(false, true, false), 19827u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-17483i, -1i, 0i), vec3<bool>(true, true, true), 14913u, vec3<bool>(true, true, false)), 27706u), Struct_3(Struct_2(Struct_1(vec3<i32>(-35754i, -8368i, 2147483647i), vec3<bool>(true, true, false), 1u, vec3<bool>(false, false, true)), vec4<i32>(2147483647i, 0i, 0i, 4738i), Struct_1(vec3<i32>(1623i, -1i, -14992i), vec3<bool>(false, true, false), 1u, vec3<bool>(false, true, true))), Struct_1(vec3<i32>(-1i, i32(-2147483648), 5310i), vec3<bool>(true, false, false), 4294967295u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-10315i, 36354i, 70130i), vec3<bool>(true, true, false), 92040u, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(35095i, i32(-2147483648), -1i), vec3<bool>(false, false, true), 4875u, vec3<bool>(false, false, true)), 36409u), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, 23875i), vec3<bool>(true, true, true), 61982u, vec3<bool>(false, false, true)), vec4<i32>(i32(-2147483648), -56720i, -29282i, 36400i), Struct_1(vec3<i32>(-13905i, 1i, -91695i), vec3<bool>(true, true, false), 1u, vec3<bool>(true, false, true))), Struct_1(vec3<i32>(-15157i, -1i, 49246i), vec3<bool>(true, true, true), 51319u, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(44101i, -1i, 102370i), vec3<bool>(false, true, true), 1u, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(1i, 19940i, 1858i), vec3<bool>(false, false, false), 11186u, vec3<bool>(false, false, false)), 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -2666i, 18139i), vec3<bool>(false, false, false), 49565u, vec3<bool>(true, true, true)), vec4<i32>(i32(-2147483648), 3564i, 7476i, 2147483647i), Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), vec3<bool>(false, true, true), 1u, vec3<bool>(false, false, true))), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec3<bool>(false, true, true), 66878u, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(24880i, -1i, i32(-2147483648)), vec3<bool>(true, true, false), 4457u, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-31269i, 1i, 10558i), vec3<bool>(false, false, true), 59717u, vec3<bool>(true, false, false)), 34323u), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -21062i, 1i), vec3<bool>(true, false, true), 1368u, vec3<bool>(true, true, true)), vec4<i32>(2195i, i32(-2147483648), 3674i, -34949i), Struct_1(vec3<i32>(67856i, 1i, -14220i), vec3<bool>(true, true, false), 38881u, vec3<bool>(false, false, false))), Struct_1(vec3<i32>(1i, 13478i, 0i), vec3<bool>(true, true, false), 24506u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<bool>(true, true, false), 0u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(20206i, i32(-2147483648), -2137i), vec3<bool>(false, true, true), 4294967295u, vec3<bool>(true, false, true)), 34294u), Struct_3(Struct_2(Struct_1(vec3<i32>(7480i, -45681i, i32(-2147483648)), vec3<bool>(false, true, false), 91636u, vec3<bool>(true, true, true)), vec4<i32>(1i, -1i, 0i, 2147483647i), Struct_1(vec3<i32>(18568i, i32(-2147483648), 1i), vec3<bool>(true, false, true), 78041u, vec3<bool>(false, false, true))), Struct_1(vec3<i32>(i32(-2147483648), 29967i, i32(-2147483648)), vec3<bool>(true, false, true), 1u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-28358i, -1i, 34543i), vec3<bool>(true, true, false), 6786u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(26308i, -17646i, 1i), vec3<bool>(false, false, false), 0u, vec3<bool>(false, false, true)), 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(33822i, -2807i, 0i), vec3<bool>(true, true, true), 4294967295u, vec3<bool>(true, false, true)), vec4<i32>(-33408i, 0i, i32(-2147483648), 9406i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -17445i), vec3<bool>(false, false, true), 9810u, vec3<bool>(true, false, true))), Struct_1(vec3<i32>(i32(-2147483648), -1i, 1i), vec3<bool>(false, false, true), 89010u, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(35754i, -1i, 20341i), vec3<bool>(true, false, false), 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec3<bool>(true, false, true), 0u, vec3<bool>(false, false, false)), 26204u), Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 12808i, -24407i), vec3<bool>(false, true, true), 61771u, vec3<bool>(true, false, false)), vec4<i32>(-1i, 14787i, -44534i, i32(-2147483648)), Struct_1(vec3<i32>(0i, 3605i, -61893i), vec3<bool>(false, true, true), 59804u, vec3<bool>(true, true, false))), Struct_1(vec3<i32>(-1i, 28198i, 48645i), vec3<bool>(false, true, false), 1u, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(i32(-2147483648), 7669i, 1i), vec3<bool>(true, true, true), 1u, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(34230i, 2147483647i, -1i), vec3<bool>(true, true, true), 1u, vec3<bool>(true, false, true)), 1u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, arg_0)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(6009u, arg_0) ^ vec2<u32>(arg_0, 4294967295u), ~vec2<u32>(global1.x, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(67025u, 1u), vec2<u32>(global1.x, arg_0))));
    global1 = max(_wgslsmith_add_vec2_u32(~var_0, abs(vec2<u32>(global1.x ^ global1.x, 4294967295u))), ~var_0);
    global3 = array<Struct_3, 22>();
    var var_1 = global3[_wgslsmith_index_u32(55411u, 22u)];
    var var_2 = vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(~0i, u_input.a.x))), var_1.b.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(321f, 1862f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) * 830f) - _wgslsmith_f_op_f32(342f * _wgslsmith_f_op_f32(min(487f, 511f)))) - 544f));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))) - vec2<f32>(-454f, 2062f)) - vec2<f32>(_wgslsmith_f_op_f32(func_3(4294967295u)), -327f))));
    global2 = -u_input.a.zz;
    let var_1 = Struct_1(select(vec3<i32>(-38333i, min(1i, 0i), -global2.x | _wgslsmith_mult_i32(global2.x, global2.x)), vec3<i32>(_wgslsmith_mult_i32(1i, u_input.a.x) ^ ~32832i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -14708i), vec2<i32>(2147483647i, global2.x)) << (max(global1.x, 25124u) % 32u), global2.x >> (6787u % 32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), all(vec4<bool>(false, false, true, true))), false)), !(!vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false)))), global1.x, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))));
    global0 = array<vec4<i32>, 17>();
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = (~arg_3.c & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, arg_3.c, arg_1) & vec3<u32>(arg_1, global1.x, 0u), ~vec3<u32>(global1.x, 47365u, arg_3.c)), ~(global1.x | 1114u))) <= min(global1.x, countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.x, arg_1, arg_3.c), ~arg_3.c)));
    var var_1 = !(!vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -482f) != _wgslsmith_f_op_f32(trunc(1000f)), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1238f)) + _wgslsmith_div_f32(-1960f, 187f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1535f) + _wgslsmith_f_op_f32(f32(-1f) * -1246f)))));
    let var_3 = arg_3.a;
    var var_4 = global1.x ^ 1u;
    return 297f;
}

fn func_1() -> f32 {
    var var_0 = true;
    global2 = u_input.a.yz | (u_input.a.xz << (vec2<u32>(~38464u, 1u) % vec2<u32>(32u)));
    var var_1 = -864f;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, u_input.a.x >= global2.x), global1.x >> (global1.x % 32u), vec4<bool>(true, true, true, true), func_2(u_input.a.yx))), _wgslsmith_f_op_f32(ceil(-631f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-537f)), _wgslsmith_f_op_f32(f32(-1f) * -1164f))), _wgslsmith_f_op_f32(f32(-1f) * -1282f)))));
    var_0 = true;
    return 193f;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(func_3(global1.x))));
    return Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global2.x, u_input.a.x)), ~vec3<i32>(2147483647i, u_input.a.x, 2147483647i), -_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(12886i, global2.x, 1i))), vec3<bool>(false, false, !arg_0.d.x), arg_0.c, vec3<bool>(false, true, any(select(vec2<bool>(false, false), arg_0.b.zz, arg_0.d.xy)))), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1985u, arg_3), vec2<u32>(global1.x, 4294967295u)), ~vec2<u32>(6657u, 0u)), 17u)] | -global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1.x), 17u)], select(abs(vec4<i32>(global2.x, arg_0.a.x, 0i, u_input.a.x)), ~global0[_wgslsmith_index_u32(arg_0.c, 17u)], _wgslsmith_f_op_f32(step(319f, -758f)) >= _wgslsmith_f_op_f32(-arg_1)), arg_1 < -1222f), arg_0);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_1.a.a.x;
    let var_1 = _wgslsmith_add_vec4_u32(~(~firstLeadingBit(~vec4<u32>(global1.x, 4294967295u, arg_1.a.c, arg_1.c.c))), ~vec4<u32>(~19892u, arg_0.b.c, _wgslsmith_mod_u32(arg_2.a.c, arg_1.c.c), arg_2.c.c) | (~(~vec4<u32>(arg_2.c.c, 4294967295u, 106680u, 48738u)) | vec4<u32>(~1u, global1.x, arg_0.c.c & arg_1.c.c, _wgslsmith_mod_u32(arg_2.c.c, arg_1.a.c))));
    var var_2 = _wgslsmith_add_vec4_u32(var_1, vec4<u32>(_wgslsmith_clamp_u32(func_5(Struct_1(vec3<i32>(-1i, u_input.a.x, 28095i), arg_0.d.b, 4294967295u, vec3<bool>(false, arg_1.c.b.x, arg_1.c.d.x)), 1731f, 1u, 11207u).a.c, ~12778u, ~arg_0.c.c) | arg_2.a.c, ~arg_2.c.c >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, arg_0.b.c), 50371u) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(70565u, arg_1.a.c), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, arg_2.a.c), var_1.xz)), 26032u, arg_0.b.c), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(global1.x), arg_2.a.c | arg_2.c.c, firstTrailingBit(var_1.x)), _wgslsmith_mod_u32(var_1.x >> (global1.x % 32u), firstLeadingBit(27899u)))));
    global1 = vec2<u32>(global1.x, firstLeadingBit(_wgslsmith_clamp_u32(~(arg_1.c.c & 1u), var_1.x, 56228u)));
    let var_3 = var_2.xz >> (vec2<u32>(~(~(~4695u)), ~(~(~62434u))) % vec2<u32>(32u));
    return _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_2.c.a.x), arg_0.c.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    global2 = _wgslsmith_add_vec2_i32(func_6(Struct_3(func_5(Struct_1(u_input.a, var_0, global1.x, vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_dot_vec4_u32(vec4<u32>(6411u, global1.x, global1.x, 0u), vec4<u32>(22007u, 1u, global1.x, global1.x)), ~global1.x), Struct_1(vec3<i32>(global2.x, 1i, -45787i), select(var_0, var_0, var_0.x), firstLeadingBit(global1.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), func_2(~u_input.a.yy), Struct_1(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), var_0, _wgslsmith_sub_u32(global1.x, 0u), var_0), 1u), func_5(func_5(Struct_1(vec3<i32>(u_input.a.x, global2.x, u_input.a.x), var_0, 67109u, var_0), _wgslsmith_f_op_f32(round(480f)), 36643u, ~global1.x).c, 429f, ~(~1u), global1.x), Struct_2(Struct_1(u_input.a, vec3<bool>(true, true, true), min(4294967295u, 33118u), !vec3<bool>(var_0.x, false, var_0.x)), vec4<i32>(global2.x, 2147483647i, _wgslsmith_clamp_i32(global2.x, -2147483647i, global2.x), u_input.a.x), Struct_1(u_input.a, var_0, global1.x, select(var_0, var_0, vec3<bool>(var_0.x, var_0.x, false))))), reverseBits(u_input.a.yx));
    global2 = vec2<i32>(-1i, global2.x);
    let var_1 = Struct_1(~u_input.a, !vec3<bool>(!(var_0.x | var_0.x), true, false), min(~1u, ~(~7745u)), vec3<bool>(global1.x == 10002u, false, any(!(!var_0.zz))));
    let var_2 = 28052i;
    var var_3 = vec4<bool>(any(select(vec3<bool>(var_1.d.x, -15193i > var_2, true), !var_0, !vec3<bool>(var_0.x, false, var_1.d.x))), true, var_1.b.x, any(var_0));
    global3 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(424f);
}

