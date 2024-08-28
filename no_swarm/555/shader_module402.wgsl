struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -abs(firstTrailingBit(vec2<i32>(0i, ~global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(541f + _wgslsmith_f_op_f32(sign(1233f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(863f - 1001f) - _wgslsmith_f_op_f32(global2.c.x - global2.c.x))))), _wgslsmith_mod_vec3_i32(-(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 11688i), vec3<i32>(global0.x, u_input.c, -2147483647i)) | vec3<i32>(69935i, 14614i, global0.x)), ~reverseBits(vec3<i32>(1i, u_input.a, global0.x))));
}

