struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-1i, 22111i, i32(-2147483648), 50247i), vec4<i32>(-13488i, -2214i, -29186i, 1i), vec4<i32>(-46344i, 2147483647i, 2147483647i, -1i), vec4<i32>(-79848i, 25647i, 17549i, -1i), vec4<i32>(i32(-2147483648), -1i, 1i, 1i), vec4<i32>(3819i, -5228i, 1i, -1i), vec4<i32>(-50581i, 1i, -1i, -1i), vec4<i32>(12741i, 1i, 33539i, 1i), vec4<i32>(-1i, -50694i, 7131i, 2147483647i), vec4<i32>(-3532i, 0i, 28106i, 27466i), vec4<i32>(45295i, -35917i, -7555i, 2147483647i), vec4<i32>(-1i, 1i, 2147483647i, -19251i), vec4<i32>(0i, -10380i, 3674i, -1i), vec4<i32>(78696i, 0i, -10765i, 0i), vec4<i32>(3550i, -37831i, -23204i, 1i), vec4<i32>(4667i, 1i, 1i, 1i), vec4<i32>(-1i, i32(-2147483648), -11404i, -1i), vec4<i32>(-60110i, -1i, 1i, -18121i), vec4<i32>(1i, 1i, -23348i, -26264i));

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<f32> {
    global1 = 1i;
    let var_0 = arg_0.a.x;
    var var_1 = arg_0.c;
    var_1 = _wgslsmith_f_op_f32(arg_0.c * var_0);
    var var_2 = vec2<bool>(var_0 <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1031f))))), arg_0.b.x);
    return arg_0.a;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: f32) -> vec4<f32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(775f, -900f, !arg_0.a & false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 1000f)), arg_3, arg_3));
    var var_1 = Struct_2(var_0.a.yw, select(!select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a)), !vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true)), !vec2<bool>(!arg_0.a, arg_0.a), !arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1315f))))))));
    global0 = array<vec4<i32>, 19>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yw)))) + _wgslsmith_f_op_vec2_f32(var_0.a.yw * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a.wx), vec2<bool>(false, arg_0.a), -999f), reverseBits(u_input.b.xz)))));
    let var_3 = min(_wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.e, _wgslsmith_clamp_u32(arg_2, arg_1, 1u), _wgslsmith_mod_u32(u_input.d, arg_2)), max(~min(vec3<u32>(arg_1, u_input.d, u_input.d), vec3<u32>(u_input.d, 1u, arg_1)), max(vec3<u32>(1u, u_input.e, 16606u), ~vec3<u32>(9269u, 0u, 0u)))), ~(~abs(vec3<u32>(arg_1, 1u, 30311u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, 413f)))) - _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = max(u_input.a, u_input.a);
    let var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(1693f + 1024f), _wgslsmith_f_op_f32(ceil(-1362f)), _wgslsmith_f_op_f32(-464f + 916f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(arg_0, u_input.d, u_input.e, 624f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2124f, 359f, 1000f, -110f) - vec4<f32>(1379f, 1228f, -1117f, 1366f)), false))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(select(var_2.a.x, 622f, arg_0.a)), _wgslsmith_f_op_f32(var_2.a.x * -183f), _wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)))))));
    let var_3 = -164f;
    return !select(vec2<bool>(arg_0.a, true), select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, true), select(!vec2<bool>(false, arg_0.a), vec2<bool>(true, true), !arg_0.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(-2147483647i, u_input.c);
    let var_0 = Struct_3(false);
    let var_1 = true;
    global1 = -1443i;
    let var_2 = !func_1(var_0, vec4<i32>(_wgslsmith_sub_i32(0i, u_input.c), -41635i, -(u_input.a | -1i), -(i32(-1i) * -1i)));
    let var_3 = any(select(!(!vec4<bool>(var_0.a, var_0.a, true, false)), !select(select(vec4<bool>(var_1, var_2.x, var_2.x, false), vec4<bool>(var_0.a, true, false, false), vec4<bool>(var_1, var_0.a, true, true)), vec4<bool>(true, var_0.a, true, true), false), var_0.a));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, 209f, -334f, -237f) - vec4<f32>(-208f, -714f, 545f, -164f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, -161f, -380f, -160f))), _wgslsmith_f_op_vec4_f32(func_2(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(15619u, 17202u, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.d, u_input.e, 1u)), ~u_input.e, _wgslsmith_f_op_f32(abs(-2443f)))))));
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-global0[_wgslsmith_index_u32(~(u_input.e | (26054u & u_input.e)), 19u)], ~countOneBits(firstTrailingBit(abs(vec2<u32>(4294967295u, 96165u)))), 4275i, u_input.b.x);
}

