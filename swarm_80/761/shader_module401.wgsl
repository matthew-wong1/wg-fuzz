struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, 2147483647i, 2147483647i, i32(-2147483648), -12639i, 2147483647i, -1476i, 0i, -76629i, -1i, 1i, 1i, i32(-2147483648), 2590i, -5992i);

var<private> global1: array<i32, 30> = array<i32, 30>(23515i, -61230i, 1i, 37219i, -8027i, 1i, 1i, 0i, 0i, 19231i, 1i, -25293i, 0i, -9794i, 19967i, 31767i, 32648i, 23510i, 0i, 8331i, -5540i, 1i, 4499i, -61127i, -28741i, -1i, 1i, 39167i, -1i, 0i);

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(32959i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-8325i, 1i, i32(-2147483648), 1i), vec4<i32>(-1i, 8279i, 43925i, 16004i), vec4<i32>(0i, 37878i, -38226i, -37872i), vec4<i32>(-11759i, 23365i, -1i, 0i), vec4<i32>(-13337i, 48393i, 0i, 1i), vec4<i32>(2152i, 1i, 27482i, 41321i), vec4<i32>(34932i, 2538i, -1i, 0i), vec4<i32>(0i, -3028i, -1i, 0i), vec4<i32>(58156i, -4890i, 18994i, 58043i), vec4<i32>(-1i, 0i, -1i, -35092i), vec4<i32>(2147483647i, -16501i, -1i, -1700i), vec4<i32>(38284i, 0i, -26225i, 10692i), vec4<i32>(i32(-2147483648), 1i, 13331i, -1i), vec4<i32>(45682i, -39465i, 0i, 4208i), vec4<i32>(2147483647i, -22281i, -1i, 0i), vec4<i32>(1i, -2183i, 1i, 0i), vec4<i32>(12537i, 1i, -3992i, 19207i), vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(66034i, 0i, 1i, 2147483647i), vec4<i32>(-27766i, -55960i, 18088i, 2147483647i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(30191i, -46585i, 2147483647i, 1i), vec4<i32>(-29294i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-20484i, 25894i, -6490i, 3766i), vec4<i32>(-63337i, -6656i, -32219i, 26796i), vec4<i32>(-32690i, 1i, 1i, 0i), vec4<i32>(20316i, 10079i, 0i, 4629i), vec4<i32>(36811i, 2147483647i, 1i, 1i), vec4<i32>(120240i, 38757i, 56854i, 2147483647i), vec4<i32>(-18471i, 45017i, 0i, -1i));

var<private> global3: array<bool, 17>;

var<private> global4: array<bool, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = Struct_1(-2147483647i >> (abs(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(1u, 14177u), ~37033u)) % 32u), _wgslsmith_f_op_f32(arg_3.a.b + arg_0.a.b));
    global4 = array<bool, 15>();
    var var_1 = Struct_1(arg_3.a.a, -854f);
    global3 = array<bool, 17>();
    let var_2 = 0u;
    return vec3<i32>(-2147483647i, 1i, 1i);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> i32 {
    var var_0 = !(!(!select(arg_2.c.xx, select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 15u)], true), vec2<bool>(true, true), arg_2.c.yz), !arg_2.c.yx)));
    global1 = array<i32, 30>();
    var var_1 = -firstTrailingBit(vec3<i32>(1i, -(~32313i), select(arg_2.a.a | u_input.b.x, _wgslsmith_div_i32(-13549i, global0[_wgslsmith_index_u32(66033u, 15u)]), true)));
    global3 = array<bool, 17>();
    let var_2 = arg_2.a;
    return _wgslsmith_clamp_i32(2147483647i, var_2.a, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-1i, -2147483647i)), -149i));
}

