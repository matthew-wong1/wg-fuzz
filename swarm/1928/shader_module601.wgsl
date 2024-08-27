struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = abs(_wgslsmith_mod_vec4_i32(-(reverseBits(vec4<i32>(47382i, u_input.b.x, 70835i, u_input.a.x)) & vec4<i32>(u_input.e, -2901i, u_input.a.x, u_input.e)), _wgslsmith_div_vec4_i32(~min(vec4<i32>(u_input.e, u_input.a.x, 1i, u_input.b.x), vec4<i32>(0i, u_input.e, u_input.e, 0i)), vec4<i32>(u_input.a.x, -66419i, -1i, -7252i))));
    var_0 = (vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(44762i, 2147483647i, -2147483647i, -30144i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, 23268i, 117i), vec4<i32>(61712i, 18723i, var_0.x, 21832i)), reverseBits(vec4<i32>(771i, u_input.b.x, -2147483647i, -1i)))) | ~_wgslsmith_sub_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.a.x, 48595i, u_input.a.x, 68301i))), -(vec4<i32>(var_0.x, 3668i, 37211i, 2147483647i) << (vec4<u32>(0u, u_input.d, 61491u, 14055u) % vec4<u32>(32u))));
    var_0 = vec4<i32>(var_0.x, 10400i, 3137i, u_input.a.x);
    var var_1 = all(vec4<bool>(true, true, true, !(any(vec2<bool>(true, true)) || select(true, false, false))));
    var_0 = countOneBits(vec4<i32>(35576i, var_0.x, -_wgslsmith_mult_i32(8705i, var_0.x), u_input.e) << ((abs(~vec4<u32>(u_input.c, 78687u, 4294967295u, 52859u)) ^ max(vec4<u32>(38470u, u_input.c, 4294967295u, 4128u) ^ vec4<u32>(u_input.d, u_input.c, 41798u, 4294967295u), ~vec4<u32>(u_input.c, 4294967295u, 0u, 47789u))) % vec4<u32>(32u)));
    return firstTrailingBit(u_input.e);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(arg_0, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true), vec3<bool>(true, true, true))));
    var_0 = Struct_1(countOneBits(~(arg_0 | arg_0)) | reverseBits(vec4<i32>(u_input.a.x, ~var_0.a.x, func_3(), arg_0.x)), true);
    var var_1 = vec3<i32>(~(-_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(arg_0.x, arg_0.x))), arg_0.x, _wgslsmith_mult_i32(i32(-1i) * -1i, func_3()));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1611f * -1939f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2098f - _wgslsmith_f_op_f32(f32(-1f) * -456f)))));
    let var_3 = Struct_3(Struct_2(Struct_1(var_0.a, var_0.b), Struct_1(-var_0.a, var_0.b), Struct_1(min(vec4<i32>(u_input.b.x, -2301i, u_input.a.x, u_input.b.x), -vec4<i32>(var_0.a.x, -2147483647i, arg_0.x, 1573i)), false), Struct_1(vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(-17365i, var_1.x, -7544i), -2147483647i, arg_0.x), select(true, var_0.b || var_0.b, u_input.c <= u_input.d))), Struct_2(Struct_1(vec4<i32>(var_1.x, var_1.x, ~(-8838i), min(u_input.e, u_input.e)), true), Struct_1(vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, arg_0.x), i32(-1i) * -11713i, 1i, -2147483647i), (var_0.b | true) && all(vec3<bool>(true, var_0.b, false))), Struct_1(-vec4<i32>(-16128i, 6076i, arg_0.x, var_0.a.x), !(var_0.b | true)), Struct_1(~var_0.a, !(var_0.b & false))), -vec4<i32>(-2147483647i, ~min(var_0.a.x, -28916i), var_0.a.x, 36186i));
    return Struct_2(Struct_1(-(~vec4<i32>(arg_0.x, -2147483647i, u_input.b.x, 0i)), all(!vec3<bool>(true, true, var_0.b)) || false), var_3.b.d, Struct_1(_wgslsmith_mult_vec4_i32(var_0.a, -arg_0), 875f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-266f * 416f), _wgslsmith_f_op_f32(-210f + 1813f)))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-13405i, var_0.a.x, u_input.b.x), vec3<i32>(var_1.x, var_1.x, var_0.a.x)), 2972i), _wgslsmith_sub_i32(~var_3.c.x, var_1.x), ~(-var_1.x), -select(-2147483647i, -1i, false)), var_3.a.b.b));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(func_2(vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.a.x, -3337i, u_input.a.x, u_input.e), arg_0.a, arg_0.b), -arg_0.a), -_wgslsmith_clamp_i32(-8656i, arg_0.a.x, arg_0.a.x), arg_0.a.x << (arg_1 % 32u))), func_2(max(vec4<i32>(-64109i ^ arg_0.a.x, u_input.e, func_3(), _wgslsmith_add_i32(u_input.a.x, arg_0.a.x)), abs(arg_0.a) ^ firstTrailingBit(vec4<i32>(-17625i, -1i, 2147483647i, u_input.b.x)))), arg_0.a);
    var var_1 = ~2147483647i;
    var var_2 = var_0.a;
    let var_3 = firstLeadingBit(~((~vec4<u32>(arg_1, u_input.d, arg_1, 9289u) >> (vec4<u32>(arg_1, u_input.c, arg_1, 1u) % vec4<u32>(32u))) >> (abs(~vec4<u32>(4294967295u, arg_1, u_input.d, u_input.d)) % vec4<u32>(32u))));
    let var_4 = max(var_3.wzw, var_3.zxx);
    return func_2(vec4<i32>(var_2.b.a.x & ~(-3978i), firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -15069i, var_0.c.x), ~vec3<i32>(arg_0.a.x, 2147483647i, arg_0.a.x))), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(-var_0.b.b.a.yxx, select(vec3<i32>(u_input.e, -1i, -1i), vec3<i32>(var_0.b.c.a.x, var_0.c.x, var_2.d.a.x), vec3<bool>(var_2.a.b, arg_0.b, true)))), ~12172i)).a;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = ~arg_0;
    var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-329f, 1707f)), _wgslsmith_f_op_f32(-968f - 447f))))), 923f)));
    var_0 = arg_0;
    var var_2 = select(select(!vec4<bool>(true, true, any(vec3<bool>(true, arg_2.b, false)), true), select(select(select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(arg_2.b, true, true, true), true), select(vec4<bool>(false, arg_2.b, true, arg_2.b), vec4<bool>(false, arg_2.b, true, arg_2.b), true), vec4<bool>(true, arg_2.b, arg_2.b, false)), select(!vec4<bool>(arg_2.b, false, false, true), vec4<bool>(arg_2.b, false, arg_2.b, arg_2.b), all(vec3<bool>(arg_2.b, true, false))), vec4<bool>(arg_2.b, -922f <= var_1, !arg_2.b, arg_2.b | arg_2.b)), vec4<bool>(true, all(vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b)), func_2(_wgslsmith_clamp_vec4_i32(arg_2.a, vec4<i32>(arg_1, -15373i, arg_1, arg_2.a.x), arg_2.a)).b.b, u_input.c <= 3123u)), select(vec4<bool>(true, arg_2.b, true, true), !select(!vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(arg_2.b, true, arg_2.b, arg_2.b), true), true), !select(!vec4<bool>(true, true, arg_2.b, arg_2.b), select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), !vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), select(vec4<bool>(arg_2.b, false, arg_2.b, true), vec4<bool>(arg_2.b, arg_2.b, false, true), arg_2.b)), select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, true), !vec4<bool>(true, arg_2.b, false, false), select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(false, true, false, arg_2.b), arg_2.b))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2186f)), 1f), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-773f, var_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), !(!var_2.yy)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<f32>) -> StorageBuffer {
    var var_0 = ~(~(u_input.c << (0u % 32u)) >> (firstLeadingBit(~_wgslsmith_clamp_u32(arg_0.x, 4294967295u, 1u)) % 32u));
    let var_1 = u_input.b;
    let var_2 = Struct_2(func_1(func_1(func_1(func_2(vec4<i32>(-1i, 13406i, -76964i, arg_1.x)).c, u_input.d), _wgslsmith_mult_u32(~4294967295u, ~u_input.c)), u_input.c), Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, 1i, 17444i, 2147483647i)), all(vec3<bool>(true, true, true))), Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-52427i, -2147483647i, var_1.x, u_input.e), vec4<i32>(var_1.x, arg_1.x, var_1.x, -93226i))), true), Struct_1(vec4<i32>(func_3(), var_1.x, -54558i, -4379i), (-2147483647i >> (1u % 32u)) <= -var_1.x));
    var_0 = arg_0.x;
    let var_3 = ~0u;
    return StorageBuffer(~_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(13130u, u_input.c, arg_0.x), vec3<u32>(u_input.c, 113505u, u_input.d)), reverseBits(countOneBits(vec3<u32>(arg_0.x, 3585u, 1u)))), u_input.e, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(-26310i, u_input.a.x, 49916i, u_input.a.x)), countOneBits(max(vec4<i32>(u_input.e, u_input.a.x, u_input.e, u_input.b.x), vec4<i32>(16972i, u_input.a.x, 28562i, -17261i)))), !(~(-4954i) == (u_input.b.x >> (u_input.c % 32u))));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, u_input.d), u_input.c), vec2<u32>(max(_wgslsmith_sub_u32(u_input.c, u_input.d), 1u), u_input.c)), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1000f)))) * _wgslsmith_f_op_f32(floor(918f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), u_input.a.x, func_1(Struct_1(vec4<i32>(-43760i, var_1.a.x, -7877i, var_1.a.x), var_1.b), u_input.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1045f, 918f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1789f, 1000f) * vec2<f32>(-806f, -2061f)), !vec2<bool>(var_1.b, var_1.b))))));
}

