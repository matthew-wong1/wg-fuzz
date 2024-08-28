struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<f32>(-1241f, -1379f, -458f, 1053f), vec3<f32>(-1367f, 170f, -1000f), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(527f, 154f, 1065f, -617f), vec3<f32>(239f, -503f, 2081f), 28943i, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(489f, -842f, -892f, -3148f), vec3<f32>(-278f, 769f, 749f), i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-501f, -194f, -728f, -704f), vec3<f32>(-1192f, 1000f, -772f), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1197f, 338f, -825f, 620f), vec3<f32>(-216f, 1000f, -1425f), i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-1057f, 271f, 880f, 553f), vec3<f32>(1181f, -397f, -657f), 7363i, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-1109f, -705f, -1037f, -1287f), vec3<f32>(2571f, 2366f, -108f), -1i, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(716f, -129f, -969f, -400f), vec3<f32>(-1176f, 303f, -1741f), 26130i, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(167f, 1479f, 190f, 2498f), vec3<f32>(-795f, 212f, -162f), 2147483647i, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(-192f, -440f, 413f, 640f), vec3<f32>(1358f, -281f, -1286f), i32(-2147483648), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(1000f, 1112f, 1397f, 612f), vec3<f32>(2699f, 426f, 713f), -5676i, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(229f, -318f, -632f, -1394f), vec3<f32>(975f, -1000f, -1129f), 53220i, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(334f, 436f, -413f, -1668f), vec3<f32>(780f, -132f, 729f), 2147483647i, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(124f, 403f, 1000f, 1754f), vec3<f32>(-1023f, 1402f, -968f), -3955i, vec3<bool>(true, true, false)), Struct_1(vec4<f32>(-339f, -430f, -132f, 1306f), vec3<f32>(-105f, 513f, 1148f), 2147483647i, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(628f, -455f, 286f, -135f), vec3<f32>(473f, 261f, -1496f), 26160i, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(590f, 1552f, 162f, -2084f), vec3<f32>(-524f, 665f, -1391f), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-440f, 2210f, 918f, 195f), vec3<f32>(2529f, 111f, -785f), -1i, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1543f, -1028f, 680f, 720f), vec3<f32>(-315f, 417f, -540f), 51670i, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(1100f, 1289f, 675f, 237f), vec3<f32>(1002f, 1355f, -955f), -1i, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-1685f, 1413f, 1186f, -234f), vec3<f32>(-943f, 1379f, 174f), i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-1216f, 1000f, 375f, -1199f), vec3<f32>(-229f, -427f, 134f), 24607i, vec3<bool>(true, true, false)), Struct_1(vec4<f32>(173f, 565f, 740f, -576f), vec3<f32>(-1019f, 1699f, 156f), -35092i, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(120f, -552f, -932f, -1121f), vec3<f32>(-168f, -903f, 173f), -1i, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(-715f, 1666f, 1000f, -413f), vec3<f32>(865f, -1000f, 1104f), 13431i, vec3<bool>(true, true, false)), Struct_1(vec4<f32>(444f, -902f, -805f, 1536f), vec3<f32>(-1976f, -1122f, -674f), 2147483647i, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(848f, 537f, 411f, -686f), vec3<f32>(546f, 220f, -1132f), 0i, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-295f, 293f, -445f, 1103f), vec3<f32>(1031f, 659f, 1279f), 45361i, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(2720f, -792f, 166f, 445f), vec3<f32>(-683f, -442f, -2187f), 2147483647i, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-1876f, 357f, 555f, 648f), vec3<f32>(-502f, -830f, -1000f), i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(2162f, -1000f, 561f, 1039f), vec3<f32>(-993f, 1117f, -158f), 5226i, vec3<bool>(true, false, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.c, arg_1.b.c, 2147483647i), vec3<i32>(arg_1.b.c, -41125i, 47803i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -645i, arg_1.b.c), vec3<i32>(1i, 3843i, arg_1.b.c))), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, arg_1.b.c, arg_1.b.c)), abs(vec3<i32>(-1i, arg_1.b.c, arg_1.b.c)))), 1i);
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(43507i, arg_1.b.c), _wgslsmith_mod_i32(-49621i, ~var_0) | -reverseBits(arg_1.b.c)), var_0, countOneBits(arg_1.b.c));
    let var_2 = -var_1.yx;
    global0 = array<Struct_1, 31>();
    let var_3 = arg_1.b;
    return select(arg_1.b.d.yx, !(!vec2<bool>(all(vec4<bool>(arg_1.b.d.x, false, arg_0.x, true)), arg_1.b.d.x)), !(min(firstLeadingBit(-1i), ~var_0) >= ((-2147483647i ^ arg_1.b.c) >> ((u_input.a.x & u_input.a.x) % 32u))));
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = vec4<bool>(true | any(vec4<bool>(true, true, true, true)), true, !all(vec2<bool>(false, any(vec2<bool>(true, true)))), all(select(vec2<bool>(true, true), func_3(select(vec2<bool>(true, false), vec2<bool>(true, false), false), Struct_2(vec4<f32>(297f, -538f, -454f, 1000f), global0[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(802f, -579f, -298f, -198f) + vec4<f32>(-206f, 322f, 973f, 230f))), func_3(vec2<bool>(true, true), Struct_2(vec4<f32>(-1061f, -757f, -1285f, 1071f), global0[_wgslsmith_index_u32(60130u, 31u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-522f, -1718f, -2714f, 591f)))))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~min(1u, u_input.a.x), 1u, ~73910u | _wgslsmith_mult_u32(_wgslsmith_mult_u32(24388u, u_input.a.x), 44676u)), firstTrailingBit(firstTrailingBit(vec4<u32>(~arg_0.x, arg_0.x, countOneBits(u_input.a.x), arg_0.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(min(arg_2, -1720f))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(exp2(arg_2))), 669f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1801f, -1451f, arg_2, 709f))))))), vec3<f32>(852f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1035f, 154f)) + _wgslsmith_f_op_f32(1104f + arg_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 2147483647i, -1i, -7495i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-242i, _wgslsmith_clamp_i32(-2147483647i, 57517i, 1i), _wgslsmith_add_i32(0i, -35920i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(37874i, 0i, 13927i), ~vec3<i32>(0i, 1i, -1i)))), select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, true), true), select(vec3<bool>(!arg_0, arg_0, arg_0 | arg_0), !(!vec3<bool>(arg_0, true, true)), vec3<bool>(arg_0 == arg_0, 1861f >= arg_2, arg_0)), _wgslsmith_div_u32(u_input.a.x, 22167u) > (reverseBits(arg_1.x) ^ _wgslsmith_div_u32(65757u, 4294967295u))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = -50949i;
    let var_1 = func_4(arg_2, func_2(~vec4<u32>(u_input.a.x, ~4294967295u, select(u_input.a.x, 16540u, false), ~49864u)), arg_0.a.x);
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = all(!vec4<bool>(!func_4(arg_2, vec4<u32>(4294967295u, 16296u, u_input.a.x, 0u), 840f).d.x, false != any(arg_0.b.d.xz), arg_0.b.d.x, !select(arg_2, var_1.d.x, false)));
    return ~select(abs(-vec2<i32>(var_2.b.c, -1i)), ~(~(vec2<i32>(-18262i, var_0) << (vec2<u32>(u_input.a.x, 13561u) % vec2<u32>(32u)))), func_4(_wgslsmith_sub_i32(var_0, 13075i) >= -var_0, vec4<u32>(0u >> (1u % 32u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(1u, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f - -878f))).d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(146f));
    let var_1 = vec2<i32>(countOneBits(i32(-1i) * -2147483647i), -(i32(-1i) * -5969i)) | _wgslsmith_div_vec2_i32(-(vec2<i32>(1i, 1i) | func_1(Struct_2(vec4<f32>(-478f, -1075f, 830f, -1247f), global0[_wgslsmith_index_u32(0u, 31u)]), -473f, false, global0[_wgslsmith_index_u32(35340u, 31u)])), vec2<i32>(~firstLeadingBit(2147483647i), 10608i));
    let var_2 = func_4(false, firstTrailingBit(~vec4<u32>(0u, 4294967295u >> (u_input.a.x % 32u), firstLeadingBit(u_input.a.x), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-705f, 311f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f * -331f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a.yy, var_2.a.xx) - _wgslsmith_f_op_vec2_f32(var_2.b.yx + vec2<f32>(864f, var_2.b.x))), vec2<f32>(_wgslsmith_f_op_f32(max(1520f, var_2.b.x)), 315f)))) - vec2<f32>(384f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.a.x, 329f, false)), _wgslsmith_f_op_f32(min(1494f, var_2.b.x))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 909f, 922f, var_3.x) * _wgslsmith_f_op_vec4_f32(-var_2.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) + vec4<f32>(655f, var_2.a.x, -1859f, -1568f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.b, var_2.d.x))))), var_1.x, vec3<bool>(false, var_2.d.x, var_2.d.x & true)));
    var_3 = _wgslsmith_f_op_vec2_f32(var_4.a.xw + var_4.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(-1606f, reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_div_u32(29567u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
}

