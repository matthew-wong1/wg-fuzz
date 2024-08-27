struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 53717u, 1u);

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec3<i32>(-49901i, -20057i, 36490i), vec4<f32>(-296f, -1000f, 239f, -1000f), vec2<i32>(1i, 2147483647i), vec4<f32>(-1484f, -290f, 651f, 355f)), Struct_4(vec3<i32>(2147483647i, 2147483647i, 49274i), vec4<f32>(-136f, 153f, 491f, 126f), vec2<i32>(10778i, 2147483647i), vec4<f32>(1576f, -404f, 884f, 1130f)), Struct_4(vec3<i32>(0i, -6274i, 2041i), vec4<f32>(-1620f, -124f, -735f, -1189f), vec2<i32>(1i, 0i), vec4<f32>(-1430f, -303f, 863f, -1000f)), Struct_4(vec3<i32>(0i, 1i, i32(-2147483648)), vec4<f32>(-828f, -217f, 933f, -655f), vec2<i32>(1i, 5i), vec4<f32>(-646f, 749f, -222f, -122f)), Struct_4(vec3<i32>(i32(-2147483648), -74224i, 1i), vec4<f32>(870f, 385f, 293f, -1247f), vec2<i32>(1i, -89625i), vec4<f32>(400f, 150f, 751f, 1644f)), Struct_4(vec3<i32>(17201i, -72836i, -1i), vec4<f32>(-456f, 1328f, -836f, 440f), vec2<i32>(i32(-2147483648), 29344i), vec4<f32>(1000f, -1184f, -895f, -340f)), Struct_4(vec3<i32>(0i, 2147483647i, 49192i), vec4<f32>(206f, 529f, 1080f, -1000f), vec2<i32>(6676i, 1i), vec4<f32>(157f, -1000f, 196f, 288f)), Struct_4(vec3<i32>(-31560i, 0i, 5136i), vec4<f32>(-145f, -412f, -1096f, -438f), vec2<i32>(3607i, 1i), vec4<f32>(513f, -1905f, 289f, 381f)), Struct_4(vec3<i32>(-58093i, 47411i, -22992i), vec4<f32>(901f, 2074f, 1103f, 3184f), vec2<i32>(2147483647i, 1i), vec4<f32>(-1555f, -446f, 1026f, 1000f)), Struct_4(vec3<i32>(i32(-2147483648), 2344i, i32(-2147483648)), vec4<f32>(-643f, -968f, 1181f, -1169f), vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(-2315f, -1135f, -1264f, 960f)), Struct_4(vec3<i32>(0i, -1i, 1i), vec4<f32>(2175f, -1000f, 1697f, 127f), vec2<i32>(2147483647i, -1i), vec4<f32>(-1378f, -1000f, -860f, -1058f)), Struct_4(vec3<i32>(9054i, 65345i, i32(-2147483648)), vec4<f32>(1391f, 536f, -742f, 2318f), vec2<i32>(3595i, 4044i), vec4<f32>(-1000f, 1424f, -394f, -763f)), Struct_4(vec3<i32>(44981i, -79391i, -27585i), vec4<f32>(492f, 1247f, -1243f, -1767f), vec2<i32>(-1i, 24359i), vec4<f32>(-154f, 1759f, -845f, -132f)), Struct_4(vec3<i32>(0i, 16742i, -21252i), vec4<f32>(1682f, -720f, 1655f, 890f), vec2<i32>(-14276i, 0i), vec4<f32>(-1807f, 1599f, 1000f, 390f)), Struct_4(vec3<i32>(20717i, 1889i, 0i), vec4<f32>(-3089f, 1267f, 1045f, -469f), vec2<i32>(0i, 2147483647i), vec4<f32>(-418f, -739f, 116f, 1946f)), Struct_4(vec3<i32>(25169i, -1i, -19303i), vec4<f32>(-1793f, -171f, 2530f, -1076f), vec2<i32>(75834i, 8116i), vec4<f32>(-709f, 913f, -248f, -1469f)), Struct_4(vec3<i32>(13485i, 1i, 34488i), vec4<f32>(1000f, 884f, 671f, 1000f), vec2<i32>(2147483647i, -8633i), vec4<f32>(621f, -962f, 1972f, 1040f)), Struct_4(vec3<i32>(-1i, -34058i, -7901i), vec4<f32>(-320f, -1150f, 709f, 1000f), vec2<i32>(-20041i, -1i), vec4<f32>(1000f, 160f, -781f, 933f)));

