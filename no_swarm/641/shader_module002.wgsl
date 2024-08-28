struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(3712i, 30532i, -1i, 70601i), vec3<u32>(71935u, 4294967295u, 4294967295u), vec3<f32>(565f, -1752f, -444f)), Struct_1(vec4<i32>(385i, 29246i, 2147483647i, 56388i), vec3<u32>(1u, 65626u, 18451u), vec3<f32>(-1182f, 1233f, -2368f)), Struct_1(vec4<i32>(-21414i, -40930i, -57283i, 0i), vec3<u32>(0u, 1u, 4294967295u), vec3<f32>(-599f, 1000f, -1154f)), Struct_1(vec4<i32>(-13839i, 0i, -29061i, 2147483647i), vec3<u32>(10474u, 1u, 1u), vec3<f32>(-1000f, 206f, -1434f)), Struct_1(vec4<i32>(-12554i, -1i, -1i, -18138i), vec3<u32>(4294967295u, 59293u, 4294967295u), vec3<f32>(-851f, 453f, -127f)), Struct_1(vec4<i32>(-7207i, 21091i, 9304i, 0i), vec3<u32>(2741u, 0u, 25059u), vec3<f32>(-224f, -1069f, -189f)), Struct_1(vec4<i32>(1i, 5727i, 42188i, 29238i), vec3<u32>(50495u, 44680u, 49086u), vec3<f32>(1551f, 246f, -985f)), Struct_1(vec4<i32>(27610i, 17443i, 5798i, -42600i), vec3<u32>(4294967295u, 14478u, 43102u), vec3<f32>(-379f, -1000f, -981f)), Struct_1(vec4<i32>(-1i, 17867i, i32(-2147483648), -24074i), vec3<u32>(0u, 16789u, 21181u), vec3<f32>(-1009f, -936f, -1115f)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 15472i, 2245i), vec3<u32>(54173u, 1u, 24127u), vec3<f32>(-645f, -1000f, -1000f)), Struct_1(vec4<i32>(36840i, 27451i, -1i, -1i), vec3<u32>(13186u, 56752u, 4294967295u), vec3<f32>(-1379f, -260f, 1516f)), Struct_1(vec4<i32>(1i, 23785i, 31698i, 28396i), vec3<u32>(1u, 4294967295u, 21021u), vec3<f32>(1332f, -304f, -1528f)), Struct_1(vec4<i32>(5023i, 9808i, i32(-2147483648), 0i), vec3<u32>(0u, 5251u, 4294967295u), vec3<f32>(-1541f, 362f, -425f)), Struct_1(vec4<i32>(60085i, 2147483647i, 25397i, -18507i), vec3<u32>(28794u, 30801u, 0u), vec3<f32>(1000f, -1000f, 1000f)), Struct_1(vec4<i32>(1i, -3615i, 0i, -34138i), vec3<u32>(0u, 35686u, 16986u), vec3<f32>(1065f, 1000f, -515f)), Struct_1(vec4<i32>(0i, 2147483647i, -1i, 1i), vec3<u32>(3681u, 1u, 1u), vec3<f32>(-1708f, 374f, 811f)), Struct_1(vec4<i32>(0i, 0i, 9399i, 28501i), vec3<u32>(17749u, 28716u, 1u), vec3<f32>(-1002f, -459f, 330f)), Struct_1(vec4<i32>(0i, 1685i, -1i, -82080i), vec3<u32>(37792u, 22131u, 46711u), vec3<f32>(1000f, 502f, -1000f)), Struct_1(vec4<i32>(-33157i, 1i, 1i, 0i), vec3<u32>(5736u, 4294967295u, 100128u), vec3<f32>(-1346f, 1037f, 1000f)), Struct_1(vec4<i32>(-12568i, -15944i, i32(-2147483648), -6248i), vec3<u32>(25621u, 43744u, 23792u), vec3<f32>(2030f, 130f, -279f)), Struct_1(vec4<i32>(i32(-2147483648), -21018i, 3161i, 10152i), vec3<u32>(36054u, 73268u, 19627u), vec3<f32>(1024f, 981f, -665f)), Struct_1(vec4<i32>(1i, -37042i, 20570i, -23246i), vec3<u32>(104898u, 1u, 13267u), vec3<f32>(1016f, -373f, -308f)), Struct_1(vec4<i32>(-42170i, i32(-2147483648), 27409i, -1858i), vec3<u32>(9003u, 16877u, 27784u), vec3<f32>(300f, -533f, 676f)), Struct_1(vec4<i32>(-28130i, i32(-2147483648), -58255i, i32(-2147483648)), vec3<u32>(34414u, 47138u, 0u), vec3<f32>(594f, 1409f, -636f)), Struct_1(vec4<i32>(-12199i, -3718i, 12303i, 13237i), vec3<u32>(71890u, 62794u, 1u), vec3<f32>(-1641f, 767f, -356f)), Struct_1(vec4<i32>(1i, -30370i, 1i, 2147483647i), vec3<u32>(16361u, 4294967295u, 0u), vec3<f32>(591f, 1000f, -1247f)), Struct_1(vec4<i32>(-22111i, -27467i, 1i, 2147483647i), vec3<u32>(26851u, 5363u, 0u), vec3<f32>(-149f, -1765f, -1389f)));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 27>();
    global3 = array<Struct_1, 22>();
    global1 = !(!(!select(!vec2<bool>(global1.x, true), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), global1.x), global1.x)));
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(step(673f, 578f));
    return true || global1.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = arg_1 << (~1u % 32u);
    let var_2 = func_2();
    var var_3 = 847f;
    global0 = array<Struct_1, 27>();
    return global3[_wgslsmith_index_u32(~14020u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(global2.b.x);
    let var_1 = func_1(vec3<i32>(-22899i, _wgslsmith_dot_vec3_i32(firstLeadingBit(global2.a.zyw), ~countOneBits(vec3<i32>(global2.a.x, u_input.b, 1i))), 29559i), _wgslsmith_clamp_u32(var_0, u_input.a.x, abs(~0u)) | 40163u, 243f);
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_2 = global1.x;
    let var_3 = Struct_1(firstLeadingBit(var_1.a), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(var_0)), abs(~var_1.b.x), var_0)), _wgslsmith_f_op_vec3_f32(max(global2.c, global2.c)));
    let var_4 = var_3.c;
    let var_5 = Struct_1(countOneBits(~var_3.a), abs(var_3.b), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

