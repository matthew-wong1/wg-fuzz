struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec2<f32> = vec2<f32>(-601f, -218f);

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec2<i32>, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global1.x)), vec2<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, -2147483647i)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + -119f), _wgslsmith_f_op_f32(step(global1.x, global1.x)), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(12904u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)])))) - 1013f)));
}

