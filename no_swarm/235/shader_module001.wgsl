struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), -47721i, 785f, 49581u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = vec2<bool>(!global0.a.x, global0.a.x);
    let var_2 = -830f;
    var_0 = 1461i;
    let var_3 = Struct_1(!global0.a, -1i ^ -(~(~global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))))), ~_wgslsmith_div_u32(global0.d, ~(0u << (u_input.a.x % 32u))), (u_input.a.x >> (min(42126u & global0.e, _wgslsmith_mod_u32(u_input.a.x, global0.d)) % 32u)) & global0.d);
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c);
}

