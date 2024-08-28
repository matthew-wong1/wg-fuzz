struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(2147483647i, 13015i, 11323i), vec3<i32>(1i, -36501i, 767i), vec3<i32>(i32(-2147483648), 0i, -47785i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-9256i, -61337i, 0i), vec3<i32>(-15448i, i32(-2147483648), -32565i), vec3<i32>(75252i, -26952i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 470i), vec3<i32>(i32(-2147483648), -14508i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 42351i, -16259i), vec3<i32>(3619i, 0i, 0i), vec3<i32>(i32(-2147483648), 12561i, 48011i), vec3<i32>(0i, 6403i, 2147483647i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-1i, 0i, -16822i), vec3<i32>(0i, 60301i, 1903i), vec3<i32>(2147483647i, -19449i, 2147483647i), vec3<i32>(2147483647i, -1i, -1980i), vec3<i32>(13592i, 16212i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-1i, -8423i, -774i), vec3<i32>(2147483647i, -21642i, 0i), vec3<i32>(-43840i, 1i, 36444i), vec3<i32>(-10793i, 9974i, i32(-2147483648)), vec3<i32>(-1i, 34914i, -23509i), vec3<i32>(17397i, 7242i, 0i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-613i, 2412i, 0i), vec3<i32>(3548i, 0i, 3985i), vec3<i32>(2147483647i, 2147483647i, 10657i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    global0 = array<vec3<i32>, 31>();
    return ~_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)] | global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), ~vec3<i32>(-2147483647i, 9222i, 40967i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstTrailingBit(~u_input.a.x), _wgslsmith_clamp_u32(1u, ~abs(1u), u_input.a.x));
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(824f, -1589f, -295f, 1109f), vec4<f32>(-1543f, -1000f, -390f, -854f))), vec4<f32>(1274f, 413f, -415f, 384f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - 711f), -1473f, 837f, _wgslsmith_f_op_f32(1712f * -1000f)))), -1278f, var_0.x & 4294967295u, func_1());
}

