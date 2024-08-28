struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<f32>(arg_0.x, 640f);
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    return u_input.b;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~1u >> (1u % 32u), 32u)];
    var var_1 = vec2<bool>(true, true);
    var var_2 = !select(!vec4<bool>(false, true, var_1.x && var_1.x, !var_1.x), vec4<bool>(false, (var_0.b << (0u % 32u)) == abs(0i), any(select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), var_1.x)), var_1.x), ~1u == _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 49176u, 4918u), vec3<u32>(1u, 1u, 4294967295u)), 1u));
    var var_3 = vec3<i32>(min(18075i, var_0.b), _wgslsmith_div_i32(~2147483647i, 1i), 1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(584f, 1510f)))))));
    return var_0.a;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 32>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + -273f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-543f)), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0)) - arg_0), true)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-507f)), arg_0, firstLeadingBit(arg_1.x) > u_input.a)));
    var var_1 = arg_1;
    var var_2 = ~_wgslsmith_add_vec4_i32(arg_1, ~(arg_1 << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var_1 = arg_1;
    return !(!vec2<bool>(true, all(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec4<i32>(u_input.b, -func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1289f, -2021f, -372f, -1541f))), u_input.b, -u_input.b));
    global1 = array<Struct_1, 32>();
    let var_1 = select(vec2<bool>(!all(func_2(1359f, vec4<i32>(1i, -1i, 2147483647i, -1i))), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), func_2(1f, ~var_0), true), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -159f)), ~firstTrailingBit(_wgslsmith_add_i32(-u_input.b, func_1(vec4<f32>(-797f, -505f, 418f, -1346f)))));
    let var_3 = var_2.a;
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_4 = ~max(1u, 46147u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~0u, ~17809u)), vec2<u32>(_wgslsmith_clamp_u32(1u, 52963u, 45231u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(95681u, 4294967295u, 146611u, 3232u), vec4<u32>(1u, 18143u, 42034u, 41903u)) % 32u), 1u)), ~25379u);
}

