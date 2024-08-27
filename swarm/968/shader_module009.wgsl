struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(626f, 567f, -470f, -280f), vec4<f32>(-1971f, -102f, 1385f, -336f), vec4<f32>(-393f, 2289f, 2563f, 611f), vec4<f32>(-1633f, 304f, -1550f, -1144f), vec4<f32>(-617f, 308f, -1386f, 1000f), vec4<f32>(1248f, -166f, 676f, 1651f), vec4<f32>(-401f, -684f, 390f, -656f), vec4<f32>(-381f, 1175f, 281f, 929f));

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-809f)), -1403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 487f))));
    var var_1 = vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f * 940f) - global3.x), _wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(sign(var_0.x)), false);
    let var_2 = -296f;
    let var_3 = u_input.c;
    let var_4 = u_input.d;
    global2 = array<vec4<f32>, 8>();
    global3 = vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(exp2(var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec3<i32>(54198i, u_input.a, -2147483647i)));
}

