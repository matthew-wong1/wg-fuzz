struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(10212i, 1i, -20872i, 1i);

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: array<vec4<u32>, 4>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.b), -1765f, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.c & 36167u), max(vec2<u32>(4294967295u, arg_0.c), abs(vec2<u32>(u_input.c, 1u))) ^ vec2<u32>(abs(arg_0.c), _wgslsmith_clamp_u32(84613u, arg_0.c, u_input.c))), vec3<f32>(-288f, arg_0.b, 1527f));
    global1 = array<vec4<u32>, 28>();
    let var_1 = arg_0;
    global2 = array<vec4<u32>, 4>();
    var var_2 = abs(global0.x);
    return ~_wgslsmith_clamp_u32(min(~0u, ~89121u), ~u_input.c, 1816u) ^ 0u;
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = false;
    global0 = _wgslsmith_mult_vec4_i32(-(-vec4<i32>(u_input.a.x, global0.x, 9528i, -49461i) >> (_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(arg_0, 4u)], vec4<u32>(22990u, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u))), ~(~select(vec4<i32>(-32453i, global0.x, 1278i, u_input.b), vec4<i32>(-2147483647i, global0.x, 17484i, 0i), true))) << (~countOneBits(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.c, 82221u)), 4u)]) % vec4<u32>(32u));
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, arg_0)), ~(vec3<u32>(u_input.c, 4294967295u, 34975u) | vec3<u32>(0u, 1u, 1u))));
    var var_2 = any(vec3<bool>(select(true, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, true))), true, !(!(48680u < u_input.c))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-412f))));
    return ~abs(var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.c == func_4(func_3(arg_1));
    global1 = array<vec4<u32>, 28>();
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(1371f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) + -1054f)))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 497f, 1000f) - vec3<f32>(1509f, -1657f, -147f)))), _wgslsmith_f_op_vec3_f32(arg_1.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1403f, var_1.d.x))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-676f)) * _wgslsmith_f_op_f32(sign(-917f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x - 1802f) - _wgslsmith_f_op_f32(-arg_0.a)))), -435f, u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(222f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(629f + 831f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-870f, var_1.a, -381f)))), arg_1.d))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(-arg_0.b), max(func_3(arg_0), arg_2.c), arg_0.d), arg_2);
    global0 = vec4<i32>(i32(-1i) * -abs(-10288i), -16957i & _wgslsmith_dot_vec2_i32(min(global0.wy, vec2<i32>(u_input.b, 18790i)), -global0.yy), _wgslsmith_dot_vec3_i32(~(-global0.yzw), _wgslsmith_clamp_vec3_i32(~global0.www, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 10397i, 2147483647i), global0.xyx), ~u_input.a)), global0.x) >> ((~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, 4294967295u), 28u)] & (global2[_wgslsmith_index_u32(4294967295u, 4u)] | (global1[_wgslsmith_index_u32(~u_input.c, 28u)] | min(vec4<u32>(arg_2.c, var_0.c, u_input.c, 43876u), global1[_wgslsmith_index_u32(50630u, 28u)])))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(arg_0.a + 839f);
    let var_2 = ~(-14795i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(-1378f))))), var_0.a)), 42407u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-207f, 117f, arg_2.a), _wgslsmith_f_op_vec3_f32(select(arg_2.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, -204f, -191f)), vec3<f32>(-1000f, arg_2.a, -658f), vec3<bool>(false, false, true))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)))), !vec3<bool>(select(false, true, true), arg_1.d.x <= 274f, select(true, false, false)))));
    return var_0;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(804f, -494f)));
    let var_1 = func_5(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-426f, 224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -469f), -1408f, -825f)), Struct_1(-505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(678f))), u_input.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -601f, -806f)))))), func_2(Struct_1(_wgslsmith_f_op_f32(-1152f - _wgslsmith_f_op_f32(-866f * -1569f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-440f - -583f))), ~(~u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(374f, 961f, -142f))))), func_2(func_2(func_2(Struct_1(-588f, 991f, 53020u, vec3<f32>(-1000f, 1305f, 156f)), Struct_1(1457f, 1000f, 0u, vec3<f32>(1005f, -996f, 897f))), func_2(Struct_1(1026f, 445f, u_input.c, vec3<f32>(-531f, 928f, -576f)), Struct_1(135f, 479f, u_input.c, vec3<f32>(1686f, 795f, 1000f)))), func_2(Struct_1(942f, -263f, 45510u, vec3<f32>(-627f, -1000f, 1546f)), Struct_1(1032f, -723f, 4294967295u, vec3<f32>(-634f, -848f, 725f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2328f * _wgslsmith_f_op_f32(min(1122f, -898f))) - _wgslsmith_f_op_f32(-1464f - -539f)), 1184f, firstLeadingBit(max(abs(71457u), _wgslsmith_mod_u32(u_input.c, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(870f)) * -1000f), -1000f)));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(func_2(var_1, Struct_1(-144f, -579f, u_input.c, vec3<f32>(var_1.d.x, 383f, 1188f))).d.x)))) <= -257f, true);
    let var_3 = func_2(Struct_1(var_1.d.x, _wgslsmith_div_f32(-343f, -2433f), 4294967295u, vec3<f32>(-241f, -1183f, _wgslsmith_f_op_f32(-1116f + var_1.b))), func_2(var_1, Struct_1(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1736f + var_1.b)), ~118839u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) + var_1.d))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2940f - var_3.a)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(func_2(Struct_1(var_1.b, var_3.d.x, var_3.c, vec3<f32>(471f, var_1.a, 881f)), Struct_1(var_3.b, 256f, var_3.c, var_1.d)).a, 199f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 28>();
    var var_0 = vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, 1u), 4294967295u, _wgslsmith_add_u32(65597u, 1u)), ~u_input.c);
    var var_1 = 34883i;
    var var_2 = !select(!vec2<bool>(true, 44369u != var_0.x), !vec2<bool>(true, func_1()), vec2<bool>(true, true));
    var var_3 = vec4<i32>(abs(u_input.b) >> ((1u ^ u_input.c) % 32u), u_input.a.x, (~select(global0.x, global0.x, true) ^ 1i) ^ u_input.a.x, -1i);
    var_3 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(abs(2147483647i), -1i, -24261i, -49214i)), abs(firstLeadingBit(vec4<i32>(global0.x, -1i, global0.x, var_3.x) & vec4<i32>(u_input.a.x, global0.x, 0i, -32494i)) | abs(vec4<i32>(0i, -2147483647i, u_input.a.x, -1i))));
    let var_4 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-109f, -331f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -876f, func_5(func_5(Struct_1(151f, _wgslsmith_f_op_f32(ceil(-2257f)), abs(20770u), vec3<f32>(-479f, -328f, -374f)), func_5(func_5(Struct_1(882f, 115f, u_input.c, vec3<f32>(478f, 1742f, 607f)), Struct_1(-738f, -2095f, u_input.c, vec3<f32>(-1138f, 295f, -1660f)), Struct_1(763f, -147f, u_input.c, vec3<f32>(-947f, 1758f, -374f))), func_2(Struct_1(-853f, 1014f, 1u, vec3<f32>(1000f, -560f, 567f)), Struct_1(-516f, 817f, 1u, vec3<f32>(-624f, 1093f, 1015f))), Struct_1(-482f, -802f, var_0.x, vec3<f32>(-842f, 1000f, -1197f))), Struct_1(-470f, _wgslsmith_f_op_f32(-604f - 903f), 78958u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, -1967f, -1012f) - vec3<f32>(293f, -2021f, -630f)))), func_5(Struct_1(-464f, _wgslsmith_f_op_f32(round(237f)), abs(var_0.x), vec3<f32>(-209f, 120f, 1000f)), func_2(Struct_1(561f, -717f, 43891u, vec3<f32>(1000f, -883f, 388f)), Struct_1(2410f, -407f, u_input.c, vec3<f32>(349f, 128f, 281f))), func_2(func_5(Struct_1(-223f, 1000f, 1u, vec3<f32>(-254f, -1000f, 1437f)), Struct_1(806f, 1536f, 6539u, vec3<f32>(1287f, 1696f, 1108f)), Struct_1(1000f, -518f, u_input.c, vec3<f32>(264f, 608f, 238f))), Struct_1(-552f, -665f, u_input.c, vec3<f32>(-492f, 1311f, -2030f)))), func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -165f), func_5(Struct_1(-811f, -1011f, var_0.x, vec3<f32>(-834f, 1548f, 353f)), Struct_1(-862f, -1389f, var_0.x, vec3<f32>(1000f, -1218f, -1398f)), Struct_1(705f, 568f, u_input.c, vec3<f32>(678f, -252f, 1000f))).b, var_0.x << (42820u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, -838f, -1669f))), func_5(Struct_1(808f, 1076f, u_input.c, vec3<f32>(739f, -607f, 1339f)), func_2(Struct_1(348f, -126f, var_0.x, vec3<f32>(-172f, -936f, -1703f)), Struct_1(-2522f, -167f, var_0.x, vec3<f32>(-328f, -106f, 1276f))), Struct_1(-899f, 1736f, 30900u, vec3<f32>(372f, 1812f, 743f))))).b);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

