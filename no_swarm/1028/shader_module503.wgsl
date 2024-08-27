struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-507f, -486f), vec2<f32>(1029f, 804f), vec2<f32>(-586f, -707f), vec2<f32>(797f, -1820f), vec2<f32>(-278f, 613f));

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<vec2<f32>, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 8>();
    let var_0 = any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    global1 = array<vec4<u32>, 20>();
    global0 = array<vec2<f32>, 5>();
    var var_1 = 51286u;
    global3 = array<vec2<f32>, 8>();
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1768f, -674f, -1145f, -205f)), vec4<f32>(-582f, 408f, -759f, 1894f), true)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1823f + 783f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f))), 834f, -520f), 1194f);
}

