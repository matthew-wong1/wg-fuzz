struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec2<f32>(-701f, 469f));

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> u32 {
    return 52149u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(global0.b));
    var var_3 = -1i;
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 770f, _wgslsmith_f_op_f32(abs(-1000f)))), 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, u_input.c, 0u), 33070u) == select(firstLeadingBit(34777u), 53778u, false)));
}

