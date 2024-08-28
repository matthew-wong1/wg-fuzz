struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, false, false, true, true, true, true, false, false, false, false, true, false, true, true, true, false, true, false, true);

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(15165i, 1i, 42254i), vec4<bool>(true, true, true, false), 4294967295u, vec3<f32>(-644f, -1755f, 968f), vec4<i32>(1i, 3491i, -1i, -39774i)), Struct_1(vec3<i32>(i32(-2147483648), -39745i, -16971i), vec4<bool>(true, false, true, false), 2349u, vec3<f32>(183f, -433f, 385f), vec4<i32>(-1i, -41685i, -49384i, 0i)), Struct_1(vec3<i32>(-23438i, 0i, -1i), vec4<bool>(true, true, true, true), 0u, vec3<f32>(-1285f, -1599f, 656f), vec4<i32>(-1i, -56162i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(-19554i, 0i, 1i), vec4<bool>(true, true, false, true), 6882u, vec3<f32>(-255f, 744f, -1228f), vec4<i32>(2147483647i, 1i, 3405i, 0i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -9640i), vec4<bool>(true, false, true, false), 87149u, vec3<f32>(-436f, 337f, 1333f), vec4<i32>(0i, 0i, 2147483647i, 27389i)), Struct_1(vec3<i32>(1i, 1i, 40355i), vec4<bool>(true, false, false, true), 1u, vec3<f32>(-1263f, -527f, 217f), vec4<i32>(-53053i, 16255i, 5445i, -38704i)), Struct_1(vec3<i32>(i32(-2147483648), 19122i, -46818i), vec4<bool>(false, true, true, false), 7763u, vec3<f32>(-794f, -877f, -1169f), vec4<i32>(4473i, 0i, 1i, 30048i)), Struct_1(vec3<i32>(-60665i, 2147483647i, 2147483647i), vec4<bool>(false, true, false, false), 0u, vec3<f32>(672f, 1000f, -372f), vec4<i32>(0i, -70042i, 2147483647i, 92031i)), Struct_1(vec3<i32>(61322i, -1i, -1i), vec4<bool>(false, false, false, false), 0u, vec3<f32>(902f, -842f, 780f), vec4<i32>(1i, 8140i, -1i, -15482i)), Struct_1(vec3<i32>(-1i, -41756i, -1i), vec4<bool>(true, true, false, true), 20366u, vec3<f32>(690f, 363f, -416f), vec4<i32>(-1i, -30303i, 1i, -3818i)), Struct_1(vec3<i32>(-1i, -10759i, -26646i), vec4<bool>(true, true, false, false), 4294967295u, vec3<f32>(1226f, -105f, 1405f), vec4<i32>(-1i, 64727i, -5048i, 2147483647i)), Struct_1(vec3<i32>(-42724i, 2147483647i, 0i), vec4<bool>(true, false, true, true), 4294967295u, vec3<f32>(200f, -1092f, -1442f), vec4<i32>(2147483647i, i32(-2147483648), -1i, 1i)), Struct_1(vec3<i32>(20321i, 12796i, 2612i), vec4<bool>(true, true, false, false), 4294967295u, vec3<f32>(-2896f, 416f, 1093f), vec4<i32>(-29939i, 0i, 37180i, -26247i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), vec4<bool>(true, true, false, true), 77063u, vec3<f32>(-389f, 539f, -660f), vec4<i32>(-15716i, 2147483647i, 2147483647i, -3869i)), Struct_1(vec3<i32>(-43945i, 0i, 58073i), vec4<bool>(false, false, true, false), 30650u, vec3<f32>(-741f, 834f, 598f), vec4<i32>(44745i, 46132i, 21146i, -1i)), Struct_1(vec3<i32>(1710i, 0i, -1i), vec4<bool>(false, false, false, false), 1u, vec3<f32>(-1724f, -1000f, 103f), vec4<i32>(-12806i, -1i, 0i, 36995i)), Struct_1(vec3<i32>(-35810i, 1i, -25107i), vec4<bool>(false, true, false, false), 21137u, vec3<f32>(197f, 788f, 1906f), vec4<i32>(17027i, 0i, 1782i, i32(-2147483648))), Struct_1(vec3<i32>(-715i, 1411i, -70417i), vec4<bool>(true, true, true, true), 1u, vec3<f32>(-831f, -185f, -753f), vec4<i32>(22337i, 3210i, 44258i, -25252i)), Struct_1(vec3<i32>(-22037i, 55049i, i32(-2147483648)), vec4<bool>(false, true, true, false), 106887u, vec3<f32>(199f, -1206f, 614f), vec4<i32>(2147483647i, 16176i, i32(-2147483648), -27183i)), Struct_1(vec3<i32>(-535i, 2147483647i, 19537i), vec4<bool>(true, false, true, false), 0u, vec3<f32>(-124f, 630f, -836f), vec4<i32>(-1i, -38193i, 0i, 2147483647i)), Struct_1(vec3<i32>(12287i, 2147483647i, 6i), vec4<bool>(false, true, true, true), 62081u, vec3<f32>(613f, 372f, -1000f), vec4<i32>(-18689i, i32(-2147483648), 14436i, -8422i)), Struct_1(vec3<i32>(-46636i, -1i, -65289i), vec4<bool>(true, false, false, true), 69528u, vec3<f32>(-586f, -1605f, -2267f), vec4<i32>(-59792i, 0i, -41225i, 28420i)), Struct_1(vec3<i32>(1i, 1i, -7085i), vec4<bool>(true, false, true, false), 20313u, vec3<f32>(-362f, -108f, 1882f), vec4<i32>(i32(-2147483648), 57819i, 5644i, -10776i)), Struct_1(vec3<i32>(10163i, -1i, 24965i), vec4<bool>(false, true, true, true), 14848u, vec3<f32>(-819f, -387f, -293f), vec4<i32>(5507i, i32(-2147483648), -4291i, 53728i)), Struct_1(vec3<i32>(-1i, 9761i, 2147483647i), vec4<bool>(true, false, false, true), 4294967295u, vec3<f32>(-167f, 1147f, -376f), vec4<i32>(-1i, -22805i, i32(-2147483648), 25936i)));

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = !arg_2.b.ywy;
    var var_1 = arg_0.x;
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(reverseBits(-_wgslsmith_clamp_vec3_i32(arg_2.e.wwx, vec3<i32>(1i, arg_0.x, arg_0.x), u_input.a)), u_input.a), !arg_2.b, 65171u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.d.x, -1364f, -511f), arg_2.d) + _wgslsmith_f_op_vec3_f32(arg_2.d - arg_2.d))))), arg_2.e);
    let var_3 = 19995u;
    var_1 = u_input.c & arg_0.x;
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zy, u_input.b.zy), arg_3.zz, _wgslsmith_sub_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_3), vec2<u32>(u_input.b.x, arg_2.c))), u_input.b.zy));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(~(arg_0.e.zyx | (vec3<i32>(0i, u_input.a.x, u_input.a.x) << (u_input.b % vec3<u32>(32u)))), vec3<i32>(9412i, u_input.c, _wgslsmith_dot_vec3_i32(-u_input.a, max(u_input.a, vec3<i32>(-2147483647i, arg_1.a.x, arg_1.a.x))))), !arg_0.b, _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xz >> (select(~u_input.b.yz, func_3(arg_1.a, 2189f, arg_0, vec3<u32>(u_input.d, 73079u, arg_0.c)), true) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - 1487f), _wgslsmith_f_op_f32(floor(422f)), -1204f)), -(~(vec4<i32>(arg_1.a.x, -41773i, arg_1.a.x, -10972i) >> (abs(vec4<u32>(arg_1.c, u_input.d, 14305u, 100791u)) % vec4<u32>(32u)))));
    let var_1 = reverseBits(arg_1.c);
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-368f, arg_1.d.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.zx))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -642f))), _wgslsmith_f_op_f32(316f + -1905f)), all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(arg_0.c, 20u)], global0[_wgslsmith_index_u32(var_1, 20u)], true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1312f, arg_0.d.x))))))));
    return abs(_wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a.zz, abs(var_0.a.yy)), _wgslsmith_div_vec2_i32(min(_wgslsmith_div_vec2_i32(arg_1.a.zx, vec2<i32>(u_input.c, -18682i)), arg_0.a.yy), select(max(arg_0.a.zz, vec2<i32>(-31416i, 7247i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-19044i, 913i), arg_0.a.xx), var_0.b.x))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.a.zz, abs(-func_2(global2[_wgslsmith_index_u32(max(30444u, 1u), 27u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 52214u, u_input.b.x), vec4<u32>(32374u, u_input.d, 19309u, u_input.b.x)), 25u)])));
    var var_1 = Struct_1(u_input.a, vec4<bool>(true, !(_wgslsmith_mult_i32(-3860i, u_input.c) >= (i32(-1i) * -19381i)), !any(select(vec2<bool>(global0[_wgslsmith_index_u32(13400u, 20u)], global0[_wgslsmith_index_u32(u_input.d, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), countOneBits(u_input.c | var_0.x) < _wgslsmith_clamp_i32(i32(-1i) * -20643i, 6520i, abs(-1i))), func_3(select(u_input.a, vec3<i32>(~u_input.a.x, var_0.x ^ -74448i, ~0i), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 20u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)], true), vec3<bool>(global0[_wgslsmith_index_u32(53584u, 20u)], true, true))), -1847f, Struct_1(-_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 20u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(36556u, u_input.d), 20u)]), (u_input.b.x << (u_input.d % 32u)) & _wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(833f, -1241f, 490f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, -197f, -1197f) * vec3<f32>(2576f, -537f, -1259f))), firstLeadingBit(select(vec4<i32>(-1i, 34768i, u_input.a.x, 1i), vec4<i32>(21773i, 43908i, var_0.x, -40422i), true))), vec3<u32>(~u_input.d, 1u, 1u)).x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, _wgslsmith_f_op_f32(min(-218f, _wgslsmith_div_f32(-3025f, 2679f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(277f * -1888f)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(1001f, 1016f), -935f, -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-376f, -545f, -203f)))))), -_wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_0.x, -25060i, var_0.x, u_input.a.x)), firstTrailingBit(min(vec4<i32>(var_0.x, -2147483647i, var_0.x, -38074i), vec4<i32>(0i, u_input.c, 578i, 1i)))));
    global0 = array<bool, 20>();
    let var_2 = global1[_wgslsmith_index_u32(~((~max(4294967295u, var_1.c) | _wgslsmith_div_u32(u_input.b.x, var_1.c)) << (func_3(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1572f), Struct_1(select(vec3<i32>(0i, 26896i, var_0.x), vec3<i32>(-937i, -63950i, -1i), vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.c, 20u)], true), var_1.b, var_1.b), abs(u_input.b.x), _wgslsmith_f_op_vec3_f32(ceil(var_1.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_1.e.x, 0i, var_1.e.x), vec4<i32>(u_input.c, var_1.a.x, var_0.x, var_1.e.x))), vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.b.x), select(0u, 35321u, true), firstTrailingBit(var_1.c))).x % 32u)), 25u)];
    var var_3 = var_1.c;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(var_2.d.x, -1175f)), _wgslsmith_f_op_f32(1000f + var_1.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d.zx, vec2<f32>(262f, var_2.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1161f, var_1.d.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~6548i, _wgslsmith_clamp_i32(u_input.a.x, countOneBits(u_input.a.x) & ~_wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.c));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1613f, -1532f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1814f, 882f)))) * vec2<f32>(-466f, _wgslsmith_f_op_f32(f32(-1f) * -1739f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(248f, -1115f, -1000f, -305f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, -1672f, 1000f) - vec4<f32>(var_2.x, var_2.x, 878f, var_2.x))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -484f), var_2.x, 265f), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], false, true, true))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(528f - _wgslsmith_div_f32(1182f, 1886f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_2.x))))), vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, u_input.b.x) | abs(52147u), 20u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, 5297u, u_input.d) >> (vec4<u32>(var_1, 133519u, var_1, var_1) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.d, 18141u, 0u))), min(vec4<u32>(var_1, 0u, 4294967295u, u_input.d), firstLeadingBit(vec4<u32>(var_1, u_input.d, 1u, 0u)))), 20u)], true, global0[_wgslsmith_index_u32(func_3(vec3<i32>(u_input.c, -2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-977f + 389f), Struct_1(u_input.a, vec4<bool>(false, false, false, true), u_input.d, vec3<f32>(804f, 753f, var_2.x), vec4<i32>(-44403i, u_input.a.x, -2147483647i, u_input.c)), countOneBits(vec3<u32>(37854u, 41631u, u_input.d))).x | 69556u, 20u)])));
    global1 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(var_3.x, 380f)), _wgslsmith_f_op_f32(f32(-1f) * -339f)));
}

