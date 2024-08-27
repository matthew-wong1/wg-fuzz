struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: array<vec2<u32>, 13>;

var<private> global3: array<Struct_4, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 13>();
    global0 = array<vec2<u32>, 6>();
    global1 = array<vec4<u32>, 17>();
    let var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(591f)), _wgslsmith_div_f32(1023f, 1470f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(-730f - 783f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(838f)))))), -678f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(i32(-1i) * -u_input.d.x, 7343i), vec3<i32>(-1i, -1i, u_input.d.x), vec3<u32>(min(u_input.a.x, u_input.b.x), u_input.b.x, 0u), u_input.d.x);
}