fn func_2() -> u32 {
    global1 = array<i32, 30>();
    global0 = array<i32, 15>();
    var var_0 = ((1i >> (~(u_input.a | u_input.a) % 32u)) | ~func_3(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 15u)]) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), u_input.a, Struct_2(Struct_1(-1i, -407f), 126806u, vec3<bool>(global3[_wgslsmith_index_u32(1u, 17u)], true, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a), vec4<u32>(u_input.a, u_input.a, 19342u, 1u))) | _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(countOneBits(abs(firstLeadingBit(u_input.a))), 30u)], i32(-1i) * -33894i);
    global3 = array<bool, 17>();
    var var_1 = 0u;
    return ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u) >> (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 4294967295u, u_input.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    global4 = array<bool, 15>();
    var var_0 = Struct_1(~(~select(-1i, 0i, false)), _wgslsmith_f_op_f32(select(402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(391f, -644f)) + _wgslsmith_f_op_f32(f32(-1f) * -227f))), !arg_1)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.b), -arg_0.yx ^ u_input.b), -1000f), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, ~arg_2, arg_2), 0u, 6071u), select(~vec3<u32>(74585u, u_input.a, 32663u), firstLeadingBit(~vec3<u32>(41154u, arg_2, arg_2)), vec3<bool>(true, u_input.a <= 35336u, true))), select(vec3<bool>(arg_1, false, !(u_input.a <= 33674u)), !(!vec3<bool>(true, arg_1, true)), vec3<bool>(arg_1, _wgslsmith_f_op_f32(trunc(var_0.b)) < 1563f, arg_1)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, 18410u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 12395u, 0u), max(~vec3<u32>(u_input.a, arg_2, arg_2), vec3<u32>(arg_2, u_input.a, 0u)))), ~_wgslsmith_sub_u32(u_input.a ^ ~u_input.a, ~arg_2));
    var var_2 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(24578u, ~arg_2), max(4294967295u, arg_2) ^ countOneBits(u_input.a)), 15u)], _wgslsmith_f_op_f32(step(var_0.b, 2089f))), ~74503u, var_1.c, var_1.d, _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(var_1.d.zx, _wgslsmith_mult_vec2_u32(var_1.d.zx, ~vec2<u32>(4294967295u, 18309u)))));
    let var_3 = -1372f;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4((func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(2432u, 15u)], -774f), u_input.a, vec3<bool>(true, global4[_wgslsmith_index_u32(27022u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<u32>(17458u, u_input.a, u_input.a), 17128u), global1[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], Struct_2(Struct_1(u_input.b.x, -1220f), 4294967295u, vec3<bool>(false, global4[_wgslsmith_index_u32(5774u, 15u)], true), vec3<u32>(47618u, 4294967295u, u_input.a), 26971u)) | ~vec3<i32>(-1i, -1i, global1[_wgslsmith_index_u32(0u, 30u)])) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, reverseBits(_wgslsmith_mult_u32(11578u, u_input.a))), 15u)], func_2() ^ 1u), u_input.a & _wgslsmith_mult_u32(0u, 1u), vec3<bool>(false, any(select(select(vec4<bool>(true, global4[_wgslsmith_index_u32(28611u, 15u)], global3[_wgslsmith_index_u32(46566u, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(global4[_wgslsmith_index_u32(13803u, 15u)], false, false, false), global4[_wgslsmith_index_u32(u_input.a, 15u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(50719u, 17u)], false, global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], false, global4[_wgslsmith_index_u32(58122u, 15u)], false)), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], true, global3[_wgslsmith_index_u32(89483u, 17u)], global3[_wgslsmith_index_u32(1u, 17u)]))), true | !all(vec2<bool>(false, false))), vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.a, 4294967295u), ~u_input.a ^ 1u), 4294967295u, 4294967295u), ~max(u_input.a & 4294967295u, u_input.a));
    var var_1 = 50874u;
    var var_2 = Struct_2(func_4(~(-vec3<i32>(32176i, global0[_wgslsmith_index_u32(58348u, 15u)], -20846i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], u_input.b.x, 1i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.d.x, 30u)], global0[_wgslsmith_index_u32(54344u, 15u)], u_input.b.x), vec3<i32>(-17914i, 39026i, -2147483647i))), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, 1u)), 17u)], ~func_2() & 30813u), reverseBits(countOneBits(max(var_0.e, var_0.e))) & 4294967295u, !vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.b, 15u)], all(!var_0.c)), var_0.d, u_input.a);
    global4 = array<bool, 15>();
    var_2 = Struct_2(var_2.a, ~var_2.b, vec3<bool>(true, global3[_wgslsmith_index_u32(~(var_0.d.x | var_2.e), 17u)] & (~var_0.b > ~87327u), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.d, var_0.d), countOneBits(var_0.d)), 17u)]), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_mod_u32(78291u, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.e, 0u, var_0.d.x) | var_0.d, vec3<u32>(1u, u_input.a, 1u)), var_2.d)), var_0.b);
    let var_3 = ~_wgslsmith_div_vec4_u32(abs(max(vec4<u32>(var_0.b, 4294967295u, 33233u, u_input.a), vec4<u32>(80187u, 781u, u_input.a, u_input.a))) << (~abs(vec4<u32>(4294967295u, var_0.d.x, var_2.b, 0u)) % vec4<u32>(32u)), vec4<u32>(53091u, ~(~1u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4689u, 66265u, var_0.b, 1856u), vec4<u32>(69918u, 1u, u_input.a, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, var_2.d.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), var_2.e));
    global2 = array<vec4<i32>, 31>();
    global4 = array<bool, 15>();
    var var_4 = func_4(abs(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(9484i, global1[_wgslsmith_index_u32(var_3.x, 30u)], var_0.a.a), vec3<i32>(-41941i, global0[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec3<i32>(5709i, -1i, 2147483647i)), -vec3<i32>(u_input.b.x, -14774i, 2147483647i), vec3<bool>(false, global3[_wgslsmith_index_u32(var_2.d.x, 17u)], global3[_wgslsmith_index_u32(var_3.x, 17u)]))) << (var_0.d % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(870f, var_0.a.b) * var_0.a.b))) == -1000f, 11170u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, _wgslsmith_div_vec3_f32(vec3<f32>(func_4(abs(vec3<i32>(var_4.a, -9087i, global1[_wgslsmith_index_u32(var_0.b, 30u)])), true, countOneBits(3236u)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(285f))), _wgslsmith_f_op_f32(abs(var_0.a.b))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.b))))), 0i);
}

