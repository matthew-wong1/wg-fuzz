struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<f32>(-2637f, -112f, -2252f), -402f, Struct_1(-110f, 8390u, -199f, false, -1149f), false, vec3<u32>(0u, 1u, 4294967295u)), Struct_3(vec3<f32>(-2369f, 812f, -1823f), 319f, Struct_1(1000f, 0u, 1201f, false, -940f), false, vec3<u32>(4294967295u, 17235u, 1u)), Struct_3(vec3<f32>(1048f, 130f, 2070f), 649f, Struct_1(-1058f, 5451u, -1000f, false, -2352f), false, vec3<u32>(4294967295u, 14861u, 12522u)), Struct_3(vec3<f32>(-2144f, -772f, 1095f), 1000f, Struct_1(339f, 4294967295u, -1597f, false, 1297f), true, vec3<u32>(29371u, 0u, 1u)), Struct_3(vec3<f32>(1289f, 456f, 2572f), 1858f, Struct_1(554f, 30240u, -181f, false, 683f), false, vec3<u32>(1u, 0u, 61349u)), Struct_3(vec3<f32>(-1074f, -1000f, 152f), 491f, Struct_1(-1000f, 1u, 1383f, true, -1651f), false, vec3<u32>(0u, 1u, 47272u)), Struct_3(vec3<f32>(-1649f, 1625f, 334f), 2140f, Struct_1(-1039f, 0u, 1438f, false, 1000f), false, vec3<u32>(1u, 12025u, 44828u)), Struct_3(vec3<f32>(-235f, -206f, 1000f), -1355f, Struct_1(443f, 38542u, -1210f, true, -386f), true, vec3<u32>(22870u, 51094u, 56114u)), Struct_3(vec3<f32>(-422f, 966f, -789f), 470f, Struct_1(-330f, 1u, 261f, false, 1000f), false, vec3<u32>(37826u, 1529u, 2004u)), Struct_3(vec3<f32>(-791f, -148f, -950f), -386f, Struct_1(-888f, 0u, 1266f, true, 137f), true, vec3<u32>(70029u, 1u, 6374u)), Struct_3(vec3<f32>(735f, 600f, 1437f), 121f, Struct_1(-437f, 12305u, -1000f, true, -431f), true, vec3<u32>(1u, 4294967295u, 3146u)), Struct_3(vec3<f32>(-1078f, -1872f, 960f), 201f, Struct_1(-743f, 131463u, 1051f, false, -416f), false, vec3<u32>(0u, 1u, 0u)), Struct_3(vec3<f32>(417f, -1059f, 143f), -270f, Struct_1(-471f, 0u, 1363f, true, 846f), true, vec3<u32>(50768u, 10927u, 49701u)), Struct_3(vec3<f32>(375f, -740f, -1320f), 1881f, Struct_1(144f, 1u, -416f, true, 1346f), false, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(vec3<f32>(559f, -998f, 774f), -909f, Struct_1(590f, 685u, -1218f, true, 148f), true, vec3<u32>(18987u, 4294967295u, 70200u)), Struct_3(vec3<f32>(-650f, 594f, -479f), 165f, Struct_1(450f, 36810u, -286f, false, 286f), true, vec3<u32>(22632u, 1u, 32469u)), Struct_3(vec3<f32>(642f, 1545f, -469f), -125f, Struct_1(-450f, 56173u, -575f, true, 649f), false, vec3<u32>(4294967295u, 1u, 1u)), Struct_3(vec3<f32>(1258f, 140f, 1314f), 1258f, Struct_1(-524f, 21962u, 282f, false, 832f), false, vec3<u32>(118037u, 9364u, 1u)), Struct_3(vec3<f32>(-1663f, -159f, 1799f), 1330f, Struct_1(-784f, 16760u, -1269f, false, -204f), false, vec3<u32>(2779u, 4294967295u, 17589u)), Struct_3(vec3<f32>(509f, -548f, -1714f), -1000f, Struct_1(-547f, 1u, 655f, true, -133f), true, vec3<u32>(74234u, 4294967295u, 44797u)), Struct_3(vec3<f32>(-1000f, -640f, 1292f), 478f, Struct_1(-1171f, 4294967295u, -2156f, true, 877f), false, vec3<u32>(17992u, 47462u, 19421u)), Struct_3(vec3<f32>(404f, 722f, -1598f), 1444f, Struct_1(-280f, 0u, -971f, true, -2325f), false, vec3<u32>(35747u, 4294967295u, 60199u)), Struct_3(vec3<f32>(-1242f, 914f, 1097f), -536f, Struct_1(-1573f, 33644u, 1623f, false, 190f), false, vec3<u32>(27510u, 45017u, 3697u)), Struct_3(vec3<f32>(-609f, 862f, -306f), -394f, Struct_1(-1300f, 75309u, 186f, true, -1815f), false, vec3<u32>(3879u, 0u, 0u)));

var<private> global3: array<f32, 17>;

