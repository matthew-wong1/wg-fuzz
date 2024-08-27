struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    var var_0 = ~u_input.b;
    var_0 = ~max(u_input.b, u_input.b);
    var_0 = u_input.b;
    var_0 = _wgslsmith_div_u32(~u_input.b, u_input.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(406f)))) * 426f), -958f);
    return true;
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = Struct_1(firstLeadingBit(vec4<i32>(-1i, -u_input.c.x, ~(-2147483647i), firstLeadingBit(u_input.c.x))) ^ (vec4<i32>(-1i) * -(~vec4<i32>(32034i, u_input.c.x, u_input.c.x, u_input.c.x))), true, arg_0.x);
    var var_1 = abs(~var_0.a.x >> (1u % 32u));
    var var_2 = var_0;
    var var_3 = var_0;
    let var_4 = var_2.a.x;
    return StorageBuffer(1u, ~vec2<u32>(select(_wgslsmith_add_u32(59514u, u_input.b), ~u_input.b, func_2()), 22255u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = 1u;
    var_1 = 16363u;
    var var_2 = false;
    var var_3 = firstLeadingBit(-(~abs(firstLeadingBit(2147483647i))));
    var_2 = (!((u_input.b >> (112719u % 32u)) <= 81821u) | true) & !all(vec4<bool>(true, true, true, true));
    var_3 = i32(-1i) * -12150i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, 514f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1460f, 835f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -712f)), vec2<f32>(1035f, 883f))) * vec2<f32>(1f, 1f)));
}

