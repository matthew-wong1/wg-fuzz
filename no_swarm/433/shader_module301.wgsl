struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(969f, 1695f, 1263f, -294f);

var<private> global1: f32 = 644f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    global0 = array<f32, 4>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(314f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.a.e, 4u)] - arg_1.a.d.x))), _wgslsmith_f_op_f32(-1171f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1034f)) * _wgslsmith_f_op_f32(-1180f - arg_1.a.d.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.d.x - -1172f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.a))), arg_1.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] - -458f))), _wgslsmith_f_op_vec4_f32(max(arg_1.a.d, _wgslsmith_f_op_vec4_f32(-arg_1.a.d))), select(!(!vec4<bool>(true, arg_1.a.b, true, arg_1.a.b)), !vec4<bool>(true, arg_1.a.b, false, arg_1.a.b), !any(vec4<bool>(true, arg_1.a.b, true, arg_1.a.b))))));
    let var_1 = countOneBits(u_input.a) >> (vec3<u32>(arg_0, arg_0, _wgslsmith_mod_u32(7126u, 6410u)) % vec3<u32>(32u));
    var var_2 = !vec3<bool>(arg_1.a.b, arg_1.a.b, true);
    return -vec3<i32>(u_input.b & u_input.b, 72842i, 14696i);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    var var_0 = all(vec3<bool>(false, all(vec3<bool>(u_input.a.x < arg_0.c.a.e, arg_0.c.a.b, true)), true));
    var_0 = arg_0.c.a.b != (!arg_0.b.a.b && arg_0.c.a.b);
    var_0 = false;
    var var_1 = true;
    var_1 = arg_0.c.a.b;
    return ~arg_1.x;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) + 861f))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(321f, arg_0.a.a)) * arg_0.a.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f)))), all(vec2<bool>(true, any(vec3<bool>(false, false, arg_0.a.b)))) & any(!select(vec3<bool>(true, arg_0.a.b, true), vec3<bool>(arg_0.a.b, false, arg_0.a.b), arg_0.a.b)), ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_0.a.e << (arg_0.a.c.x % 32u), u_input.a.x, _wgslsmith_mult_u32(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(837f, var_1.x, 456f, global0[_wgslsmith_index_u32(arg_0.a.c.x, 4u)]), _wgslsmith_f_op_vec4_f32(exp2(arg_0.a.d)), select(vec4<bool>(false, true, arg_0.a.b, false), vec4<bool>(true, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.b)))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.d.x, -1000f, true)), _wgslsmith_f_op_f32(floor(-667f)), _wgslsmith_f_op_f32(trunc(arg_0.a.d.x)), -1000f))))), countOneBits(arg_0.a.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -399f)) + vec2<f32>(911f, 216f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xy)), var_1.xy), !vec2<bool>(!var_2.b, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_2.d.yz, _wgslsmith_f_op_vec2_f32(var_2.d.yy * vec2<f32>(-866f, var_2.d.x)))))), vec2<bool>(true, true)));
    let var_4 = arg_0.a.b;
    return firstLeadingBit(29533u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<i32>(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i), -2147483647i), func_2(Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-40420i, u_input.b, 10579i, 25978i), vec4<i32>(-2147483647i, u_input.b, u_input.b, -35150i)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, vec3<u32>(u_input.a.x, 3033u, u_input.a.x), vec4<f32>(global0[_wgslsmith_index_u32(22963u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -1000f, global0[_wgslsmith_index_u32(1u, 4u)]), 1u)), Struct_2(Struct_1(458f, false, u_input.a, vec4<f32>(-1089f, 612f, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), u_input.a.x)), func_1(0u, Struct_2(Struct_1(502f, true, vec3<u32>(9669u, 4294967295u, u_input.a.x), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -681f, global0[_wgslsmith_index_u32(42050u, 4u)], 1154f), 4294967295u)))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, -1i, -52869i)), u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(17576i, u_input.b, -1i, u_input.b), ~(~vec4<i32>(-1i, u_input.b, u_input.b, 5644i)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) * global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 12284u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >= u_input.a.x, u_input.a & ~u_input.a, vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(53684u, 4u)]), -258f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] - 102f)), u_input.a.x | 4294967295u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] - _wgslsmith_div_f32(1180f, global0[_wgslsmith_index_u32(84162u, 4u)])), true || any(vec4<bool>(true, true, true, true)), u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, -823f, 1350f, -1788f)))), u_input.a.x)), func_1(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false, u_input.a, vec4<f32>(-482f, 624f, -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), 37350u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -765f), true, vec3<u32>(2520u, 30334u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(9243u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(26910u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), ~1u))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.b.a.e ^ 0u, 4u)]) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c.a.d.x)), _wgslsmith_f_op_f32(-var_0.b.a.a))), global0[_wgslsmith_index_u32(func_3(var_0.b), 4u)])), var_0.b.a.d.x));
    global1 = 925f;
    global0 = array<f32, 4>();
    var var_1 = vec2<i32>(var_0.d.x, _wgslsmith_mult_i32(reverseBits(-u_input.b) << (~6568u % 32u), i32(-1i) * -6808i));
    let var_2 = Struct_4(24530u, Struct_1(-630f, var_0.c.a.b, ~(~var_0.b.a.c), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4803u, 4u)] * global0[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~21905u, 4u)] - var_0.b.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.b.a.d.x, 1494f)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 4u)], 1056f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 4u)])))), 0u));
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(19967i, _wgslsmith_dot_vec3_u32(vec3<u32>(select(var_2.a, func_3(var_0.c), true), ~_wgslsmith_mult_u32(1u, var_2.a), max(1759u, u_input.a.x) >> (var_3.a.c.x % 32u)), min(~vec3<u32>(22988u, 0u, 46688u), ~vec3<u32>(1u, u_input.a.x, u_input.a.x) | vec3<u32>(var_2.b.e, var_0.c.a.c.x, var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(198f)) + -158f) + global0[_wgslsmith_index_u32(1u, 4u)]));
}