var<private> global4: array<vec4<i32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    global0 = Struct_2(global0.a);
    return ~24614u & ~(~u_input.c.x);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global0.a.b, 17u)], global0.a.c, -1317f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-289f, global0.a.c, -1000f) + vec3<f32>(global0.a.e, -233f, 1180f))) - vec3<f32>(-128f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -740f))), arg_0.a)), 1f, arg_0.c, true, _wgslsmith_mod_vec3_u32(~(~arg_0.e), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.e, countOneBits(u_input.c.xyy)), _wgslsmith_mult_u32(global0.a.b, arg_0.c.b) | ~1222u, abs(func_2()))));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~max(var_0.c.b, ~u_input.b), ~(~(global0.a.b << (67615u % 32u))), countOneBits(~(~4294967295u))), var_0.e & vec3<u32>(70754u, global0.a.b, 1u));
    var var_2 = vec3<f32>(-1000f, 188f, global3[_wgslsmith_index_u32(~1u, 17u)]);
    let var_3 = var_0.c;
    var var_4 = any(vec2<bool>(true, true));
    return _wgslsmith_div_f32(var_2.x, -1824f);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_3, 24>();
    global1 = reverseBits(~40259u) < func_2();
    let var_0 = Struct_4(Struct_1(-314f, global0.a.b, _wgslsmith_f_op_f32(abs(1289f)), all(vec4<bool>(global0.a.d, select(global0.a.d, true, true), false, false)), _wgslsmith_f_op_f32(527f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.a.e)))))));
    global0 = Struct_2(Struct_1(-1000f, _wgslsmith_clamp_u32(93536u, 1u, 0u), _wgslsmith_f_op_f32(sign(global0.a.a)), all(!(!vec3<bool>(false, var_0.a.d, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.a, 1274f, var_0.a, false, vec3<u32>(38083u, var_0.a.b, 34795u)))), global0.a.e, arg_0.d))));
    let var_1 = reverseBits(~vec3<i32>(2147483647i, arg_1.x, _wgslsmith_dot_vec2_i32(arg_1.zx, arg_1.wz) ^ -2147483647i));
    return global0.a;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_5) -> f32 {
    global0 = Struct_2(global0.a);
    var var_0 = arg_3.a;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.e), _wgslsmith_div_f32(641f, var_0.a.a), global0.a.c) * vec3<f32>(_wgslsmith_f_op_f32(sign(-1795f)), global0.a.e, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -873f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1543f, -2098f))), func_1(Struct_3(vec3<f32>(_wgslsmith_div_f32(-235f, arg_3.a.a.e), _wgslsmith_f_op_f32(arg_1 * 766f), 2058f), var_0.a.c, Struct_1(-2413f, ~u_input.a, -1000f, arg_0.a.a.d, _wgslsmith_f_op_f32(floor(var_0.a.c))), true, _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.b, arg_0.a.a.b, 51565u), vec3<u32>(15866u, u_input.a, 8349u), ~vec3<u32>(arg_3.a.a.b, u_input.c.x, 0u))), countOneBits(firstTrailingBit(vec4<i32>(arg_2.x, arg_2.x, 24566i, 0i) ^ vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))), true, ~_wgslsmith_sub_vec3_u32(firstLeadingBit(select(vec3<u32>(52264u, arg_0.a.a.b, arg_0.a.a.b), u_input.c.wzy, arg_0.b)), ~min(u_input.c.wyz, u_input.c.wzy)));
    global3 = array<f32, 17>();
    let var_2 = _wgslsmith_f_op_f32(-global0.a.a);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 11>();
    let var_0 = Struct_1(407f, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(3702u, global0.a.b) >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, global0.a.b)), ~(vec2<u32>(global0.a.b, 0u) | vec2<u32>(421u, 0u))), 10938u, u_input.c.x), _wgslsmith_f_op_f32(func_4(Struct_5(Struct_2(global0.a), !any(vec3<bool>(global0.a.d, true, global0.a.d))), _wgslsmith_f_op_f32(-global0.a.a), global4[_wgslsmith_index_u32(abs(~firstLeadingBit(1u)), 11u)], Struct_5(Struct_2(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global4[_wgslsmith_index_u32(88257u, 11u)])), true))), global0.a.d, -911f);
    let var_1 = vec3<i32>(67530i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.a.b, global0.a.b), vec2<u32>(0u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(2737u, 1u), u_input.c.zz)), u_input.c.zy) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(~1i, ~1i), _wgslsmith_div_i32(2147483647i, -2147483647i)), -2147483647i);
    var var_2 = 17825i;
    var var_3 = reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(14934i, -28197i), (7195i & var_1.x) | 2147483647i)) != var_1.x;
    let var_4 = vec3<f32>(-516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 1218f) * global3[_wgslsmith_index_u32(var_0.b, 17u)]))), 1101f);
    var_3 = true;
    let var_5 = Struct_3(var_4, var_0.c, global0.a, true, _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, var_0.b, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(u_input.a, 64532u), var_0.b, firstTrailingBit(global0.a.b))) >> (u_input.c.xxw % vec3<u32>(32u)));
    let var_6 = u_input.c.yyx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.a, -421f, var_4.x), vec4<f32>(131f, 1198f, var_0.a, var_0.a)))))), global3[_wgslsmith_index_u32(firstTrailingBit(var_6.x), 17u)], firstTrailingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_5.c.b, u_input.a, 26499u), ~vec3<u32>(global0.a.b, 23332u, 4401u)))), -min(var_1.x, (i32(-1i) * -42469i) & var_1.x));
}

