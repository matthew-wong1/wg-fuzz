struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(38007u, Struct_1(true, -1i, vec2<i32>(i32(-2147483648), 2147483647i), 1i), Struct_1(false, i32(-2147483648), vec2<i32>(1i, 2147483647i), 35185i), Struct_1(false, 28930i, vec2<i32>(1i, -32224i), 0i)), Struct_2(13877u, Struct_1(true, 13671i, vec2<i32>(i32(-2147483648), 2147483647i), -8517i), Struct_1(false, -1075i, vec2<i32>(94574i, 33783i), 9094i), Struct_1(false, -4541i, vec2<i32>(12158i, 1i), 1i)), Struct_2(4294967295u, Struct_1(true, 1i, vec2<i32>(821i, i32(-2147483648)), i32(-2147483648)), Struct_1(true, 2147483647i, vec2<i32>(-23306i, 6247i), 2147483647i), Struct_1(false, 1i, vec2<i32>(0i, 34320i), -35448i)), Struct_2(30320u, Struct_1(true, 60207i, vec2<i32>(0i, 34480i), i32(-2147483648)), Struct_1(true, i32(-2147483648), vec2<i32>(-1511i, 0i), -19297i), Struct_1(false, i32(-2147483648), vec2<i32>(0i, 1i), 44513i)), Struct_2(18789u, Struct_1(true, 0i, vec2<i32>(11543i, i32(-2147483648)), 31830i), Struct_1(false, i32(-2147483648), vec2<i32>(-1i, 13167i), -23733i), Struct_1(true, -24977i, vec2<i32>(i32(-2147483648), -47405i), 93941i)), Struct_2(7476u, Struct_1(true, i32(-2147483648), vec2<i32>(20731i, -1i), 38014i), Struct_1(false, -1i, vec2<i32>(18010i, -42872i), 37185i), Struct_1(true, i32(-2147483648), vec2<i32>(0i, 2147483647i), 37419i)), Struct_2(4294967295u, Struct_1(false, -11736i, vec2<i32>(17475i, -44781i), 1i), Struct_1(false, -1i, vec2<i32>(2147483647i, 2147483647i), 1i), Struct_1(true, 1i, vec2<i32>(18569i, 5973i), 1i)), Struct_2(4294967295u, Struct_1(false, i32(-2147483648), vec2<i32>(i32(-2147483648), -35382i), -10278i), Struct_1(true, 1i, vec2<i32>(20960i, 46014i), i32(-2147483648)), Struct_1(true, -1i, vec2<i32>(104i, 2147483647i), 53046i)), Struct_2(4294967295u, Struct_1(true, 35799i, vec2<i32>(35676i, 76571i), 31i), Struct_1(false, 928i, vec2<i32>(6895i, -24003i), 3590i), Struct_1(true, 52022i, vec2<i32>(-1i, i32(-2147483648)), 0i)), Struct_2(5031u, Struct_1(false, -15156i, vec2<i32>(-1i, -5478i), -1i), Struct_1(false, 47239i, vec2<i32>(-15687i, 34183i), 47825i), Struct_1(false, i32(-2147483648), vec2<i32>(5699i, 26306i), 1i)), Struct_2(24345u, Struct_1(false, 0i, vec2<i32>(0i, 7152i), -1i), Struct_1(false, 20005i, vec2<i32>(20317i, 0i), -5603i), Struct_1(false, 351i, vec2<i32>(-1i, 2147483647i), 458i)), Struct_2(34552u, Struct_1(true, -12582i, vec2<i32>(0i, 3412i), -7131i), Struct_1(true, 2147483647i, vec2<i32>(1i, 0i), -1i), Struct_1(false, 57071i, vec2<i32>(-22976i, -2439i), -1i)), Struct_2(88742u, Struct_1(false, -28894i, vec2<i32>(-1i, -52905i), 32807i), Struct_1(false, 1i, vec2<i32>(i32(-2147483648), -40137i), 0i), Struct_1(true, 7162i, vec2<i32>(9710i, i32(-2147483648)), -1i)), Struct_2(13479u, Struct_1(true, -24526i, vec2<i32>(2147483647i, 0i), -17670i), Struct_1(false, i32(-2147483648), vec2<i32>(5295i, -1i), 1i), Struct_1(true, 2147483647i, vec2<i32>(-20485i, -7148i), 8125i)), Struct_2(1u, Struct_1(true, 2147483647i, vec2<i32>(-1i, -1i), 4513i), Struct_1(false, -1i, vec2<i32>(-17726i, -6711i), 1i), Struct_1(true, -1i, vec2<i32>(-41877i, 2147483647i), 28274i)), Struct_2(0u, Struct_1(true, 21277i, vec2<i32>(1i, -1i), -211i), Struct_1(true, 0i, vec2<i32>(i32(-2147483648), 0i), 49636i), Struct_1(true, -34616i, vec2<i32>(1i, i32(-2147483648)), -45266i)), Struct_2(4294967295u, Struct_1(true, 11214i, vec2<i32>(1i, 16028i), -24130i), Struct_1(true, 45326i, vec2<i32>(73549i, -22250i), 2147483647i), Struct_1(false, -20197i, vec2<i32>(4039i, i32(-2147483648)), 6180i)), Struct_2(12323u, Struct_1(false, 0i, vec2<i32>(1i, -95690i), -21066i), Struct_1(false, -1i, vec2<i32>(12871i, 2147483647i), 79972i), Struct_1(false, -1i, vec2<i32>(2147483647i, i32(-2147483648)), 0i)), Struct_2(6752u, Struct_1(true, i32(-2147483648), vec2<i32>(35252i, -10315i), -1i), Struct_1(false, 22956i, vec2<i32>(-15185i, 2147483647i), -1i), Struct_1(true, 1i, vec2<i32>(0i, 1i), -20559i)), Struct_2(1u, Struct_1(false, -1i, vec2<i32>(9262i, i32(-2147483648)), -22982i), Struct_1(true, -70098i, vec2<i32>(1i, -61018i), i32(-2147483648)), Struct_1(true, -25768i, vec2<i32>(i32(-2147483648), -16080i), -1i)), Struct_2(0u, Struct_1(true, i32(-2147483648), vec2<i32>(i32(-2147483648), 37059i), -13284i), Struct_1(false, -1941i, vec2<i32>(-1i, 61488i), 2147483647i), Struct_1(false, -25342i, vec2<i32>(10526i, 18741i), -46246i)), Struct_2(1965u, Struct_1(true, -11270i, vec2<i32>(2147483647i, 1i), i32(-2147483648)), Struct_1(false, -7846i, vec2<i32>(10775i, 9420i), 24457i), Struct_1(true, 0i, vec2<i32>(4747i, 0i), 25667i)), Struct_2(0u, Struct_1(true, 1i, vec2<i32>(-68585i, -1i), 12162i), Struct_1(false, 1i, vec2<i32>(2147483647i, -1376i), 1i), Struct_1(true, i32(-2147483648), vec2<i32>(2147483647i, i32(-2147483648)), -17066i)), Struct_2(26991u, Struct_1(false, 1i, vec2<i32>(-30814i, 0i), -22239i), Struct_1(false, -21666i, vec2<i32>(-1i, -24289i), -135i), Struct_1(true, i32(-2147483648), vec2<i32>(76391i, -1416i), 19631i)), Struct_2(44969u, Struct_1(true, -1i, vec2<i32>(1309i, -58239i), 2147483647i), Struct_1(true, 57496i, vec2<i32>(-1i, 2147483647i), i32(-2147483648)), Struct_1(false, 0i, vec2<i32>(37858i, 3994i), 2147483647i)));

