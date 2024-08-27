struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, -1i, 2147483647i, 2147483647i), vec4<i32>(1i, 2147483647i, 0i, 21044i), vec4<i32>(i32(-2147483648), 14465i, -5939i, -36163i), vec4<i32>(8642i, 2147483647i, 76151i, 0i), vec4<i32>(-38023i, -46269i, 63059i, -1i), vec4<i32>(0i, 0i, 1i, -32559i), vec4<i32>(23737i, 1i, 11043i, 28160i), vec4<i32>(-34924i, 0i, 40495i, 65913i), vec4<i32>(-1i, 28117i, 1i, -34056i), vec4<i32>(-34754i, 39456i, -17759i, 9961i), vec4<i32>(1i, 0i, 6612i, -1i), vec4<i32>(0i, 0i, 39239i, 1i), vec4<i32>(28875i, 244i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, 1934i, 0i), vec4<i32>(1i, 8313i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 1i, 1i, 46324i), vec4<i32>(i32(-2147483648), 2147483647i, 39341i, -14548i), vec4<i32>(4582i, 6574i, -13481i, 2147483647i), vec4<i32>(10999i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 18406i, -19850i), vec4<i32>(-12719i, 32049i, -37143i, -33458i), vec4<i32>(-14143i, -1358i, 0i, 1i), vec4<i32>(2147483647i, -1i, 0i, 1i), vec4<i32>(i32(-2147483648), -14172i, -11466i, 19262i));

