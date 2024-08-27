struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(1i, 2147483647i, -19483i, 18882i), -522f, false, vec4<f32>(1000f, 478f, 2016f, -284f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), i32(-2147483648)), 1182f, true, vec4<f32>(-1790f, -1000f, -892f, 782f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, -1i, 58243i, i32(-2147483648)), 884f, false, vec4<f32>(-878f, 191f, 106f, 961f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-21312i, -11701i, 1i, i32(-2147483648)), 2076f, false, vec4<f32>(-979f, 548f, 1696f, 1030f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-16237i, -19803i, 1i, 0i), -2395f, false, vec4<f32>(1567f, -1000f, -2169f, -1034f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(42420i, 13306i, -30358i, 17891i), -741f, false, vec4<f32>(1000f, 716f, 1094f, -359f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(16081i, -1i, 0i, -46370i), 1200f, true, vec4<f32>(268f, 872f, -510f, 1521f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i), -2269f, false, vec4<f32>(-117f, -147f, 1000f, -1632f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 58731i), 321f, false, vec4<f32>(-119f, 1103f, -195f, 415f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), 592f, false, vec4<f32>(-2439f, -967f, 617f, 726f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, -37944i), 1443f, false, vec4<f32>(671f, 1057f, 924f, 700f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(0i, -22045i, 10518i, 1i), 386f, false, vec4<f32>(-723f, -1000f, 122f, -832f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(0i, 12405i, -1i, -1i), -141f, false, vec4<f32>(487f, 1000f, 524f, 505f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(25046i, 1i, -25653i, 19403i), 140f, true, vec4<f32>(-1662f, -1174f, 1416f, -883f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-1i, -1i, 0i, 1i), 1032f, false, vec4<f32>(366f, 1144f, 1134f, -101f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -2049i, -1i), -1331f, true, vec4<f32>(-1054f, 1161f, -361f, 511f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(2678i, i32(-2147483648), -6315i, -45039i), -868f, false, vec4<f32>(-1000f, -163f, 1208f, -1000f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-48171i, i32(-2147483648), -7127i, -13788i), 1501f, true, vec4<f32>(-1962f, -185f, 487f, -862f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(7774i, 67i, 1i, 38897i), -1682f, true, vec4<f32>(-1000f, 1000f, 890f, 1303f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -8810i), -549f, true, vec4<f32>(-363f, 2730f, -555f, -408f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(7942i, -1i, 74010i, -24225i), 1476f, true, vec4<f32>(582f, -401f, 943f, 1169f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), -17630i, 21647i, 2147483647i), 539f, false, vec4<f32>(714f, -404f, 522f, -1626f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-14886i, -48667i, -4304i, 0i), 708f, false, vec4<f32>(-1176f, -157f, -484f, -151f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(54683i, -14898i, 0i, 21253i), -201f, true, vec4<f32>(-452f, 1843f, -119f, 877f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(56027i, 2147483647i, 19534i, i32(-2147483648)), 1555f, true, vec4<f32>(209f, -560f, 504f, 139f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), -182f, true, vec4<f32>(363f, -1000f, 1752f, 806f), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-12376i, -9814i, 33082i, -24586i), -414f, true, vec4<f32>(802f, -1000f, -611f, 2088f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, 44112i, -1i, 18936i), 858f, true, vec4<f32>(-318f, -1581f, 456f, 1257f), vec3<bool>(true, false, true)));

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(12388i, 0i, 7867i, i32(-2147483648)), -677f, true, vec4<f32>(-208f, -257f, 538f, 493f), vec3<bool>(false, false, true));

var<private> global3: array<vec2<i32>, 7>;

var<private> global4: array<i32, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> bool {
    var var_0 = arg_0.e.zy;
    global0 = array<Struct_1, 28>();
    let var_1 = arg_0.a;
    let var_2 = arg_0.c;
    var var_3 = arg_1.x;
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = reverseBits(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, 1u, ~firstLeadingBit(4294967295u))));
    var var_1 = arg_1.b;
    var var_2 = global0[_wgslsmith_index_u32(min(52124u, ~4294967295u), 28u)];
    var var_3 = arg_1;
    var var_4 = Struct_1(vec4<i32>(-min(var_3.a.x, var_3.a.x), arg_2.x ^ 1i, -min(arg_1.a.x << (var_0.x % 32u), -18046i), -3497i), var_3.b, any(!select(select(vec4<bool>(false, var_2.e.x, true, var_2.c), vec4<bool>(global2.c, false, var_3.e.x, global2.c), vec4<bool>(global2.c, var_2.e.x, var_3.c, arg_1.e.x)), select(vec4<bool>(arg_1.c, arg_1.e.x, arg_1.e.x, true), vec4<bool>(global2.c, var_3.c, true, var_3.e.x), false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1403f, 355f, _wgslsmith_f_op_f32(floor(arg_0.x)), var_3.b) * var_3.d))), select(arg_1.e, vec3<bool>(all(!vec4<bool>(false, arg_1.c, var_3.e.x, var_3.e.x)), true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, global2.c), false))), arg_1.e));
    return arg_1.c;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(abs(~9667u), 28u)];
    var var_1 = -558f;
    var var_2 = !(!select(vec4<bool>(!var_0.c, arg_0.a.x <= 0i, !global2.e.x, func_2(Struct_1(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], 1i, global2.a.x, -12500i), global2.b, false, vec4<f32>(-346f, 1548f, arg_0.b, 713f), vec3<bool>(false, true, false)), vec4<u32>(4294967295u, 59829u, 8942u, 1u), global2.e.xz)), !vec4<bool>(arg_0.e.x, global2.c, false, true), select(!vec4<bool>(false, false, arg_0.e.x, true), select(vec4<bool>(arg_0.e.x, true, true, var_0.c), vec4<bool>(false, false, false, true), vec4<bool>(var_0.c, var_0.e.x, global2.e.x, arg_0.c)), !vec4<bool>(var_0.e.x, var_0.c, true, true))));
    var var_3 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-global2.d.x));
    global1 = _wgslsmith_mod_u32(firstLeadingBit(~(~1u)), ~_wgslsmith_mod_u32(1u, ~max(41676u, 17575u)));
    return all(vec3<bool>(!func_3(_wgslsmith_f_op_vec3_f32(trunc(global2.d.ywz)), Struct_1(vec4<i32>(28092i, -18581i, 20389i, u_input.b), var_3.x, global2.c, arg_0.d, vec3<bool>(false, arg_0.c, var_2.x)), -global3[_wgslsmith_index_u32(51461u, 7u)]), all(vec4<bool>(global2.e.x, true, var_2.x, false)) & true, !var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(~50928u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), ~1u, max(67495u, 46619u), _wgslsmith_add_u32(4197u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))) >> (0u % 32u), 28u)];
    let var_0 = arg_1;
    var var_1 = arg_1.d.x;
    var var_2 = _wgslsmith_mult_i32(var_0.a.x, abs(global4[_wgslsmith_index_u32(8796u, 8u)]));
    let var_3 = Struct_1(~firstLeadingBit(min(vec4<i32>(var_0.a.x, 40534i, -29646i, -15548i), arg_0.a) << (select(vec4<u32>(4294967295u, 1u, 3665u, 1u), vec4<u32>(4294967295u, 1u, 0u, 1u), true) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-var_0.d.x), all(var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), -888f, _wgslsmith_div_f32(arg_0.d.x, -560f), _wgslsmith_f_op_f32(-arg_1.b))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, -795f, global2.d.x, var_0.d.x))))))), vec3<bool>(func_2(arg_1, ~(~vec4<u32>(41924u, 9425u, 4294967295u, 0u)), !(!arg_2)), select(false && arg_1.e.x, arg_0.c, !global2.c), !(arg_1.a.x >= -arg_0.a.x)));
    return Struct_1(_wgslsmith_sub_vec4_i32(abs(-abs(vec4<i32>(arg_0.a.x, u_input.a, 37164i, u_input.b))), var_3.a), _wgslsmith_f_op_f32(f32(-1f) * -848f), !select(arg_0.c, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, 365f, global2.d.x)), arg_0, global2.a.ww), !(!var_0.e.x)), vec4<f32>(-813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1319f * var_3.b)), 392f, _wgslsmith_f_op_f32(-var_3.d.x)), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 7>();
    let var_0 = global2.d.wxz;
    let var_1 = -33991i > global2.a.x;
    global0 = array<Struct_1, 28>();
    let var_2 = func_4(global0[_wgslsmith_index_u32(48646u, 28u)], Struct_1(~vec4<i32>(global4[_wgslsmith_index_u32(1u, 8u)], abs(global4[_wgslsmith_index_u32(4294967295u, 8u)]), global2.a.x, u_input.b), -1000f, true, global2.d, select(select(global2.e, vec3<bool>(true, true, true), var_1), select(!global2.e, vec3<bool>(false, false, true), true), vec3<bool>(func_1(global0[_wgslsmith_index_u32(9825u, 28u)]), global2.c, !global2.e.x))), vec2<bool>(!var_1, false));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~_wgslsmith_div_i32(32801i, min(-66649i, global4[_wgslsmith_index_u32(89470u, 8u)])), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-22078i, 2147483647i, global4[_wgslsmith_index_u32(0u, 8u)], global2.a.x), var_2.a ^ vec4<i32>(-2147483647i, 2147483647i, global4[_wgslsmith_index_u32(4294967295u, 8u)], global2.a.x)), i32(-1i) * -49968i, all(select(vec4<bool>(var_1, true, var_2.c, var_1), vec4<bool>(false, var_1, false, true), var_3.e.x)))), -var_2.a);
}

