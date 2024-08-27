struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(2147483647i, i32(-2147483648), 6713i, 2147483647i), vec4<i32>(-1i, 128i, 6575i, -26191i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -6734i), vec4<i32>(-33182i, 0i, i32(-2147483648), -11617i), vec4<i32>(1730i, -12960i, 2147483647i, 2147483647i), vec4<i32>(16782i, 36196i, 28783i, -17102i), vec4<i32>(-1i, 45858i, i32(-2147483648), -3446i), vec4<i32>(0i, 0i, -7024i, -45920i), vec4<i32>(-1i, -28600i, 30379i, 9874i), vec4<i32>(1i, 0i, -3470i, 583i), vec4<i32>(1i, 36732i, 1935i, -50252i), vec4<i32>(-19677i, -15503i, 21184i, i32(-2147483648)), vec4<i32>(2147483647i, -3964i, 1i, 2147483647i), vec4<i32>(-41187i, -22171i, -43287i, 19890i), vec4<i32>(-1i, -1i, i32(-2147483648), 19379i), vec4<i32>(1i, 0i, 2147483647i, 23587i));

var<private> global2: array<f32, 4> = array<f32, 4>(769f, 999f, 1000f, 788f);

var<private> global3: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-1i, 0i, 1i, 2147483647i), vec4<i32>(21612i, -24482i, -1i, 1i), vec4<i32>(-16197i, 0i, i32(-2147483648), -23870i), vec4<i32>(0i, 2147483647i, 29594i, 25587i), vec4<i32>(-1i, 2060i, 0i, -60281i), vec4<i32>(14270i, 24982i, -12079i, -1i), vec4<i32>(9959i, 40298i, i32(-2147483648), 50799i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -1i), vec4<i32>(1i, -14709i, i32(-2147483648), 12113i), vec4<i32>(1i, 2266i, -50343i, i32(-2147483648)), vec4<i32>(30975i, -20577i, -79546i, -8457i), vec4<i32>(3398i, i32(-2147483648), -66295i, 1008i), vec4<i32>(i32(-2147483648), -3381i, -16671i, -32172i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 45873i), vec4<i32>(2147483647i, 0i, 11153i, 0i), vec4<i32>(44005i, 17967i, 75707i, 2147483647i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1206f * -247f)), global2[_wgslsmith_index_u32(u_input.d.x, 4u)], all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))))), global0.x, 864f);
    global2 = array<f32, 4>();
    var var_0 = Struct_3(Struct_1(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), arg_0 <= 64549u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -320f))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -283f)), 1730f, global2[_wgslsmith_index_u32(~arg_0, 4u)], global2[_wgslsmith_index_u32(arg_0, 4u)]), Struct_1(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), global0.x), Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, arg_0, u_input.a.x), vec4<u32>(u_input.d.x, 4294967295u, arg_0, arg_0)), 4u)])), ~(abs(~u_input.c) << (u_input.d.x % 32u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~arg_0), vec2<u32>(abs(arg_0), ~4294967295u)), 1u);
    let var_1 = vec3<bool>(!var_0.b.c.a, var_0.b.c.a, false);
    var_0 = Struct_3(var_0.b.c, var_0.b, 2147483647i, vec2<u32>(31403u, firstTrailingBit(~reverseBits(0u))), u_input.d.x);
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(true && any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)])))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(89972u, 4u)], global0.x, 581f, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(556f, global2[_wgslsmith_index_u32(0u, 4u)], 643f, 474f) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], 145f, global0.x, global0.x))))), Struct_1(true, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 4u)] * _wgslsmith_f_op_f32(global0.x - global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f + global0.x)))), func_3(_wgslsmith_clamp_u32(~(u_input.a.x & u_input.d.x), select(u_input.d.x, 4294967295u, true), 53769u)), vec2<u32>(firstLeadingBit(24215u), _wgslsmith_clamp_u32(35608u, 4404u, u_input.a.x | abs(u_input.a.x))), ~u_input.a.x);
    return Struct_1(any(vec2<bool>(any(vec3<bool>(true, false, true)), var_0.b.c.a)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.b)), -303f), 103f), true | (true & any(vec2<bool>(false, var_0.b.c.a))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_div_f32(global0.x, global2[_wgslsmith_index_u32(45318u, 4u)]), global0.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -466f), 1000f, global0.x))))));
    let var_0 = ~abs(vec3<u32>(1u, 1u, arg_2));
    let var_1 = Struct_4(Struct_3(func_2(), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 4u)] + global2[_wgslsmith_index_u32(0u, 4u)]), arg_0.b, -2103f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 4u)] - global2[_wgslsmith_index_u32(112607u, 4u)])), Struct_1(arg_1.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 4u)])), func_2()), -_wgslsmith_add_i32(_wgslsmith_mult_i32(19515i, u_input.c), u_input.b), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2, var_0.x) << (~vec2<u32>(arg_2, u_input.a.x) % vec2<u32>(32u)), ~max(var_0.zz, vec2<u32>(var_0.x, 1u)), vec2<u32>(~var_0.x, ~32916u)), 30922u), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 332f, global0.x, -376f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-748f, -1824f, global2[_wgslsmith_index_u32(4208u, 4u)], 136f))))), Struct_1(true, arg_0.b), arg_0), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f - global0.x)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(-1148f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1233f)), arg_0, arg_0), _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.b, -52593i, u_input.b), vec3<i32>(u_input.c, -42620i, u_input.c)) | (vec3<i32>(u_input.c, 0i, -2147483647i) ^ vec3<i32>(u_input.b, u_input.b, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(-2147483647i, -31374i, 1i))) & (-vec3<i32>(u_input.b, -65163i, 10903i) | (-vec3<i32>(u_input.b, u_input.c, -797i) ^ (vec3<i32>(22866i, u_input.c, -2147483647i) | vec3<i32>(u_input.b, 0i, u_input.c)))), func_2());
    global1 = array<vec4<i32>, 16>();
    var var_2 = !(7990i >= u_input.b);
    return vec3<u32>(var_0.x, 24206u, _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, var_1.a.d.x, u_input.d.x, 0u), u_input.d)), ~52757u));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = vec2<i32>(-(~2147483647i), _wgslsmith_mod_i32(u_input.b, 19922i)) << (_wgslsmith_mod_vec2_u32(u_input.a, firstTrailingBit(~arg_1.xz)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-629f)));
    let var_2 = u_input.b;
    global3 = array<vec4<i32>, 16>();
    let var_3 = select(~_wgslsmith_dot_vec4_u32(min(~u_input.d, u_input.d), ~(~vec4<u32>(1u, 10706u, 45801u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9407u), vec2<u32>(~_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x), min(97221u, ~u_input.a.x))), false);
    return !any(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_3.c.a || arg_2.c.a, arg_2.b.a), arg_2.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, -224f, -1254f, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global0.x, 342f, global2[_wgslsmith_index_u32(u_input.d.x, 4u)]) - vec4<f32>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -114f, global2[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(31475u, 4u)], global0.x, 147f, global2[_wgslsmith_index_u32(u_input.d.x, 4u)])))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 4u)])), global2[_wgslsmith_index_u32(u_input.d.x, 4u)], _wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1000f)))), Struct_1(func_4(-2687f, countOneBits(func_1(Struct_1(true, 2507f), vec3<bool>(false, false, false), 341u)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1193f, global0.x, global0.x, 351f))), Struct_1(true, 1799f), Struct_1(true, 256f)), Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 1935f, global0.x, -1100f), func_2(), func_2())), 466f), Struct_1(true, global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)]));
    let var_1 = Struct_3(var_0.c, Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(~1u, 4u)], var_0.a.x, _wgslsmith_f_op_f32(-global0.x), 779f), func_2(), func_2()), _wgslsmith_add_i32((-u_input.b & ~(-2147483647i)) | -81890i, ~u_input.c >> (_wgslsmith_div_u32(func_1(Struct_1(true, global0.x), vec3<bool>(false, var_0.b.a, var_0.b.a), 76874u).x, u_input.a.x) % 32u)), u_input.a << (u_input.d.ww % vec2<u32>(32u)), _wgslsmith_clamp_u32(~74538u, 4294967295u, u_input.a.x));
    var var_2 = Struct_1(false, -1000f);
    let var_3 = vec4<bool>(var_0.c.a, !func_2().a, func_2().a, true);
    let var_4 = min(-(~firstLeadingBit(vec2<i32>(var_1.c, 78834i))), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(84521i, 1i), abs(vec2<i32>(var_1.c, 64190i))));
    let var_5 = Struct_3(func_2(), var_1.b, var_4.x, u_input.d.xw, 4294967295u);
    var var_6 = Struct_3(var_1.b.b, var_5.b, (u_input.c | u_input.b) << (~reverseBits(_wgslsmith_mult_u32(1u, var_5.e)) % 32u), ~(~var_1.d), _wgslsmith_mod_u32(var_1.e, ~7639u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(389f)))), _wgslsmith_f_op_f32(f32(-1f) * -1397f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_6.b.a.xyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a.xwy)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.b.b, var_1.b.c.b, global0.x)))))), _wgslsmith_clamp_u32(~(~(~2299u)), _wgslsmith_mod_u32(~var_6.d.x, firstLeadingBit(u_input.d.x)), ~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(var_5.d.x, 47050u))));
}

