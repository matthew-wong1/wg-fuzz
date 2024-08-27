struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(1u, 1u, Struct_1(vec2<bool>(false, false), true, 14142i), 14113i, Struct_1(vec2<bool>(false, false), true, 27287i)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(true, false), true, 12475i), Struct_1(vec2<bool>(true, true), true, -2077i), Struct_1(vec2<bool>(false, true), true, 37103i), Struct_1(vec2<bool>(false, true), true, 1i), Struct_1(vec2<bool>(false, false), false, 0i), Struct_1(vec2<bool>(true, false), true, -1i), Struct_1(vec2<bool>(false, false), true, 2147483647i), Struct_1(vec2<bool>(true, true), true, 2147483647i), Struct_1(vec2<bool>(false, true), true, -49406i), Struct_1(vec2<bool>(true, true), false, 0i), Struct_1(vec2<bool>(false, true), true, 0i), Struct_1(vec2<bool>(false, true), false, 2147483647i), Struct_1(vec2<bool>(false, true), false, -6932i), Struct_1(vec2<bool>(false, false), true, 43849i), Struct_1(vec2<bool>(false, true), false, -1i), Struct_1(vec2<bool>(false, false), true, -50818i), Struct_1(vec2<bool>(false, true), true, -1i), Struct_1(vec2<bool>(true, true), true, 60142i), Struct_1(vec2<bool>(true, true), true, 0i), Struct_1(vec2<bool>(false, true), false, 3906i), Struct_1(vec2<bool>(false, true), false, 16030i), Struct_1(vec2<bool>(false, true), true, 2147483647i), Struct_1(vec2<bool>(true, false), true, i32(-2147483648)), Struct_1(vec2<bool>(false, false), false, 32239i), Struct_1(vec2<bool>(true, false), true, 576i), Struct_1(vec2<bool>(false, true), true, -10698i), Struct_1(vec2<bool>(true, false), true, i32(-2147483648)), Struct_1(vec2<bool>(false, false), true, 2147483647i), Struct_1(vec2<bool>(false, false), true, -15215i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_3(global0.a);
    global2 = array<Struct_1, 29>();
    global1 = array<Struct_2, 1>();
    let var_0 = global0.a.c.a;
    var var_1 = vec4<bool>(~(~_wgslsmith_mod_i32(global0.a.c.c, u_input.c.x)) > -2147483647i, !global0.a.e.b | true, all(select(global0.a.c.a, global0.a.e.a, select(vec2<bool>(true, false), !global0.a.c.a, select(vec2<bool>(true, global0.a.e.b), vec2<bool>(false, false), true)))), ~u_input.c.x > ~(-431i));
    return select(var_1.xyw, vec3<bool>(var_1.x, false, global0.a.e.a.x), select(var_1.xwz, var_1.xyx, false));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_5(global0.a, Struct_4(~vec3<u32>(0u, 0u, _wgslsmith_div_u32(4294967295u, 3143u)), Struct_1(!select(global0.a.e.a, vec2<bool>(global0.a.c.a.x, global0.a.e.a.x), global0.a.c.a.x), true, -2147483647i), global0.a, countOneBits(u_input.c.xx), !select(vec3<bool>(global0.a.e.a.x, false, global0.a.e.a.x), vec3<bool>(global0.a.c.b, global0.a.e.a.x, global0.a.e.b), all(vec3<bool>(global0.a.e.a.x, false, global0.a.c.b)))), global0.a.c, Struct_2(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), max(1u, abs(4294967295u)), Struct_1(vec2<bool>(global0.a.e.a.x, all(vec3<bool>(false, false, true))), !global0.a.c.a.x, -19858i), u_input.c.x, global0.a.c), Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a), Struct_1(!select(global0.a.e.a, global0.a.e.a, global0.a.e.a.x), true, 14904i), global1[_wgslsmith_index_u32(50346u, 1u)], u_input.c.yy, !select(select(vec3<bool>(global0.a.e.a.x, global0.a.c.a.x, global0.a.c.a.x), vec3<bool>(global0.a.c.a.x, global0.a.c.b, global0.a.c.b), vec3<bool>(false, global0.a.c.b, true)), func_3(), all(vec4<bool>(global0.a.e.a.x, true, global0.a.e.b, true)))));
    var_0 = Struct_5(var_0.d, var_0.b, global0.a.e, Struct_2(0u, ~(~47833u), global0.a.c, _wgslsmith_mod_i32(~(~2147483647i), var_0.e.d.x), Struct_1(!func_3().xy, global0.a.e.a.x, _wgslsmith_div_i32(u_input.c.x, var_0.d.e.c))), Struct_4(~vec3<u32>(u_input.a.x, abs(global0.a.a), ~52096u), global0.a.c, var_0.d, vec2<i32>(1i, u_input.c.x), !(!select(vec3<bool>(var_0.d.e.a.x, false, var_0.d.e.b), vec3<bool>(var_0.b.b.a.x, var_0.b.b.b, global0.a.c.b), vec3<bool>(var_0.e.e.x, false, var_0.b.e.x)))));
    global2 = array<Struct_1, 29>();
    global1 = array<Struct_2, 1>();
    var var_1 = !(!vec4<bool>(any(vec3<bool>(global0.a.c.a.x, var_0.a.c.a.x, global0.a.e.b)) && any(var_0.e.e.xz), true, false, select(var_0.d.c.a.x, var_0.a.e.b & true, any(var_0.e.e))));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1407f - -255f), 910f), -1157f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1605f, -344f, -252f), vec3<f32>(682f, 1183f, -2337f), vec3<bool>(global0.a.e.b, global0.a.e.a.x, true))) + _wgslsmith_div_vec3_f32(vec3<f32>(712f, -1197f, 247f), vec3<f32>(170f, -310f, -775f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-677f, 154f, -527f) + vec3<f32>(134f, 373f, -2095f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(593f, 1482f, -212f)), vec3<f32>(671f, 151f, 221f), global0.a.e.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1789f), _wgslsmith_f_op_f32(-1429f - 552f), _wgslsmith_f_op_f32(f32(-1f) * -1670f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -286f, -580f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1581f, 709f) * vec3<f32>(375f, -324f, 1076f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 2413f, 1315f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -1016f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)) * _wgslsmith_f_op_f32(-var_0.x)));
    var var_1 = func_3();
    let var_2 = Struct_4(~vec3<u32>(4294967295u, global0.a.b, 23951u), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, ~1u), 29u)], global0.a, u_input.c.yy, !(!vec3<bool>(var_1.x || true, all(vec4<bool>(false, true, global0.a.e.a.x, global0.a.e.b)), all(vec2<bool>(true, false)))));
    return global2[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(u_input.a.x | u_input.a.x))), 29u)];
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    global0 = Struct_3(Struct_2(~(u_input.a.x | firstTrailingBit(arg_0.b.c.b)), 4294967295u, Struct_1(vec2<bool>(select(arg_0.e.c.c.a.x, arg_0.a.e.a.x, arg_0.b.b.a.x), true), func_3().x & !arg_0.c.b, 2147483647i), -1i, global2[_wgslsmith_index_u32(0u, 29u)]));
    let var_0 = _wgslsmith_f_op_f32(350f * -421f);
    let var_1 = -1051f;
    var var_2 = !(firstLeadingBit(10895i) <= -global0.a.c.c);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(min(reverseBits(u_input.a), vec3<u32>(global0.a.a, ~1u, 1u)) | ~(u_input.a << (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), Struct_1(!vec2<bool>(global0.a.c.b, global0.a.e.b), global0.a.e.b, u_input.b), Struct_2(u_input.a.x, ~firstLeadingBit(19482u), func_4(Struct_5(Struct_2(u_input.a.x, global0.a.a, Struct_1(global0.a.c.a, global0.a.c.a.x, global0.a.d), -24371i, global2[_wgslsmith_index_u32(12274u, 29u)]), Struct_4(vec3<u32>(21983u, u_input.a.x, 4294967295u), Struct_1(vec2<bool>(false, true), global0.a.e.b, u_input.b), Struct_2(92u, u_input.a.x, global2[_wgslsmith_index_u32(global0.a.b, 29u)], 1i, Struct_1(vec2<bool>(false, true), false, u_input.b)), u_input.c.yz, vec3<bool>(global0.a.c.b, global0.a.c.b, true)), func_1(), Struct_2(u_input.a.x, global0.a.a, Struct_1(global0.a.e.a, true, u_input.c.x), -2147483647i, Struct_1(global0.a.e.a, global0.a.e.b, u_input.b)), Struct_4(vec3<u32>(u_input.a.x, u_input.a.x, 11998u), Struct_1(global0.a.e.a, global0.a.c.b, u_input.b), global1[_wgslsmith_index_u32(1u, 1u)], u_input.c.xy, vec3<bool>(global0.a.e.a.x, false, true)))), global0.a.d, func_4(Struct_5(global0.a, Struct_4(vec3<u32>(4294967295u, u_input.a.x, global0.a.b), Struct_1(vec2<bool>(global0.a.e.b, true), true, -1i), global0.a, u_input.c.zx, vec3<bool>(global0.a.c.b, true, global0.a.c.b)), global0.a.e, Struct_2(4294967295u, global0.a.b, Struct_1(global0.a.c.a, false, u_input.c.x), global0.a.d, global0.a.c), Struct_4(vec3<u32>(0u, 28777u, u_input.a.x), Struct_1(vec2<bool>(true, true), false, global0.a.d), Struct_2(87474u, 1u, Struct_1(vec2<bool>(global0.a.c.a.x, true), true, 0i), 28626i, global0.a.e), vec2<i32>(1i, global0.a.c.c), vec3<bool>(global0.a.e.b, true, global0.a.e.a.x))))), -countOneBits(min(vec2<i32>(-37471i, u_input.c.x), firstTrailingBit(vec2<i32>(58722i, global0.a.c.c)))), !(!func_3()));
    let var_1 = 57034u;
    let var_2 = select(vec2<bool>(!var_0.c.c.a.x, true), func_1().a, true);
    let var_3 = Struct_5(Struct_2(var_1, ~(~abs(15974u)), global2[_wgslsmith_index_u32(abs(~4294967295u), 29u)], _wgslsmith_sub_i32(0i, global0.a.d & -var_0.c.c.c), func_4(Struct_5(global1[_wgslsmith_index_u32(global0.a.b, 1u)], Struct_4(u_input.a, var_0.c.e, Struct_2(var_0.a.x, var_0.c.b, global0.a.e, var_0.d.x, global2[_wgslsmith_index_u32(var_0.c.a, 29u)]), vec2<i32>(9491i, 36542i), vec3<bool>(global0.a.c.b, var_0.b.b, false)), Struct_1(var_2, true, u_input.c.x), Struct_2(4294967295u, var_1, global0.a.c, 1i, Struct_1(vec2<bool>(false, var_0.b.a.x), global0.a.c.a.x, global0.a.e.c)), Struct_4(u_input.a, global0.a.c, Struct_2(var_0.a.x, 8393u, global2[_wgslsmith_index_u32(0u, 29u)], 2147483647i, global2[_wgslsmith_index_u32(var_0.c.a, 29u)]), vec2<i32>(53698i, var_0.b.c), var_0.e)))), Struct_4(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, var_0.a.x, 22912u), vec4<u32>(4294967295u, u_input.a.x, var_0.c.b, u_input.a.x)), (var_1 << (0u % 32u)) << (~u_input.a.x % 32u), 7208u), global2[_wgslsmith_index_u32(1u, 29u)], var_0.c, min(vec2<i32>(1i, _wgslsmith_mult_i32(global0.a.e.c, 26503i)), vec2<i32>(countOneBits(-2667i), global0.a.c.c)), !(!vec3<bool>(false, var_0.b.a.x, true))), func_4(Struct_5(global0.a, Struct_4(vec3<u32>(95108u, 38542u, 4294967295u), var_0.b, Struct_2(1u, 64989u, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 2147483647i, global0.a.e), min(vec2<i32>(global0.a.e.c, 32210i), vec2<i32>(-4983i, var_0.b.c)), !var_0.e), global0.a.c, var_0.c, Struct_4(vec3<u32>(56023u, global0.a.a, 2528u), global2[_wgslsmith_index_u32(~1u, 29u)], global0.a, -u_input.c.yx, var_0.e))), Struct_2(~1u << (select(4294967295u, var_0.c.b, true) % 32u), var_1, Struct_1(global0.a.e.a, all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b, 3329i, 1i, u_input.b)), ~vec4<i32>(global0.a.c.c, u_input.b, global0.a.e.c, u_input.b))), var_0.d.x, var_0.b), Struct_4(select(~(var_0.a & u_input.a), vec3<u32>(var_1, 1u, u_input.a.x), var_0.e), global0.a.e, Struct_2(global0.a.a, ~(~1u), func_4(Struct_5(Struct_2(u_input.a.x, 10255u, global2[_wgslsmith_index_u32(var_1, 29u)], 32829i, Struct_1(global0.a.e.a, var_0.e.x, 2147483647i)), Struct_4(vec3<u32>(1u, var_0.c.a, 4294967295u), var_0.c.e, global0.a, vec2<i32>(18447i, var_0.b.c), vec3<bool>(true, false, true)), Struct_1(var_2, global0.a.c.a.x, global0.a.d), global0.a, Struct_4(u_input.a, Struct_1(var_2, global0.a.c.b, 19116i), global0.a, vec2<i32>(13288i, -26247i), vec3<bool>(var_0.b.a.x, var_2.x, false)))), global0.a.d, Struct_1(var_2, false, -20801i)), u_input.c.zy, select(var_0.e, vec3<bool>(true, func_4(Struct_5(Struct_2(global0.a.a, u_input.a.x, var_0.b, var_0.d.x, global0.a.e), Struct_4(vec3<u32>(4294967295u, var_1, 78253u), Struct_1(vec2<bool>(false, true), true, -2147483647i), var_0.c, u_input.c.xx, vec3<bool>(false, false, true)), global2[_wgslsmith_index_u32(global0.a.b, 29u)], Struct_2(var_0.c.b, 2405u, Struct_1(vec2<bool>(global0.a.c.b, global0.a.c.a.x), global0.a.c.a.x, global0.a.e.c), u_input.c.x, global0.a.e), Struct_4(vec3<u32>(var_1, 0u, u_input.a.x), global2[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.c, vec2<i32>(-2147483647i, -2147483647i), vec3<bool>(var_0.e.x, var_0.b.b, var_0.e.x)))).a.x, var_2.x), select(vec3<bool>(true, var_0.b.a.x, global0.a.c.a.x), select(vec3<bool>(var_2.x, global0.a.e.b, true), vec3<bool>(true, false, var_0.b.b), false), var_0.e))));
    let var_4 = Struct_3(var_3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1164f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f + -1240f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(145f - -1936f), 379f)))), 54452i, firstLeadingBit(4294967295u));
}

