struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(1163f, -535f, 465f, 536f, -1000f, -547f, -347f, -1660f, 386f, -306f, 1667f, 436f, 1000f, 513f, 338f, 504f, -1233f, -744f, -836f, 950f, 2760f, -372f, -839f, -109f, -1113f, 1042f, -1776f, 647f, 1703f, 736f, 2364f);

var<private> global1: f32 = 355f;

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = !vec3<bool>(u_input.d.x < global3.a, !(true & (global0[_wgslsmith_index_u32(41997u, 31u)] < global0[_wgslsmith_index_u32(0u, 31u)])), true);
    var var_1 = Struct_2(_wgslsmith_mult_u32(92208u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24468u), u_input.e.zy), global3.a) | max(global2.a, global2.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(480f)), _wgslsmith_f_op_f32(min(1185f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 39323u), 31u)] + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(10851u, 31u)])))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u & ~global2.a, abs(29309u)), 31u)], global0[_wgslsmith_index_u32(arg_0.a, 31u)])));
    let var_3 = vec4<u32>(u_input.d.x, u_input.b.x, ~global3.a, arg_0.a);
    global0 = array<f32, 31>();
    return vec2<i32>(_wgslsmith_add_i32(-1i, ~reverseBits(_wgslsmith_div_i32(-1i, 2147483647i))), -_wgslsmith_div_i32(~(-2147483647i), abs(1i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = vec2<i32>(1i, -_wgslsmith_div_i32(1i, _wgslsmith_div_i32(13102i, ~1i)));
    global2 = Struct_4(~(~(~global3.a) >> (countOneBits(~global3.a) % 32u)));
    var var_1 = _wgslsmith_div_f32(-458f, -1961f);
    let var_2 = arg_0;
    let var_3 = Struct_2(min(~1u, u_input.b.x));
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_5(!(u_input.b.x > _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 0u, 57577u), vec4<u32>(71450u, arg_3.x, 0u, 29400u)), _wgslsmith_add_u32(1u, u_input.e.x))), Struct_2(_wgslsmith_sub_u32(4294967295u, global2.a << (~6339u % 32u))), select(select(vec4<bool>(false | arg_2.a, true, !arg_1.a, true), !(!vec4<bool>(false, true, arg_2.a, true)), !any(vec3<bool>(false, true, false))), vec4<bool>(true, !func_3(Struct_4(0u)), !(arg_3.x <= 64583u), any(vec4<bool>(arg_1.a, arg_1.a, arg_2.a, false))), arg_2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3.x, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(global3.a, global3.a, global3.a)), 31u)])), 711f))), Struct_2(96708u));
    let var_1 = ~abs(arg_3);
    var var_2 = var_0.e;
    return Struct_2(_wgslsmith_clamp_u32(~global2.a, _wgslsmith_div_u32(abs(2002u) >> (abs(var_2.a) % 32u), 0u), ~(~countOneBits(var_2.a))));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], 417f, global0[_wgslsmith_index_u32(28210u, 31u)], global0[_wgslsmith_index_u32(19456u, 31u)])))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(33738u, 31u)], -338f, global0[_wgslsmith_index_u32(global3.a, 31u)])), vec4<f32>(global0[_wgslsmith_index_u32(global2.a, 31u)], global0[_wgslsmith_index_u32(global2.a, 31u)], -145f, global0[_wgslsmith_index_u32(13287u, 31u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(10185u, 31u)], global0[_wgslsmith_index_u32(global3.a, 31u)], -1144f, 1105f))))))))), vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -156f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1434f), global0[_wgslsmith_index_u32(u_input.e.x, 31u)]), var_0.x))));
    let var_1 = ~arg_0.a;
    var var_2 = min(1i, firstLeadingBit(2147483647i));
    global0 = array<f32, 31>();
    return select(-firstTrailingBit(firstTrailingBit(vec2<i32>(-2147483647i, -33737i))), vec2<i32>(1i, 1i), vec2<bool>(func_3(Struct_4(0u)) & true, any(vec2<bool>(false, false)))) & vec2<i32>(0i, -428i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(23570i, 13061i), vec2<i32>(47373i, -1636i)), vec2<i32>(43710i, 2147483647i), ~vec2<i32>(-16890i, 39354i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(18096i, -2147483647i)), func_1(Struct_2(1u))))), func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(true), Struct_1(true), abs(select(u_input.d, vec4<u32>(1u, 20627u, 4294967295u, u_input.e.x), vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global2.a, 31u)])));
}

