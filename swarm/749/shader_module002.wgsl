struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return -452f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    global0 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f - 1374f))) + _wgslsmith_f_op_f32(-1954f - arg_1.x))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<u32>(23624u, arg_2), Struct_1(-1123f, vec4<i32>(-45819i, 31099i, -1i, arg_0.x), vec4<f32>(-1000f, arg_1.x, arg_1.x, arg_1.x), arg_1.x, arg_1.x), Struct_1(1000f, arg_0, vec4<f32>(-745f, 890f, arg_1.x, -1332f), -1127f, -1591f))))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2, arg_2, arg_2, 4294967295u) | vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_2), _wgslsmith_mult_u32(40038u, 1u), arg_2 | arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(121791u, 676u, arg_2), vec3<u32>(arg_2, arg_2, 62871u))), vec4<u32>(_wgslsmith_div_u32(1u, 25780u), 19153u, _wgslsmith_add_u32(1u, 1u), ~11416u), vec4<u32>(~(~arg_2), 1u, ~(~61364u), arg_2)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, -204f)) - _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-369f, -460f)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), var_0.b.yz) | max(var_0.b.wz, var_0.b.zx)) ^ var_0.b.yx, ~(~vec2<u32>(0u, 43074u))), vec2<u32>(min(firstLeadingBit(var_0.b.x), 69533u), 4294967295u));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec3<u32>(func_2(_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(16203i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(~u_input.a, 1i, 1i, -u_input.a)), arg_0, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(5805u, 102960u), vec2<u32>(114236u, 19265u)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(65889u, 0u, 1u, 0u), max(vec4<u32>(4294967295u, 4294967295u, 20605u, 0u), vec4<u32>(0u, 4294967295u, 50300u, 48009u))), ~(~vec4<u32>(2365u, 17693u, 42213u, 0u))), 1u);
    var_0 = ~(~vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x) >> (~var_0.x % 32u), var_0.x, max(var_0.x, var_0.x) | _wgslsmith_clamp_u32(var_0.x, 4294967295u, 30077u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f), -213f) + _wgslsmith_f_op_f32(-arg_1)));
    var_0 = ~(~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, var_0.x, 34020u), vec3<u32>(var_0.x, 49224u, var_0.x), vec3<u32>(5592u, 0u, var_0.x)) ^ abs(vec3<u32>(var_0.x, 4294967295u, 0u)))));
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), vec3<bool>(true, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))), all(vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, -1399f), arg_1))), vec4<i32>(-1i) * -min(vec4<i32>(-32500i, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, 134034i, 1i), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1123f, arg_0.x, arg_0.x) - vec4<f32>(-1434f, arg_1, -2005f, 505f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 959f, -1000f, -2178f)))))), arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2055f - -892f), _wgslsmith_f_op_f32(ceil(-932f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), 1729f))));
    global0 = var_0.a;
    global0 = var_0.e;
    global0 = _wgslsmith_f_op_f32(-var_0.e);
    global0 = _wgslsmith_f_op_f32(func_3(vec2<u32>(abs(~49197u), ~(~20989u)) & vec2<u32>(~func_2(vec4<i32>(-91699i, var_0.b.x, var_0.b.x, u_input.a), var_0.c.zx, 77487u), ~(~4294967295u)), func_1(var_0.c.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + var_0.e)), var_0));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31728u, 41206u), vec2<u32>(4294967295u, 18914u)), 64269u), var_0, Struct_1(var_0.d, ~var_0.b, _wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-732f, var_0.a, 1617f, var_0.d)), _wgslsmith_f_op_f32(-958f * var_0.a), -1586f))) * var_0.a), max(~firstLeadingBit(vec4<u32>(26665u, 35821u, 62094u, 1u)), ~(~vec4<u32>(15147u, 1u, 1u, 1u))) << (_wgslsmith_div_vec4_u32(select(countOneBits(vec4<u32>(1u, 40231u, 108214u, 12589u)), reverseBits(vec4<u32>(33605u, 181589u, 4294967295u, 8280u)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), firstTrailingBit(vec4<u32>(26543u, 4294967295u, 0u, 58898u))) % vec4<u32>(32u)));
    var var_2 = var_1.b.x;
    global0 = -143f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1i, 0u >> (~var_1.b.x % 32u));
}

