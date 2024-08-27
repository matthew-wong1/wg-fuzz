struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_add_i32(firstTrailingBit(7040i | arg_0.a) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.c.x, arg_0.c.x), ~68155u) % 32u), _wgslsmith_sub_i32(arg_0.a, arg_0.b)), arg_0.a, ~vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(abs(u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.c.x), u_input.c))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -640f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(584f)) + _wgslsmith_f_op_f32(1350f * -548f)), 156f, var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(min(-317f, _wgslsmith_f_op_f32(-2044f + 1137f))))), !(!var_0 && (arg_1 && false)))));
    let var_3 = firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(~0u, _wgslsmith_mult_u32(21418u, arg_0.c.x))));
    let var_4 = -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, u_input.b.x, arg_0.b, _wgslsmith_div_i32(2147483647i, 69002i)), min(reverseBits(vec4<i32>(var_1.a, 2147483647i, arg_0.b, 1i)), select(vec4<i32>(-5205i, var_1.b, 2147483647i, u_input.b.x), vec4<i32>(8222i, -12242i, arg_0.a, u_input.b.x), true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -595f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = !select(select(vec3<bool>(u_input.c.x < 1u, any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(arg_0, u_input.b.x, vec2<u32>(~(~40812u), ~61358u)), select(var_0.x, var_0.x, var_0.x)));
    return vec3<u32>(arg_1.c.x, 1u, 32473u);
}

fn func_1() -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -402f) * _wgslsmith_f_op_f32(floor(-440f))), true))));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>((u_input.d.x ^ 65960u) ^ 4294967295u, ~(~1u), 22996u), u_input.c) | _wgslsmith_div_vec3_u32(vec3<u32>(43226u, _wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.a.x, u_input.d.x))), 0u), func_2(-firstLeadingBit(2147483647i), Struct_1(max(-2733i, u_input.b.x), min(u_input.b.x, -2147483647i), vec2<u32>(5640u, 4294967295u))));
    var var_3 = 22860i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(func_3(Struct_1(~(-1i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x), firstLeadingBit(vec2<u32>(1u, u_input.d.x))), false))));
    return _wgslsmith_mod_u32(u_input.a.x, select(reverseBits(var_2.x), ~min(var_2.x, var_2.x), true & var_0));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<f32>(-865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(-825f)))) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(min(-2438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = var_0;
    let var_3 = vec3<f32>(-1693f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2051f, _wgslsmith_f_op_f32(round(-378f)))), -572f) * 1362f), _wgslsmith_f_op_f32(2309f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-440f - 176f), var_0.x)) - _wgslsmith_f_op_f32(-var_2.x))));
    var var_4 = all(vec4<bool>(arg_2, any(vec4<bool>(!arg_2, -13110i < u_input.b.x, true, arg_2)), true, true));
    return Struct_1(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(927i, 0i, u_input.b.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_1.b, arg_1.a, -1i), vec4<i32>(20867i, u_input.b.x, -6420i, arg_1.b))), max(~11636i, ~u_input.b.x))), u_input.b.x, _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, 28100u)), max(u_input.a.xy, u_input.d.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_u32(func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~8042u), ~vec3<u32>(u_input.c.x, u_input.d.x, 24343u))), Struct_1(u_input.b.x, reverseBits(u_input.b.x), ~vec2<u32>(abs(1u), u_input.a.x)), true);
    let var_1 = Struct_1(u_input.b.x, 27178i, vec2<u32>(4294967295u, var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1710f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-607f, -1469f))), all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))))), func_4(func_2(~var_0.a, Struct_1(2147483647i, -var_1.a, func_4(26201u, Struct_1(var_0.a, -69297i, vec2<u32>(1u, var_0.c.x)), true).c)).x, func_4(4294967295u, Struct_1(u_input.b.x, var_1.a ^ 3638i, vec2<u32>(1u, 0u)), select(true, true, all(vec2<bool>(false, false)))), true).c.x, u_input.b, -169f, ~(var_0.c.x << (func_4(33708u, var_1, false).c.x % 32u)));
}

