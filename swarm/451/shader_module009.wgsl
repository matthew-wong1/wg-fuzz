struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, true, false, false, true, true, true, false, true, false, true, false, true, false, true, false, false, true, true, false, false, true, true, false, true, true, false);

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 5> = array<i32, 5>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648), 1i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec2<i32> {
    global2 = array<i32, 5>();
    return -vec2<i32>(1i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1768f, global1.x, global1.x), vec3<f32>(475f, -144f, -1205f), true)) - vec3<f32>(212f, global1.x, global1.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 1000f, global1.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x - -1000f), _wgslsmith_f_op_f32(step(726f, 1382f)), _wgslsmith_f_op_f32(-global1.x)))));
    let var_1 = 349f;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.xx + vec2<f32>(-1314f, 1544f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, _wgslsmith_f_op_f32(-927f - -688f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(439f, _wgslsmith_f_op_f32(-var_1)))))));
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~countOneBits(u_input.d.x)), _wgslsmith_clamp_u32(~126923u, u_input.d.x, ~23982u), abs(u_input.d.x)), ~(vec4<u32>(4294967295u, u_input.d.x & 136324u, ~u_input.d.x, u_input.d.x) & abs(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), 21239u, _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -29746i), func_1(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], vec4<i32>(-7512i, 2147483647i, 1i, -2938i)))) | vec2<i32>(0i, u_input.e.x), u_input.b ^ select(u_input.a.x, 0i, all(vec4<bool>(true, true, true, true))));
}

