struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> vec4<bool> {
    global0 = !vec4<bool>((global0.x | global0.x) && any(global0.yzw), !(_wgslsmith_f_op_f32(ceil(729f)) != _wgslsmith_f_op_f32(f32(-1f) * -1023f)), any(vec4<bool>(true, !global0.x, true, true)), true);
    var var_0 = !any(select(global0.yy, !global0.wx, !global0.x)) | any(select(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, global0.x, false, true)), select(vec4<bool>(false, true, false, false), !vec4<bool>(false, true, global0.x, true), false), global0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, 1399f, 115f) * vec3<f32>(-1250f, -818f, -1383f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2595f, 855f, -223f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-715f)), 552f, _wgslsmith_f_op_f32(ceil(683f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 1f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x))), vec3<f32>(854f, var_1.x, var_1.x), global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x)))));
    global0 = select(select(vec4<bool>(all(global0.yyz), _wgslsmith_mult_u32(4883u, u_input.b.x) < select(arg_2.a, 0u, global0.x), true, !global0.x & global0.x), vec4<bool>(!(arg_2.b >= -1i), false, all(global0.xx), true), select(select(!vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(true, true, global0.x, true)), select(vec4<bool>(true, global0.x, true, global0.x), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, global0.x)), !vec4<bool>(global0.x, true, false, false)), vec4<bool>(global0.x, true, arg_1 != arg_0, false))), select(vec4<bool>(!(!global0.x), true, false, global0.x), !(!select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, false, true))), any(vec3<bool>(global0.x && false, 4294967295u < arg_2.a, true))), _wgslsmith_sub_i32(1i, arg_0) == (reverseBits(arg_1) >> (~select(arg_2.a, 1u, false) % 32u)));
    return vec4<bool>(any(select(select(!vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, true), !vec4<bool>(true, global0.x, false, true)), select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(global0.x, global0.x, false, global0.x), global0.x), !(false & global0.x))), global0.x, all(vec3<bool>(!global0.x || any(vec2<bool>(false, global0.x)), global0.x, false)), !global0.x);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = arg_2.a.x;
    let var_1 = arg_2.a;
    global0 = func_3(arg_1, -1i, Struct_5((~arg_0 & u_input.b.x) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(67244u, 10854u, 1u, 1u), vec4<u32>(arg_0, u_input.b.x, u_input.b.x, arg_0)), -1491i));
    let var_2 = arg_2.a.x;
    let var_3 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.xx, u_input.c.zz), u_input.c.zy), _wgslsmith_mult_i32(~(-u_input.a.x), -u_input.a.x), -64083i);
    return _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.c.yy), arg_1), ~_wgslsmith_div_i32(arg_1, arg_1 ^ u_input.a.x)), abs(select(-arg_1, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -2147483647i), u_input.a.x), global0.x)));
}

fn func_1(arg_0: i32) -> bool {
    global0 = vec4<bool>(false, _wgslsmith_mod_i32(-_wgslsmith_add_i32(21542i, -17435i), ~(22830i | u_input.a.x)) >= _wgslsmith_mult_i32(func_2(u_input.b.x, arg_0, Struct_1(vec3<f32>(-1481f, 2417f, -979f)), 50098u), ~(u_input.c.x >> (u_input.b.x % 32u))), firstTrailingBit(~(~u_input.b.x)) >= ~u_input.b.x, false);
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(f32(-1f) * -393f))), 707f, -1758f));
    var var_1 = Struct_5(countOneBits(4294967295u), max(u_input.c.x, u_input.a.x));
    let var_2 = var_0.a.x;
    var var_3 = Struct_4(Struct_2(var_0, vec3<u32>(0u & (1u ^ u_input.b.x), reverseBits(1u), abs(~1u)), global0.wy), Struct_2(var_0, u_input.b, global0.yy), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a)))), countOneBits(abs(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(var_1.a, 4294967295u, u_input.b.x)))), select(vec2<bool>(true, false), global0.zw, vec2<bool>(arg_0 == arg_0, global0.x | true))), i32(-1i) * -18519i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-528f + var_0.a.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(1161f * 1158f)))), 716f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(603f))))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -574f)))));
    return ((-596f == _wgslsmith_f_op_f32(min(var_0.a.x, var_3.e.x))) == false) || func_3((_wgslsmith_add_i32(u_input.a.x, arg_0) & u_input.a.x) & _wgslsmith_clamp_i32(u_input.c.x, abs(16786i), -2147483647i), u_input.c.x >> (u_input.b.x % 32u), Struct_5(~_wgslsmith_mod_u32(var_1.a, 25764u), ~(-29377i))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1140f, -674f, -169f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2152f, 1169f, 1000f))))), u_input.b, !(!vec2<bool>(false, u_input.a.x > -9114i)));
    let var_1 = any(vec4<bool>(false, func_1(~(-1i)), 4294967295u > select(_wgslsmith_mod_u32(var_0.b.x, var_0.b.x), _wgslsmith_mod_u32(var_0.b.x, 1u), true), func_3(u_input.c.x, i32(-1i) * -u_input.c.x, Struct_5(abs(322u), u_input.a.x)).x));
    let var_2 = Struct_4(Struct_2(var_0.a, var_0.b, !select(select(vec2<bool>(false, var_1), global0.wz, true), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), var_0.c), !vec2<bool>(global0.x, true))), Struct_2(var_0.a, ~var_0.b, vec2<bool>(true, all(vec2<bool>(true, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a.a * _wgslsmith_f_op_vec3_f32(var_0.a.a + var_0.a.a))), vec3<u32>(1u, ~u_input.b.x, var_0.b.x), vec2<bool>(false, func_3(u_input.a.x, 62864i, Struct_5(var_0.b.x, -26361i)).x && true)), ~(abs(-1i) & _wgslsmith_mod_i32(min(u_input.a.x, -1i), -6517i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), -725f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1317f)))));
    var var_3 = ~abs(4294967295u) & u_input.b.x;
    global0 = !(!(!select(func_3(51894i, -2147483647i, Struct_5(var_0.b.x, -2147483647i)), !vec4<bool>(var_0.c.x, var_2.b.c.x, var_0.c.x, false), var_2.c.b.x != 186u)));
    var var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, 44814u, -1734f);
}

