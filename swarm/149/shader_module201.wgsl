struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: vec4<i32>;

var<private> global1: f32 = -992f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    global0 = ~(~vec4<i32>(firstLeadingBit(0i), firstLeadingBit(-1i), i32(-1i) * -2147483647i, 34851i));
    global0 = vec4<i32>(17437i, -abs(1i), ~global0.x, ~_wgslsmith_mult_i32(i32(-1i) * -global0.x, -8827i));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1865f + 622f))), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(694f, -828f, true)) - -396f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1009f)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1272f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f * -791f)))) - 2949f);
    var var_0 = Struct_1(2147483647i);
    return !(!select(vec4<bool>(any(vec2<bool>(true, false)), u_input.a >= 107690u, false, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global1 = _wgslsmith_div_f32(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)))));
    return !(!(!func_3()));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global0.x);
    var var_1 = vec4<bool>(true, false, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), func_2(Struct_1(var_0.a), Struct_1(2147483647i), Struct_1(global0.x)))), true);
    var var_2 = Struct_1(firstLeadingBit(firstTrailingBit(1i)));
    var var_3 = Struct_1(-var_0.a);
    var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, var_2.a) | _wgslsmith_mult_i32(var_0.a, -2147483647i), ~(-2147483647i)), firstLeadingBit(0i)));
    return Struct_1(-1i | max(~0i & global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_3.a, global0.x, global0.x) ^ vec4<i32>(var_2.a, 45376i, var_0.a, var_3.a), ~vec4<i32>(var_0.a, 9061i, var_2.a, -31866i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_i32(1i, -(global0.x << (u_input.a % 32u)));
    let var_1 = false;
    var var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(0u, _wgslsmith_div_u32(~60950u, 4294967295u & u_input.a), 1u, ~select(4294967295u, u_input.b, var_1)), _wgslsmith_sub_vec4_u32(~((vec4<u32>(u_input.b, 4772u, u_input.b, 1u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 33478u) % vec4<u32>(32u))) | ~vec4<u32>(u_input.a, u_input.a, 64738u, u_input.b)), vec4<u32>(min(64588u, u_input.b), _wgslsmith_mult_u32(u_input.b | 54960u, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.b, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.a, 1u, 54143u))), abs(~5501u))));
    var_0 = abs(global0.x);
    let var_3 = all(select(vec3<bool>(any(vec3<bool>(true, var_1, var_1)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1, var_1, var_1, false), false)), var_1), !(!vec3<bool>(false, var_1, var_1)), !func_2(func_1(), arg_1, arg_1).www));
    return ~abs(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3070f;
    global1 = 756f;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(global0.x, 2147483647i), ~(~0i)) | func_4(vec4<i32>(global0.x, min(1i, -2147483647i) << (_wgslsmith_mult_u32(u_input.b, u_input.a) % 32u), _wgslsmith_clamp_i32(-45865i, _wgslsmith_mult_i32(global0.x, global0.x), firstLeadingBit(global0.x)), -global0.x), func_1());
    global1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1302f - 174f), 976f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -186f))), global0.x < ((global0.x >> (~41374u % 32u)) | global0.x)));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 + 501f)))), var_0)));
}

