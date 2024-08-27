struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<i32>(i32(-2147483648), 1i), -496f, vec3<i32>(-7856i, -10476i, i32(-2147483648)), vec2<u32>(292u, 61726u)), Struct_2(vec2<i32>(29454i, -67956i), -1835f, vec3<i32>(i32(-2147483648), i32(-2147483648), -54577i), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<i32>(-15257i, 31886i), -579f, vec3<i32>(31903i, -4502i, 1i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<i32>(0i, -1i), -223f, vec3<i32>(i32(-2147483648), 2147483647i, -71206i), vec2<u32>(12488u, 4294967295u)), Struct_2(vec2<i32>(2536i, 1i), 446f, vec3<i32>(-4683i, 2147483647i, 0i), vec2<u32>(1u, 0u)), Struct_2(vec2<i32>(-18357i, 27641i), 888f, vec3<i32>(i32(-2147483648), 73605i, -72i), vec2<u32>(0u, 0u)), Struct_2(vec2<i32>(-18484i, 2147483647i), 1118f, vec3<i32>(i32(-2147483648), 1i, 55031i), vec2<u32>(4294967295u, 0u)), Struct_2(vec2<i32>(1i, -20257i), -425f, vec3<i32>(-39902i, 10529i, 25964i), vec2<u32>(0u, 1u)), Struct_2(vec2<i32>(-1888i, 2147483647i), -725f, vec3<i32>(-9277i, -18123i, 11825i), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(23005i, 0i), 247f, vec3<i32>(14466i, i32(-2147483648), i32(-2147483648)), vec2<u32>(94269u, 4294967295u)), Struct_2(vec2<i32>(-1i, 8477i), -155f, vec3<i32>(-1i, i32(-2147483648), -1i), vec2<u32>(8114u, 0u)), Struct_2(vec2<i32>(-1i, 2147483647i), -157f, vec3<i32>(-1i, 0i, i32(-2147483648)), vec2<u32>(0u, 26803u)), Struct_2(vec2<i32>(40141i, -16457i), 566f, vec3<i32>(i32(-2147483648), 26431i, 29182i), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<i32>(18004i, i32(-2147483648)), -111f, vec3<i32>(2147483647i, 2147483647i, -21366i), vec2<u32>(8465u, 0u)), Struct_2(vec2<i32>(-2336i, 34505i), -711f, vec3<i32>(-31616i, 48284i, i32(-2147483648)), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(-1i, 1i), 180f, vec3<i32>(0i, 2147483647i, -11314i), vec2<u32>(19215u, 71615u)), Struct_2(vec2<i32>(2147483647i, 15333i), -1562f, vec3<i32>(12882i, -1i, 28784i), vec2<u32>(0u, 1u)), Struct_2(vec2<i32>(-19749i, 1i), 106f, vec3<i32>(-28524i, -10017i, -24166i), vec2<u32>(17077u, 0u)), Struct_2(vec2<i32>(18430i, 12393i), -297f, vec3<i32>(i32(-2147483648), 3337i, 0i), vec2<u32>(113335u, 1u)));

var<private> global2: array<vec3<i32>, 5>;

