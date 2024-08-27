struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -19334i;

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(376f, false, vec2<u32>(61890u, 13605u), Struct_1(vec4<f32>(201f, -1000f, 1408f, 1000f), vec3<i32>(15796i, 1i, i32(-2147483648)), 1i, vec2<i32>(15269i, 2147483647i))), Struct_4(1000f, true, vec2<u32>(118132u, 30624u), Struct_1(vec4<f32>(-344f, -507f, 2863f, -1246f), vec3<i32>(1i, 10535i, 28010i), 14739i, vec2<i32>(1i, 47358i))), Struct_4(2445f, false, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(2287f, 589f, 525f, -1373f), vec3<i32>(9098i, -3272i, -42044i), 2147483647i, vec2<i32>(i32(-2147483648), 31283i))), Struct_4(174f, true, vec2<u32>(4294967295u, 52970u), Struct_1(vec4<f32>(726f, -606f, 1095f, 366f), vec3<i32>(-4460i, 1i, -26856i), 2147483647i, vec2<i32>(2147483647i, -1i))), Struct_4(-1147f, false, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(-399f, 188f, -1000f, 382f), vec3<i32>(2147483647i, 2566i, 23841i), -1i, vec2<i32>(2147483647i, -8426i))), Struct_4(-578f, false, vec2<u32>(4294967295u, 78752u), Struct_1(vec4<f32>(-818f, -2117f, -143f, -1257f), vec3<i32>(i32(-2147483648), 2147483647i, 0i), -4764i, vec2<i32>(-1i, 2976i))), Struct_4(925f, false, vec2<u32>(1u, 0u), Struct_1(vec4<f32>(172f, -1927f, -949f, 741f), vec3<i32>(-1i, -675i, 9762i), i32(-2147483648), vec2<i32>(2147483647i, 70382i))), Struct_4(507f, false, vec2<u32>(14703u, 1u), Struct_1(vec4<f32>(-384f, 126f, -1101f, 309f), vec3<i32>(2147483647i, 2147483647i, 2147483647i), -54251i, vec2<i32>(37904i, 0i))), Struct_4(455f, true, vec2<u32>(4294967295u, 40807u), Struct_1(vec4<f32>(707f, -853f, 123f, 1337f), vec3<i32>(-3999i, 151i, 35136i), 0i, vec2<i32>(9032i, -2743i))), Struct_4(-989f, true, vec2<u32>(4294967295u, 47978u), Struct_1(vec4<f32>(-644f, 1436f, -1162f, 863f), vec3<i32>(6174i, -1i, 0i), -1i, vec2<i32>(-32692i, -1i))), Struct_4(-665f, true, vec2<u32>(4294967295u, 40859u), Struct_1(vec4<f32>(-402f, 968f, 1610f, 265f), vec3<i32>(1i, 2147483647i, 2147483647i), 1i, vec2<i32>(-1i, 27304i))), Struct_4(441f, true, vec2<u32>(0u, 1u), Struct_1(vec4<f32>(-341f, -592f, 880f, -1160f), vec3<i32>(47564i, i32(-2147483648), 2147483647i), -2959i, vec2<i32>(1i, -44292i))), Struct_4(-3005f, false, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(2518f, 467f, 816f, 1000f), vec3<i32>(-1i, 1i, 59418i), -23125i, vec2<i32>(-25122i, 1i))), Struct_4(1413f, false, vec2<u32>(39535u, 4294967295u), Struct_1(vec4<f32>(-273f, -104f, 269f, 645f), vec3<i32>(26387i, 2147483647i, 2147483647i), 0i, vec2<i32>(87449i, i32(-2147483648)))), Struct_4(-1643f, true, vec2<u32>(76642u, 1u), Struct_1(vec4<f32>(628f, 326f, -968f, -1355f), vec3<i32>(41874i, 0i, i32(-2147483648)), i32(-2147483648), vec2<i32>(0i, -67049i))), Struct_4(1524f, true, vec2<u32>(1u, 0u), Struct_1(vec4<f32>(-137f, -1000f, -776f, -453f), vec3<i32>(0i, 0i, -13919i), 1i, vec2<i32>(-11569i, 16673i))), Struct_4(393f, false, vec2<u32>(25671u, 0u), Struct_1(vec4<f32>(-1000f, 1690f, 1245f, 223f), vec3<i32>(31682i, -1i, 2147483647i), -39984i, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_4(892f, true, vec2<u32>(29406u, 1u), Struct_1(vec4<f32>(1174f, 704f, 1000f, -712f), vec3<i32>(2147483647i, 1i, 2147483647i), -47465i, vec2<i32>(49377i, 32577i))), Struct_4(229f, false, vec2<u32>(55870u, 4294967295u), Struct_1(vec4<f32>(-2041f, -2102f, -478f, 115f), vec3<i32>(1i, 17053i, 1i), 18610i, vec2<i32>(-1i, 24830i))), Struct_4(1613f, false, vec2<u32>(4294967295u, 13005u), Struct_1(vec4<f32>(-1000f, -1570f, 443f, 1530f), vec3<i32>(-67015i, 0i, 27421i), 0i, vec2<i32>(11407i, -1i))), Struct_4(1050f, false, vec2<u32>(21538u, 0u), Struct_1(vec4<f32>(421f, -566f, 524f, -853f), vec3<i32>(i32(-2147483648), 5547i, 0i), 1i, vec2<i32>(2147483647i, 0i))), Struct_4(1039f, true, vec2<u32>(1u, 16619u), Struct_1(vec4<f32>(-293f, -385f, -1742f, -840f), vec3<i32>(33980i, 40646i, -1i), 1i, vec2<i32>(-1i, -1i))), Struct_4(-1042f, false, vec2<u32>(35276u, 47401u), Struct_1(vec4<f32>(1190f, -222f, 842f, -1261f), vec3<i32>(-48987i, -58742i, 14936i), -1i, vec2<i32>(-24059i, 1i))), Struct_4(-220f, true, vec2<u32>(0u, 1u), Struct_1(vec4<f32>(970f, 115f, -1517f, -1396f), vec3<i32>(23352i, 33522i, i32(-2147483648)), -39409i, vec2<i32>(1i, 3790i))), Struct_4(1066f, false, vec2<u32>(1u, 20819u), Struct_1(vec4<f32>(1000f, -382f, -1772f, -132f), vec3<i32>(58712i, 1i, 33142i), -823i, vec2<i32>(-22580i, 8802i))), Struct_4(-631f, false, vec2<u32>(32038u, 19094u), Struct_1(vec4<f32>(813f, -573f, -300f, 1137f), vec3<i32>(-31951i, -7514i, i32(-2147483648)), 3531i, vec2<i32>(-1i, 1i))));

var<private> global2: array<Struct_5, 14>;

var<private> global3: array<bool, 25>;

var<private> global4: i32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    return Struct_2(u_input.c);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec3<bool> {
    let var_0 = vec2<i32>(41596i, -(~_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(1i, u_input.b)))));
    var var_1 = firstTrailingBit(~u_input.a);
    let var_2 = vec3<i32>(-1i, u_input.b, var_0.x);
    let var_3 = 0i;
    let var_4 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    return select(!select(!select(vec3<bool>(global3[_wgslsmith_index_u32(17891u, 25u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 25u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 25u)], global3[_wgslsmith_index_u32(var_1.x, 25u)], true)), vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(60729u, 25u)], false, false)), var_2.x <= u_input.b, true), true), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 25u)], !(global3[_wgslsmith_index_u32(4294967295u, 25u)] | true), false), global3[_wgslsmith_index_u32(~var_1.x, 25u)]);
}

