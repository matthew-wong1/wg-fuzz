struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> bool {
    return !select(all(select(!vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0)), false, arg_0);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), func_3(true), -1174f), vec4<bool>(_wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1392f)) + _wgslsmith_f_op_f32(ceil(1075f))), false, !all(vec2<bool>(false, false)), true), select(-select(firstLeadingBit(vec4<i32>(34259i, 0i, -1i, -2147483647i)), firstLeadingBit(vec4<i32>(-10208i, -37497i, 0i, 59714i)), true), -firstLeadingBit(vec4<i32>(-1i, 33752i, 5504i, 1i)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true)), vec3<bool>(any(vec3<bool>(false, true, false)) & false, reverseBits(u_input.a.x) < select(1u, 0u, true), select(false, any(vec3<bool>(true, true, false)), true)), vec3<bool>(true, true, true)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a, ~min(vec2<u32>(u_input.a.x, 4294967295u), u_input.a), u_input.a), u_input.a));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.c, 1508f, var_0.a.c, var_0.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c)), vec4<bool>(var_0.b.x, var_0.b.x, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, 433f, 726f, var_0.a.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.a.c, -853f, var_0.a.c))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, var_0.a.c, var_0.a.c, 983f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(149f, 306f, 567f, -1151f)), !var_0.d.x))))));
    var var_2 = min(~(var_0.e.x ^ (~1u | min(u_input.a.x, var_0.e.x))), max(1u, var_0.e.x));
    var_2 = u_input.a.x;
    var_2 = 10843u;
    return vec2<bool>(true, var_0.b.x);
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, _wgslsmith_f_op_f32(sign(-949f)), -1276f)) + vec3<f32>(-1111f, -1049f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-208f * -1175f), -661f))));
    let var_1 = -countOneBits(vec3<i32>(1i << (~u_input.a.x % 32u), ~select(0i, 11726i, true), -2147483647i));
    let var_2 = var_1.x;
    var var_3 = !select(vec2<bool>(true, true), select(!func_2(), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_2()), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), true)), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-var_0.a.x), true));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * var_0.a.x)));
    return _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1249f), var_0.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(arg_2.a);
    var var_1 = firstTrailingBit(-2147483647i);
    var_0 = Struct_2(arg_0.b);
    var var_2 = false;
    let var_3 = select(arg_0.b.a.x, var_0.a.a.x, arg_0.e);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(112f, -897f, 346f) * vec3<f32>(-1004f, 1154f, -1583f)) * _wgslsmith_f_op_vec3_f32(func_1())) + vec3<f32>(1f, 1f, 1f)), Struct_1(vec2<bool>(true, true), true | any(vec2<bool>(true, false)), 1000f), (~vec4<u32>(63702u, u_input.a.x, u_input.a.x, u_input.a.x) ^ firstLeadingBit(vec4<u32>(1u, 49714u, 1u, 30864u))) | ~(vec4<u32>(64590u, u_input.a.x, u_input.a.x, 1u) & vec4<u32>(1132u, 74672u, 12418u, 115023u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, 1i), firstLeadingBit(1i), -55074i, 26006i), -vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10090i, 34475i), vec2<i32>(2147483647i, 54411i)), 1i, -9670i, abs(0i))), true), Struct_3(Struct_1(vec2<bool>(true, true), true, -163f), !vec4<bool>(all(vec2<bool>(true, true)), true, true, true), max(firstTrailingBit(vec4<i32>(-1i, 52759i, 8961i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 36062i, -2147483647i, -2147483647i), -vec4<i32>(1i, 2147483647i, -1i, 2147483647i))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 39196u, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u)) >> (~u_input.a.x % 32u), u_input.a.x)), Struct_3(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(2147483647i, 0i, 3246i, 1i)), vec4<i32>(min(-42724i, 44078i), -9242i, _wgslsmith_dot_vec3_i32(vec3<i32>(22747i, -19694i, -1948i), vec3<i32>(18576i, -32237i, 58157i)), _wgslsmith_add_i32(2147483647i, -2147483647i)), ~vec4<i32>(0i, -17469i, 13312i, 1i) & select(vec4<i32>(-1i, 1882i, -2147483647i, -2147483647i), vec4<i32>(-1i, -2147483647i, 22029i, -2147483647i), true)), vec3<bool>(false, true, !select(true, false, true)), reverseBits(u_input.a)));
    let var_1 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.c + -1250f), _wgslsmith_f_op_f32(f32(-1f) * -1616f), var_0.a.x), var_0.a, false)), func_4(func_4(Struct_4(var_0.a, Struct_1(var_0.b.a, true, var_0.a.x), var_0.c, var_0.d, false), Struct_3(var_0.b, vec4<bool>(var_0.b.a.x, false, var_0.e, false), var_0.d, vec3<bool>(false, var_0.b.b, var_0.b.a.x), vec2<u32>(var_0.c.x, var_0.c.x)), Struct_3(var_0.b, vec4<bool>(var_0.b.b, true, false, var_0.b.b), vec4<i32>(1109i, 21541i, -2147483647i, var_0.d.x), vec3<bool>(var_0.b.a.x, var_0.b.b, var_0.b.b), vec2<u32>(var_0.c.x, var_0.c.x))), Struct_3(func_4(Struct_4(var_0.a, Struct_1(vec2<bool>(true, true), true, var_0.a.x), var_0.c, var_0.d, true), Struct_3(var_0.b, vec4<bool>(true, var_0.e, false, var_0.e), vec4<i32>(var_0.d.x, 11240i, var_0.d.x, -2277i), vec3<bool>(var_0.b.a.x, false, var_0.e), vec2<u32>(var_0.c.x, 96802u)), Struct_3(Struct_1(var_0.b.a, true, 1000f), vec4<bool>(var_0.b.a.x, var_0.e, false, var_0.b.a.x), vec4<i32>(-1i, -13832i, -2147483647i, var_0.d.x), vec3<bool>(true, false, var_0.e), vec2<u32>(23433u, u_input.a.x))).b, vec4<bool>(true, true, true, true), var_0.d, vec3<bool>(var_0.b.b, false, var_0.e), u_input.a), Struct_3(Struct_1(var_0.b.a, true, 1745f), !vec4<bool>(false, var_0.b.b, true, var_0.b.b), var_0.d, select(vec3<bool>(false, true, var_0.b.b), vec3<bool>(var_0.b.a.x, var_0.b.b, var_0.e), vec3<bool>(false, false, false)), vec2<u32>(1532u, var_0.c.x))).b, vec4<u32>(1u, firstLeadingBit(u_input.a.x), ~4294967295u, _wgslsmith_mult_u32(u_input.a.x, var_0.c.x)), var_0.d, var_0.b.a.x), Struct_3(var_0.b, vec4<bool>(var_0.b.b, true, func_2().x, var_0.b.a.x), firstLeadingBit(~(~var_0.d)), select(!vec3<bool>(var_0.b.b, var_0.e, true), !(!vec3<bool>(false, false, var_0.e)), !select(vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(var_0.b.a.x, false, true), true)), ~abs(~var_0.c.xw)), Struct_3(Struct_1(select(!var_0.b.a, vec2<bool>(var_0.b.a.x, var_0.e), any(var_0.b.a)), true, -973f), vec4<bool>(true, !var_0.e, any(vec3<bool>(var_0.b.b, true, true)) | all(vec2<bool>(var_0.b.a.x, var_0.e)), true), vec4<i32>(func_4(Struct_4(vec3<f32>(-715f, var_0.b.c, 1463f), Struct_1(var_0.b.a, var_0.b.a.x, 1210f), var_0.c, var_0.d, false), Struct_3(var_0.b, vec4<bool>(false, true, true, var_0.e), vec4<i32>(-2147483647i, -31661i, 0i, -2147483647i), vec3<bool>(var_0.e, false, var_0.e), u_input.a), Struct_3(Struct_1(var_0.b.a, var_0.e, 1499f), vec4<bool>(true, var_0.e, var_0.e, var_0.e), var_0.d, vec3<bool>(var_0.b.b, true, true), vec2<u32>(0u, 60558u))).d.x, func_4(func_4(Struct_4(var_0.a, var_0.b, vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, u_input.a.x), vec4<i32>(20696i, 1i, var_0.d.x, 4185i), var_0.b.b), Struct_3(var_0.b, vec4<bool>(false, var_0.b.a.x, false, var_0.e), vec4<i32>(14693i, 1i, -2147483647i, var_0.d.x), vec3<bool>(var_0.b.b, true, var_0.b.a.x), vec2<u32>(32270u, u_input.a.x)), Struct_3(var_0.b, vec4<bool>(var_0.e, true, true, var_0.b.b), var_0.d, vec3<bool>(true, var_0.b.a.x, var_0.e), var_0.c.wx)), Struct_3(var_0.b, vec4<bool>(var_0.b.a.x, true, var_0.e, var_0.e), vec4<i32>(0i, 2147483647i, -46347i, -2147483647i), vec3<bool>(false, var_0.b.a.x, var_0.b.b), var_0.c.ww), Struct_3(Struct_1(var_0.b.a, var_0.b.a.x, -473f), vec4<bool>(var_0.e, true, true, true), vec4<i32>(-1i, var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(true, false, var_0.e), u_input.a)).d.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.d.x, 1i), reverseBits(vec3<i32>(11230i, var_0.d.x, var_0.d.x)))), !vec3<bool>(var_0.b.b, var_0.c.x <= u_input.a.x, true), u_input.a)).b;
    let var_2 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(~1u, firstTrailingBit(18929u))), u_input.a, select(vec2<u32>(max(~9286u, ~u_input.a.x), u_input.a.x), vec2<u32>(~var_0.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_0.c, var_0.c), var_0.c.x, ~19559u)), vec2<bool>(true, true)));
    let var_3 = ~(~u_input.a.x);
    var var_4 = Struct_5(vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_vec3_f32(func_1()).x));
    var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(-func_4(Struct_4(_wgslsmith_f_op_vec3_f32(sign(var_0.a)), Struct_1(var_0.b.a, false, -361f), ~vec4<u32>(u_input.a.x, 42233u, var_0.c.x, 95398u), -vec4<i32>(0i, -47499i, var_0.d.x, 2147483647i), var_0.b.a.x), Struct_3(Struct_1(var_1.a, var_1.b, var_1.c), !vec4<bool>(var_1.b, var_1.b, var_0.b.a.x, true), vec4<i32>(0i, -34350i, var_0.d.x, var_0.d.x), vec3<bool>(false, false, var_1.b), _wgslsmith_mult_vec2_u32(vec2<u32>(78244u, var_3), vec2<u32>(var_0.c.x, 34017u))), Struct_3(var_1, vec4<bool>(true, true, false, var_0.e), var_0.d, !vec3<bool>(var_0.e, var_0.b.b, var_0.e), u_input.a)).a));
    var var_5 = true;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c);
}