var<private> global3: u32 = 24162u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<u32> {
    global0 = array<Struct_1, 10>();
    var var_0 = vec4<u32>(25590u, _wgslsmith_clamp_u32(~0u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(82183u, 1u, 0u, 33527u)), ~(~1u), ~firstTrailingBit(abs(4294967295u))), ~_wgslsmith_clamp_u32(max(_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 51902u), vec2<u32>(10687u, 0u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(16301u, 1u, 36239u, 74199u), vec4<u32>(38334u, 21835u, 6384u, 38750u)), ~vec4<u32>(4294967295u, 1871u, 1u, 4294967295u)), countOneBits(1u)), ~50727u);
    let var_1 = global1[_wgslsmith_index_u32(5777u, 19u)];
    let var_2 = Struct_1(-33362i, -688f, _wgslsmith_add_u32(~abs(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11084u, var_0.x, 21441u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, 29221u, 116002u, var_0.x), vec4<u32>(var_0.x, var_0.x, 2564u, 4294967295u)) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, 33678u, var_1.d.x, 28004u)))), var_1.a.x, -847f);
    global3 = ~abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_2.c, var_2.c, var_1.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.c, var_1.d.x, var_1.d.x), vec3<u32>(var_0.x, 4294967295u, 497u))) | ~_wgslsmith_add_u32(var_0.x, var_2.c));
    return _wgslsmith_add_vec4_u32(~vec4<u32>(~_wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(var_1.d.x, var_1.d.x)), var_1.d.x, firstLeadingBit(1u << (var_0.x % 32u)), ~var_1.d.x), (max(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, 0u, 86923u, var_1.d.x), vec4<u32>(1u, 73530u, var_2.c, var_2.c)), vec4<u32>(var_2.c, var_2.c, var_1.d.x, var_2.c) | vec4<u32>(52007u, 23505u, var_2.c, 1u)) << (vec4<u32>(min(var_0.x, var_2.c), 0u, ~4294967295u, 52299u) % vec4<u32>(32u))) << (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, 1u, 60244u, var_0.x), vec4<u32>(var_1.d.x, 494u, 1u, var_1.d.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = select(select(vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), select(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true), vec2<bool>(false, false), vec2<bool>(_wgslsmith_div_f32(arg_0, arg_1.b) < _wgslsmith_f_op_f32(arg_1.b - -394f), !select(false, true, true))), !(~2147483647i == firstLeadingBit(arg_1.c.x)));
    global1 = array<Struct_2, 19>();
    var var_1 = ~_wgslsmith_div_u32(arg_1.d.x, firstLeadingBit(~0u)) | (firstLeadingBit(arg_1.d.x) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(5641u), _wgslsmith_clamp_u32(arg_1.d.x, arg_1.d.x, arg_1.d.x)), select(arg_1.d.x, arg_1.d.x, arg_1.b > arg_1.b)) % 32u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 310f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2752f, -212f)), _wgslsmith_f_op_f32(step(729f, -223f)))))), -1437f, -1154f, -1077f);
    return _wgslsmith_sub_u32(arg_1.d.x, ~_wgslsmith_sub_u32(~(~0u), ~(arg_1.d.x | 4294967295u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = true;
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    let var_1 = global1[_wgslsmith_index_u32(func_4(-276f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(48573u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1, arg_1, arg_1, 47991u)), func_3(arg_2, arg_2))), 19u)]) >> (_wgslsmith_clamp_u32(firstLeadingBit(firstTrailingBit(arg_1)) | arg_1, ~(4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(71705u, 66900u))), ~(~26528u)) % 32u), 19u)];
    global1 = array<Struct_2, 19>();
    return ~(~arg_1);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_1((-963i >> (arg_1.x % 32u)) ^ arg_0.c.x, arg_0.b, ~_wgslsmith_mod_u32(func_2(arg_0.c.yy, arg_0.d.x, _wgslsmith_f_op_f32(trunc(-1655f))), ~1u), ~(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-232i, u_input.c)), vec2<i32>(u_input.b.x, arg_0.c.x))), -133f);
    var var_1 = max(global2[_wgslsmith_index_u32(var_0.c | 0u, 5u)], _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(~var_0.c, ~33774u, 1u), 4294967295u), 5u)], arg_0.c));
    var var_2 = ~select(var_1.x, u_input.b.x, (_wgslsmith_dot_vec2_u32(vec2<u32>(6258u, 22104u), arg_1.xy) | abs(arg_0.d.x)) >= 38929u);
    var_1 = u_input.b.wyw;
    let var_3 = true;
    return -694f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1679f + _wgslsmith_f_op_f32(304f + -1791f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(105f - -474f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-424f, 581f) + -449f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(236f, 328f, 420f, -1696f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-597f, -507f, -1000f, -513f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, 223f, 1908f, 557f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(899f, 271f, -981f, 1000f) - vec4<f32>(1000f, -475f, 1000f, 1512f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) * _wgslsmith_f_op_f32(692f - -681f)), -791f, _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 19u)], vec4<u32>(1u, 1u, 1u, 1u))), -160f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - 1229f)));
    let var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-(~u_input.b.x), -(0i << (1u % 32u))), max(u_input.c, u_input.b.x ^ -5111i) << (~firstTrailingBit(0u) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -967f)))))), 1u, ~(-2147483647i), 2226f);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, -666f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1977f, -1298f, -1194f, 200f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-312f, var_3, var_0.x, var_2.e), vec4<f32>(_wgslsmith_f_op_f32(-1612f + var_0.x), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(abs(446f)), _wgslsmith_f_op_f32(var_3 - var_2.e)), false)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.e, 853f, 691f, -2460f), vec4<f32>(169f, 860f, var_3, var_3), false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_2.e, -2787f, var_2.e), vec4<f32>(var_0.x, 886f, var_3, 470f))), vec4<f32>(-1000f, 911f, -1454f, -340f))))))));
    global1 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.zxx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_0.x, var_2.b) + vec3<f32>(-1344f, -769f, var_3)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zxz))))));
}

