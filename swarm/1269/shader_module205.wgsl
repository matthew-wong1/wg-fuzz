struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x != (min(global0.x, global0.x) | _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(global0.x, _wgslsmith_div_u32(78907u, 44487u)), ~116024u));
    global0 = countOneBits(u_input.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c.x), ~((_wgslsmith_mod_i32(u_input.c.x, 862i) | 1i) & countOneBits(u_input.c.x << (0u % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -666f) - _wgslsmith_f_op_f32(ceil(2242f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-330f, 1744f, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
}

