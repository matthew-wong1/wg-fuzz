struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f + 1109f)));
    return _wgslsmith_f_op_vec4_f32(-arg_1.a);
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * 227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(-17568i, Struct_1(vec4<f32>(-934f, -459f, -1644f, 353f), vec3<i32>(-57887i, -21988i, -2147483647i)))).x + _wgslsmith_f_op_f32(-286f * -1525f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(481f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)))), _wgslsmith_mod_vec3_i32(abs(~(-vec3<i32>(1i, 36110i, 0i))), _wgslsmith_add_vec3_i32(vec3<i32>(~27612i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 18114i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, 57834i, 12273i)), -2147483647i), vec3<i32>(0i, max(-54974i, -9440i), _wgslsmith_sub_i32(-11246i, 36338i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_mod_i32(countOneBits(-2147483647i), var_0.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, -626f, var_0.a.x, var_0.a.x)), vec3<i32>(var_0.b.x, 2147483647i, -285i)))) + _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(184f, 1152f, var_0.a.x, var_0.a.x))))), (vec3<i32>(-1i) * -var_0.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 96836u), vec4<u32>(u_input.a, 26601u, u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 26018u, u_input.a, u_input.a), vec4<u32>(123157u, 4294967295u, 42917u, u_input.a)), u_input.a), vec3<u32>(41879u, u_input.a, abs(u_input.a))) % vec3<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), ~vec3<i32>(max(_wgslsmith_mult_i32(-1i, 57732i), 2147483647i), ~var_1.b.x, var_1.b.x));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) + var_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1454f + var_0.a.x), -1270f, false)), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false))))));
    return true;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = !vec2<bool>(true, func_3());
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(max(abs(11479i), _wgslsmith_mult_i32(min(-24182i, -16634i), select(1i, 20494i, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(239f, -1468f)), _wgslsmith_f_op_f32(max(319f, -904f)), _wgslsmith_f_op_f32(1114f * 472f), _wgslsmith_f_op_f32(sign(-2247f))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(5939i, -22857i), -46579i)))), firstLeadingBit(-vec3<i32>(1i, countOneBits(24129i), 48623i)));
    var var_1 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, var_0.a.x > _wgslsmith_f_op_f32(-var_0.a.x)), false), vec2<bool>(func_2(var_0.b.x), !all(vec4<bool>(true, true, true, true))), vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.a.x)))) > var_0.a.x, countOneBits(max(11086u, u_input.a)) < (10460u >> ((u_input.a >> (42705u % 32u)) % 32u))));
    var_1 = vec2<bool>(true, !(!(-33083i > (-14336i >> (u_input.a % 32u)))));
    var_1 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true)), !vec2<bool>(var_1.x, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x))), vec2<bool>(true, all(vec3<bool>(false, var_1.x, var_1.x)))));
    var var_2 = all(vec4<bool>(!var_1.x, !var_1.x, !((var_1.x || false) || true), true));
    var_1 = !(!vec2<bool>(true, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(556f * -2906f), 1952f, var_0.a.x))), vec2<i32>(-95590i, 1i));
}

