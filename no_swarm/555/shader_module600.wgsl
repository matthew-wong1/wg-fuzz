struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(-18419i, true), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec2<f32>(-1247f, 602f), vec2<bool>(true, true), Struct_1(-1i, true)), Struct_2(Struct_1(0i, false), vec4<u32>(2598u, 1u, 36247u, 4294967295u), vec2<f32>(669f, 267f), vec2<bool>(true, true), Struct_1(1i, false)), Struct_2(Struct_1(i32(-2147483648), false), vec4<u32>(1u, 0u, 38851u, 3791u), vec2<f32>(-724f, -1000f), vec2<bool>(false, false), Struct_1(53361i, false)), Struct_2(Struct_1(1i, false), vec4<u32>(73598u, 0u, 35790u, 4294967295u), vec2<f32>(-352f, 553f), vec2<bool>(true, false), Struct_1(0i, true)), Struct_2(Struct_1(40670i, true), vec4<u32>(69497u, 43333u, 0u, 17258u), vec2<f32>(800f, -1000f), vec2<bool>(true, false), Struct_1(1i, false)), Struct_2(Struct_1(15910i, true), vec4<u32>(1u, 4294967295u, 0u, 69684u), vec2<f32>(2111f, 942f), vec2<bool>(false, false), Struct_1(9879i, false)), Struct_2(Struct_1(-14354i, true), vec4<u32>(1u, 42386u, 4294967295u, 38810u), vec2<f32>(1274f, 476f), vec2<bool>(true, false), Struct_1(-24106i, true)), Struct_2(Struct_1(-1i, false), vec4<u32>(81443u, 0u, 0u, 56544u), vec2<f32>(954f, -314f), vec2<bool>(true, true), Struct_1(-65213i, true)), Struct_2(Struct_1(-10303i, true), vec4<u32>(4294967295u, 0u, 1u, 42107u), vec2<f32>(888f, 252f), vec2<bool>(true, false), Struct_1(2147483647i, true)), Struct_2(Struct_1(i32(-2147483648), true), vec4<u32>(1u, 0u, 4294967295u, 1u), vec2<f32>(-1000f, 1137f), vec2<bool>(false, true), Struct_1(0i, true)), Struct_2(Struct_1(i32(-2147483648), false), vec4<u32>(0u, 52200u, 13056u, 4294967295u), vec2<f32>(2019f, 333f), vec2<bool>(false, true), Struct_1(2147483647i, true)), Struct_2(Struct_1(0i, false), vec4<u32>(1u, 1u, 48078u, 0u), vec2<f32>(497f, -451f), vec2<bool>(false, false), Struct_1(0i, true)), Struct_2(Struct_1(i32(-2147483648), false), vec4<u32>(19237u, 7560u, 0u, 4294967295u), vec2<f32>(-425f, 746f), vec2<bool>(true, false), Struct_1(-10195i, true)), Struct_2(Struct_1(10522i, true), vec4<u32>(4294967295u, 23545u, 4294967295u, 4148u), vec2<f32>(261f, 215f), vec2<bool>(true, true), Struct_1(0i, false)), Struct_2(Struct_1(13666i, false), vec4<u32>(91365u, 1u, 7498u, 0u), vec2<f32>(509f, -243f), vec2<bool>(true, false), Struct_1(1761i, false)), Struct_2(Struct_1(i32(-2147483648), false), vec4<u32>(35752u, 1u, 24661u, 0u), vec2<f32>(-1001f, 136f), vec2<bool>(true, true), Struct_1(-67326i, true)), Struct_2(Struct_1(-862i, true), vec4<u32>(24360u, 41584u, 4294967295u, 4294967295u), vec2<f32>(1009f, 286f), vec2<bool>(false, false), Struct_1(1i, true)), Struct_2(Struct_1(-20893i, true), vec4<u32>(1u, 74192u, 18649u, 4294967295u), vec2<f32>(493f, -322f), vec2<bool>(true, false), Struct_1(2147483647i, false)), Struct_2(Struct_1(2147483647i, true), vec4<u32>(1u, 0u, 0u, 31652u), vec2<f32>(-619f, 1826f), vec2<bool>(false, false), Struct_1(-27618i, false)), Struct_2(Struct_1(1i, true), vec4<u32>(1u, 0u, 0u, 4877u), vec2<f32>(-2398f, -1121f), vec2<bool>(false, true), Struct_1(-24466i, true)), Struct_2(Struct_1(9931i, true), vec4<u32>(63561u, 801u, 79830u, 50477u), vec2<f32>(-1000f, -759f), vec2<bool>(true, true), Struct_1(-1i, false)), Struct_2(Struct_1(1i, true), vec4<u32>(49751u, 1u, 4294967295u, 0u), vec2<f32>(-1119f, -604f), vec2<bool>(true, false), Struct_1(26748i, true)), Struct_2(Struct_1(1i, true), vec4<u32>(0u, 0u, 52729u, 1u), vec2<f32>(1994f, 1511f), vec2<bool>(true, false), Struct_1(0i, true)), Struct_2(Struct_1(47728i, true), vec4<u32>(1u, 51840u, 19850u, 141771u), vec2<f32>(-155f, 684f), vec2<bool>(true, false), Struct_1(52870i, true)), Struct_2(Struct_1(29851i, false), vec4<u32>(16684u, 25403u, 1u, 1u), vec2<f32>(1000f, 2368f), vec2<bool>(true, true), Struct_1(i32(-2147483648), false)), Struct_2(Struct_1(-12478i, false), vec4<u32>(4294967295u, 1u, 0u, 0u), vec2<f32>(2769f, -1588f), vec2<bool>(false, false), Struct_1(i32(-2147483648), true)), Struct_2(Struct_1(0i, false), vec4<u32>(1u, 67565u, 32220u, 0u), vec2<f32>(-930f, 372f), vec2<bool>(true, false), Struct_1(2147483647i, false)), Struct_2(Struct_1(2147483647i, true), vec4<u32>(0u, 74256u, 59720u, 1u), vec2<f32>(-138f, -603f), vec2<bool>(false, true), Struct_1(23565i, false)), Struct_2(Struct_1(39377i, false), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec2<f32>(507f, 1475f), vec2<bool>(false, true), Struct_1(2147483647i, true)));

