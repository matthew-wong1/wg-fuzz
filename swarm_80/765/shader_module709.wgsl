struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> bool {
    var var_0 = 1i;
    var_0 = 0i;
    var_0 = min(-1i, max(_wgslsmith_div_i32(-13318i, select(~17330i, _wgslsmith_div_i32(25860i, -1i), true)), -18631i));
    let var_1 = ~(min(vec2<i32>(12845i, -4400i) << (u_input.a % vec2<u32>(32u)), vec2<i32>(-14124i, 30772i)) >> (vec2<u32>(~1u, u_input.a.x) % vec2<u32>(32u))) | vec2<i32>(reverseBits(~(-33015i)), 1i);
    var_0 = min(var_1.x, var_1.x);
    return any(vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(!(!arg_2.a), 4294967295u, _wgslsmith_add_vec2_u32(~vec2<u32>(0u, arg_0.b) << (vec2<u32>(arg_2.c.x, _wgslsmith_add_u32(arg_0.c.x, arg_0.b)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a, ~arg_0.c)), arg_0.d, -1000f);
    let var_1 = Struct_1(arg_2.a, 45450u, vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0.b, 0u), 82097u), var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(step(var_0.d, 253f)))))));
    let var_2 = Struct_1(var_1.a, ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 0u), ~var_1.b)), _wgslsmith_sub_vec2_u32(u_input.a, ~(~_wgslsmith_sub_vec2_u32(var_0.c, var_0.c))), _wgslsmith_div_f32(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * 1048f))), arg_0.e);
    let var_3 = countOneBits(_wgslsmith_div_vec2_u32(var_0.c, _wgslsmith_mult_vec2_u32(arg_2.c, ~vec2<u32>(0u, 4294967295u)) << (var_1.c % vec2<u32>(32u))));
    let var_4 = false;
    return arg_1.x;
}

fn func_1() -> u32 {
    var var_0 = select(vec3<bool>(true || !func_2(), abs(func_3(Struct_1(true, 43195u, vec2<u32>(0u, 70925u), 222f, 1540f), vec3<i32>(-1523i, -1i, -12818i), Struct_1(false, 9667u, u_input.a, 389f, 151f))) < -28546i, all(vec2<bool>(true, true))), vec3<bool>(true && all(vec4<bool>(true, true, true, true)), true, ~(~u_input.a.x) >= _wgslsmith_add_u32(_wgslsmith_clamp_u32(36134u, 83642u, u_input.a.x), abs(0u))), vec3<bool>(true, true, true));
    return ~_wgslsmith_div_u32(u_input.a.x, ~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!any(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_u32(u_input.a.x, 0u, func_1()) & ((firstTrailingBit(4294967295u) << (_wgslsmith_add_u32(79476u, u_input.a.x) % 32u)) >> (~_wgslsmith_mod_u32(77240u, u_input.a.x) % 32u)), firstLeadingBit(countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2062f)))));
    let var_1 = var_0.b;
    let var_2 = var_0;
    var var_3 = var_2;
    var_3 = var_0;
    var var_4 = select(!(!(!(!vec4<bool>(true, false, var_3.a, true)))), !(!vec4<bool>(true, any(vec4<bool>(false, true, false, var_0.a)), var_3.a, select(false, true, true))), any(vec4<bool>(!var_2.a, -421f > var_0.e, all(vec4<bool>(false, false, true, true)), true)));
    let var_5 = var_2;
    let var_6 = vec3<bool>(true, true & any(vec2<bool>(false, var_4.x && var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + var_3.d) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, -874f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d + -758f)))));
    var_4 = select(select(vec4<bool>(var_3.a, _wgslsmith_f_op_f32(min(var_3.e, var_0.e)) < var_5.e, select(false, true & var_2.a, true), true), vec4<bool>(all(select(vec2<bool>(var_5.a, false), vec2<bool>(false, var_2.a), true)), !(var_0.a != var_4.x), all(select(vec4<bool>(var_6.x, false, var_5.a, true), vec4<bool>(false, var_4.x, var_3.a, var_0.a), true)), true), false), !(!select(!vec4<bool>(var_3.a, true, var_6.x, var_4.x), select(vec4<bool>(var_2.a, var_5.a, var_0.a, var_2.a), vec4<bool>(false, true, var_6.x, false), vec4<bool>(false, false, var_0.a, true)), vec4<bool>(false, true, var_5.a, false))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u));
}

