struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 27>;

var<private> global3: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-164f, -1572f), -942f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, -515f)))));
    global0 = array<bool, 8>();
    var var_1 = u_input.a.xy;
    var var_2 = select((arg_1 >> (13857u % 32u)) <= countOneBits(~arg_1), arg_0, global2[_wgslsmith_index_u32(52761u, 27u)]);
    global3 = array<vec3<bool>, 16>();
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = u_input.a;
    global2 = array<bool, 27>();
    var var_1 = ~vec3<u32>(~1u, ~abs(~88054u), ~4294967295u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -842f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1138f, -1882f) - _wgslsmith_f_op_f32(-461f + 1000f)), true)), _wgslsmith_f_op_f32(round(1422f)), any(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(39114u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 8u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(56142u, 27u)], global2[_wgslsmith_index_u32(var_1.x, 27u)], global0[_wgslsmith_index_u32(8227u, 8u)])))))));
    var_0 = vec3<i32>(1i, arg_1.a, u_input.a.x);
    return vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 27u)], !(true | (_wgslsmith_f_op_f32(step(124f, -439f)) >= _wgslsmith_f_op_f32(-var_2.x))), global0[_wgslsmith_index_u32(~16983u, 8u)], true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    return abs(vec4<u32>(~(~(~4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 0u, 1u), ~1u), vec3<u32>(1u, 1u, 1u)), ~(~_wgslsmith_add_u32(44021u, 1u)), ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i);
    let var_1 = all(select(func_2(_wgslsmith_sub_i32(~u_input.a.x, 15544i), func_1(!global0[_wgslsmith_index_u32(1u, 8u)], 1u, Struct_1(-22226i)), Struct_1(firstTrailingBit(-1i)), Struct_1(~var_0.a)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(11869u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)], false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], false, global0[_wgslsmith_index_u32(1u, 8u)]), false)), global2[_wgslsmith_index_u32(24552u, 27u)]));
    let var_2 = vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(25039u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(0u, 53167u, 4294967295u, 4294967295u)), 1u), func_3(Struct_1(global1.a), Struct_1(u_input.a.x)), !any(vec4<bool>(global0[_wgslsmith_index_u32(3290u, 8u)], global2[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(70080u, 8u)], false))), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, ~0u, 53292u, 19383u << (1u % 32u)), func_3(func_1(global0[_wgslsmith_index_u32(1u, 8u)], 0u, Struct_1(1i)), func_1(global0[_wgslsmith_index_u32(4294967295u, 8u)], 886u, Struct_1(0i))))), 8u)], !(any(select(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)])) || global0[_wgslsmith_index_u32(firstLeadingBit(50392u), 8u)]));
    var var_3 = Struct_1(_wgslsmith_div_i32(~(-42050i) ^ ((u_input.a.x ^ u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, 14587i, 20278i, -66034i), vec4<i32>(0i, -2147483647i, -20494i, 21865i))), ~(~var_0.a)));
    var_0 = func_1(all(vec4<bool>(true, var_2.x, var_1, select(var_2.x, !global2[_wgslsmith_index_u32(53379u, 27u)], any(var_2.zz)))), abs(abs(1u)), Struct_1(~firstLeadingBit(u_input.a.x)));
    let var_4 = Struct_1(global1.a);
    let var_5 = _wgslsmith_f_op_f32(step(-1158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(max(-268f, -676f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - -274f)) * _wgslsmith_f_op_f32(f32(-1f) * -111f))));
    var_3 = func_1(false, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(~57362u, _wgslsmith_mod_u32(4294967295u, 92072u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 17548u), vec2<u32>(55662u, 4294967295u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 4294967295u, 73499u), firstLeadingBit(vec3<u32>(4294967295u, 63370u, 4294967295u))), global0[_wgslsmith_index_u32(81368u, 8u)])), Struct_1(1i));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5 - var_5) - _wgslsmith_f_op_f32(max(282f, 285f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_5, 1553f)))))) * vec2<f32>(1406f, _wgslsmith_f_op_f32(-var_5))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_5, -399f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, var_5)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, var_5)))))), vec2<f32>(-421f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_5)) - -301f)))), _wgslsmith_sub_u32(~32345u, 1u | (~6062u >> (_wgslsmith_clamp_u32(4294967295u, 1u, 13953u) % 32u))));
}

