struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = u_input.a.wyy;
    var var_1 = Struct_5(var_0.x, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1027f - -1313f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1117f * -563f), -162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1281f + 668f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1829f, -1000f)))));
    var var_2 = vec4<bool>(!(1i == _wgslsmith_mult_i32(u_input.c, 1i)) || all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true || (false | select(any(vec3<bool>(false, true, true)), false, any(vec2<bool>(false, false)))), -u_input.c > -55823i, any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), -vec4<i32>(~u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(7358i, -2147483647i), vec2<i32>(u_input.c, 1i)), _wgslsmith_add_i32(39138i, 1i)), -(i32(-1i) * -1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 45176i, 28819i, u_input.c), vec4<i32>(u_input.c, 14990i, 1i, u_input.c))), var_1.b.yx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 1805f) + var_1.b.x)))));
    let var_4 = -max(reverseBits(~33685i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(var_3.b, vec4<i32>(u_input.c, 48264i, var_3.b.x, var_3.b.x)))) << (var_0.x % 32u);
    return _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(-556f)), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-505f)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_5(~u_input.a.x, _wgslsmith_f_op_vec4_f32(func_3()));
    return _wgslsmith_mod_vec4_i32(select(-_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<i32>(-1i, arg_3, -54636i, u_input.c), vec4<bool>(arg_2.a.d, arg_2.a.d, true, false)), select(vec4<i32>(u_input.c, arg_3, 2147483647i, 72128i), vec4<i32>(arg_3, arg_3, u_input.c, -59253i), true)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-25418i, arg_3, 2147483647i, arg_3), -vec4<i32>(0i, 45965i, 0i, arg_3)), vec4<i32>(0i, ~u_input.c, 1i, ~(-1i))), arg_2.a.d), vec4<i32>(arg_3, max(i32(-1i) * -25281i, _wgslsmith_sub_i32(-u_input.c, _wgslsmith_mult_i32(arg_3, u_input.c))), 1i, _wgslsmith_add_i32(select(-u_input.c, 0i & arg_3, true), arg_3)));
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.b;
    var var_1 = Struct_2(1383f, _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), max(max(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -2147483647i, -13154i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(38206i, -22722i, 1i, u_input.c)))) | _wgslsmith_mod_vec4_i32(firstTrailingBit(func_2(1029f, -1105f, Struct_4(Struct_3(Struct_1(71046u, vec3<f32>(-1000f, -564f, -1413f)), -195f, u_input.a.xyz, true)), u_input.c)), firstLeadingBit(~vec4<i32>(2147483647i, 4159i, u_input.c, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1035f)))), _wgslsmith_f_op_f32(-2529f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-341f, -2661f)))), 1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 696f, -1015f, 123f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.d, var_1.a, var_1.c.x) + vec4<f32>(var_1.c.x, 1000f, 365f, 2109f))), true)))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, -564f)), var_1.c.x, _wgslsmith_div_u32(4294967295u, u_input.b << (31056u % 32u)) < var_0)), -(~vec4<i32>(~(-2147483647i), ~u_input.c, 1i, u_input.c & var_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(652f)), var_1.d) - _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x + -1744f))), -1891f), _wgslsmith_f_op_f32(-var_2.x));
    var var_4 = ~(~(-(vec3<i32>(25938i, 2147483647i, -69846i) >> (_wgslsmith_clamp_vec3_u32(u_input.a.yxw, u_input.a.xyw, u_input.a.xyw) % vec3<u32>(32u)))));
    return select(select(vec3<bool>(_wgslsmith_f_op_f32(-var_2.x) < _wgslsmith_f_op_f32(var_2.x * var_2.x), false, false), !vec3<bool>(true, true, any(vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a + var_3.c.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), true, true), vec3<bool>(23304u == ~_wgslsmith_mod_u32(13886u, var_0), 1i != ~var_3.b.x, select(var_3.b.x >= abs(20763i), !all(vec3<bool>(false, true, false)), true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_3(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b.x))))), vec3<u32>(31770u, max(firstTrailingBit(arg_3.a >> (117744u % 32u)), arg_0.x), ~arg_1), !(!(-547f == arg_3.b.x)));
    let var_1 = _wgslsmith_clamp_u32(max(~_wgslsmith_mult_u32(~4294967295u, arg_1 | 34466u), 13642u), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 36818u), u_input.a.wx)), 1u << (~max(4294967295u, 34469u) % 32u)), 0u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.b.x)));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)));
    let var_3 = arg_3.b;
    return -164f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f - -1316f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-228f, _wgslsmith_div_f32(-1733f, 1266f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -954f) * _wgslsmith_f_op_f32(trunc(-215f))) * _wgslsmith_f_op_f32(func_4(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.x << (u_input.b % 32u), func_1(), Struct_1(u_input.a.x, vec3<f32>(-149f, 1206f, -887f)))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(~43361u, 0u), _wgslsmith_div_u32(abs(u_input.a.x), ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x))))))), -549f, _wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(0u, 798u, 16078u) | u_input.a.wyw)), vec3<u32>(~u_input.b, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~u_input.b) << (firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(8525u, u_input.b, 82236u), u_input.a.xyx)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.a.zyw, ~_wgslsmith_clamp_vec3_u32(u_input.a.zyy, u_input.a.www, u_input.a.xxx))), true);
    var_1 = Struct_3(Struct_1(var_1.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(312f, -1768f, 408f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, var_0.x)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, 4294967295u, 4294967295u) & abs(u_input.a.wwz), max(_wgslsmith_sub_vec3_u32(var_1.c, u_input.a.xzx), firstTrailingBit(min(vec3<u32>(var_1.a.a, var_1.c.x, var_1.a.a), vec3<u32>(var_1.a.a, u_input.b, var_1.a.a)))), abs(u_input.a.wxw)), var_1.d);
    var_1 = Struct_3(Struct_1(1u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, -317f, var_1.b)))))), -285f, vec3<u32>(var_1.c.x, firstLeadingBit(var_1.a.a), abs(_wgslsmith_mod_u32(var_1.a.a, 0u))), false);
    var var_2 = u_input.c;
    let var_3 = (0u << ((u_input.a.x ^ ~countOneBits(u_input.b)) % 32u)) << (select(~(~_wgslsmith_add_u32(u_input.b, 34428u)), countOneBits(reverseBits(0u)), var_1.d) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.b.x - 273f), var_1.b, var_1.a.b.x, _wgslsmith_f_op_f32(min(682f, var_1.a.b.x))))), vec4<i32>(-u_input.c >> (var_3 % 32u), ~(u_input.c << (0u % 32u)), ~abs(u_input.c), ~u_input.c) << (u_input.a % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a.yxy, var_3, vec3<bool>(var_1.d, true, var_1.d), var_1.a)) + _wgslsmith_f_op_f32(ceil(var_1.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)), var_0.x, _wgslsmith_f_op_f32(var_0.x - -989f)), var_1.a.b.yz);
}

