struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 4589u, 1u), vec2<bool>(false, true), false, Struct_1(true, vec2<bool>(false, false), false), false);

var<private> global1: u32;

var<private> global2: array<bool, 3>;

var<private> global3: array<u32, 28>;

var<private> global4: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec2<i32>(2147483647i, 2147483647i), vec3<f32>(808f, 797f, 1000f), vec2<i32>(i32(-2147483648), -66084i), vec2<f32>(-161f, -488f), 0u), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(322f, 1248f, -1241f), vec2<i32>(0i, -8992i), vec2<f32>(165f, 202f), 57638u), Struct_3(vec2<i32>(-23183i, 751i), vec3<f32>(526f, -104f, 488f), vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(226f, -1141f), 0u), Struct_3(vec2<i32>(30237i, 10919i), vec3<f32>(281f, 945f, -950f), vec2<i32>(26631i, 26242i), vec2<f32>(1166f, -486f), 0u), Struct_3(vec2<i32>(-244i, 2147483647i), vec3<f32>(1211f, -492f, -1000f), vec2<i32>(0i, 53784i), vec2<f32>(-764f, 2376f), 4294967295u), Struct_3(vec2<i32>(2147483647i, 2147483647i), vec3<f32>(2115f, 1000f, 482f), vec2<i32>(-13353i, 2147483647i), vec2<f32>(412f, -722f), 61916u), Struct_3(vec2<i32>(-1i, 0i), vec3<f32>(-1000f, 662f, -704f), vec2<i32>(1i, -2645i), vec2<f32>(-935f, -894f), 17902u), Struct_3(vec2<i32>(-1575i, i32(-2147483648)), vec3<f32>(566f, -1063f, 1801f), vec2<i32>(-34415i, 32610i), vec2<f32>(273f, 988f), 0u), Struct_3(vec2<i32>(-1i, 0i), vec3<f32>(414f, 1304f, -1000f), vec2<i32>(-56502i, 1i), vec2<f32>(356f, 873f), 0u), Struct_3(vec2<i32>(2147483647i, 5354i), vec3<f32>(-455f, -488f, -957f), vec2<i32>(i32(-2147483648), 18409i), vec2<f32>(1719f, -1503f), 22390u), Struct_3(vec2<i32>(16511i, -63788i), vec3<f32>(-364f, -410f, -1479f), vec2<i32>(-1i, 70662i), vec2<f32>(841f, 1670f), 1u), Struct_3(vec2<i32>(44231i, -955i), vec3<f32>(-182f, -220f, 137f), vec2<i32>(0i, 11199i), vec2<f32>(1660f, -814f), 0u), Struct_3(vec2<i32>(i32(-2147483648), -11931i), vec3<f32>(688f, -1000f, 883f), vec2<i32>(23206i, -2389i), vec2<f32>(2044f, -1860f), 4410u), Struct_3(vec2<i32>(i32(-2147483648), 25497i), vec3<f32>(-217f, 1447f, -463f), vec2<i32>(43873i, 0i), vec2<f32>(-1586f, -591f), 40829u), Struct_3(vec2<i32>(4977i, i32(-2147483648)), vec3<f32>(-1258f, 1382f, -1000f), vec2<i32>(34518i, 12781i), vec2<f32>(-1000f, -341f), 0u), Struct_3(vec2<i32>(-78368i, -1i), vec3<f32>(1000f, 685f, 205f), vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(826f, 1060f), 1u), Struct_3(vec2<i32>(-16080i, 1i), vec3<f32>(-446f, -739f, -1000f), vec2<i32>(-1i, -15873i), vec2<f32>(1000f, -1674f), 0u), Struct_3(vec2<i32>(-12502i, -46764i), vec3<f32>(-641f, -1139f, 742f), vec2<i32>(-26576i, 2147483647i), vec2<f32>(1036f, -1438f), 1u), Struct_3(vec2<i32>(846i, -17786i), vec3<f32>(-911f, -1971f, -518f), vec2<i32>(8956i, 2147483647i), vec2<f32>(-796f, -371f), 43915u), Struct_3(vec2<i32>(59432i, 82339i), vec3<f32>(-1550f, 299f, -577f), vec2<i32>(2147483647i, -15973i), vec2<f32>(-1289f, -1545f), 106072u), Struct_3(vec2<i32>(-1i, -21450i), vec3<f32>(-1707f, -706f, -360f), vec2<i32>(-1i, -20018i), vec2<f32>(-441f, -422f), 20782u), Struct_3(vec2<i32>(-23221i, i32(-2147483648)), vec3<f32>(-1000f, -638f, -470f), vec2<i32>(-1i, 46634i), vec2<f32>(-1166f, -1983f), 17888u), Struct_3(vec2<i32>(1i, -59221i), vec3<f32>(-2534f, -318f, 278f), vec2<i32>(-11074i, -1i), vec2<f32>(-1034f, 1000f), 28522u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~firstTrailingBit(abs(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-22186i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2155i, u_input.a)), -vec4<i32>(-20671i, u_input.a, u_input.a, 45860i), select(vec4<bool>(global0.e, global0.c, false, true), vec4<bool>(true, false, false, global0.c), true)))), -max(reverseBits(firstTrailingBit(vec4<i32>(-34544i, 2147483647i, 1i, u_input.a))), -vec4<i32>(u_input.a, -1i, -16708i, 1i)));
    global1 = _wgslsmith_div_u32(~0u, ~global3[_wgslsmith_index_u32(39673u, 28u)]);
    var var_1 = min(-10462i, -(~var_0.x));
    global1 = _wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 59244u, global0.a.x), vec4<u32>(8716u, global0.a.x, 0u, global0.a.x)), 5197u >> (global3[_wgslsmith_index_u32(global0.a.x, 28u)] % 32u))), 1u), _wgslsmith_mult_u32(~(global0.a.x << (1u % 32u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(43369u, global3[_wgslsmith_index_u32(4294967295u, 28u)], 1u), vec3<u32>(global3[_wgslsmith_index_u32(global0.a.x, 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 28u)], 28u)], global0.a.x)), 1u), global0.a.x));
    let var_2 = max(_wgslsmith_clamp_u32(29991u, reverseBits(~(global0.a.x << (global0.a.x % 32u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstTrailingBit(1u), 4294967295u), 28u)]), global3[_wgslsmith_index_u32(global0.a.x << (~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 28u)], ~0u), 28u)] % 32u), 28u)]);
    return -1082f;
}

