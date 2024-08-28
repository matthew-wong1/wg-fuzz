struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1000f, -1412f, 1053f, -2022f, -1680f, -2270f, 285f, 501f, -459f, 121f, 877f, 1774f, 1933f, 1723f, 1943f, -138f, 138f, -622f, 1588f, -1440f, 151f, 1196f, 1249f, 739f);

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(1084f, 43567u, Struct_1(vec4<i32>(i32(-2147483648), 78857i, 19943i, 2147483647i), 2147483647i, -1014f, vec2<bool>(true, false), -911f), Struct_1(vec4<i32>(0i, 16862i, 58769i, 478i), -1i, -855f, vec2<bool>(false, false), -382f)), Struct_2(-1695f, 2126u, Struct_1(vec4<i32>(-12322i, 46187i, 28153i, i32(-2147483648)), 57983i, -3173f, vec2<bool>(false, false), -548f), Struct_1(vec4<i32>(21312i, -19494i, -1i, -35465i), -3557i, -906f, vec2<bool>(true, true), -834f)), Struct_2(-1132f, 38147u, Struct_1(vec4<i32>(-15313i, -40179i, 0i, 0i), i32(-2147483648), 898f, vec2<bool>(false, false), -1190f), Struct_1(vec4<i32>(-20909i, i32(-2147483648), 0i, 83409i), -1i, 164f, vec2<bool>(false, true), -417f)), Struct_2(-721f, 4294967295u, Struct_1(vec4<i32>(-42108i, 52690i, 2147483647i, -7484i), 8517i, 137f, vec2<bool>(true, false), -306f), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i), -10177i, -1199f, vec2<bool>(false, false), -354f)), Struct_2(819f, 1u, Struct_1(vec4<i32>(37548i, 0i, -1i, -1i), -33300i, 119f, vec2<bool>(false, true), 651f), Struct_1(vec4<i32>(7017i, i32(-2147483648), -29216i, 5015i), 28758i, 1667f, vec2<bool>(false, true), -2147f)), Struct_2(146f, 18998u, Struct_1(vec4<i32>(31657i, 2147483647i, 23479i, 1i), 5907i, 578f, vec2<bool>(true, false), -281f), Struct_1(vec4<i32>(-48097i, -9433i, -1i, -1i), -19004i, 592f, vec2<bool>(true, false), 338f)), Struct_2(838f, 61880u, Struct_1(vec4<i32>(-72066i, -1i, -25320i, 2147483647i), -30952i, 484f, vec2<bool>(true, true), 213f), Struct_1(vec4<i32>(21255i, -4994i, -23253i, 7069i), -44944i, 1000f, vec2<bool>(false, false), -175f)), Struct_2(346f, 33424u, Struct_1(vec4<i32>(-12573i, i32(-2147483648), i32(-2147483648), -1i), -65244i, 817f, vec2<bool>(true, false), 517f), Struct_1(vec4<i32>(-1i, -35260i, -28601i, 47668i), 15926i, -317f, vec2<bool>(true, true), 372f)), Struct_2(-1272f, 4294967295u, Struct_1(vec4<i32>(-1i, 0i, 1i, 35050i), -4978i, -173f, vec2<bool>(true, false), -1379f), Struct_1(vec4<i32>(2369i, 0i, -22030i, -42824i), -27501i, 309f, vec2<bool>(false, false), -868f)), Struct_2(-205f, 54149u, Struct_1(vec4<i32>(i32(-2147483648), 1i, -5041i, i32(-2147483648)), 45125i, 836f, vec2<bool>(true, true), -1219f), Struct_1(vec4<i32>(-1i, 36335i, -1i, 15705i), -59292i, -294f, vec2<bool>(false, true), -1610f)), Struct_2(263f, 1u, Struct_1(vec4<i32>(-1i, 27913i, 0i, 37903i), 1i, 1000f, vec2<bool>(false, true), -1854f), Struct_1(vec4<i32>(-1i, 34880i, -1i, -74292i), -21371i, 1000f, vec2<bool>(false, false), 1764f)), Struct_2(143f, 17980u, Struct_1(vec4<i32>(1i, 30737i, 1i, i32(-2147483648)), 50713i, -249f, vec2<bool>(false, false), -939f), Struct_1(vec4<i32>(16679i, -3882i, 43796i, -1i), 52445i, -1036f, vec2<bool>(true, true), -902f)), Struct_2(702f, 9138u, Struct_1(vec4<i32>(-31511i, -1i, 1i, -13823i), 0i, -1000f, vec2<bool>(false, true), 1445f), Struct_1(vec4<i32>(6388i, 12421i, -1i, i32(-2147483648)), 1i, 1037f, vec2<bool>(true, true), 868f)), Struct_2(-1276f, 65838u, Struct_1(vec4<i32>(0i, 1i, -1i, 42885i), -1i, 522f, vec2<bool>(false, false), -1000f), Struct_1(vec4<i32>(-49005i, 2147483647i, -1i, -1i), 1i, -471f, vec2<bool>(true, true), -1000f)), Struct_2(-553f, 1u, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 3126i), 0i, -203f, vec2<bool>(true, true), 228f), Struct_1(vec4<i32>(-29619i, -12657i, -1i, 2147483647i), -3274i, 752f, vec2<bool>(false, false), -329f)), Struct_2(882f, 21901u, Struct_1(vec4<i32>(11602i, -58656i, 1i, 11554i), 2147483647i, -1149f, vec2<bool>(true, true), -471f), Struct_1(vec4<i32>(i32(-2147483648), 4140i, -19724i, 33784i), 34264i, -652f, vec2<bool>(true, false), 1041f)), Struct_2(1117f, 475u, Struct_1(vec4<i32>(66028i, 28884i, -12872i, -20986i), 0i, 1041f, vec2<bool>(true, false), -277f), Struct_1(vec4<i32>(-4088i, -1i, -24927i, 1360i), -15437i, 621f, vec2<bool>(false, true), -791f)), Struct_2(609f, 78608u, Struct_1(vec4<i32>(2147483647i, -30380i, 0i, -7941i), -1i, 242f, vec2<bool>(true, true), 1456f), Struct_1(vec4<i32>(10302i, 1i, 2147483647i, 21369i), 1i, -465f, vec2<bool>(true, true), -509f)), Struct_2(194f, 27542u, Struct_1(vec4<i32>(1i, -13065i, 0i, i32(-2147483648)), 11204i, 1543f, vec2<bool>(true, true), 795f), Struct_1(vec4<i32>(2147483647i, 1722i, 15894i, -5797i), 41047i, -459f, vec2<bool>(true, false), 129f)), Struct_2(383f, 55030u, Struct_1(vec4<i32>(-1i, 62032i, 0i, 0i), -19201i, -613f, vec2<bool>(true, false), -1390f), Struct_1(vec4<i32>(2147483647i, 1i, 497i, 0i), 0i, 316f, vec2<bool>(false, false), -767f)), Struct_2(-753f, 0u, Struct_1(vec4<i32>(-9808i, 1070i, 1i, 21954i), -17303i, -1391f, vec2<bool>(true, true), -289f), Struct_1(vec4<i32>(-6161i, 2147483647i, 86260i, 52116i), -16382i, -743f, vec2<bool>(true, true), 836f)), Struct_2(1000f, 0u, Struct_1(vec4<i32>(-1i, 1001i, 20064i, -9309i), -3354i, -2328f, vec2<bool>(true, true), -916f), Struct_1(vec4<i32>(-1i, -56801i, 62434i, i32(-2147483648)), 2170i, 2077f, vec2<bool>(false, true), -956f)), Struct_2(894f, 11586u, Struct_1(vec4<i32>(i32(-2147483648), 17650i, -30312i, 2147483647i), 0i, -1018f, vec2<bool>(true, false), -2048f), Struct_1(vec4<i32>(-19358i, 52210i, -25385i, 1i), i32(-2147483648), 349f, vec2<bool>(false, true), 1383f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_0.b;
    global1 = array<Struct_2, 23>();
    let var_1 = !arg_0.c.d.x;
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    return global0[_wgslsmith_index_u32(u_input.c, 24u)];
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<f32, 24>();
    var var_0 = vec3<u32>(~1u, arg_1.x, _wgslsmith_mult_u32(~1u, firstTrailingBit(arg_1.x))) & ~_wgslsmith_mod_vec3_u32(countOneBits(abs(vec3<u32>(25251u, 12576u, 0u))), firstTrailingBit(vec3<u32>(42795u, 96635u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1126f, 1097f, global0[_wgslsmith_index_u32(arg_1.x, 24u)])))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_f32(func_3(Struct_2(1064f, 1u, Struct_1(vec4<i32>(arg_0.x, arg_0.x, -9553i, -20243i), 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)], vec2<bool>(false, true), global0[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_1(u_input.b, -1i, global0[_wgslsmith_index_u32(var_0.x, 24u)], vec2<bool>(false, false), global0[_wgslsmith_index_u32(arg_1.x, 24u)])), vec2<f32>(-107f, global0[_wgslsmith_index_u32(30845u, 24u)]), vec2<bool>(true, true))), _wgslsmith_f_op_f32(f32(-1f) * -812f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, -253f, 348f) + vec3<f32>(global0[_wgslsmith_index_u32(1151u, 24u)], 412f, global0[_wgslsmith_index_u32(55581u, 24u)]))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.x, ~u_input.c), 23u)];
    let var_3 = vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f - var_1.x) * global0[_wgslsmith_index_u32(reverseBits(u_input.c), 24u)])))));
    return var_2.d;
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_2, 23>();
    let var_0 = func_2(max(countOneBits(vec4<i32>(-1i) * -vec4<i32>(46445i, -14946i, -40795i, 9787i)), abs(~u_input.b)), vec2<u32>(18669u, 8545u));
    let var_1 = var_0.a.yw;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_3 = global1[_wgslsmith_index_u32(var_2.b, 23u)];
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.c.e)))), ~u_input.a, var_3.d, Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_1.x), firstLeadingBit(var_1)), 1i, ~var_3.d.a.x), 2147483647i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 24u)])))), func_2(~var_3.c.a, ~vec2<u32>(var_3.b, var_2.b)).d, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_2.b, 23u)], vec2<f32>(var_0.e, var_2.a), vec2<bool>(true, false)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~firstLeadingBit(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(5324u, u_input.a), vec2<u32>(4294967295u, 907u)), 55806u, ~abs(1885u)));
    var var_1 = func_2(arg_0.d.a, ~vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.x, 4294967295u, 0u), var_0), var_0), var_0.x));
    var var_2 = Struct_2(var_1.e, _wgslsmith_mult_u32(min(firstLeadingBit(_wgslsmith_sub_u32(30512u, 6869u)), abs(1u)), countOneBits(1u >> (arg_0.b % 32u))), arg_0.d, arg_0.d);
    global1 = array<Struct_2, 23>();
    var var_3 = ~_wgslsmith_clamp_vec4_u32(countOneBits(abs(vec4<u32>(6208u, 21325u, arg_0.b, var_0.x)) & ~vec4<u32>(var_2.b, 4294967295u, 31397u, 12087u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.a, 4174u), ~18092u, _wgslsmith_sub_u32(1u, var_0.x)), abs(~vec4<u32>(var_0.x, u_input.c, var_0.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 38572u, var_2.b), ~vec4<u32>(44825u, var_2.b, 48021u, var_0.x))), min(min(vec4<u32>(arg_0.b, var_0.x, arg_0.b, 1u), vec4<u32>(0u, 73608u, var_2.b, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 36616u, u_input.c, 1u) | vec4<u32>(u_input.a, 6807u, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(26142u, 4294967295u, 0u, var_0.x), vec4<u32>(0u, 1u, var_2.b, var_0.x)))));
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(abs(u_input.a), 24u)];
    let var_1 = func_4(func_1());
    var var_2 = ~(~(-2147483647i));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(countOneBits(~20400u), 24u)], 1136f, _wgslsmith_f_op_f32(floor(var_1.e))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], var_1.c, global0[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(187f, var_1.c, 2245f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1541f, 413f, 1864f) * vec3<f32>(global0[_wgslsmith_index_u32(39244u, 24u)], -1776f, var_1.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(857f, var_1.e, -1528f), vec3<f32>(-295f, var_1.c, var_1.c), var_1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1457f, var_1.c, var_1.c), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 230f, var_1.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(-24525i << (abs(0u) % 32u), max(-var_1.a.x, 1i)), var_1.b, select(-16424i, 5114i, all(vec3<bool>(var_1.d.x, var_1.d.x, true))) | -func_4(global1[_wgslsmith_index_u32(u_input.c, 23u)]).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f + -907f))) + _wgslsmith_f_op_f32(var_3.x + func_2(var_1.a >> (vec4<u32>(39084u, 19586u, 1u, 4294967295u) % vec4<u32>(32u)), ~vec2<u32>(41027u, 35209u)).e)), _wgslsmith_f_op_f32(func_1().a - -625f), _wgslsmith_f_op_f32(-658f * 1455f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, -1468f, -1190f, var_1.c)))))));
}

