struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 21> = array<i32, 21>(-4594i, i32(-2147483648), 1i, -29944i, 1i, 23280i, -1i, 0i, -46108i, -1i, 23535i, 75736i, -2636i, -29718i, 10605i, -75534i, i32(-2147483648), 0i, -16811i, 2147483647i, -18885i);

var<private> global2: vec4<f32>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xx;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-710f + 214f), 183f, _wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_f_op_f32(global2.x + global2.x))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -465f)), -737f, _wgslsmith_f_op_f32(1199f - _wgslsmith_div_f32(global2.x, global2.x))))));
    var var_1 = !global0.yww;
    var var_2 = 0u;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1742f * _wgslsmith_f_op_f32(-global2.x)));
    global4 = array<Struct_3, 24>();
    global1 = array<i32, 21>();
    global0 = !global3.a.a;
    let var_4 = global4[_wgslsmith_index_u32(min(~(~var_0.x), ~((u_input.a ^ u_input.a) | var_0.x)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4.a.x, -(~global1[_wgslsmith_index_u32(101317u, 21u)] ^ -21721i)));
}

