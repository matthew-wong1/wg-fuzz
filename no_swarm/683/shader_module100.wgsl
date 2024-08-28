struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, false, true, false, false, true, true, false, false, true, false, true);

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec3<u32>, 11>();
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(~abs(u_input.d), ~u_input.d)), 0u, vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], !(!(!global1[_wgslsmith_index_u32(9548u, 13u)])), all(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], true, true, false))), true));
    global2 = true;
    let var_2 = countOneBits(min(min(u_input.c, vec3<i32>(1i, u_input.e ^ 59261i, firstTrailingBit(-2448i))), ~min(select(u_input.c, vec3<i32>(u_input.e, u_input.a.x, u_input.b.x), vec3<bool>(var_1.c.x, false, global1[_wgslsmith_index_u32(1548u, 13u)])), ~u_input.c)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1337f) * vec2<f32>(-110f, -2521f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1286f, 1969f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.d, u_input.d, !select(vec4<bool>(arg_1, arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.d, 13u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], arg_2.x, false, arg_2.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 13u)], false), global1[_wgslsmith_index_u32(u_input.d, 13u)]), select(arg_1, false, arg_1))), Struct_1(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(38985u, ~u_input.d), 1u), select(select(vec4<bool>(false, false, arg_1, false), vec4<bool>(arg_1, true, arg_2.x, true), !vec4<bool>(true, arg_2.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.x)), select(!vec4<bool>(arg_2.x, true, arg_2.x, global1[_wgslsmith_index_u32(u_input.d, 13u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 13u)], arg_1, arg_1), vec4<bool>(true, arg_1, arg_2.x, arg_2.x), arg_1), all(vec3<bool>(false, true, arg_1))), !(!vec4<bool>(global1[_wgslsmith_index_u32(45042u, 13u)], true, global1[_wgslsmith_index_u32(23619u, 13u)], true)))), Struct_1(u_input.d, select(u_input.d, 6109u, any(select(vec2<bool>(arg_1, arg_1), arg_2, arg_2))), vec4<bool>(true, true, -2147483647i <= u_input.a.x, !(global1[_wgslsmith_index_u32(u_input.d, 13u)] || false))), _wgslsmith_f_op_f32(round(arg_0.x)), -1495f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(412f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(897f)), _wgslsmith_f_op_f32(step(-782f, -1000f)))), arg_0.x, false)), _wgslsmith_f_op_f32(ceil(-999f)));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0));
    var var_2 = Struct_1(var_0.c.a, ~(u_input.d >> (0u % 32u)), vec4<bool>(global1[_wgslsmith_index_u32(60935u, 13u)], !(!var_0.b.c.x & global1[_wgslsmith_index_u32(~u_input.d, 13u)]), any(!(!vec3<bool>(arg_1, true, true))), false));
    let var_3 = select(firstTrailingBit(~(~vec4<i32>(u_input.b.x, -1i, u_input.c.x, u_input.e) ^ -vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.e))), select(~((vec4<i32>(-7237i, u_input.e, -1i, -1i) << (vec4<u32>(4294967295u, 4294967295u, 74418u, var_2.a) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-15911i, u_input.a.x, u_input.e, u_input.c.x), vec4<i32>(u_input.a.x, u_input.c.x, -1i, u_input.c.x))), ~(min(vec4<i32>(-1i, u_input.b.x, u_input.e, u_input.e), vec4<i32>(0i, u_input.e, u_input.c.x, u_input.b.x)) >> (vec4<u32>(37158u, var_0.c.a, var_2.a, 27219u) % vec4<u32>(32u))), !var_2.c), select(vec4<bool>(var_0.c.c.x && true, true, all(var_2.c.yz), !(var_1.x >= arg_0.x)), select(var_0.c.c, select(vec4<bool>(true, true, arg_1, false), !var_0.b.c, var_0.b.c), select(var_0.b.c, var_2.c, var_0.a.c)), var_2.c.x));
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = u_input.b.x;
    let var_1 = vec4<u32>(~arg_2.a.b, u_input.d, _wgslsmith_mult_u32(firstLeadingBit(~arg_2.b.a & ~arg_2.b.a), 27744u), arg_2.a.a);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, ~var_1.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, ~84944u), func_4(_wgslsmith_f_op_vec2_f32(func_3()), !global1[_wgslsmith_index_u32(var_1.x, 13u)], select(arg_2.a.c.wx, vec2<bool>(arg_2.c.c.x, true), arg_2.b.c.yx))), _wgslsmith_add_u32(u_input.d, 3587u)), vec4<u32>(u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_1.zyy, vec3<u32>(u_input.d, arg_2.b.b, arg_2.c.b)), abs(~vec3<u32>(4294967295u, u_input.d, var_1.x))), arg_2.b.b, min(~u_input.d, var_1.x)));
    let var_3 = vec2<bool>(false, false);
    let var_4 = arg_2.b;
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(select(global0[_wgslsmith_index_u32(1u, 11u)], vec3<u32>(u_input.d, 0u, u_input.d), vec3<bool>(arg_3, true, arg_2)), abs(vec3<u32>(0u, 72319u, 4294967295u))), 58794u, !vec4<bool>(arg_3, true, arg_3, select(global1[_wgslsmith_index_u32(u_input.d, 13u)], false, true))), Struct_1(_wgslsmith_mod_u32(64861u, 1u) | abs(max(u_input.d, u_input.d)), 4294967295u, select(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(true, arg_0.x < -848f, arg_2, all(vec4<bool>(false, arg_2, false, arg_3))), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(21092u, 13u)], false, global1[_wgslsmith_index_u32(18981u, 13u)]), vec4<bool>(arg_2, false, arg_2, arg_3), false))), Struct_1(~(~u_input.d), u_input.d, vec4<bool>(false, select(-2147483647i >= arg_1, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], true, arg_2, arg_3)), true), !(true || global1[_wgslsmith_index_u32(6699u, 13u)]), arg_2)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = Struct_2(var_0.b, Struct_1(countOneBits(34177u << ((0u ^ var_0.c.a) % 32u)), _wgslsmith_mult_u32(var_0.b.a & ~4294967295u, 4294967295u & u_input.d), select(var_0.c.c, var_0.b.c, any(var_0.b.c))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, -819f, !var_0.b.c.x))))), _wgslsmith_f_op_vec2_f32(func_3()).x);
    return Struct_1(16706u, ~(~(~4294967295u)), var_0.b.c);
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 13>();
    var var_0 = Struct_1(~28437u, 0u, select(vec4<bool>(global1[_wgslsmith_index_u32(~0u, 13u)], any(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], false, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(55730u, u_input.d), 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 0u), 13u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 22594u), 13u)], !global1[_wgslsmith_index_u32(62811u, 13u)]), !select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<bool>(true, false, false, true), true), false), !(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(20449u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(49814u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 13u)], true)))));
    var_0 = func_5(vec2<f32>(-337f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-414f * 307f), _wgslsmith_f_op_f32(trunc(-441f)), true))))), u_input.c.x, global1[_wgslsmith_index_u32(40866u, 13u)], true || !func_2(u_input.b.x, _wgslsmith_mult_i32(-33608i, -55781i), Struct_2(Struct_1(4294967295u, u_input.d, vec4<bool>(global1[_wgslsmith_index_u32(76583u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)], true, false)), Struct_1(4294967295u, var_0.a, var_0.c), Struct_1(109902u, 0u, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, true, var_0.c.x)), 1000f, -977f)));
    var var_1 = var_0.c;
    var_0 = Struct_1(reverseBits(~0u), countOneBits(1u), select(!(!func_5(vec2<f32>(-481f, 362f), 19942i, false, true).c), vec4<bool>(!(!var_0.c.x), true, true, true), vec4<bool>(true, false, !func_2(u_input.e, 3596i, Struct_2(Struct_1(38201u, u_input.d, var_0.c), Struct_1(var_0.b, 0u, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false)), Struct_1(u_input.d, 47762u, var_0.c), -354f, 704f)), all(vec4<bool>(global1[_wgslsmith_index_u32(24564u, 13u)], var_0.c.x, true, var_1.x)))));
    return Struct_1(~_wgslsmith_mod_u32(~firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b, 0u, 46708u), vec4<u32>(u_input.d, var_0.a, 44489u, var_0.a)) & u_input.d), 48724u, vec4<bool>(any(!(!vec3<bool>(false, var_0.c.x, var_0.c.x))), all(vec3<bool>(true, all(var_0.c.zxw), all(var_1.xzz))), var_1.x, !var_0.c.x));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(abs(_wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(1u, 40974u))), u_input.d | arg_0.a, !vec4<bool>(u_input.d != arg_0.b, arg_0.c.x, true, firstLeadingBit(u_input.a.x) < u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2104f)), _wgslsmith_f_op_f32(-1000f + -285f), !arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)), _wgslsmith_f_op_f32(ceil(3284f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(111f, -1063f, 478f, 465f) - vec4<f32>(959f, -1852f, -1091f, -2286f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-447f, 254f, 114f, 1149f), vec4<f32>(-247f, -1000f, -443f, -226f)))))));
    global0 = array<vec3<u32>, 11>();
    let var_2 = var_0;
    let var_3 = vec3<i32>(u_input.e, -2775i, u_input.e);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 13u)] != true;
    global2 = false;
    global2 = false;
    var var_1 = func_6(func_1());
    var var_2 = Struct_2(func_1(), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-452f, -278f) * vec2<f32>(596f, -841f)))), -2147483647i ^ ~u_input.e, var_1.c.x, !(!var_0)), func_1(), _wgslsmith_div_f32(-709f, 1368f), -1413f);
    var var_3 = !(0u >= ~max(u_input.d, reverseBits(0u)));
    global1 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, abs(u_input.d), ~(~var_2.b.b), reverseBits(4294967295u)), u_input.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(var_2.d + var_2.d))), var_2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, var_2.e)), vec3<f32>(-1356f, var_2.d, -2305f), !var_2.a.c.zyz)) - vec3<f32>(-567f, _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(select(1303f, -1000f, false))))));
}

