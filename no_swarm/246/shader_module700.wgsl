struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = abs(vec2<u32>(min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.b.a.x, u_input.c.x, arg_1.b.a.x, u_input.c.x)), min(arg_1.b.a, u_input.a)), _wgslsmith_clamp_u32(~arg_1.b.a.x, 4294967295u, ~4889u)), 1u));
    var var_1 = arg_1.b.a.zx;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(arg_1.d.x), _wgslsmith_add_i32(arg_1.c.a.x, arg_1.c.b.b.x)) | -43757i, arg_1.c.e.a) & -countOneBits(17769i);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.c.d);
    let var_4 = arg_1.c.a.x;
    return vec3<u32>(~(reverseBits(_wgslsmith_dot_vec2_u32(arg_1.b.a.wx, u_input.c.zz)) >> ((~59613u ^ var_0.x) % 32u)), ~var_0.x, 1u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(2179f, -1137f, -554f)), vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(151f)), _wgslsmith_f_op_f32(f32(-1f) * -552f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-912f, _wgslsmith_f_op_f32(1230f - 1099f), 208f)))));
    var var_1 = _wgslsmith_mod_u32(~1u, ~(u_input.b.x ^ ~u_input.b.x));
    var_1 = ~0u;
    var_1 = countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_3(vec2<bool>(true, false), Struct_4(vec2<bool>(false, true), Struct_1(u_input.c, var_0.x, var_0.x), Struct_3(vec2<i32>(-56265i, 44808i), Struct_2(1i, vec4<i32>(arg_0, arg_0, arg_0, 11372i)), vec3<bool>(true, true, false), -1011f, Struct_2(23618i, vec4<i32>(-32893i, arg_0, 24827i, arg_0))), vec3<i32>(arg_0, -38592i, arg_0))), vec3<u32>(49292u, 4294967295u, u_input.a.x)), vec3<u32>(~u_input.b.x, ~4294967295u, 0u & u_input.c.x))));
    var_1 = u_input.a.x;
    return Struct_3(vec2<i32>(reverseBits(4829i), min(_wgslsmith_mod_i32(arg_0, -28203i), 0i | arg_0) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0, -1i), arg_0, 1i)), Struct_2(arg_0, select(vec4<i32>(-2147483647i, 4057i, arg_0, arg_0) << (u_input.a % vec4<u32>(32u)), ~abs(vec4<i32>(-1i, arg_0, arg_0, arg_0)), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), false, all(vec3<bool>(false, true, false))))), vec3<bool>(true, true, true), var_0.x, Struct_2(60967i, -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -14307i, arg_0, 22492i), vec4<i32>(-30718i, 2147483647i, -2147483647i, -57921i)), -vec4<i32>(-18156i, arg_0, arg_0, 2147483647i))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_1.x));
    let var_1 = func_2(arg_2.a.x);
    let var_2 = arg_2.c.xz;
    let var_3 = arg_2.b;
    var var_4 = 625f;
    return var_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_4(vec2<bool>(arg_2, arg_1.a.x), Struct_1(vec4<u32>(~_wgslsmith_mult_u32(49822u, arg_1.b.a.x), 34162u, ~arg_1.b.a.x >> (func_3(arg_1.c.c.zz, arg_1).x % 32u), arg_1.b.a.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.b.b)), func_2(~_wgslsmith_mult_i32(-77065i, arg_1.d.x)).d), Struct_3(vec2<i32>(-firstTrailingBit(arg_1.c.b.a), _wgslsmith_dot_vec2_i32(arg_1.c.e.b.xx, vec2<i32>(5208i, 0i))), arg_1.c.e, !vec3<bool>(arg_1.a.x, false, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(780f + arg_1.b.c), -533f))), Struct_2(~(-1i) >> (~arg_1.b.a.x % 32u), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -15107i, arg_0.a), arg_1.c.e.b))), vec3<i32>(arg_0.a, -_wgslsmith_mult_i32(26626i, -6025i) << (~u_input.b.x % 32u), countOneBits(arg_0.a)));
    return func_2(_wgslsmith_mult_i32(arg_1.d.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, 815f, 1377f, 359f)), _wgslsmith_div_vec4_f32(vec4<f32>(-512f, -193f, -591f, -1000f), vec4<f32>(1733f, 1231f, 888f, -2078f)))))), Struct_3(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-4887i, -1i))), Struct_2(52554i, vec4<i32>(20486i, 2804i, -23778i, 1i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1592f, -522f)), _wgslsmith_f_op_f32(-2070f * -1000f))), Struct_2(1i, max(vec4<i32>(0i, -2147483647i, 47091i, -1i), vec4<i32>(0i, 8100i, 1i, 7256i))))), Struct_4(vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.c.x << (u_input.c.x % 32u), reverseBits(4294967295u), countOneBits(21236u), ~1u), 1619f, 650f), Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(33269i, 1i), abs(vec2<i32>(2147483647i, 16647i))), Struct_2(17212i, vec4<i32>(2147483647i, -7032i, -3675i, 17866i)), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(576f + 1578f))), Struct_2(-21428i, vec4<i32>(1i, 1i, 1i, 1i))), ~min(vec3<i32>(31679i, -17927i, -66835i), ~vec3<i32>(2147483647i, 2147483647i, -18850i))), false);
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x << (u_input.a.x % 32u), ~u_input.b.x), vec4<u32>(u_input.c.x << ((0u >> (u_input.b.x % 32u)) % 32u), 0u, reverseBits(62444u), _wgslsmith_div_u32(~0u, _wgslsmith_add_u32(u_input.c.x, u_input.a.x)))), _wgslsmith_f_op_f32(146f * var_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f), func_2(var_0.b.b.x).d));
    let var_2 = Struct_4(var_0.c.yz, Struct_1(min(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 0u, 4294967295u, 0u)), u_input.c) << (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.d)), var_0.d, var_1.c > var_1.b)))), -1000f), Struct_3(~vec2<i32>(-2147483647i, var_0.b.a), func_4(var_0.e, Struct_4(!var_0.c.zx, Struct_1(vec4<u32>(1033u, 4294967295u, u_input.c.x, 17254u), var_0.d, var_1.b), func_4(Struct_2(var_0.a.x, var_0.e.b), Struct_4(var_0.c.yz, Struct_1(vec4<u32>(var_1.a.x, 21115u, 1u, u_input.a.x), var_0.d, var_0.d), var_0, var_0.e.b.zzx), var_0.c.x), func_1(vec2<bool>(var_0.c.x, var_0.c.x), vec4<f32>(1435f, var_1.b, var_1.c, var_0.d), var_0).b.yxy), !(var_0.c.x & var_0.c.x)).e, select(!(!var_0.c), var_0.c, vec3<bool>(var_0.c.x, var_0.c.x, false)), 1081f, Struct_2(~(-var_0.b.a), vec4<i32>(var_0.e.a, -2147483647i, -69533i, var_0.a.x))), vec3<i32>(var_0.e.a, -36543i, ~(-1i)));
    let var_3 = false;
    let var_4 = var_2.b;
    let var_5 = Struct_2(2147483647i, vec4<i32>(func_4(func_2(-1i).e, var_2, false).a.x, i32(-1i) * -1i, var_2.d.x, 6854i));
    let x = u_input.a;
    s_output = StorageBuffer(424f);
}

