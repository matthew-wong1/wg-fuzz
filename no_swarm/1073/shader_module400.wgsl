struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: array<vec4<f32>, 9>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<bool, 14> = array<bool, 14>(false, true, true, true, true, false, true, true, true, false, true, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = firstTrailingBit((vec2<u32>(34894u, arg_2.b) ^ vec2<u32>(countOneBits(arg_0.x), min(0u, 19765u))) << (u_input.a.yy % vec2<u32>(32u)));
    let var_1 = countOneBits(-1i);
    var var_2 = Struct_1(1i, ~_wgslsmith_sub_u32(arg_2.b, select(var_0.x, u_input.a.x, true)) | 1u);
    global4 = array<bool, 14>();
    var var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(~min(abs(vec3<u32>(0u, 20384u, 0u)), ~vec3<u32>(1u, arg_2.b, arg_0.x)), vec3<u32>(4294967295u, 4294967295u, (arg_2.b & 26952u) << (1u % 32u))), arg_0.x);
    return 276f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(_wgslsmith_add_u32(11975u, u_input.a.x), 50819u, _wgslsmith_mod_u32(17774u, u_input.a.x), 1u), false, Struct_1(u_input.b.x, u_input.a.x ^ 4294967295u)))));
    global3 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, firstTrailingBit(36063u | ~u_input.a.x), 44235u, 18933u), ~_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(1u, 27u)], vec4<u32>(50701u, 4294967295u, 37145u, 75609u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | firstLeadingBit(~vec4<u32>(u_input.a.x, 31364u, 39121u, 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) - _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_1, global4[_wgslsmith_index_u32(11249u, 14u)], Struct_1(-1i, 4294967295u))), _wgslsmith_f_op_f32(var_0 * -142f))))));
    var var_3 = vec2<u32>(u_input.a.x, u_input.a.x);
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(4294967295u), ~1u), 12u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global4 = array<bool, 14>();
    var var_0 = func_2(global4[_wgslsmith_index_u32(arg_2.b, 14u)]);
    global1 = array<vec4<f32>, 9>();
    var_0 = func_2(global4[_wgslsmith_index_u32(~53518u, 14u)]);
    global3 = array<Struct_1, 12>();
    return (arg_0.x != arg_0.x) | arg_1.x;
}

fn func_5(arg_0: vec3<bool>) -> vec4<u32> {
    global3 = array<Struct_1, 12>();
    return countOneBits(global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 0u)) >> ((reverseBits(u_input.a.x) ^ max(42526u, 1u)) % 32u)), 27u)]);
}

fn func_1() -> f32 {
    let var_0 = func_5(!vec3<bool>(!all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(28493u, 14u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 14u)])), global4[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 14u)], func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1180f, 434f), vec2<f32>(983f, -840f), vec2<bool>(false, true))), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(1u, 14u)]), func_2(false))));
    let var_1 = func_2(global4[_wgslsmith_index_u32(var_0.x, 14u)]);
    global0 = array<vec4<u32>, 27>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-439f, 814f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, var_1.b, 4294967295u, u_input.a.x), global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(53119u, 19u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(vec3<bool>(all(vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)])), true, true)), _wgslsmith_mod_u32(~select(u_input.a.x, 4294967295u, true), ~u_input.a.x >> (4294967295u % 32u)) <= _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(15951u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz))), _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(f32(-1f) * -550f), false);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(max(344f, -354f)))))));
    var var_2 = Struct_1(-9677i, ~(~4294967295u));
    let var_3 = func_2(!(global4[_wgslsmith_index_u32(var_2.b, 14u)] && true) && true);
    global3 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.b), (u_input.b >> (~(vec4<u32>(4294967295u, u_input.a.x, var_3.b, 13537u) ^ global0[_wgslsmith_index_u32(var_2.b, 27u)]) % vec4<u32>(32u))) >> (max(~(~vec4<u32>(4294967295u, var_2.b, 57601u, 30441u)), global0[_wgslsmith_index_u32(var_2.b, 27u)]) % vec4<u32>(32u)));
}

