struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<vec4<f32>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, ~u_input.b >> (120668u % 32u)), 1u, 4294967295u), 0u), 24u)];
    global0 = array<Struct_1, 24>();
    var var_1 = global1[_wgslsmith_index_u32(~(~abs(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.a)))), 6u)];
    var var_2 = !var_0.d;
    global0 = array<Struct_1, 24>();
    var var_3 = -1053f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, u_input.c.x, vec2<i32>(54285i, ~abs(1i)), _wgslsmith_mult_u32(u_input.a, u_input.b));
}

