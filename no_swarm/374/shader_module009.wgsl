struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(floor(1249f));
    return any(!vec3<bool>(29173u < min(u_input.c, 35382u), var_0, var_0));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
    var var_1 = ~firstLeadingBit(1u);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = !vec3<bool>(func_3(), select(any(vec4<bool>(false, true, var_0.x, var_0.x)), !var_0.x, var_0.x) || true, any(var_0.xz));
    var_1 = u_input.b;
    return abs(u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = firstLeadingBit(vec3<i32>(firstLeadingBit(-(arg_0 << (1u % 32u))), -arg_0, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -16687i, 2147483647i), vec3<i32>(arg_0, 2147483647i, -2479i)), func_2(arg_1)) | (~arg_0 & ~(-17873i))));
    var_0 = u_input.a;
    let var_1 = Struct_1(~(~u_input.b), vec4<bool>(true, _wgslsmith_f_op_f32(abs(arg_1.x)) != _wgslsmith_f_op_f32(arg_1.x + arg_1.x), true, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(arg_1.wxw, vec3<f32>(-1427f, 337f, arg_1.x)));
    var var_3 = ~_wgslsmith_add_i32(i32(-1i) * -arg_0, func_2(_wgslsmith_f_op_vec4_f32(abs(arg_1))));
    return firstTrailingBit(~_wgslsmith_add_u32(89945u, abs(var_1.a))) >> (var_1.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!(func_1(38307i, vec4<f32>(-347f, -926f, -2550f, 686f)) <= select(60216u, u_input.b, false)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -574f, false)))) != 1000f);
    var var_1 = _wgslsmith_dot_vec3_i32(~(u_input.a & vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, 4782i, -26609i)), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), abs(vec3<i32>(_wgslsmith_add_i32(1i, countOneBits(-7899i)), ~(-36958i), -u_input.a.x)));
    var_0 = !(!(!(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)))));
    var_0 = select(vec3<bool>(false == !(u_input.a.x >= -2147483647i), all(!(!vec2<bool>(var_0.x, false))), select(true, u_input.b >= (u_input.b << (0u % 32u)), func_3())), !select(vec3<bool>(true, u_input.c >= u_input.c, all(vec2<bool>(true, var_0.x))), !vec3<bool>(var_0.x, var_0.x, var_0.x), !(!vec3<bool>(var_0.x, var_0.x, false))), !select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true & var_0.x, true), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(247f, -492f)) + _wgslsmith_f_op_f32(1000f - -688f)))));
    var var_3 = abs(abs(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, 0i, 2147483647i), _wgslsmith_mult_i32(-35828i, 13241i))));
    let var_4 = select(select(vec4<bool>(func_3(), false, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), false)), false), vec4<bool>(true, func_3(), true, select(var_0.x, !var_0.x, false | var_0.x)), 1i >= u_input.a.x), vec4<bool>(any(vec4<bool>(true, true, any(var_0.yy), u_input.c < u_input.b)), !var_0.x, var_0.x, false), select(vec4<bool>(true, true, any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, true), var_0.x)), var_0.x), !vec4<bool>(var_0.x, !var_0.x, false, all(var_0.yz)), select(var_0.x, true, var_0.x)));
    var_1 = ~_wgslsmith_mod_i32(-1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, 960f, -1267f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, 1000f, 1723f)))), vec3<f32>(1f, 1f, 1f)))));
}

