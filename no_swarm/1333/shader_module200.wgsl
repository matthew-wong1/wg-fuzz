struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(464f, -138f, 745f), vec3<f32>(1535f, 966f, -242f), vec3<f32>(-1253f, -347f, -3314f), vec3<f32>(-2248f, 2158f, -689f), vec3<f32>(1272f, 613f, -1000f), vec3<f32>(-1379f, 1000f, 1604f), vec3<f32>(-979f, -428f, -331f), vec3<f32>(1957f, -345f, 1000f), vec3<f32>(-1000f, 150f, 1568f), vec3<f32>(-502f, 863f, -892f), vec3<f32>(1000f, 322f, -1000f), vec3<f32>(-1055f, -1000f, 1594f), vec3<f32>(655f, -105f, 706f), vec3<f32>(-1000f, -1205f, 1894f), vec3<f32>(331f, -1031f, 1875f), vec3<f32>(153f, 2277f, 1095f), vec3<f32>(1000f, 1135f, 1070f), vec3<f32>(-1000f, 292f, 1197f), vec3<f32>(352f, 853f, -526f));

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1338f, 288f) * -792f))), -120f));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~_wgslsmith_div_vec3_i32(-abs(vec3<i32>(0i, u_input.d, -2147483647i)), vec3<i32>(u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d), -u_input.d)), _wgslsmith_f_op_f32(-var_0.x));
}

