struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(-(~_wgslsmith_add_vec2_i32(vec2<i32>(-40473i, -2147483647i), vec2<i32>(25665i, 42675i))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 56530i), vec2<i32>(-2179i, -24071i)), ~(vec2<i32>(-1i) * -vec2<i32>(-1i, 33822i))));
    global0 = arg_1.x;
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) + -1000f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-282f, -535f), _wgslsmith_f_op_f32(step(-865f, -481f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(-896f + 1151f)))), -1000f));
    return 28907i;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = -(i32(-1i) * -arg_1.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) - 1f);
    global0 = false;
    var var_2 = arg_1.d;
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(876f, arg_1.a.a.x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, arg_1.a.a.x)))))), ~arg_0);
    return abs(firstLeadingBit(0u));
}

fn func_2() -> vec2<u32> {
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(611i, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -18873i, 1i), vec3<i32>(2147483647i, -29537i, -2878i)), -2147483647i)), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(-29116i, 0i), vec2<i32>(-11270i, 1i)))) < -34268i;
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1775f, _wgslsmith_f_op_f32(ceil(-180f))))), func_4(_wgslsmith_div_u32(23237u, u_input.a), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, -624f)), u_input.a), -2147483647i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -379f), true, abs(-1i)), Struct_2(vec2<f32>(-217f, 1214f), _wgslsmith_mod_u32(u_input.a, 45375u))), _wgslsmith_div_i32(1i, func_3(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec4<bool>(true, true, true, true)))));
    global0 = true;
    global0 = true;
    var var_1 = Struct_3(Struct_2(vec2<f32>(1369f, _wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_div_u32(~(~28627u), var_0.b)), 61598i, Struct_1(var_0.a.x, false, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -35878i) >> (vec3<u32>(105112u, 61326u, u_input.a) % vec3<u32>(32u)), vec3<i32>(-1i, -2147483647i, -50461i)))), var_0);
    return reverseBits(vec2<u32>(~(~35284u), 10307u));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    global0 = false;
    let var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(arg_2.xz, arg_2.ww, arg_2.wz), ~vec2<u32>(4294967295u, arg_1), arg_0.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, 1u), vec2<u32>(61363u, u_input.a))), _wgslsmith_add_vec2_u32(func_2(), vec2<u32>(abs(arg_1) ^ ~arg_1, 66348u ^ arg_1)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, -273f, -465f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1604f, 870f, -532f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1615f, _wgslsmith_f_op_f32(max(-714f, 463f)), 395f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(411f, 1236f, 791f), vec3<f32>(-1425f, 133f, -936f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(sign(-1000f)), -471f))));
    global0 = arg_0.x;
    let var_2 = ~((select(firstTrailingBit(vec3<i32>(-15503i, 6915i, -24114i)), abs(vec3<i32>(33737i, -1i, -47193i)), !vec3<bool>(false, arg_0.x, false)) | _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-2147483647i, 51461i, -4941i)), vec3<i32>(-31334i, -1i, 2147483647i) >> (vec3<u32>(u_input.a, arg_1, 1u) % vec3<u32>(32u)))) << (max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(187u, arg_1, u_input.a), vec3<u32>(arg_1, 1u, 49057u)), 4294967295u, 28488u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2.x, arg_1), arg_2.xyy) >> (~arg_2.wzx % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.xz, vec2<f32>(var_1.x, -477f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), false, true), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-126f, 207f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1054f, 1132f)))))), ~(~1u)), ~6205i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f + 749f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(652f)) - 202f)), true, -16864i), func_1(vec2<bool>(var_0, var_0), u_input.a, abs(vec4<u32>(u_input.a << (u_input.a % 32u), u_input.a, 18909u, _wgslsmith_sub_u32(22862u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.a, _wgslsmith_f_op_f32(step(393f, -1725f))))) * 1672f), var_1.b << (~(4019u << (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.a.x))))), var_1.d.a.x, _wgslsmith_f_op_f32(sign(1341f)), _wgslsmith_f_op_f32(var_1.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))), var_1.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1497f))));
}

