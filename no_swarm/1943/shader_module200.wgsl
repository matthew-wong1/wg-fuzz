struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15837i;

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(48041u, 0u, 4294967295u), vec3<u32>(0u, 30395u, 110375u), vec3<u32>(0u, 4294967295u, 59168u));

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(0u, 24u)];
    let var_1 = firstLeadingBit(abs(vec3<i32>(u_input.d, reverseBits(i32(-1i) * -1i), ~(-4024i))));
    var var_2 = select(1u, 4294967295u, all(!select(select(vec2<bool>(arg_1, var_0.x), vec2<bool>(var_0.x, arg_1), arg_2.yz), var_0.zx, var_0.xz)));
    var_0 = global3[_wgslsmith_index_u32(~0u, 24u)];
    global1 = array<vec3<u32>, 3>();
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, max(~arg_0, ~1u) << (arg_0 % 32u)), u_input.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    global0 = arg_1;
    let var_0 = Struct_1(abs(vec4<u32>(max(u_input.a, ~24580u), 1u, abs(4294967295u), u_input.b.x)), vec4<bool>(false, any(select(vec3<bool>(false, false, false), !global3[_wgslsmith_index_u32(u_input.a, 24u)], vec3<bool>(true, true, true))), (all(vec4<bool>(false, false, true, false)) | true) & true, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1984f, arg_0.x, false)) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f - -3098f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(round(-528f))), _wgslsmith_f_op_f32(select(arg_0.x, 668f, true)))));
    global3 = array<vec3<bool>, 24>();
    var var_2 = select(vec4<bool>(true, true, true && var_0.b.x, any(select(vec4<bool>(var_0.b.x, true, false, false), select(var_0.b, vec4<bool>(var_0.b.x, true, false, true), false), all(vec3<bool>(var_0.b.x, false, var_0.b.x))))), !var_0.b, var_0.b);
    return _wgslsmith_div_u32(u_input.c >> (var_0.a.x % 32u), ~26961u);
}

fn func_1() -> i32 {
    global1 = array<vec3<u32>, 3>();
    var var_0 = min(_wgslsmith_div_vec4_u32(vec4<u32>(7034u, u_input.b.x, func_2(~u_input.e, true, vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2305f, -713f)), u_input.d)), ~(~vec4<u32>(u_input.b.x, 1u, u_input.c, u_input.b.x))), vec4<u32>(83182u, 1u, 19680u, u_input.a >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 3u)]), global1[_wgslsmith_index_u32(~1u, 3u)]) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1174f, -124f, 238f, -931f)))))), vec4<f32>(_wgslsmith_f_op_f32(max(885f, -319f)), -415f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -248f), -477f, select(false, false, false))))), _wgslsmith_f_op_f32(abs(537f)))));
    let var_2 = ~u_input.c;
    global0 = _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-1i) * -vec2<i32>(u_input.d, u_input.d), ~(~vec2<i32>(u_input.d, 2147483647i)), all(vec2<bool>(true, true))), vec2<i32>(-2147483647i & ~u_input.d, u_input.d));
    return _wgslsmith_mult_i32(-(u_input.d | u_input.d), -1i >> (_wgslsmith_clamp_u32(0u, abs(_wgslsmith_mod_u32(u_input.a, u_input.b.x)), var_0.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 24>();
    global0 = -func_1();
    global0 = u_input.d;
    var var_0 = ~(~(~min(~vec4<u32>(61150u, 21949u, 4294967295u, u_input.e), vec4<u32>(4294967295u, 4294967295u, 7370u, 0u))));
    global1 = array<vec3<u32>, 3>();
    let var_1 = _wgslsmith_f_op_f32(round(-473f)) > -562f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u ^ select(~27881u, u_input.b.x, var_1)), _wgslsmith_f_op_f32(abs(145f)), ~(-(~(vec2<i32>(34757i, u_input.d) & vec2<i32>(1i, u_input.d)))), 549f);
}

