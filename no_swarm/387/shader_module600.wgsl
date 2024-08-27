struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f - 1618f) - 205f))), _wgslsmith_f_op_f32(-2376f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(959f)) - 837f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(623f, -1128f), _wgslsmith_f_op_f32(f32(-1f) * -334f))))), _wgslsmith_f_op_f32(f32(-1f) * -123f), all(vec3<bool>(true, true, true)))), 1685f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -847f, var_0.x), vec3<f32>(-127f, var_0.x, var_0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1447f), vec3<f32>(var_0.x, var_0.x, var_0.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -970f), -617f, _wgslsmith_f_op_f32(1469f - var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -773f), vec3<f32>(var_0.x, 1300f, var_0.x))))), vec3<f32>(-180f, var_0.x, 494f)));
    let var_1 = Struct_1(52637u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), var_0.yz))))), var_0.yx)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, select(false, true, true)))), vec2<f32>(var_0.x, 307f));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1046f, 1250f, 140f))), vec3<f32>(-845f, -692f, -801f))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(447f + var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) - _wgslsmith_f_op_f32(-2437f + var_0.x)), 2616f))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f))), var_0.x)));
    var var_2 = vec4<bool>(false, true, true, all(!vec3<bool>(var_1.c, true && var_1.c, var_1.c)));
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, -u_input.a), u_input.a);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_3(!(!arg_1), min(u_input.a, u_input.a), arg_0.c);
    var var_1 = vec2<i32>(func_3(), _wgslsmith_mod_i32(~2147483647i, var_0.b));
    var var_2 = arg_0.c;
    let var_3 = false;
    var_1 = reverseBits(vec2<i32>(abs(abs(var_1.x)), i32(-1i) * -12935i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.b.x * _wgslsmith_div_f32(-1210f, var_0.c.b.x)))), arg_0.d.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(1u, ~max(91167u, arg_1.c.a)), 4294967295u, ~(~(_wgslsmith_div_u32(0u, 11852u) >> (_wgslsmith_clamp_u32(0u, 20052u, arg_1.c.a) % 32u))));
    var var_1 = any(vec2<bool>(true, arg_1.a.x));
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_sub_u32(0u, arg_1.c.a);
    var var_4 = countOneBits(firstTrailingBit(~var_2)) ^ _wgslsmith_dot_vec2_i32(max(abs(vec2<i32>(1212i, arg_1.b) >> (var_0.yx % vec2<u32>(32u))), arg_2.yz), arg_2.zz);
    return Struct_1((_wgslsmith_dot_vec4_u32(max(vec4<u32>(13146u, var_3, arg_1.c.a, 4294967295u), vec4<u32>(0u, arg_1.c.a, 50237u, var_0.x)), vec4<u32>(arg_1.c.a, arg_1.c.a, 13870u, 4294967295u)) & ~(var_3 & 6745u)) >> (~min(0u, firstTrailingBit(4294967295u)) % 32u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_3.yy)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.d.x + -1000f), _wgslsmith_f_op_f32(-arg_3.x))))), any(arg_1.a.xwz), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.d)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), false), select(all(vec3<bool>(true, false, false)) & false, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), any(vec2<bool>(true, true)))), u_input.a, func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<f32>(-675f, -2161f, -942f), vec3<f32>(1000f, -328f, -1525f), Struct_1(77897u, vec2<f32>(-941f, 1603f), false, vec2<f32>(-1000f, -1582f)), vec3<f32>(-782f, -772f, -2084f), vec2<u32>(4294967295u, 0u)), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -206f), vec2<f32>(-1263f, 1107f), vec2<bool>(false, false))), vec2<f32>(-198f, -584f), all(vec4<bool>(true, true, false, false)))), all(vec3<bool>(true, false, true)) && true)), Struct_3(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), reverseBits(i32(-1i) * -36225i), Struct_1(1u >> (1u % 32u), vec2<f32>(581f, -218f), true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(473f, 763f))))), _wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(-6632i, 32059i, 1i)), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, 1i), vec3<i32>(24524i, 14884i, u_input.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(903f, -1279f, -209f))))))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 5773i, var_0.b, -14478i), vec4<i32>(var_0.b, u_input.a, 32905i, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(-37366i, 33158i, -19181i, var_0.b)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, var_0.b, -2147483647i, 21325i), firstLeadingBit(vec4<i32>(-1i, 1453i, u_input.a, u_input.a))) | -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 4486i, -1i, u_input.a), vec4<i32>(var_0.b, 1i, u_input.a, -2092i))), select(u_input.a, _wgslsmith_sub_i32(u_input.a, var_0.b), firstTrailingBit(var_0.b) > _wgslsmith_dot_vec2_i32(vec2<i32>(27313i, 44022i), vec2<i32>(-1i, -1i))) | -1i, ~u_input.a);
    var_1 = -(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.b), countOneBits(vec3<i32>(u_input.a, -1i, u_input.a))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 12990i, u_input.a) >> (vec3<u32>(var_0.c.a, var_0.c.a, 34278u) % vec3<u32>(32u)), vec3<i32>(2147483647i, 15741i, u_input.a) << (vec3<u32>(var_0.c.a, 1u, 1u) % vec3<u32>(32u)))));
    var var_2 = var_0;
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1354f), -624f, var_2.c.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(412f, -1553f, -297f))))), Struct_1(var_0.c.a, var_0.c.b, !all(var_2.a.ww), var_2.c.d), vec3<f32>(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec2_f32(step(var_2.c.b, var_2.c.d)), var_0, vec3<i32>(-8326i, var_1.x, 1i), vec3<f32>(1135f, var_0.c.d.x, -1082f)).b.x), var_0.c.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<f32>(var_0.c.b.x, -899f, -1661f), vec3<f32>(994f, 674f, -331f), Struct_1(68366u, var_2.c.b, var_0.c.c, vec2<f32>(var_0.c.b.x, -246f)), vec3<f32>(var_0.c.d.x, -1379f, var_2.c.b.x), vec2<u32>(var_2.c.a, var_2.c.a)), var_0.a)).x + 754f), _wgslsmith_f_op_f32(trunc(var_0.c.b.x))))), vec2<u32>(abs(1u), ~var_2.c.a));
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.b.x), var_2.c.d.x))), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, 1000f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1883f, -1148f))), var_2.a.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-394f, -881f, -332f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_2.b.x, arg_1.d.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wxz)), Struct_1(_wgslsmith_sub_u32(arg_2.a, (var_0.a | 29465u) >> (firstLeadingBit(1u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-667f, -580f), vec2<f32>(1333f, arg_0.x), arg_2.c)))), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f + arg_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b.x, 665f, var_0.b.x)))))), select(vec2<u32>(~var_0.a, 1u), ~(~vec2<u32>(arg_1.a, arg_2.a)), true) & vec2<u32>(~arg_1.a, firstTrailingBit(arg_2.a)));
    return Struct_3(!(!vec4<bool>(false, true, var_1.c.c, true)), 18549i, Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_1.e, vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(14566u, arg_2.a)), var_0.b, all(vec3<bool>(true, any(vec4<bool>(false, false, arg_1.c, true)), !arg_1.c)), _wgslsmith_f_op_vec2_f32(select(var_1.d.zx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_2.d + vec2<f32>(-222f, arg_1.d.x)))), !(!vec2<bool>(true, var_1.c.c))))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_u32(arg_1.c.a, 0u, arg_2.x);
    var_0 = abs(arg_1.c.a);
    var_0 = _wgslsmith_add_u32(max(func_5(vec4<f32>(arg_0.c.b.x, _wgslsmith_f_op_f32(-arg_0.c.d.x), -961f, func_1().b.x), func_1(), func_1(), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, arg_0.b, 21946i), vec4<i32>(-61386i, arg_0.b, -24373i, 1i)))).c.a, ~min(arg_2.x, _wgslsmith_mult_u32(15523u, 23716u))), ~1u);
    var var_1 = Struct_1(4294967295u, _wgslsmith_div_vec2_f32(arg_1.c.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.c.d, vec2<f32>(arg_0.c.d.x, -999f)))))), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1400f), _wgslsmith_f_op_f32(f32(-1f) * -551f))));
    var var_2 = Struct_1(firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.c.a, 28681u), _wgslsmith_sub_u32(arg_2.x, 6437u))), var_1.b, any(!vec4<bool>(true, arg_0.c.c, var_1.c, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.d) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x), arg_0.c.b)));
    return arg_1.a.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = any(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_2 = select(!vec2<bool>(!(true && var_1), !(u_input.a < -36160i)), vec2<bool>(true, any(!vec2<bool>(var_1, false))), select(func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1870f, 1713f, -1105f, -1528f) - vec4<f32>(-823f, -904f, 1140f, -747f)), func_1(), Struct_1(63921u, vec2<f32>(-1000f, -1000f), var_1, vec2<f32>(-900f, 1000f)), vec4<i32>(var_0, 62312i, var_0, 2147483647i) ^ vec4<i32>(u_input.a, 12005i, -1i, -2147483647i)), Struct_3(!vec4<bool>(false, false, var_1, false), i32(-1i) * -1i, Struct_1(19348u, vec2<f32>(-812f, -1000f), false, vec2<f32>(-385f, -104f))), vec3<u32>(1u, 1u, 1u), all(vec2<bool>(true, false))), func_6(Struct_3(!vec4<bool>(true, var_1, false, var_1), min(13808i, -7893i), Struct_1(0u, vec2<f32>(-1562f, 1000f), var_1, vec2<f32>(-2205f, 1406f))), Struct_3(!vec4<bool>(true, var_1, var_1, true), 2147483647i, func_5(vec4<f32>(-813f, -128f, 294f, 1000f), Struct_1(1u, vec2<f32>(1000f, 329f), false, vec2<f32>(-1113f, -856f)), Struct_1(40092u, vec2<f32>(-265f, 302f), true, vec2<f32>(428f, -604f)), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1579i)).c), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !vec3<bool>(var_1, var_1, true)), var_0 > u_input.a), vec2<bool>(true, any(!vec4<bool>(var_1, var_1, var_1, true)))));
    let var_3 = select(!vec4<bool>(true, !(!var_2.x), !var_2.x, true | func_5(vec4<f32>(-516f, 1836f, 466f, 963f), Struct_1(15489u, vec2<f32>(-121f, 382f), false, vec2<f32>(1000f, -390f)), Struct_1(3181u, vec2<f32>(1726f, -442f), false, vec2<f32>(-1459f, 1104f)), vec4<i32>(var_0, var_0, -1i, u_input.a)).c.c), !select(!select(vec4<bool>(false, false, var_1, false), vec4<bool>(var_1, var_1, var_2.x, true), var_2.x), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1004f, 1762f, -1000f, -3536f)), func_5(vec4<f32>(1902f, -508f, 291f, -2043f), Struct_1(3904u, vec2<f32>(1155f, 317f), var_2.x, vec2<f32>(399f, 1000f)), Struct_1(11806u, vec2<f32>(-844f, 648f), true, vec2<f32>(-726f, -227f)), vec4<i32>(var_0, -1i, -35279i, var_0)).c, Struct_1(4294967295u, vec2<f32>(333f, 955f), true, vec2<f32>(-1404f, -1438f)), vec4<i32>(2147483647i, 4022i, u_input.a, 2147483647i)).a, !vec4<bool>(true, var_2.x, var_2.x, var_1)), !vec4<bool>(!var_1, true, true, _wgslsmith_f_op_f32(ceil(308f)) < _wgslsmith_f_op_f32(467f * 246f)));
    var_2 = !func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(max(945f, -692f)), _wgslsmith_f_op_f32(-1000f - -645f), _wgslsmith_f_op_f32(f32(-1f) * -1476f)), Struct_1(1u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1024f, 1000f), vec2<f32>(-297f, -297f))), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1184f, 567f) - vec2<f32>(-1716f, -1613f))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, -171f, 377f, -356f)), func_5(vec4<f32>(-2208f, -582f, 1305f, 333f), Struct_1(22990u, vec2<f32>(-2296f, -476f), true, vec2<f32>(-633f, 1513f)), Struct_1(27270u, vec2<f32>(-998f, 528f), true, vec2<f32>(-372f, 326f)), vec4<i32>(u_input.a, var_0, -19500i, 1i)).c, func_1(), abs(vec4<i32>(var_0, 1i, 24983i, u_input.a))).c, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -21725i, 0i, var_0), vec4<i32>(-2147483647i, var_0, var_0, 2147483647i)), countOneBits(vec4<i32>(-23404i, -52354i, -2147483647i, u_input.a)))), Struct_3(var_3, _wgslsmith_sub_i32(u_input.a, 1403i) | -27674i, Struct_1(_wgslsmith_div_u32(4294967295u, 52015u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(840f, -641f))), true, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(351f, 780f))))), vec3<u32>(~func_5(vec4<f32>(-1391f, 1000f, 519f, 1426f), Struct_1(4294967295u, vec2<f32>(-2148f, -1000f), var_1, vec2<f32>(1067f, -419f)), Struct_1(1u, vec2<f32>(382f, -1231f), false, vec2<f32>(-923f, 807f)), vec4<i32>(-27654i, -52749i, u_input.a, var_0)).c.a, 51256u, 23238u), all(vec2<bool>(!var_1, any(vec4<bool>(false, var_1, var_1, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1213f, _wgslsmith_div_f32(1391f, -1449f)), abs(abs(vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f - 922f)), _wgslsmith_f_op_f32(-1003f * 2478f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -653f))))), countOneBits(vec2<u32>(~(~23444u), 4294967295u)));
}

