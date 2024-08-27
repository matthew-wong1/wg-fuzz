struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-1i, 0i, 1i), Struct_1(false, 0i, i32(-2147483648), 1u));

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-449f, 117f), vec2<f32>(-307f, -776f), vec2<f32>(385f, 1000f), vec2<f32>(-892f, -732f), vec2<f32>(-1306f, -1738f), vec2<f32>(-2151f, -556f), vec2<f32>(-1007f, 1391f), vec2<f32>(-100f, 633f));

var<private> global2: array<f32, 27> = array<f32, 27>(-122f, 1575f, 620f, -405f, 996f, -606f, 1311f, -146f, 1449f, 377f, -2458f, -102f, -570f, 523f, -235f, -1049f, 1000f, 132f, 1059f, -2041f, -1084f, -570f, 124f, 352f, 757f, -1751f, 1179f);

var<private> global3: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(9138i, 2147483647i, -57231i), vec3<i32>(-21524i, -5477i, 27656i), vec3<i32>(15664i, 2147483647i, 2147483647i), vec3<i32>(-32230i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -37178i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 1187i, -1i), vec3<i32>(0i, -4243i, -7280i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(1i, -12464i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 23909i), vec3<i32>(-17577i, -9423i, i32(-2147483648)), vec3<i32>(-38921i, 5371i, 2147483647i), vec3<i32>(-59573i, -33235i, 2147483647i), vec3<i32>(-68357i, 2147483647i, -18557i), vec3<i32>(95230i, i32(-2147483648), -1i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-16652i, 0i, -6414i), vec3<i32>(2147483647i, 1i, 52554i), vec3<i32>(-13128i, 4648i, 42971i), vec3<i32>(17700i, i32(-2147483648), 7584i), vec3<i32>(2147483647i, -21584i, 4810i), vec3<i32>(-21433i, 2147483647i, -1i), vec3<i32>(17432i, 0i, -37258i), vec3<i32>(i32(-2147483648), 8709i, 28804i), vec3<i32>(2193i, -1i, -9637i), vec3<i32>(-49522i, 1i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    global0 = Struct_2(global0.a, Struct_1(any(select(!vec3<bool>(false, global0.b.a, false), select(vec3<bool>(global0.b.a, true, global0.b.a), vec3<bool>(global0.b.a, false, global0.b.a), vec3<bool>(true, global0.b.a, global0.b.a)), !vec3<bool>(global0.b.a, false, global0.b.a))), i32(-1i) * -select(45785i, -2147483647i, true), -11830i, ~0u));
    let var_0 = Struct_1(global0.a.x < 12815i, ~global0.a.x, global0.a.x, 27108u);
    var var_1 = -_wgslsmith_mult_i32(~firstTrailingBit(firstTrailingBit(u_input.c.x)), abs(12730i));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1045f), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.d, 46259u, global0.b.d), u_input.b.zwy))), 27u)], -1000f, global2[_wgslsmith_index_u32(~(10922u << (~u_input.b.x % 32u)), 27u)])));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec2<f32>(global2[_wgslsmith_index_u32(49096u, 27u)], var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.d, 8u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xw + var_2.wx) * global1[_wgslsmith_index_u32(var_0.d, 8u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-499f, global2[_wgslsmith_index_u32(4294967295u, 27u)]) + var_2.zw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(global0.b.d, 27u)]))))));
    return u_input.a.x;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -global3[_wgslsmith_index_u32(~27013u, 30u)], ~countOneBits(global3[_wgslsmith_index_u32(1u, 30u)]) & _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, global3[_wgslsmith_index_u32(arg_1, 30u)]), ~global0.a)), Struct_1(false, _wgslsmith_add_i32(arg_3.c, _wgslsmith_add_i32(arg_2, ~global0.a.x)), ~(~var_0.a.x) >> (var_0.b.d % 32u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 610u, var_0.b.d, 37820u) >> (vec4<u32>(0u, global0.b.d, 53507u, 4294967295u) % vec4<u32>(32u)), select(u_input.b, u_input.a, vec4<bool>(global0.b.a, var_0.b.a, false, true))), _wgslsmith_div_u32(~u_input.b.x, 26257u), true)));
    let var_1 = Struct_2(vec3<i32>(arg_3.c | 6080i, u_input.c.x, global0.b.c >> ((var_0.b.d >> ((0u & var_0.b.d) % 32u)) % 32u)), Struct_1(!var_0.b.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.c, 16240i, 29127i, -48133i), vec4<i32>(-5865i, global0.b.c, 1i, -1i)), vec4<i32>(41532i, 1i, arg_2, -2147483647i)), reverseBits(arg_2), min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, 39271i), vec3<i32>(3247i, var_0.b.c, -56757i)), ~22442i)), ~24283i, _wgslsmith_sub_u32(reverseBits(4294967295u), global0.b.d)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1538f, global2[_wgslsmith_index_u32(4294967295u, 27u)], arg_0, 241f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(28420u, 27u)], arg_0, -1512f, 131f), vec4<f32>(-1062f, -500f, 2481f, 527f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(abs(-673f)), _wgslsmith_f_op_f32(1416f + arg_0)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, global2[_wgslsmith_index_u32(0u, 27u)])), vec4<f32>(-173f, 1000f, global2[_wgslsmith_index_u32(var_0.b.d, 27u)], global2[_wgslsmith_index_u32(22259u, 27u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1107f, 2249f, -711f, -608f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(var_0.b.d, 27u)], global2[_wgslsmith_index_u32(arg_1, 27u)], arg_0, 790f))))))) + vec4<f32>(arg_0, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(arg_1, u_input.b.x, 0u, 0u))), 27u)], _wgslsmith_f_op_f32(-499f - global2[_wgslsmith_index_u32(arg_1, 27u)]), arg_0)));
    var var_3 = global0.b;
    return global0.b.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(61203i, global0.a.x, 0i << (0u % 32u))), Struct_1(global0.b.a, -16948i, global0.a.x, 0u));
    let var_1 = !(!func_4(global2[_wgslsmith_index_u32(func_3(), 27u)], var_0.b.d, abs(1i), global0.b) & (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69103u, 27u)]))) < global2[_wgslsmith_index_u32(0u, 27u)]));
    var var_2 = vec3<bool>(false, true, true);
    global2 = array<f32, 27>();
    let var_3 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(~countOneBits(var_0.b.d | 8236u)), 27u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, global0.b.d, ~u_input.a.x), 27u)]);
    return var_0.b;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<bool>(func_4(230f, 0u, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, 0i, -8186i), vec4<i32>(-1282i, -33595i, arg_1.b.c, -1i)), 1i), Struct_1(global0.b.a, abs(u_input.d) >> (firstTrailingBit(0u) % 32u), arg_1.b.b, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxx, vec3<u32>(11499u, global0.b.d, u_input.b.x)), global0.b.d))), true, func_2().a);
    let var_1 = Struct_1(arg_2, -_wgslsmith_mult_i32(~(-global0.b.c), _wgslsmith_mult_i32(-2147483647i, arg_1.b.c & arg_1.a.x)), firstTrailingBit(arg_1.b.b), _wgslsmith_mod_u32(max(0u, ~0u), _wgslsmith_dot_vec4_u32(u_input.b, min(select(u_input.b, u_input.a, arg_2), u_input.a))));
    let var_2 = Struct_2(vec3<i32>(-(~1i), min(5527i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.b, var_1.c, 0i, 0i) ^ vec4<i32>(global0.a.x, -1i, u_input.c.x, -39420i), vec4<i32>(global0.a.x, global0.b.c, 43792i, -2147483647i))), _wgslsmith_clamp_i32(global0.b.b, u_input.d, u_input.d)), func_2());
    var var_3 = any(!select(!vec4<bool>(global0.b.a, false, global0.b.a, true), select(vec4<bool>(true, false, false, true), !vec4<bool>(global0.b.a, var_0.x, false, arg_1.b.a), select(vec4<bool>(global0.b.a, var_0.x, true, false), vec4<bool>(true, arg_2, arg_1.b.a, true), vec4<bool>(arg_2, global0.b.a, var_1.a, true))), select(vec4<bool>(var_2.b.a, false, false, true), !vec4<bool>(var_0.x, var_1.a, false, true), all(vec4<bool>(true, var_2.b.a, false, true)))));
    let var_4 = _wgslsmith_sub_i32(~68736i, arg_1.b.b & ~_wgslsmith_dot_vec2_i32(u_input.c.zz, global0.a.yx));
    return Struct_1(all(!var_0), ~52383i, 1i, 4294967295u);
}

