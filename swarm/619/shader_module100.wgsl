struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, -3166i, 23181i);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    global1 = select(select(!select(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x)), vec2<bool>(global1.x, global1.x), false), !vec2<bool>(global1.x, true), global1.x), !vec2<bool>(!select(global1.x, false, global1.x), any(!vec2<bool>(global1.x, false))), global1.x);
    global0 = arg_2;
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(1052f)), _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_div_f32(arg_1, arg_1))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(166f, 755f), arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(594f * -1000f), var_0.b == var_0.b)), arg_1))));
    var var_2 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(~global0.a, arg_0.a, u_input.b, countOneBits(arg_2.a)), vec4<u32>(_wgslsmith_clamp_u32(~arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 94916u, 13603u, var_0.a), vec4<u32>(global0.a, u_input.a, 1u, 58042u)), 0u), min(4294967295u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 1u, u_input.b, 1u), vec4<u32>(22647u, arg_0.a, 61787u, 0u)), 13106u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.a), vec3<u32>(u_input.b, global0.a, 4294967295u)) % 32u)));
    return ~vec3<u32>(_wgslsmith_sub_u32(countOneBits(u_input.b), ~36493u ^ arg_0.a), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(115814u, arg_0.a, 43390u, arg_2.a), vec4<u32>(u_input.a, 44458u, global0.a, 1u)), vec4<u32>(var_0.a, arg_2.a, global0.a, 2460u)), arg_0.a);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = !vec2<bool>(global1.x, global1.x);
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(select(global0.a, 4673u, true), abs(18638u), 4601u), abs((vec3<u32>(18083u, global0.a, u_input.c) ^ vec3<u32>(u_input.c, global0.a, 114365u)) | _wgslsmith_div_vec3_u32(vec3<u32>(global0.a, u_input.c, 66841u), vec3<u32>(u_input.a, u_input.a, global0.a)))) << (_wgslsmith_mult_vec3_u32(firstLeadingBit(~(~vec3<u32>(global0.a, 25049u, 19648u))), vec3<u32>(1230u, 4294967295u, select(0u, global0.a, false)) >> (~func_3(Struct_1(5332u, -43123i, global0.c), arg_0.x, Struct_1(global0.a, global0.c, -7590i)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = ~(_wgslsmith_add_u32(select(var_0.x ^ 51863u, ~u_input.b, true), var_0.x) << (min(_wgslsmith_mult_u32(u_input.a, func_3(Struct_1(u_input.b, global0.b, 37143i), -1761f, Struct_1(global0.a, global0.b, 1i)).x), ~abs(var_0.x)) % 32u));
    let var_2 = Struct_1(global0.a, 2147483647i, max(global0.c, global0.b));
    global0 = var_2;
    return 1157f;
}

fn func_1() -> Struct_1 {
    var var_0 = -1248f;
    let var_1 = global0.b & _wgslsmith_mod_i32(2147483647i, global0.c);
    var var_2 = vec3<bool>(true, global1.x, true);
    var_0 = _wgslsmith_div_f32(-373f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(728f)), _wgslsmith_f_op_f32(func_2(vec3<f32>(1017f, 1451f, -371f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f), 647f)), _wgslsmith_f_op_f32(sign(-1324f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1922f, 350f, 660f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1413f, 233f, -266f)))))))));
    return Struct_1(u_input.b, -12245i & global0.c, -38082i);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = !(!select(vec2<bool>(true, any(vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(global1.x, false), vec2<bool>(arg_1, false)), true & (global1.x && true)));
    global0 = Struct_1(u_input.b, _wgslsmith_mod_i32(firstLeadingBit(global0.c), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.c, -1i), arg_0.b) & max(~global0.c, arg_0.c)), _wgslsmith_add_i32(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 28293i), vec2<i32>(arg_0.b, global0.c)), arg_0.b)), global0.b));
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = arg_0;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(~(~0u), abs(_wgslsmith_div_u32(4294967295u, 1u))) | u_input.c, global0.b, -global0.c);
    global0 = Struct_1(_wgslsmith_mod_u32(~4294967295u, ~func_4(func_1(), !global1.x)), 2393i, func_1().b);
    let var_1 = func_1();
    global0 = func_1();
    global0 = func_1();
    let var_2 = -((-1i ^ select(1i, var_0.b ^ var_1.c, global1.x)) | (i32(-1i) * -firstLeadingBit(var_1.b)));
    global1 = !vec2<bool>(global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(global0.a)), 1f);
}

