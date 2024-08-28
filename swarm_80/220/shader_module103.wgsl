struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec3<i32>, 16>();
    let var_0 = false;
    var var_1 = Struct_4(Struct_3(!(!select(vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, var_0, false, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1965f, -1000f, 211f, -502f), vec4<f32>(1538f, -604f, 1754f, -1047f), vec4<bool>(true, true, false, true))))), vec4<f32>(-3040f, _wgslsmith_f_op_f32(max(-1582f, -793f)), -754f, _wgslsmith_f_op_f32(trunc(-1172f))))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, -635f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, -979f) - vec2<f32>(-1000f, 136f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1766f, -944f, -370f, -1000f) - vec4<f32>(350f, -1000f, -955f, 182f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(243f, 557f, 661f), vec3<f32>(1000f, -249f, 495f), false)), vec2<bool>(true, false), var_0, reverseBits(vec3<u32>(0u, 6935u, u_input.b.x)))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(55411u, u_input.b.x, 71823u)), abs(vec3<u32>(4294967295u, u_input.b.x, 0u))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(25542u, u_input.b.x, 25513u), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(0u, 1147u, u_input.b.x)))));
    var var_2 = var_1.a.c.b;
    let var_3 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(-57921i, 0i), vec2<i32>(2147483647i, u_input.c.x)), u_input.a.yy) ^ select(u_input.a.xx >> (vec2<u32>(5145u, var_2.e.x) % vec2<u32>(32u)), vec2<i32>(11067i, 1i), !vec2<bool>(var_0, var_1.a.c.b.d)), ~(-u_input.a.xz | u_input.c.zz)), vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(u_input.e, u_input.a.x, u_input.d), _wgslsmith_div_i32(max(-24887i, -2147483647i), max(2147483647i, -2147483647i)), firstTrailingBit(u_input.a.x) ^ (u_input.a.x & 12897i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(49753i, ~0i), u_input.c.x, firstTrailingBit(u_input.e))), vec2<bool>(true, var_2.c.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(var_2.b.x * 400f), _wgslsmith_f_op_f32(select(436f, -298f, var_2.c.x)), _wgslsmith_f_op_f32(var_1.a.c.a.x - var_1.a.c.a.x))), _wgslsmith_f_op_vec4_f32(var_1.a.c.b.a - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.b.x, -445f, 1688f, var_2.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(1277f, var_1.a.c.a.x, -128f, 724f), var_2.a)))))));
}

fn func_2() -> f32 {
    global0 = array<vec3<i32>, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2554f, 112f, -1077f), vec3<f32>(-870f, 1000f, -815f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(377f, -1076f, 1129f) + vec3<f32>(1000f, -772f, -1368f)))))), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), u_input.b.x > 4294967295u, vec3<u32>(~u_input.b.x, (~66176u & u_input.b.x) | u_input.b.x, countOneBits(26993u)));
    let var_1 = vec4<u32>(var_0.e.x, u_input.b.x, u_input.b.x, var_0.e.x);
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(239f)), _wgslsmith_f_op_f32(exp2(var_0.b.x))), _wgslsmith_f_op_vec2_f32(var_0.a.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(379f, -657f))))), Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, -1328f), !select(vec2<bool>(true, var_0.c.x), var_0.c, var_0.c), true, abs(var_0.e)));
    let var_3 = min(46401u, var_1.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(574f * 161f)));
}

fn func_1() -> f32 {
    global0 = array<vec3<i32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1485f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) > 1000f;
    let var_3 = abs(select(-_wgslsmith_div_vec4_i32(vec4<i32>(-18799i, 11550i, 26628i, 1i), vec4<i32>(42162i, u_input.a.x, u_input.d, u_input.e)), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-1i, 2147483647i), ~(-88692i), min(54081i, 2147483647i)), select(select(vec4<bool>(var_2, false, false, true), vec4<bool>(var_2, true, true, true), vec4<bool>(var_2, var_2, false, false)), select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(true, false, var_2, var_2), var_2), all(vec4<bool>(var_2, var_2, false, true))))) ^ (vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, 1i, -1i, 49966i), vec4<i32>(u_input.a.x, u_input.c.x, 7438i, u_input.a.x)) ^ ~vec4<i32>(2149i, u_input.c.x, u_input.e, u_input.e)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.b.x, u_input.b.x, firstTrailingBit(abs(1u) >> (~u_input.b.x % 32u))) << (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(13714u, 4294967295u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-121f)), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1757f, -2386f, true))) + _wgslsmith_f_op_f32(f32(-1f) * -1354f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f + 732f))), _wgslsmith_f_op_vec4_f32(func_3()).x));
}

