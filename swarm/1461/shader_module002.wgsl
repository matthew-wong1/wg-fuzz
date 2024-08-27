struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = arg_0.d;
    var var_1 = Struct_1(~1u, _wgslsmith_add_i32(~arg_0.b, arg_1.a.b), select(vec4<bool>(true, true, !(arg_1.a.b < arg_0.b), !(!arg_1.a.c.x)), vec4<bool>(false, arg_1.a.c.x && true, any(vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x)), arg_0.c.x), arg_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.d)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1700f, var_0.x, 1067f), vec3<f32>(var_0.x, arg_1.c, arg_1.a.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)))), 1584f);
    var_1 = arg_1.a;
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, var_1.b ^ -1i), min(select(vec2<i32>(arg_0.b, var_1.b), vec2<i32>(-15997i, arg_2), false), vec2<i32>(arg_1.a.b, arg_1.a.b) & vec2<i32>(0i, 2147483647i))), -1i);
    var_1 = arg_1.a;
    return countOneBits(var_1.a ^ 4005u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = arg_2.a;
    let var_1 = any(arg_0) & true;
    var var_2 = vec4<u32>(~1u, ~abs(~(arg_2.a.a & 75502u)), abs(~arg_2.a.a), firstTrailingBit(firstLeadingBit(func_3(arg_2.a, Struct_2(Struct_1(var_0.a, arg_2.a.b, vec4<bool>(true, arg_0.x, true, false), arg_2.a.d, 131f), -987f, arg_2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(32108i, arg_2.a.b), vec2<i32>(arg_2.a.b, -18096i))))));
    let var_3 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0.b, 1i, 28781i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a.b, var_0.b, arg_2.a.b), vec3<i32>(var_0.b, -18681i, arg_2.a.b))), select(-vec3<i32>(var_0.b, 0i, 29049i), vec3<i32>(0i, var_0.b, 0i) << (vec3<u32>(98563u, var_0.a, 0u) % vec3<u32>(32u)), var_0.c.yzy)) | min(select(-vec3<i32>(-31536i, -58189i, var_0.b), ~(~vec3<i32>(arg_2.a.b, -2147483647i, 2147483647i)), vec3<bool>(arg_2.a.c.x, arg_0.x, var_1)), abs(~vec3<i32>(var_0.b, -2147483647i, 21042i)));
    let var_4 = arg_2.a;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d, var_0.d)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_4.e)), _wgslsmith_f_op_f32(347f + var_4.d.x), arg_2.b), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), var_0.c.yzy, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_0.d, var_4.d))))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = 0u;
    var var_1 = ~(~_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.b.x, 1u) | u_input.b), firstLeadingBit(firstTrailingBit(vec2<u32>(0u, 50574u)))));
    let var_2 = 2562i;
    var_1 = vec2<u32>(arg_1 >> (u_input.a % 32u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(147122u, 79397u, arg_1), vec3<u32>(arg_1, u_input.a, u_input.a) & vec3<u32>(24133u, 0u, 4294967295u))) << (u_input.a % 32u));
    var var_3 = select(vec4<u32>(var_1.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1u) ^ vec3<u32>(u_input.a, u_input.b.x, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, u_input.a, u_input.b.x), vec3<u32>(var_1.x, 0u, 1u)))), var_1.x, ~_wgslsmith_mult_u32(~90368u, arg_1)), reverseBits(~(max(vec4<u32>(4294967295u, arg_1, var_1.x, arg_1), vec4<u32>(27193u, var_1.x, u_input.b.x, 4294967295u)) & vec4<u32>(1u, u_input.b.x, 35123u, var_1.x))), select(vec4<bool>((var_2 ^ -1i) >= (i32(-1i) * -1i), 30822i == _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 52613i, -40426i), vec3<i32>(var_2, var_2, -1i)), false, any(select(arg_3.zy, vec2<bool>(arg_3.x, arg_3.x), arg_3.x))), !(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)), arg_3.x));
    return ~max(4294967295u, ~1u);
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.b;
    let var_1 = var_0.x;
    var var_2 = ~countOneBits((u_input.a & 0u) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 3642u, u_input.b.x, 0u), vec4<u32>(52101u, 89024u, 77903u, 1u)), var_1) % 32u));
    var var_3 = 1i;
    var_2 = ~(~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)), 8930u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, false), u_input.b, Struct_2(Struct_1(44472u, -2147483647i, vec4<bool>(true, false, false, false), vec3<f32>(-297f, -265f, -457f), 1501f), -289f, -1336f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -344f, -400f) * vec3<f32>(303f, 196f, 750f))), vec3<bool>(false, true, true)));
    return Struct_2(Struct_1(_wgslsmith_add_u32(var_0.x, 0u), (1i << (_wgslsmith_clamp_u32(0u, 1u, var_0.x) % 32u)) & max(~(-1i), countOneBits(-36700i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, 441f, -447f)), vec3<f32>(-270f, _wgslsmith_f_op_f32(step(-380f, -337f)), _wgslsmith_f_op_f32(799f * 1187f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1767f, -1256f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1256f, -1004f))))), -160f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(636f)), _wgslsmith_f_op_f32(step(-1000f, -1144f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-572f)), 810f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(reverseBits(var_0.a.a), max(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, -6220i, var_0.a.b)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_0.a.b, 0i, var_0.a.b)), vec3<i32>(24807i, var_0.a.b, var_0.a.b), firstLeadingBit(vec3<i32>(21653i, 45767i, 1i)))), -(-var_0.a.b >> (_wgslsmith_mult_u32(var_0.a.a, 8821u) % 32u))), var_0.a.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.d, _wgslsmith_f_op_vec3_f32(-var_0.a.d)) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.c, _wgslsmith_div_f32(1367f, var_0.a.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.c, _wgslsmith_f_op_f32(step(3063f, var_0.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.d, var_0.a.d) - vec3<f32>(var_0.b, var_0.a.d.x, -830f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.c)), var_0.c))))));
    var_0 = func_1();
    let var_2 = Struct_1(~var_0.a.a, -1i, vec4<bool>(any(var_0.a.c), false, false, !select(false, false, var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), _wgslsmith_f_op_f32(var_1.d.x - var_1.e))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-861f * var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -114f), var_1.e <= 1616f)), func_1().b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.e)) * 278f));
    var_0 = Struct_2(func_1().a, 356f, _wgslsmith_f_op_f32(min(135f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, func_1().b)))));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, _wgslsmith_div_u32(var_1.a, var_0.a.a), 50093u), ~(vec3<u32>(0u, 32588u, _wgslsmith_add_u32(var_0.a.a, 1u)) >> (firstLeadingBit(vec3<u32>(0u, 4294967295u, 11172u)) % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -var_0.a.b, (var_1.b >> (0u % 32u)) ^ ~var_2.b), vec2<i32>(func_1().a.b, 2147483647i)));
}

