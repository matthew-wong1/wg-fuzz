struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec4<f32>(-120f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(select(arg_0, -1000f, u_input.b >= u_input.a))), vec3<i32>(-1i, 0i, min(~8678i, _wgslsmith_mod_i32(-86878i, u_input.a))), arg_0, true), i32(-1i) * -((-10511i << (1u % 32u)) ^ u_input.b), max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 25019i), u_input.a), vec2<i32>(u_input.b, u_input.a) | _wgslsmith_sub_vec2_i32(vec2<i32>(27315i, 74818i), vec2<i32>(-18391i, u_input.b))), _wgslsmith_mod_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.a, u_input.b)), max(-vec2<i32>(51788i, 1i), firstTrailingBit(vec2<i32>(u_input.b, 2147483647i))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), -vec3<i32>(-1i, u_input.a, -53520i) << (vec3<u32>(4294967295u, 1u, reverseBits(1u)) % vec3<u32>(32u)), arg_0, any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(var_0.d.a, var_0.d.b, -982f, any(vec3<bool>(all(select(vec3<bool>(true, var_0.d.d, true), vec3<bool>(false, true, var_0.a.d), false)), !var_0.a.d, !any(vec2<bool>(true, false)))));
    var var_2 = -2147483647i;
    let var_3 = var_0;
    var var_4 = true & ((!(false && var_3.d.d) || var_3.a.d) && (~max(1u, 1u) <= (0u ^ _wgslsmith_clamp_u32(1u, 0u, 0u))));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_div_u32(1u, firstLeadingBit(0u)), 62332u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 19699u)), ~82771u)) ^ vec3<u32>(1u, ~_wgslsmith_div_u32(67292u, 1u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4086u, 21488u, 31739u), vec3<u32>(1153u, 67792u, 4294967295u)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    return _wgslsmith_clamp_u32(~countOneBits(~38847u), _wgslsmith_clamp_u32(~(~1u), 1u, ~min(~0u, ~4294967295u)), func_3(-662f));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.a.d || ((arg_0 != 1u) || true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, -422f, 915f, arg_1.a.a.x) * arg_1.a.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a.x, -364f, 789f, arg_1.a.a.x)))), select(select(!vec4<bool>(var_0, true, arg_1.a.d, var_0), !vec4<bool>(true, arg_1.a.d, false, arg_1.d.d), true), select(select(vec4<bool>(arg_1.d.d, false, var_0, false), vec4<bool>(true, arg_1.d.d, var_0, true), arg_1.a.d), vec4<bool>(true, true, true, true), !vec4<bool>(var_0, false, true, arg_1.d.d)), arg_1.a.d))), -(~(arg_1.d.b | vec3<i32>(arg_1.c.x, 18151i, 8891i))) >> (select(~vec3<u32>(arg_0, arg_0, arg_0), ~min(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(59517u, arg_0, arg_0)), select(select(vec3<bool>(true, false, true), vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, false)), vec3<bool>(true, var_0, var_0), vec3<bool>(arg_1.d.d, true, arg_1.a.d))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.a.x, arg_1.d.c)) * _wgslsmith_f_op_f32(arg_1.a.c + arg_1.d.c)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d.a.x))) < _wgslsmith_f_op_f32(arg_1.d.c - _wgslsmith_f_op_f32(f32(-1f) * -111f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(func_4(func_2(1355f, arg_1.x, select(select(vec4<bool>(arg_2.d, false, false, false), vec4<bool>(arg_0.a.d, true, false, arg_2.d), vec4<bool>(true, arg_0.d.d, arg_2.d, arg_2.d)), !vec4<bool>(arg_0.a.d, arg_2.d, true, true), vec4<bool>(arg_0.a.d, arg_2.d, arg_0.a.d, arg_2.d))), arg_0), _wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(arg_2.b.yx, arg_2.b.yy), arg_2.b.x), _wgslsmith_mod_i32(-(i32(-1i) * -7391i), ~0i)), vec2<i32>(arg_0.a.b.x ^ -1i, _wgslsmith_add_i32(-24215i, u_input.b) & _wgslsmith_mult_i32(u_input.b << (15558u % 32u), 56691i)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a.x, arg_2.c, arg_2.c, arg_2.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 484f, 419f, 883f))), arg_0.a.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-arg_0.b, arg_0.b << (1u % 32u), 33349i), ~(arg_0.d.b << (vec3<u32>(1u, 19765u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c, 448f)))), arg_0.a.d || true));
    let var_1 = vec3<u32>(68505u, _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(52313u) | _wgslsmith_dot_vec3_u32(vec3<u32>(11118u, 0u, 9574u), vec3<u32>(74213u, 37807u, 28672u)), 28272u), 1u), 25813u);
    var var_2 = 4294967295u;
    var_2 = ~min(~abs(_wgslsmith_clamp_u32(1052u, 0u, var_1.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(26714u, var_1.x, var_1.x, var_1.x) ^ vec4<u32>(59639u, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(21794u, 4492u, 0u, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 58755u), vec4<u32>(1u, 0u, 1u, var_1.x)))));
    var var_3 = var_0.a;
    return _wgslsmith_mult_u32(46299u, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u | (_wgslsmith_dot_vec3_u32(vec3<u32>(45802u, 4294967295u, 4294967295u), vec3<u32>(1049u, 4294967295u, 41036u)) ^ 1u), _wgslsmith_clamp_u32(func_1(Struct_2(Struct_1(vec4<f32>(-468f, 2446f, 318f, 864f), vec3<i32>(-2147483647i, 0i, 0i), -815f, false), u_input.a, vec2<i32>(u_input.b, 2147483647i), Struct_1(vec4<f32>(-378f, -847f, 180f, -575f), vec3<i32>(-2147483647i, -15724i, 1i), 1100f, false)), ~vec4<i32>(u_input.a, -74572i, u_input.a, u_input.a), Struct_1(vec4<f32>(493f, 1000f, 1384f, -627f), vec3<i32>(-2147483647i, u_input.a, 44383i), 1052f, false)), ~1u, 1u), ~1u), vec4<u32>(func_2(_wgslsmith_f_op_f32(ceil(398f)), u_input.a, vec4<bool>(true, true, true, true)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(51431u, 4294967295u), vec2<u32>(4294967295u, 0u)), 4294967295u, ~_wgslsmith_mult_u32(30393u, 8786u)));
    var var_1 = u_input.a > 2147483647i;
    var_1 = all(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(select(true, true, true), all(vec4<bool>(false, true, false, true)), true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)));
    var var_2 = func_4(15976u, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(132f, -609f, -766f, 886f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-484f, 1670f, -191f, -1219f)))), min(-vec3<i32>(42063i, u_input.b, -60034i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(u_input.b, u_input.b, 25648i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(481f, -890f))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), select(firstLeadingBit(39077i), ~1i, true), min(-vec2<i32>(u_input.a, 4922i), vec2<i32>(2147483647i, -1i)) ^ ((vec2<i32>(u_input.a, 2147483647i) << (var_0.zx % vec2<u32>(32u))) >> ((vec2<u32>(4294967295u, var_0.x) >> (var_0.xw % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 775f, 209f, 1110f))) + vec4<f32>(1f, 1f, 1f, 1f)), min(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(-16727i, u_input.a, u_input.a)) << ((var_0.xwy >> (var_0.wxx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1005f + -117f))), func_4(4294967295u, Struct_2(Struct_1(vec4<f32>(540f, 1319f, -830f, -1248f), vec3<i32>(u_input.b, -17187i, u_input.b), -115f, false), u_input.a, vec2<i32>(u_input.a, u_input.b), Struct_1(vec4<f32>(-1044f, 1000f, -182f, 1017f), vec3<i32>(u_input.a, 0i, u_input.b), 454f, true))).d)));
    var_2 = Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_f32(ceil(-500f)), false);
    let var_3 = vec3<bool>(false & select(!(-667f == var_2.a.x), !(true & var_2.d), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(ceil(var_2.c)))) == -151f, -1i >= u_input.b);
    var var_4 = func_4(var_0.x, Struct_2(func_4(~(20639u & var_0.x), Struct_2(func_4(var_0.x, Struct_2(Struct_1(vec4<f32>(var_2.c, var_2.c, var_2.a.x, 2263f), var_2.b, var_2.c, true), u_input.b, var_2.b.yy, Struct_1(vec4<f32>(var_2.c, var_2.c, var_2.a.x, var_2.a.x), vec3<i32>(-1i, var_2.b.x, u_input.b), -526f, var_3.x))), _wgslsmith_clamp_i32(-36934i, u_input.b, -2147483647i), var_2.b.yz, Struct_1(vec4<f32>(420f, var_2.a.x, var_2.c, 425f), vec3<i32>(u_input.a, u_input.b, u_input.b), 558f, true))), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(8719i, var_2.b.x), var_2.b.x >> (var_0.x % 32u), u_input.a), ~vec2<i32>(-1i, _wgslsmith_sub_i32(-1i, var_2.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(-var_2.a), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), -(~var_2.b), -1377f, true)));
    let var_5 = select(var_4.b.yz, _wgslsmith_mod_vec2_i32(var_2.b.xx, vec2<i32>(var_4.b.x, ~(-4516i)) << (~(~vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u))), select(vec2<bool>(any(!vec4<bool>(true, true, var_3.x, var_4.d)), false), var_3.yy, vec2<bool>(false, any(!vec3<bool>(var_3.x, true, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(54668i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2.c)))));
}

