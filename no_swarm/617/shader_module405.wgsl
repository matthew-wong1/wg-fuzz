struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-2430f, -912f, -898f), vec3<f32>(401f, 464f, 1792f), vec3<f32>(821f, -183f, -778f), vec3<f32>(825f, 321f, 1000f), vec3<f32>(-2169f, 251f, -958f), vec3<f32>(541f, -272f, 564f), vec3<f32>(1030f, -1000f, 1934f));

var<private> global2: f32 = -350f;

var<private> global3: bool = false;

var<private> global4: array<bool, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1509f, 1821f))), -461f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 30u)]))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -792f, global0[_wgslsmith_index_u32(4294967295u, 30u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], 493f, global0[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -1000f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(abs(0u), 30u)], _wgslsmith_f_op_f32(round(-1272f))))), 4294967295u, arg_0.x);
    global1 = array<vec3<f32>, 7>();
    let var_1 = Struct_2(_wgslsmith_mod_u32(var_0.a.x, 32184u));
    global0 = array<f32, 30>();
    var var_2 = vec2<i32>(firstLeadingBit(select(-16102i, ~(-1i), any(vec4<bool>(false, arg_0.x, var_0.e, true))) & 10247i), 0i);
    return ~(~(~(u_input.a << (_wgslsmith_sub_u32(var_0.a.x, 1u) % 32u))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_1((~select(arg_1, arg_1, true) >> (arg_1 % vec4<u32>(32u))) | ~(~(u_input.b | u_input.b)), vec4<f32>(-1333f, _wgslsmith_div_f32(1242f, global0[_wgslsmith_index_u32(43957u, 30u)]), -1041f, global0[_wgslsmith_index_u32(23029u, 30u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-277f, 553f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.a, 30u)], -346f) - vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], 1859f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1461f)) - global0[_wgslsmith_index_u32(~u_input.a, 30u)]), _wgslsmith_f_op_f32(max(538f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_3, 30u)], 949f, global4[_wgslsmith_index_u32(4294967295u, 14u)])))))), 49975u, all(arg_2));
    global3 = true;
    return !(!select(arg_2, !(!arg_2), vec2<bool>(!arg_2.x, arg_2.x)));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = select(vec2<bool>(true, any(vec3<bool>(global4[_wgslsmith_index_u32(func_2(vec2<bool>(global4[_wgslsmith_index_u32(24316u, 14u)], global4[_wgslsmith_index_u32(62906u, 14u)])), 14u)], global4[_wgslsmith_index_u32(~u_input.a, 14u)], !global4[_wgslsmith_index_u32(40845u, 14u)]))), !(!select(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], true), vec2<bool>(true, true), select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(45478u, 14u)]), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], false), vec2<bool>(global4[_wgslsmith_index_u32(1u, 14u)], true)))), func_3(Struct_2(reverseBits(u_input.b.x)), ~u_input.b, vec2<bool>(true, true), _wgslsmith_mod_u32(u_input.a, ~0u ^ u_input.b.x)));
    var_0 = vec2<bool>(func_3(Struct_2(1u), vec4<u32>(~0u | u_input.a, firstTrailingBit(~u_input.b.x), ~u_input.b.x, 1u), func_3(Struct_2(33388u), ~(~vec4<u32>(4294967295u, 12304u, u_input.b.x, 1u)), select(!vec2<bool>(false, var_0.x), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 14u)], var_0.x), all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)], false))), ~u_input.a), _wgslsmith_dot_vec4_u32(~(u_input.b >> (vec4<u32>(u_input.a, 31581u, u_input.a, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21021u, u_input.b.x, 55640u), vec4<u32>(u_input.b.x, 51175u, u_input.a, 60318u)), u_input.b.x, u_input.a, 42898u))).x, all(select(!(!vec4<bool>(var_0.x, true, var_0.x, true)), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 14u)], true, global4[_wgslsmith_index_u32(u_input.b.x, 14u)], var_0.x), true)));
    global1 = array<vec3<f32>, 7>();
    global0 = array<f32, 30>();
    var var_1 = abs(0u) <= ~(~_wgslsmith_clamp_u32(~u_input.b.x, u_input.a, countOneBits(0u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a);
    let var_1 = false;
    var_0 = Struct_2(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(u_input.b.xwy, u_input.b.zwx, true), u_input.b.ywx), min(~vec3<u32>(var_0.a, var_0.a, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 106676u, 0u), vec3<u32>(0u, 48506u, var_0.a)))));
    var_0 = Struct_2(~(~max(func_1(vec4<f32>(464f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -272f, 1831f)), 109362u)));
    var var_2 = func_3(Struct_2(abs(var_0.a)), u_input.b, vec2<bool>(!global4[_wgslsmith_index_u32(~30832u, 14u)], all(vec4<bool>(true, true, any(vec3<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)], true)), global0[_wgslsmith_index_u32(var_0.a, 30u)] != 1036f))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.a, 30u)], 25321u);
}