fn func_2() -> u32 {
    var var_0 = -948f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1497f, 951f)), -1634f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(730f, 1808f) - _wgslsmith_f_op_f32(max(143f, 187f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-582f, 877f))))));
    global0 = Struct_2(firstLeadingBit(firstLeadingBit(global0.a)), vec2<bool>(global0.e, any(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 3u)], global0.e, global2[_wgslsmith_index_u32(0u, 3u)])) | global0.c), global0.b.x, global0.d, !(!((global0.e || global0.b.x) & true)));
    let var_1 = -(~(-_wgslsmith_div_vec3_i32(~vec3<i32>(24279i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i))));
    global1 = _wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(36228u, 28u)]);
    return global0.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = ~_wgslsmith_add_u32(~13131u, abs(~global0.a.x) ^ firstLeadingBit(0u));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global0.a.x), 36571u), arg_1.e), (~59910u & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)]) | arg_1.e, max(~(~arg_1.e), ~0u), _wgslsmith_mod_u32(firstTrailingBit(1u), 1u) | 14875u), ~vec4<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 28u)], arg_1.e), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 28u)], min(41014u, 0u), 40507u) << (vec4<u32>(firstTrailingBit(min(27671u, arg_0.x)), ~49326u, 22216u, global3[_wgslsmith_index_u32(~(global0.a.x & arg_0.x), 28u)]) % vec4<u32>(32u)));
    let var_3 = vec3<bool>(!(26425u > (global3[_wgslsmith_index_u32(reverseBits(arg_0.x), 28u)] >> (global3[_wgslsmith_index_u32(~arg_0.x, 28u)] % 32u))), all(!global0.d.b), global0.e);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_1.d.x + arg_1.b.x))), -1921f))));
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(~(-u_input.a), u_input.a, ~max(u_input.a, 0i), u_input.a), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -34729i, 5505i, u_input.a))));
    let var_1 = global0.d;
    var var_2 = -(~(firstLeadingBit(vec4<i32>(1813i, 2147483647i, -1i, 23170i)) | max(-vec4<i32>(var_0.x, var_0.x, -1i, u_input.a), -var_0)));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 53666u), global0.a.xz), vec2<u32>(47290u, 29872u) | global0.a.yx), global0.a.yy) << (~(~vec2<u32>(global0.a.x, 1u)) % vec2<u32>(32u)), vec2<u32>(global3[_wgslsmith_index_u32(10183u, 28u)], countOneBits(~global3[_wgslsmith_index_u32(min(1u, 0u), 28u)])));
    var var_4 = _wgslsmith_sub_i32(-(~(~_wgslsmith_add_i32(-38426i, -1i))), var_0.x);
    return func_4((vec4<u32>(var_3.x, 39091u & var_3.x, ~2180u, ~55870u) & ~vec4<u32>(global3[_wgslsmith_index_u32(6293u, 28u)], 20760u, var_3.x, 0u)) & vec4<u32>(~(~var_3.x), func_2(), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, 0u, 47058u, global3[_wgslsmith_index_u32(var_3.x, 28u)]), vec4<u32>(27176u, 36173u, 0u, 1u), vec4<u32>(10870u, global0.a.x, 39034u, 1u)), ~vec4<u32>(1u, 43706u, 4294967295u, 14009u)), ~var_3.x), global4[_wgslsmith_index_u32(abs(~var_3.x), 23u)], Struct_1(!global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(10624u, 28u)], 3u)], vec2<bool>(any(!vec3<bool>(false, global2[_wgslsmith_index_u32(98430u, 3u)], global0.b.x)), var_1.b.x), -2147483647i <= firstLeadingBit(min(-17634i, var_0.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec2<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(arg_2.e, 28u)]), ~arg_2.e) | ~select(~(~vec2<u32>(56899u, global0.a.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2.e, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(15017u, 86553u), vec2<u32>(global0.a.x, 1u))), !vec2<bool>(global0.e, false));
    let var_2 = Struct_3(firstTrailingBit(~arg_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.b, vec3<f32>(-1846f, _wgslsmith_f_op_f32(arg_2.b.x - arg_3.x), 1000f), var_0.a))), vec2<i32>(-u_input.a, -56456i), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_3.x, arg_1.b.x)))))), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(arg_2.e, arg_2.e, 0u), ~vec3<u32>(global0.a.x, 32599u, 0u) & abs(global0.a)), ~global0.a));
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1715f, 1210f));
    global2 = array<bool, 3>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1045f), _wgslsmith_f_op_f32(var_0.x + 1000f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1523f, 1529f, var_0.x), vec3<f32>(-852f, -521f, var_0.x), select(vec3<bool>(global0.e, false, global2[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37946u, 28u)], 3u)], false), vec3<bool>(true, global0.b.x, true))))))));
    var var_2 = !select(global0.b, func_5(func_1(), Struct_3(vec2<i32>(u_input.a, u_input.a), vec3<f32>(-1606f, -2016f, var_0.x), vec2<i32>(0i, u_input.a), var_0, ~109011u), global4[_wgslsmith_index_u32(67841u, 23u)], var_1.xy), all(vec4<bool>(all(global0.b), !global2[_wgslsmith_index_u32(global0.a.x, 3u)], global2[_wgslsmith_index_u32(~29609u, 3u)], global0.a.x > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46859u, 28u)], 28u)])));
    let var_3 = func_5(global0.d, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72340u, 28u)], 28u)], 35369u, global0.a.x, global3[_wgslsmith_index_u32(1u, 28u)])) ^ vec4<u32>(global3[_wgslsmith_index_u32(65169u, 28u)], 4294967295u, 10039u, 57571u)), (~vec4<u32>(4294967295u, 30123u, 51056u, 4294967295u) ^ select(vec4<u32>(4294967295u, global0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 28u)], 28u)], 0u), vec4<u32>(global0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 28u)], 39269u, global0.a.x), var_2.x)) | select(~vec4<u32>(global3[_wgslsmith_index_u32(global0.a.x, 28u)], 1u, global0.a.x, 58316u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global0.a.x, 28u)], global0.a.x, global3[_wgslsmith_index_u32(global0.a.x, 28u)], 37213u), vec4<u32>(1u, 1u, global0.a.x, 0u), vec4<u32>(global0.a.x, global3[_wgslsmith_index_u32(5089u, 28u)], 21425u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1367u, 28u)], 28u)])), select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], var_2.x, global0.d.a), var_2.x))), 23u)], Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, 2032i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(1i, 2147483647i))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-3702i, u_input.a), vec2<i32>(-65627i, -27858i)), min(-vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, 1f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0.e)))), ~(-(vec2<i32>(-16018i, -2147483647i) | vec2<i32>(u_input.a, u_input.a))), var_1.xy, ~global0.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(708f, -174f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, var_1.x))), vec2<f32>(var_0.x, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-582f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f * var_0.x) + 706f) + var_0.x))), countOneBits(~vec3<u32>(0u, 4964u, global3[_wgslsmith_index_u32(~global0.a.x, 28u)])));
}

