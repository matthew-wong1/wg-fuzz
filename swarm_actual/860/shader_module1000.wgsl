struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-25495i, -1i, -30117i), vec3<i32>(5952i, 0i, -47785i), vec3<i32>(i32(-2147483648), 2147483647i, -463i), vec3<i32>(-67285i, 0i, -50637i), vec3<i32>(6300i, 2147483647i, i32(-2147483648)), vec3<i32>(33165i, 11481i, -84305i), vec3<i32>(-14592i, -38745i, -1i), vec3<i32>(i32(-2147483648), -20443i, 2147483647i), vec3<i32>(-34151i, -3714i, 0i));

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-42963i, 25567i), vec2<i32>(-1i, 25640i));

var<private> global4: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 2534i), vec2<i32>(-59374i, 60261i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(15551i, -26610i), vec2<i32>(-40929i, 54687i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 33701i), vec2<i32>(i32(-2147483648), -5408i), vec2<i32>(2147483647i, -66144i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(4294967295u, u_input.a, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 8427u, u_input.a), vec3<u32>(u_input.a, 82749u, u_input.a)), false) & _wgslsmith_add_vec3_u32(max(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 23853u), global2.x), vec3<u32>(u_input.a, 15014u, u_input.a)), ~(~vec3<u32>(0u, 62692u, u_input.a))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 83621u, u_input.a), vec3<u32>(31605u, 62355u, 0u)), vec3<u32>(29116u, u_input.a, 1u) << (vec3<u32>(u_input.a, 59263u, 32375u) % vec3<u32>(32u))), countOneBits(1u), u_input.a));
    global3 = array<vec2<i32>, 2>();
    var var_1 = Struct_2(abs(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(63593u), _wgslsmith_mult_u32(u_input.a, u_input.a)), 9u)])), Struct_1(!select(vec4<bool>(true, global2.x, false, global2.x), select(vec4<bool>(global2.x, false, true, true), vec4<bool>(global2.x, false, true, true), vec4<bool>(false, global2.x, global2.x, global2.x)), true), select(1u, _wgslsmith_mult_u32(~11401u, 1u), global2.x), global2.x), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(2234u, u_input.a)), _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), abs(vec4<u32>(3656u, 0u, u_input.a, 31857u)))), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(23068u, u_input.a, u_input.a, u_input.a), vec4<u32>(6775u, 167314u, 1u, u_input.a)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - arg_0))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2, 1475f)))));
    global0 = array<vec3<i32>, 9>();
    return (!all(vec4<bool>(true, global2.x, true, true)) && true) != true;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = global2.xww;
    var var_1 = ~(~abs(0u));
    global0 = array<vec3<i32>, 9>();
    let var_2 = u_input.a;
    global2 = !vec4<bool>(!func_3(_wgslsmith_f_op_f32(max(-1751f, 903f)), _wgslsmith_f_op_f32(f32(-1f) * -804f), 977f), var_0.x, any(var_0.zz), true);
    return _wgslsmith_mod_u32(var_2, ~arg_0.d.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    global2 = vec4<bool>(true | ((func_2(arg_2, false) > u_input.a) && true), abs(~(arg_2.c >> (u_input.a % 32u))) > (~u_input.a ^ ~11138u), any(!select(!vec2<bool>(true, arg_2.b.c), !global2.wy, arg_1)), true);
    global3 = array<vec2<i32>, 2>();
    var var_0 = global2.zw;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f - -1279f))));
    var var_2 = ~vec2<u32>(arg_2.d.x | 4294967295u, ~(~(20642u & u_input.a)));
    return _wgslsmith_mult_vec2_u32(arg_2.d.xw | _wgslsmith_add_vec2_u32(countOneBits(abs(vec2<u32>(1u, 4294967295u))), max(~arg_2.d.yx, arg_2.d.yx)), vec2<u32>(_wgslsmith_mod_u32(67700u, 1u), 3305u));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = func_3(-1626f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f + -1275f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-611f, 659f, arg_3)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1270f, -636f))))), 1f);
    let var_1 = -25425i << (~(~(~4294967295u) >> (max(~1u, arg_0.x) % 32u)) % 32u);
    let var_2 = Struct_1(select(vec4<bool>(true, _wgslsmith_sub_u32(arg_2.b, 2803u) != u_input.a, any(arg_2.a), true), select(!arg_2.a, arg_2.a, select(select(arg_2.a, arg_2.a, arg_2.a), !vec4<bool>(false, arg_2.c, arg_1, arg_3), !arg_1)), any(!select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_2.a.x), global2.zz))), arg_2.b << (u_input.a % 32u), !global2.x && true);
    var var_3 = arg_2;
    let var_4 = ~(~(~(~1955u)) ^ (~(~arg_0.x) << (var_3.b % 32u)));
    return StorageBuffer(vec4<i32>(var_1, -var_1, firstTrailingBit(var_1), 1i), vec4<f32>(-833f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -229f))), -485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(1474f * -1167f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(866f)), 1997f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-7398i, select(-48392i, ~(i32(-1i) * -17713i), any(global2.zx)), max(-2147483647i, -8843i));
    let x = u_input.a;
    s_output = func_4(select(vec4<u32>(1u, max(44624u, countOneBits(0u)), ~28329u, select(u_input.a, 51181u, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(max(43332u, 1u), ~u_input.a, _wgslsmith_clamp_u32(56519u, 1u, u_input.a), 27860u & u_input.a), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), false), var_0.x >= 1i, global1[_wgslsmith_index_u32(33509u >> (max(28956u, _wgslsmith_dot_vec2_u32(func_1(var_0.x, false, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(73979u, 24u)], 3461u, vec4<u32>(4294967295u, 1u, 1u, 4294967295u))), ~vec2<u32>(u_input.a, 0u))) % 32u), 24u)], false);
}

