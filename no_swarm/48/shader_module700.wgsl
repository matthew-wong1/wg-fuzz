struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(732f, -760f), vec2<f32>(-756f, 161f), vec2<f32>(1287f, 249f), vec2<f32>(1606f, 516f), vec2<f32>(720f, 1000f), vec2<f32>(-681f, -575f), vec2<f32>(-2203f, -1124f), vec2<f32>(-913f, 2097f), vec2<f32>(422f, 110f), vec2<f32>(163f, -205f), vec2<f32>(-936f, 111f), vec2<f32>(-991f, -494f), vec2<f32>(2558f, 144f), vec2<f32>(-766f, 1000f), vec2<f32>(-1654f, -961f), vec2<f32>(-1111f, 873f));

var<private> global3: vec2<f32>;

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.wzw, firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(0u, 45846u), max(4294967295u, 0u), 1u))));
    var var_1 = _wgslsmith_add_vec3_u32(~u_input.b, abs(vec3<u32>(var_0.a, var_0.a, 1u)));
    let var_2 = Struct_1(firstLeadingBit(abs(firstLeadingBit(~u_input.b.x))));
    var var_3 = global0[_wgslsmith_index_u32(abs(31481u), 2u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 483f, 877f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, 267f, 1596f, 1762f))), vec4<f32>(_wgslsmith_f_op_f32(min(188f, -548f)), 360f, _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(-556f * -1022f)), true)), vec4<bool>(true, true, true, !all(vec2<bool>(true, false)))))));
    return ~1u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    global0 = array<Struct_1, 2>();
    let var_1 = 2147483647i << (func_3() % 32u);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a, u_input.c.x), 16u)])))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -230f, -1106f));
    return 538u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -3015f, global3.x, global3.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 220f, global3.x, global3.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-880f, -386f, global3.x, global3.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, global3.x, 225f), vec4<f32>(1078f, global3.x, global3.x, 406f))))))));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(select(abs(u_input.b), max(vec3<u32>(var_1.a, u_input.c.x, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 46787u, u_input.c.x), u_input.c)), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_u32(u_input.b >> (~vec3<u32>(u_input.a.x, 38670u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(0u, 121391u, var_1.a), vec3<u32>(u_input.b.x, 8052u, 4294967295u)), vec3<u32>(61639u >> (0u % 32u), 59956u, 4294967295u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2654f) * _wgslsmith_f_op_f32(max(1270f, -927f))), 1000f) * _wgslsmith_f_op_vec3_f32(trunc(var_0.wwx)));
    let var_4 = var_1;
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(76071u, 16u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(799f, global3.x), vec2<f32>(2274f, global3.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec2<f32>(global3.x, -252f))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f + global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + _wgslsmith_f_op_f32(floor(global3.x))))));
    var var_2 = func_4(Struct_1(_wgslsmith_mod_u32(u_input.c.x, func_2(global0[_wgslsmith_index_u32(21315u, 2u)]))));
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.xy & ~vec2<u32>(u_input.c.x, u_input.a.x), u_input.b.zy)), 27u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(trunc(-905f))), var_1.x))));
    return func_4(global0[_wgslsmith_index_u32(var_3.x, 2u)]);
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(~arg_2.a), 16u)];
    let var_1 = select(vec3<bool>(false, !arg_3.x, arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_3.zyy, !arg_3.x);
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(61748u, 16u)], global2[_wgslsmith_index_u32(48483u, 16u)]))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~13285u, 16u)])))));
    let var_2 = ~u_input.a;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1406f, arg_1)))))));
    return global0[_wgslsmith_index_u32(arg_2.a, 2u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = select(select(!arg_1, vec3<bool>((i32(-1i) * -1i) < u_input.d.x, !(!arg_1.x), false), !(!all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), arg_1, !arg_1);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
    global1 = array<vec2<bool>, 31>();
    return func_4(Struct_1(~u_input.a.x));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(168f, global3.x)))) * _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(trunc(-1261f)));
    let var_0 = !select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, arg_0, arg_0)), !vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(!arg_0, true, any(vec2<bool>(arg_0, arg_0)), arg_0 || false), select(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), !vec4<bool>(arg_0, arg_0, false, true), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, true, false, true))), !select(vec4<bool>(true, true, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, true, false))));
    let var_1 = Struct_1(1u);
    var var_2 = var_1;
    var_2 = var_1;
    return global0[_wgslsmith_index_u32(9152u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = func_7(!all(!global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) && any(global1[_wgslsmith_index_u32(64379u, 31u)]), Struct_1(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 27u)], vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.b.x) & vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), u_input.b.x, func_6(func_5(firstLeadingBit(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 11105u), vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.a.x))), -1600f, func_1(), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), true)), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(22642u, 2u)], ~(~6562u)));
    var var_2 = vec4<i32>(~48982i, u_input.d.x, u_input.d.x, firstLeadingBit(u_input.d.x));
    var var_3 = any(!select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, false), false));
    let var_4 = ~(~vec4<i32>(2653i, u_input.d.x, 2147483647i, _wgslsmith_div_i32(var_2.x, u_input.d.x))) >> (u_input.a % vec4<u32>(32u));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-144f, global3.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, global3.x), global2[_wgslsmith_index_u32(u_input.c.x, 16u)])))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(3748u, 16u)]), vec2<f32>(global3.x, -149f), select(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_1.a, 31u)]))))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, 78555u, 1u), ~(-var_4.x));
}

