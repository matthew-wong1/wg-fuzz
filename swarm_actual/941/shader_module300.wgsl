struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, true, true, false, false, true, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec4<f32>(-192f, _wgslsmith_f_op_f32(2002f * _wgslsmith_f_op_f32(f32(-1f) * -143f)), _wgslsmith_div_f32(835f, -211f), 1422f);
    let var_1 = Struct_1(var_0.xw, arg_0.x == true, countOneBits(~(arg_1.xy ^ abs(arg_1.xy))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f * -931f))), var_0.x));
    var var_2 = var_1;
    var var_3 = var_1.c;
    let var_4 = var_1;
    return ~(~arg_1.x << ((_wgslsmith_sub_u32(0u, arg_1.x) >> (~arg_1.x % 32u)) % 32u)) << (var_1.c.x % 32u);
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = array<bool, 11>();
    var var_0 = vec2<bool>(true, global0[_wgslsmith_index_u32(~47444u, 11u)]);
    var_0 = select(select(vec2<bool>(true, !any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 11u)]))), vec2<bool>(true, true), select(any(vec3<bool>(true, true, true)), arg_0, true)), vec2<bool>(!var_0.x & false, global0[_wgslsmith_index_u32(78429u, 11u)]), any(select(vec3<bool>(true && global0[_wgslsmith_index_u32(u_input.d, 11u)], arg_0, true), vec3<bool>(true, all(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 11u)], true, false)), u_input.e != -2598i), any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, arg_0, true), arg_0)))));
    var_0 = vec2<bool>(true, all(vec2<bool>(!arg_0, true)) & (false || arg_0));
    var_0 = select(vec2<bool>(true, !any(vec2<bool>(true, true))), vec2<bool>(u_input.c == 1i, all(!(!vec4<bool>(true, var_0.x, true, global0[_wgslsmith_index_u32(u_input.a, 11u)])))), !(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(var_0.x, false), global0[_wgslsmith_index_u32(u_input.d, 11u)]))));
    return u_input.b.zw;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_mod_i32(u_input.e, u_input.c)), func_3(!global0[_wgslsmith_index_u32(1u, 11u)])) >> (_wgslsmith_mod_u32(arg_0, firstTrailingBit(22109u) << (1u % 32u)) % 32u), ~(~(-17150i)), 0i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -525f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, 1307f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1, 647f)))))), select(!all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 11u)], false), vec2<bool>(global0[_wgslsmith_index_u32(11017u, 11u)], true), global0[_wgslsmith_index_u32(arg_1.x, 11u)])), !(!all(vec2<bool>(false, false))), !(true && global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, 0u), vec3<u32>(arg_1.x, 0u, 93521u)), 11u)])), ~(~firstTrailingBit(vec2<u32>(19348u, arg_1.x) << (arg_1 % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(758f, 1076f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(775f, var_1), vec2<f32>(var_1, var_1), false))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1360f, var_1) * vec2<f32>(-1228f, 1968f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, var_1)))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1)));
    let var_3 = ~min(func_3(true).x, 41189i);
    var var_4 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(0u, select(~vec2<u32>(~1u, 20928u), vec2<u32>(4294967295u, func_1(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1765u, 11u)], true, global0[_wgslsmith_index_u32(u_input.d, 11u)]), global0[_wgslsmith_index_u32(4294967295u, 11u)]), ~vec4<u32>(0u, 34295u, u_input.a, u_input.d), !vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(27160u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(8918u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)]), global0[_wgslsmith_index_u32(u_input.a, 11u)]), global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(any(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.a, 11u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(64313u, 11u)], false))), true)));
    var var_1 = func_2(0u, ~var_0.c);
    let var_2 = var_1.b;
    let var_3 = 17823u;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-968f, _wgslsmith_f_op_f32(-var_0.d.x)))))), var_1.b, vec2<u32>(func_1(!select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(global0[_wgslsmith_index_u32(73494u, 11u)], false, global0[_wgslsmith_index_u32(0u, 11u)]), global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, var_3, var_3, 14755u), ~vec4<u32>(38335u, 15716u, 1u, 0u)), vec4<bool>(!var_0.b, all(vec4<bool>(true, true, var_0.b, var_0.b)), !var_0.b, global0[_wgslsmith_index_u32(var_1.c.x, 11u)] == true)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 73054u, 1u, var_3)), ~(~vec4<u32>(var_3, u_input.a, var_3, 94972u)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(1020f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d.x)) + 644f)), var_1.d)));
    var_0 = func_2(32206u >> (u_input.d % 32u), var_0.c);
    var var_4 = func_2(~_wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(1u, 27551u, 4294967295u)), u_input.a), ~var_1.c);
    let var_5 = u_input.b.xzy;
    var_4 = func_2(32044u, countOneBits((var_0.c << (min(vec2<u32>(10949u, var_1.c.x), var_1.c) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(min(var_0.c, var_0.c), var_4.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_4.c.x, firstLeadingBit(var_3)), ~15131u));
}

