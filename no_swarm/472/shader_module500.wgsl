struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-15189i, i32(-2147483648), -8735i, 49541i), vec4<i32>(i32(-2147483648), 2147483647i, 23670i, -1i), vec4<i32>(3078i, 1i, 1i, 2147483647i), vec4<i32>(31125i, -24692i, -6209i, 1i), vec4<i32>(-631i, -1i, 51614i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 1i, 60799i), vec4<i32>(20977i, -41854i, 0i, 5490i), vec4<i32>(1i, 2147483647i, -42955i, 1i), vec4<i32>(-41155i, 1i, -5734i, 25643i), vec4<i32>(0i, 7300i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 2000i, 0i, -8332i), vec4<i32>(5483i, -1i, -17837i, -74916i), vec4<i32>(-42773i, i32(-2147483648), i32(-2147483648), -12880i), vec4<i32>(24911i, 11101i, 0i, 1i), vec4<i32>(25249i, 2147483647i, 0i, -1i), vec4<i32>(-17921i, -1i, i32(-2147483648), -42066i), vec4<i32>(-64885i, 19125i, 537i, i32(-2147483648)), vec4<i32>(22989i, 11935i, 2147483647i, 1i), vec4<i32>(2147483647i, -1i, -44447i, -1i), vec4<i32>(2147483647i, 0i, 0i, -1i), vec4<i32>(2147483647i, 10873i, i32(-2147483648), -1i), vec4<i32>(-9441i, i32(-2147483648), i32(-2147483648), -87055i), vec4<i32>(i32(-2147483648), -1i, 1103i, 2147483647i), vec4<i32>(-1i, 2147483647i, -37530i, -1i), vec4<i32>(56000i, 0i, 0i, i32(-2147483648)), vec4<i32>(22775i, 102542i, 8019i, i32(-2147483648)), vec4<i32>(2147483647i, -23917i, 8074i, 0i), vec4<i32>(31152i, -21181i, 0i, 0i), vec4<i32>(16065i, -10681i, -39170i, 1i), vec4<i32>(-1i, -23837i, 1i, -6318i), vec4<i32>(-1i, 11705i, i32(-2147483648), -8618i), vec4<i32>(-1i, -3811i, 10419i, -15206i));

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 6>;

var<private> global3: array<bool, 13>;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(1225f, -1675f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(837f, _wgslsmith_f_op_f32(step(global4.a.x, 495f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, global4.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.a.x - 1306f), _wgslsmith_f_op_f32(-global4.a.x)) * vec2<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-var_0.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 303f));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -648f)));
    global3 = array<bool, 13>();
    return var_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(arg_0.x);
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    let var_1 = func_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, max(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(1u, 10369u, 1u, 17165u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.c, 44677u), u_input.b))), ~(54901u ^ u_input.b.x)));
    global3 = array<bool, 13>();
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(func_1(~min(~vec3<u32>(0u, 1u, 1u), u_input.b.xyx)), _wgslsmith_mod_vec4_u32(min(_wgslsmith_clamp_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), vec4<u32>(0u, 1u, 32187u, u_input.a.x) << (u_input.b % vec4<u32>(32u))), u_input.b), ~(~vec4<u32>(0u, 1u, u_input.a.x, 37060u)) & ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.c, u_input.c)), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(21628u, 13u)]), !select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 13u)], false), vec2<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true)), vec2<bool>(true, global3[_wgslsmith_index_u32(~u_input.b.x, 13u)])), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))), global3[_wgslsmith_index_u32(u_input.c, 13u)]));
    global2 = array<vec2<u32>, 6>();
    let var_1 = vec4<u32>(reverseBits(max(_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(u_input.a.x, 12524u)), _wgslsmith_add_u32(u_input.b.x & 37806u, reverseBits(u_input.b.x)))), 34754u, _wgslsmith_mult_u32(35471u, u_input.a.x), u_input.a.x);
    let var_2 = countOneBits(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_1.x));
    var var_3 = true;
    let var_4 = select(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(36389u, 13u)], false, false, false))), select(vec4<bool>(true, global3[_wgslsmith_index_u32(countOneBits(u_input.c), 13u)], any(vec3<bool>(true, true, true)), !(!global3[_wgslsmith_index_u32(4294967295u, 13u)])), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(~22171u, 13u)], !global3[_wgslsmith_index_u32(var_2, 13u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), func_3(Struct_1(global4.a), vec4<u32>(var_1.x, 35273u, u_input.c, 0u), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 13u)])).a.x) > global4.a.x), true);
    global3 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24855u, var_2), vec2<u32>(39821u, 24365u)), _wgslsmith_sub_u32(var_1.x, 1u)), ~4294967295u), vec4<f32>(-506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(434f)) * _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(select(-1000f, 199f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)), _wgslsmith_div_f32(982f, func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(17897u, 1u, 56941u), u_input.b.zzz)).a.x)), ~(~var_1));
}