var<private> global1: array<f32, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec2<bool> {
    global1 = array<f32, 12>();
    global0 = array<Struct_2, 29>();
    global1 = array<f32, 12>();
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return vec2<bool>(!(-154f > _wgslsmith_f_op_f32(1000f * arg_2.c.x)) || true, arg_2.a.b);
}

fn func_3() -> vec4<bool> {
    global1 = array<f32, 12>();
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_2(Struct_1(0i, true), ~(~u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 770f), vec2<f32>(global1[_wgslsmith_index_u32(92811u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])))) - vec2<f32>(_wgslsmith_f_op_f32(-626f + global1[_wgslsmith_index_u32(0u, 12u)]), global1[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(864f, 1710f)), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(63876u, 12u)], 1553f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(57481u, 12u)]))))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(-23552i, func_2(~(~u_input.c.x), ~reverseBits(84571u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, reverseBits(0u)), 29u)]).x));
    global1 = array<f32, 12>();
    let var_1 = var_0.e.b || true;
    return vec4<bool>(any(select(func_2(1u, 49515u << (var_0.b.x % 32u), Struct_2(var_0.a, vec4<u32>(var_0.b.x, 4294967295u, 66860u, var_0.b.x), var_0.c, var_0.d, Struct_1(var_0.e.a, var_1))), vec2<bool>(var_0.e.b, select(false, var_1, true)), all(!var_0.d))), true != select(true, all(var_0.d), (u_input.c.x >= u_input.b.x) & all(vec4<bool>(false, false, var_1, var_0.d.x))), all(vec3<bool>(var_0.a.b, var_0.d.x | false, var_1)) && ((_wgslsmith_f_op_f32(f32(-1f) * -860f) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 12u)])) && (!var_1 || !var_0.d.x)), var_0.a.b);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = true && any(vec3<bool>(true, !any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), true & (-1000f > global1[_wgslsmith_index_u32(0u, 12u)])));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, arg_0.a, arg_0.a, -2147483647i), vec4<i32>(2147483647i, 1831i, arg_0.a, arg_0.a) >> (vec4<u32>(37225u, u_input.b.x, 1u, u_input.a.x) % vec4<u32>(32u))), true), u_input.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, -660f) + vec2<f32>(250f, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(36089u, 12u)], -141f) * vec2<f32>(854f, -269f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])))))), !(!(!func_2(1u, 57130u, Struct_2(Struct_1(29090i, arg_0.b), u_input.a, vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 1001f), vec2<bool>(arg_0.b, true), arg_0)))), Struct_1(countOneBits(~(-20014i)), all(select(vec4<bool>(false, false, var_0, false), func_3(), vec4<bool>(arg_0.b, arg_0.b, var_0, arg_0.b)))));
    var var_2 = ~(~(~(vec4<i32>(-14591i, -1365i, arg_0.a, arg_0.a) ^ vec4<i32>(24378i, -2147483647i, var_1.e.a, var_1.e.a)) >> (~(~vec4<u32>(u_input.b.x, 0u, u_input.c.x, u_input.b.x)) % vec4<u32>(32u))));
    let var_3 = abs(max(-(~max(var_1.e.a, 9355i)), 1i));
    return global0[_wgslsmith_index_u32(34401u, 29u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(1300f + _wgslsmith_f_op_f32(arg_3.c.x * -1167f));
    var var_1 = !vec4<bool>(true, true, all(!(!vec3<bool>(arg_2.d.x, arg_2.e.b, false))), arg_2.e.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1478f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.c.x)))));
    var var_3 = arg_2;
    var var_4 = vec4<i32>(-(~min(arg_1.x, abs(2147483647i))), func_1(Struct_1(_wgslsmith_sub_i32(-arg_1.x, arg_2.e.a | 6571i), all(var_1.zzx))).e.a, 1886i ^ max(abs(~arg_1.x), -75477i), arg_3.a.a);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_3.b.x, 12u)]))), _wgslsmith_f_op_f32(-589f * _wgslsmith_f_op_f32(sign(arg_0.x))), !var_1.x)), arg_2.c.x, -687f), reverseBits(var_4.x), vec4<u32>(arg_2.b.x, arg_3.b.x, 1u, arg_2.b.x & arg_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(32391u, u_input.b.x), 12u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1705f, 616f, 1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, -1000f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-13150i, -2147483647i, -1i, 50675i), vec4<i32>(-36618i, -2147483647i, -1i, 2147483647i), vec4<bool>(false, true, true, true)), vec4<i32>(-13212i, 1i, -1i, -27001i)), -20821i), -(~_wgslsmith_mod_i32(0i, -2147483647i)), -19519i), func_1(Struct_1(-20470i, !any(vec4<bool>(true, false, false, false)))), func_1(Struct_1(countOneBits(abs(35097i)), any(vec4<bool>(true, true, true, true)))));
    let var_1 = -2431f;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1202f, -546f, _wgslsmith_f_op_f32(sign(-936f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], var_1))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))))));
    let var_3 = vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, ~var_0.c.x)) >> (~func_4(vec3<f32>(-1145f, 522f, var_1), reverseBits(vec3<i32>(var_0.b, var_0.b, -463i)), func_1(Struct_1(28738i, true)), global0[_wgslsmith_index_u32(u_input.c.x ^ 4294967295u, 29u)]).c.x % 32u), u_input.a.x, 1u, abs(u_input.c.x));
    let var_4 = -149f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~1u, reverseBits(60698u) & func_4(var_2, vec3<i32>(var_0.b, var_0.b, 2147483647i), Struct_2(Struct_1(var_0.b, true), vec4<u32>(16116u, var_3.x, 4294967295u, var_3.x), var_2.yz, vec2<bool>(true, false), Struct_1(var_0.b, false)), Struct_2(Struct_1(var_0.b, false), vec4<u32>(var_0.c.x, u_input.a.x, u_input.a.x, 29417u), vec2<f32>(var_1, 301f), vec2<bool>(true, true), Struct_1(-18182i, true))).c.x, ~_wgslsmith_div_u32(var_0.c.x, 1u)), ~u_input.a), var_0.b);
}

