struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(28800u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 4009u), vec3<u32>(16235u, 25535u, 4294967295u), vec3<u32>(4294967295u, 4008u, 0u), vec3<u32>(0u, 96626u, 55950u), vec3<u32>(9770u, 4294967295u, 4294967295u), vec3<u32>(53812u, 1u, 13603u), vec3<u32>(92146u, 15849u, 0u), vec3<u32>(22155u, 1u, 4294967295u), vec3<u32>(1u, 0u, 18257u), vec3<u32>(19546u, 92027u, 29947u), vec3<u32>(17270u, 4294967295u, 1u), vec3<u32>(1u, 14992u, 10335u), vec3<u32>(66297u, 32176u, 4294967295u), vec3<u32>(24088u, 0u, 34413u), vec3<u32>(50807u, 1u, 4294967295u), vec3<u32>(61211u, 37788u, 0u), vec3<u32>(0u, 0u, 86134u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(35807u, 4294967295u, 0u), vec3<u32>(35333u, 53623u, 4294967295u), vec3<u32>(4294967295u, 17180u, 0u), vec3<u32>(82470u, 1u, 24542u), vec3<u32>(28101u, 4294967295u, 4294967295u), vec3<u32>(45368u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(17938u, 4294967295u, 1u), vec3<u32>(4294967295u, 32446u, 30011u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    global1 = array<vec3<u32>, 28>();
    global1 = array<vec3<u32>, 28>();
    let var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true)));
    global1 = array<vec3<u32>, 28>();
    var var_1 = _wgslsmith_f_op_f32(-1446f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-154f, 1448f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(329f + -292f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f + -716f)), 288f))));
    return _wgslsmith_div_f32(-1529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-725f)) - _wgslsmith_f_op_f32(f32(-1f) * -747f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = select(vec4<bool>(true, true, true, true & !all(vec2<bool>(true, false))), vec4<bool>(true, !(select(false, false, true) && true), (~u_input.b | arg_2) <= 0u, true), u_input.c >= u_input.c);
    var var_2 = var_0;
    var var_3 = Struct_1(-1191f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-198f, -1473f))) * _wgslsmith_f_op_f32(arg_1 * arg_0.x))));
    return var_4;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    global1 = array<vec3<u32>, 28>();
    global1 = array<vec3<u32>, 28>();
    var var_0 = arg_2;
    var_0 = Struct_1(-117f);
    var var_1 = min(~arg_1, vec3<i32>(1i, -2147483647i, max(_wgslsmith_mult_i32(arg_1.x, arg_1.x), arg_1.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(439f, arg_2.a))), _wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f), 500f))), _wgslsmith_f_op_f32(sign(var_0.a)), 635f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 28>();
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-520f, 309f, -1598f, -1000f))))), -464f, _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 1u)), u_input.b));
    var_0 = Struct_1(var_0.a);
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), ~vec3<i32>(0i, 1i, u_input.c), Struct_1(_wgslsmith_f_op_f32(var_0.a - var_0.a)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a * -147f)), 234f))), 1u);
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-470f, 1000f, 192f, var_0.a) * vec4<f32>(var_0.a, var_0.a, var_0.a, -434f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 504f, -1048f, -1258f), vec4<f32>(419f, var_0.a, var_0.a, var_0.a)))), vec4<f32>(1358f, -991f, var_0.a, var_0.a)), vec4<f32>(1093f, 221f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(var_0.a))))), var_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.b, 33678u), 4294967295u & u_input.b, ~u_input.b, reverseBits(u_input.b)), vec4<u32>(24497u, u_input.b, 4294967295u, u_input.b) << (min(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(37145u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), ~firstTrailingBit(u_input.b)));
    var_0 = Struct_1(880f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-177f, var_0.a), vec2<f32>(var_0.a, -566f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, var_0.a), vec2<f32>(194f, -320f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 452f), vec2<f32>(244f, -728f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, -881f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, (_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -1i, u_input.a.x, -14277i)), abs(4312i)) | (i32(-1i) * -u_input.c)) >> (u_input.b % 32u), u_input.c, vec4<i32>(u_input.a.x, u_input.c, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.c, u_input.c)), 0i), u_input.a.x), (max(1u, 27468u) | (u_input.b ^ (u_input.b | 0u))) >> (0u % 32u));
}

