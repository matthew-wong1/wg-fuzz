struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<vec2<u32>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> i32 {
    global1 = array<vec2<u32>, 1>();
    return ~countOneBits(u_input.a.x ^ abs(arg_1));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_3(vec4<i32>(min(u_input.a.x, -firstLeadingBit(2147483647i)), func_3(~(-31153i >> (0u % 32u)), ~(~u_input.a.x), _wgslsmith_f_op_f32(round(-883f))), _wgslsmith_mod_i32(u_input.a.x >> (_wgslsmith_clamp_u32(1u, 85950u, 4294967295u) % 32u), min(~(-7355i), u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, -select(99009i, u_input.a.x, true))));
    var var_1 = -var_0.a.xw;
    var var_2 = 1u;
    var_1 = -u_input.a;
    global1 = array<vec2<u32>, 1>();
    return _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(706f * _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1183f)), _wgslsmith_f_op_f32(min(-781f, -285f))))));
    let var_2 = vec4<f32>(634f, -249f, -1826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-779f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec3<f32>(-733f, 471f, 274f), vec2<bool>(false, false))), -1851f))))));
    var var_3 = reverseBits(-arg_0);
    global0 = array<Struct_3, 12>();
    return _wgslsmith_f_op_f32(func_2(vec3<f32>(1f, 1f, 1f), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -74097i, u_input.a.x, u_input.a.x) ^ ~vec4<i32>(u_input.a.x, -22660i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -43790i, u_input.a.x, -2482i) | vec4<i32>(-1i, -2147483647i, 1i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-u_input.a.x, _wgslsmith_sub_vec4_i32(var_0.a, var_0.a))) * -1995f), -1578f, _wgslsmith_f_op_f32(789f * -388f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f * -313f)), 1773f, -305f))));
    global1 = array<vec2<u32>, 1>();
    var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_1.x, -1356f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, var_1.x, -396f))));
    var_1 = vec3<f32>(590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-994f))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(var_1.x * -345f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-859f)), 305f))), 226f), vec2<u32>(max(~(~1u), 4294967295u), 26415u), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1083f))) - var_1.x)), _wgslsmith_div_u32(5790u, 4294967295u), global1[_wgslsmith_index_u32(~29260u >> (firstTrailingBit(_wgslsmith_add_u32(1u, ~43245u)) % 32u), 1u)]);
}

