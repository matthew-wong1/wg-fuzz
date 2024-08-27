struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(-1i, -2387f, vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -144f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(271f))), 992f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-588f, 2491f) + _wgslsmith_f_op_f32(f32(-1f) * -1977f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-236f)), _wgslsmith_f_op_f32(sign(1085f)), -190f, -114f))));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~4294967295u), 4294967295u) >> (~select(u_input.b.yx ^ vec2<u32>(4294967295u, u_input.b.x), ~vec2<u32>(0u, 1u), select(global0.ww, vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x))) % vec2<u32>(32u)), u_input.b.yy);
    let var_2 = -u_input.d;
    let var_3 = select(select(!(!select(global0.yxz, vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, global0.x))), select(global0.zxy, !global0.zxx, select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, global0.x), global0.x), !global0.yzy, global0.yxy)), false), !select(select(vec3<bool>(false, global0.x, global0.x), select(global0.xwz, vec3<bool>(true, false, global0.x), false), global0.x), global0.yxy, _wgslsmith_f_op_f32(f32(-1f) * -863f) < var_0.e.x), !(!(!select(global0.xxy, global0.yyz, global0.x))));
    global0 = !(!vec4<bool>(true != global0.x, any(!vec4<bool>(global0.x, true, var_3.x, false)), any(!vec4<bool>(var_3.x, false, false, false)), select(select(global0.x, var_3.x, true), var_0.b >= var_0.b, global0.x & var_3.x)));
    return var_3;
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1167f))));
    global0 = select(vec4<bool>(any(vec3<bool>(true, global0.x, true)), global0.x, all(func_3()), global0.x), vec4<bool>(all(global0.yx), any(global0.yz), false, !global0.x), select(select(!select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, true, true), global0.x), !(!vec4<bool>(true, global0.x, true, global0.x)), vec4<bool>(true, func_3().x, -1443f > var_0, true)), !(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, false), global0.x)), !select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(global0.x, true, false))));
    return !vec3<bool>(select(true & (var_0 > 123f), global0.x, !global0.x), global0.x, all(!vec4<bool>(false, true, global0.x, global0.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    let var_0 = ~u_input.d.x;
    let var_1 = Struct_2(_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(var_0, -1i, var_0)), ~max(var_0, -20672i)) << ((~(~arg_0) | _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.c.x)), ~u_input.b.wz)) % 32u), ~vec4<u32>(~4294967295u << (select(4294967295u, 62770u, global0.x) % 32u), _wgslsmith_add_u32(1u, 18328u), arg_0, _wgslsmith_mod_u32(~6188u, max(arg_0, 4294967295u))), 1755u);
    global0 = vec4<bool>(!arg_1.x, -45457i != var_0, true, false);
    var var_2 = global0.x;
    var var_3 = vec4<bool>(global0.x, true & !arg_1.x, !func_3().x, global0.x);
    return 0i;
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_4(24722u, !func_2()) < u_input.a.x;
    global0 = vec4<bool>(arg_0, false, true & !func_2().x, true);
    let var_1 = Struct_2(-(_wgslsmith_sub_i32(15194i, 50965i ^ u_input.a.x) << (u_input.b.x % 32u)), vec4<u32>(u_input.c.x, _wgslsmith_add_u32(abs(abs(69687u)), _wgslsmith_mod_u32(42432u, select(0u, 0u, true))), ~u_input.b.x, ~(~u_input.c.x << (firstLeadingBit(u_input.b.x) % 32u))), u_input.b.x);
    let var_2 = Struct_1(-4556i, _wgslsmith_f_op_f32(select(390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-599f, -208f)))), arg_0 != global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, 302f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1184f, -645f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1469f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(abs(-406f))), 1793f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, 249f, 197f, -2061f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, 605f, 1841f, 616f)))))));
    global0 = !(!select(!select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, false), var_0), vec4<bool>(true, var_0 || false, global0.x, func_2().x), false));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-672f, 1f))) - _wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x - 672f), 1000f)))), var_2.a, max(var_1.c, abs(16151u) >> (u_input.c.x % 32u)) | 14552u, var_2, var_2);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d.e - _wgslsmith_f_op_vec4_f32(arg_0.e.e + arg_0.e.e)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0.d.e))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.yx, vec2<f32>(arg_0.d.d, _wgslsmith_f_op_f32(max(-1000f, arg_0.e.b)))))));
    let var_2 = arg_0.b;
    global0 = select(vec4<bool>(global0.x, !(!func_3().x), global0.x, false), !select(vec4<bool>(false & global0.x, true, false, true), vec4<bool>(true, false, true, true), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), func_3().x)), vec4<bool>(global0.x, !(true & global0.x) & any(!vec3<bool>(false, global0.x, false)), 2147483647i == -_wgslsmith_div_i32(1i, var_2), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b, var_2), u_input.a), firstTrailingBit(u_input.d.zw)) >= _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -26712i), u_input.d.wx)));
    global0 = vec4<bool>(true, !global0.x, var_0.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + arg_0.a), -656f)), 338f)), global0.x);
    return arg_0.d;
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b) - 335f)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(878f, _wgslsmith_f_op_f32(arg_1.d.c.x * arg_1.a)) + _wgslsmith_f_op_f32(min(322f, _wgslsmith_f_op_f32(f32(-1f) * -115f))))).e;
    global0 = select(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(global0.x, false, true, true), vec4<bool>(false, false, global0.x, false)))), select(select(vec4<bool>(global0.x, func_2().x, true, global0.x), select(!vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, true, true, false), vec4<bool>(global0.x, false, global0.x, true)), arg_1.e.c.x >= -161f), true), !vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true), !(!vec4<bool>(global0.x, global0.x, true, false))), select(any(vec4<bool>(true, true, -829f >= var_0.e.x, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), global0.x == true, false));
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.e.zwx + _wgslsmith_f_op_vec3_f32(-var_0.e.yyz));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.d.zww, abs(u_input.d.wzz))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, arg_1.d.a, u_input.d.x), u_input.d.wxx), -(vec3<i32>(arg_1.d.a, -18466i, 2147483647i) ^ u_input.d.zxy), false)), 12119i | _wgslsmith_sub_i32(~(i32(-1i) * -1i), ~(~arg_1.e.a)));
    var var_3 = ~u_input.b;
    return vec3<bool>(false | !global0.x, func_3().x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(793f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f + -620f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))));
    let var_1 = func_6(min(_wgslsmith_clamp_i32(select(-15428i, u_input.a.x, global0.x), ~(-19507i), _wgslsmith_div_i32(-26318i, u_input.a.x)) >> (_wgslsmith_mod_u32(u_input.c.x, u_input.b.x) % 32u), 1i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -265f) * 434f)), 17757i, ~33240u, func_5(func_1(all(vec4<bool>(false, false, global0.x, true))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(9359u, u_input.c.x), u_input.b.zx)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u), u_input.c.x, 1u)), func_1(global0.x).e));
    var var_2 = var_1.x;
    var var_3 = Struct_3(-964f, 1i, abs(_wgslsmith_add_u32(u_input.c.x, 70146u)) >> (17740u % 32u), func_1(any(select(!global0.zy, !global0.xw, vec2<bool>(false, false)))).d, func_1(true).d);
    var var_4 = u_input.a;
    var_3 = Struct_3(_wgslsmith_f_op_f32(floor(var_3.d.d)), u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.b.wzy, u_input.c), func_5(func_1(false), 0u, ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_3.c, 860u, var_3.c)), reverseBits(u_input.b))), var_3.e);
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-578f, _wgslsmith_f_op_f32(f32(-1f) * -1235f), var_3.e.b), _wgslsmith_f_op_vec3_f32(-var_3.d.e.zxw), !func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 29262u, 1u) >> (u_input.b % vec4<u32>(32u)), vec4<u32>(1u, var_3.c, 1u, var_3.c) & vec4<u32>(u_input.b.x, 1u, 4294967295u, var_3.c)), ~u_input.b) ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.c, ~u_input.b.x), 4294967295u), 44989u, u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.e.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-704f + var_3.a))))), -1848f, _wgslsmith_f_op_f32(floor(-137f))), countOneBits(19268u));
}

