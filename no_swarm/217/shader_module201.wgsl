struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = arg_3.a;
    let var_1 = Struct_2(-1809f);
    var var_2 = _wgslsmith_dot_vec3_i32(-(~_wgslsmith_sub_vec3_i32(arg_2.wyz, arg_3.b.yww)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -7801i, _wgslsmith_div_i32(1i, u_input.a)), select(arg_3.b.wxx, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_3.d.b.x, 0i), arg_3.b.xwz)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))));
    let var_3 = 1u;
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), 1f, _wgslsmith_f_op_f32(min(var_1.a, var_1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_1.a, var_1.a, 424f) * vec4<f32>(-834f, -1634f, -400f, arg_0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -699f, -1000f, 467f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1194f, -1139f, 827f, 851f), vec4<f32>(arg_0.a, 682f, var_0.a, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1000f, var_1.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, 351f, arg_3.d.a), vec3<f32>(1579f, var_0.a, arg_3.a.a), vec3<bool>(false, true, false)))))));
    return arg_3.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = arg_1;
    let var_1 = true;
    var var_2 = Struct_1(arg_1.a, vec2<i32>(u_input.a | arg_1.b.x, reverseBits(firstTrailingBit(~2147483647i))));
    let var_3 = vec4<i32>(i32(-1i) * -1i, min(~(~abs(42253i)), min(_wgslsmith_add_i32(-40620i, -u_input.a), ~(-2147483647i))), _wgslsmith_dot_vec4_i32(-func_3(Struct_2(var_2.a), countOneBits(17311i), -vec4<i32>(-49137i, u_input.a, u_input.a, 1i), Struct_4(Struct_2(1527f), vec4<i32>(arg_1.b.x, arg_1.b.x, var_0.b.x, var_2.b.x), vec2<u32>(1u, 1u), var_0)), vec4<i32>(1i, var_2.b.x, ~(i32(-1i) * -2147483647i), var_0.b.x)), -2147483647i);
    let var_4 = Struct_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f * var_2.a) - _wgslsmith_div_f32(var_0.a, var_0.a)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(var_3, var_3 | var_3), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i, var_3.x, var_3.x, u_input.a), vec4<i32>(-1i, arg_1.b.x, 114560i, var_3.x)), var_3), var_3) & _wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(-45693i, var_0.b.x, arg_1.b.x, u_input.a)), max(var_3, ~vec4<i32>(var_0.b.x, u_input.a, -774i, arg_1.b.x))), min(~(~vec2<u32>(1u, 7611u)), ~vec2<u32>(1u, 1u)), arg_1);
    return abs(~(~0u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(-447f), abs(~arg_1.b | select(arg_1.b, vec4<i32>(arg_0.x, -2147483647i, -2147483647i, arg_2.b.x) & arg_1.b, select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(39351u, arg_1.c.x, 146700u, arg_1.c.x), ~vec4<u32>(4294967295u, arg_1.c.x, arg_1.c.x, arg_1.c.x)), _wgslsmith_mod_u32(58725u, arg_1.c.x)), firstTrailingBit(1u)), arg_1.d);
    var var_1 = _wgslsmith_mult_vec2_u32(arg_1.c, ~vec2<u32>(4294967295u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36785u, arg_1.c.x, 1u), vec4<u32>(arg_1.c.x, 37557u, 29879u, 45897u)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = vec3<u32>(var_1.x, _wgslsmith_mod_u32(abs(4491u), _wgslsmith_clamp_u32(~arg_1.c.x, abs(abs(arg_1.c.x)), arg_1.c.x)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_0.c.x, 28099u, 3324u), vec4<u32>(126739u, var_0.c.x, arg_1.c.x, 0u)), ~select(vec4<u32>(50894u, 2504u, var_0.c.x, 1u), vec4<u32>(arg_1.c.x, 1u, var_1.x, 1u), false)));
    return arg_1.d;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(arg_0.b.x, ~1i, _wgslsmith_sub_i32(30067i, abs(~arg_0.b.x | -8125i)));
    let var_1 = ~firstLeadingBit(4294967295u);
    var var_2 = func_4(~vec2<i32>(arg_0.b.x, ~8655i), Struct_4(Struct_2(arg_0.a), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, -4461i, 2147483647i, u_input.a), vec4<i32>(u_input.a, arg_2.x, 1i, arg_2.x), vec4<i32>(39969i, arg_2.x, -71383i, -2147483647i)) ^ (vec4<i32>(-88395i, 1i, var_0.x, -2147483647i) ^ vec4<i32>(1i, -5916i, 29951i, 35529i))), vec2<u32>(~var_1 << (func_2(vec4<bool>(true, arg_3.x, arg_1, arg_1), arg_0, arg_3) % 32u), var_1), Struct_1(arg_0.a, ~_wgslsmith_clamp_vec2_i32(arg_0.b, vec2<i32>(arg_2.x, -12027i), vec2<i32>(var_0.x, 0i)))), arg_0);
    let var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, _wgslsmith_f_op_f32(arg_0.a - var_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1069f)), arg_0.a) * vec2<f32>(-1837f, _wgslsmith_div_f32(-1811f, -1000f)))), var_3));
    return Struct_3(vec4<f32>(-1776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, var_2.a)) + _wgslsmith_f_op_f32(1000f * 1895f))), 1f, var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-309f + -2012f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    let var_0 = ~abs(~abs(max(vec2<u32>(arg_2.c.x, 0u), vec2<u32>(0u, 56141u))));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2.a.a, -1497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1911f))), func_4(~(~arg_2.b.xy), arg_1, arg_1.d).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1595f)) - arg_1.a.a)), arg_0.a.wzw);
    var var_2 = max(vec4<u32>(_wgslsmith_mod_u32(1u, arg_1.c.x << (arg_2.c.x % 32u)) | reverseBits(~50746u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, abs(0u), ~55043u, arg_2.c.x), ~(~vec4<u32>(arg_1.c.x, 4294967295u, 78869u, var_0.x))), ~0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.c.x, 1u, arg_1.c.x, 12496u)), countOneBits(vec4<u32>(1u, arg_2.c.x, 20824u, var_0.x) & vec4<u32>(4294967295u, 49768u, 39247u, 24162u)))), vec4<u32>(0u, min(4294967295u, reverseBits(_wgslsmith_clamp_u32(4012u, arg_1.c.x, arg_1.c.x))), ~abs(var_0.x), ~11695u));
    var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(arg_2.c << (arg_2.c % vec2<u32>(32u))), var_0), arg_2.c), arg_1.c.x, select(_wgslsmith_div_u32(43843u, ~var_0.x ^ ~4294967295u), var_2.x, true), ~4294967295u);
    var_1 = func_1(func_4(firstTrailingBit(arg_2.d.b), Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_1.b.x)), ~vec4<i32>(1i, -1i, -2147483647i, arg_1.b.x) | vec4<i32>(arg_2.d.b.x, 4814i, u_input.a, arg_1.d.b.x), ~abs(vec2<u32>(arg_1.c.x, arg_1.c.x)), Struct_1(-154f, vec2<i32>(35999i, u_input.a) & arg_2.d.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.a, var_1.a.x))), vec2<i32>(u_input.a, abs(18929i)))), all(vec2<bool>(all(!vec4<bool>(arg_3, arg_3, arg_3, true)), !all(vec3<bool>(arg_3, arg_3, true)))), select(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_1.d.b, arg_1.d.b)) >> (var_0 % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2547i, arg_2.d.b.x, -2147483647i, -1i), vec4<i32>(arg_1.b.x, 7743i, u_input.a, 1i)), i32(-1i) * -2147483647i), vec2<bool>(false, arg_3)), vec2<bool>(false, any(vec4<bool>(!arg_3, arg_2.c.x != 16124u, !arg_3, arg_1.c.x >= 49693u))));
    return -abs(_wgslsmith_div_vec2_i32(vec2<i32>(~28799i, i32(-1i) * -30356i), vec2<i32>(~arg_2.d.b.x, arg_1.d.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(any(vec2<bool>(true, true)) | (any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))) || true));
    var_0 = true;
    var_0 = !(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(1000f, reverseBits(-func_5(func_1(Struct_1(1337f, vec2<i32>(u_input.a, u_input.a)), true, vec2<i32>(0i, 41910i), vec2<bool>(false, true)), Struct_4(Struct_2(217f), vec4<i32>(-37601i, u_input.a, -2147483647i, u_input.a), vec2<u32>(1u, 1u), Struct_1(928f, vec2<i32>(u_input.a, 0i))), Struct_4(Struct_2(849f), vec4<i32>(u_input.a, 0i, u_input.a, 7116i), vec2<u32>(1u, 45152u), Struct_1(292f, vec2<i32>(-1i, u_input.a))), true)));
    let var_2 = var_1.a;
    var_0 = _wgslsmith_f_op_f32(-var_1.a) < var_2;
    let var_3 = func_4(select(~vec2<i32>(var_1.b.x, firstTrailingBit(u_input.a)), min(_wgslsmith_mult_vec2_i32(var_1.b, vec2<i32>(var_1.b.x, -20884i)), min(var_1.b, var_1.b)) & -var_1.b, all(vec3<bool>(true, true, true))), Struct_4(Struct_2(-250f), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.b.x, -2147483647i, 0i, 0i), firstTrailingBit(vec4<i32>(var_1.b.x, var_1.b.x, 0i, u_input.a)), vec4<i32>(-2147483647i, var_1.b.x, 66506i, var_1.b.x)), ~vec2<u32>(1u, 1u), func_4(vec2<i32>(1i, ~(-3242i)), Struct_4(Struct_2(-1127f), vec4<i32>(u_input.a, u_input.a, var_1.b.x, -1i), ~vec2<u32>(1u, 21018u), Struct_1(495f, vec2<i32>(2147483647i, 0i))), Struct_1(var_2, ~vec2<i32>(-20278i, 9511i)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a + 1f), _wgslsmith_f_op_f32(-var_1.a)), 1097f, _wgslsmith_f_op_f32(ceil(func_1(var_1, false, -vec2<i32>(var_1.b.x, var_3.b.x), select(vec2<bool>(true, false), vec2<bool>(false, false), true)).b.x)), 1157f));
}

