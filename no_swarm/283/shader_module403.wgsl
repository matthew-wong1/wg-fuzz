struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false)))), u_input.a);
    let var_1 = Struct_1(max(max(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(~vec4<u32>(4294967295u, 15458u, 27309u, 36272u))), vec4<u32>(47916u, ~(~0u), ~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(7673u, 13579u, 4294967295u), vec3<u32>(0u, 37815u, 19926u)) ^ 1u)), _wgslsmith_mod_i32(30592i, var_0.b ^ countOneBits(-u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1677f, 1835f, -1593f), vec3<f32>(1419f, -219f, -1551f)))))), var_0.a, max(~(~firstTrailingBit(80360u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 64827u, 6411u, 13665u), vec4<u32>(40806u, 4294967295u, 50527u, 0u)), vec4<u32>(3256u, 4985u, 24382u, 28419u)) << (~0u % 32u)));
    var_0 = Struct_3(true, var_1.b << (~(~firstTrailingBit(31604u)) % 32u));
    var_0 = Struct_3(true, abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-22266i, u_input.a, var_0.b), vec3<i32>(u_input.a, var_1.b, -32153i)) | (i32(-1i) * -12518i), -1i)));
    var_0 = Struct_3(var_0.a, _wgslsmith_add_i32(-var_1.b, var_1.b));
    return reverseBits(reverseBits(~countOneBits(select(vec4<i32>(-44193i, var_0.b, var_0.b, -9385i), vec4<i32>(-35805i, 114387i, 21053i, var_0.b), vec4<bool>(false, var_1.d, var_1.d, false)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    var var_0 = func_3();
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 40117i >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 2433u)), _wgslsmith_mod_vec2_u32(vec2<u32>(11822u, 1u), vec2<u32>(1u, 37141u))) % 32u), u_input.a << (~(~4338u) % 32u), abs((arg_1 | 18710i) ^ ~2147483647i)), select(~firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, u_input.a, 2147483647i, arg_1), vec4<i32>(2147483647i, 0i, 2147483647i, -1i))), ~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a, 1i), vec4<i32>(arg_1, arg_1, 24420i, arg_1))), true));
    var var_1 = Struct_4(arg_0.yz, 1u);
    var_0 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x >> (var_1.b % 32u), ~u_input.a, ~(-1i), max(4093i, 9010i)) | vec4<i32>(arg_2.b, _wgslsmith_dot_vec3_i32(var_0.wzx, vec3<i32>(var_0.x, 83040i, u_input.a)), u_input.a, 1i), _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-14215i, -1i, arg_2.b, -25507i), vec4<i32>(-2147483647i, u_input.a, 0i, var_0.x)), ~(-vec4<i32>(-41169i, 2147483647i, arg_1, u_input.a)))), vec4<i32>(-1i, max(select(u_input.a, var_0.x, arg_0.x), 2147483647i), ~var_0.x, arg_2.b) & vec4<i32>(-1i, _wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec2_i32(var_0.ww, var_0.yy)), -_wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(arg_2.b, -16835i)), 2147483647i), false);
    var var_2 = firstTrailingBit(min(firstTrailingBit(~vec3<u32>(var_1.b, 1u, var_1.b)), vec3<u32>(18823u, var_1.b, min(var_1.b, 10458u))) | vec3<u32>(select(19150u, 8392u, true) | var_1.b, firstTrailingBit(min(var_1.b, 1u)), firstLeadingBit(reverseBits(49159u))));
    return _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(var_2.x, 21906u, 11039u))) & (~vec3<u32>(var_1.b, var_1.b, 42760u) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(45383u, var_2.x, 1u), vec3<u32>(var_1.b, 0u, var_2.x))), firstTrailingBit(reverseBits(vec3<u32>(4294967295u, var_1.b, var_1.b) >> (vec3<u32>(3506u, 4294967295u, var_1.b) % vec3<u32>(32u)))) << (_wgslsmith_mult_vec3_u32(reverseBits(select(vec3<u32>(var_2.x, 1u, var_1.b), vec3<u32>(var_1.b, var_2.x, var_2.x), arg_0.xwx)), ~(~vec3<u32>(0u, 25090u, var_1.b))) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = ~(~vec4<i32>(u_input.a << (2307u % 32u), 1440i, 30018i, 1i));
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(0u, ~arg_0.b), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b, arg_1.b, arg_0.b), max(vec3<u32>(48979u, arg_1.b, arg_0.b), vec3<u32>(4294967295u, arg_1.b, 4294967295u)))), ~func_2(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), 56652i, Struct_2(vec4<f32>(-1270f, -331f, 1876f, -1000f), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, -1328f))), ~(_wgslsmith_add_u32(49639u, arg_0.b) << (1u % 32u))), ~14176i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(590f, -1475f, 203f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, 1000f, -650f) * vec3<f32>(421f, -921f, 1935f)))), all(!(!(!vec3<bool>(true, arg_1.a.x, true)))), arg_0.b);
    var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.b, arg_1.b, 52549u), var_1.a, var_1.a), vec4<u32>(arg_1.b, var_1.e, arg_1.b, 0u & arg_1.b)), vec4<u32>(arg_1.b, 1u, var_1.a.x, var_1.e) & ~countOneBits(vec4<u32>(arg_0.b, 17767u, var_1.a.x, 4294967295u)), abs(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(var_1.a.zx, vec2<u32>(arg_1.b, 1u)), 1u, 4294967295u))), abs(var_1.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)) * vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x), 1570f, _wgslsmith_f_op_f32(-736f - var_1.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, var_1.c.x, -810f) * _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.x, 399f, -1407f))))))), !arg_0.a.x, _wgslsmith_add_u32(select(_wgslsmith_add_u32(arg_0.b, arg_0.b), _wgslsmith_sub_u32(var_1.a.x, arg_0.b), arg_1.a.x), 24359u) & min(arg_0.b, 4294967295u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, var_1.c.x, var_1.c.x, var_1.c.x) - vec4<f32>(-331f, 1000f, 1223f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x, var_1.c.x))), 56612i);
    return !vec4<bool>(all(vec4<bool>(true, false, select(false, true, false), true)), all(vec4<bool>(any(vec3<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x)), 3236u < arg_0.b, var_2.a.x <= 334f, arg_1.a.x)), !(!any(vec4<bool>(arg_0.a.x, var_1.d, false, arg_1.a.x))), !(!all(vec3<bool>(arg_0.a.x, arg_0.a.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<bool>(!all(vec4<bool>(false, false, false, true)), all(select(func_1(Struct_4(vec2<bool>(false, false), 4294967295u), Struct_4(vec2<bool>(false, false), 1u)), func_1(Struct_4(vec2<bool>(true, false), 0u), Struct_4(vec2<bool>(true, true), 1u)), true))), 4294967295u >> (1u % 32u));
    var var_1 = Struct_3(all(!vec4<bool>(var_0.a.x, all(vec3<bool>(false, var_0.a.x, true)), false, true)), ~u_input.a);
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, var_0.b, 0u, var_0.b) >> (vec4<u32>(1u, 57177u, var_0.b, var_0.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4018u, 0u, var_0.b, 0u), vec4<u32>(46588u, 46396u, 7808u, var_0.b))) & (firstTrailingBit(vec4<u32>(0u, 0u, var_0.b, var_0.b)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b, 0u, var_0.b), vec4<u32>(8795u, var_0.b, var_0.b, var_0.b)))), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 5850i, 2147483647i), vec3<i32>(var_1.b, 1i, var_1.b)) >> (29132u % 32u), 10047i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-625f, 1912f, 1230f), vec3<f32>(1349f, 273f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, -376f, 380f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(612f, -502f, -1724f), vec3<f32>(-1000f, -787f, 309f))))), !(!(!var_0.a.x & !var_1.a)), _wgslsmith_div_u32(var_0.b, firstTrailingBit(countOneBits(var_0.b))));
    var var_3 = _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2058f, -1094f))))));
    var var_4 = _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, firstTrailingBit(u_input.a), ~(-u_input.a), firstTrailingBit(-1i ^ var_2.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-u_input.a, -u_input.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -61120i), -40810i), var_2.b, var_1.b), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, var_2.b), vec2<i32>(0i, -38509i)), 0i), ~(vec4<i32>(-29051i, var_1.b, var_1.b, u_input.a) ^ vec4<i32>(-51821i, var_1.b, u_input.a, 58553i))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, 36463i, -1i), func_3())));
    var_4 = reverseBits(vec4<i32>(1i, var_4.x, _wgslsmith_dot_vec3_i32(var_4.zxz, (var_4.zzy & var_4.xwx) << (var_2.a.yyx % vec3<u32>(32u))), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b, var_0.b, 1u));
}

