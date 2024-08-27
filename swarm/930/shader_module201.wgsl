struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_3(Struct_1(vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<u32>(26587u, 4294967295u, 84435u)), Struct_1(vec3<u32>(49458u, 33466u, 14906u)), 4294967295u, vec4<f32>(-673f, 1000f, 280f, -1000f)), 2147483647i, Struct_3(Struct_1(vec3<u32>(45042u, 0u, 56128u)), Struct_1(vec3<u32>(78262u, 823u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 13005u)), 1u, vec4<f32>(462f, -1000f, 1181f, 1481f)), 17595u, false), Struct_4(Struct_3(Struct_1(vec3<u32>(16958u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(1u, 4693u, 4294967295u)), 6044u, vec4<f32>(2804f, -226f, 603f, 576f)), -44990i, Struct_3(Struct_1(vec3<u32>(4294967295u, 39030u, 74234u)), Struct_1(vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 19898u, 1u)), 0u, vec4<f32>(-880f, -565f, 800f, 804f)), 1u, false), Struct_4(Struct_3(Struct_1(vec3<u32>(19728u, 1u, 4294967295u)), Struct_1(vec3<u32>(33664u, 10414u, 1u)), Struct_1(vec3<u32>(0u, 1u, 1u)), 0u, vec4<f32>(2281f, 543f, -1553f, -1000f)), -1i, Struct_3(Struct_1(vec3<u32>(69078u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec3<u32>(16937u, 4294967295u, 0u)), 106336u, vec4<f32>(1000f, -781f, -794f, -727f)), 36851u, true), Struct_4(Struct_3(Struct_1(vec3<u32>(62693u, 21313u, 1u)), Struct_1(vec3<u32>(50068u, 0u, 20437u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), 42784u, vec4<f32>(-1183f, 348f, -113f, -273f)), -2657i, Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 23445u)), Struct_1(vec3<u32>(36559u, 1u, 34127u)), Struct_1(vec3<u32>(4294967295u, 35650u, 4294967295u)), 4396u, vec4<f32>(-964f, 1000f, 1389f, -1213f)), 1u, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 9>();
    global0 = u_input.a.yx;
    let var_0 = all(vec4<bool>(true, true, true, true)) | false;
    let var_1 = Struct_4(Struct_3(Struct_1(firstLeadingBit(vec3<u32>(4294967295u, 1u, 0u))), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(101172u, 4294967295u), vec2<u32>(4294967295u, 17552u)), ~4294967295u, 0u)), Struct_1(select(select(vec3<u32>(30126u, 4294967295u, 75867u), vec3<u32>(9237u, 4294967295u, 118546u), vec3<bool>(var_0, var_0, false)), firstTrailingBit(vec3<u32>(24792u, 25522u, 14079u)), false)), min(1u, ~abs(0u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2065f, -399f, -1000f, 674f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -182f, -671f, 651f) + vec4<f32>(-760f, 1830f, -157f, 1000f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(522f, 611f, -1938f, 646f), vec4<f32>(-1000f, -1000f, -462f, 729f)))), select(vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(true, false, var_0, true), vec4<bool>(false, var_0, true, var_0), var_0), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, true, true, false), vec4<bool>(var_0, var_0, var_0, var_0)))))), ~select(firstLeadingBit(global0.x), u_input.a.x, abs(u_input.a.x) > 29347i), Struct_3(Struct_1(vec3<u32>(1u, 1u, 1u)), Struct_1(select(~vec3<u32>(4294967295u, 33569u, 0u), vec3<u32>(0u, 1u, 0u), var_0)), Struct_1(vec3<u32>(37923u, ~0u, countOneBits(0u))), 140047u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, 1216f, -106f, -987f))))), 1u, any(vec4<bool>(var_0, var_0, var_0, any(!vec3<bool>(false, var_0, true)))));
    var var_2 = var_1.c.c;
    return ~(~reverseBits(~97675u));
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_3(Struct_1(~(~vec3<u32>(28377u, 4294967295u, 4294967295u))), Struct_1(countOneBits(min(vec3<u32>(0u, 2133u, 6152u), vec3<u32>(1u, 38718u, 1u)))), Struct_1(~vec3<u32>(1u, 1u, 1u)), 52384u << (1u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -349f, 1068f, 1055f), vec4<f32>(111f, 214f, -762f, -481f)))))), -39101i, Struct_3(Struct_1(vec3<u32>(func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(50808u, 1u, 1u), vec3<u32>(25508u, 0u, 58766u)), 0u)), Struct_1(countOneBits(~vec3<u32>(19627u, 4294967295u, 26511u))), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(74855u, 43330u, 5021u), vec3<u32>(31743u, 29041u, 4294967295u), vec3<u32>(32947u, 0u, 19490u))), countOneBits(~4294967295u) >> (countOneBits(firstTrailingBit(38423u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1801f, -134f, 1150f, 605f)))), 1u, true);
    let var_1 = firstLeadingBit(select(vec3<u32>(~(1u & var_0.c.d), ~_wgslsmith_clamp_u32(73920u, 5238u, var_0.a.b.a.x), ~abs(37792u)), vec3<u32>(var_0.a.c.a.x, abs(_wgslsmith_dot_vec2_u32(var_0.c.c.a.zz, vec2<u32>(var_0.a.d, 15638u))), 24382u), !(!select(vec3<bool>(var_0.e, var_0.e, true), vec3<bool>(false, false, var_0.e), vec3<bool>(true, true, false)))));
    global1 = array<vec4<u32>, 9>();
    var var_2 = (_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_0.d, var_0.a.d, 18929u)), vec4<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(var_1, var_0.c.c.a), 0u, _wgslsmith_dot_vec3_u32(var_1, var_1))) << (global1[_wgslsmith_index_u32(~reverseBits(~31144u), 9u)] % vec4<u32>(32u))) & (firstTrailingBit(~(global1[_wgslsmith_index_u32(74918u, 9u)] >> (global1[_wgslsmith_index_u32(0u, 9u)] % vec4<u32>(32u)))) ^ global1[_wgslsmith_index_u32(countOneBits(min(firstTrailingBit(1u), var_0.c.d)), 9u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-726f * _wgslsmith_f_op_f32(-var_0.a.e.x)) * var_0.c.e.x), 469f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e.x) * _wgslsmith_f_op_f32(var_0.c.e.x + var_0.c.e.x)))), _wgslsmith_f_op_f32(abs(var_0.a.e.x)))));
    return true;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1437f, -180f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-172f, 1024f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -442f), vec2<f32>(-1000f, 513f))))))));
    var var_1 = global0.x >= u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1751f, -1242f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), 899f))));
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~0u, 1u, ~0u)));
    var_3 = Struct_1(countOneBits(vec3<u32>(57350u, _wgslsmith_div_u32(4294967295u, 1u), abs(16181u))) | vec3<u32>(19630u, ~_wgslsmith_sub_u32(43631u, var_3.a.x), var_3.a.x));
    return u_input.a.xx;
}

