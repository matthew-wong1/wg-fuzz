struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = _wgslsmith_mult_vec3_u32(~u_input.b.yyw, vec3<u32>(~(~4294967295u), u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u)));
    global0 = array<i32, 5>();
    let var_1 = u_input.b.wzz;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(sign(-326f)))));
}

fn func_2() -> f32 {
    var var_0 = 1u;
    var var_1 = -786i;
    let var_2 = Struct_1(1359f, _wgslsmith_f_op_f32(func_3()));
    let var_3 = reverseBits(u_input.a << (firstTrailingBit(u_input.b.x) % 32u));
    let var_4 = !vec3<bool>(true, !(!any(vec2<bool>(true, true))), true);
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = 1427f;
    var_0 = arg_0;
    global0 = array<i32, 5>();
    var var_2 = Struct_1(2194f, _wgslsmith_f_op_f32(func_2()));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b, arg_0.b.a, -2007f, var_2.b) * vec4<f32>(849f, 512f, -2907f, var_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(870f, 1000f, _wgslsmith_f_op_f32(arg_0.b.b + 1477f), _wgslsmith_div_f32(var_0.c.a, 915f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1115f, -518f, arg_1.e.a, var_0.b.a)))))), Struct_2(reverseBits(~_wgslsmith_mult_i32(9150i, 1i)), var_0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.a, 241f, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f * _wgslsmith_f_op_f32(f32(-1f) * -562f)) + -1428f), Struct_1(_wgslsmith_f_op_f32(-var_0.c.b), var_2.a)), -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a, var_0.d.a, var_2.b, 914f))) - vec4<f32>(_wgslsmith_div_f32(899f, _wgslsmith_f_op_f32(-arg_0.d.b)), -1948f, 342f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), 224f))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = select(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(true, true, true))), !vec4<bool>(false, !(-1i < global0[_wgslsmith_index_u32(arg_2.x, 5u)]), true, true), true);
    let var_1 = reverseBits(_wgslsmith_add_i32(i32(-1i) * -1i, arg_0.b.a) ^ _wgslsmith_add_i32(u_input.a & ~(-2147483647i), -31738i));
    global0 = array<i32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(arg_1, arg_0.b.c.b)))));
    let var_3 = -52707i;
    return func_1(Struct_4(false, arg_0.b.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_0.a.x, arg_1, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(451f + -1000f), -131f), arg_0.d.x)), Struct_2(-_wgslsmith_sub_i32(-var_1, countOneBits(global0[_wgslsmith_index_u32(4294967295u, 5u)])), arg_0.b.c, Struct_1(arg_0.b.c.b, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x)))), func_1(Struct_4(false, Struct_1(arg_1, -895f), func_1(Struct_4(var_0.x, Struct_1(254f, -819f), arg_0.b.e, arg_0.b.e), arg_0.b).b.b, func_1(Struct_4(var_0.x, Struct_1(-103f, -752f), Struct_1(arg_1, arg_0.c), Struct_1(arg_0.d.x, arg_0.d.x)), arg_0.b).b.b), Struct_2(var_1, Struct_1(arg_0.c, arg_1), arg_0.b.c, 282f, func_1(Struct_4(true, Struct_1(-482f, var_2.x), arg_0.b.b, arg_0.b.c), Struct_2(-79670i, arg_0.b.e, arg_0.b.c, var_2.x, Struct_1(var_2.x, var_2.x))).b.c)).b.e));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = arg_0.b;
    var var_1 = Struct_4(any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), arg_0.d.x), arg_0.b.b, func_1(Struct_4(true & select(true, false, false), arg_0.b.e, var_0.e, arg_0.b.e), func_1(Struct_4(true, func_4(Struct_3(arg_0.a, Struct_2(1i, var_0.c, arg_0.b.e, -678f, arg_0.b.c), var_0.c.b, arg_0.d), -1598f, vec4<u32>(u_input.b.x, u_input.b.x, arg_1, arg_1)).b.c, arg_0.b.b, var_0.b), Struct_2(var_0.a, Struct_1(856f, -611f), Struct_1(var_0.e.a, -1817f), arg_0.d.x, Struct_1(-1664f, var_0.e.b))).b).b.e);
    global0 = array<i32, 5>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0.d);
    global0 = array<i32, 5>();
    return arg_0.b;
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(any(select(vec3<bool>(arg_2.a >= arg_3.b.b, arg_1 || true, arg_1), !vec3<bool>(arg_1, false, true), arg_1 & any(vec2<bool>(true, arg_1)))), Struct_1(545f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.c.b * _wgslsmith_f_op_f32(arg_2.b + 216f))))), func_5(func_1(Struct_4(arg_1 & true, arg_2, arg_3.b, arg_3.e), arg_3), u_input.b.x).c, arg_2);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), 331f);
    var var_2 = 1i;
    var var_3 = all(vec4<bool>(all(!vec4<bool>(true, false, arg_1, true)), u_input.b.x < u_input.b.x, arg_1 == (_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(23441u, 5u)], arg_0.x), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)])) < (global0[_wgslsmith_index_u32(u_input.b.x, 5u)] & 0i)), arg_1 || (abs(2147483647i) <= arg_0.x)));
    var_2 = firstTrailingBit(-3323i | _wgslsmith_clamp_i32(arg_3.a, ~22964i, ~(u_input.a | 1i)));
    return Struct_1(var_0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + arg_3.d) + _wgslsmith_f_op_f32(-var_0.b.b)) + 1198f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    var var_0 = Struct_4(!all(vec4<bool>(all(vec3<bool>(false, true, false)), false, true, true)), func_6(-select(vec2<i32>(global0[_wgslsmith_index_u32(0u, 5u)], 2147483647i), ~vec2<i32>(u_input.a, u_input.a), true), true, Struct_1(658f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1514f * 853f)))), func_5(func_4(func_1(Struct_4(false, Struct_1(190f, 1445f), Struct_1(-910f, 541f), Struct_1(464f, -892f)), Struct_2(global0[_wgslsmith_index_u32(0u, 5u)], Struct_1(314f, 620f), Struct_1(-190f, 1205f), -408f, Struct_1(329f, 311f))), _wgslsmith_f_op_f32(max(-1434f, -1000f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, 21126u, 53551u), vec4<u32>(4294967295u, 0u, 69127u, u_input.b.x))), u_input.b.x)), func_4(func_1(Struct_4(false, func_6(vec2<i32>(6351i, -2147483647i), true, Struct_1(437f, 1000f), Struct_2(-36981i, Struct_1(767f, -1278f), Struct_1(-988f, -257f), 635f, Struct_1(-571f, 2451f))), func_1(Struct_4(false, Struct_1(-1000f, 571f), Struct_1(-1221f, -596f), Struct_1(204f, -774f)), Struct_2(u_input.a, Struct_1(-1436f, -267f), Struct_1(738f, -214f), -1368f, Struct_1(678f, -938f))).b.c, Struct_1(288f, -2086f)), Struct_2(-global0[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_1(1090f, -714f), func_1(Struct_4(false, Struct_1(-127f, -1000f), Struct_1(-765f, -134f), Struct_1(2050f, -225f)), Struct_2(-62634i, Struct_1(529f, 291f), Struct_1(1349f, -385f), -938f, Struct_1(1327f, 206f))).b.c, -1436f, func_4(Struct_3(vec4<f32>(-101f, 350f, 731f, 191f), Struct_2(global0[_wgslsmith_index_u32(38899u, 5u)], Struct_1(-1000f, 1000f), Struct_1(1914f, -892f), -1286f, Struct_1(446f, -1000f)), 365f, vec4<f32>(-580f, 139f, 455f, -1441f)), 1363f, u_input.b).b.e)), 1361f, u_input.b).b.c, func_4(func_1(Struct_4(false, func_5(Struct_3(vec4<f32>(-596f, -1445f, -1037f, 1659f), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_1(-763f, 385f), Struct_1(316f, 1000f), 1051f, Struct_1(1140f, -340f)), 475f, vec4<f32>(-703f, 666f, 745f, 1829f)), 1u).b, Struct_1(2129f, -994f), Struct_1(-911f, -1069f)), func_1(Struct_4(true, Struct_1(726f, 1154f), Struct_1(-1000f, 349f), Struct_1(1520f, 1169f)), func_1(Struct_4(false, Struct_1(866f, -1000f), Struct_1(160f, 368f), Struct_1(451f, -646f)), Struct_2(-1i, Struct_1(-1153f, -742f), Struct_1(1203f, 548f), 573f, Struct_1(-562f, 1000f))).b).b), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 53344u, 3793u, 32662u), u_input.b), select(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x), reverseBits(u_input.b), all(vec2<bool>(false, true))))).b.c);
    let var_1 = 41522i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(-729f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.b.b)), var_0.c.b)));
    var_0 = Struct_4(false || any(select(!vec2<bool>(var_0.a, false), !vec2<bool>(false, var_0.a), !var_0.a)), var_0.b, func_4(func_1(Struct_4(select(var_0.a, var_0.a, false), Struct_1(282f, var_2.b), var_0.b, func_4(Struct_3(vec4<f32>(-1648f, 1000f, var_0.d.b, 394f), Struct_2(u_input.a, var_0.c, Struct_1(var_2.a, var_2.b), var_2.a, var_0.b), var_2.a, vec4<f32>(-631f, var_2.b, var_0.c.b, -1000f)), -1688f, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 172133u)).b.c), Struct_2(1i, Struct_1(var_2.b, 1251f), func_4(Struct_3(vec4<f32>(var_0.d.a, -1000f, var_0.c.a, var_2.b), Struct_2(1i, Struct_1(var_0.d.b, var_0.b.a), var_0.d, -937f, Struct_1(185f, -795f)), var_2.a, vec4<f32>(var_0.c.a, var_2.b, 1186f, var_0.d.a)), var_2.b, u_input.b).b.e, -1151f, func_4(Struct_3(vec4<f32>(-1247f, var_0.b.a, -478f, var_0.c.a), Struct_2(var_1, Struct_1(var_0.b.a, var_2.a), var_0.c, -1186f, Struct_1(-211f, var_0.c.a)), 1609f, vec4<f32>(var_0.d.b, 366f, var_0.d.a, -696f)), var_0.b.a, u_input.b).b.e)), func_4(func_4(func_1(Struct_4(false, Struct_1(var_2.a, var_0.c.b), var_0.c, var_0.c), Struct_2(-6009i, Struct_1(-487f, var_2.a), Struct_1(var_2.b, -1723f), 1036f, Struct_1(var_2.b, var_2.a))), _wgslsmith_f_op_f32(sign(878f)), abs(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-var_2.a)), u_input.b).d.x, u_input.b).b.c, var_0.c);
    let var_3 = _wgslsmith_f_op_f32(-var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, 1u)), 13787u), ~(u_input.b.x & u_input.b.x)), u_input.b.x), 28277i, vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 5u)], 32466i) & _wgslsmith_mult_i32(~(-1826i), var_1), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.a), vec2<i32>(28515i, var_1)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_1, global0[_wgslsmith_index_u32(0u, 5u)])), vec2<i32>(u_input.a, 83889i)))), vec4<i32>(u_input.a, _wgslsmith_sub_i32(-19589i, global0[_wgslsmith_index_u32(0u, 5u)]) >> (1u % 32u), select(u_input.a, -41371i, var_0.a), u_input.a) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(-33176i, u_input.a, var_1, -54407i) & vec4<i32>(-22176i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], var_1), countOneBits(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(13185u, 5u)], -31762i, -67916i))), u_input.b >> (_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (u_input.b % vec4<u32>(32u))), vec4<u32>(1u, ~0u, firstLeadingBit(u_input.b.x), ~u_input.b.x), vec4<u32>(~0u, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u), 96310u | u_input.b.x)) % vec4<u32>(32u)));
}

