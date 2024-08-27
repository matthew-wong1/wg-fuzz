struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<f32, 26> = array<f32, 26>(-1392f, 920f, 888f, -591f, 743f, 1930f, 525f, -275f, 929f, 424f, -1381f, 1000f, -360f, 293f, -2197f, 231f, 715f, -311f, -760f, -1000f, -1000f, -1251f, -103f, 429f, 119f, 526f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 12045u), ~u_input.c, _wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, ~u_input.c, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(48966u, u_input.c), u_input.b)), (vec4<u32>(u_input.b.x, u_input.c, 0u, u_input.c) >> (vec4<u32>(6619u, 1u, 62126u, u_input.b.x) % vec4<u32>(32u))) << (~vec4<u32>(1u, 137833u, 1u, u_input.c) % vec4<u32>(32u))))), 21u)];
    var var_1 = vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_mult_u32(44301u, ~var_0.b.x)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(1u, u_input.c), 26u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 26u)] * global2[_wgslsmith_index_u32(23533u, 26u)])))));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f - var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(0i, abs(~(-16335i)), true && (2147483647i == var_0.a)), -2150f, vec2<i32>(16176i, var_0.c));
}

