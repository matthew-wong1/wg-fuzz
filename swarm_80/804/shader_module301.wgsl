struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(arg_0.zyz, vec3<u32>(arg_0.x, u_input.a.x & countOneBits(arg_0.x), u_input.a.x)));
    var_0 = vec3<u32>(~1u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_0.x, var_0.x), _wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, arg_0.x), countOneBits(_wgslsmith_sub_u32(u_input.a.x, var_0.x)))), _wgslsmith_div_u32(1u, arg_0.x));
    var_0 = ~(~(~(~vec3<u32>(8688u, 29027u, u_input.a.x))));
    var var_1 = ~vec2<u32>(~(~abs(0u)), ~select(countOneBits(45331u), 10107u & u_input.a.x, arg_2.x));
    var_1 = u_input.a.zy;
    return _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - arg_1.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = vec4<bool>(arg_2.e | any(vec3<bool>(true, true, true)), true, false, (all(select(vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a), true)) || all(vec3<bool>(arg_0.a, arg_2.a, arg_2.a))) && all(select(!vec2<bool>(true, arg_2.e), select(vec2<bool>(arg_2.a, false), vec2<bool>(false, false), false), vec2<bool>(true, true))));
    var var_1 = abs(select(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 0u, 31756u), u_input.a), ~u_input.a.x), ~arg_3.x, 0u >> (1u % 32u), arg_0.b.x << ((4294967295u << (arg_0.b.x % 32u)) % 32u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.c, 2774u, arg_3.x, 37035u)), vec4<u32>(1u, max(u_input.a.x, 1u), 4294967295u, firstTrailingBit(1u))), vec4<bool>(any(var_0.yxw), arg_0.a, arg_1.x >= -1039f, arg_2.e)));
    let var_2 = !(!arg_0.a);
    var var_3 = any(select(select(var_0, vec4<bool>(any(var_0.zxy), any(vec2<bool>(false, true)), false || var_2, true), true), select(select(vec4<bool>(arg_0.a, false, var_2, true), !vec4<bool>(arg_2.a, true, var_0.x, true), !var_2), vec4<bool>(!arg_0.a, true, true, true), !var_2), !(!(!var_0))));
    let var_4 = Struct_3(var_1.x, Struct_2(any(var_0.xyx), ~(~(~vec2<u32>(56176u, arg_2.c)))), Struct_2(!(true | any(vec2<bool>(var_2, arg_2.a))), ~vec2<u32>(0u, arg_2.c)), abs(min(_wgslsmith_clamp_u32(1u, 17517u, u_input.a.x), 16631u) << (0u % 32u)), var_0.xyw);
    return false;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec3<f32> {
    var var_0 = -816f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(reverseBits(vec4<u32>(u_input.a.x, arg_1.x, 1u, 13581u)) >> (reverseBits(vec4<u32>(23380u, 0u, 2233u, u_input.a.x)) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(844f)), _wgslsmith_f_op_f32(1071f - -259f), _wgslsmith_f_op_f32(f32(-1f) * -264f)), !vec4<bool>(true, false, true, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -426f), -592f, true))));
    var var_1 = ~(~(~(~min(vec4<u32>(22758u, 62529u, arg_1.x, 33384u), vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, arg_1.x)))));
    var_1 = vec4<u32>(_wgslsmith_mult_u32(var_1.x, (u_input.a.x << (~var_1.x % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 31968u), 4294967295u) % 32u)), ~(~var_1.x), 4294967295u, ~var_1.x);
    var var_2 = Struct_1(all(vec4<bool>(arg_0.x, false, !(!arg_0.x), func_3(Struct_2(false, arg_1.xz), _wgslsmith_div_vec3_f32(vec3<f32>(1214f, 665f, 2037f), vec3<f32>(-1122f, -124f, 1862f)), Struct_1(arg_0.x, vec4<f32>(453f, -1248f, 1601f, -566f), var_1.x, vec4<i32>(2147483647i, 1938i, 0i, 2147483647i), false), vec2<u32>(arg_1.x, 37134u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, var_1.x, 287u, 4294967295u), vec3<f32>(1077f, -1000f, -786f), vec4<bool>(arg_0.x, true, arg_0.x, true))), -214f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f))), _wgslsmith_f_op_f32(abs(733f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(473f)))), _wgslsmith_div_u32(countOneBits(~var_1.x), 1u) >> (_wgslsmith_add_u32((var_1.x << (var_1.x % 32u)) | abs(70960u), 54093u) % 32u), vec4<i32>(-2147483647i, -(~(i32(-1i) * -16834i)), 79233i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-780f)), _wgslsmith_f_op_f32(f32(-1f) * -902f))) < 670f);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.b.zwy)) + var_2.b.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), u_input.a)), _wgslsmith_sub_i32(22058i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, 1i, 2147483647i)), countOneBits(~vec3<i32>(-1i, -1i, -31966i)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-853f, 553f), -873f)), _wgslsmith_f_op_f32(ceil(314f))), _wgslsmith_f_op_f32(abs(-366f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-619f))))), vec4<i32>(reverseBits(_wgslsmith_sub_i32(abs(1i), -26298i)), abs(-2147483647i) >> ((~u_input.a.x >> (u_input.a.x % 32u)) % 32u), max(2147483647i, -_wgslsmith_clamp_i32(-47058i, -13181i, -8494i)), ~(-select(-1i, -2147483647i, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1742f, -431f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, -484f) + vec2<f32>(-1578f, 931f)))) * vec2<f32>(_wgslsmith_div_f32(-1687f, -1553f), _wgslsmith_f_op_f32(max(-458f, 726f))))));
    var var_1 = ~(u_input.a.x & u_input.a.x);
    var var_2 = Struct_1(!(1u <= u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-904f, 480f) - 602f), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 16330u, u_input.a.x, 51004u), vec4<u32>(4294967295u, 68950u, 33453u, u_input.a.x)), vec3<f32>(var_0.e.x, var_0.c.x, var_0.a.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1125f - var_0.a.x) - 2639f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, 180f, 634f, var_0.c.x) + vec4<f32>(-601f, -662f, var_0.e.x, -1576f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-672f, var_0.c.x, var_0.a.x, 338f))), vec4<f32>(-388f, 1850f, var_0.c.x, var_0.a.x))))), 1u, min(var_0.d, vec4<i32>(-var_0.d.x & ~(-73046i), -30265i, countOneBits(var_0.b), var_0.b)), true != (u_input.a.x == 5141u));
    let var_3 = any(vec2<bool>(var_0.e.x == -423f, var_2.e));
    var_2 = Struct_1(func_3(Struct_2(true, vec2<u32>(~4294967295u, var_2.c >> (u_input.a.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1574f + -575f)), _wgslsmith_f_op_f32(-var_2.b.x)), Struct_1(!var_3, vec4<f32>(-1398f, var_0.c.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), 990f), firstLeadingBit(_wgslsmith_mult_u32(var_2.c, 34816u)), -countOneBits(var_0.d), _wgslsmith_div_u32(var_2.c, u_input.a.x) <= _wgslsmith_clamp_u32(42057u, var_2.c, 0u)), ~u_input.a.zx), var_2.b, u_input.a.x, select(_wgslsmith_sub_vec4_i32(var_0.d, var_2.d << (~vec4<u32>(48004u, var_2.c, 18564u, 56576u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.d.x, var_0.b, -24749i, 10263i)) >> (vec4<u32>(4294967295u, 0u, var_2.c, u_input.a.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(var_2.d.x, var_2.d.x, var_0.d.x, 0i))), !(abs(u_input.a.x) == u_input.a.x)), false);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(firstLeadingBit(0u), 4294967295u, 1u)));
}

