struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1410f * -2019f), _wgslsmith_f_op_f32(-551f + 480f))))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), true));
    let var_1 = Struct_2(-1256f, !var_0.b);
    var_0 = var_1;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) * _wgslsmith_f_op_f32(f32(-1f) * -2520f)) + _wgslsmith_f_op_f32(ceil(var_0.a))), -299f);
    let var_3 = 1u;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), -1234f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, 1u), ~vec3<u32>(u_input.c, 27173u, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - var_2.x)));
}

