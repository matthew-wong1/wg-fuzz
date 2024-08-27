struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> vec3<i32> {
    global0 = ~_wgslsmith_mod_u32(~arg_2.c.b.x, u_input.a) < 57709u;
    global0 = all(select(vec4<bool>(4294967295u > ~arg_2.c.b.x, arg_1.a.c.a, !arg_2.c.a, arg_2.c.a), select(select(!vec4<bool>(true, arg_1.a.c.a, arg_1.a.c.a, true), select(vec4<bool>(arg_1.a.c.a, false, true, arg_1.a.c.a), vec4<bool>(arg_1.a.c.a, true, arg_2.c.a, true), vec4<bool>(true, true, false, true)), !vec4<bool>(true, arg_2.c.a, arg_1.a.c.a, arg_2.c.a)), select(select(vec4<bool>(arg_1.a.c.a, arg_2.c.a, true, true), vec4<bool>(arg_1.a.c.a, arg_2.c.a, true, arg_1.a.c.a), true), vec4<bool>(arg_1.a.c.a, arg_1.a.c.a, true, arg_2.c.a), true), true), vec4<bool>(arg_1.a.c.a, ~u_input.a > _wgslsmith_add_u32(27583u, arg_1.a.c.b.x), true, arg_2.c.a)));
    var var_0 = arg_1.a.c.b.x;
    global0 = all(!vec2<bool>(arg_2.c.a, arg_1.a.c.a));
    var var_1 = arg_1.a;
    return ~arg_1.a.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_5 {
    var var_0 = abs(func_3(_wgslsmith_div_f32(182f, -670f), Struct_4(Struct_3(vec3<i32>(1i, 1i, 1i), Struct_2(3993i, -665f), arg_1, _wgslsmith_f_op_f32(-150f + 1000f))), Struct_3(firstLeadingBit(vec3<i32>(8508i, -2147483647i, 1i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), Struct_2(i32(-1i) * -2147483647i, -391f), Struct_1(!arg_1.a, arg_1.b), -1027f)));
    let var_1 = ~vec4<i32>(~(~_wgslsmith_div_i32(2147483647i, 9349i)), _wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(var_0.x, var_0.x)), var_0.x, var_0.x);
    var var_2 = arg_1;
    let var_3 = ~(~(~(~var_1)) & vec4<i32>(0i, var_0.x, _wgslsmith_add_i32(min(var_0.x, var_1.x), _wgslsmith_add_i32(var_0.x, var_1.x)), _wgslsmith_clamp_i32(-1i, -3525i, var_0.x)));
    return Struct_5(0u);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))), arg_0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f * arg_0))));
    global1 = Struct_5(global1.a);
    global1 = func_2(var_0, Struct_1(true, ~(~min(vec2<u32>(1225u, 33479u), vec2<u32>(u_input.a, 33746u)))));
    let var_1 = ~reverseBits(vec2<i32>(countOneBits(63715i), 68465i) >> (~(vec2<u32>(41603u, 1u) ^ vec2<u32>(global1.a, 0u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_div_i32(var_1.x, ~(~var_1.x ^ ~var_1.x));
    return !vec2<bool>(var_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(66529u, global1.a);
    var var_1 = Struct_1(true, ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(57029u, var_0.x) ^ vec2<u32>(4294967295u, 1u), ~vec2<u32>(global1.a, 0u)), vec2<u32>(global1.a, ~global1.a)));
    global0 = !all(!vec3<bool>(any(vec4<bool>(var_1.a, true, false, false)), true, var_1.a || var_1.a));
    let var_2 = !func_1(-779f);
    var var_3 = vec2<i32>(1i, ~(i32(-1i) * -21104i));
    let var_4 = !all(select(select(var_2, select(var_2, vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, true)), var_2), func_1(_wgslsmith_f_op_f32(abs(-579f))), vec2<bool>(0u != u_input.a, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(12694i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -17575i, var_3.x) ^ vec3<i32>(var_3.x, var_3.x, 2147483647i), countOneBits(vec3<i32>(31759i, -1i, 44892i)))));
}

