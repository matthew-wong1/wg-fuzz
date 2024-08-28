struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: array<vec2<bool>, 32>;

var<private> global3: array<vec2<f32>, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = true;
    return global0[_wgslsmith_index_u32(22697u, 1u)];
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1928f + 616f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-2023f, 285f, true)), -331f, true))));
    var var_1 = abs(vec3<u32>(20932u, func_3(), 23331u));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1326f, -1000f, 817f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1755f, -1000f, 2636f)))) * vec3<f32>(_wgslsmith_f_op_f32(-1554f - -121f), _wgslsmith_f_op_f32(-1000f * 353f), _wgslsmith_f_op_f32(sign(1727f)))) * vec3<f32>(-1015f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -423f), -1475f)), -1566f)));
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<vec4<i32>, 12>();
    let var_0 = vec4<u32>(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)] ^ 118828u, 1u)] << (u_input.a % 32u)), ~countOneBits(u_input.b.x ^ abs(26069u)), global0[_wgslsmith_index_u32(~4294967295u, 1u)], 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), -601f, -685f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(436f, -940f, 747f), vec3<f32>(-847f, 1547f, -408f)))))));
    global2 = array<vec2<bool>, 32>();
    global1 = array<vec4<i32>, 12>();
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(min(u_input.b, u_input.b), ~vec2<u32>(77104u, 52278u)), abs(u_input.a | 16110u), u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, func_1(0i), reverseBits(32806u), ~4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.a), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u, global0[_wgslsmith_index_u32(10457u, 1u)])) & ~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 18008u, 1u), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(0u & u_input.b.x, 1u)], ~0u, firstTrailingBit(4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -1369f));
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(845f, u_input.b.x, 3782u, u_input.a, _wgslsmith_mod_u32(countOneBits(21169u ^ global0[_wgslsmith_index_u32(~4294967295u, 1u)]), 13723u));
}

