struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = 1u | _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(select(vec4<u32>(global0.b, 78205u, 13740u, global0.b), u_input.b | u_input.b, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), max(~u_input.b, u_input.b)));
    let var_1 = vec3<u32>(28920u, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.wx), global0.b), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(4294967295u), 1u), vec2<u32>(reverseBits(var_0), _wgslsmith_mult_u32(20938u, 70690u)))), _wgslsmith_sub_u32(70239u, u_input.a));
    global0 = Struct_4(_wgslsmith_div_i32(_wgslsmith_div_i32(8701i, u_input.c << (1u % 32u)), global0.a), 43542u);
    let var_2 = -1i;
    global0 = Struct_4(select(countOneBits(u_input.e), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, u_input.e) & vec2<i32>(var_2, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2, global0.a), vec2<i32>(-25519i, -1i)) | (vec2<i32>(-1i, -1i) & vec2<i32>(u_input.e, var_2))), true), global0.b | ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.x, global0.b), var_1.x));
    return true & all(vec4<bool>(true, true && (global0.a > -3491i), true && any(vec2<bool>(false, true)), false));
}

fn func_2() -> vec3<bool> {
    let var_0 = !func_3();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + 546f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1255f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1545f, -222f, var_0)) - _wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_2 = var_0;
    let var_3 = ~vec4<i32>(_wgslsmith_add_i32(global0.a, global0.a), 0i, countOneBits(_wgslsmith_sub_i32(17758i, u_input.c)), u_input.e | 2147483647i);
    var_1 = -1421f;
    return vec3<bool>(var_0, true, all(select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(!var_0, var_0, true, false & var_0), var_0)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5) -> vec3<u32> {
    global0 = Struct_4(_wgslsmith_add_i32(-19349i, u_input.c | firstLeadingBit(-1i)), global0.b);
    let var_0 = ~((vec2<i32>(global0.a, ~u_input.c) | _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2925i, global0.a)), ~vec2<i32>(global0.a, global0.a))) | vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, u_input.e, u_input.c, 2147483647i), vec4<i32>(u_input.c, global0.a, u_input.e, u_input.e)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, u_input.e, global0.a, -9266i), vec4<i32>(15811i, global0.a, u_input.e, 8131i)), ~(-1i))));
    var var_1 = _wgslsmith_mod_i32(~global0.a, u_input.e);
    let var_2 = true;
    var var_3 = Struct_2(Struct_1(arg_1.b.xy, vec4<u32>(~(u_input.a << (4294967295u % 32u)), 4294967295u, ~u_input.d ^ ~4294967295u, arg_1.d.b.x), true, !select(vec2<bool>(arg_1.a, arg_0.x), select(vec2<bool>(true, arg_0.x), arg_1.d.d, vec2<bool>(arg_0.x, arg_0.x)), arg_1.d.c && true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.d.a.x))), arg_1.c.b.c, arg_1.b);
    return arg_1.c.b.a.b.wwy;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_4 {
    global0 = Struct_4(arg_1.x, global0.b);
    let var_0 = func_4(func_2(), Struct_5(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1088f, arg_2)))), Struct_3(_wgslsmith_f_op_f32(arg_2 * -458f), Struct_2(Struct_1(vec2<f32>(-1175f, arg_2), u_input.b, false, vec2<bool>(false, false)), _wgslsmith_div_vec2_f32(vec2<f32>(-212f, arg_2), vec2<f32>(-1115f, arg_2)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, -1362f, arg_2), vec4<f32>(arg_2, 267f, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -1437f) - vec3<f32>(arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -657f), vec2<f32>(145f, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -555f) - vec2<f32>(1205f, -384f))), max(countOneBits(vec4<u32>(24502u, global0.b, global0.b, 0u)), u_input.b), !(arg_1.x >= 1i), vec2<bool>(arg_1.x == 0i, all(vec4<bool>(true, false, false, false)))), all(vec2<bool>(true, true))));
    global0 = Struct_4(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(arg_1.x), -arg_1.x), global0.a), 6871u);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) + _wgslsmith_f_op_f32(floor(arg_2)))), _wgslsmith_f_op_f32(step(arg_2, arg_2))), vec4<u32>(var_0.x << (select(0u, ~56157u, func_2().x) % 32u), ~((var_0.x << (var_0.x % 32u)) ^ u_input.b.x), u_input.b.x, 1u), false, !vec2<bool>(true, (global0.b > global0.b) && func_2().x));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(408f)))))), ~countOneBits(select(vec4<u32>(3529u, 6047u, arg_0.x, arg_0.x), vec4<u32>(11536u, u_input.b.x, arg_0.x, var_0.x), vec4<bool>(var_1.d.x, true, false, var_1.d.x))) & ~abs(~var_1.b), var_1.d.x, var_1.d);
    return Struct_4(u_input.e, reverseBits(arg_0.x >> (~_wgslsmith_mult_u32(20389u, 0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(true, true));
    global0 = func_1(~_wgslsmith_add_vec4_u32(~(~u_input.b), vec4<u32>(4294967295u, global0.b, 0u ^ u_input.a, max(1969u, u_input.d))), -vec3<i32>(1i, global0.a, global0.a), -389f);
    var var_1 = !var_0 || !(!(true && var_0));
    let var_2 = Struct_5(func_3(), vec3<f32>(_wgslsmith_f_op_f32(-2346f * _wgslsmith_f_op_f32(f32(-1f) * -1009f)), -932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - 1056f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f * 150f)))), Struct_3(107f, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1238f, 1057f), vec2<f32>(-1457f, -1908f))), vec4<u32>(global0.b, 64915u, global0.b, global0.b), var_0, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(253f, -785f), vec2<f32>(-1212f, -1308f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(973f, 266f, 197f, -639f), vec4<f32>(506f, 1308f, -132f, -1000f), false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1173f, -197f, 1480f)))), _wgslsmith_f_op_f32(1f * -1797f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(1704f)), _wgslsmith_f_op_f32(f32(-1f) * -202f)), vec4<u32>(u_input.b.x >> (u_input.d % 32u), u_input.b.x | u_input.b.x, ~abs(global0.b), 2423u), true, vec2<bool>((u_input.d > 58412u) || var_0, any(!vec3<bool>(var_0, false, false)))), var_0);
    let var_3 = 335f;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c.b.c));
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(721f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3))))) - _wgslsmith_f_op_f32(-822f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.x)) + _wgslsmith_f_op_f32(abs(1924f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 56735u), u_input.b.yx), 1u), vec2<i32>(_wgslsmith_sub_i32(reverseBits(-34160i), u_input.c), -37797i));
}

