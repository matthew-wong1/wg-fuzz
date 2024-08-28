struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<i32>(37860i, 15438i, -29971i, i32(-2147483648)), 0u, vec3<bool>(false, false, true), -1i), Struct_3(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 26195i), 1u, vec3<bool>(false, true, false), -7171i), Struct_3(vec4<i32>(19486i, -19358i, 35385i, 2147483647i), 0u, vec3<bool>(true, false, true), -14450i), Struct_3(vec4<i32>(20540i, i32(-2147483648), 17718i, 43886i), 4294967295u, vec3<bool>(true, true, true), -40953i), Struct_3(vec4<i32>(12586i, 2147483647i, 1i, -9837i), 45331u, vec3<bool>(false, false, false), 7824i), Struct_3(vec4<i32>(8069i, 23305i, -26677i, -11167i), 1313u, vec3<bool>(false, true, true), 1i), Struct_3(vec4<i32>(i32(-2147483648), -24213i, -1i, 33808i), 1u, vec3<bool>(false, false, true), -42886i), Struct_3(vec4<i32>(-560i, 2147483647i, 23714i, -41237i), 4294967295u, vec3<bool>(true, true, false), -18697i), Struct_3(vec4<i32>(i32(-2147483648), 0i, 0i, 6687i), 0u, vec3<bool>(true, true, true), -8426i), Struct_3(vec4<i32>(65486i, -34960i, i32(-2147483648), 21661i), 1u, vec3<bool>(false, false, true), -31253i), Struct_3(vec4<i32>(1i, i32(-2147483648), -30091i, 24494i), 0u, vec3<bool>(false, true, false), 1i), Struct_3(vec4<i32>(1i, -1i, 2147483647i, 1i), 1u, vec3<bool>(true, false, false), 15300i), Struct_3(vec4<i32>(-90793i, -1i, 44333i, -1i), 4294967295u, vec3<bool>(true, false, true), -47211i), Struct_3(vec4<i32>(0i, i32(-2147483648), 0i, -10459i), 0u, vec3<bool>(true, false, false), i32(-2147483648)), Struct_3(vec4<i32>(0i, 1i, 1i, -3222i), 1u, vec3<bool>(true, true, true), 55582i), Struct_3(vec4<i32>(2147483647i, 1i, 50576i, 7149i), 62064u, vec3<bool>(true, false, true), 15384i), Struct_3(vec4<i32>(8043i, i32(-2147483648), 9694i, 14388i), 0u, vec3<bool>(true, true, false), -14376i), Struct_3(vec4<i32>(2147483647i, 2147483647i, -9690i, i32(-2147483648)), 4294967295u, vec3<bool>(false, false, true), 0i), Struct_3(vec4<i32>(-1i, i32(-2147483648), 6446i, 1i), 4294967295u, vec3<bool>(false, false, true), 2147483647i), Struct_3(vec4<i32>(-1i, 0i, 14187i, -7741i), 80740u, vec3<bool>(true, false, false), 0i), Struct_3(vec4<i32>(39092i, 1i, -27890i, i32(-2147483648)), 4294967295u, vec3<bool>(false, false, false), 1i), Struct_3(vec4<i32>(-21353i, 36981i, 24650i, 0i), 35244u, vec3<bool>(true, false, true), -20077i), Struct_3(vec4<i32>(-43576i, 23553i, -7845i, i32(-2147483648)), 1u, vec3<bool>(true, false, false), 2147483647i), Struct_3(vec4<i32>(2147483647i, 1730i, 0i, -1i), 13497u, vec3<bool>(false, false, true), -1i), Struct_3(vec4<i32>(-8895i, i32(-2147483648), 0i, -37889i), 1u, vec3<bool>(true, true, false), 0i), Struct_3(vec4<i32>(29602i, -4040i, -47602i, -1i), 84u, vec3<bool>(true, false, true), -14074i), Struct_3(vec4<i32>(17975i, 1i, 2147483647i, 1i), 348u, vec3<bool>(true, true, false), 17925i), Struct_3(vec4<i32>(2147483647i, 24861i, -51727i, 2147483647i), 0u, vec3<bool>(false, false, false), -21620i), Struct_3(vec4<i32>(-8237i, 4290i, 2147483647i, 2147483647i), 4294967295u, vec3<bool>(false, true, true), 44756i), Struct_3(vec4<i32>(11705i, -1i, 1i, -94406i), 4294967295u, vec3<bool>(false, true, true), -1i), Struct_3(vec4<i32>(-1i, -16030i, 15099i, 1i), 23325u, vec3<bool>(true, true, true), -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32) -> bool {
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = false;
    let var_1 = vec3<bool>(!all(global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !func_3(_wgslsmith_f_op_f32(-169f * _wgslsmith_f_op_f32(abs(421f)))), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), ~vec4<u32>(24772u, 4294967295u, u_input.a.x, 35705u)), 17u)]) || true);
    global0 = array<vec4<bool>, 17>();
    let var_2 = Struct_3(~vec4<i32>(i32(-1i) * -2147483647i, 27926i, firstLeadingBit(firstLeadingBit(0i)), -_wgslsmith_div_i32(-1i, -37934i)), ~arg_0 ^ 1u, vec3<bool>((67607i >> (arg_0 % 32u)) == _wgslsmith_clamp_i32(select(1i, -2147483647i, var_1.x), reverseBits(16860i), _wgslsmith_div_i32(2288i, 2147483647i)), !var_1.x, false), i32(-1i) * -(~(i32(-1i) * -13687i)));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstLeadingBit(~(var_2.a.x ^ 41798i)), _wgslsmith_dot_vec3_i32(var_2.a.wzy, vec3<i32>(-1i) * -vec3<i32>(1i, -39620i, -2147483647i))), -(2260i & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18769i, var_2.a.x, var_2.d), var_2.a.zyx, var_2.a.yzy), var_2.a.ywx)));
    return Struct_1(_wgslsmith_mult_u32(arg_0, var_2.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1698f, 470f, -1000f, 383f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1646f, 644f, -740f, 467f), vec4<f32>(-457f, -180f, 1510f, 118f)))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, -765f, 768f, 522f)))))), arg_0, !vec3<bool>(any(select(vec2<bool>(var_2.c.x, true), vec2<bool>(var_2.c.x, var_2.c.x), true)), any(select(vec4<bool>(var_1.x, true, false, false), global0[_wgslsmith_index_u32(arg_0, 17u)], vec4<bool>(var_1.x, true, var_1.x, true))), var_2.c.x), -1i ^ _wgslsmith_div_i32(var_2.d, firstTrailingBit(var_2.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    global1 = array<Struct_3, 31>();
    global0 = array<vec4<bool>, 17>();
    let var_0 = arg_1.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))));
    let var_2 = vec3<u32>(~(_wgslsmith_sub_u32(~1u, 0u) >> (u_input.a.x % 32u)), countOneBits(18510u), _wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 1u), vec2<u32>(u_input.a.x, 4294967295u))), ~u_input.a.x));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-var_1), arg_1);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    global1 = array<Struct_3, 31>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1.x) - vec2<f32>(arg_1.x, 802f))), _wgslsmith_div_vec2_f32(arg_1, vec2<f32>(_wgslsmith_div_f32(409f, -172f), _wgslsmith_f_op_f32(select(arg_1.x, 571f, true)))))), Struct_2(u_input.a.x, func_2(u_input.a.x), (firstTrailingBit(vec2<i32>(-85334i, 46637i)) | select(vec2<i32>(0i, -1i), vec2<i32>(1i, 0i), arg_0)) >> (~max(vec2<u32>(0u, 0u), u_input.a.zz) % vec2<u32>(32u))), ~(~4294967295u));
    global1 = array<Struct_3, 31>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 296f));
    let var_2 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 0u ^ var_0.b.a), ~(~(~u_input.a.x))), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_0.a.x, -1117f, arg_1.x) + var_0.b.b.b) * var_0.b.b.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1005f, var_0.a.x, -758f, 1702f)), vec4<f32>(-119f, -990f, arg_1.x, var_0.b.b.b.x)))), _wgslsmith_sub_u32(reverseBits(~0u), var_0.b.b.c), vec3<bool>(true, true, true), var_0.b.c.x), var_0.b.c << (min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(1u, var_0.b.a)), select(vec2<u32>(1u, var_0.b.a), u_input.a.yy, var_0.b.b.d.xy) | vec2<u32>(27879u, 5567u)) % vec2<u32>(32u)));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(45749u, select(var_0.b.a, min(4294967295u, 69538u), var_0.b.c.x < -2147483647i), u_input.a.x, 43449u), abs(~vec4<u32>(60483u, var_0.b.a, var_2.a, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, 4545u, var_2.b.a)) & select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 9943u, u_input.a.x, u_input.a.x), vec4<u32>(var_2.a, var_0.b.a, var_2.a, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(55677u, var_0.b.b.a, var_2.a, var_2.b.a), vec4<u32>(0u, var_2.a, u_input.a.x, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(21326u, 4294967295u, var_2.b.a, var_0.b.a), vec4<u32>(u_input.a.x, u_input.a.x, 26533u, 42136u), vec4<u32>(var_2.b.a, 2086u, u_input.a.x, 47515u)), any(!vec3<bool>(true, var_0.b.b.d.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_mult_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 0i), ~vec4<i32>(28765i, -56418i, 22907i, 1i)) << (~(~vec4<u32>(u_input.a.x, 1814u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, u_input.a.x >> (4294967295u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(46993u, u_input.a.x, 0u, u_input.a.x))), func_1(true, vec2<f32>(-624f, 280f)) & ~u_input.a.x) % vec4<u32>(32u)), select(vec4<i32>(1i, 1i, 1i, 1i) >> (min(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(29817u, 16579u, 4294967295u, 60745u), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.a.x, 82855u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_sub_i32(1i, 0i), 1i, abs(-2356i)), !vec4<bool>(func_2(u_input.a.x).d.x, all(vec3<bool>(false, var_0.x, var_0.x)), true, !var_0.x)));
    var_1 = vec4<i32>(0i, 58415i, var_1.x, _wgslsmith_sub_i32(countOneBits(var_1.x), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, -1313f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1573f)))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2007f, 340f)), Struct_2(52954u, Struct_1(79525u, vec4<f32>(-1155f, 1501f, 261f, 132f), 10117u, vec3<bool>(false, true, false), var_1.x), vec2<i32>(var_1.x, var_1.x)), u_input.a.x).b, ~(~27335u)).b.b.e));
    let var_2 = func_2(_wgslsmith_div_u32(11816u, ~32534u));
    var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -1i) & _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 27912i, -33242i, 30044i), vec4<i32>(2147483647i, -2147483647i, var_1.x, var_2.e)), vec4<i32>(29611i, var_1.x, -var_1.x, abs(var_1.x))), ~(~_wgslsmith_div_vec4_i32(min(vec4<i32>(var_1.x, var_2.e, -42762i, 15466i), vec4<i32>(-3341i, 1i, var_2.e, 24679i)), reverseBits(vec4<i32>(-1i, var_2.e, var_1.x, -14853i)))));
    var var_3 = vec3<bool>(!(all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_2.d.x, var_0.x), vec3<bool>(var_0.x, var_2.d.x, false))) || var_0.x), func_4(var_2.b.zy, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.b.yx)) + _wgslsmith_f_op_vec2_f32(max(var_2.b.zy, vec2<f32>(-1000f, var_2.b.x)))), Struct_2(~22963u, Struct_1(var_2.a, vec4<f32>(2119f, -1678f, var_2.b.x, var_2.b.x), u_input.a.x, vec3<bool>(true, false, var_0.x), 1i), var_1.zx), ~_wgslsmith_div_u32(var_2.a, u_input.a.x)).b, 1u).b.b.d.x, (_wgslsmith_div_f32(455f, _wgslsmith_div_f32(var_2.b.x, -1757f)) > _wgslsmith_f_op_f32(770f + var_2.b.x)) || true);
    var var_4 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec4<i32>(var_1.x, 1i, -1i, -12351i), vec4<i32>(var_2.e, -2147483647i, var_2.e, var_2.e), vec4<bool>(false, var_0.x, true, var_2.d.x)) ^ ~vec4<i32>(-12329i, var_2.e, var_2.e, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), var_2.b.x, 253f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * -298f)), -1223f))), 262f, ~(-var_2.e ^ (_wgslsmith_sub_i32(var_1.x, 28182i) & _wgslsmith_mod_i32(2147483647i, var_2.e))), var_2.b);
}

