struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(13197u, 4294967295u, 4294967295u, 0u);

var<private> global1: Struct_4 = Struct_4(327f, vec2<i32>(1694i, 0i), Struct_3(Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<i32>(-8449i, 29602i, -11414i), vec4<bool>(true, false, true, false)), vec2<i32>(1i, -1i)), 0i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec2<i32> {
    var var_0 = -(~_wgslsmith_sub_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(global1.c.b.x, -1i, -8550i), global1.c.a.c), -vec3<i32>(u_input.b, global1.b.x, u_input.a), !global1.c.a.d.wwz), countOneBits(abs(vec3<i32>(u_input.a, global1.c.b.x, u_input.b)))));
    var var_1 = ~vec2<u32>(global0.x, 64869u);
    var var_2 = Struct_2(global1.c.a, global1.a, select(vec4<bool>(!(!arg_0.x), false, global1.c.a.b.x, any(vec4<bool>(false, true, arg_0.x, false))), vec4<bool>(!(global0.x <= arg_1.x), true, true, !(arg_0.x | true)), global1.c.a.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * 2158f), -742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), -153f, 1750f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, 1277f) * vec3<f32>(var_2.b, global1.a, -1865f)) + vec3<f32>(global1.a, -1420f, global1.a))))));
    let var_4 = global1.c.a.b.x;
    return abs(-var_2.a.c.xy);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(global1.b.x, u_input.b)), func_3(select(select(arg_0.b.zx, vec2<bool>(true, true), arg_0.a.x), arg_0.d.wy, vec2<bool>(global1.c.a.d.x, global1.c.a.a.x)), ~vec4<u32>(20313u, 1u, 4294967295u, 23961u))), global1.c, min(u_input.a, -36493i >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, global0.x), global0.x | global0.x) % 32u)));
    var var_1 = _wgslsmith_mod_i32(0i << (1u % 32u), arg_0.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1209f)) * _wgslsmith_f_op_f32(-var_0.a));
    var var_3 = var_0;
    let var_4 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b | 2147483647i, 10756i, u_input.a, 2147483647i), vec4<i32>(~(global1.b.x & var_0.c.b.x), ~1i, _wgslsmith_mult_i32(-arg_0.c.x, var_0.c.a.c.x | 0i), var_3.d)));
    return false;
}

fn func_1() -> vec4<u32> {
    return ~vec4<u32>(countOneBits(~(~global0.x)), global0.x << (_wgslsmith_mod_u32(global0.x, ~4294967295u) % 32u), _wgslsmith_sub_u32(select(~4294967295u, global0.x, func_2(Struct_1(global1.c.a.a, global1.c.a.d.yxy, vec3<i32>(0i, 2147483647i, 24513i), vec4<bool>(true, global1.c.a.b.x, global1.c.a.b.x, global1.c.a.d.x)))), global0.x), ~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-global1.a)) + _wgslsmith_f_op_f32(select(-109f, _wgslsmith_f_op_f32(trunc(global1.a)), all(global1.c.a.d)))) + _wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a - -102f))))), ~vec2<i32>(-37288i, i32(-1i) * -9076i), Struct_3(Struct_1(global1.c.a.b, global1.c.a.d.wyx, vec3<i32>(1i, ~u_input.a, -25862i >> (global0.x % 32u)), global1.c.a.d), ~global1.c.a.c.zz), -u_input.a);
    let var_0 = 0i;
    global0 = func_1();
    let var_1 = Struct_2(global1.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), -208f))), _wgslsmith_f_op_f32(round(-1866f)), global1.c.a.a.x)), !(!global1.c.a.d));
    global1 = Struct_4(var_1.b, countOneBits(countOneBits(vec2<i32>(0i, min(var_1.a.c.x, -53218i)))), Struct_3(Struct_1(!vec3<bool>(global1.c.a.d.x, global1.c.a.d.x, global1.c.a.d.x), !(!vec3<bool>(var_1.a.b.x, false, var_1.a.d.x)), vec3<i32>(5735i, var_0, var_0), select(!vec4<bool>(true, true, var_1.a.d.x, global1.c.a.d.x), !var_1.c, !vec4<bool>(true, true, false, global1.c.a.a.x))), min(global1.b, select(var_1.a.c.zx, vec2<i32>(-44141i, var_1.a.c.x), select(var_1.c.x, false, true)))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_add_i32(~(-(~var_0)), -71088i));
}

