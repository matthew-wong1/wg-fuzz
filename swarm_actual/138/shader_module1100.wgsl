struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<f32>(2729f, 204f, -1789f), -1i, 16585i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 3>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-28911i, -34567i, -214i, 1161i), vec4<i32>(2147483647i, -10905i, -20829i, 1i), vec4<i32>(-1576i, 39564i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(abs(1i) >> (~u_input.a.x % 32u)), global3.c, global3.c), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(617f - 526f)), _wgslsmith_f_op_f32(trunc(global0.b.x))));
}

