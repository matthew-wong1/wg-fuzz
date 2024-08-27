struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(752f, -573f, -1990f, -148f, 157f, 594f, -1052f, 417f);

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<u32, 9>;

var<private> global3: array<vec4<i32>, 16>;

var<private> global4: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    return var_0.c.x && true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_0;
    global1 = array<Struct_1, 8>();
    global3 = array<vec4<i32>, 16>();
    let var_1 = var_0;
    global1 = array<Struct_1, 8>();
    return arg_0.d;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.d | arg_0.d, ~max(func_3(arg_1, Struct_1(1u, vec3<f32>(arg_1.b.x, -802f, arg_0.b.x), vec2<bool>(false, true), arg_1.d), arg_1.c.x), vec4<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(71080u, 9u)], global2[_wgslsmith_index_u32(arg_1.a, 9u)]))), 0u, (1u ^ arg_0.d.x) | u_input.a.x);
    var var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1913f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f - -344f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10444u, 9u)], 9u)], 9u)]), 8u)])) * _wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b)), arg_0.c, ~max(vec4<u32>(u_input.a.x, u_input.a.x, 51165u, u_input.a.x) << (arg_1.d % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(var_0.x, arg_0.a, 1u, 1u))) << (~(~arg_1.d) % vec4<u32>(32u)));
    var var_2 = arg_0;
    return StorageBuffer(countOneBits(arg_0.a) & abs(arg_0.a), abs(min(u_input.c.x << (30759u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.b.x, u_input.c.x), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21477u, 9u)], 16u)]))) << (global2[_wgslsmith_index_u32(abs(~var_2.d.x), 9u)] % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(ceil(450f))))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    global2 = array<u32, 9>();
    let var_0 = i32(-1i) * -28040i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 0u, 4294967295u)), 8u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f - global0[_wgslsmith_index_u32(3895u, 8u)]))) - 216f) * 1182f);
    let x = u_input.a;
    s_output = func_2(global1[_wgslsmith_index_u32(~37537u, 8u)], Struct_1(firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 9u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1146f, global0[_wgslsmith_index_u32(19587u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 750f, -168f) + vec3<f32>(158f, 785f, -1075f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, global0[_wgslsmith_index_u32(77538u, 8u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 8u)])), vec3<f32>(-120f, 171f, 1603f), true))), vec2<bool>(any(vec4<bool>(true, true, true, false)), !func_1(global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(false, true, true), vec4<f32>(global0[_wgslsmith_index_u32(15625u, 8u)], global0[_wgslsmith_index_u32(5003u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47356u, 9u)], 8u)]), Struct_1(5537u, vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 8u)], -478f, 331f), vec2<bool>(false, true), vec4<u32>(0u, global2[_wgslsmith_index_u32(18721u, 9u)], 7022u, 70490u)))), vec4<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(select(4294967295u, global2[_wgslsmith_index_u32(103676u, 9u)], false), 9u)], reverseBits(62774u)), global2[_wgslsmith_index_u32(4294967295u, 9u)], ~global2[_wgslsmith_index_u32(max(25313u, global2[_wgslsmith_index_u32(43291u, 9u)]), 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)] & 0u)));
}

