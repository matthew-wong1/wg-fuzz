struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    return true;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = Struct_3(!(!global0[_wgslsmith_index_u32(10697u, 27u)]));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1501f + -1580f) + -586f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1447f + _wgslsmith_f_op_f32(max(1005f, -592f))))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_3(select(vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 42897u), vec4<bool>(true, false, false, false)), vec4<u32>(82621u, u_input.d.x, u_input.d.x, 4294967295u)), 27u)], !vec4<bool>(func_1(Struct_1(vec4<i32>(30379i, -1i, -1862i, 4299i), vec2<f32>(-125f, -709f)), arg_0.x), true, all(vec2<bool>(false, false)), true)));
    global0 = array<vec4<bool>, 27>();
    let var_1 = Struct_1(reverseBits(vec4<i32>(-47945i, 0i, i32(-1i) * -arg_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-17480i, arg_0.x), 1i & arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1936f, 580f), _wgslsmith_f_op_f32(sign(-1359f)))))));
    let var_2 = ~4294967295u;
    var var_3 = Struct_3(!select(global0[_wgslsmith_index_u32(1u, 27u)], vec4<bool>(any(var_0.a.zyx), false, true, var_0.a.x), !(!vec4<bool>(var_0.a.x, true, true, var_0.a.x))));
    return _wgslsmith_mod_i32(var_1.a.x, ~(~(-40836i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    var var_0 = vec3<bool>(true, true, func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.c.x, 13594i, 1i) << (vec4<u32>(61349u, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2270f, 1019f) * vec2<f32>(-269f, -588f))), ~(-12164i)) & false);
    let var_1 = Struct_3(vec4<bool>(var_0.x, var_0.x, !(!var_0.x), var_0.x && var_0.x));
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_2 = Struct_4(false, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, -2147483647i, 1i), vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(-2147483647i, u_input.a), i32(-1i) * -1i, -80810i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(159f, -1513f))) + vec2<f32>(_wgslsmith_f_op_f32(317f + -2297f), _wgslsmith_f_op_f32(f32(-1f) * -258f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f * 142f) - _wgslsmith_div_f32(1274f, -2013f)), 345f, true)), -1089f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c.xy & vec2<i32>(1i, 0i))) * -1875f)));
    var var_3 = ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 19572u), vec2<u32>(u_input.d.x, 1u)), ~min(u_input.d.x, 0u)));
    let var_4 = Struct_2(Struct_1(abs(vec4<i32>(-43437i, ~0i, firstTrailingBit(0i), i32(-1i) * -2147483647i)), var_2.b.b), Struct_1(vec4<i32>(func_3(~var_2.b.a.ww), -(~60708i), var_2.b.a.x, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.b * vec2<f32>(1076f, -889f))) - var_2.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_2.b.a.zz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1534f, var_2.c.x) + 1610f), _wgslsmith_f_op_f32(round(var_2.c.x)))), _wgslsmith_add_u32(u_input.d.x, u_input.d.x), ~u_input.b.x);
    let var_5 = Struct_3(!vec4<bool>(all(!vec3<bool>(true, var_1.a.x, true)), true, select(true && var_0.x, true, all(var_0.zy)), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(var_4.d, u_input.d.x, u_input.d.x, 0u) ^ vec4<u32>(u_input.d.x, var_4.d, 0u, 4294967295u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u), vec4<u32>(var_4.d, 0u, u_input.d.x, var_4.d), vec4<u32>(1u, u_input.d.x, u_input.d.x, 0u)))), _wgslsmith_add_vec4_u32(select(vec4<u32>(0u, u_input.d.x, 50842u, var_4.d), ~vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 4294967295u), select(vec4<bool>(false, var_5.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, true), var_1.a)), ~vec4<u32>(u_input.d.x, u_input.d.x, 56354u, u_input.d.x))));
}

