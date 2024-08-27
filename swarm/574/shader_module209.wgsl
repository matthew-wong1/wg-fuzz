struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-4754i, -13931i, -12711i, -6229i), vec4<i32>(-7396i, 4322i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 16537i, i32(-2147483648), 38645i), vec4<i32>(i32(-2147483648), 1i, -46952i, -24981i), vec4<i32>(1i, i32(-2147483648), -1i, 0i), vec4<i32>(-14830i, 39786i, 0i, 27560i), vec4<i32>(20075i, 18512i, -15583i, -1i), vec4<i32>(i32(-2147483648), -15107i, -13546i, 1i), vec4<i32>(7078i, -37147i, 7326i, -13589i), vec4<i32>(-19601i, 2147483647i, -106354i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -45653i, 13051i), vec4<i32>(-1i, 9337i, 38308i, 0i), vec4<i32>(0i, 51711i, -28033i, 0i));

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<i32>(1i, -32875i, 2147483647i), Struct_2(vec4<i32>(2147483647i, 1i, -40338i, 37680i), 1i, 48246u, vec4<f32>(-677f, 582f, 1272f, 1086f), 26012u)), Struct_3(vec3<i32>(28911i, -30453i, 43350i), Struct_2(vec4<i32>(2147483647i, 1i, 10395i, 11915i), i32(-2147483648), 1u, vec4<f32>(1000f, -1171f, 1000f, 743f), 67950u)), Struct_3(vec3<i32>(-1i, 64667i, -98980i), Struct_2(vec4<i32>(i32(-2147483648), 1i, 1i, i32(-2147483648)), -1i, 6714u, vec4<f32>(156f, 226f, 1310f, -776f), 19943u)), Struct_3(vec3<i32>(36132i, 24880i, 31933i), Struct_2(vec4<i32>(2147483647i, 1i, -94300i, -12319i), 10357i, 31583u, vec4<f32>(-404f, -1792f, -1000f, 1274f), 0u)), Struct_3(vec3<i32>(1i, 10742i, 1i), Struct_2(vec4<i32>(1i, 2147483647i, 9343i, -43864i), -40935i, 0u, vec4<f32>(-138f, 210f, -1000f, -1413f), 3866u)), Struct_3(vec3<i32>(1i, i32(-2147483648), -59336i), Struct_2(vec4<i32>(1i, 0i, 2147483647i, -43203i), 0i, 45791u, vec4<f32>(-122f, 1593f, -481f, -504f), 28254u)), Struct_3(vec3<i32>(-38873i, 1i, 0i), Struct_2(vec4<i32>(-1i, i32(-2147483648), 34241i, -30275i), 2147483647i, 5175u, vec4<f32>(-1629f, -2005f, -464f, 126f), 0u)), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), Struct_2(vec4<i32>(43780i, 1i, 2147483647i, 2147483647i), -20490i, 13226u, vec4<f32>(-187f, 186f, -724f, 2046f), 56262u)), Struct_3(vec3<i32>(i32(-2147483648), 25095i, -33918i), Struct_2(vec4<i32>(10651i, -79896i, -7602i, 2147483647i), 17802i, 0u, vec4<f32>(-2602f, 2057f, -841f, 1000f), 42617u)), Struct_3(vec3<i32>(35118i, -7006i, 0i), Struct_2(vec4<i32>(-49088i, -2974i, 2147483647i, 13864i), -66104i, 4294967295u, vec4<f32>(-1825f, -1287f, -308f, 933f), 4294967295u)), Struct_3(vec3<i32>(-6609i, 19032i, -1i), Struct_2(vec4<i32>(-5808i, 7842i, -1i, -26241i), -1i, 63122u, vec4<f32>(-923f, 402f, 609f, 747f), 27938u)), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), Struct_2(vec4<i32>(6068i, -1i, -16939i, -1i), 13939i, 1u, vec4<f32>(1072f, -105f, 198f, -1348f), 21422u)), Struct_3(vec3<i32>(0i, 2147483647i, 51548i), Struct_2(vec4<i32>(1i, 9544i, 2147483647i, 17199i), 37087i, 1u, vec4<f32>(462f, -836f, 343f, 884f), 1u)), Struct_3(vec3<i32>(0i, 2147483647i, 1i), Struct_2(vec4<i32>(36754i, 0i, -1i, -22014i), 1i, 0u, vec4<f32>(1607f, -772f, -708f, 325f), 1972u)), Struct_3(vec3<i32>(0i, -32912i, 3866i), Struct_2(vec4<i32>(-1i, -1i, -1i, -27305i), -50241i, 10515u, vec4<f32>(-164f, -315f, -2419f, 1323f), 7563u)), Struct_3(vec3<i32>(-22481i, i32(-2147483648), -27680i), Struct_2(vec4<i32>(-64419i, 11436i, 3527i, i32(-2147483648)), 2147483647i, 0u, vec4<f32>(-303f, -390f, 599f, 1521f), 4294967295u)), Struct_3(vec3<i32>(2147483647i, -1i, 0i), Struct_2(vec4<i32>(30740i, -1i, 0i, 0i), -1i, 13858u, vec4<f32>(-1564f, -321f, -295f, 107f), 0u)), Struct_3(vec3<i32>(-10449i, i32(-2147483648), -1i), Struct_2(vec4<i32>(35305i, 2147483647i, 5143i, 11806i), i32(-2147483648), 4294967295u, vec4<f32>(-747f, 672f, -259f, 1167f), 82783u)), Struct_3(vec3<i32>(-20218i, 16456i, 0i), Struct_2(vec4<i32>(-2243i, 34053i, -34291i, 32003i), 38091i, 4160u, vec4<f32>(-583f, 158f, -1350f, -428f), 1u)), Struct_3(vec3<i32>(14227i, 24531i, 2147483647i), Struct_2(vec4<i32>(918i, 11919i, -35023i, -18747i), 16851i, 4294967295u, vec4<f32>(-917f, -654f, -546f, 787f), 4294967295u)), Struct_3(vec3<i32>(2147483647i, -26207i, -7404i), Struct_2(vec4<i32>(16506i, 20439i, 15328i, 2523i), -20163i, 1u, vec4<f32>(-668f, 829f, -1214f, 1893f), 65298u)), Struct_3(vec3<i32>(18825i, 0i, -44222i), Struct_2(vec4<i32>(36872i, 18189i, -9845i, i32(-2147483648)), -1i, 60057u, vec4<f32>(922f, -383f, 978f, 644f), 0u)), Struct_3(vec3<i32>(12686i, -15357i, -15791i), Struct_2(vec4<i32>(-30111i, -1i, 3002i, 1i), 989i, 1u, vec4<f32>(1000f, -1000f, -1059f, 351f), 77496u)), Struct_3(vec3<i32>(0i, 2946i, 43410i), Struct_2(vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648)), -1i, 1u, vec4<f32>(-211f, 644f, -1201f, -1151f), 0u)), Struct_3(vec3<i32>(-1933i, 26456i, 23927i), Struct_2(vec4<i32>(-11296i, 7448i, 1i, 47096i), 1i, 10257u, vec4<f32>(1000f, 860f, -567f, 871f), 2261u)), Struct_3(vec3<i32>(-45215i, i32(-2147483648), 10528i), Struct_2(vec4<i32>(2147483647i, -42003i, 1i, 57423i), 31531i, 25017u, vec4<f32>(992f, -1040f, -485f, 1431f), 2948u)), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 25673i), Struct_2(vec4<i32>(i32(-2147483648), 23793i, 785i, -22063i), 22346i, 0u, vec4<f32>(650f, 529f, -250f, -139f), 0u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~0u, 27u)];
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-217f - var_0.b.d.x), -487f) - _wgslsmith_f_op_f32(-1045f + _wgslsmith_f_op_f32(-var_0.b.d.x))) + _wgslsmith_f_op_f32(min(1158f, 661f))));
    let var_3 = reverseBits(17257i);
    var var_4 = Struct_5(firstLeadingBit(select(vec3<u32>(_wgslsmith_add_u32(33313u, 0u), min(u_input.a, 16397u), 1u), select(~vec3<u32>(u_input.a, 36532u, 4294967295u), vec3<u32>(var_1, u_input.a, u_input.a) >> (vec3<u32>(var_1, u_input.a, 1u) % vec3<u32>(32u)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)))), Struct_1(vec4<i32>(-39339i, ~arg_0.x, min(var_0.a.x, global0.x), var_0.b.b), _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, arg_0.x), _wgslsmith_mult_i32(-10938i, -20515i)) << (min(var_1, 0u) % 32u), var_0.b.d.x, abs(var_1), !vec4<bool>(var_0.b.d.x <= -312f, true, all(vec3<bool>(false, true, false)), true)));
    return ~1u;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = countOneBits(30871i);
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, -arg_0.x ^ ~global0.x), global0.x);
    var var_2 = Struct_5(vec3<u32>(~(func_3(arg_0) ^ func_3(arg_0)), u_input.b, ~u_input.b), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 13u)], global0.x, -1562f, u_input.b, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))));
    var var_3 = var_2.b.c;
    var_0 = global0.x;
    return Struct_2(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(3421i, 1i, var_1.x, var_2.b.a.x), abs(var_2.b.a)) | vec4<i32>(abs(-1i), -20298i, global0.x, _wgslsmith_mod_i32(arg_0.x, 65671i))), _wgslsmith_mult_i32(-arg_0.x, global0.x | abs(26639i << (var_2.b.d % 32u))), 8764u, vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_f_op_f32(select(var_2.b.c, 1153f, true)), -560f, _wgslsmith_f_op_f32(171f + 2902f)), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~var_2.a, firstLeadingBit(vec3<u32>(4294967295u, var_2.a.x, 35949u))), _wgslsmith_add_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(30886u, 62664u, 4294967295u), var_2.a), var_2.a), vec3<u32>(~1399u, _wgslsmith_sub_u32(4294967295u, 4294967295u), ~var_2.b.d))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_0.a.xx;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(trunc(1327f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.c, 218f, true))))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.d.x, -582f, true)), arg_1.c, arg_1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.c)), arg_0.d.x, arg_0.d.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-477f, arg_1.c, arg_1.c))))))));
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(48780u, 27u)], _wgslsmith_mod_u32(~(~abs(4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 31345u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(27976u, u_input.a)))), arg_1);
    global0 = vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(-(~var_1.c.b), ~(~arg_0.a.x))), _wgslsmith_dot_vec3_i32(arg_0.a.xyw, firstTrailingBit(vec3<i32>(-7309i, -1i, arg_1.a.x))));
    let var_2 = _wgslsmith_dot_vec2_i32(min(-vec2<i32>(arg_1.b, var_1.c.a.x), -var_1.c.a.xz), vec2<i32>(var_1.c.b, var_1.a.a.x >> (u_input.b % 32u))) << (abs(_wgslsmith_div_u32(func_2(_wgslsmith_sub_vec2_i32(arg_0.a.wy, var_1.a.b.a.ww)).c, abs(0u))) % 32u);
    return Struct_2(reverseBits(-firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-15733i, -36768i, var_2, var_2), vec4<i32>(24046i, global0.x, -66154i, 2147483647i)))), var_1.a.b.a.x, 80237u, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.d.x, 1000f, var_1.a.b.d.x)), vec4<f32>(arg_1.c, -564f, 279f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.d, arg_0.d, var_1.c.e.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d - var_1.a.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, 1000f, 2178f, var_1.c.c)))), 42913u);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    global2 = array<Struct_3, 27>();
    global2 = array<Struct_3, 27>();
    return func_4(func_2(select(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(global0.x, global0.x)), min(vec2<i32>(-1i, global0.x), -vec2<i32>(2147483647i, global0.x)), true & !arg_0.x)), Struct_1(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_mod_i32(-min(27325i, 8190i), global0.x), -104f, _wgslsmith_add_u32(u_input.a, abs(abs(69897u))), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = (_wgslsmith_sub_i32(-arg_1.a.b.b, arg_1.c.b) | max(2147483647i, ~_wgslsmith_sub_i32(2147483647i, 1673i))) & (-28918i ^ _wgslsmith_div_i32(~(global0.x >> (arg_0.x % 32u)), -_wgslsmith_dot_vec2_i32(arg_2.a.xy, vec2<i32>(arg_1.a.a.x, global0.x))));
    var var_1 = func_2(abs(arg_1.c.a.zx >> (_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.zy, vec2<u32>(arg_0.x, arg_1.b), vec2<u32>(6455u, 44193u)), vec2<u32>(u_input.b, 49529u)) % vec2<u32>(32u)))).e;
    var_1 = firstTrailingBit(func_3(vec2<i32>(i32(-1i) * -12517i, _wgslsmith_dot_vec2_i32(arg_2.a.wx, arg_2.a.wz))));
    var_1 = ~arg_0.x | arg_1.a.b.e;
    var var_2 = arg_1.b;
    return _wgslsmith_f_op_vec2_f32(-arg_2.d.xw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1189f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f - 263f)))));
    global1 = array<vec4<i32>, 13>();
    var var_1 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(global0.x, 0i) ^ vec2<i32>(25478i, 54033i), vec2<i32>(reverseBits(global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, 1i, global0.x))))), vec2<i32>(1i, global0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_5(~vec3<u32>(u_input.b, select(_wgslsmith_sub_u32(20372u, 0u), 4294967295u, all(vec3<bool>(false, true, false))), ~12707u), Struct_4(Struct_3(vec3<i32>(_wgslsmith_mod_i32(5444i, 14523i), var_1.x | var_1.x, -33878i), func_1(vec3<bool>(true, true, true), vec3<f32>(1000f, -600f, -1167f))), select(1u, func_4(func_4(Struct_2(vec4<i32>(global0.x, 19091i, 2147483647i, -14635i), 71877i, 0u, vec4<f32>(-223f, 1694f, -2031f, 809f), u_input.b), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 13u)], var_1.x, -1565f, u_input.b, vec4<bool>(false, false, true, true))), Struct_1(vec4<i32>(-12704i, global0.x, 0i, 1i), -1i, 195f, u_input.b, vec4<bool>(false, true, false, true))).c, true), Struct_1(~(vec4<i32>(global0.x, global0.x, 43312i, 10270i) & vec4<i32>(global0.x, var_1.x, var_1.x, 1i)), i32(-1i) * -1346i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1399f)) - _wgslsmith_f_op_f32(-1194f - 1648f)), u_input.a, select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), false))), Struct_2(-(vec4<i32>(1i, 1i, -1i, 16308i) >> (vec4<u32>(9569u, u_input.b, 4294967295u, u_input.a) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_div_i32(2147483647i, -4565i), func_2(vec2<i32>(1i, -15978i)).a.x, var_1.x, var_1.x >> (u_input.a % 32u)), global0.x, 97638u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1024f, _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(step(-1403f, -109f)), -425f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1117f, 899f, 371f, 452f) - vec4<f32>(-1049f, -503f, 266f, -1679f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-985f, 551f, 142f, -121f))))), ~(~1u))));
    global2 = array<Struct_3, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-119f, var_2.x, _wgslsmith_f_op_f32(ceil(709f)), _wgslsmith_f_op_f32(-var_2.x)))))), func_4(Struct_2(vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 39299i), vec2<i32>(global0.x, -1i)), 16527i, func_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 13u)], global0.x, 33053u, vec4<f32>(var_2.x, var_2.x, var_2.x, -581f), 30485u), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 13u)], global0.x, -559f, 4294967295u, vec4<bool>(true, false, true, true))).a.x), 1i, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-902f, -1040f, -1625f, var_2.x)), ~(~u_input.b)), Struct_1(-vec4<i32>(var_1.x, 1i, 7305i, 1i), -6818i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~u_input.b), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))).a.yy);
}

