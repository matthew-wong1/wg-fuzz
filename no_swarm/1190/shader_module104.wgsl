struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(108f, true, vec2<f32>(-1000f, -163f), vec2<i32>(0i, 0i)), Struct_1(295f, false, vec2<f32>(1356f, -985f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(649f, false, vec2<f32>(1148f, -865f), vec2<i32>(-1i, 8998i)), Struct_1(2758f, true, vec2<f32>(1488f, 239f), vec2<i32>(-719i, 624i)), Struct_1(-1237f, false, vec2<f32>(403f, 726f), vec2<i32>(0i, 2147483647i)), Struct_1(219f, false, vec2<f32>(-1000f, 261f), vec2<i32>(2147483647i, 2147483647i)), Struct_1(820f, true, vec2<f32>(-487f, -837f), vec2<i32>(10763i, 19391i)), Struct_1(2347f, true, vec2<f32>(1332f, 541f), vec2<i32>(-13699i, 0i)), Struct_1(-1186f, true, vec2<f32>(-866f, -1236f), vec2<i32>(i32(-2147483648), 23967i)), Struct_1(2380f, false, vec2<f32>(-1561f, 1000f), vec2<i32>(0i, i32(-2147483648))), Struct_1(-2067f, false, vec2<f32>(370f, -104f), vec2<i32>(0i, 0i)), Struct_1(-962f, true, vec2<f32>(-770f, -1531f), vec2<i32>(i32(-2147483648), -24960i)), Struct_1(-798f, true, vec2<f32>(444f, -1954f), vec2<i32>(-636i, 2147483647i)), Struct_1(-1694f, true, vec2<f32>(393f, 1183f), vec2<i32>(-1i, -50606i)), Struct_1(1000f, false, vec2<f32>(1000f, 1821f), vec2<i32>(-25977i, -16006i)), Struct_1(-956f, true, vec2<f32>(1000f, 306f), vec2<i32>(1i, 0i)), Struct_1(-820f, true, vec2<f32>(-1473f, 1000f), vec2<i32>(-1i, -1i)), Struct_1(-1564f, true, vec2<f32>(-1783f, 1094f), vec2<i32>(-1i, 2147483647i)), Struct_1(-587f, true, vec2<f32>(412f, 129f), vec2<i32>(-12110i, 68409i)), Struct_1(-526f, false, vec2<f32>(492f, 394f), vec2<i32>(-1i, 1i)), Struct_1(-1489f, true, vec2<f32>(-1459f, -1741f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-216f, true, vec2<f32>(1160f, 707f), vec2<i32>(i32(-2147483648), -39918i)), Struct_1(1551f, false, vec2<f32>(1194f, 105f), vec2<i32>(1i, -11291i)), Struct_1(226f, true, vec2<f32>(-332f, 360f), vec2<i32>(22181i, i32(-2147483648))), Struct_1(189f, true, vec2<f32>(2563f, 451f), vec2<i32>(-1i, i32(-2147483648))));

var<private> global2: array<Struct_1, 2>;

var<private> global3: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global3 = _wgslsmith_mult_i32(arg_1.d.x, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-21354i, u_input.a.x)));
    global3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_div_i32(-3323i, 1i), _wgslsmith_sub_i32(0i, 2147483647i), u_input.a.x)), u_input.a.x), ~abs(u_input.a.xx));
    let var_0 = -(~(-17642i));
    let var_1 = u_input.b.x;
    let var_2 = ~countOneBits(_wgslsmith_div_u32(_wgslsmith_div_u32(~var_1, firstLeadingBit(87239u)), _wgslsmith_add_u32(93287u, u_input.b.x)));
    return arg_1.d.x != countOneBits(arg_2.d.x >> (_wgslsmith_add_u32(35228u, u_input.b.x | 0u) % 32u));
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 2>();
    var var_0 = Struct_3(select(vec4<bool>(false, true, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], 832f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), Struct_1(2090f, true, vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), u_input.a.zz), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, vec2<f32>(-315f, 963f), vec2<i32>(u_input.a.x, -19011i))), _wgslsmith_f_op_f32(-1203f - -1000f) != _wgslsmith_f_op_f32(select(-847f, 637f, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), all(vec4<bool>(false, true, false, false)))), false), Struct_1(-1000f, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, 656f)) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 2624f))), _wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, ~u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~1u, 29u)])), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16608u, 29u)]))))), u_input.a.x <= select(u_input.a.x, abs(u_input.a.x), true));
    let var_1 = Struct_4(var_0.a.wzw);
    let var_2 = select(select(select(vec2<bool>(var_1.a.x, select(var_1.a.x, var_0.a.x, var_0.b.b)), !select(var_1.a.zx, var_1.a.xz, var_1.a.x), !vec2<bool>(true, var_1.a.x)), vec2<bool>(any(var_1.a), !(!var_1.a.x)), var_1.a.xy), select(!var_0.a.xw, var_0.a.yw, (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 99342u) | 0u) < firstTrailingBit(u_input.b.x)), false);
    let var_3 = _wgslsmith_sub_i32(var_0.b.d.x, 2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1881f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 2u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_0.c.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_div_f32(-1000f, -1122f), _wgslsmith_f_op_f32(-var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(select(605f, var_0.c.x, false)), _wgslsmith_f_op_f32(-var_0.a), arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(771f, _wgslsmith_f_op_f32(sign(468f)), global0[_wgslsmith_index_u32((u_input.b.x >> (u_input.b.x % 32u)) | ~u_input.b.x, 29u)])));
    let var_2 = Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)) - arg_1) + arg_1), any(vec2<bool>(any(vec4<bool>(false, false, true, var_0.b)), all(vec2<bool>(true, arg_2.a.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1239f, _wgslsmith_f_op_f32(sign(253f))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -357f)), !(!vec2<bool>(false, var_0.b)))), vec2<i32>(~(-arg_0.x), max(firstTrailingBit(1i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)))));
    global2 = array<Struct_1, 2>();
    var var_3 = _wgslsmith_f_op_f32(504f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f) + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47832u, 29u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1006f)))));
    return ~arg_0.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = Struct_2(~(~u_input.b.x), global1[_wgslsmith_index_u32(u_input.b.x << (_wgslsmith_div_u32(~_wgslsmith_sub_u32(36828u, arg_2), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, 1u, 17805u), vec4<u32>(59759u, 4294967295u, arg_2, 4294967295u)), firstTrailingBit(u_input.b.x))) % 32u), 25u)]);
    let var_1 = -3702f;
    var var_2 = !vec3<bool>(var_0.b.b || !arg_0, !var_0.b.b, any(select(arg_1.a.zy, arg_1.a.ww, false)));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~(~arg_2)), 2u)];
    global2 = array<Struct_1, 2>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * 1004f)))), func_4(false, Struct_3(vec4<bool>(false, true, true, true), Struct_1(1000f, false, vec2<f32>(global0[_wgslsmith_index_u32(15439u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec2<i32>(-2147483647i, -2147483647i)), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), false), ~5480u, func_1(vec4<i32>(u_input.a.x, -31458i, 2147483647i, u_input.a.x), -925f, Struct_4(vec3<bool>(false, false, false)))) != true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1310f, global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 735f)))), u_input.a.yz & max(min(vec2<i32>(u_input.a.x, -76127i), vec2<i32>(u_input.a.x, -1i)), vec2<i32>(10491i, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 29u)], 501f, global0[_wgslsmith_index_u32(0u, 29u)], 1643f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], -112f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], 2015f, -1215f, -1000f)), vec4<bool>(true, true, false, true))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_f32(702f - 897f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), _wgslsmith_f_op_f32(func_2())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1036f - _wgslsmith_f_op_f32(f32(-1f) * -1894f)), global0[_wgslsmith_index_u32(countOneBits(min(0u, u_input.b.x)), 29u)]) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(401u, 29u)])))))));
    global2 = array<Struct_1, 2>();
    global1 = array<Struct_1, 25>();
    global2 = array<Struct_1, 2>();
    var var_1 = Struct_1(var_0.c.x, !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]) < _wgslsmith_f_op_f32(select(1632f, _wgslsmith_f_op_f32(abs(174f)), !var_0.b.b))), _wgslsmith_div_vec2_f32(vec2<f32>(912f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)] * 161f)), var_0.b.c), reverseBits(u_input.a.zy));
    var var_2 = global2[_wgslsmith_index_u32(0u, 2u)];
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d.x, abs(-var_0.b.d.x), firstTrailingBit(1i), _wgslsmith_mod_i32(u_input.a.x, var_1.d.x)), min(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.d.x, -1i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, -100i, var_2.d.x)), firstLeadingBit(vec4<i32>(50966i, var_1.d.x, var_1.d.x, 9789i))), abs(vec4<i32>(-2147483647i, var_0.b.d.x, var_0.b.d.x, 1i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), vec4<i32>(~(-1i), firstTrailingBit(7979i), _wgslsmith_mod_i32(var_0.b.d.x, var_1.d.x), 21119i) << (select(u_input.b, u_input.b, !var_0.a) % vec4<u32>(32u))), u_input.b.x, u_input.b.x, u_input.b.yw, vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 29u)]) * var_0.b.c.x), global0[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(trunc(var_1.c.x))));
}

