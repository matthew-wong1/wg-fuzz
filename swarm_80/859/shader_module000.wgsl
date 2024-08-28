struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    var var_0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zz, vec2<i32>(arg_0.x, 2147483647i)), _wgslsmith_add_vec2_i32(select(arg_0, vec2<i32>(arg_0.x, 68183i), false), vec2<i32>(u_input.c.x, 0i) << (vec2<u32>(70766u, 4294967295u) % vec2<u32>(32u)))) ^ reverseBits(_wgslsmith_mult_vec2_i32(countOneBits(arg_0), arg_0));
    let var_1 = -1000f;
    let var_2 = var_1;
    let var_3 = Struct_2(~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zx, u_input.a.yy), vec2<u32>(4294967295u, 61097u))), Struct_1(true, _wgslsmith_f_op_f32(var_2 * var_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1194f)))))), vec3<bool>(!(!any(vec3<bool>(false, true, false))), true, false), select(abs(~_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.xy)), vec2<u32>(0u, u_input.a.x >> (u_input.a.x % 32u)), vec2<bool>(true, true)), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_1, 673f)), -217f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, -1136f))))));
    var_0 = _wgslsmith_mult_vec2_i32(~max(_wgslsmith_div_vec2_i32(arg_0 | vec2<i32>(4874i, 24776i), u_input.c.zx), abs(arg_0 ^ u_input.c.yx)), arg_0);
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    var var_0 = !vec3<bool>(select(true, any(vec2<bool>(true, true)), !all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f - -1414f)), -1376f, var_0.x))), max(vec3<i32>(-17063i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -27973i), u_input.c), u_input.b), vec3<i32>(~u_input.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.b), 0i)), vec2<bool>(false, false), 5537i);
    var_1 = Struct_3(_wgslsmith_f_op_f32(-670f - _wgslsmith_f_op_f32(exp2(var_1.a))), firstTrailingBit(~(~var_1.b << (vec3<u32>(arg_0.x, 4294967295u, arg_0.x) % vec3<u32>(32u)))), vec2<bool>(true, true), var_1.d);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(789f, _wgslsmith_f_op_f32(-var_1.a)))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(666f)))) * _wgslsmith_f_op_f32(func_4(func_3(u_input.c.yx)))), _wgslsmith_f_op_f32(f32(-1f) * -2031f));
    let var_1 = Struct_3(386f, firstTrailingBit(u_input.c), vec2<bool>(all(vec4<bool>(true, true, select(false, false, true), true)), true), -_wgslsmith_mult_i32(-13560i, u_input.b));
    let var_2 = Struct_2(abs(0u), Struct_1(true, var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(354f, 1536f) * vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -115f))))), !select(select(!vec3<bool>(false, true, var_1.c.x), !vec3<bool>(true, false, var_1.c.x), true), select(!vec3<bool>(true, true, var_1.c.x), !vec3<bool>(var_1.c.x, var_1.c.x, false), select(vec3<bool>(false, var_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x))), vec3<bool>(var_1.c.x, var_1.c.x, !var_1.c.x)), func_3(countOneBits(-var_1.b.zx)).zx, Struct_1(u_input.a.x < reverseBits(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(-883f, -1467f), var_1.b.x < 66179i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1100f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, var_0.x)))))));
    var_0 = var_2.b.c;
    let var_3 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(2580u, u_input.a.x), var_2.d), vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, 0u), ~3921u)) <= firstTrailingBit(var_2.a);
    return Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(48322u, u_input.a.x, 1u, 101204u) | vec4<u32>(u_input.a.x, 1327u, 28564u, 3901u), ~vec4<u32>(4294967295u, u_input.a.x, var_2.d.x, var_2.a)) | abs(vec4<u32>(1u, u_input.a.x, 0u, 60895u)), ~abs(vec4<u32>(1u, 24786u, 27528u, 4687u)) | ~vec4<u32>(u_input.a.x, u_input.a.x, var_2.d.x, 56369u)), var_2.e, vec3<bool>(any(!vec2<bool>(false, var_1.c.x)), var_3, any(select(vec4<bool>(var_3, true, var_3, var_2.e.a), vec4<bool>(true, var_1.c.x, false, true), true)) && (_wgslsmith_f_op_f32(var_1.a + var_2.e.b) < _wgslsmith_f_op_f32(-var_0.x))), ~(~vec2<u32>(1u, _wgslsmith_div_u32(u_input.a.x, 94951u))), Struct_1(var_3, _wgslsmith_f_op_f32(func_4(vec3<u32>(6101u, ~u_input.a.x, abs(1u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3027f, var_0.x))) - _wgslsmith_f_op_vec2_f32(floor(var_2.b.c)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_3 {
    let var_0 = !(!select(arg_0.c, vec3<bool>(all(arg_1.c), all(arg_0.c), arg_1.c.x | arg_0.b.a), vec3<bool>(arg_1.c.x, true, arg_1.c.x)));
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, arg_0.a), ~u_input.a.x, ~arg_0.d.x)), func_2().b, vec3<bool>(any(!(!var_0)), var_0.x, firstTrailingBit(arg_2) >= (u_input.a.x << (~53724u % 32u))), vec2<u32>(min(_wgslsmith_add_u32(~arg_0.d.x, ~89828u), firstTrailingBit(0u)), arg_0.a), func_2().e);
    let var_2 = func_2().e;
    var_1 = Struct_2(u_input.a.x, var_2, vec3<bool>(!(_wgslsmith_f_op_f32(arg_0.b.b + -215f) <= var_2.b), any(!(!var_0)), var_1.b.a), var_1.d, var_1.b);
    let var_3 = var_1.b.b;
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(func_2(), Struct_3(_wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(abs(-1090f))), vec3<i32>((arg_0 | 1i) >> (_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(27102u, u_input.a.x)) % 32u), 62062i, -2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, u_input.a.x < u_input.a.x), true), ~_wgslsmith_mod_i32(arg_0, -17239i)), abs(reverseBits(u_input.a.x)), arg_0);
    let var_1 = !((var_0.c.x | true) | var_0.c.x);
    var var_2 = all(select(vec4<bool>(all(vec4<bool>(var_1, var_1, true, var_0.c.x)), false, true, u_input.a.x == 0u), !select(vec4<bool>(false, var_1, false, var_1), vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, var_0.c.x, var_0.c.x, var_0.c.x)), true && func_5(Struct_2(49691u, Struct_1(true, 1108f, vec2<f32>(2412f, var_0.a)), vec3<bool>(false, var_1, true), vec2<u32>(u_input.a.x, 4294967295u), Struct_1(var_1, var_0.a, vec2<f32>(var_0.a, var_0.a))), var_0, u_input.a.x, u_input.b).c.x)) != true;
    let var_3 = vec4<i32>(~38299i, 2147483647i, 2147483647i, 78042i) << (~(((vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(22621u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))) & min(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(50428u, 3070u, u_input.a.x, 61746u))) % vec4<u32>(32u));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(floor(-1755f))))), ~(~(-var_0.b) >> (u_input.a % vec3<u32>(32u))), select(func_2().c.yy, vec2<bool>(!select(var_0.c.x, false, true), any(select(vec2<bool>(false, false), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, var_1)))), true), arg_0);
    return Struct_2(_wgslsmith_sub_u32(94998u, 1u), func_2().e, select(!(!func_2().c), select(!select(vec3<bool>(false, var_4.c.x, false), vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(false, var_0.c.x, true)), !(!vec3<bool>(false, var_4.c.x, true)), false), !func_5(func_2(), Struct_3(var_4.a, vec3<i32>(0i, var_0.d, var_3.x), vec2<bool>(var_0.c.x, var_4.c.x), u_input.b), 4294967295u, _wgslsmith_clamp_i32(arg_0, 2147483647i, 2147483647i)).c.x), firstLeadingBit(~reverseBits(u_input.a.zy)), Struct_1(var_4.c.x && !any(var_4.c), -1508f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(519f, var_0.a) + vec2<f32>(var_0.a, var_4.a)))))));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(~(~u_input.a.x), ~arg_3.d.x & arg_3.d.x, firstTrailingBit(~arg_3.a)), firstLeadingBit(u_input.a & vec3<u32>(u_input.a.x, arg_0.d.x, u_input.a.x)) & func_3(-vec2<i32>(u_input.b, -180i))));
    var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.e.b * _wgslsmith_f_op_f32(round(-1184f))), arg_3.b.b, !select(~arg_1 >= -u_input.b, true, true || !arg_3.b.a)));
    let var_2 = Struct_1(arg_3.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.e.c)));
    var_0 = ~_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, u_input.a.x, var_0.x), vec3<u32>(22378u, u_input.a.x, u_input.a.x)), min(arg_3.d.x, var_0.x))), vec3<u32>(545u, firstLeadingBit(u_input.a.x), 0u), vec3<u32>(func_1(-arg_1).d.x, 1u, var_0.x));
    return ~max(vec4<u32>(u_input.a.x >> (~u_input.a.x % 32u), 1u, 2540u, 44425u), vec4<u32>(func_3(vec2<i32>(31219i, 9345i) ^ u_input.c.xx).x, 4294967295u, 1u, ~(arg_3.a << (3511u % 32u))));
}

