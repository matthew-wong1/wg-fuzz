struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = Struct_2(false);
    var var_1 = abs(~arg_2 << (~(~reverseBits(vec4<u32>(4134u, 6958u, 1u, 87698u))) % vec4<u32>(32u)));
    var var_2 = var_0;
    let var_3 = arg_1;
    var_2 = var_0;
    return (~(~(vec2<u32>(0u, 19868u) & vec2<u32>(u_input.b, 0u))) & _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, u_input.a), ~(~vec2<u32>(50556u, 1u)))) >> (~(~vec2<u32>(~u_input.c, u_input.a)) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = select(max(func_3(Struct_3(-1i), vec4<bool>(true, true, true, true), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)), ~vec2<u32>(u_input.b, 4294967295u)) ^ vec2<u32>(abs(u_input.b), u_input.b), max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(38933u, u_input.b), vec2<u32>(u_input.b, u_input.c), vec2<u32>(0u, u_input.a)), ~(vec2<u32>(u_input.a, u_input.b) ^ vec2<u32>(u_input.a, u_input.b))) ^ ~vec2<u32>(u_input.a, _wgslsmith_mult_u32(11705u, 13828u)), ~(~(~u_input.a)) > u_input.b);
    let var_1 = ~_wgslsmith_add_vec2_u32(~(~(vec2<u32>(3011u, 29889u) << (vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u)))), reverseBits(abs(~vec2<u32>(var_0.x, 15563u))));
    var var_2 = Struct_2(all(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1048f, -515f)), _wgslsmith_f_op_f32(1481f - -740f), _wgslsmith_f_op_f32(step(-636f, -733f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2240f, 232f, -1408f), vec3<f32>(507f, 771f, 159f), var_2.a)))), !select(vec3<bool>(true, var_2.a, false), select(vec3<bool>(false, var_2.a, false), vec3<bool>(true, false, var_2.a), vec3<bool>(false, true, true)), u_input.d < -2147483647i), u_input.c > 4294967295u), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2150f, 663f, -649f) + vec3<f32>(-128f, -274f, 589f)), vec3<f32>(-1546f, -1065f, -131f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, 804f, 818f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(810f, -598f, -150f), vec3<f32>(-469f, 1039f, -2264f))), true)))), select(vec3<bool>(var_2.a && true, var_2.a || false, var_2.a), !select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(var_2.a, false, true), var_2.a), _wgslsmith_div_u32(0u, 4294967295u) > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(21286u, var_1.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1879f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-646f, 1957f)) * _wgslsmith_f_op_f32(round(-899f)))), !(!select(select(vec2<bool>(var_2.a, false), vec2<bool>(false, false), vec2<bool>(var_2.a, true)), vec2<bool>(false, true), select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, var_2.a)))), Struct_1(vec3<f32>(1f, 1f, 1f), select(vec3<bool>(select(var_2.a, true, false), any(vec2<bool>(var_2.a, true)), true), !(!vec3<bool>(true, var_2.a, true)), var_2.a), all(select(vec3<bool>(var_2.a, var_2.a, var_2.a), select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(true, false, true), vec3<bool>(false, var_2.a, var_2.a)), select(vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(true, true, false), vec3<bool>(false, var_2.a, var_2.a))))));
    var_2 = Struct_2(all(var_3.a.b));
    return Struct_2(var_3.a.c);
}

