struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(488f, 2115f, 378f, 826f);

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    global1 = array<Struct_2, 32>();
    var var_0 = ~max(2147483647i, (_wgslsmith_mod_i32(arg_0, arg_0) | 770i) >> (_wgslsmith_div_u32(u_input.e.x, 0u) % 32u));
    var var_1 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(false, true)), true), _wgslsmith_mod_u32(u_input.d << (u_input.d % 32u), _wgslsmith_sub_u32(u_input.e.x, 4294967295u)) != 0u), select(vec2<bool>(-1596f == _wgslsmith_f_op_f32(sign(-439f)), select(any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false)))), vec2<bool>(false, 4294967295u >= u_input.e.x), false), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1834f, 1468f, false)))), _wgslsmith_f_op_f32(-global0.x))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), true, !((global0.x <= -529f) || true)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 122f, 664f, -1278f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, -472f, global0.x, -906f)))), ~vec3<u32>(35941u, select(u_input.d, u_input.e.x, true), 1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.e.a, var_1.e.a))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f + -253f)));
    return select(vec3<bool>(true, !(!var_1.d.x), false), !(!select(vec3<bool>(true, false, var_1.d.x), vec3<bool>(true, true, var_1.d.x), var_1.d.yzx)), select(var_1.d.yxz, vec3<bool>(true, true, true), !any(vec4<bool>(var_1.a.x, false, true, false))));
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(all(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), func_3(~u_input.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), any(vec2<bool>(true, true))))), 4726i < -abs(select(-3423i, 21792i, true)), _wgslsmith_f_op_f32(round(-292f)) <= global0.x, any(!vec2<bool>(true, any(vec3<bool>(true, true, false)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.x, 1360f, var_0.x)), 494f, var_0.x | var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), var_0.x)), 1805f)));
    var var_2 = u_input.c.xy;
    var_2 = u_input.a & firstTrailingBit(abs(-abs(u_input.a)));
    let var_3 = var_0.x;
    return -56828i;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = -38492i;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_3.e.a, arg_3.e.a)) - arg_3.e.a);
    var var_1 = ~u_input.e.x;
    var var_2 = _wgslsmith_sub_i32(arg_1, -u_input.b.x);
    let var_3 = arg_3.e.b;
    return select(arg_3.a.x, all(vec3<bool>(!(var_3.x == 4294967295u), any(select(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, false), arg_3.d, true)), !(arg_3.d.x == arg_3.b.x))), !arg_3.a.x);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 572f)) * 543f);
    let var_1 = vec2<i32>(~arg_1, countOneBits(arg_1));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(arg_0 * 177f))));
    var var_3 = !arg_2;
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(var_0 * 1888f))) + global0.x), _wgslsmith_f_op_f32(max(1446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1027f))))), -454f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_2.a, -504f, 242f)), false)))));
    return !select(vec3<bool>(false, arg_2, true), vec3<bool>(func_4(_wgslsmith_f_op_f32(arg_0 - 518f), func_2(), _wgslsmith_f_op_f32(arg_3.a.x * 1354f), Struct_2(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), -1499f, vec4<bool>(arg_2, false, arg_2, false), arg_3)), arg_2, arg_2), arg_2);
}

fn func_5(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1210f);
    var var_1 = _wgslsmith_mult_vec2_i32(firstTrailingBit(select(vec2<i32>(1i, 1i), ~u_input.a, func_1(_wgslsmith_f_op_f32(-362f - 769f), -u_input.a.x, any(vec4<bool>(arg_0, arg_0, arg_0, true)), Struct_1(vec4<f32>(-448f, global0.x, 1312f, global0.x), vec3<u32>(u_input.d, 61510u, u_input.d))).xy)), vec2<i32>(-10581i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -38886i, u_input.b.x, u_input.c.x), ~vec4<i32>(u_input.c.x, 10592i, u_input.a.x, u_input.b.x))) | vec2<i32>(1i, ~(~u_input.c.x)));
    let var_2 = ~u_input.c.x;
    global1 = array<Struct_2, 32>();
    var var_3 = u_input.b.x;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(453f, global0.x)))), _wgslsmith_f_op_f32(1079f * -812f)) * _wgslsmith_f_op_vec2_f32(-global0.yx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1759f, -1238f, 1834f), global0.zyx)), global0.yxz) - global0.wzx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x)) + global0.xzy)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e, firstLeadingBit(vec2<u32>(30018u, 0u))), ~u_input.e.x, u_input.e.x, 1u ^ u_input.d), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(all(select(select(func_1(global0.x, 2147483647i, false, Struct_1(vec4<f32>(-1172f, global0.x, global0.x, global0.x), vec3<u32>(u_input.e.x, u_input.d, u_input.d))), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), global0.x == -127f)));
}

