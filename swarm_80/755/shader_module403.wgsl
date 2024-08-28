struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_2(4294967295u, -1155f, 2147483647i)), Struct_4(Struct_2(0u, 1619f, 2158i)), Struct_4(Struct_2(51903u, -1000f, 0i)), Struct_4(Struct_2(0u, -1184f, 13371i)), Struct_4(Struct_2(11115u, -1680f, -20637i)), Struct_4(Struct_2(1u, -2385f, -1562i)), Struct_4(Struct_2(116014u, 1000f, i32(-2147483648))), Struct_4(Struct_2(1u, -335f, i32(-2147483648))), Struct_4(Struct_2(4294967295u, -1008f, 1290i)), Struct_4(Struct_2(33529u, 318f, -9342i)), Struct_4(Struct_2(25173u, 1648f, 32138i)), Struct_4(Struct_2(33934u, -1474f, 0i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    let var_0 = u_input.c.zz;
    global1 = array<Struct_4, 12>();
    return 408f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(13518u, 12u)], vec3<f32>(-2965f, global0.a, global0.a)))), _wgslsmith_f_op_f32(716f - _wgslsmith_f_op_f32(min(788f, -2055f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a, -710f, 514f))) - vec3<f32>(global0.a, global0.a, 1084f)), vec3<f32>(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-870f - global0.a), _wgslsmith_f_op_f32(floor(1417f))))), ~reverseBits(~(0u >> (global0.b.x % 32u))), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(global0.b.x, 0u, 69343u, 3850u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u), reverseBits(vec4<u32>(0u, 15653u, 33221u, 25656u))), vec4<u32>(24266u, _wgslsmith_mult_u32(u_input.c.x, global0.b.x), u_input.a.x, u_input.b.x), ~vec4<u32>(1u, global0.b.x, global0.b.x, global0.b.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.b.x, u_input.a.x, 84662u), ~select(vec4<u32>(50617u, 0u, 4294967295u, 4294967295u), vec4<u32>(global0.b.x, 2639u, 27402u, 0u), vec4<bool>(true, true, false, true))));
    global0 = Struct_3(162f, vec2<u32>(4294967295u, global0.b.x), -1i);
    let var_1 = Struct_3(-700f, select(~vec2<u32>(~u_input.c.x, ~var_0.c.x), global0.b, vec2<bool>(true, true & any(vec4<bool>(false, true, false, true)))), max(global0.c, 2147483647i));
    let var_2 = !select(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, true)), !all(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), select(vec4<bool>(false, 1589f == global0.a, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, select(true, false, true), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))));
    global1 = array<Struct_4, 12>();
    return select(select(var_2.zzx, vec3<bool>(true, global0.a == 1471f, 57644i >= _wgslsmith_div_i32(global0.c, 1i)), select(var_2.xwz, var_2.yxz, var_2.x)), vec3<bool>(true, (0u & var_0.b) >= abs(var_1.b.x), true), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 12u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 964f, -1733f) + vec3<f32>(1000f, 751f, 733f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, -585f, var_0.a.b), vec3<f32>(var_0.a.b, 177f, -449f))), !vec3<bool>(arg_0.x, false, false))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-772f, var_0.a.b, var_0.a.b) - vec3<f32>(-213f, 1184f, var_0.a.b)))))), 12428u & (4294967295u & _wgslsmith_dot_vec3_u32(~u_input.c, ~u_input.b)), ~vec4<u32>(0u, ~4294967295u, var_0.a.a, firstTrailingBit(40476u)));
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(global0.a + -416f)))), 353f), _wgslsmith_add_vec2_u32(vec2<u32>(min(select(global0.b.x, 4294967295u, false), min(var_0.a.a, 4294967295u)), max(global0.b.x ^ 4294967295u, 925u)), _wgslsmith_mod_vec2_u32(select(min(var_1.c.xx, var_1.c.yy), vec2<u32>(11661u, 0u), !arg_3), ~global0.b | (global0.b >> (global0.b % vec2<u32>(32u))))), ~(~(i32(-1i) * -2147483647i)) & arg_1.x);
    let var_2 = 11554u;
    let var_3 = all(!vec4<bool>(arg_0.x, false, (arg_2.x < global0.c) && true, !arg_0.x));
    return Struct_4(Struct_2(~var_2, -880f, 0i));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + 1145f) - -1537f), _wgslsmith_f_op_f32(238f * 218f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 23704u, vec4<u32>(0u, _wgslsmith_mod_u32(abs(0u), abs(arg_0.x)), arg_0.x, arg_0.x) << (abs(abs(arg_0) ^ abs(vec4<u32>(u_input.c.x, 16546u, u_input.a.x, 1u))) % vec4<u32>(32u)));
    let var_1 = func_4(!select(!func_2(), !arg_1, true), _wgslsmith_div_vec2_i32(~(firstTrailingBit(vec2<i32>(41652i, arg_2.c)) << (arg_0.wz % vec2<u32>(32u))), -vec2<i32>(2147483647i, arg_2.c) & vec2<i32>(min(global0.c, -2147483647i), ~(-26496i))), ~(-max(-vec4<i32>(-569i, 0i, global0.c, -2147483647i), -vec4<i32>(-53081i, 12313i, 2147483647i, global0.c))), func_2().x);
    let var_2 = vec3<u32>(u_input.c.x, 44371u, 1u);
    let var_3 = func_4(vec3<bool>(func_2().x, true & (!arg_1.x | (arg_1.x || arg_1.x)), arg_1.x), vec2<i32>(2147483647i, -(i32(-1i) * -2147483647i)), -(~vec4<i32>(arg_2.c, -global0.c, -1i, arg_2.c)), true).a;
    global0 = Struct_3(-1336f, global0.b >> (~select(vec2<u32>(4294967295u, var_2.x) ^ vec2<u32>(var_1.a.a, var_2.x), select(vec2<u32>(0u, 28846u), vec2<u32>(arg_2.a, u_input.a.x), arg_1.yy), all(arg_1)) % vec2<u32>(32u)), _wgslsmith_mod_i32(var_3.c, var_3.c));
    return global0.c;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~min(vec4<u32>(4052u, 13283u, arg_3, global0.b.x), vec4<u32>(arg_2, 4294967295u, u_input.c.x, arg_3))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(6758u, u_input.c.x, 4294967295u, u_input.c.x), ~vec4<u32>(4294967295u, 1u, 57399u, 19826u), vec4<u32>(global0.b.x, arg_2, 0u, 1u) | vec4<u32>(global0.b.x, 0u, arg_1.a, 45820u)), select(vec4<u32>(arg_3, arg_2, 1u, 0u), ~vec4<u32>(global0.b.x, arg_2, 0u, u_input.a.x), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.b.x, 76787u, 10624u), vec4<u32>(u_input.a.x, 0u, u_input.c.x, 0u), vec4<u32>(6875u, 28082u, 1u, 7545u)), reverseBits(vec4<u32>(57294u, 0u, global0.b.x, 85583u)))), vec4<u32>(arg_3, ~4294967295u, arg_3, 0u), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.b.x, 0u, global0.b.x), vec4<u32>(arg_2, 4294967295u, u_input.a.x, 5743u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(35978u, 1u << (u_input.c.x % 32u), firstLeadingBit(u_input.c.x), ~u_input.b.x), ~(~vec4<u32>(u_input.a.x, 101020u, global0.b.x, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, arg_0, true), -vec2<i32>(17588i, 0i), -vec4<i32>(2147483647i, -10987i, -3120i, global0.c), arg_1.c != 50854i).a.b + _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(trunc(160f)))))));
    let var_2 = 0i;
    let var_3 = -57861i >= _wgslsmith_div_i32(reverseBits(~var_2), _wgslsmith_add_i32(select(i32(-1i) * -1i, -arg_1.c, true), max(var_2, reverseBits(arg_1.c))));
    let var_4 = Struct_3(global0.a, vec2<u32>(24223u, _wgslsmith_dot_vec3_u32(~vec3<u32>(6505u, 4294967295u, u_input.b.x), var_0.zwy)), 7744i);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 42492i;
    global1 = array<Struct_4, 12>();
    let var_1 = u_input.b;
    global1 = array<Struct_4, 12>();
    global0 = func_5(true, Struct_2(0u, global0.a, func_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 96429u, var_1.x, global0.b.x), vec4<u32>(global0.b.x, 1595u, global0.b.x, 15296u)), vec3<bool>(true, true, true), Struct_2(0u, -834f, -var_0))), firstLeadingBit(7264u), 4294967295u);
    var var_2 = u_input.b;
    let var_3 = func_4(select(vec3<bool>(true, true, true), !func_2(), vec3<bool>(false, !all(vec4<bool>(false, true, true, false)), true)), min(vec2<i32>(16896i, ~25339i), vec2<i32>(~(-var_0), ~(~67529i))), -countOneBits(select(vec4<i32>(-2147483647i, 0i, global0.c, 1i), vec4<i32>(global0.c, global0.c, var_0, var_0), false) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(19976u, var_2.x, u_input.c.x, 0u), vec4<u32>(global0.b.x, 0u, var_2.x, var_2.x)) % vec4<u32>(32u))), func_2().x);
    global1 = array<Struct_4, 12>();
    let var_4 = global1[_wgslsmith_index_u32(~(~9758u), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1036f, _wgslsmith_f_op_f32(max(-615f, -462f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a.b, var_4.a.b)))))), vec3<i32>(~var_3.a.c, global0.c, -((global0.c & 2147483647i) << (countOneBits(8147u) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_4.a.b), -940f, -202f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a, 779f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b, -1074f, global0.a) - vec3<f32>(-830f, -320f, 313f)))))), var_3.a.c, -2147483647i);
}