fn func_1() -> f32 {
    let var_0 = true;
    let var_1 = 1i;
    let var_2 = func_3(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2286f, 607f, 1659f, -1377f)) - vec4<f32>(-186f, -689f, 1754f, 477f)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-14276i, 2147483647i, var_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -2147483647i, var_1), vec3<i32>(-23819i, u_input.b, var_1)), ~vec3<i32>(-2147483647i, var_1, var_1)), _wgslsmith_dot_vec3_i32(vec3<i32>(81603i, var_1, u_input.b), vec3<i32>(2940i, var_1, 51611i)) | (i32(-1i) * -2147483647i), vec2<i32>(u_input.b, var_1)), -abs(vec2<i32>(51489i, u_input.b)), -616f), _wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(select(1592f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1289f - -699f), 1f)), true & ((var_1 > -1i) | false))));
    return 246f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + -893f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(871f * -549f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1549f))), -243f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(329f, 765f) * -656f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(567f)) * _wgslsmith_f_op_f32(floor(-1846f)))), _wgslsmith_f_op_f32(floor(-1704f))));
    var var_1 = Struct_5(_wgslsmith_sub_vec3_i32(vec3<i32>(-44342i, ~(~(-26569i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 20874i) << (vec3<u32>(u_input.a.x, u_input.c, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(-32892i, 30765i, u_input.b))), ~abs(reverseBits(vec3<i32>(1i, u_input.b, u_input.b)))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(34928u, u_input.a.x, 45555u), u_input.a.xxx), u_input.a.x), u_input.a)), 14u)];
    var_1 = Struct_5(vec3<i32>(-firstTrailingBit(u_input.b), -firstTrailingBit(~u_input.b), u_input.b));
    var var_3 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(344f, var_0.x, -105f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, -208f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-528f, var_0.x, 2793f, 508f))))), vec3<i32>(var_2.a.x, u_input.b, u_input.b | -1i), 1i, -_wgslsmith_sub_vec2_i32(var_2.a.yz, ~var_1.a.yy)), -var_2.a.yz, -741f);
    let var_4 = ~reverseBits(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 905f)))))));
}

