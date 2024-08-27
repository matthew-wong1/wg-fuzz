struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-125f);

var<private> global1: array<u32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = Struct_4(arg_1.a.a);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a, global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(644f, global0.a)), _wgslsmith_f_op_f32(-global0.a))))), vec2<u32>(reverseBits(~10024u), 68241u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a * arg_1.a.a)))), arg_1.d);
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(abs(var_1.a.a)))), _wgslsmith_f_op_f32(select(1263f, 875f, -56590i <= arg_0))));
    global1 = array<u32, 7>();
    var var_2 = abs(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(u_input.d.wwy, u_input.d.zyx)), 7u)], 1u >> ((var_1.b.x & u_input.c) % 32u)), ~_wgslsmith_mod_u32(~0u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 7u)], 7u)])));
    return vec4<bool>(true, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 7u)], 7u)], arg_1.b.x), u_input.d.xyy)) != (~(~var_1.b.x) >> (arg_1.b.x % 32u)), (true && (all(vec4<bool>(true, false, false, true)) & true)) && !all(vec2<bool>(false, false)), !(!all(vec4<bool>(false, true, false, false)) || (all(vec4<bool>(true, true, false, false)) != (global0.a == global0.a))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(select(vec4<bool>(true, true, true, true), func_3(_wgslsmith_add_i32(u_input.a.x, ~0i), Struct_3(Struct_2(-449f), max(vec2<u32>(89180u, u_input.e), u_input.d.xz), Struct_2(global0.a), Struct_2(global0.a))), all(vec4<bool>(any(vec4<bool>(false, true, false, false)), true, false, true))), ~_wgslsmith_dot_vec3_i32(select(-vec3<i32>(14764i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i) << (u_input.d.xxz % vec3<u32>(32u)), true), vec3<i32>(24696i, -u_input.a.x, -1i)));
    let var_1 = var_0.a.xy;
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - global0.a), _wgslsmith_f_op_f32(1f + -517f))));
    global1 = array<u32, 7>();
    let var_2 = var_0.a;
    return vec2<i32>(~var_0.b, _wgslsmith_mod_i32((i32(-1i) * -u_input.a.x) << ((_wgslsmith_add_u32(u_input.c, 1u) ^ min(57472u, 68141u)) % 32u), _wgslsmith_div_i32(0i, 1i >> (_wgslsmith_mult_u32(u_input.c, 4294967295u) % 32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_2(arg_3.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1740f);
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1462f, 1794f, true)))) + _wgslsmith_f_op_f32(-707f * 233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f))));
    var var_3 = Struct_1(vec4<bool>(true, all(vec4<bool>(true, false, true, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), true), abs(~_wgslsmith_mod_i32(u_input.a.x, ~arg_0.x)));
    var var_4 = ~_wgslsmith_add_u32(abs(~u_input.d.x), ~u_input.b.x);
    return arg_1.zw;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2065f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(763f + 1088f))))), arg_2, global0.a)));
    let var_1 = ~vec2<u32>(u_input.b.x, ~u_input.e) | func_4(func_2(), vec4<u32>(u_input.c, ~firstLeadingBit(51484u), 0u, ~(~0u)), vec4<i32>(-32074i, ~arg_0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(28028u, 7u)], 4294967295u, 89806u), u_input.d.yyx) % 32u), u_input.a.x, 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 511f), arg_2, _wgslsmith_f_op_f32(-var_0.x), arg_2));
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(327f * var_0.x), arg_1))))));
    var var_2 = !(!vec3<bool>(arg_1, true, any(!vec3<bool>(arg_1, arg_1, false))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(185f)))) - _wgslsmith_f_op_f32(sign(arg_2)));
    return select(!(!vec4<bool>(any(vec4<bool>(var_2.x, var_2.x, arg_1, arg_1)), true, select(false, false, var_2.x), var_2.x)), vec4<bool>(var_2.x, true, true, arg_1), select(vec4<bool>(true, any(select(var_2.zz, vec2<bool>(true, arg_1), true)), any(vec4<bool>(var_2.x, arg_1, arg_1, true)), any(select(vec4<bool>(var_2.x, false, arg_1, var_2.x), vec4<bool>(arg_1, var_2.x, false, true), arg_1))), vec4<bool>(!var_2.x, !(!var_2.x), abs(u_input.c) >= 29367u, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(!(0u >= u_input.d.x), true, true, true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), false), true), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), false), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_1(u_input.a, global0.a < global0.a, 119f), !vec4<bool>(true, true, true, 16647u > u_input.c)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1876f, -310f) - 1616f), global0.a)), ~(~select(u_input.b | u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 21106u), u_input.b), var_0.yw)), Struct_2(global0.a), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, 650f))), _wgslsmith_f_op_f32(f32(-1f) * -1099f))));
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a * global0.a));
    global0 = Struct_2(_wgslsmith_f_op_f32(exp2(global0.a)));
    global0 = Struct_2(global0.a);
    var var_2 = u_input.a.x << (firstTrailingBit(u_input.d.x & abs(1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.a << (~vec3<u32>(14988u, var_1.b.x, u_input.b.x) % vec3<u32>(32u))), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-333f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1735f - _wgslsmith_f_op_f32(f32(-1f) * -1074f)) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(295f + 1659f), _wgslsmith_f_op_f32(var_1.a.a - -1249f))))), firstTrailingBit(vec4<i32>(14161i, u_input.a.x, countOneBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 40917i)), -_wgslsmith_add_i32(34697i, 22161i))));
}

