struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> u32 {
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, arg_0.x) << (u_input.b % vec2<u32>(32u))), vec2<u32>(~u_input.d, min(38986u, 31252u))), u_input.b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = ~16089u;
    var_0 = ~_wgslsmith_add_u32(~(~1u), u_input.d) | _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d | ~1u, 10327u), _wgslsmith_mult_u32(82720u, _wgslsmith_dot_vec2_u32(~vec2<u32>(840u, u_input.d), vec2<u32>(5788u, u_input.c.x))));
    var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, abs(u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, 47669u), vec3<u32>(14699u, u_input.b.x, 32550u))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 16533u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 39416u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 13566u, 1u), vec3<u32>(u_input.b.x, 610u, 37209u), vec3<u32>(47151u, 75707u, 438u))), min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, 66042u), vec3<u32>(1u, u_input.c.x, u_input.b.x)), reverseBits(vec3<u32>(u_input.c.x, 18589u, u_input.c.x)))), _wgslsmith_clamp_vec3_u32(max(countOneBits(vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x)), vec3<u32>(4294967295u, u_input.c.x, u_input.d) << (vec3<u32>(u_input.d, u_input.d, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.c.x), select(vec3<u32>(4294967295u, 28501u, 73885u), vec3<u32>(4294967295u, 0u, u_input.b.x), arg_3.b.wwx)), (vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x) << (vec3<u32>(78885u, 4294967295u, u_input.c.x) % vec3<u32>(32u))) ^ vec3<u32>(0u, 4294967295u, 1u)));
    let var_1 = min(vec3<i32>(-(~arg_1), _wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), -2953i), arg_3.d) & _wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)) << (countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 0u)) % vec3<u32>(32u)), select(vec3<i32>(arg_1, u_input.a.x, arg_1), max(vec3<i32>(2147483647i, arg_1, 1i), vec3<i32>(0i, arg_3.d, -41390i)), vec3<bool>(true, true, true))), vec3<i32>(2147483647i, 10128i, 2147483647i));
    return vec3<i32>(_wgslsmith_div_i32(u_input.a.x, min(arg_1, ~_wgslsmith_sub_i32(-1i, 0i))), 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(select(var_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(arg_3.c, u_input.a.x, arg_3.d), vec3<i32>(0i, arg_1, 0i)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_3.b.x), arg_3.b.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_1, vec3<i32>(1594i, 40495i, arg_1)), vec3<i32>(arg_1, -27816i, arg_3.d))), ~2147483647i, -arg_1));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = reverseBits(select(abs(vec2<u32>(0u, u_input.c.x) & u_input.b), max(_wgslsmith_mod_vec2_u32(u_input.b, u_input.c), ~min(vec2<u32>(27196u, arg_1), u_input.c)), vec2<bool>(!arg_3.x, arg_3.x)));
    let var_1 = Struct_2(func_3(!arg_3.x, ~(~(i32(-1i) * -41619i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-815f, arg_2.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-319f)))), Struct_4(arg_3, select(vec4<bool>(true, arg_3.x, arg_3.x, false), select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, false, arg_3.x, true)), false || arg_3.x), ~(u_input.a.x & -50021i), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, -45094i), ~39268i))), -522f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1237f))));
    let var_2 = vec3<i32>(-1i) * -var_1.a;
    return Struct_2(max(reverseBits(countOneBits(~var_2)), var_1.a), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1070f)), arg_2.a.x)))), _wgslsmith_clamp_u32(~arg_1, ~arg_1, ~_wgslsmith_clamp_u32(~49749u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.c), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(abs(1000f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -13429i, -1i), arg_0.a)), firstLeadingBit(func_2(countOneBits(u_input.c), 0u, arg_3, vec2<bool>(true, false)).a)), _wgslsmith_f_op_f32(-1710f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * arg_0.d)))), ~1449u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 * 1000f)))), _wgslsmith_f_op_f32(-arg_0.b))));
    var var_1 = _wgslsmith_add_u32(arg_0.c, _wgslsmith_mod_u32(func_2(~vec2<u32>(arg_2.c, u_input.b.x), 0u >> (reverseBits(arg_0.c) % 32u), arg_3, select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false))).c, arg_2.c));
    var_1 = arg_2.c;
    var_1 = ~(~37474u);
    var var_2 = Struct_4(vec2<bool>(~_wgslsmith_sub_u32(var_0.c, arg_2.c) < ((0u >> (1u % 32u)) << (1u % 32u)), true), select(select(vec4<bool>(false, all(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), false), !vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true))), -_wgslsmith_clamp_i32(abs(countOneBits(u_input.a.x)), ~0i, arg_2.a.x), _wgslsmith_add_i32(arg_2.a.x, func_2(u_input.b, 1u, arg_3, vec2<bool>(true, false)).a.x | firstLeadingBit(-1i)) | ~var_0.a.x);
    return StorageBuffer(~(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_2.a.x, 0i, 52685i, -20499i)), ~vec4<i32>(arg_0.a.x, 10836i, u_input.a.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-max(u_input.a.x, ~(~u_input.a.x)), abs(21557i));
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -7680i), vec3<i32>(-68425i, u_input.a.x, u_input.a.x)) & vec3<i32>(u_input.a.x, ~(-19293i), reverseBits(1i)), -625f, ~func_1(vec4<u32>(89980u, u_input.d, u_input.c.x, 1u), -var_0.x, _wgslsmith_f_op_f32(ceil(-387f))), _wgslsmith_f_op_f32(round(382f))), 1057f, func_2(max(~vec2<u32>(15661u, u_input.c.x) << (firstLeadingBit(u_input.c) % vec2<u32>(32u)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(17204u, u_input.b.x), u_input.b))), firstLeadingBit(min(u_input.b.x, 15566u)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(349f, -629f, -789f) + vec3<f32>(-1000f, 163f, -1506f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, 1000f, -599f)))), vec2<bool>(false, true)), Struct_3(vec3<f32>(-586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1626f)), -1000f)));
}

