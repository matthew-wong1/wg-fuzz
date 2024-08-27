struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 0u, 4294967295u, 0u, 6052u, 39064u, 3236u, 12372u, 97383u, 1u, 4294967295u, 4294967295u, 4294967295u, 13175u, 22995u, 41220u, 758u, 86222u, 129301u);

var<private> global1: array<u32, 10> = array<u32, 10>(38930u, 0u, 65153u, 88364u, 0u, 93661u, 47051u, 4294967295u, 101140u, 4294967295u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(37586i, true, vec4<i32>(-4412i, -1i, 2147483647i, -23554i), vec3<i32>(4956i, -1i, 1i)), Struct_1(2147483647i, false, vec4<i32>(-14947i, 12849i, 2147483647i, 0i), vec3<i32>(-13080i, -1i, i32(-2147483648))), Struct_1(1i, false, vec4<i32>(-14869i, i32(-2147483648), 0i, -16507i), vec3<i32>(0i, i32(-2147483648), -1i)), Struct_1(i32(-2147483648), false, vec4<i32>(-26415i, -27614i, 0i, -9722i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_1(550i, false, vec4<i32>(-24767i, 29713i, 0i, -1i), vec3<i32>(2147483647i, 37051i, 28346i)), Struct_1(37097i, false, vec4<i32>(28091i, i32(-2147483648), 23128i, 1i), vec3<i32>(12747i, 2147483647i, 0i)), Struct_1(-20876i, false, vec4<i32>(-58140i, 1i, 0i, 6318i), vec3<i32>(-1i, -1i, 31899i)), Struct_1(27505i, true, vec4<i32>(-54802i, -1i, 0i, -1i), vec3<i32>(-1i, 17657i, 5575i)), Struct_1(i32(-2147483648), false, vec4<i32>(0i, -41788i, i32(-2147483648), 28200i), vec3<i32>(10966i, -1i, -4357i)), Struct_1(82171i, true, vec4<i32>(51171i, 0i, 37875i, 1i), vec3<i32>(68701i, -1i, -25607i)), Struct_1(0i, true, vec4<i32>(-50111i, i32(-2147483648), -1i, 28904i), vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(0i, true, vec4<i32>(-3262i, 2147483647i, 1i, 47937i), vec3<i32>(3157i, 1i, -8104i)), Struct_1(6422i, false, vec4<i32>(0i, 0i, 4006i, 10808i), vec3<i32>(-6869i, 2147483647i, 1255i)), Struct_1(i32(-2147483648), false, vec4<i32>(5748i, 0i, 2147483647i, -4525i), vec3<i32>(2147483647i, -12827i, 2147483647i)), Struct_1(2147483647i, false, vec4<i32>(-1i, 32436i, 2147483647i, 3440i), vec3<i32>(2147483647i, 84956i, 2147483647i)), Struct_1(-14463i, false, vec4<i32>(2147483647i, i32(-2147483648), 1i, 17970i), vec3<i32>(2147483647i, -19000i, 33866i)), Struct_1(-1i, false, vec4<i32>(5222i, i32(-2147483648), -30227i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 7073i)), Struct_1(i32(-2147483648), false, vec4<i32>(21629i, i32(-2147483648), 3959i, -31551i), vec3<i32>(-1i, 1i, 2147483647i)), Struct_1(i32(-2147483648), true, vec4<i32>(-1i, 0i, -1i, -1i), vec3<i32>(-1i, -1i, 10722i)), Struct_1(1i, false, vec4<i32>(i32(-2147483648), -21262i, -1i, 42302i), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(0i, true, vec4<i32>(i32(-2147483648), 2147483647i, 18439i, 2147483647i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_1(i32(-2147483648), true, vec4<i32>(0i, 2147483647i, 0i, 0i), vec3<i32>(-7060i, 1i, -32991i)), Struct_1(-36425i, true, vec4<i32>(8858i, 0i, -18757i, i32(-2147483648)), vec3<i32>(5660i, 2147483647i, -7428i)), Struct_1(-10278i, false, vec4<i32>(-6207i, -1i, 1i, -52050i), vec3<i32>(13250i, 54738i, -45056i)), Struct_1(i32(-2147483648), true, vec4<i32>(i32(-2147483648), -32616i, 2147483647i, 15366i), vec3<i32>(0i, 32314i, 51711i)), Struct_1(29384i, true, vec4<i32>(-38960i, 6446i, 10986i, 2147483647i), vec3<i32>(9347i, 7107i, -18208i)), Struct_1(0i, false, vec4<i32>(36160i, 93444i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 1955i, 0i)), Struct_1(-6224i, true, vec4<i32>(2147483647i, -1i, 0i, -6931i), vec3<i32>(-10507i, -1i, 1i)), Struct_1(2147483647i, true, vec4<i32>(0i, -9643i, 41412i, -28985i), vec3<i32>(0i, -16187i, 21020i)), Struct_1(48485i, true, vec4<i32>(1i, 9990i, 0i, 49708i), vec3<i32>(1i, 1i, -1i)));

var<private> global3: array<vec4<i32>, 19>;

var<private> global4: array<vec3<bool>, 4>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1715f), vec4<f32>(1921f, arg_0.x, -203f, 656f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1632f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(167f, 1811f, arg_0.x, arg_0.x) + vec4<f32>(444f, 1000f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -1198f, 387f, -2133f)))))));
    global3 = array<vec4<i32>, 19>();
    global4 = array<vec3<bool>, 4>();
    global4 = array<vec3<bool>, 4>();
    let var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 10u)];
    return _wgslsmith_f_op_f32(trunc(-1203f));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(368f, arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -2034f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-2067f)), 141f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(step(-1085f, 105f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1088f, arg_0, -1088f, -1000f) - vec4<f32>(arg_0, -1072f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, arg_0, -1014f, 1000f) + vec4<f32>(-1101f, arg_0, 920f, 339f)), false)), vec4<f32>(_wgslsmith_f_op_f32(floor(1660f)), _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(-357f * -816f), 311f)))));
    var var_1 = abs(reverseBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48843u, 19u)], 10u)], 19u)]), 19u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 6296u), 19u)])));
    let var_2 = Struct_1(-20580i, _wgslsmith_dot_vec4_i32(-global3[_wgslsmith_index_u32(0u, 19u)] << (arg_1 % vec4<u32>(32u)), -vec4<i32>(-12390i, -1179i, 9164i, 2147483647i)) != ~(-reverseBits(-65939i)), firstLeadingBit(_wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], abs(_wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(arg_1.x, 19u)], vec4<i32>(1i, 0i, 1i, -2147483647i))))), countOneBits(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -81199i), vec2<i32>(1i, 1i)), min(i32(-1i) * -43791i, ~(-65401i)))));
    var var_3 = Struct_2(true && var_2.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 603f, 775f, _wgslsmith_f_op_f32(max(arg_0, var_0.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -352f), var_0.x, _wgslsmith_f_op_f32(1212f + -961f), -647f), vec4<f32>(-1390f, _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))));
    global3 = array<vec4<i32>, 19>();
    return true;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(all(vec4<bool>(func_3(_wgslsmith_f_op_f32(trunc(1412f)), vec4<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60443u, 10u)], 19u)], 4294967295u, 7086u)), false, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1433f)), _wgslsmith_f_op_f32(-1802f * -377f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<f32>(400f, -2602f), vec2<i32>(2147483647i, 0i), true)))), 802f)));
    global1 = array<u32, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.b.xx + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.b.xw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -652f))), var_0.b.wx)));
    global2 = array<Struct_1, 30>();
    global0 = array<u32, 19>();
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(9155i, abs(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(5272i, 42210i, 1i), vec3<i32>(-2147483647i, 0i, -6608i)))), firstTrailingBit(2147483647i) & ~(i32(-1i) * -1i)), vec3<i32>(~1i, -1i, _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-42983i, -2147483647i, 46941i), -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-23310i, -2147483647i, ~1i), -(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 2147483647i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-943f - 2504f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(398f - -1000f), _wgslsmith_div_f32(-573f, 359f)), 749f, any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(1f, 1f), reverseBits(vec2<i32>(-1i, 2147483647i)), true)), -1410f), true)));
    let var_1 = func_2();
    let var_2 = Struct_1(min(var_1.x << (u_input.a % 32u), 1i), false, select(_wgslsmith_mult_vec4_i32(select(global3[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), 19u)], global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b, 10u)], 19u)], select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), _wgslsmith_add_vec4_i32(vec4<i32>(42719i, -13302i, var_1.x, var_1.x), global3[_wgslsmith_index_u32(~59705u, 19u)])), ~((vec4<i32>(var_1.x, -41548i, var_1.x, var_1.x) ^ vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)) | vec4<i32>(var_1.x, var_1.x, -23316i, -2147483647i)), true), ~vec3<i32>(countOneBits(-9104i), _wgslsmith_dot_vec2_i32(var_1.yz, abs(vec2<i32>(2147483647i, var_1.x))), 14848i));
    var var_3 = Struct_2(all(!(!vec2<bool>(true, var_2.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -1222f, 303f, 263f) - vec4<f32>(2452f, -907f, -142f, 556f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1547f, -313f, 461f, -549f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2567f, 576f, 448f, 890f) - vec4<f32>(854f, 1176f, -649f, 2060f))))));
    global1 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(548f)) - _wgslsmith_f_op_f32(-var_3.b.x)) * _wgslsmith_f_op_f32(func_1(var_3.b.zw, -var_2.c.yy, true)))));
}

