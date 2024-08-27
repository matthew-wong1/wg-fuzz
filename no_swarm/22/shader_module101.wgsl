struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-58860i, 2147483647i, i32(-2147483648), 0i, i32(-2147483648));

var<private> global1: array<i32, 4> = array<i32, 4>(0i, 21005i, 0i, 1i);

var<private> global2: Struct_2 = Struct_2(1u);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(global3.b.yy));
    let var_1 = u_input.d.x;
    let var_2 = -2147483647i;
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zw, global3.b.x);
}

