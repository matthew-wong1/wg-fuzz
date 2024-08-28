struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_1(~reverseBits(vec2<i32>(u_input.b.x, u_input.c) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), 0u, _wgslsmith_mod_vec3_u32(select(vec3<u32>(115u, 82422u, 2008u), vec3<u32>(1u, 18210u, 4294967295u), vec3<bool>(false, true, true)) >> (abs(vec3<u32>(54679u, 1u, 0u)) % vec3<u32>(32u)), countOneBits(firstLeadingBit(vec3<u32>(1u, 54767u, 4294967295u)))), _wgslsmith_mult_i32(u_input.c, -(~(-2147483647i)))));
    var var_1 = Struct_4(Struct_2(var_0.a), 37514u, ((21629u <= _wgslsmith_dot_vec3_u32(var_0.a.c, vec3<u32>(var_0.a.b, 92783u, var_0.a.b))) | true) | true, Struct_3(var_0.a));
    var_0 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.c >> (0u % 32u), countOneBits(1i)), ~(~0i)), 46274u, ~vec3<u32>(var_0.a.b, 4294967295u, var_1.a.a.c.x), _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, 26790i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 1i), vec3<i32>(var_0.a.a.x, -1i, u_input.a))))));
    var var_2 = vec4<i32>(~var_0.a.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(-900i), _wgslsmith_mult_i32(u_input.b.x, -10582i)), 0i), -u_input.b.x, ~(~(-u_input.b.x))) << (vec4<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(~12312u), 5946u), select(var_0.a.c.x, var_0.a.b ^ 1u, false), abs(~4294967295u) << (0u % 32u)) % vec4<u32>(32u));
    return _wgslsmith_clamp_i32(3517i, _wgslsmith_dot_vec2_i32(u_input.b, ~_wgslsmith_mod_vec2_i32(var_1.d.a.a, -vec2<i32>(-1i, var_1.d.a.a.x))), -70419i);
}

fn func_2() -> vec4<i32> {
    var var_0 = func_3();
    let var_1 = Struct_1(-select(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.c)), u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1i), -vec2<i32>(-2147483647i, u_input.b.x)), true), max(~(~(~1u)), firstTrailingBit(~_wgslsmith_mod_u32(0u, 49893u))), vec3<u32>(~8632u, 1u, 10497u), u_input.b.x);
    let var_2 = vec3<bool>(!(~var_1.c.x != ~var_1.b), select(true, false, true), true);
    var var_3 = Struct_4(Struct_2(Struct_1(max(firstTrailingBit(var_1.a), vec2<i32>(var_1.a.x, -1i)), firstLeadingBit(~4294967295u), var_1.c, 2147483647i)), ~(~(~73647u << (var_1.b % 32u))), var_2.x, Struct_3(var_1));
    let var_4 = ~var_1.b;
    return ~(-firstLeadingBit(-vec4<i32>(-2147483647i, 0i, u_input.a, var_3.a.a.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = ~0i;
    let var_1 = true | !arg_1;
    let var_2 = Struct_2(Struct_1(-vec2<i32>(-1i, -2147483647i), 21725u, _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(48851u, 64413u, 1u), ~1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 92823u), vec3<u32>(0u, 37625u, 1u)), ~vec3<u32>(1u, 25464u, 4294967295u)), _wgslsmith_mod_i32((arg_0.x << (43321u % 32u)) << (1u % 32u), u_input.a)));
    let var_3 = var_2.a;
    let var_4 = Struct_3(var_2.a);
    return var_3;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-326f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f + -123f), _wgslsmith_f_op_f32(min(-156f, 813f))))) + 267f);
    var var_1 = Struct_2(func_4(max(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 14853i, u_input.b.x), vec4<i32>(39658i, u_input.a, u_input.c, u_input.c)), vec4<i32>(1i, 6701i, 6475i, u_input.b.x) >> (vec4<u32>(95415u, 52999u, 9340u, 1u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), func_2()), false));
    var_0 = 377f;
    var var_2 = vec4<i32>(-1i) * -max(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -45549i, u_input.a, var_1.a.a.x)), vec4<i32>(1i, 36481i, var_1.a.a.x, 14941i) ^ vec4<i32>(var_1.a.a.x, -2147483647i, var_1.a.d, -14692i)), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.c, 14776i, -70464i, 0i), vec4<i32>(-40692i, u_input.c, u_input.b.x, var_1.a.d)), vec4<i32>(-7388i, u_input.a, 0i, 1i)));
    var var_3 = Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), min(22817u, _wgslsmith_add_u32(40113u, var_1.a.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.b, 27241u, var_1.a.c.x) >> (_wgslsmith_clamp_vec3_u32(var_1.a.c, vec3<u32>(47020u, 4294967295u, var_1.a.b), vec3<u32>(var_1.a.c.x, 38930u, 84138u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.b, var_1.a.c.x, var_1.a.c.x), var_1.a.c, vec3<u32>(53046u, var_1.a.c.x, var_1.a.b)))), abs(~_wgslsmith_dot_vec3_i32(var_2.zww, var_2.yww))));
    return _wgslsmith_add_u32(var_1.a.c.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, 4294967295u, _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(func_1(), _wgslsmith_div_u32(1u, 6312u), 43342u)), ~vec3<u32>(1u, ~19861u, 1u)), 61207i | countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 18797i, u_input.b.x), vec3<i32>(12632i, -2147483647i, u_input.c) ^ vec3<i32>(1i, u_input.a, 2147483647i))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(420f, 629f) * _wgslsmith_f_op_f32(-889f - -931f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(680f, -785f)), _wgslsmith_f_op_f32(f32(-1f) * -660f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-142f, -943f)) + -1190f)) * _wgslsmith_f_op_f32(min(-101f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f - -665f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1026f)), 1105f)))));
    let var_2 = var_1.zy;
    let var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c.x, 1u), vec4<u32>(var_0.c.x, var_0.b, var_0.c.x, 0u)), var_0.c.x), _wgslsmith_div_u32(~0u, 4294967295u)));
}

