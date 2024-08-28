struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> vec2<bool> {
    global1 = Struct_1(20420i);
    var var_0 = all(!(!(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2))));
    var var_1 = Struct_1(_wgslsmith_add_i32(u_input.a, max(u_input.c.x, abs(i32(-1i) * -1i))));
    var var_2 = vec2<bool>(!((~1u >> (u_input.b % 32u)) < u_input.b), select(all(!(!vec4<bool>(arg_2, true, true, false))), arg_2, arg_2));
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(33992i, -1i), u_input.c));
    return vec2<bool>(!(global1.a <= -2147483647i), var_2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = select(vec2<bool>(all(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(14651u, 10u)], 1525f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(8223u, 10u)]), true)), true), !(!func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, -2139f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] - 261f), true)), true);
    var var_1 = abs(i32(-1i) * -16105i);
    var var_2 = any(!vec3<bool>(true, false && (var_0.x && var_0.x), all(vec4<bool>(false, var_0.x, var_0.x, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~1u, 10u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 10u)])) + _wgslsmith_f_op_f32(round(-409f))))));
    var_1 = ~1i;
    return Struct_1(1414i);
}

fn func_1(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = -firstLeadingBit(vec3<i32>(-(~8520i), arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.a, u_input.a), vec3<i32>(-1i, -1i, arg_1))));
    var var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_mult_i32(-310i, global1.a) >> (_wgslsmith_add_u32(u_input.b, 4294967295u) % 32u));
    global0 = array<f32, 10>();
    var var_3 = ~0u;
    return _wgslsmith_div_f32(-326f, _wgslsmith_f_op_f32(-139f - arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2539f, global1.a))))) == global0[_wgslsmith_index_u32(u_input.b, 10u)], true, true);
    var var_1 = all(select(select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, true, true), var_0.x), true), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x))), true)) && !var_0.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(610f, -55889i))))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]));
    var var_2 = Struct_1(1i);
    global1 = Struct_1(-(u_input.c.x >> (11654u % 32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1550f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(1u), 10u)] + _wgslsmith_f_op_f32(f32(-1f) * -123f))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(4294967295u, u_input.b), firstLeadingBit(78006u)), 10u)])) - global0[_wgslsmith_index_u32(countOneBits(min(0u, 605u)), 10u)]);
    var var_4 = Struct_1(var_2.a | var_2.a);
    let var_5 = (_wgslsmith_sub_i32(96460i, var_2.a) & -var_2.a) ^ 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~global1.a, select(1i, 2147483647i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-29506i, 10114i), vec2<i32>(var_2.a, -25963i))), vec3<i32>(var_2.a, var_2.a, u_input.c.x) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-1296i, 0i, -4656i), vec3<i32>(var_2.a, 2147483647i, 0i))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(9573i, -55067i, var_2.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(17919i, var_4.a, global1.a), vec3<i32>(var_2.a, 19953i, 2147483647i))), firstLeadingBit(-vec3<i32>(-57484i, var_2.a, -1i) ^ vec3<i32>(-1i, 1i, u_input.c.x))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, ~reverseBits(1u)), 10u)], -max(24897i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(37356i, -1i, -2147483647i)), vec3<i32>(var_5, var_5, var_5))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a, 17513i, global1.a)), (vec3<i32>(-1i, -46602i, global1.a) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) ^ ~vec3<i32>(6399i, global1.a, var_5)), -16045i));
}

