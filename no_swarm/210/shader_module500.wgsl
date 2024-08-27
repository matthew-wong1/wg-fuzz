struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: array<bool, 20> = array<bool, 20>(true, false, false, false, true, false, true, true, false, false, true, false, true, true, false, false, true, true, false, false);

var<private> global4: array<vec2<i32>, 15>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    return arg_1.d;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    let var_0 = !(!vec3<bool>(global3[_wgslsmith_index_u32(arg_2.x, 20u)], global3[_wgslsmith_index_u32(~u_input.a | reverseBits(arg_0), 20u)], u_input.a <= arg_0));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(278f - 1096f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(449f * -1510f), _wgslsmith_f_op_f32(f32(-1f) * -264f))))));
    global1 = Struct_2(2147483647i >> (global0.x % 32u), -2147483647i);
    global3 = array<bool, 20>();
    global0 = vec3<u32>(~arg_2.x, ~0u | u_input.a, ~countOneBits(4294967295u)) << (_wgslsmith_sub_vec3_u32(~firstTrailingBit(min(arg_2, arg_2)), ~arg_2) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f))), 660f))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(-178f));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(17981u, -1i, vec3<u32>(67880u, 2595u, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1226f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1693f - -2225f) * 1129f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, -930f)), vec2<f32>(-1242f, 1000f), vec2<bool>(global3[_wgslsmith_index_u32(16616u, 20u)], global3[_wgslsmith_index_u32(global0.x, 20u)])))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1559f, 485f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(543f, 508f), vec2<f32>(-1146f, 223f)))))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(u_input.a, 7261i, vec3<u32>(u_input.a, global0.x, global0.x)))))), _wgslsmith_f_op_f32(-var_1.x)), ~(-34370i), vec4<u32>(73101u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 24956u, ~global0.x), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 130u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 62590u), vec4<u32>(global0.x, u_input.a, global0.x, global0.x)))), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(max(global0.x, global0.x), u_input.a))), select(vec4<bool>(true, !global3[_wgslsmith_index_u32(0u, 20u)], any(func_1(vec4<u32>(4294967295u, 3080u, global0.x, 27939u), Struct_1(var_1.x, global1.b, vec4<u32>(global0.x, 34831u, 14051u, 4294967295u), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.x, 20u)], true, true), true), Struct_1(959f, -5700i, vec4<u32>(22737u, global0.x, global0.x, 4294967295u), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 20u)], false, global3[_wgslsmith_index_u32(global0.x, 20u)]), global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<u32>(10824u, global0.x, global0.x, 3884u)).yxy), any(!vec4<bool>(global3[_wgslsmith_index_u32(29984u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], true, global3[_wgslsmith_index_u32(global0.x, 20u)]))), !vec4<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(global0.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)])), true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global0.x, 12080u), vec4<u32>(global0.x, 37014u, 70620u, 1u)), 20u)], any(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(global0.x, 20u)]))), vec4<bool>(all(func_1(vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u), Struct_1(var_1.x, -38796i, vec4<u32>(0u, 30835u, u_input.a, 1u), vec4<bool>(global3[_wgslsmith_index_u32(22953u, 20u)], global3[_wgslsmith_index_u32(global0.x, 20u)], true, true), true), Struct_1(var_1.x, 2147483647i, vec4<u32>(23523u, u_input.a, u_input.a, 21823u), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(60871u, 20u)]), global3[_wgslsmith_index_u32(global0.x, 20u)]), vec4<u32>(u_input.a, 1u, u_input.a, 36791u)).yz), any(select(vec4<bool>(global3[_wgslsmith_index_u32(19792u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(38482u, 20u)], false, false), global3[_wgslsmith_index_u32(66932u, 20u)])), true, false)), any(!vec4<bool>(global0.x < 4294967295u, true, global1.b != global1.b, global3[_wgslsmith_index_u32(4294967295u, 20u)] || false)));
    var var_3 = ~abs(global0.x) ^ ~1u;
    var var_4 = _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(var_2.c >> (vec4<u32>(0u, 13198u, 16630u, var_2.c.x) % vec4<u32>(32u)), max(vec4<u32>(global0.x, var_2.c.x, var_2.c.x, 50288u), vec4<u32>(4218u, 22016u, 0u, 4294967295u)))), max(var_2.c >> ((vec4<u32>(1u, 4294967295u, 1u, 0u) | _wgslsmith_add_vec4_u32(var_2.c, vec4<u32>(var_2.c.x, 1u, u_input.a, u_input.a))) % vec4<u32>(32u)), reverseBits(reverseBits(~vec4<u32>(u_input.a, 5435u, global0.x, u_input.a)))));
    return Struct_2(-6101i, ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(firstTrailingBit(max(4294967295u, u_input.a)), ~u_input.a, ~0u), countOneBits(vec3<u32>(~global0.x & _wgslsmith_add_u32(u_input.a, u_input.a), global0.x, ~(~u_input.a))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1109f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) * _wgslsmith_f_op_f32(min(-544f, 481f)))))), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(u_input.a, 15u)], ~(~_wgslsmith_div_vec2_i32(vec2<i32>(-24279i, global1.b), global4[_wgslsmith_index_u32(global0.x, 15u)]))), vec4<u32>(global0.x, 9075u, select(4294967295u, _wgslsmith_sub_u32(u_input.a, 1u), any(vec2<bool>(global3[_wgslsmith_index_u32(36216u, 20u)], false))), _wgslsmith_mod_u32(u_input.a, 5442u)) & ~(~vec4<u32>(127738u, global0.x, 0u, 1983u)), !select(select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(global0.x, 20u)]), func_1(vec4<u32>(0u, global0.x, u_input.a, 30334u), Struct_1(549f, 66668i, vec4<u32>(global0.x, 0u, 72362u, 0u), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 20u)], false, global3[_wgslsmith_index_u32(30727u, 20u)]), global3[_wgslsmith_index_u32(global0.x, 20u)]), Struct_1(242f, global1.a, vec4<u32>(25839u, 13980u, 11653u, 37864u), vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 20u)], true, global3[_wgslsmith_index_u32(u_input.a, 20u)], true), true), vec4<u32>(global0.x, u_input.a, 1u, 47313u)), vec4<bool>(true, global3[_wgslsmith_index_u32(global0.x, 20u)], true, false)), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 20u)], true, global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 20u)], global3[_wgslsmith_index_u32(19425u, 20u)], true, false), global3[_wgslsmith_index_u32(u_input.a, 20u)]), global3[_wgslsmith_index_u32(u_input.a, 20u)]), true);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-709f * var_0.a)))), _wgslsmith_f_op_f32(var_0.a - var_0.a), 308f, var_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1727f))))));
    global4 = array<vec2<i32>, 15>();
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.c.x));
}

