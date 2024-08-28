struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1000f, -1304f, 105f, -1186f), vec4<f32>(-527f, 680f, 1277f, 1388f), vec4<f32>(-1385f, 1613f, -1229f, -167f), vec4<f32>(118f, 148f, 1753f, 754f), vec4<f32>(217f, -100f, 1527f, -1088f), vec4<f32>(1404f, 646f, 770f, 460f), vec4<f32>(1272f, 115f, -1188f, 363f), vec4<f32>(1577f, 636f, 348f, 124f), vec4<f32>(1934f, -1000f, 1218f, -728f), vec4<f32>(598f, 108f, -633f, 489f), vec4<f32>(1150f, 175f, 301f, 296f), vec4<f32>(251f, -1682f, -2000f, 1021f), vec4<f32>(-1214f, 1557f, 1441f, 295f), vec4<f32>(120f, -537f, -936f, -239f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_0 = true;
    global0 = array<vec4<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(401f, -1601f, 1413f)))))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b.x, -u_input.b.x, i32(-1i) * -11186i), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.b.yy), u_input.b.x << (u_input.a % 32u))), -26356i), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(28708u, 72321u, u_input.a, u_input.a), vec4<u32>(2917u, 1u, 4294967295u, u_input.a))), 14u)] * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1537f), -1400f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1844f, -1662f)), _wgslsmith_f_op_f32(round(-2184f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) - _wgslsmith_f_op_f32(-1000f * -1000f)))), -710f, vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(7086u, u_input.a, 4294967295u, u_input.a)), _wgslsmith_mod_u32(1u ^ u_input.a, 0u), max(u_input.a, u_input.a)) ^ ((min(vec3<u32>(1831u, u_input.a, u_input.a), vec3<u32>(u_input.a, 65137u, 4294967295u)) & vec3<u32>(18032u, u_input.a, u_input.a)) & ~vec3<u32>(1u, u_input.a, 49336u)));
}

