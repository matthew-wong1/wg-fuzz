struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: Struct_2 = Struct_2(Struct_1(0u), Struct_1(64742u), vec2<u32>(0u, 1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_2 {
    let var_0 = -3844i;
    var var_1 = u_input.b.x;
    let var_2 = !vec4<bool>((~0u << (~u_input.a % 32u)) < ~u_input.c.x, true, false, !(!(global1.c.x >= global1.b.a)));
    return Struct_2(Struct_1(u_input.d.x), Struct_1(u_input.c.x), global1.c);
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<i32>, 27>();
    let var_0 = func_2();
    return Struct_2(func_2().a, global1.a, ~vec2<u32>(u_input.c.x, ~22757u));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<i32>(2147483647i, firstTrailingBit(min(u_input.b.x, -28962i)), -u_input.b.x ^ _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 27u)], vec3<i32>(-34367i, u_input.b.x, u_input.b.x))), ~(global0[_wgslsmith_index_u32(0u, 27u)] ^ global0[_wgslsmith_index_u32(68962u, 27u)]), !select(true, all(vec4<bool>(false, true, false, false)), true)) >> (u_input.c.wyx % vec3<u32>(32u));
    global0 = array<vec3<i32>, 27>();
    let var_1 = Struct_1(select(u_input.c.x, u_input.c.x, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1620f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1183f, 2476f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1429f * 226f), _wgslsmith_f_op_f32(f32(-1f) * -680f)))) + 353f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 27>();
    global1 = func_1();
    global0 = array<vec3<i32>, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-535f, -1000f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -569f)) + vec3<f32>(_wgslsmith_f_op_f32(641f * 1867f), _wgslsmith_f_op_f32(2540f - -1860f), _wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1389f, -323f, -462f), vec3<f32>(-726f, -284f, 818f)))))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(337f)), -473f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1564f, 1248f, 1603f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, 100f, -739f)), true)), vec3<bool>(any(vec3<bool>(false, true, false)), u_input.b.x != -18134i, any(vec4<bool>(false, false, false, false))))), vec3<f32>(_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(sign(-384f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2810f, -1080f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(303f, -1000f, false)))))));
    var var_1 = _wgslsmith_dot_vec4_u32(max(~select(_wgslsmith_div_vec4_u32(vec4<u32>(65014u, global1.c.x, global1.a.a, 30325u), u_input.c), u_input.c, vec4<bool>(true, true, true, true)), vec4<u32>((global1.b.a ^ 4294967295u) | countOneBits(1u), global1.b.a, ~u_input.d.x, 11423u)), select(u_input.c & u_input.c, ~firstLeadingBit(~u_input.c), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(true, false, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), var_2.x))));
}

