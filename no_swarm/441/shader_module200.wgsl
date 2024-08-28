struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: array<u32, 18> = array<u32, 18>(0u, 0u, 0u, 1598u, 1u, 1u, 45707u, 1890u, 0u, 96658u, 0u, 26660u, 0u, 23969u, 4294967295u, 28505u, 62255u, 63406u);

var<private> global1: array<bool, 11> = array<bool, 11>(true, true, false, true, true, false, false, true, true, true, true);

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(0u, 1u, 12971u, 0u), vec4<u32>(4294967295u, 10310u, 0u, 0u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<vec4<u32>, 2>();
    let var_0 = 2147483647i;
    let var_1 = min(~vec2<u32>(~4294967295u, u_input.a), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(77611u, global0[_wgslsmith_index_u32(99689u, 18u)])), vec2<u32>(25551u, 43461u)), ~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], u_input.a))), ~0u));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f * -361f))), 1f, -620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -349f)))))));
    global2 = array<vec4<u32>, 2>();
    return 368f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    global1 = array<bool, 11>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-1035f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(405f * -279f)))))), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b))));
    global0 = array<u32, 18>();
    var var_1 = (~(~(~vec2<u32>(global0[_wgslsmith_index_u32(15763u, 18u)], 79095u))) | vec2<u32>(_wgslsmith_mod_u32(u_input.a, 71818u), global0[_wgslsmith_index_u32(min(4294967295u, abs(global0[_wgslsmith_index_u32(1u, 18u)])), 18u)])) >> (vec2<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(u_input.a), 47408u), 6113u)) % vec2<u32>(32u));
    global2 = array<vec4<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(1177f);
}

