struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = firstTrailingBit(vec4<u32>(min(1u >> (1u % 32u), 1u), min(_wgslsmith_clamp_u32(select(1u, 0u, false), ~0u, countOneBits(78831u)), ~abs(0u)), ~(~1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 56373u), vec2<u32>(7046u, 4294967295u)) % 32u)), 58066u));
    var_0 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(35504u, var_0.x, var_0.x, 35557u), select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(71208u, var_0.x, var_0.x, 54250u), vec4<bool>(false, true, false, false))) ^ (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<u32>(13541u, 18740u, var_0.x, var_0.x)) >> (select(~vec4<u32>(4294967295u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))));
    var_0 = ~vec4<u32>(_wgslsmith_sub_u32(reverseBits(~var_0.x), var_0.x), 0u, ~(97921u & var_0.x), _wgslsmith_mult_u32(min(0u & var_0.x, _wgslsmith_clamp_u32(var_0.x, 0u, 0u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, 128612u, var_0.x)), vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x) ^ vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x))));
    var var_1 = arg_1.b.x;
    var var_2 = firstTrailingBit(vec4<i32>(arg_0.x, select(-_wgslsmith_div_i32(-6611i, u_input.a.x), arg_0.x, true), u_input.a.x, _wgslsmith_mult_i32(abs(u_input.a.x), _wgslsmith_mult_i32(-28905i, _wgslsmith_mult_i32(1i, arg_0.x)))));
    return var_0.zx;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.x << (4294967295u % 32u), 4294967295u, arg_0, 50276u), min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_3.a.x, arg_0, 29026u), ~vec4<u32>(arg_0, 0u, arg_0, arg_0)), abs(~vec4<u32>(0u, 4294967295u, 27347u, 25639u)))), ~(~(~countOneBits(vec4<u32>(3369u, 1u, arg_0, 64282u)))));
    return ~select(countOneBits(arg_3.a.yz), _wgslsmith_clamp_vec2_u32(func_3(u_input.a.yx, arg_3.b), _wgslsmith_sub_vec2_u32(~arg_3.a.yx, vec2<u32>(var_0.x, 4294967295u)), arg_3.a.xx | vec2<u32>(arg_3.a.x, 4294967295u)), vec2<bool>(true, arg_3.d));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = ~(~func_2(0u, arg_0.b.x, vec3<f32>(-1000f, _wgslsmith_f_op_f32(554f + arg_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x))), Struct_2(~vec3<u32>(arg_2, arg_1, 81305u), arg_0, Struct_1(2147483647i, arg_0.b, u_input.a.xw), arg_3.x, Struct_1(arg_0.a, arg_0.b, arg_0.c))));
    let var_1 = Struct_2(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(23782u, arg_2, 4294967295u, var_0.x), max(vec4<u32>(arg_2, arg_2, arg_2, arg_1), vec4<u32>(4294967295u, arg_2, 28697u, 4294967295u)))), max(max(_wgslsmith_add_u32(arg_1, 4294967295u), arg_2), ~(~arg_2)), abs(45874u)), arg_0, Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-arg_0.b), select(vec2<i32>(reverseBits(arg_0.a), max(arg_0.a, 2147483647i)), arg_0.c, all(vec2<bool>(arg_3.x, arg_3.x)))), arg_3.x, Struct_1(-64662i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(514f - arg_0.b.x), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), 658f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, arg_0.b.x, 179f, arg_0.b.x) * arg_0.b) + arg_0.b))), countOneBits(-(arg_0.c & arg_0.c))));
    return Struct_2(reverseBits(var_1.a), Struct_1(firstTrailingBit(reverseBits(arg_0.c.x)), var_1.e.b, _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0.a, 11439i), vec2<i32>(-12353i, -2147483647i << (var_0.x % 32u)), arg_0.c)), Struct_1(i32(-1i) * -12702i, arg_0.b, var_1.e.c), false, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zyw;
    var var_1 = -u_input.a.x;
    var var_2 = Struct_4(func_1(Struct_1(0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -1425f, 878f, 2259f)), reverseBits(min(var_0.yx, vec2<i32>(var_0.x, -103219i)))), 4294967295u, ~3966u, vec2<bool>(true, true)), func_1(func_1(func_1(Struct_1(-2147483647i, vec4<f32>(799f, -854f, 272f, 1052f), vec2<i32>(u_input.a.x, -7020i)), _wgslsmith_mult_u32(0u, 84296u), ~98619u, vec2<bool>(false, false)).c, 1u, ~func_3(vec2<i32>(-15823i, var_0.x), Struct_1(u_input.a.x, vec4<f32>(896f, -1000f, 1059f, 1045f), var_0.yx)).x, vec2<bool>(true, true)).c, ~(~countOneBits(1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25543u), vec2<u32>(1u, 20653u)) & ~4294967295u, _wgslsmith_mult_u32(1u, ~18123u)), vec2<bool>(true, true)).e);
    var_2 = Struct_4(func_1(Struct_1(firstTrailingBit(var_2.a.b.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1295f), 327f, _wgslsmith_f_op_f32(var_2.a.e.b.x * var_2.a.b.b.x), var_2.a.c.b.x), var_0.xz), ~(~var_2.a.a.x) << (func_1(var_2.a.c, var_2.a.a.x, 64274u, !vec2<bool>(false, var_2.a.d)).a.x % 32u), ~(~var_2.a.a.x), vec2<bool>(true, true)), var_2.a.b);
    var_1 = abs(-22468i);
    var var_3 = 15374i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.b * var_2.b.b));
    let var_5 = !vec4<bool>(!(var_2.a.d & (false | var_2.a.d)), true, select(true, !(36037u < var_2.a.a.x), any(vec2<bool>(true, true))), var_2.a.d);
    var_1 = func_1(Struct_1(var_0.x, var_2.a.b.b, ~vec2<i32>(-var_0.x, ~9273i)), 1u, 1u, vec2<bool>(var_2.b.b.x >= _wgslsmith_f_op_f32(-var_4.x), ((var_2.a.a.x >> (4294967295u % 32u)) < countOneBits(0u)) == any(vec4<bool>(false, var_2.a.d, var_5.x, var_5.x)))).e.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 0u, 4294967295u, var_2.a.a.x) | vec4<u32>(var_2.a.a.x, 544u, var_2.a.a.x, 2111u), ~vec4<u32>(4294967295u, 4294967295u, var_2.a.a.x, 13779u), select(vec4<bool>(false, var_5.x, var_2.a.d, var_5.x), var_5, vec4<bool>(false, var_2.a.d, true, true))), select(~(vec4<u32>(1u, 4294967295u, var_2.a.a.x, 0u) | vec4<u32>(4294967295u, var_2.a.a.x, 38934u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(var_2.a.a.x, 15905u), ~5167u, ~var_2.a.a.x, ~0u), select(select(vec4<bool>(var_5.x, true, var_5.x, var_2.a.d), var_5, var_5), !var_5, !var_5)), abs(abs(firstTrailingBit(vec4<u32>(var_2.a.a.x, var_2.a.a.x, 17112u, 4294967295u))))), vec4<u32>(~5657u ^ ~var_2.a.a.x, 1u, var_2.a.a.x, ~(~4294967295u)) ^ vec4<u32>(0u << ((52198u << (var_2.a.a.x % 32u)) % 32u), var_2.a.a.x, _wgslsmith_add_u32(4294967295u, var_2.a.a.x ^ var_2.a.a.x), var_2.a.a.x));
}

