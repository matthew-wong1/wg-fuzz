struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(459f, 896f, 136f, 779f), vec4<f32>(-1232f, -145f, -328f, -441f), vec4<f32>(-383f, 2090f, -2033f, -1032f), vec4<f32>(-394f, 480f, -533f, 500f), vec4<f32>(-201f, -606f, -786f, -1217f), vec4<f32>(1105f, 1124f, 853f, -1502f), vec4<f32>(303f, 1260f, -690f, -1235f), vec4<f32>(1441f, -406f, 188f, 464f), vec4<f32>(-742f, 809f, -658f, -124f), vec4<f32>(-839f, 1727f, 1000f, -762f), vec4<f32>(-723f, 1100f, 436f, 740f), vec4<f32>(379f, 379f, -999f, 496f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<u32> {
    global0 = array<vec4<f32>, 12>();
    return _wgslsmith_div_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(25856u, 27863u, 19392u), vec3<u32>(58917u, 4294967295u, 34830u), vec3<u32>(57369u, 0u, 83681u))), ~(~vec3<u32>(89362u, 1u, 1u))) & countOneBits(vec3<u32>(~abs(1u), _wgslsmith_div_u32(min(17772u, 14101u), 4294967295u), ~1u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 12>();
    var var_0 = false;
    let var_1 = -1000f;
    let var_2 = arg_1;
    var var_3 = arg_1;
    return ~(~(~reverseBits(1u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<vec4<f32>, 12>();
    let var_0 = arg_1.c.x;
    var var_1 = vec3<u32>(~1u, 55816u, ~(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(76202u, 4294967295u, 1u), vec3<u32>(21847u, 4294967295u, 0u)), _wgslsmith_mod_u32(1u, 41788u), true)));
    var_1 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.x), vec3<u32>(39411u, 1u, var_1.x)), ~(~vec3<u32>(var_1.x, var_1.x, var_1.x))), reverseBits(~func_2(Struct_2(Struct_1(u_input.a.x, arg_2.b, arg_2.c, vec2<i32>(2147483647i, 23344i))), vec2<i32>(u_input.a.x, 22774i))), select(select(arg_1.c, !arg_1.c, arg_2.c), select(select(arg_2.c, arg_2.c, vec3<bool>(arg_1.b, true, arg_2.c.x)), select(arg_2.c, vec3<bool>(arg_2.c.x, arg_2.c.x, var_0), arg_2.c), !vec3<bool>(false, var_0, true)), var_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(~4294967295u, ~var_1.x), _wgslsmith_mod_u32(67065u | var_1.x, 1u)), ~vec3<u32>(select(0u, var_1.x, false), func_3(true, arg_1), var_1.x)));
    var_1 = ~(vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, ~1199u, 104695u), func_3(arg_2.b, arg_2), abs(func_2(Struct_2(Struct_1(-15333i, false, arg_1.c, u_input.a.yx)), vec2<i32>(arg_2.d.x, 2147483647i)).x)) & (~vec3<u32>(4294967295u, 0u, 10718u) ^ vec3<u32>(var_1.x, firstLeadingBit(var_1.x), ~136222u)));
    return arg_2.c.yx;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = all(vec3<bool>(true, true, true));
    let var_1 = u_input.a ^ vec3<i32>(_wgslsmith_sub_i32(countOneBits(arg_1.a), -1i), arg_1.a, -2147483647i);
    let var_2 = -2147483647i;
    let var_3 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_4(select(true, all(!func_1(-1866f, Struct_1(-2147483647i, false, vec3<bool>(true, false, false), u_input.a.yy), Struct_1(0i, false, vec3<bool>(false, true, true), vec2<i32>(-13543i, 64650i)))), all(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, any(vec3<bool>(false, true, true))))), Struct_1(var_0 & -50840i, select(true, false, true), vec3<bool>(true, true, true), vec2<i32>(-460i, u_input.a.x)));
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    let var_2 = vec3<u32>(~0u, min(63930u, 1u), 0u);
    global0 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~abs(vec4<u32>(select(var_2.x, var_2.x, true), var_2.x, firstTrailingBit(var_2.x), 27415u)), var_1.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(609f)))), func_2(Struct_2(var_1), ~u_input.a.zx).x);
}

