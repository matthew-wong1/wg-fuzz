struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(1110f, 1567f, -428f), vec4<u32>(52757u, 0u, 41182u, 55376u), vec3<f32>(-179f, 1000f, 909f)), Struct_1(vec3<f32>(224f, 251f, -207f), vec4<u32>(1u, 38504u, 4294967295u, 79u), vec3<f32>(-250f, 1174f, 1153f)), Struct_1(vec3<f32>(1000f, 829f, -487f), vec4<u32>(0u, 0u, 0u, 4957u), vec3<f32>(233f, 231f, -920f)), Struct_1(vec3<f32>(-1273f, -157f, -401f), vec4<u32>(74253u, 23926u, 63333u, 1u), vec3<f32>(968f, -1174f, 468f)), Struct_1(vec3<f32>(2208f, 1618f, -598f), vec4<u32>(4294967295u, 31513u, 1u, 0u), vec3<f32>(-691f, -135f, 598f)), Struct_1(vec3<f32>(-960f, 663f, -876f), vec4<u32>(10819u, 59199u, 4294967295u, 54760u), vec3<f32>(-291f, 359f, -412f)), Struct_1(vec3<f32>(481f, -920f, -953f), vec4<u32>(4294967295u, 0u, 4294967295u, 49638u), vec3<f32>(613f, 1452f, -1242f)), Struct_1(vec3<f32>(-145f, 1048f, -2227f), vec4<u32>(0u, 0u, 98343u, 38864u), vec3<f32>(-1116f, -838f, -1166f)), Struct_1(vec3<f32>(-1097f, 1000f, 402f), vec4<u32>(1u, 1341u, 1u, 1u), vec3<f32>(-620f, -2164f, 558f)), Struct_1(vec3<f32>(-440f, -1215f, -412f), vec4<u32>(0u, 6580u, 0u, 4294967295u), vec3<f32>(231f, -1000f, -1422f)), Struct_1(vec3<f32>(-501f, -802f, 420f), vec4<u32>(12605u, 1u, 0u, 1u), vec3<f32>(-702f, -1000f, 159f)), Struct_1(vec3<f32>(437f, -1956f, 1789f), vec4<u32>(0u, 1u, 53564u, 85074u), vec3<f32>(469f, -376f, -370f)), Struct_1(vec3<f32>(-1000f, -1301f, 453f), vec4<u32>(4294967295u, 30340u, 24479u, 43227u), vec3<f32>(-1000f, -1107f, -1716f)), Struct_1(vec3<f32>(615f, 1927f, -825f), vec4<u32>(54885u, 66077u, 4294967295u, 54547u), vec3<f32>(2128f, -1000f, -1318f)), Struct_1(vec3<f32>(-1040f, 1625f, 411f), vec4<u32>(4294967295u, 13496u, 46223u, 88494u), vec3<f32>(-816f, 1494f, 835f)), Struct_1(vec3<f32>(-908f, -569f, 1480f), vec4<u32>(31845u, 0u, 4294967295u, 6129u), vec3<f32>(-1622f, -1641f, 203f)), Struct_1(vec3<f32>(-668f, -801f, -1741f), vec4<u32>(22426u, 1u, 59072u, 38786u), vec3<f32>(-1393f, -1551f, 2014f)), Struct_1(vec3<f32>(551f, 1137f, 1314f), vec4<u32>(43715u, 5012u, 0u, 1u), vec3<f32>(1634f, -156f, -1703f)), Struct_1(vec3<f32>(1007f, 1192f, 875f), vec4<u32>(38820u, 0u, 92420u, 14485u), vec3<f32>(983f, 383f, 2202f)), Struct_1(vec3<f32>(279f, -186f, 2098f), vec4<u32>(4294967295u, 0u, 5162u, 1u), vec3<f32>(-2526f, 375f, -176f)), Struct_1(vec3<f32>(680f, 885f, -143f), vec4<u32>(1u, 41599u, 0u, 22646u), vec3<f32>(1000f, 1625f, -588f)), Struct_1(vec3<f32>(-1000f, -1956f, -315f), vec4<u32>(4997u, 26574u, 0u, 76906u), vec3<f32>(681f, -2053f, 978f)), Struct_1(vec3<f32>(-435f, -394f, 1154f), vec4<u32>(0u, 33558u, 1u, 4294967295u), vec3<f32>(2638f, -246f, 593f)), Struct_1(vec3<f32>(380f, -219f, 772f), vec4<u32>(0u, 4294967295u, 71587u, 41152u), vec3<f32>(1292f, -643f, -1771f)), Struct_1(vec3<f32>(195f, 152f, -1026f), vec4<u32>(0u, 123103u, 47248u, 4294967295u), vec3<f32>(770f, -132f, -1280f)));

