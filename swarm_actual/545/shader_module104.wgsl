struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    return ~arg_0.d;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<bool>, 6>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1097f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -3125f)))), vec3<bool>(false, !all(vec3<bool>(true, false, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(471f, 610f, -498f) - vec3<f32>(-454f, -293f, 1528f)))), select(_wgslsmith_mult_vec4_i32(u_input.b, func_3(Struct_1(843f, vec3<bool>(true, true, false), vec3<f32>(2230f, -1881f, -147f), vec4<i32>(11215i, u_input.b.x, 1i, u_input.b.x)), Struct_2(Struct_1(705f, vec3<bool>(false, true, true), vec3<f32>(1211f, 1167f, -312f), vec4<i32>(2147483647i, -2147483647i, u_input.b.x, u_input.b.x)), true, Struct_1(-152f, vec3<bool>(false, true, false), vec3<f32>(478f, -1067f, 1907f), u_input.b), u_input.b.ww, vec2<f32>(-976f, 174f)), -516f, Struct_1(-1352f, vec3<bool>(true, true, false), vec3<f32>(285f, -696f, -611f), vec4<i32>(-10085i, 2147483647i, 68635i, u_input.b.x)))), func_3(Struct_1(-1000f, vec3<bool>(true, true, false), vec3<f32>(455f, -217f, -808f), u_input.b), Struct_2(Struct_1(379f, vec3<bool>(true, false, false), vec3<f32>(-1404f, -1000f, -1000f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -58519i)), true, Struct_1(-628f, vec3<bool>(false, false, false), vec3<f32>(623f, -412f, -387f), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)), vec2<i32>(52878i, u_input.b.x), vec2<f32>(928f, 375f)), -1363f, Struct_1(849f, vec3<bool>(true, true, true), vec3<f32>(1000f, -706f, 1944f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -38412i))), !global0[_wgslsmith_index_u32(1u, 6u)])), !(all(select(global0[_wgslsmith_index_u32(u_input.a, 6u)], vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(u_input.a, 6u)])) != !select(false, true, true)), Struct_1(_wgslsmith_f_op_f32(-1362f - -1000f), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, 2147483647i == u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(299f, -1235f, -1000f) * vec3<f32>(1058f, 1000f, 133f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-241f, 959f, -251f), vec3<f32>(-1089f, 673f, 183f), false)))), u_input.b), ~u_input.b.zx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-684f)) + -1654f), -290f));
    let var_1 = ~((_wgslsmith_clamp_u32(~0u, u_input.a, firstLeadingBit(11760u)) << (firstLeadingBit(u_input.a) % 32u)) & ~41650u);
    return Struct_1(718f, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.c.b.x), var_0.a.b.x | var_0.b), _wgslsmith_f_op_f32(-var_0.e.x) >= _wgslsmith_f_op_f32(max(var_0.e.x, var_0.e.x))), !select(!var_0.a.b, !vec3<bool>(true, true, var_0.a.b.x), select(var_0.a.b, var_0.c.b, var_0.a.b)), var_0.c.b.x), vec3<f32>(227f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a, var_0.e.x) - -1264f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.e.x, 1483f))))), vec4<i32>(u_input.b.x, var_0.c.d.x, firstLeadingBit(abs(var_0.a.d.x)), var_0.c.d.x) & _wgslsmith_mult_vec4_i32(select(-vec4<i32>(-1i, u_input.b.x, var_0.d.x, 2147483647i), reverseBits(var_0.c.d), select(vec4<bool>(false, var_0.b, var_0.c.b.x, var_0.b), vec4<bool>(false, false, var_0.b, false), false)), u_input.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    var var_0 = -countOneBits(_wgslsmith_mod_i32(-1i, u_input.b.x));
    var var_1 = !arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.c.x))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(-809f - arg_0.a)))), arg_1.c.a)));
    let var_3 = func_2();
    var var_4 = vec3<i32>(-1i) * -countOneBits(u_input.b.zzy);
    return Struct_4(Struct_3(u_input.a));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1660f * -658f), _wgslsmith_f_op_f32(min(141f, -1620f))), -2045f, _wgslsmith_div_f32(1908f, _wgslsmith_f_op_f32(-2224f - -419f)), -426f))));
    let var_1 = select(firstLeadingBit(u_input.b.zzz), vec3<i32>(~(~(-35847i)), -_wgslsmith_mod_i32(u_input.b.x, 0i), (-18725i | u_input.b.x) ^ func_3(Struct_1(715f, vec3<bool>(true, true, false), var_0.xyx, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(var_0.x, arg_1.zyy, var_0.xzx, u_input.b), false, Struct_1(var_0.x, arg_3, var_0.yyw, u_input.b), u_input.b.wx, var_0.yx), 1660f, Struct_1(501f, arg_1.wzy, var_0.ywz, u_input.b)).x) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a.a, u_input.a, 0u) & vec3<u32>(57109u, arg_2.a.a, 1u), (vec3<u32>(0u, u_input.a, arg_2.a.a) ^ vec3<u32>(arg_2.a.a, arg_2.a.a, 25704u)) ^ vec3<u32>(18580u, 10652u, 33568u)) % vec3<u32>(32u)), select(func_2().b, select(vec3<bool>(true, arg_0, !arg_1.x), !arg_1.yxw, _wgslsmith_f_op_f32(select(var_0.x, -2136f, true)) < _wgslsmith_f_op_f32(-var_0.x)), func_2().b));
    let var_2 = func_2().b.x;
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_div_f32(var_0.x, var_0.x)) - var_0.x), select(func_2().b, !vec3<bool>(true, true, arg_0), func_2().b), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1982f), var_0.x), countOneBits(_wgslsmith_mod_vec4_i32(-u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -1i, -3i)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(var_0.x)), func_2().b, vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(741f))), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1405f) - _wgslsmith_f_op_f32(ceil(264f))) < _wgslsmith_f_op_f32(var_0.x - -1000f), func_2(), ~(firstTrailingBit(vec2<i32>(u_input.b.x, var_1.x)) | (vec2<i32>(var_1.x, var_1.x) | var_1.yx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), Struct_4(Struct_3(_wgslsmith_sub_u32(countOneBits(u_input.a), ~arg_2.a.a))), -27241i);
    var var_4 = max(u_input.b.x, ~56392i);
    return _wgslsmith_f_op_vec3_f32(var_0.ywy - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xwz + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 722f, 1000f))))))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(true, any(vec2<bool>(true, any(vec3<bool>(true, true, true)))), true, false), global0[_wgslsmith_index_u32(u_input.a, 6u)], vec4<bool>(true, all(global0[_wgslsmith_index_u32(select(u_input.a, ~1u, -1719f > arg_0.x), 6u)]), true, all(vec2<bool>(true, true))));
    global0 = array<vec4<bool>, 6>();
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -507f), arg_0.x), var_0.zyx, _wgslsmith_f_op_vec3_f32(func_5(!var_0.x, global0[_wgslsmith_index_u32(5584u, 6u)], func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1796f), var_0.zww, _wgslsmith_f_op_vec3_f32(exp2(arg_0)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), Struct_2(Struct_1(642f, vec3<bool>(true, var_0.x, false), arg_0, u_input.b), 557f > arg_0.x, func_2(), vec2<i32>(var_1, u_input.b.x), arg_0.xx), Struct_4(Struct_3(4294967295u)), u_input.b.x), var_0.zwx)), u_input.b);
    var var_3 = -(countOneBits(-var_2.d.yz) >> (~(~(vec2<u32>(u_input.a, 9459u) & vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)));
    return Struct_2(func_2(), var_0.x, func_2(), -u_input.b.xw & vec2<i32>(~var_1 >> ((1u >> (1u % 32u)) % 32u), -259i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_5(var_2.b.x, vec4<bool>(true, false, var_2.b.x, true), func_4(Struct_1(1289f, var_2.b, vec3<f32>(1298f, 2362f, 941f), vec4<i32>(38329i, var_2.d.x, var_1, var_1)), Struct_2(Struct_1(var_2.c.x, var_0.zwy, vec3<f32>(1000f, var_2.c.x, var_2.c.x), var_2.d), var_0.x, Struct_1(620f, var_0.wwy, vec3<f32>(-899f, var_2.c.x, var_2.a), vec4<i32>(var_1, var_1, var_1, 1301i)), vec2<i32>(-2147483647i, 1i), arg_0.zx), Struct_4(Struct_3(u_input.a)), 27353i), !var_0.yzw)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a)) - arg_0.x)) - vec2<f32>(arg_0.x, 326f)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<vec4<bool>, 6>();
    let var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(268f, !func_1(arg_0.c.c).a.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.c.c)), vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(642f + -1425f), _wgslsmith_f_op_f32(-arg_2.c.a))), func_3(arg_2.c, func_1(arg_2.a.c), arg_0.a.a, arg_2.a)), arg_2.c.b.x, arg_0.c, arg_2.a.d.yw, arg_0.a.c.xy);
    var var_2 = vec3<bool>(false, !(true == func_2().b.x), arg_0.b);
    var_1 = arg_2;
    return select(vec4<bool>(var_1.c.b.x, false, arg_2.c.b.x, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.c) * arg_2.c.c)).b), select(global0[_wgslsmith_index_u32(~1u, 6u)], vec4<bool>(var_2.x, var_1.a.b.x, !(arg_0.c.b.x & var_1.b), firstTrailingBit(33752u) >= 1u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(10521u, 27919u, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(var_0, var_0, 1u, u_input.a))), ~_wgslsmith_clamp_u32(36833u, 4294967295u, 23351u), var_0), 6u)]), select(global0[_wgslsmith_index_u32(8495u, 6u)], !global0[_wgslsmith_index_u32(47331u, 6u)], vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(73131u, u_input.a, 1u) ^ vec3<u32>(u_input.a, u_input.a, 0u), firstLeadingBit(vec3<u32>(0u, 1u, u_input.a))) == u_input.a, false, false, true || !any(vec4<bool>(true, false, false, true))), !select(vec4<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 6u)]), true, true, all(vec3<bool>(true, true, true))), vec4<bool>(false, true, true, all(vec3<bool>(false, true, true))), func_6(func_1(vec3<f32>(329f, 1643f, -433f)), vec3<bool>(true, true, true), func_1(vec3<f32>(-1000f, -1192f, -769f)))), false);
    global0 = array<vec4<bool>, 6>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, -969f, 250f)).e.x - _wgslsmith_f_op_f32(min(-1000f, 1698f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) << (~vec4<u32>(u_input.a, u_input.a, 48472u, 1u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 35716u), vec4<u32>(u_input.a, u_input.a, 20479u, u_input.a)), _wgslsmith_add_u32(u_input.a, 0u))), func_1(vec3<f32>(-934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(484f, -795f))))).c.c.x, ~abs(vec2<u32>(u_input.a >> (4294967295u % 32u), ~u_input.a)), ~_wgslsmith_mod_vec4_i32(max(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b), vec4<i32>(func_1(vec3<f32>(-554f, 842f, 1098f)).c.d.x, _wgslsmith_sub_i32(-14848i, u_input.b.x), 1951i, ~(-51737i))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 8876u, u_input.a, min(4294967295u, u_input.a)), select(vec4<u32>(u_input.a, 1857u, u_input.a, u_input.a), vec4<u32>(88403u, 4294967295u, u_input.a, 0u), true) | vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(u_input.a, 62367u, 1524u)), 1u) ^ ~(vec4<u32>(15753u, u_input.a, 26777u, 4294967295u) >> (vec4<u32>(u_input.a, 1u, 28271u, u_input.a) % vec4<u32>(32u)))));
}

