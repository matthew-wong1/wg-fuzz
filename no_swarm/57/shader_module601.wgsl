struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(-17038i), Struct_1(2147483647i));

var<private> global2: array<i32, 24>;

var<private> global3: Struct_2 = Struct_2(Struct_1(15303i), Struct_1(0i));

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<bool, 2>();
    global3 = Struct_2(global1.b, global1.a);
    var var_0 = global1.b;
    let var_1 = vec3<i32>(-5769i, global2[_wgslsmith_index_u32(arg_0, 24u)], u_input.a);
    var var_2 = var_1.xy;
    return global3.a;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))))));
    var var_1 = u_input.c.x;
    global0 = array<bool, 2>();
    let var_2 = func_2(47010u);
    let var_3 = Struct_2(Struct_1(u_input.a), func_2(20784u));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, 2651f, 294f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-379f, -396f, 350f), vec3<f32>(192f, -1027f, 1362f)))))), vec3<f32>(-167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f - 1208f)), -472f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(u_input.e.xx, vec2<u32>(u_input.d.x, 16197u)), _wgslsmith_div_vec2_u32(u_input.d, u_input.e.zy) ^ ~vec2<u32>(1u, 29837u)) | vec2<u32>(1u, ~global4.x));
}

