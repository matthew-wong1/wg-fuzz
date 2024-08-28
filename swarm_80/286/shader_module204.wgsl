struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -924f);
    let var_2 = true;
    global1 = array<vec4<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -_wgslsmith_mult_i32(u_input.a, 1275i));
}