var<private> global1: vec3<u32> = vec3<u32>(4001u, 1u, 4294967295u);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(621f, 303f, 978f), vec4<u32>(16324u, 1u, 1u, 4294967295u), vec3<f32>(-1640f, 481f, 1000f)), Struct_1(vec3<f32>(-778f, 1657f, -1415f), vec4<u32>(86234u, 4294967295u, 0u, 0u), vec3<f32>(738f, 146f, -1470f)), Struct_1(vec3<f32>(-653f, -105f, -1064f), vec4<u32>(16369u, 1u, 72929u, 21278u), vec3<f32>(1200f, -1000f, 224f)), Struct_1(vec3<f32>(730f, -386f, 408f), vec4<u32>(1u, 1u, 3641u, 10170u), vec3<f32>(-801f, -747f, 890f)), Struct_1(vec3<f32>(-866f, 930f, 551f), vec4<u32>(4294967295u, 6254u, 24757u, 8363u), vec3<f32>(504f, 1622f, 582f)), Struct_1(vec3<f32>(1510f, 328f, 1729f), vec4<u32>(0u, 4294967295u, 1u, 0u), vec3<f32>(491f, -933f, -901f)), Struct_1(vec3<f32>(-804f, 252f, 2111f), vec4<u32>(0u, 24618u, 4294967295u, 64650u), vec3<f32>(438f, 583f, 151f)), Struct_1(vec3<f32>(879f, -855f, 1000f), vec4<u32>(45598u, 4294967295u, 4294967295u, 4294967295u), vec3<f32>(-397f, 192f, 1000f)), Struct_1(vec3<f32>(1059f, -218f, 469f), vec4<u32>(4294967295u, 31335u, 1u, 35744u), vec3<f32>(-957f, 499f, -467f)), Struct_1(vec3<f32>(1000f, 704f, -525f), vec4<u32>(4294967295u, 0u, 1634u, 0u), vec3<f32>(-149f, 1631f, -579f)), Struct_1(vec3<f32>(478f, -311f, -355f), vec4<u32>(1u, 3160u, 2406u, 46696u), vec3<f32>(-128f, 232f, 768f)));

