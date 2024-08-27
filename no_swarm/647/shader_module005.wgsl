struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(619f, -1948f)), -668f)))));
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_1 = -1000f;
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_2 {
    global0 = array<u32, 23>();
    let var_0 = arg_2;
    global0 = array<u32, 23>();
    var var_1 = true;
    global0 = array<u32, 23>();
    return Struct_2(all(select(!vec2<bool>(arg_1, arg_0), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true), func_3(!vec2<bool>(arg_1, true), false | arg_0))), u_input.a, any(vec3<bool>(any(select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0))), true, all(vec4<bool>(arg_0, false, false, arg_0)))));
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = array<u32, 23>();
    var var_0 = func_2(!arg_0.c, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_f32(sign(1000f)), any(vec2<bool>(arg_0.c, arg_0.c))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f - _wgslsmith_f_op_f32(sign(-1261f))) - 1525f))));
    let var_2 = Struct_1(select(vec4<bool>(var_0.c == true, !func_3(vec2<bool>(true, arg_0.a), var_0.c).x, var_0.a, !(arg_0.c | false)), select(vec4<bool>(all(vec2<bool>(var_0.c, arg_0.a)), var_0.c, any(vec3<bool>(true, true, var_0.c)), any(vec3<bool>(var_0.a, arg_0.c, true))), !vec4<bool>(arg_0.c, var_0.c, var_0.a, arg_0.a), !(false && arg_0.a)), !select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, true, false, false), vec4<bool>(true, var_0.c, arg_0.c, true))), var_0.a, func_2(true, var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2244f, -1281f), _wgslsmith_div_f32(-993f, -604f), var_0.c))).b | 11165u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-337f - -305f), 449f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, 550f)))) - vec2<f32>(433f, _wgslsmith_f_op_f32(-902f * 840f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))));
    global0 = array<u32, 23>();
    return var_0.c;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    global0 = array<u32, 23>();
    var var_0 = Struct_2(true, reverseBits(min(u_input.a, u_input.c)), !select(!arg_0 & false, u_input.b.x >= _wgslsmith_div_i32(1i, -34672i), any(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0))));
    var_0 = Struct_2(func_4(func_2(all(!vec3<bool>(arg_0, true, arg_0)), any(vec2<bool>(false, var_0.c)), -1000f)), ~0u, var_0.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, _wgslsmith_f_op_f32(select(1225f, -194f, var_0.c)), _wgslsmith_f_op_f32(select(-1292f, 1000f, true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -880f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1075f, -1765f)))) * 548f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f * -1164f) * _wgslsmith_f_op_f32(ceil(424f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1163f)), _wgslsmith_f_op_f32(trunc(1000f)))))), select(select(select(vec3<bool>(arg_0, var_0.a, true), vec3<bool>(true, var_0.c, true), vec3<bool>(arg_0, false, false)), vec3<bool>(true, false, true), var_0.c), !vec3<bool>(all(vec3<bool>(true, var_0.c, false)), true, var_0.a), !select(!vec3<bool>(var_0.a, true, true), select(vec3<bool>(var_0.c, arg_0, var_0.c), vec3<bool>(arg_0, var_0.a, var_0.a), var_0.a), true))));
    let var_2 = func_2(true, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1245f)) + _wgslsmith_f_op_f32(-var_1.x)))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(true, vec2<u32>(_wgslsmith_sub_u32(~u_input.c, 21096u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24378u, 23u)], 23u)], u_input.a), ~4594u))))));
    let var_1 = Struct_1(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), !(func_4(Struct_2(true, u_input.a, false)) || true)), true, global0[_wgslsmith_index_u32(~(~(u_input.a >> (21310u % 32u))), 23u)] >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a >> (u_input.c % 32u), reverseBits(u_input.c)), 23u)] % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1771f, var_0) * vec2<f32>(-638f, -302f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 662f))) * vec2<f32>(-746f, 907f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1359f) + vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(764f, 974f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1468f) * vec2<f32>(-556f, 2534f)))))));
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_2 = countOneBits(766i);
    global0 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, firstTrailingBit(1i), max(36486i, 1i), var_2), u_input.b), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c, u_input.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(var_1.c, 37836u))), vec2<u32>(u_input.a, abs(~4294967295u))), abs(~var_1.c));
}

