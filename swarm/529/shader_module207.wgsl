struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1076f, -266f, 283f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return -1i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(358f, _wgslsmith_f_op_f32(ceil(528f)), global0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x), vec3<bool>(true, true, true)));
    let var_0 = func_3(Struct_1(8035u), arg_0, Struct_1(24308u), arg_0);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -133f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(301f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))) * -1823f);
    var_1 = global0.x;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - -462f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 938f) * global0.x)), 154f), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = arg_0;
    global0 = vec3<f32>(-381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1172f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f + -1363f) * _wgslsmith_f_op_f32(f32(-1f) * -1712f)));
    var var_1 = func_2(Struct_1(arg_0.a));
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-5623i, u_input.a), 0i), reverseBits(~(-22699i))), firstTrailingBit(vec3<i32>(arg_1 >> (var_1.a % 32u), 53224i, ~arg_1)), -vec3<i32>(2147483647i, u_input.a >> (var_0.a % 32u), 51903i)) & firstLeadingBit(vec3<i32>(1i, -firstTrailingBit(arg_1), _wgslsmith_mod_i32(2147483647i, arg_1)));
    return global0.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(1535f, _wgslsmith_f_op_f32(func_4(func_2(arg_0), u_input.a ^ _wgslsmith_div_i32(u_input.a, -2147483647i))), true)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.a), select(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 11107i), vec2<i32>(0i, u_input.a)), false))), all(vec4<bool>(false, select(true, false, true), 1i == u_input.a, true)))), _wgslsmith_f_op_f32(global0.x * global0.x));
    let var_0 = 912f;
    let var_1 = !vec2<bool>(!(!(1770i == u_input.a)), false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    global0 = vec3<f32>(905f, global0.x, _wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 761f) * _wgslsmith_f_op_f32(662f - 961f)) + -1083f)));
    return func_2(func_2(Struct_1(_wgslsmith_mod_u32(1u, abs(4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(_wgslsmith_clamp_u32(~firstLeadingBit(1u), select(1u, 87571u, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(83036u, 21094u, 4294967295u, 36120u), reverseBits(vec4<u32>(19990u, 4294967295u, 4294967295u, 105350u))))));
    var var_1 = 1i;
    var var_2 = ~select(abs(firstLeadingBit(abs(vec4<u32>(var_0.a, var_0.a, var_0.a, 0u)))), ~(~vec4<u32>(0u, var_0.a, 81079u, var_0.a) & vec4<u32>(26644u, 4294967295u, 80306u, 21931u)), -1i > _wgslsmith_add_i32(-24015i & u_input.a, u_input.a));
    var_2 = ~(~(((vec4<u32>(1u, 4294967295u, 1u, 4294967295u) ^ vec4<u32>(var_0.a, 5768u, var_0.a, 4294967295u)) << (~vec4<u32>(56496u, var_0.a, 1u, var_2.x) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(5986u, var_2.x, 23410u, 48023u) & vec4<u32>(var_2.x, var_0.a, 4294967295u, var_2.x), select(vec4<u32>(12942u, 4294967295u, 1u, var_0.a), vec4<u32>(57392u, 48621u, 4294967295u, 0u), vec4<bool>(true, false, true, true))) % vec4<u32>(32u))));
    var var_3 = vec3<u32>(59559u, _wgslsmith_div_u32(var_2.x, var_0.a), ~countOneBits(_wgslsmith_div_u32(13997u, 19719u)));
    let var_4 = func_1(var_0);
    let var_5 = -29729i;
    let var_6 = all(select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), true, true, func_3(Struct_1(var_0.a), var_0, Struct_1(25986u), Struct_1(1u)) < ~(-2147483647i)), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_i32(u_input.a, ~(~0i))), select(-_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, 20505i, u_input.a), vec3<i32>(1i, u_input.a, -1i)), vec3<i32>(var_5, ~(~var_5), i32(-1i) * -u_input.a), true), 4294967295u, _wgslsmith_div_vec2_i32(select(-vec2<i32>(var_5, 19422i), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(20941i, -65721i), vec2<i32>(-1i, 1i))), all(!vec2<bool>(true, var_6))), vec2<i32>(u_input.a, ~select(u_input.a, var_5, var_6))), _wgslsmith_sub_vec3_u32(vec3<u32>(~(~var_3.x), ~abs(1u), func_2(Struct_1(54249u)).a), var_2.yxx));
}