fn func_7(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = func_2().b;
    let var_1 = 0u;
    var_0 = func_2().b;
    let var_2 = func_2().e;
    let var_3 = vec3<i32>(~(-2147483647i), select(_wgslsmith_mod_i32(0i, -arg_3.x), reverseBits(-2147483647i), arg_0.c.x), 1i) << (~(~arg_2.yyx) % vec3<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(u_input.c.x, ~(i32(-1i) * -8644i), -20790i));
    let var_1 = func_7(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-392f - 1229f), -437f)), -vec3<i32>(i32(-1i) * -39410i, ~(-35027i), select(u_input.c.x, var_0.x, true)), vec2<bool>(all(vec2<bool>(true, true)) || any(vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, u_input.b), vec3<i32>(var_0.x, u_input.c.x, 8475i)) != -2147483647i), _wgslsmith_div_i32(u_input.b, var_0.x) ^ u_input.c.x), vec3<i32>(1i, reverseBits(-(~var_0.x)), countOneBits(u_input.b)), ~vec4<u32>(~u_input.a.x, 0u, 73006u | u_input.a.x, u_input.a.x) << (func_6(func_1(abs(0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, 1i, var_0.x), vec4<i32>(var_0.x, 16754i, var_0.x, 77262i)), vec4<i32>(u_input.c.x, 15416i, 0i, var_0.x)), vec4<bool>(func_5(Struct_2(u_input.a.x, Struct_1(false, 1000f, vec2<f32>(-2335f, 523f)), vec3<bool>(true, true, true), u_input.a.zx, Struct_1(false, -879f, vec2<f32>(1095f, -1074f))), Struct_3(-1918f, u_input.c, vec2<bool>(false, true), 24526i), u_input.a.x, 2147483647i).c.x, u_input.a.x < 0u, any(vec3<bool>(false, false, false)), true), Struct_2(~0u, func_1(-26582i).b, vec3<bool>(true, true, true), vec2<u32>(1u, 4294967295u), Struct_1(true, -1431f, vec2<f32>(442f, 1686f)))) % vec4<u32>(32u)), vec4<i32>(-15148i, ~(13240i & var_0.x), -17052i, ~25685i << (func_1(var_0.x).d.x % 32u)) & vec4<i32>(~func_5(Struct_2(u_input.a.x, Struct_1(true, 818f, vec2<f32>(547f, -732f)), vec3<bool>(false, true, true), u_input.a.xx, Struct_1(true, 175f, vec2<f32>(148f, 956f))), Struct_3(105f, vec3<i32>(var_0.x, var_0.x, 30698i), vec2<bool>(true, false), u_input.c.x), u_input.a.x, 15944i).b.x, _wgslsmith_clamp_i32(-u_input.b, var_0.x, var_0.x), u_input.c.x, 0i));
    var var_2 = !var_1.c.x;
    var var_3 = Struct_1(select(var_1.c.x, var_1.c.x, !all(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false))), _wgslsmith_f_op_f32(abs(func_7(func_5(func_1(u_input.c.x), func_7(var_1, u_input.c, vec4<u32>(28964u, 19699u, u_input.a.x, 27034u), vec4<i32>(var_1.d, var_1.b.x, var_0.x, u_input.b)), select(1u, 22180u, var_1.c.x), 2147483647i), _wgslsmith_mod_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, 32918i), vec3<i32>(-7743i, 2147483647i, -1i))), firstTrailingBit(~vec4<u32>(4294967295u, 46954u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, 0i, 14803i, u_input.c.x), vec4<i32>(-16404i, var_0.x, u_input.b, u_input.b))).a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + vec2<f32>(var_1.a, var_1.a)))))));
    var_3 = Struct_1(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.b, 1068f)), _wgslsmith_f_op_f32(-var_1.a))))), vec2<f32>(-1620f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.b + var_3.c.x))), true))));
    var_2 = func_7(func_7(Struct_3(func_7(func_7(Struct_3(var_1.a, u_input.c, vec2<bool>(var_3.a, true), -1i), vec3<i32>(var_1.d, u_input.c.x, var_1.d), vec4<u32>(0u, 0u, u_input.a.x, 44238u), vec4<i32>(var_0.x, 4515i, 482i, 45973i)), firstLeadingBit(u_input.c), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(var_0.x, var_0.x, var_1.b.x, -1i)).a, vec3<i32>(u_input.b, ~var_0.x, -22057i), vec2<bool>(var_3.a, true), -(u_input.c.x ^ var_1.b.x)), vec3<i32>(1i, 68611i, -(~2147483647i)), min(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 34237u, 42582u) << ((vec4<u32>(34389u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 0u, 44871u)) % vec4<u32>(32u))), max(~vec4<i32>(1i, var_1.d, var_1.b.x, u_input.c.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), vec4<u32>(u_input.a.x, 4294967295u, 0u, 5584u)) % vec4<u32>(32u)), countOneBits(select(vec4<i32>(-2147483647i, 69056i, -1i, var_0.x), vec4<i32>(2147483647i, var_1.d, 0i, var_0.x), vec4<bool>(var_3.a, var_3.a, true, var_1.c.x))))), ~abs(-_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(2147483647i, 2147483647i, -5176i))), vec4<u32>(u_input.a.x, 15845u & (func_6(Struct_2(u_input.a.x, Struct_1(false, 1000f, var_3.c), vec3<bool>(true, false, true), vec2<u32>(12621u, 0u), Struct_1(true, var_1.a, var_3.c)), u_input.c.x, vec4<bool>(var_1.c.x, true, false, var_3.a), Struct_2(u_input.a.x, Struct_1(true, 2018f, var_3.c), vec3<bool>(false, var_3.a, false), u_input.a.xz, Struct_1(true, -1512f, vec2<f32>(var_3.b, -205f)))).x << (~1u % 32u)), u_input.a.x & ~u_input.a.x, 1u), vec4<i32>(-20494i, ~(u_input.c.x >> (~u_input.a.x % 32u)), func_7(Struct_3(_wgslsmith_f_op_f32(abs(678f)), -vec3<i32>(-2574i, 33332i, var_0.x), var_1.c, 0i), vec3<i32>(3321i, 1i, 1i), vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yy), u_input.a.x, ~1u), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c.x, var_0.x, u_input.b, 2147483647i), vec4<i32>(0i, -75342i, -1i, 14502i), var_1.c.x), vec4<i32>(var_1.d, 0i, var_1.b.x, -18022i), abs(vec4<i32>(10940i, var_0.x, var_1.b.x, u_input.b)))).b.x, ~(u_input.b << (~67250u % 32u)))).c.x;
    let var_4 = max(0u, u_input.a.x) >> ((4294967295u | min(4238u, ~u_input.a.x)) % 32u);
    var_0 = u_input.c;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, -706f)), var_1.a, _wgslsmith_f_op_f32(-var_3.b), func_2().b.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1076f, -1221f, var_3.b, var_1.a), vec4<f32>(823f, var_3.b, var_3.b, -1300f)))) - vec4<f32>(-1306f, _wgslsmith_f_op_f32(-var_1.a), 319f, 1216f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, 346f, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1173f, 503f, var_1.a, var_3.c.x))))), vec4<f32>(-969f, var_3.b, 297f, var_3.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, 664f, var_5.x)))), vec4<f32>(1435f, var_3.c.x, _wgslsmith_f_op_f32(-306f - var_5.x), _wgslsmith_f_op_f32(func_4(u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 591f, -450f, var_5.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_3.c.x, -473f, var_1.a) + vec4<f32>(482f, 1730f, var_3.b, 1267f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_1.a, var_1.a, -474f)))))), _wgslsmith_f_op_vec3_f32(min(var_5.xyz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_5.wyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, -2030f, var_3.c.x)), !var_3.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-664f, var_1.a, 839f)), var_5.yww))))), func_7(Struct_3(func_2().e.c.x, countOneBits(select(vec3<i32>(var_1.d, u_input.b, 0i), var_1.b, var_1.c.x)), var_1.c, 1i), vec3<i32>(~u_input.c.x, func_7(func_7(var_1, u_input.c, vec4<u32>(u_input.a.x, 10941u, 44200u, var_4), vec4<i32>(var_0.x, 0i, u_input.c.x, -2147483647i)), u_input.c ^ vec3<i32>(0i, 4885i, -6405i), select(vec4<u32>(u_input.a.x, var_4, u_input.a.x, 0u), vec4<u32>(var_4, 91336u, u_input.a.x, var_4), var_1.c.x), reverseBits(vec4<i32>(u_input.c.x, -28398i, u_input.c.x, u_input.b))).d, var_1.d), vec4<u32>(_wgslsmith_mod_u32(0u, var_4) >> (1u % 32u), u_input.a.x, _wgslsmith_clamp_u32(49174u, ~var_4, var_4), ~_wgslsmith_mod_u32(13736u, u_input.a.x)), max(vec4<i32>(-10036i, min(2147483647i, u_input.c.x), u_input.b, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, -2147483647i, u_input.c.x))), vec4<i32>(~(-2147483647i), ~(-2147483647i), ~u_input.c.x, -977i))).b.x, -1i);
}