fn func_1() -> StorageBuffer {
    global2 = array<f32, 27>();
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-858f, 579f, global2[_wgslsmith_index_u32(global0.b.d, 27u)], global2[_wgslsmith_index_u32(54272u, 27u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 259f, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 339f))))), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(42859u, 27u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)] + global2[_wgslsmith_index_u32(global0.b.d, 27u)]), _wgslsmith_f_op_f32(650f - global2[_wgslsmith_index_u32(11383u, 27u)]))))), Struct_2(~(-(vec3<i32>(u_input.d, u_input.d, u_input.c.x) >> (vec3<u32>(24818u, 51817u, global0.b.d) % vec3<u32>(32u)))), func_2()), !(select(any(vec2<bool>(true, true)), !global0.b.a, !global0.b.a) | false));
    var var_1 = Struct_2(~min(select(-global0.a, min(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<i32>(var_0.b, var_0.c, 1i)), select(vec3<bool>(global0.b.a, true, true), vec3<bool>(true, false, false), vec3<bool>(var_0.a, global0.b.a, true))), (vec3<i32>(global0.b.c, global0.b.c, 3008i) | vec3<i32>(-37534i, 2147483647i, var_0.c)) >> (u_input.a.wxy % vec3<u32>(32u))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(var_0.d, 27u)], global2[_wgslsmith_index_u32(31429u, 27u)], 1436f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-763f, global2[_wgslsmith_index_u32(22977u, 27u)], global2[_wgslsmith_index_u32(29742u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)])))), Struct_2(u_input.c | (global3[_wgslsmith_index_u32(0u, 30u)] << (vec3<u32>(4294967295u, 30172u, 70621u) % vec3<u32>(32u))), global0.b), true));
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    return StorageBuffer(vec3<u32>(~var_0.d, min(1u, var_0.d) >> (_wgslsmith_mult_u32(14835u, 28797u) % 32u), ~_wgslsmith_div_u32(52447u, 17868u << (0u % 32u))), _wgslsmith_sub_vec2_u32(u_input.a.xw, u_input.b.yw), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1342f + -2182f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b.d, 27u)]))), global2[_wgslsmith_index_u32(75004u, 27u)]), -1777f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 8>();
    let var_0 = Struct_1(any(vec2<bool>(true, true)), ~(~global0.a.x), 2147483647i, 4294967295u);
    let x = u_input.a;
    s_output = func_1();
}

