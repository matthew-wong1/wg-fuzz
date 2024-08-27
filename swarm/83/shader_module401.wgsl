struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~14047u), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(95503u), firstTrailingBit(1u)), ~(~max(vec2<u32>(46573u, 1u), vec2<u32>(1u, 22691u)))));
    global0 = _wgslsmith_add_u32(4294967295u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29852u, 16399u), ~vec3<u32>(1u, 98658u, 32472u)), 43124u) ^ 14815u);
    global0 = ~_wgslsmith_clamp_u32(~1u, ~abs(111721u), 41897u) | _wgslsmith_add_u32(~(_wgslsmith_sub_u32(63676u, 46961u) & select(4294967295u, 0u, true)), 1u);
    var_0 = ~(~1u);
    var_0 = abs(49041u);
    return arg_1.a;
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(!select(select(vec3<bool>(false, true, global1.a), vec3<bool>(true, true, true), global1.a), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, true, false), global1.a), select(vec3<bool>(false, global1.a, false), vec3<bool>(false, false, global1.a), vec3<bool>(global1.a, false, false))), select(select(!vec2<bool>(global1.a, false), !vec2<bool>(global1.a, true), any(vec4<bool>(global1.a, true, true, true))), vec2<bool>(!global1.a, any(vec4<bool>(true, global1.a, global1.a, global1.a))), select(!vec2<bool>(global1.a, true), select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), true), !vec2<bool>(global1.a, global1.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 962f)))), 1130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(808f * 626f)), Struct_1(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), global1.a), vec3<bool>(select(global1.a, global1.a, global1.a), !global1.a, global1.a), global1.a), select(vec2<bool>(func_2(vec3<f32>(335f, 408f, -988f), Struct_4(Struct_2(false), vec4<f32>(-102f, -1041f, 166f, -1838f), vec4<bool>(global1.a, false, global1.a, global1.a), true)).a, true), vec2<bool>(false, false), false)));
    var var_1 = firstLeadingBit(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(41054u), _wgslsmith_add_u32(58627u, 0u)), firstTrailingBit(~10808u))));
    let var_2 = var_0.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, 1000f, var_0.c, -210f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2096f, -1914f, var_0.c, -1374f) * vec4<f32>(var_0.c, -1288f, 1659f, var_0.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(317f, var_0.c, var_0.c, var_0.b.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c, var_0.c, -1666f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) * vec4<f32>(var_0.c, -1181f, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1594f, 1067f, -415f, var_0.c))))))));
    let var_4 = abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 1u, 48478u), vec3<u32>(5970u, 0u, 4294967295u), var_0.a.a), vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 3302u), vec2<u32>(1u, 26467u)), 21221u));
    return all(select(vec3<bool>(any(var_2.b) & global1.a, false, global1.a), var_2.a, var_0.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    global0 = select(~abs(1u), 4294967295u, -2147483647i >= _wgslsmith_dot_vec4_i32(-firstLeadingBit(u_input.a), vec4<i32>(~u_input.a.x, max(-15487i, u_input.b), 0i, firstLeadingBit(u_input.b))));
    return select(vec4<bool>(true, !(!(false && global1.a)), global1.a, true), select(!(!select(vec4<bool>(true, arg_0.a, true, false), vec4<bool>(arg_1, arg_1, global1.a, arg_0.a), vec4<bool>(global1.a, arg_1, false, global1.a))), !(!(!vec4<bool>(true, false, arg_1, global1.a))), true), true);
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(true);
    let var_0 = select(!(!(!vec4<bool>(false, global1.a, false, false))), select(select(func_4(func_2(vec3<f32>(-154f, 107f, 107f), Struct_4(Struct_2(global1.a), vec4<f32>(690f, -604f, -970f, 2041f), vec4<bool>(global1.a, false, true, global1.a), true)), func_3()), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global1.a, false, global1.a), true), !(global1.a & global1.a)), vec4<bool>(true, true, !(true | global1.a), _wgslsmith_mod_i32(1i, u_input.b) <= u_input.b), global1.a), vec4<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(false, global1.a), vec2<bool>(false, true))) | !any(vec2<bool>(true, global1.a)), true, any(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), false)) & any(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a)))));
    let var_1 = Struct_3(Struct_1(select(var_0.xyy, vec3<bool>(func_2(vec3<f32>(502f, 1888f, -933f), Struct_4(Struct_2(false), vec4<f32>(405f, -395f, 714f, 922f), var_0, false)).a, func_3(), true), !vec3<bool>(global1.a, global1.a, true)), var_0.yz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, _wgslsmith_f_op_f32(abs(-146f)), _wgslsmith_f_op_f32(ceil(222f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1946f, 404f, -2665f)))))), -1164f, Struct_1(select(!var_0.zxw, vec3<bool>(true, false, global1.a), var_0.zxx), vec2<bool>(any(var_0), global1.a)));
    global0 = ~(~1u);
    let var_2 = Struct_5(Struct_3(var_1.a, var_1.b, 426f, Struct_1(var_0.yxy, vec2<bool>(func_2(vec3<f32>(var_1.c, -517f, var_1.c), Struct_4(Struct_2(false), vec4<f32>(var_1.c, 418f, var_1.c, -112f), vec4<bool>(true, global1.a, var_1.a.a.x, var_0.x), true)).a, select(false, false, false)))), 72104u, _wgslsmith_div_f32(1119f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-775f + var_1.b.x), var_1.b.x)))), false);
    return func_2(vec3<f32>(-114f, _wgslsmith_f_op_f32(step(var_2.c, var_2.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-521f, var_1.c)), _wgslsmith_f_op_f32(-317f * -965f)))), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, var_2.a.c, var_2.a.b.x))), Struct_4(func_2(var_2.a.b, Struct_4(Struct_2(var_0.x), vec4<f32>(var_1.c, 552f, -313f, var_2.a.c), vec4<bool>(false, var_0.x, var_1.a.a.x, var_2.a.d.b.x), global1.a)), vec4<f32>(1629f, var_2.c, 1775f, var_2.a.c), var_0, var_1.a.a.x)), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - var_2.c), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.c)))), var_1.b.x), var_0, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = ~vec4<u32>(4294967295u, 0u, min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 39859u), ~vec3<u32>(4294967295u, 52337u, 4294967295u))), 0u);
    let var_1 = ~min(-u_input.a, select(_wgslsmith_mult_vec4_i32(-u_input.a, u_input.a), ~firstLeadingBit(vec4<i32>(u_input.b, -36876i, u_input.b, 0i)), !select(vec4<bool>(false, true, true, global1.a), vec4<bool>(true, true, true, false), vec4<bool>(global1.a, true, true, global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-365f);
}

