struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 26>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(var_0.d, var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -230f))));
    global2 = array<Struct_1, 3>();
    var var_2 = ~(1u >> (u_input.a % 32u));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(-232f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), -2031f)))));
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_5 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c, 45892u, u_input.c, 38789u), vec4<u32>(abs(23759u), max(u_input.a, u_input.c), ~1u, abs(u_input.a)) & vec4<u32>(~19563u, ~u_input.a, _wgslsmith_mult_u32(2057u, u_input.a), 11400u));
    global2 = array<Struct_1, 3>();
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(640f)), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

