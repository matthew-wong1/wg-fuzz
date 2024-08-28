struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~vec3<u32>(4294967295u, ~(~567u), ~(u_input.a << (4294967295u % 32u))));
    var var_1 = Struct_3(!vec4<bool>(true, 1u <= ~u_input.a, false, true));
    var var_2 = var_1.a.wz;
    var var_3 = !all(select(select(var_1.a.yzy, vec3<bool>(var_2.x, var_1.a.x, var_2.x), true), !vec3<bool>(var_1.a.x, false, var_1.a.x), var_1.a.zzy)) && any(vec2<bool>(!all(vec4<bool>(var_2.x, var_2.x, false, var_2.x)), var_2.x));
    let var_4 = Struct_1(~var_0.yy, 59533u, vec2<f32>(444f, 1214f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1071f * var_4.c.x), _wgslsmith_f_op_f32(ceil(1362f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1063f + var_4.c.x) - _wgslsmith_f_op_f32(666f - -855f))), -1754f), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-max(vec3<i32>(-2147483647i, 70979i, 2147483647i), vec3<i32>(-22367i, 28660i, 0i)), vec3<i32>(~25738i, min(-22138i, 1i), 1i)), -countOneBits(firstLeadingBit(vec3<i32>(8783i, 0i, 45690i)))));
}

