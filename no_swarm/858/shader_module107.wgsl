struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<f32, 24> = array<f32, 24>(-328f, 212f, -368f, -435f, -1000f, -1547f, -450f, -1380f, 482f, 491f, -1388f, 630f, -350f, -849f, -462f, 734f, -1307f, -1241f, 1826f, 674f, 703f, -417f, -982f, -819f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(global0.x, -389f));
    let var_1 = Struct_2(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, true)))), Struct_1(u_input.a), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(global0.wxy + global0.wxx));
    var var_2 = vec4<i32>(~abs(_wgslsmith_clamp_i32(-19649i, ~77838i, reverseBits(2147483647i))), _wgslsmith_add_i32(0i, select(-1i, ~select(-2147483647i, u_input.b.x, var_1.c), var_1.c)), 31682i >> (arg_1 % 32u), u_input.b.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.d.x + -978f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), 443f, true))), arg_0));
    var var_3 = 122619u;
    return u_input.b;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = 89976i;
    var var_1 = func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.x * _wgslsmith_f_op_f32(-882f * arg_0.a.d.x))))), 1u);
    var var_2 = Struct_2(arg_0.a.a, arg_0.a.b, any(vec2<bool>(all(vec4<bool>(arg_0.a.c, false, false, false)) | true, false)), global0.yyz);
    var var_3 = 23491i;
    let var_4 = any(!var_2.a.xx);
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1271f - arg_0.a.d.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> i32 {
    let var_0 = 11177u;
    global1 = array<Struct_2, 30>();
    global2 = array<f32, 24>();
    var var_1 = func_2(Struct_4(arg_2.a));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, _wgslsmith_mult_u32(1u, max(arg_2.a.b.a.x, 4294967295u))), ~vec3<u32>(47667u, 97922u, ~89672u)), abs(select(1u, 32245u, any(arg_2.a.a))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(26584u, ~reverseBits(_wgslsmith_add_u32(u_input.a.x, 4333u)), reverseBits(u_input.a.x)), reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, 8044u), vec3<u32>(u_input.a.x, u_input.a.x, 2044u)), select(vec3<u32>(96869u, 65286u, 47623u), vec3<u32>(26858u, u_input.a.x, 0u), vec3<bool>(true, true, true))) ^ ~vec3<u32>(1u, 1u, 1u)));
    var var_1 = ~(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(20076i, -1i, u_input.b.x)), vec3<i32>(u_input.b.x, 0i, u_input.c))) ^ select(vec3<i32>(-(~u_input.c), u_input.b.x, _wgslsmith_mult_i32(select(7584i, u_input.c, true), func_1(vec2<bool>(false, false), 1u, Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(var_0.yy), false, global0.wxz))))), _wgslsmith_sub_vec3_i32(min(max(vec3<i32>(288i, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, u_input.c, -20601i)), firstTrailingBit(vec3<i32>(1i, u_input.b.x, u_input.b.x))), min(-vec3<i32>(u_input.c, -8387i, u_input.c), ~vec3<i32>(-33506i, u_input.b.x, u_input.b.x))), _wgslsmith_sub_u32(var_0.x, ~u_input.a.x) < _wgslsmith_sub_u32(~1u, var_0.x ^ u_input.a.x));
    var_0 = ~vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 34837u), 47056u, select(countOneBits(_wgslsmith_div_u32(18639u, u_input.a.x)), 12024u, -u_input.c > ~(-14615i)));
    let var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.x > u_input.b.x, select(true, false, true)), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true)));
    let var_3 = -_wgslsmith_sub_i32(0i << (var_0.x % 32u), 38152i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(-381f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)] + global0.x))))), ~_wgslsmith_div_i32(var_3, var_3 << (2651u % 32u)), 1f);
}

