struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_4,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<i32> = vec4<i32>(-28091i, 1i, i32(-2147483648), -1i);

var<private> global2: array<u32, 27> = array<u32, 27>(19942u, 55761u, 1u, 34781u, 49310u, 2728u, 4294967295u, 1u, 1u, 78899u, 607u, 3039u, 27388u, 4294967295u, 52035u, 4294967295u, 1u, 4294967295u, 1u, 0u, 52858u, 0u, 50229u, 41046u, 21651u, 1u, 4294967295u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = Struct_5(vec2<bool>(false, arg_1 | true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.x + -227f), global0.x, -413f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, global0.x, 737f) + vec3<f32>(-361f, 2055f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, global0.x, 718f)), vec3<bool>(arg_1, arg_1, false))))), _wgslsmith_mult_u32(u_input.a, 1180u) ^ abs(~50673u)), Struct_4(Struct_2(arg_1, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(92855u, 27u)], global2[_wgslsmith_index_u32(41249u, 27u)]) << (u_input.a % 32u), ~(~44955u), Struct_1(vec3<f32>(-1318f, global0.x, -640f), 1u)), Struct_2(any(!vec4<bool>(true, false, arg_1, true)), _wgslsmith_add_u32(u_input.a, global2[_wgslsmith_index_u32(0u, 27u)]) ^ ~u_input.a, reverseBits(global2[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(vec3<f32>(-296f, global0.x, global0.x), ~17328u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx)) + _wgslsmith_f_op_vec2_f32(global0.zz - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -724f), vec2<f32>(global0.x, global0.x))))));
    let var_1 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -firstLeadingBit(global1.yx), vec2<i32>(2147483647i, 33022i) & global1.zz, abs(vec2<i32>(1i, -6714i)));
    global1 = max(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.x, 1i, var_1.x, 1i), vec4<i32>(22226i, 1i, -18011i, global1.x) ^ max(vec4<i32>(-1i, 2147483647i, -42277i, arg_0), vec4<i32>(var_1.x, var_1.x, arg_0, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(27032i, -48633i, global1.x, 1i), abs(vec4<i32>(48909i, -2147483647i, var_1.x, var_1.x)))), vec4<i32>(21052i, var_1.x, _wgslsmith_div_i32(13645i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.x, 0i, 19328i), global1.x)), -9739i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-global0.x), vec2<i32>(arg_0, ~var_1.x) << (select(vec2<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_0.d.a.d.b, 27u)], u_input.a, 0u), var_0.c.b), vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(54286u, 27u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], var_0.d.a.c)), 27u)], var_0.c.b), select(!arg_1, arg_1, true)) % vec2<u32>(32u)), -_wgslsmith_add_i32(select(18334i, arg_0, false) << (1u % 32u), var_1.x));
    global2 = array<u32, 27>();
    return var_0.d.b.a | var_0.d.b.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_5 {
    global2 = array<u32, 27>();
    let var_0 = all(select(vec2<bool>(arg_2.a, any(!vec4<bool>(arg_2.a, true, true, false))), !vec2<bool>(false, arg_0.x >= -325f), true));
    var var_1 = vec2<bool>(arg_2.a, true | !func_3(-8650i >> (arg_3.x % 32u), !var_0));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.a.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(858f, _wgslsmith_f_op_f32(arg_2.d.a.x + 328f))))));
    var var_3 = arg_1;
    return Struct_5(!(!select(select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(true, arg_2.a), select(vec2<bool>(false, var_0), vec2<bool>(true, var_1.x), vec2<bool>(true, arg_2.a)))), 271f, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(243f + 129f), _wgslsmith_f_op_f32(-var_3.a.x)))), ~(~(~20282u))), Struct_4(Struct_2(!(arg_2.a && var_0), 1u, 11150u, Struct_1(vec3<f32>(var_2.x, arg_1.a.x, -434f), 34959u)), arg_2), arg_1.a.zy);
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    return vec4<bool>(false, true, -47148i >= _wgslsmith_div_i32(~global1.x, 2228i), !any(vec2<bool>(true, true)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(648f, -1218f, 1919f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(924f, global0.x, 493f), vec3<f32>(global0.x, 327f, 886f), vec3<bool>(false, false, false)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), -1000f, _wgslsmith_f_op_f32(global0.x - global0.x)))), 1u);
    global2 = array<u32, 27>();
    let var_1 = Struct_2(!(global0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1447f, -1000f)))), 11428u, _wgslsmith_dot_vec4_u32(~vec4<u32>(18668u << (global2[_wgslsmith_index_u32(26407u, 27u)] % 32u), max(u_input.a, 1u), 0u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39108u, 27u)], 27u)], 27u)], u_input.a, 56659u)), select(~(vec4<u32>(var_0.b, 1u, var_0.b, 58553u) ^ vec4<u32>(4294967295u, var_0.b, 31792u, var_0.b)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, var_0.b, 12479u)), vec4<u32>(0u, var_0.b, var_0.b, 1u)), func_4(func_2(vec3<f32>(var_0.a.x, 1367f, global0.x), Struct_1(vec3<f32>(global0.x, -171f, -1000f), var_0.b), Struct_2(true, u_input.a, 4294967295u, Struct_1(var_0.a, u_input.a)), vec3<u32>(global2[_wgslsmith_index_u32(115418u, 27u)], u_input.a, 28420u))))), Struct_1(var_0.a, u_input.a));
    let var_2 = Struct_1(func_2(var_1.d.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1112f, -220f, var_1.d.a.x))), var_1.d, func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_1.d.a.x, -536f))), func_2(var_1.d.a, var_1.d, var_1, vec3<u32>(u_input.a, 19236u, 4294967295u)).d.a.d, func_2(var_0.a, Struct_1(var_1.d.a, var_1.c), Struct_2(true, 4956u, 71544u, var_1.d), vec3<u32>(0u, 17374u, 22221u)).d.a, abs(vec3<u32>(global2[_wgslsmith_index_u32(36431u, 27u)], 80954u, 1u))).d.a, firstLeadingBit(vec3<u32>(3123u, var_0.b, 0u))).d.a.d, func_2(var_1.d.a, var_1.d, Struct_2(select(false, var_1.a, false), 89760u, ~u_input.a, Struct_1(vec3<f32>(522f, var_0.a.x, -2022f), u_input.a)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100662u, 27u)], 27u)], 27u)])), ~vec3<u32>(1u, global2[_wgslsmith_index_u32(var_1.d.b, 27u)], 1u), ~vec3<u32>(var_1.d.b, 4294967295u, var_1.d.b))).d.a, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_1.c, 12267u), countOneBits(vec3<u32>(0u, var_0.b, u_input.a)))).c.a, _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 0u), max(vec2<u32>(1190u, 6961u), vec2<u32>(var_1.d.b, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.b), vec2<u32>(4294967295u, 4294967295u)) & vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1u))));
    let var_3 = var_1.d.b;
    return Struct_3(_wgslsmith_f_op_f32(sign(-741f)), global1.xx, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-856f + _wgslsmith_f_op_f32(366f + -1663f));
    global2 = array<u32, 27>();
    let var_2 = vec4<u32>(131016u, 653u, ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(26508u), ~_wgslsmith_mod_u32(u_input.a, global2[_wgslsmith_index_u32(28299u, 27u)])), 27u)], func_2(_wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 505f, global0.x) * vec3<f32>(192f, 876f, var_0.a)), Struct_1(vec3<f32>(global0.x, global0.x, global0.x), u_input.a), Struct_2(true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 0u, Struct_1(vec3<f32>(654f, -1784f, global0.x), u_input.a)), vec3<u32>(global2[_wgslsmith_index_u32(58500u, 27u)], 38047u, u_input.a)).d.b.d.a), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 246f, global0.x)), _wgslsmith_mult_u32(4294967295u, u_input.a)), Struct_2(any(vec2<bool>(false, false)), ~global2[_wgslsmith_index_u32(0u, 27u)], 0u, Struct_1(vec3<f32>(435f, var_0.a, 977f), global2[_wgslsmith_index_u32(u_input.a, 27u)])), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], 0u), vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(1u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90363u, 27u)], 27u)], 27u)])))).d.a.d, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-348f, -348f, 1121f), vec3<f32>(441f, -1090f, 1102f), vec3<bool>(true, true, false))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -193f, global0.x), vec3<f32>(-350f, -298f, var_0.a)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-545f, -764f, global0.x)), Struct_1(vec3<f32>(global0.x, 1690f, -181f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29421u, 27u)], 27u)]), Struct_2(true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 7537u, Struct_1(vec3<f32>(-376f, 1000f, global0.x), 0u)), vec3<u32>(36526u, u_input.a, 0u)).d.a.d, Struct_2(true, ~u_input.a, abs(u_input.a), func_2(vec3<f32>(var_0.a, 151f, var_0.a), Struct_1(vec3<f32>(global0.x, global0.x, var_0.a), global2[_wgslsmith_index_u32(1u, 27u)]), Struct_2(false, global2[_wgslsmith_index_u32(40925u, 27u)], 4004u, Struct_1(vec3<f32>(var_0.a, var_0.a, global0.x), u_input.a)), vec3<u32>(u_input.a, u_input.a, 0u)).d.b.d), vec3<u32>(52113u, u_input.a ^ 0u, u_input.a)).d.a, ~(max(vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<u32>(4294967295u, 0u, u_input.a)) >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], 65845u, 11849u) % vec3<u32>(32u)))).d.b.c);
    let var_3 = vec2<u32>(~select(40153u | countOneBits(global2[_wgslsmith_index_u32(var_2.x, 27u)]), max(12217u, ~u_input.a), true), 10147u);
    var var_4 = any(vec2<bool>(true, !select(true, true, true) || all(vec3<bool>(true, true, true))));
    global1 = -(abs(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, _wgslsmith_div_i32(-1i, 32298i))) & (reverseBits(min(vec4<i32>(2147483647i, 41309i, -2147483647i, -20375i), vec4<i32>(var_0.b.x, var_0.b.x, global1.x, var_0.c))) | -(vec4<i32>(global1.x, -12865i, 2147483647i, 1i) >> (var_2 % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, max(~0i >> (0u % 32u), _wgslsmith_div_i32(min(0i, -26912i), ~global1.x)), 12548i, -5042i), global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -492f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 2309f)))), abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, global1.x, 0i, 1i), vec4<i32>(var_0.c, 6124i, var_0.b.x, -2147483647i), vec4<bool>(false, false, false, true)) >> (_wgslsmith_div_vec4_u32(var_2, var_2) % vec4<u32>(32u)), ~(~vec4<i32>(-771i, 54968i, var_0.b.x, -43060i)))));
}