var<private> global2: array<f32, 11> = array<f32, 11>(-739f, 939f, 1000f, -1968f, 3151f, -271f, 735f, -1572f, -755f, -561f, 625f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(9478u, u_input.a), 11u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 11u)] * 219f) - _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(143994u, 11u)]))), -599f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(403f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(371f - 1033f) - -183f), global2[_wgslsmith_index_u32(4294967295u, 11u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(56779u, 11u)], -1480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69853u, 11u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 11u)]))))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    global2 = array<f32, 11>();
    let var_2 = _wgslsmith_sub_i32(arg_1.x, 89318i);
    var_0 = global0.d;
    return Struct_2(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, global0.a), min(vec2<u32>(4294967295u, 51362u), vec2<u32>(1u, 28965u)), vec2<u32>(global0.a, global0.a) & vec2<u32>(52187u, 95488u)), vec2<u32>(global0.a, 1u))), global0.b, Struct_1(global0.d.a, ~(~global0.d.d), vec2<i32>(var_2, arg_1.x), _wgslsmith_sub_i32(arg_1.x & _wgslsmith_div_i32(arg_1.x, -2147483647i), ~(-2147483647i))), Struct_1(var_0.a || var_0.a, select(_wgslsmith_add_i32(arg_1.x, -35684i << (u_input.a % 32u)), var_2, var_0.a), global0.b.c, max(~(~arg_1.x), select(i32(-1i) * -2147483647i, max(-1i, var_0.d), true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = arg_0.b;
    let var_1 = func_2(1757f, abs(vec4<i32>(arg_1.x & global0.b.b, reverseBits(arg_3.c.c.x), _wgslsmith_sub_i32(-2147483647i, -2147483647i), _wgslsmith_div_i32(var_0.d, arg_3.c.c.x))) & vec4<i32>(~30870i, ~(arg_3.d.c.x ^ 34001i), i32(-1i) * -arg_3.c.d, 1i), global2[_wgslsmith_index_u32(4294967295u, 11u)]);
    return 0u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = -_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, global0.c.b, 2388i) | ~(-vec3<i32>(global0.d.d, -1i, global0.c.c.x)), _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(global0.c.b, global0.c.d, -35934i)), vec3<i32>(-1i ^ global0.c.b, 1i, select(0i, global0.b.b, arg_0.x))));
    let var_1 = min(firstLeadingBit(vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(u_input.a, 0u)), func_4(Struct_2(4294967295u, Struct_1(true, 1i, var_0.zx, -2147483647i), global0.c, global0.d), vec3<i32>(global0.d.d, 10889i, var_0.x), true, func_2(global2[_wgslsmith_index_u32(arg_1.x, 11u)], vec4<i32>(global0.b.b, 1i, global0.d.d, -30059i), global2[_wgslsmith_index_u32(u_input.a, 11u)])), func_2(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(65148u, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(60019i, 29973i, 64276i, 0i), vec4<i32>(-4276i, global0.b.b, var_0.x, -1990i)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.x, 11u)] - global2[_wgslsmith_index_u32(36105u, 11u)])).a, arg_1.x)), vec4<u32>(arg_1.x, func_2(global2[_wgslsmith_index_u32(~u_input.a, 11u)], min(vec4<i32>(0i, 0i, 2147483647i, -8308i), vec4<i32>(var_0.x, global0.d.b, var_0.x, global0.c.d)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 11u)])).a, _wgslsmith_mod_u32(u_input.a, u_input.a), 34899u));
    global0 = Struct_2(~abs(~114604u), Struct_1(false, _wgslsmith_mult_i32(~(-15661i), 1i), countOneBits(vec2<i32>(global0.c.b, global0.c.d) >> (var_1.zz % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_i32(var_0.yz << (var_1.xx % vec2<u32>(32u)), -global0.d.c), abs(var_0.x)), global0.c, func_2(-507f, vec4<i32>(reverseBits(82812i), global0.d.c.x, global0.c.c.x, -global0.b.d) & -(~vec4<i32>(8656i, var_0.x, global0.d.d, global0.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~76710u, 11u)], global2[_wgslsmith_index_u32(global0.a, 11u)]))).d);
    let var_2 = Struct_2(~func_4(global1[_wgslsmith_index_u32(global0.a, 25u)], vec3<i32>(var_0.x, global0.c.c.x, global0.d.c.x), !global0.b.a, Struct_2(_wgslsmith_sub_u32(global0.a, 59072u), global0.d, global0.d, global0.d)), func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 4867u), 11u)]), _wgslsmith_add_vec4_i32(reverseBits(~vec4<i32>(0i, global0.c.d, var_0.x, -2147483647i)), ~vec4<i32>(0i, global0.c.b, -2147483647i, -35492i) & vec4<i32>(global0.c.c.x, global0.b.d, var_0.x, global0.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 11u)] * 1719f)) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.a, 11u)] * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(arg_1.x, 11u)]))))).b, Struct_1(true, global0.d.d, _wgslsmith_mult_vec2_i32(global0.d.c, -firstLeadingBit(vec2<i32>(global0.c.b, var_0.x))), 0i), Struct_1(select(arg_0.x, arg_0.x, arg_0.x), -global0.c.d, select(-(var_0.yy | vec2<i32>(var_0.x, 35449i)), abs(vec2<i32>(var_0.x, 420i)), !arg_0.xx), -76224i));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(957f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-537f * _wgslsmith_f_op_f32(round(-618f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, 287f)), global0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 11u)] * -912f) * _wgslsmith_f_op_f32(min(-398f, 678f))), 309f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(103241u, 11u)] - global2[_wgslsmith_index_u32(1u, 11u)]), global2[_wgslsmith_index_u32(4294967295u, 11u)], -575f, -267f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(23703u, 11u)], 638f, 214f, global2[_wgslsmith_index_u32(38793u, 11u)]) * vec4<f32>(global2[_wgslsmith_index_u32(global0.a, 11u)], global2[_wgslsmith_index_u32(global0.a, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)], -512f))))))));
    return Struct_1(all(select(arg_0, !select(vec3<bool>(global0.d.a, global0.d.a, global0.c.a), vec3<bool>(true, var_2.d.a, true), vec3<bool>(arg_0.x, false, arg_0.x)), select(!arg_0, select(arg_0, arg_0, vec3<bool>(global0.b.a, true, false)), arg_0.x))), 9447i, ~vec2<i32>(var_0.x, var_2.d.c.x), ~_wgslsmith_sub_i32(-2147483647i, min(-global0.d.b, var_2.d.d & var_2.d.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(min(5099u, ~global0.a) ^ ~1u, func_1(vec3<bool>(any(select(vec4<bool>(false, false, global0.c.a, global0.d.a), vec4<bool>(true, global0.b.a, global0.d.a, true), vec4<bool>(global0.c.a, false, global0.b.a, false))), any(!vec3<bool>(global0.c.a, global0.c.a, global0.c.a)), true), min(abs(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a, 60515u, 2226u)) | vec3<u32>(4294967295u, 4294967295u, ~4045u)), func_2(1645f, vec4<i32>(78106i, _wgslsmith_mult_i32(global0.b.c.x >> (global0.a % 32u), -67178i), global0.b.c.x, global0.d.c.x | max(-1i, global0.d.b)), -272f).c, Struct_1(true, _wgslsmith_div_i32(func_2(_wgslsmith_f_op_f32(308f + global2[_wgslsmith_index_u32(39855u, 11u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(40094i, global0.c.d, global0.c.d, -29200i), vec4<i32>(-2147483647i, global0.b.d, 2147483647i, global0.d.b), vec4<i32>(global0.b.c.x, global0.d.d, 2147483647i, global0.b.d)), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 11u)], -1846f, global0.d.a))).d.d, min(global0.d.d, 0i)), global0.d.c, 41244i));
    let var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-global0.b.c.x, reverseBits(0i), -1i, -1i) << (~firstTrailingBit(abs(vec4<u32>(0u, global0.a, 47135u, 0u))) % vec4<u32>(32u)), max(select(vec4<i32>(global0.b.c.x, global0.d.d, global0.d.c.x, global0.c.d) & -vec4<i32>(global0.c.b, global0.b.d, global0.c.d, global0.d.b), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.c.x, global0.b.b, global0.c.d, global0.c.d), ~vec4<i32>(global0.b.c.x, 2169i, 2147483647i, 8174i)), !select(vec4<bool>(false, global0.c.a, global0.b.a, global0.d.a), vec4<bool>(true, false, global0.c.a, false), global0.c.a)), firstTrailingBit(countOneBits(~vec4<i32>(global0.d.d, global0.b.c.x, global0.b.c.x, global0.d.c.x)))));
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f - -970f)), global2[_wgslsmith_index_u32(max(func_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 11u)] - global2[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<i32>(-1i, 1i, -4118i, var_0.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 11u)]).a, 0u), 11u)]), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-734f)), global2[_wgslsmith_index_u32(global0.a, 11u)], any(vec3<bool>(global0.b.a, true, any(vec4<bool>(true, false, global0.d.a, global0.b.a)))))));
    global0 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(46528u, ~(4294967295u & var_1.a) & 71560u), 11u)], _wgslsmith_add_vec4_i32(var_0, _wgslsmith_add_vec4_i32(~var_0, var_0) ^ var_0), -142f);
    var_1 = Struct_2(var_1.a, Struct_1(true, -14705i, var_1.c.c, min(abs(reverseBits(25835i)), -abs(10430i))), var_1.b, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1804f, _wgslsmith_f_op_f32(-1120f - 380f))), global2[_wgslsmith_index_u32(6478u, 11u)], vec3<u32>(u_input.a, ~(~1u), u_input.a) | (~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global0.a), vec3<u32>(23326u, 4294967295u, u_input.a)) << (~firstLeadingBit(vec3<u32>(u_input.a, var_1.a, 9845u)) % vec3<u32>(32u))), ~vec3<u32>(~(~55284u), 99298u, _wgslsmith_add_u32(~25520u, var_1.a)), ~var_0.yyw);
}

