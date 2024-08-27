struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(-54813i, vec3<f32>(-1000f, -989f, 276f), 42169u, vec3<u32>(0u, 4294967295u, 0u), vec2<f32>(644f, 260f)), -254f, vec3<i32>(-51361i, -33990i, i32(-2147483648)), vec3<i32>(57957i, -1i, -1i), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(52259i, vec3<f32>(-1000f, -815f, 1313f), 0u, vec3<u32>(1u, 1u, 9008u), vec2<f32>(758f, 1000f)), 1390f, vec3<i32>(37273i, i32(-2147483648), -19031i), vec3<i32>(2147483647i, -54037i, 20671i), vec2<u32>(38368u, 4294967295u)), Struct_2(Struct_1(2147483647i, vec3<f32>(-116f, -389f, -742f), 11825u, vec3<u32>(58133u, 44876u, 4294967295u), vec2<f32>(-158f, -1746f)), -1000f, vec3<i32>(i32(-2147483648), -15120i, 1i), vec3<i32>(-1i, i32(-2147483648), 33435i), vec2<u32>(67778u, 33651u)), Struct_2(Struct_1(1i, vec3<f32>(430f, 1117f, -470f), 46925u, vec3<u32>(4294967295u, 1u, 1u), vec2<f32>(884f, 1011f)), 2230f, vec3<i32>(-40986i, 2147483647i, -47804i), vec3<i32>(13780i, 2147483647i, 39739i), vec2<u32>(4294967295u, 69818u)), Struct_2(Struct_1(2147483647i, vec3<f32>(-591f, -1000f, -603f), 4294967295u, vec3<u32>(4294967295u, 14842u, 0u), vec2<f32>(250f, 1080f)), 1429f, vec3<i32>(11765i, 0i, -1i), vec3<i32>(2147483647i, 1609i, 24319i), vec2<u32>(8672u, 1u)), Struct_2(Struct_1(6362i, vec3<f32>(222f, 1156f, 927f), 0u, vec3<u32>(0u, 4294967295u, 0u), vec2<f32>(450f, 169f)), 1490f, vec3<i32>(2360i, 12961i, 0i), vec3<i32>(2147483647i, -6738i, 42387i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(46284i, vec3<f32>(105f, -589f, -817f), 0u, vec3<u32>(0u, 36301u, 0u), vec2<f32>(1432f, -2489f)), 1028f, vec3<i32>(2147483647i, -30944i, 0i), vec3<i32>(18600i, 11607i, 1i), vec2<u32>(0u, 18934u)), Struct_2(Struct_1(2147483647i, vec3<f32>(3047f, 399f, 1000f), 4294967295u, vec3<u32>(82821u, 4294967295u, 102876u), vec2<f32>(-1296f, 2061f)), 1196f, vec3<i32>(45302i, 15312i, -1i), vec3<i32>(-23327i, i32(-2147483648), 0i), vec2<u32>(10789u, 4294967295u)), Struct_2(Struct_1(-1i, vec3<f32>(-522f, 160f, -301f), 17756u, vec3<u32>(23014u, 30907u, 57079u), vec2<f32>(-522f, -1196f)), -1521f, vec3<i32>(1i, 21237i, -1i), vec3<i32>(1i, 0i, -1i), vec2<u32>(9635u, 24882u)), Struct_2(Struct_1(-1i, vec3<f32>(-578f, -143f, -512f), 45939u, vec3<u32>(4294967295u, 31902u, 6672u), vec2<f32>(2076f, -2757f)), 816f, vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(8492i, -1i, -2890i), vec2<u32>(1u, 1u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(213f, -158f, -516f), 2656u, vec3<u32>(331u, 0u, 78844u), vec2<f32>(620f, 256f)), 799f, vec3<i32>(62415i, -6165i, 20494i), vec3<i32>(1i, -1i, 0i), vec2<u32>(1u, 0u)), Struct_2(Struct_1(2147483647i, vec3<f32>(1000f, -444f, 245f), 4294967295u, vec3<u32>(61576u, 1u, 0u), vec2<f32>(-549f, -1000f)), 731f, vec3<i32>(-76222i, 12447i, -6608i), vec3<i32>(0i, 1i, 0i), vec2<u32>(1935u, 22007u)), Struct_2(Struct_1(0i, vec3<f32>(457f, -106f, -536f), 2018u, vec3<u32>(128u, 0u, 2348u), vec2<f32>(-1146f, 875f)), -411f, vec3<i32>(7451i, -4089i, -54430i), vec3<i32>(31576i, 28214i, -49447i), vec2<u32>(12855u, 0u)), Struct_2(Struct_1(1424i, vec3<f32>(-1136f, 2191f, -164f), 8699u, vec3<u32>(30718u, 29658u, 0u), vec2<f32>(-1000f, -547f)), 1115f, vec3<i32>(-72611i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 1i), vec2<u32>(4294967295u, 21231u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(211f, 991f, -600f), 44748u, vec3<u32>(0u, 3523u, 893u), vec2<f32>(-1104f, -929f)), -647f, vec3<i32>(2147483647i, 30364i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, -25227i), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(1691f, -1832f, -279f), 8970u, vec3<u32>(22987u, 4294967295u, 1u), vec2<f32>(-1000f, 1000f)), 233f, vec3<i32>(2877i, 2147483647i, i32(-2147483648)), vec3<i32>(11734i, 16630i, 33942i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(2147483647i, vec3<f32>(292f, -1000f, 1008f), 89947u, vec3<u32>(1u, 0u, 2912u), vec2<f32>(-950f, 1829f)), -658f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(-1i, 2679i, 30657i), vec2<u32>(4294967295u, 35274u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(382f, -138f, -823f), 16816u, vec3<u32>(0u, 0u, 1u), vec2<f32>(-353f, 650f)), 1015f, vec3<i32>(-1i, -10792i, i32(-2147483648)), vec3<i32>(-21677i, i32(-2147483648), 65604i), vec2<u32>(0u, 1u)), Struct_2(Struct_1(54793i, vec3<f32>(-124f, -1268f, -317f), 32596u, vec3<u32>(76039u, 4294967295u, 4294967295u), vec2<f32>(-280f, -968f)), -643f, vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(1i, 1i, -1i), vec2<u32>(12870u, 12854u)), Struct_2(Struct_1(2147483647i, vec3<f32>(-715f, 1044f, 965f), 1u, vec3<u32>(0u, 4294967295u, 0u), vec2<f32>(-567f, -1875f)), -1000f, vec3<i32>(17199i, -20267i, 23303i), vec3<i32>(0i, -17630i, 1i), vec2<u32>(64662u, 1u)), Struct_2(Struct_1(-1i, vec3<f32>(293f, -1359f, -1074f), 1u, vec3<u32>(1u, 0u, 40320u), vec2<f32>(-183f, 814f)), -1469f, vec3<i32>(-1i, 6993i, 28291i), vec3<i32>(1i, 2147483647i, 18724i), vec2<u32>(44698u, 1u)), Struct_2(Struct_1(22695i, vec3<f32>(-1025f, -1000f, 1852f), 4294967295u, vec3<u32>(1u, 4294967295u, 1u), vec2<f32>(724f, -1311f)), -1686f, vec3<i32>(-23590i, 1i, -48879i), vec3<i32>(-1i, 64736i, -1299i), vec2<u32>(13205u, 1u)), Struct_2(Struct_1(-49200i, vec3<f32>(-260f, -1012f, 818f), 52892u, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<f32>(655f, 617f)), 332f, vec3<i32>(-5128i, 34852i, 0i), vec3<i32>(47659i, 11801i, -106263i), vec2<u32>(45328u, 21311u)), Struct_2(Struct_1(3833i, vec3<f32>(-850f, 1884f, -398f), 1u, vec3<u32>(4294967295u, 25695u, 0u), vec2<f32>(-968f, -1761f)), -806f, vec3<i32>(516i, 0i, -21237i), vec3<i32>(i32(-2147483648), 15273i, 2147483647i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(-52058i, vec3<f32>(1023f, -469f, -975f), 22430u, vec3<u32>(1u, 29758u, 105497u), vec2<f32>(-1170f, -1331f)), 256f, vec3<i32>(60530i, 2147483647i, 0i), vec3<i32>(-69629i, -10095i, -5806i), vec2<u32>(47123u, 1u)), Struct_2(Struct_1(-40203i, vec3<f32>(-481f, -324f, 959f), 73399u, vec3<u32>(4294967295u, 0u, 0u), vec2<f32>(1000f, -1000f)), 530f, vec3<i32>(-28827i, 43595i, 2147483647i), vec3<i32>(0i, 17782i, 34114i), vec2<u32>(22156u, 4294967295u)), Struct_2(Struct_1(7940i, vec3<f32>(901f, 1102f, -217f), 0u, vec3<u32>(4294967295u, 1u, 9039u), vec2<f32>(121f, -1411f)), 1251f, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(0i, 1i, -1i), vec2<u32>(0u, 76203u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(980f, -1574f, -2009f), 71453u, vec3<u32>(62046u, 1u, 0u), vec2<f32>(1444f, -2109f)), 524f, vec3<i32>(-53574i, 55657i, -18698i), vec3<i32>(-38021i, 1i, -1i), vec2<u32>(62661u, 18691u)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(882f, -134f, 945f), 4294967295u, vec3<u32>(1u, 55736u, 2877u), vec2<f32>(2233f, -929f)), -218f, vec3<i32>(0i, 45984i, 1i), vec3<i32>(i32(-2147483648), 82818i, 1i), vec2<u32>(22869u, 0u)), Struct_2(Struct_1(5598i, vec3<f32>(-816f, -1035f, 105f), 4294967295u, vec3<u32>(1u, 1u, 1u), vec2<f32>(327f, 1000f)), 620f, vec3<i32>(0i, 1i, -1004i), vec3<i32>(-68459i, -32442i, 0i), vec2<u32>(43655u, 4701u)), Struct_2(Struct_1(-471i, vec3<f32>(793f, -1163f, 1033f), 94054u, vec3<u32>(10893u, 45243u, 1u), vec2<f32>(-506f, 647f)), 941f, vec3<i32>(2147483647i, -11023i, -46840i), vec3<i32>(-1i, -1493i, 1i), vec2<u32>(27004u, 0u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    var var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.x, 196f)), _wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -253f)))))));
    var var_2 = arg_0;
    return ~select(vec3<u32>(1u, arg_0.a, ~41083u), ~(~var_2.b), true) & vec3<u32>(~arg_0.a, ~(~u_input.a.x | var_2.a), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.b.x, firstLeadingBit(1u)), max(4294967295u, u_input.a.x | u_input.a.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16811u, 0u, 15340u), u_input.a)), max(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), abs(u_input.a))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -53196i), -abs(-1965i)), vec3<f32>(1170f, _wgslsmith_f_op_f32(max(-955f, _wgslsmith_f_op_f32(-1000f + -1294f))), _wgslsmith_f_op_f32(sign(142f))), ~(~(~u_input.a.x)), ~func_2(Struct_3(58823u, vec3<u32>(u_input.a.x, 42628u, u_input.a.x)), vec4<f32>(1146f, -139f, -807f, -1137f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1188f, 2046f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2832f, 1284f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f * -332f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-281f, -374f)))), vec4<bool>(true, true, true, true));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_1 = var_0.d;
    return Struct_3(46449u, vec3<u32>(0u, var_0.a.x, abs(var_0.b.d.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    var var_0 = select(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-1i, arg_0.a, reverseBits(-17138i))), ~(-abs(vec3<i32>(arg_2.a, 1i, arg_2.a)))), vec3<i32>(_wgslsmith_add_i32(-(i32(-1i) * -31189i), firstTrailingBit(1i)), abs(-(arg_0.a >> (arg_1.x % 32u))), i32(-1i) * -17948i), false & !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    var var_1 = arg_0.d.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2047f, -1000f, 1441f, arg_0.e.x)) * vec4<f32>(arg_0.b.x, 749f, arg_0.e.x, arg_2.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 1147f, -263f, -1842f) * vec4<f32>(arg_2.b.x, arg_2.e.x, 735f, 551f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1072f, 1824f, 579f, 1350f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(744f, arg_0.e.x, arg_0.e.x, arg_0.e.x) + vec4<f32>(arg_0.b.x, -149f, 852f, 126f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(333f, 1000f, 445f, -1409f)))))) - vec4<f32>(_wgslsmith_f_op_f32(arg_2.e.x - arg_2.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.e.x))), _wgslsmith_f_op_f32(-arg_2.b.x)));
    var var_3 = all(vec4<bool>(true, true, true, true));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), 646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2006f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + arg_2.b.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))))));
    return vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(849f * 858f)))))), _wgslsmith_f_op_f32(-arg_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f * 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(271f)) * -547f)), _wgslsmith_f_op_f32(494f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1988f))))), ~_wgslsmith_div_u32(48120u, u_input.a.x), vec3<u32>(abs(var_0.a), 48561u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-19966i, vec3<f32>(-1818f, -2050f, 519f), 4294967295u, u_input.a.wzz, vec2<f32>(2835f, -1000f)), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(1i, vec3<f32>(-1362f, 1740f, -338f), 4294967295u, vec3<u32>(var_0.a, 1u, u_input.a.x), vec2<f32>(-789f, -296f)), 0i))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 712f), vec2<f32>(803f, 1457f), select(vec2<bool>(false, true), vec2<bool>(true, true), false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.yx - vec2<f32>(176f, var_1.e.x)))), _wgslsmith_f_op_vec2_f32(var_1.b.xz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.yz) + _wgslsmith_f_op_vec2_f32(floor(var_1.b.xz))))));
    var_0 = func_1();
    let var_3 = var_1.a;
    var var_4 = false;
    let var_5 = 0u;
    var var_6 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.x, 291f, false)))), _wgslsmith_f_op_f32(trunc(-1093f)), -625f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1643f, 1657f, var_2.x, var_1.e.x))))));
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-21213i, 2055i), reverseBits(-abs(max(vec2<i32>(var_1.a, var_7.a), vec2<i32>(var_7.a, 43i)))), -select(select(-vec2<i32>(-12040i, var_7.a), vec2<i32>(var_7.a, var_3), true), -min(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_3, var_3)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), vec4<u32>(var_5, var_1.d.x, reverseBits(_wgslsmith_dot_vec3_u32(~var_7.d, _wgslsmith_div_vec3_u32(vec3<u32>(var_5, var_1.c, u_input.a.x), vec3<u32>(var_0.b.x, 27140u, var_5)))), var_0.b.x));
}

