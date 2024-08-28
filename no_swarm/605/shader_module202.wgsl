struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5 = Struct_5(Struct_1(-1007f, vec3<u32>(81569u, 4294967295u, 48901u), -1i, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a.a, -471f, arg_2.d.a.a, arg_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(sign(505f)), _wgslsmith_f_op_f32(-364f - arg_2.d.a.a), -1011f, global1.a.a))));
    global1 = Struct_5(arg_0);
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.d.a.a), _wgslsmith_f_op_f32(sign(global1.a.a)), true))), arg_2.b.x, var_1.x, global1.a.a)));
    global0 = countOneBits(0u);
    return arg_2.a.a.a;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = global1.a.b.x;
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.a.a)), _wgslsmith_f_op_f32(-global1.a.a)))), ~(~vec3<u32>(15474u, arg_0, arg_0)), u_input.c.x, all(vec2<bool>(select(global1.a.d, global1.a.d, true), global1.a.d))));
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.a.a))))), global1.a.b << (var_1.a.b % vec3<u32>(32u)), 2147483647i, any(vec3<bool>(!global1.a.d, -2116i > global1.a.c, true))));
    global1 = Struct_5(global1.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, 136f, 1225f, 1011f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.a, var_1.a.a, -505f, 1583f), vec4<f32>(global1.a.a, var_2.a.a, -2108f, -874f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1638f)))), global1.a.a, -383f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a, u_input.c.xz, Struct_3(Struct_2(Struct_1(-895f, vec3<u32>(0u, 1u, arg_0), -31517i, var_1.a.d), vec2<bool>(true, global1.a.d)), vec2<f32>(var_1.a.a, var_1.a.a), vec2<bool>(false, false), Struct_2(Struct_1(422f, var_1.a.b, 44827i, var_1.a.d), vec2<bool>(var_1.a.d, false))))))))));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -225f)), firstTrailingBit(~var_1.a.b), 2147483647i, var_1.a.d), !(!select(vec2<bool>(true, true), vec2<bool>(var_2.a.d, var_2.a.d), true))), var_3.wz, select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.a.d, var_1.a.d)), vec2<bool>(all(vec2<bool>(var_2.a.d, var_1.a.d)), true), any(vec3<bool>(var_1.a.d, var_2.a.d, false))), vec2<bool>(global1.a.b.x != ~u_input.d, -1991f != _wgslsmith_f_op_f32(round(var_3.x))), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a - var_3.x) + _wgslsmith_f_op_f32(max(138f, var_2.a.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(68270u, u_input.a, 34571u), global1.a.b), ~global1.a.b), -20276i, !var_1.a.d), vec2<bool>(!(!var_1.a.d), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    global0 = global1.a.b.x;
    let var_0 = vec2<bool>(!(!all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))) != -1865f);
    global0 = 0u;
    var var_1 = 625f;
    var var_2 = select(!(!vec4<bool>(!global1.a.d, var_0.x, arg_1.c.x, arg_1.c.x)), !(!vec4<bool>(false, all(vec4<bool>(true, true, arg_1.c.x, arg_0.d)), var_0.x, !arg_0.d)), false);
    return -2147483647i;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(global1.a.c, 2147483647i)), func_4(Struct_1(1473f, vec3<u32>(u_input.d, 40694u, 92551u), ~0i, true), func_2(1u), Struct_4(Struct_1(1000f, global1.a.b, arg_0, global1.a.d), func_2(global1.a.b.x).d, func_2(23067u).d)), -1i), reverseBits(select(reverseBits(firstLeadingBit(u_input.c)), reverseBits(~u_input.c), true)));
    var var_1 = _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(select(global1.a.b, vec3<u32>(72762u, ~u_input.d, global1.a.b.x), select(!vec3<bool>(global1.a.d, false, false), select(vec3<bool>(global1.a.d, false, false), vec3<bool>(false, global1.a.d, global1.a.d), global1.a.d), true)), abs(vec3<u32>(~global1.a.b.x, u_input.a, 32711u ^ u_input.a))));
    let var_2 = !(!vec4<bool>(select(true, all(vec2<bool>(global1.a.d, global1.a.d)), global1.a.a < 716f), false, true, true));
    let var_3 = arg_1;
    var var_4 = var_3;
    return vec4<f32>(global1.a.a, _wgslsmith_f_op_f32(abs(-973f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(179f * func_2(_wgslsmith_mult_u32(u_input.d, 53746u)).d.a.a), 1000f)), global1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 5673u;
    global1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-725f, _wgslsmith_f_op_f32(min(global1.a.a, 602f)))) - global1.a.a), ~reverseBits(vec3<u32>(u_input.a, u_input.a, 9900u)), select(global1.a.c, 3239i, true), !(!(!global1.a.d))));
    var var_0 = Struct_5(global1.a);
    let var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global1.a.b.x, 0u)), ~(~1u), ~80116u, global1.a.b.x), ~vec4<u32>(4294967295u, ~36319u, ~u_input.d, 53923u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(var_0.a.c, firstLeadingBit(-firstTrailingBit(1i)), (-var_0.a.c << (12750u % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), ~u_input.c.xx))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1164f * var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-global1.a.a)) - global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a, 1f)), global1.a.a));
    var var_3 = all(!(!select(vec2<bool>(global1.a.d, var_0.a.d), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(var_0.a.d, var_0.a.d)), !vec2<bool>(var_0.a.d, true))));
    global1 = Struct_5(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(544f, -353f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_2.x, global1.a.a, var_0.a.a)) + vec4<f32>(var_2.x, global1.a.a, var_0.a.a, 228f))), _wgslsmith_f_op_vec4_f32(func_1(-4049i, -(u_input.c.x >> (var_1.x % 32u)), -1i)), vec4<bool>(var_0.a.d, false, select(var_0.a.d, false, true), false))), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(global1.a.c, 9329i, u_input.b)), select(vec3<i32>(u_input.c.x, -2147483647i, -49636i), u_input.c, vec3<bool>(false, var_0.a.d, var_0.a.d)), ~vec3<i32>(u_input.c.x, -75346i, u_input.b))), u_input.c, _wgslsmith_add_vec3_i32(firstTrailingBit(-u_input.c), vec3<i32>(2244i & global1.a.c, -global1.a.c, 1i))), _wgslsmith_f_op_f32(-var_2.x), var_2.yx);
}