fn func_1() -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(true);
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_mod_vec4_u32((vec4<u32>(u_input.b, ~u_input.a, 1u, _wgslsmith_clamp_u32(u_input.c, 0u, 1u)) << (firstTrailingBit(~vec4<u32>(u_input.b, 0u, 1u, u_input.c)) % vec4<u32>(32u))) | (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(37729u, 2843u, u_input.b, 33623u), vec4<u32>(0u, u_input.a, u_input.c, 0u)), vec4<u32>(u_input.b, 4191u, u_input.b, u_input.b) >> (vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(64408u, ~u_input.a, u_input.b, _wgslsmith_div_u32(75072u, 4294967295u))), vec4<u32>(firstTrailingBit(u_input.a), 0u, select(u_input.c, countOneBits(1u), any(vec3<bool>(false, false, true))), 0u));
    let var_4 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-448f, -1754f, -1016f) + vec3<f32>(-263f, 707f, 1000f)), vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1179f + -1126f), -1015f, _wgslsmith_f_op_f32(-1612f * -544f))))), select(vec3<bool>(all(select(vec4<bool>(var_1.a, var_4.a, true, true), vec4<bool>(var_1.a, false, false, var_1.a), vec4<bool>(var_4.a, false, var_1.a, true))), true, !all(vec4<bool>(var_4.a, true, true, var_4.a))), select(vec3<bool>(true, true, u_input.d <= -2147483647i), select(vec3<bool>(true, var_4.a, var_1.a), vec3<bool>(var_4.a, var_1.a, var_1.a), vec3<bool>(false, var_4.a, var_1.a)), !(!vec3<bool>(var_4.a, var_4.a, true))), true), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = true;
    var var_1 = func_1();
    var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-587f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 * arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, 428f, 1084f), _wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, var_1.b.x)))), arg_0.a))) + arg_0.a);
    var var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, abs(43036u), _wgslsmith_mod_u32(u_input.a, 1u)), 44193u, u_input.c), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.a), vec3<u32>(countOneBits(48278u), select(u_input.a, 43281u, true), _wgslsmith_add_u32(u_input.a, u_input.a))));
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = Struct_2(false);
    let var_2 = Struct_3((~_wgslsmith_mod_i32(62978i, -2147483647i) << (countOneBits(u_input.a) % 32u)) | -2147483647i);
    var var_3 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~arg_0.a, max(-arg_0.a, 6191i)), ~u_input.d, ~(~_wgslsmith_mod_i32(var_2.a, u_input.d))));
    var_0 = Struct_2(true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1397f, -525f, 434f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -510f, -334f), vec3<f32>(-2636f, -1610f, -1017f), vec3<bool>(true, var_0.a, false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1625f, -889f, 1706f), vec3<f32>(120f, -456f, 1030f)))))), select(vec3<bool>(true || !arg_1.a, true, !arg_1.a), select(select(!vec3<bool>(var_0.a, var_1.a, arg_1.a), vec3<bool>(true, false, false), arg_1.a), select(vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(false, var_1.a, false), !vec3<bool>(false, var_0.a, var_1.a)), var_1.a), true), all(vec4<bool>(true, arg_1.a & true, true, any(vec3<bool>(false, var_0.a, false)))) | false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(372f)) + -707f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1118f, 1575f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-235f, -578f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, 263f)))));
    let var_1 = Struct_4(func_5(Struct_3(-(u_input.d ^ 14697i)), func_4(func_1(), select(func_1().b, select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), true), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1052f + -130f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 304f, var_0.x)), vec3<f32>(var_0.x, var_0.x, var_0.x)))), func_1().b, false), vec2<bool>(true && (-u_input.d == (u_input.d >> (82532u % 32u))), !((325f <= var_0.x) && true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -468f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2008f, -1192f, var_0.x) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, -588f))))), vec3<bool>(true, !any(vec3<bool>(true, true, false)), all(func_5(Struct_3(u_input.d), Struct_2(true)).b)), true));
    let var_2 = vec3<u32>(1u, 6157u, 4294967295u);
    let var_3 = var_1.b.b;
    var var_4 = (u_input.d | u_input.d) ^ (max(_wgslsmith_div_i32(u_input.d, u_input.d ^ 2147483647i), firstTrailingBit(-39376i) | abs(u_input.d)) | ~(-(~(-1i))));
    var_4 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(10542u, 4294967295u, u_input.c), var_2, func_1().b), vec3<u32>(reverseBits(var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(50268u, 23425u, var_2.x, var_2.x), vec4<u32>(22776u, var_2.x, var_2.x, 57042u)), u_input.b))), var_1.a.a.zz, 1238f, u_input.d, var_0);
}

