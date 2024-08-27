struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(432f, vec4<i32>(-1i, -1i, 74795i, -8226i), 4294967295u), Struct_1(-1000f, vec4<i32>(2147483647i, i32(-2147483648), -1i, -10720i), 21635u), Struct_1(547f, vec4<i32>(19515i, 2147483647i, -287i, 1i), 41703u), Struct_1(-468f, vec4<i32>(2147483647i, -56207i, -1i, 28673i), 1u), Struct_1(167f, vec4<i32>(-35558i, 65574i, 0i, 0i), 1u), Struct_1(806f, vec4<i32>(0i, 37793i, 2147483647i, 29072i), 1u), Struct_1(115f, vec4<i32>(1203i, 0i, -9375i, -9929i), 0u), Struct_1(-1162f, vec4<i32>(-1i, 1i, -1i, 35464i), 9684u), Struct_1(649f, vec4<i32>(-1i, 14768i, 1i, 23150i), 4294967295u), Struct_1(1072f, vec4<i32>(59921i, -50554i, 1i, 0i), 1u), Struct_1(171f, vec4<i32>(2147483647i, -29678i, -1i, 2147483647i), 4294967295u), Struct_1(935f, vec4<i32>(-17845i, -1i, -26020i, i32(-2147483648)), 53320u), Struct_1(893f, vec4<i32>(-1i, 8383i, -71010i, 2147483647i), 1u), Struct_1(117f, vec4<i32>(37396i, -17760i, -1i, 38811i), 1u), Struct_1(774f, vec4<i32>(9339i, 1i, -1i, 32658i), 0u), Struct_1(-1385f, vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i), 122672u), Struct_1(1046f, vec4<i32>(0i, -9025i, 835i, 17520i), 47867u), Struct_1(824f, vec4<i32>(i32(-2147483648), 15584i, 0i, 2147483647i), 4294967295u), Struct_1(128f, vec4<i32>(19832i, 91134i, 1i, i32(-2147483648)), 4483u));

var<private> global1: array<vec4<bool>, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(295f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f - -1679f)), 1f)));
    global0 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1000f - var_1.x), select(abs(vec4<i32>(u_input.c, 451i, u_input.a.x, u_input.a.x)) >> (~(~vec4<u32>(u_input.b, u_input.d, u_input.b, 1u)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 0i | select(-6970i, -2147483647i, true), u_input.c, u_input.c), select(vec4<bool>(all(global1[_wgslsmith_index_u32(7991u, 2u)]), arg_0, any(vec3<bool>(arg_0, true, true)), arg_0), vec4<bool>(true, !arg_0, u_input.a.x < u_input.c, false), !(!global1[_wgslsmith_index_u32(u_input.b, 2u)]))), u_input.b);
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)];
    return ~vec4<i32>(0i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(var_2.b), vec4<i32>(var_2.b.x, max(u_input.c, u_input.a.x), -54590i, _wgslsmith_sub_i32(var_3.b.x, 1i))), -33408i);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = ~vec4<u32>(_wgslsmith_sub_u32(~(~1u), 0u), ~arg_0.x, _wgslsmith_mod_u32(abs(arg_0.x), 35611u), ~1u);
    global0 = array<Struct_1, 19>();
    var var_1 = -_wgslsmith_mod_vec4_i32(func_3(!(!arg_1)), vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.a.x) ^ -7408i, u_input.c, select(-58956i, -1i, true) << (64395u % 32u), _wgslsmith_add_i32(51709i, u_input.a.x)));
    var_1 = func_3(~(_wgslsmith_clamp_u32(60555u, u_input.b, 0u) ^ ~0u) >= arg_0.x);
    var_1 = select(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, firstTrailingBit(u_input.c), firstLeadingBit(-698i), 39603i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, var_1.x) & vec4<i32>(var_1.x, var_1.x, 33588i, 2147483647i))), ~abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.x, -2147483647i, 2147483647i, 2147483647i), -vec4<i32>(u_input.c, -1090i, 1i, u_input.c), vec4<i32>(u_input.c, var_1.x, var_1.x, u_input.a.x))), !(!vec4<bool>(true, arg_1 || false, !arg_1, u_input.c < u_input.a.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(878f, -800f))), -335f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1151f, -623f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-541f * -1391f), 1f))));
}

fn func_1() -> i32 {
    let var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(412f))) >= -769f), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec2<u32>(27330u, u_input.d), var_0.x)), 719f)), _wgslsmith_f_op_f32(abs(261f)))) - -2488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)), -774f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-123f))) - 1186f));
    var var_2 = true | all(select(select(var_0, select(vec3<bool>(true, false, true), var_0, vec3<bool>(var_0.x, true, false)), var_0.x), select(var_0, !vec3<bool>(false, var_0.x, var_0.x), true), var_0.x));
    let var_3 = 1i;
    let var_4 = global0[_wgslsmith_index_u32((_wgslsmith_mod_u32(firstTrailingBit(1u ^ u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 67048u, 0u), vec3<u32>(0u, 0u, u_input.b))) >> (u_input.b % 32u)) >> (~u_input.d % 32u), 19u)];
    return -38014i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x & u_input.c, ~_wgslsmith_mod_i32(-1i, firstTrailingBit(u_input.a.x)), func_1());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1230f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-254f + _wgslsmith_f_op_f32(-970f * 231f))))), countOneBits(func_3(true)), 4294967295u);
    var var_2 = Struct_1(var_1.a, select(-(~(vec4<i32>(var_0.x, var_0.x, 0i, -29966i) & vec4<i32>(var_1.b.x, u_input.c, -1i, 8656i))), var_1.b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~13650u, firstTrailingBit(u_input.d)), var_1.c), 2u)]), ~_wgslsmith_clamp_u32(1u, ~76427u, _wgslsmith_add_u32(u_input.d, 1u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_mod_vec4_i32(~min(vec4<i32>(var_0.x, -1i, var_2.b.x, 35672i), var_1.b), -firstLeadingBit(_wgslsmith_mult_vec4_i32(var_1.b, var_2.b))), ~reverseBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, var_2.c), ~(~(var_1.c << (var_2.c % 32u)))), max(max(var_3.b, vec4<i32>(abs(var_3.b.x), reverseBits(-26060i), var_1.b.x, select(var_3.b.x, var_0.x, false))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_2.b.x, -6208i), _wgslsmith_add_i32(2147483647i, var_1.b.x), _wgslsmith_mod_i32(2147483647i, -1i), 16374i), vec4<i32>(-1i, -1i, 48772i, -2147483647i), var_1.b)), ~29070i, var_1.a, var_3.c);
}