var<private> global1: array<bool, 25>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = countOneBits(~u_input.b) ^ reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(38631u, u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 25806u, u_input.b.x), u_input.b)));
    global0 = array<vec4<i32>, 24>();
    let var_1 = Struct_3(88423u, !select(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)])), select(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], true), arg_0 <= arg_0), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x >> (var_0.x % 32u), 25u)], global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 25u)], true)), Struct_2(-550f, Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, arg_0, -1372f) * vec3<f32>(arg_0, -245f, arg_0))), _wgslsmith_mult_vec3_i32(-u_input.a, u_input.a), select(true, true, true)), !(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), global1[_wgslsmith_index_u32(20958u, 25u)])), Struct_1(select(-1i <= u_input.a.x, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 556f, 823f), _wgslsmith_div_vec3_f32(vec3<f32>(125f, 899f, arg_0), vec3<f32>(563f, -568f, arg_0)))), firstLeadingBit(vec3<i32>(13590i, arg_1, 1i) & vec3<i32>(-10022i, arg_1, arg_1)), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)])))), -1i, 171f);
    var var_2 = reverseBits(-25396i);
    var_2 = var_1.d;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.e + 2123f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f * -500f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_1.c.a)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = Struct_4(Struct_3(min(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(81477u, arg_0.a, 67055u), vec3<u32>(0u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, var_0.a, 32515u), vec3<u32>(var_0.a, arg_0.a, var_0.a))), u_input.b.x & ~arg_0.a), var_0.b, arg_0.c, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(arg_2.b.x, arg_1.x), 1i)))), var_0.b.xx, vec4<bool>(false, !arg_0.b.x == arg_3.a, false, true));
    var var_2 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * arg_2.b.x))), 739f, arg_2.b.x), var_1.a.c.b.c, select(any(!select(var_1.b, vec2<bool>(arg_3.a, false), vec2<bool>(true, true))), global1[_wgslsmith_index_u32(23146u, 25u)] | true, var_0.c.c.x));
    let var_3 = _wgslsmith_clamp_i32(-1i, max(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(arg_3.c.x, 1i, 0i), _wgslsmith_sub_i32(9562i, _wgslsmith_dot_vec3_i32(vec3<i32>(-78i, u_input.a.x, 2147483647i), var_1.a.c.b.c))), 13735i), var_1.a.c.b.c.x);
    var_0 = Struct_3(~(1u ^ var_0.a), var_0.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1854f)), arg_3, select(select(select(arg_0.c.c, arg_0.c.c, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], false), vec3<bool>(true, var_2.a, global1[_wgslsmith_index_u32(var_0.a, 25u)])), !var_0.c.c, false), arg_2), _wgslsmith_mod_i32(arg_3.c.x, -1i), _wgslsmith_f_op_f32(arg_0.c.b.b.x * -1741f));
    return _wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(4294967295u, 77649u, 1u, u_input.b.x), vec4<u32>(0u, var_0.a, u_input.b.x, 10745u) >> (vec4<u32>(39716u, u_input.b.x, u_input.b.x, 127043u) % vec4<u32>(32u)), select(var_1.c, vec4<bool>(false, arg_2.d, arg_3.d, false), arg_2.a)), firstLeadingBit(~vec4<u32>(var_0.a, 0u, 1u, u_input.b.x)), !vec4<bool>(var_0.c.c.x, var_1.a.b.x, var_1.a.c.d.a, arg_2.a)), ~(~countOneBits(vec4<u32>(3800u, 39787u, 73326u, 13369u))), ~min(vec4<u32>(u_input.b.x, arg_0.a, var_1.a.a, 4294967295u) << (vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<u32>(11008u, arg_0.a, u_input.b.x, var_0.a))) ^ vec4<u32>(41905u, 41388u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x))), abs(~arg_0.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    return ~_wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(3558u, 1u, u_input.b.x)) & 0u, _wgslsmith_dot_vec4_u32(func_2(Struct_3(u_input.b.x, vec3<bool>(arg_3, true, global1[_wgslsmith_index_u32(32523u, 25u)]), Struct_2(arg_0.x, Struct_1(arg_3, vec3<f32>(arg_0.x, -755f, arg_0.x), u_input.a, false), vec3<bool>(arg_3, global1[_wgslsmith_index_u32(32295u, 25u)], false), Struct_1(arg_3, vec3<f32>(609f, arg_0.x, arg_0.x), vec3<i32>(-1i, u_input.a.x, 2147483647i), global1[_wgslsmith_index_u32(34747u, 25u)])), -2147483647i, -903f), vec3<f32>(239f, 753f, arg_0.x), Struct_1(false, vec3<f32>(arg_0.x, 279f, arg_0.x), vec3<i32>(23066i, u_input.a.x, u_input.a.x), true), Struct_1(arg_3, vec3<f32>(575f, arg_0.x, -940f), u_input.a, arg_3)), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x) | vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), abs(abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 24>();
    var var_0 = max(vec3<i32>(u_input.a.x, -27581i, ~5460i), ~u_input.a);
    var var_1 = !select(all(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 38418u) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 39592u, 1u, u_input.b.x) & vec4<u32>(u_input.b.x, 30073u, u_input.b.x, u_input.b.x)), vec4<u32>(firstLeadingBit(30377u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 23581u), min(u_input.b.x, 1u), u_input.b.x)), 25u)], false);
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, ~14368u), u_input.b);
    let var_3 = vec4<bool>(any(select(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)])), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_2.x, 25u)]), global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(~13689u, 25u)], global1[_wgslsmith_index_u32(var_2.x, 25u)], true))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, 1306f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(811f, -1460f) - vec2<f32>(241f, -1000f))), vec2<i32>(-1i, reverseBits(-6768i)), vec3<i32>(0i, var_0.x, min(0i, -1426i)), any(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]))), 10941u >> (var_2.x % 32u)), 25u)], true, select(true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.b.x, 140672u)), 25u)], global1[_wgslsmith_index_u32(var_2.x, 25u)]) | false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(vec4<u32>(~var_2.x, 4294967295u, _wgslsmith_div_u32(var_2.x, 60248u), 29392u), abs(vec4<u32>(var_2.x, u_input.b.x, 20498u, 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1589f), _wgslsmith_f_op_f32(-623f * -519f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -318f))))), ~u_input.b.yx, -1545f);
}

