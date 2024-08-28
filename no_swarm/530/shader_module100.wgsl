struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.b.a), vec4<i32>(u_input.a.x, reverseBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(36611i, arg_0.b.b), 2147483647i)), -49146i >> (firstTrailingBit(_wgslsmith_mod_u32(10330u, arg_0.a.c.a)) % 32u), u_input.a.x), reverseBits(~vec4<u32>(arg_0.b.c.a << (arg_1 % 32u), _wgslsmith_mult_u32(arg_1, arg_1), countOneBits(0u), arg_1)));
    let var_1 = ~vec4<i32>(u_input.a.x, -1i, abs(arg_0.b.c.b), u_input.a.x) ^ -(vec4<i32>(-1i, 0i, 1i, reverseBits(u_input.a.x)) << (vec4<u32>(var_0.c.x, ~var_0.c.x, 4294967295u, reverseBits(1u)) % vec4<u32>(32u)));
    let var_2 = any(vec2<bool>(false, true)) == true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, -1003f)) * _wgslsmith_f_op_f32(floor(arg_0.b.a))) - 392f))), firstTrailingBit(var_0.b), ~vec4<u32>(10621u, arg_0.a.c.a, arg_0.b.c.a ^ arg_0.a.c.a, _wgslsmith_add_u32(abs(1u), min(4294967295u, 7775u))));
    let var_4 = var_3;
    return var_0.c.wy;
}

fn func_2() -> Struct_5 {
    var var_0 = (0u << (0u % 32u)) != _wgslsmith_dot_vec2_u32(~func_3(Struct_5(Struct_4(162f, u_input.a.x, Struct_3(27292u, 5249i)), Struct_4(1299f, -22635i, Struct_3(1247u, u_input.a.x))), ~27933u), select(vec2<u32>(abs(1u), ~1u), vec2<u32>(1u, 1u), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true))));
    var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, -36622i) ^ countOneBits(vec3<i32>(19808i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, 0i), _wgslsmith_clamp_u32(57488u, 19115u, 1u) <= 1u), countOneBits(-(vec3<i32>(-1i, u_input.a.x, 51463i) >> (vec3<u32>(1u, 4294967295u, 31036u) % vec3<u32>(32u))))) != 2147483647i;
    var_0 = !(10595i != abs(-(u_input.a.x << (4294967295u % 32u))));
    var var_1 = true;
    var var_2 = Struct_3(firstLeadingBit(~select(66642u, 1u, any(vec3<bool>(false, false, false)))), max(max(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -17983i, 0i), vec4<i32>(13026i, u_input.a.x, u_input.a.x, -2147483647i))) >> ((_wgslsmith_clamp_u32(11565u, 0u, 68u) & 11582u) % 32u), ~u_input.a.x));
    return Struct_5(Struct_4(1044f, 10598i, Struct_3(var_2.a, u_input.a.x)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1670f))), -(~1i), Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a), vec2<u32>(1u, 12038u)), _wgslsmith_mod_i32(-2871i, 2147483647i))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = func_2();
    var var_1 = vec2<bool>(all(vec3<bool>(!all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) || true, arg_0.b < (var_0.b.c.b >> (0u % 32u)))), true);
    var_1 = vec2<bool>(false, var_1.x);
    var_1 = !vec2<bool>(!(true | any(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), !var_1.x);
    var var_2 = select(vec4<bool>(var_1.x != (var_0.a.c.a >= ~var_0.b.c.a), true, true, true != !(!var_1.x)), select(vec4<bool>(true, var_1.x, all(!vec4<bool>(false, true, false, var_1.x)), any(vec3<bool>(var_1.x, true, false))), select(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, var_1.x, false, false)), !(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(false, var_1.x, false, true), !vec4<bool>(var_1.x, var_1.x, true, false), !var_1.x)), var_1.x), !vec4<bool>(var_1.x && select(false, var_1.x, true), true, 2417i >= ~arg_0.b, false));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = 15605u;
    var_1 = ~(~select(_wgslsmith_clamp_u32(~18696u, 4294967295u, min(41878u, 13054u)), ~func_1(Struct_3(97072u, u_input.a.x)), !(!var_0)));
    var_1 = min(~_wgslsmith_div_u32(~_wgslsmith_add_u32(0u, 76265u), ~1u), 0u);
    var var_2 = Struct_2(-(~(-u_input.a.x) ^ u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<i32>(-1i | ~_wgslsmith_sub_i32(u_input.a.x, var_2.a), firstTrailingBit(u_input.a.x) << (2374u % 32u), firstTrailingBit(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x))), select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(11908u >> (_wgslsmith_add_u32(1u, 0u) % 32u), 38612u, ~1u, _wgslsmith_mod_u32(min(43994u, 69340u), min(17293u, 38441u))), select(select(select(vec4<bool>(false, var_0, true, false), vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0, true, var_0, var_0), true), vec4<bool>(false, false, var_0, var_0)), vec4<bool>(var_0, true, !var_0, true), !vec4<bool>(var_0, false, false, false))));
}