var<private> global3: array<bool, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    return abs(reverseBits(select(~(arg_2 << (arg_2 % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.x, global1.x), vec2<u32>(60198u, global1.x), vec2<u32>(4294967295u, 4458u)), ~global1.xx), global3[_wgslsmith_index_u32(arg_0.b.x, 25u)])));
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec3<u32>(_wgslsmith_div_u32(global1.x, global1.x), func_3(Struct_1(vec3<f32>(1222f, -595f, 481f), vec4<u32>(global1.x, 47827u, global1.x, global1.x), vec3<f32>(-1081f, 1863f, -1047f)), _wgslsmith_f_op_f32(ceil(-485f)), ~0u), 0u) | (_wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(2278u, 4294967295u, global1.x)), vec3<u32>(global1.x ^ global1.x, ~7345u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 17048u, global1.x), vec4<u32>(41469u, global1.x, global1.x, 71376u)))) << (vec3<u32>(31809u, 22241u, ~(~global1.x)) % vec3<u32>(32u)));
    global1 = var_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-352f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(974f, _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = Struct_1(vec3<f32>(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1, -2584f)))), 121f), ~min(vec4<u32>(var_0.x >> (global1.x % 32u), countOneBits(global1.x), 0u << (1u % 32u), 1u), ~min(vec4<u32>(var_0.x, global1.x, 1u, 3823u), vec4<u32>(global1.x, global1.x, 4294967295u, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1051f * var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -382f))));
    global3 = array<bool, 25>();
    return global2[_wgslsmith_index_u32(4294967295u, 11u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global2 = array<Struct_1, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_1.c)), ~arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_1.a));
    var var_1 = vec3<i32>(u_input.b.x, -1i, abs(-select(-37554i, 1i, any(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(0u, 25u)])))));
    let var_2 = func_2();
    var var_3 = ~(-abs(_wgslsmith_sub_i32(u_input.a, -70572i) & var_1.x));
    return _wgslsmith_mult_u32(var_2.b.x, ~global1.x);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global1 = vec3<u32>(4294967295u, ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, 4294967295u, 4294967295u)), _wgslsmith_mod_u32(global1.x, global1.x), 1u << (1u % 32u))), _wgslsmith_add_u32(_wgslsmith_div_u32(global1.x, func_4(select(vec4<bool>(true, global3[_wgslsmith_index_u32(51349u, 25u)], false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(31756u, 25u)], true, global3[_wgslsmith_index_u32(global1.x, 25u)]), true), func_2())), _wgslsmith_dot_vec2_u32(global1.yy, global1.xz)));
    let var_0 = _wgslsmith_mult_i32(4163i, -23528i);
    let var_1 = vec3<bool>(any(!vec2<bool>(global3[_wgslsmith_index_u32(~41810u, 25u)], !global3[_wgslsmith_index_u32(global1.x, 25u)])), true, _wgslsmith_sub_i32(19364i, _wgslsmith_dot_vec2_i32(~arg_0.wy, vec2<i32>(arg_0.x, -2147483647i))) >= _wgslsmith_dot_vec4_i32(~abs(arg_0), firstLeadingBit(arg_0) | -arg_0));
    let var_2 = _wgslsmith_add_u32(global1.x, reverseBits(countOneBits(firstTrailingBit(44608u))));
    global2 = array<Struct_1, 11>();
    return Struct_2(global0[_wgslsmith_index_u32(~(~71619u), 25u)], !(!(!vec3<bool>(false, var_1.x, global3[_wgslsmith_index_u32(var_2, 25u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-132f, 594f, 1306f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, 669f, 404f))))), _wgslsmith_clamp_vec4_u32((vec4<u32>(global1.x, 1u, global1.x, var_2) | vec4<u32>(1335u, global1.x, 46731u, 1u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_2, global1.x, 1u, 0u), vec4<u32>(4294967295u, 1u, global1.x, 39233u)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(4294967295u), select(global1.x, 4294967295u, global3[_wgslsmith_index_u32(global1.x, 25u)]), ~4294967295u, _wgslsmith_sub_u32(var_2, global1.x)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, 0u, var_2, var_2)), vec4<u32>(17551u, 1u, var_2, 4294967295u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-938f)), _wgslsmith_f_op_f32(sign(-446f)), _wgslsmith_f_op_f32(-1597f - 2232f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, -1157f, 259f)))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> StorageBuffer {
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_f32(round(arg_1.c.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.a.a)) - vec3<f32>(-1954f, arg_3, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_3 * arg_1.a.c.x)))));
    let var_2 = select(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(23792i, firstTrailingBit(u_input.b.x)) >> (4294967295u % 32u), -2147483647i, u_input.b.x), _wgslsmith_sub_i32(-47625i, _wgslsmith_div_i32(max(u_input.a, -1i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1i, u_input.b.x))) | 4875i), false);
    global0 = array<Struct_1, 25>();
    return StorageBuffer(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.b.x, 65305i, var_2), vec4<i32>(var_2, 0i, var_2, -1399i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_2, -12467i), vec4<i32>(-2147483647i, -14205i, var_2, var_2)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_2, 4315i, u_input.b.x, 2147483647i), vec4<i32>(-21364i, -2147483647i, u_input.a, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 4294967295u, 1u) & vec3<u32>(0u, global1.x, global1.x), vec3<u32>(1088u, global1.x, global1.x), vec3<u32>(48072u, global1.x, global1.x)) << (vec3<u32>(global1.x, 19560u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 51720u, 0u), vec3<u32>(global1.x, global1.x, 14705u)) ^ _wgslsmith_mod_u32(0u, global1.x)) % vec3<u32>(32u)), func_1(vec4<i32>(~select(u_input.a, u_input.a, false), ~(u_input.b.x | u_input.b.x), -(i32(-1i) * -1i), ~18364i)), func_1(vec4<i32>(_wgslsmith_add_i32(-22256i, _wgslsmith_add_i32(-37730i, 1i)), ~(-38638i) | (u_input.a >> (global1.x % 32u)), ~(-1889i), u_input.a)), _wgslsmith_f_op_f32(trunc(-228f)));
}

