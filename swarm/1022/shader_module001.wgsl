struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = vec4<bool>(false, select(!any(!vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, arg_0.b.a)), u_input.a < ~_wgslsmith_sub_i32(u_input.a, -8260i), true), !arg_0.b.a, u_input.a <= 2147483647i);
    var var_1 = Struct_3(arg_0.b.d, arg_0, min(1i, _wgslsmith_div_i32(-arg_0.c.x, 27996i)) < _wgslsmith_clamp_i32(-(~arg_0.c.x), -(~arg_0.c.x), -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) + -188f));
    var var_2 = 13985i;
    var var_3 = 228f;
    var var_4 = vec3<i32>(-(~abs(45117i)), ~u_input.a, reverseBits(_wgslsmith_sub_i32(abs(-19824i) >> (firstTrailingBit(var_1.a) % 32u), arg_0.c.x)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-572f - -1408f), arg_0.b.b.x, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -257f)) * var_1.b.b.b);
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    var var_0 = Struct_5(-105f);
    var var_1 = !(!(!all(vec4<bool>(true, true, true, true))));
    return Struct_3(9588u, Struct_2(arg_0.a, Struct_1(true, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(503f, Struct_1(false, vec4<f32>(-395f, var_0.a, arg_0.a, -2572f), 1u, 4294967295u), vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, -940f))))), 73687u, 1u), countOneBits(~vec3<i32>(2147483647i, u_input.a, u_input.a)) & vec3<i32>(5344i, -34337i, u_input.a)), true, _wgslsmith_f_op_f32(-var_0.a));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = func_2(Struct_5(729f)).b.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(242f, arg_0.b.a) * arg_0.b.b.b.zz)))), arg_0.c));
    let var_2 = func_2(Struct_5(_wgslsmith_f_op_f32(-var_1.x))).b.b;
    let var_3 = arg_0;
    let var_4 = ~vec4<u32>(4294967295u, var_0.c, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_2.d, 1u, 1u)), ~vec3<u32>(arg_0.b.b.d, 50042u, 1u)) | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(33971u, 1u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.c, 0u, 0u), vec3<u32>(21325u, var_3.b.b.d, 39002u))), ~_wgslsmith_mod_u32(~var_0.d, 12584u));
    return arg_0.b.b.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(arg_3.a);
    let var_1 = 1u;
    var var_2 = firstTrailingBit(arg_1);
    var var_3 = firstTrailingBit(-u_input.a);
    let var_4 = select(vec4<bool>(any(select(arg_0, vec3<bool>(arg_0.x, true, false), arg_0)), true, !any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), all(vec3<bool>(true, arg_0.x, true || arg_0.x))), vec4<bool>(arg_0.x, select(any(arg_0.zz), false, arg_0.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * var_0.a)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a - -109f) * _wgslsmith_f_op_f32(f32(-1f) * -632f))), select(vec4<bool>(true, ~var_1 == ~var_1, true, !(76175i >= arg_2.x)), vec4<bool>(true, false, (var_1 ^ 0u) < (0u >> (var_1 % 32u)), select(func_2(Struct_5(var_0.a)).b.b.a, all(arg_0), true)), vec4<bool>(false, select(var_1 <= var_1, arg_0.x, !arg_0.x), arg_0.x, ~arg_2.x >= ~u_input.a)));
    return func_2(arg_3).b.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = func_5(!vec3<bool>(func_4(func_2(Struct_5(arg_0.x))), true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), ~(reverseBits(_wgslsmith_div_i32(-1i, arg_1.x)) | firstTrailingBit(_wgslsmith_sub_i32(u_input.a, 1i))), select(min(_wgslsmith_add_vec3_i32(arg_1.wzw | vec3<i32>(32299i, arg_1.x, u_input.a), vec3<i32>(-8621i, arg_1.x, u_input.a)), ~vec3<i32>(arg_1.x, u_input.a, 33266i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_clamp_i32(2147483647i, arg_1.x, u_input.a), max(abs(u_input.a), firstLeadingBit(-29318i)), -2147483647i), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(358f, -490f))))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, var_0.d, var_0.d), firstLeadingBit(vec3<u32>(var_0.d, var_0.d, var_0.d))) & (vec3<u32>(46960u, 4294967295u, 0u) & _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, 1u, 17294u), vec3<u32>(4294967295u, var_0.c, var_0.d))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, var_0.d, abs(var_0.c)), select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, var_0.d), vec3<u32>(var_0.d, 9467u, 1u)), vec3<u32>(var_0.c, var_0.c, 87548u), true), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 35353u, 11969u), vec3<u32>(1u, var_0.d, var_0.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(91056u, var_0.d, var_0.c), vec3<u32>(var_0.d, var_0.c, var_0.c))))), ~abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.c, var_0.c, 1u), vec3<u32>(12404u, var_0.d, var_0.d), vec3<bool>(true, var_0.a, var_0.a)), ~vec3<u32>(var_0.c, 62045u, 1u))));
    let var_2 = !(!(!select(vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(true, true, var_0.a, true), true)));
    var var_3 = func_2(Struct_5(886f));
    var_3 = func_2(Struct_5(var_0.b.x));
    return vec2<u32>(var_0.c & _wgslsmith_add_u32(reverseBits(67299u), var_0.c), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~vec2<u32>(~(~4294967295u), 19372u));
    var var_1 = -_wgslsmith_add_vec4_i32(~(~vec4<i32>(-32279i, 18496i, 6916i, -2147483647i)) ^ -firstTrailingBit(vec4<i32>(25607i, u_input.a, u_input.a, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, 1i, u_input.a, 42731i));
    let var_2 = select(vec2<bool>(true, true), !vec2<bool>(_wgslsmith_f_op_f32(select(-895f, 296f, false)) <= 1f, !any(vec4<bool>(false, false, true, false))), true);
    let var_3 = vec4<i32>(i32(-1i) * -1i, u_input.a, -u_input.a, -23913i);
    var_0 = max(~abs(vec2<u32>(~1u, ~74900u)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(0u), 34352u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, var_0.x), ~vec2<u32>(var_0.x, 1u), ~vec2<u32>(4294967295u, var_0.x)))));
    var_0 = ~vec2<u32>(0u, ~(~var_0.x)) | ~max(vec2<u32>(var_0.x, var_0.x) | ~vec2<u32>(var_0.x, 1u), ~(~vec2<u32>(18401u, 4294967295u)));
    var_0 = select(vec2<u32>(~(~var_0.x) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(42249u, var_0.x, var_0.x)), var_0.x) % 32u), 29785u), _wgslsmith_div_vec2_u32(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), -1091f, _wgslsmith_f_op_f32(-1597f - -1822f), 360f), var_3), _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 0u)), ~vec2<u32>(3027u, 4294967295u) | _wgslsmith_div_vec2_u32(vec2<u32>(1u, 27469u), vec2<u32>(var_0.x, var_0.x)))), !all(!select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, false, false), vec3<bool>(var_2.x, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-1505f, -(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(var_1.x, var_1.x)), _wgslsmith_dot_vec3_i32(var_3.zzz, vec3<i32>(983i, 1i, var_1.x)), abs(var_1.x), abs(1i)) >> (vec4<u32>(~var_0.x, abs(58417u), var_0.x, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 999f, -1387f)))), vec3<f32>(-804f, _wgslsmith_f_op_f32(f32(-1f) * -2153f), _wgslsmith_f_op_f32(abs(1406f)))), _wgslsmith_f_op_vec3_f32(func_2(Struct_5(1394f)).b.b.b.zzz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1285f, 1089f, 670f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, 1803f, -1000f))))));
}

