struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 16>;

var<private> global2: array<Struct_5, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = (u_input.e.x << (~u_input.d % 32u)) ^ u_input.b.x;
    var var_2 = vec3<f32>(1030f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(962f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-457f, 1000f))), _wgslsmith_f_op_f32(floor(-1318f)), select(~u_input.c.x, select(0u, u_input.d, true), true) <= 58269u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) * -1269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-862f, 1599f))))))));
    let var_3 = true;
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(_wgslsmith_mult_u32(~1u, 0u))), global1[_wgslsmith_index_u32(countOneBits(~1u), 16u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x + 999f), _wgslsmith_f_op_f32(select(1178f, -688f, true))) + vec2<f32>(var_2.x, var_2.x))), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1 | var_1, 33701i, u_input.e.x), u_input.b.wzx));
}