fn func_1() -> Struct_4 {
    global0 = func_4(func_2());
    var var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(~(~1u), ~(~60700u) ^ _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(36589u, 9u)], vec4<u32>(97389u, 4294967295u, 19003u, 1u)))));
    global2 = array<Struct_4, 4>();
    global1 = array<vec4<u32>, 9>();
    var var_1 = abs(vec3<i32>(global0.x, u_input.a.x, func_4(true).x & 0i));
    return Struct_4(Struct_3(Struct_1(firstTrailingBit(~vec3<u32>(85305u, 1u, 30782u))), Struct_1(vec3<u32>(~5446u, reverseBits(2889u), ~1u)), Struct_1(~min(vec3<u32>(1u, 5734u, 0u), vec3<u32>(10778u, 1u, 5579u))), ~1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, 1147f, -1079f, -655f)), vec4<f32>(1552f, 186f, 836f, -161f)))))), global0.x, Struct_3(Struct_1(vec3<u32>(87183u, 20274u, 44202u) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), Struct_1(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(40186u, 16278u, 0u), vec3<u32>(4294967295u, 14151u, 59493u)), 1u)), Struct_1(~abs(vec3<u32>(20873u, 1u, 9543u))), ~0u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-512f, _wgslsmith_f_op_f32(step(321f, 414f)), -1000f, -444f)))), 53719u, 1517f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1374f, -800f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 4>();
    global0 = u_input.a.xy;
    global0 = u_input.a.xz;
    var var_0 = true;
    var var_1 = func_1();
    global2 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.e.wx, select(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), vec3<i32>(1i, countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), -2147483647i), !select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(var_1.e, true, true))), ((var_1.a.c.a.x | 92430u) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a.a.x, var_1.d, var_1.d, var_1.d), abs(global1[_wgslsmith_index_u32(var_1.d, 9u)]))) ^ var_1.c.d, _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(var_1.c.a.a.x, var_1.d), ~4294967295u), ~max(var_1.a.a.a.zx, ~var_1.c.b.a.xx)), _wgslsmith_f_op_f32(var_1.a.e.x + _wgslsmith_f_op_f32(501f * _wgslsmith_f_op_f32(f32(-1f) * -664f))));
}

