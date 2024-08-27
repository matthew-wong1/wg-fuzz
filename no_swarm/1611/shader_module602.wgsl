struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = (i32(-1i) * -2147483647i) << (u_input.a.x % 32u);
    return abs(~1u);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(0u, u_input.a.x)), ~u_input.a), _wgslsmith_f_op_f32(floor(-760f)));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c.x, u_input.b.x, u_input.b.x, -u_input.c.x), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.zx), -6355i, 52959i, -1i))), u_input.b.x);
    var_1 = u_input.b.x;
    var_1 = -1i | countOneBits(countOneBits(14216i ^ -u_input.b.x));
    let var_2 = !vec2<bool>(true, all(vec3<bool>(true, -420f >= var_0.a.x, any(vec3<bool>(false, false, false)))));
    return ~_wgslsmith_sub_vec4_i32(min(vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.c.x, u_input.b.x), u_input.b.x, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, 5347i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 0i, 2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, 0i, u_input.c.x, 26748i), vec4<i32>(0i, 0i, u_input.c.x, 1i)))), vec4<i32>(u_input.c.x, ~(-u_input.b.x), -19247i, 11548i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    var_0 = Struct_1(var_0.a, 16259u, func_3(), !select(!select(var_0.d, var_0.d, var_0.d.x), !vec4<bool>(true, false, true, var_0.d.x), arg_2.b == ~4294967295u));
    var var_1 = _wgslsmith_sub_i32(arg_0.x, i32(-1i) * -2147483647i);
    var var_2 = !select(select(select(!arg_2.d, select(vec4<bool>(false, arg_2.d.x, false, true), var_0.d, arg_2.d), false), var_0.d, var_0.d.x), select(select(!arg_2.d, vec4<bool>(arg_2.d.x, var_0.d.x, false, false), var_0.d.x | true), vec4<bool>(true, true, true, select(var_0.d.x, true, false)), arg_2.d.x), true);
    var var_3 = u_input.a.x;
    return firstTrailingBit(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -max(u_input.b.x, u_input.c.x);
    var var_1 = Struct_1(vec4<u32>(65515u, abs(u_input.a.x & 1u) >> (func_1(vec2<u32>(u_input.a.x, 77418u) | vec2<u32>(4294967295u, 4294967295u), true) % 32u), u_input.d, ~u_input.a.x), select(4294967295u, _wgslsmith_sub_u32(~u_input.a.x, abs(firstLeadingBit(0u))), !(43740i == u_input.b.x) | true), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, -u_input.c.x), u_input.b.x, -2147483647i, countOneBits(~u_input.c.x)) >> ((~(vec4<u32>(4294967295u, 45848u, 17470u, 125412u) | vec4<u32>(u_input.a.x, 0u, u_input.d, 0u)) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(43006u, u_input.a.x, u_input.d, u_input.a.x), func_2(vec2<i32>(u_input.c.x, 1i), vec3<u32>(u_input.a.x, 0u, 2433u), Struct_1(vec4<u32>(2337u, 4294967295u, u_input.a.x, 0u), u_input.a.x, vec4<i32>(-46806i, u_input.c.x, u_input.b.x, u_input.b.x), vec4<bool>(true, false, false, true))), _wgslsmith_div_vec4_u32(vec4<u32>(44963u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 45779u, 4294967295u, u_input.a.x)))) % vec4<u32>(32u)), vec4<bool>(true, true, true, true));
    var var_2 = u_input.c.x;
    let var_3 = Struct_1(select(abs(~(~var_1.a)), vec4<u32>(_wgslsmith_div_u32(37786u, var_1.b), u_input.d | reverseBits(u_input.d), 21421u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(73529u, 0u, u_input.d, 2487u), var_1.a), vec4<u32>(1u, var_1.a.x, u_input.a.x, 73754u) | vec4<u32>(u_input.a.x, 105745u, u_input.a.x, 1u))), var_1.d.x), var_1.b, vec4<i32>(18072i, _wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(u_input.b.x, reverseBits(var_1.c.x)), ~(-2147483647i)), select(8813i, var_1.c.x, true), 2147483647i), var_1.d);
    var var_4 = Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(3085u, 71001u, ~var_1.a.x, _wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(var_1.b, var_3.b, var_1.b, 18603u))), ~firstLeadingBit(~var_1.a)), var_3.a.x, -(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 49485i, 1i, u_input.c.x)), select(vec4<bool>(1u != ~u_input.a.x, !all(vec2<bool>(var_1.d.x, var_3.d.x)), !var_1.d.x && (var_1.d.x || var_3.d.x), true), vec4<bool>(var_1.d.x, true || (var_3.a.x >= 0u), true && var_3.d.x, all(var_3.d)), var_1.d.x));
    var_0 = abs(~(-17326i ^ ~_wgslsmith_sub_i32(var_3.c.x, -1i)));
    let var_5 = i32(-1i) * -36895i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.xxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1042f)) - -810f)));
}