var<private> global3: array<bool, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a, arg_0.a), vec4<u32>(select(~arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 13143u, 40695u, arg_0.a.x), arg_0.a), global0.x | false), arg_0.a.x, 31706u, 1431u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yw, countOneBits(vec2<i32>(arg_3, 19390i))), _wgslsmith_sub_i32(min(-28134i, arg_2), 2147483647i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, arg_3, arg_3, 16278i), u_input.a), -arg_1.c), _wgslsmith_div_f32(arg_0.c, -832f), -countOneBits(vec2<i32>(abs(-8522i), -2147483647i & arg_0.d.x)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.x, _wgslsmith_div_u32(global1.x, _wgslsmith_div_u32(28976u, ~reverseBits(var_0.a.x))), ~_wgslsmith_dot_vec3_u32(~(arg_0.a.wxy << (vec3<u32>(50555u, 1u, global1.x) % vec3<u32>(32u))), abs(firstTrailingBit(vec3<u32>(0u, 12017u, 1u))))), 18u)];
    var var_2 = !select(vec2<bool>(global0.x, global3[_wgslsmith_index_u32(global1.x, 29u)]), global0.zz, true);
    let var_3 = select(vec4<bool>(all(arg_1.a.zz), true, var_2.x, (min(arg_2, 29107i) & ~12478i) > (~5996i << (abs(0u) % 32u))), !vec4<bool>(var_2.x, false, !var_2.x, arg_1.a.x), false || global3[_wgslsmith_index_u32(87081u, 29u)]);
    var var_4 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-336f, _wgslsmith_f_op_f32(select(var_0.c, -394f, true)), !var_3.x))), var_1.b.x, _wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(floor(366f)))), arg_0);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-490f)) * _wgslsmith_f_op_f32(-925f * -467f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -681f), var_4.a.x, any(arg_1.a.zz)))) + vec2<f32>(-888f, 1762f)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, arg_0, 11202u, arg_0), ~vec4<u32>(global1.x, 1u, 10982u, arg_0)), ~(~(-38358i)), 621f, vec2<i32>(i32(-1i) * -42802i, arg_1 & arg_1)), Struct_2(!(!arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-648f, 620f) - vec2<f32>(452f, 1036f))), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, 49276i), u_input.a.yz | u_input.a.wy)), firstLeadingBit(-(arg_1 >> (global1.x % 32u))), ~(-1i << (global1.x % 32u)))), arg_1 & u_input.a.x);
    global2 = array<Struct_4, 18>();
    var var_1 = vec3<bool>(!(-114f <= _wgslsmith_f_op_f32(exp2(var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(1433f, var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1002f * -1000f))) == -1680f, true);
    let var_2 = Struct_1(vec3<u32>(global1.x, global1.x, arg_0), reverseBits(global1.x), all(select(!var_0.a, select(!vec3<bool>(false, arg_2.x, false), select(arg_2, arg_2, false), !vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 29u)], global0.x, global3[_wgslsmith_index_u32(arg_0, 29u)])), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, -1549f) + _wgslsmith_f_op_vec2_f32(max(var_0.b, var_0.b))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2506f - 875f), _wgslsmith_f_op_f32(1361f * 1584f)))));
    let var_3 = Struct_3(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_add_u32(31767u ^ arg_0, arg_0)), ~global1.x, var_2.b, 57090u), var_0.c, -1108f, u_input.a.zx);
    return var_3;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = func_2(1u, -(~u_input.a.x), vec3<bool>(!global3[_wgslsmith_index_u32(~54267u, 29u)], arg_2, global3[_wgslsmith_index_u32(1u, 29u)] & global3[_wgslsmith_index_u32(22664u, 29u)]));
    global2 = array<Struct_4, 18>();
    var var_1 = abs(reverseBits(25180u));
    var var_2 = !select(!vec2<bool>(any(vec3<bool>(true, global0.x, global3[_wgslsmith_index_u32(global1.x, 29u)])), all(global0.yy)), global0.xx, select(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(27597u, 29u)]), vec2<bool>(false, true), arg_2), !global0.yx, vec2<bool>(!global0.x, true == global3[_wgslsmith_index_u32(37358u, 29u)])));
    let var_3 = vec4<bool>(select(!(-u_input.a.x < arg_1.x), select(1u < _wgslsmith_mult_u32(var_0.a.x, 1u), arg_0 <= 61623i, false), false), any(!select(vec4<bool>(var_2.x, true, false, false), !vec4<bool>(global3[_wgslsmith_index_u32(12602u, 29u)], arg_2, var_2.x, false), global0.x)), true, var_2.x);
    return firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(min(firstLeadingBit(global1.x), 1u)), abs(_wgslsmith_div_u32(0u, firstLeadingBit(61418u)))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(max(6182u, countOneBits(34140u)), _wgslsmith_mod_u32(global1.x, firstLeadingBit(select(1613u, global1.x, false))), ~global1.x), global1.x, global3[_wgslsmith_index_u32(global1.x, 29u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(arg_0, 2147483647i, 1227f, vec2<i32>(1i, u_input.a.x)), Struct_2(vec3<bool>(global0.x, true, true), vec2<f32>(315f, -1750f), u_input.a.x), i32(-1i) * -43805i, u_input.a.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, -815f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(987f, 110f) - vec2<f32>(1253f, -316f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(211f, _wgslsmith_f_op_f32(sign(540f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-271f + 545f))))));
    var var_1 = !vec2<bool>(global0.x, any(vec4<bool>(global0.x, global0.x && false, all(vec3<bool>(global0.x, global3[_wgslsmith_index_u32(global1.x, 29u)], false)), !global3[_wgslsmith_index_u32(global1.x, 29u)])));
    var var_2 = 25915u;
    var var_3 = vec4<bool>(true, !any(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_0.x, 29u)], global3[_wgslsmith_index_u32(arg_0.x, 29u)])), true, any(select(vec3<bool>(all(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(var_0.b, 29u)])), true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.x << (51609u % 32u), 29u)], var_1.x), !any(vec4<bool>(false, global3[_wgslsmith_index_u32(19591u, 29u)], global3[_wgslsmith_index_u32(arg_0.x, 29u)], global0.x)))));
    global3 = array<bool, 29>();
    return Struct_1(~var_0.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(17252u, arg_0.x), abs(var_0.b)), var_3.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(max(-2277f, var_0.d.x))), 515f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.d, _wgslsmith_f_op_vec2_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(-var_0.d), any(vec4<bool>(true, true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.x ^ global1.x;
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-437f, -1482f, 703f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(616f, 421f, 1000f), vec3<f32>(-1012f, 1650f, 491f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1519f, 722f, -574f), vec3<f32>(-445f, -880f, -827f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1483f), -122f, 203f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, -328f, -559f) * vec3<f32>(961f, -553f, -1003f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, 1272f, -2223f) - vec3<f32>(-3024f, -493f, -486f)), global1.x > global1.x)))), Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, firstLeadingBit(4294967295u), 4294967295u, global1.x), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.x, 9179u, 26521u), vec4<u32>(22346u, global1.x, global1.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(693u, 11675u, global1.x, global1.x), vec4<u32>(54998u, 1u, global1.x, 1u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 23078i, u_input.a.x, -93560i), vec4<i32>(u_input.a.x, 30459i, u_input.a.x, u_input.a.x))), vec2<i32>(2147483647i, 1i)), -433f, select(u_input.a.yy, ~vec2<i32>(2147483647i, u_input.a.x) & countOneBits(u_input.a.xy), select(vec2<bool>(true, global0.x), select(global0.xz, global0.yx, global0.x), all(vec4<bool>(global0.x, global3[_wgslsmith_index_u32(0u, 29u)], true, true))))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.x))));
    let var_3 = -abs((max(var_1.b.b, -36624i) << (var_1.b.a.x % 32u)) ^ 0i);
    let var_4 = func_4(vec4<u32>(~func_1(u_input.a.x, vec2<i32>(var_3, 2147483647i), global0.x) ^ _wgslsmith_sub_u32(global1.x, ~global1.x), 1u, (global1.x >> (79698u % 32u)) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.b.a.xyw, var_1.b.a.wzx), 4294967295u), ~(~min(0u, 79637u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.b, 64304u, ~global1.x >> (_wgslsmith_mult_u32(func_4(vec4<u32>(0u, global1.x, 106676u, var_1.b.a.x)).b, _wgslsmith_clamp_u32(44562u, 5545u, var_1.b.a.x)) % 32u)));
}

