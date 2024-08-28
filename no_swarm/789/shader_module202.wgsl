struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, true, false, false, true, true, true, true, true, true, true, true, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1673f, 1388f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2999f, -1445f) - vec2<f32>(182f, -1000f))))), select(vec3<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false)), !global0[_wgslsmith_index_u32(0u, 16u)], true), !select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(72613u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(u_input.a.x, 16u)] & global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 16u)], u_input.a.x >= 16770u, any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(15801u, 16u)], true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], true), vec3<bool>(global0[_wgslsmith_index_u32(28977u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false)), vec3<bool>(false, global0[_wgslsmith_index_u32(49459u, 16u)], false)))), firstLeadingBit(_wgslsmith_add_u32(4141u, _wgslsmith_div_u32(1u, ~1u))));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, -13764i, 1i), 2147483647i), 0i), ~vec2<i32>(~27774i, i32(-1i) * -8498i), vec2<i32>(-48445i, i32(-1i) * -8624i) ^ -select(vec2<i32>(6671i, 16868i), vec2<i32>(-2147483647i, 21519i), global0[_wgslsmith_index_u32(46796u, 16u)])), 1u);
}

