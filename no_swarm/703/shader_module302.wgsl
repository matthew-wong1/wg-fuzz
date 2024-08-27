struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<f32> {
    var var_0 = Struct_1(2630f, arg_0.yww, select(21425u, abs(_wgslsmith_dot_vec2_u32(arg_0.yw, vec2<u32>(767u, arg_0.x))), false), vec2<u32>(33771u, ~arg_0.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(-941f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(597f - 1201f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1155f)))))));
    let var_1 = vec3<bool>(true, ~_wgslsmith_mult_u32(arg_0.x, ~arg_0.x) > _wgslsmith_clamp_u32(var_0.d.x ^ 1u, 50045u, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.c, 36456u), var_0.d.x)), true);
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)), arg_0.xzw, 0u, arg_0.yx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(trunc(var_0.e.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, 1000f, var_0.e.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1633f, var_0.a, -961f), vec3<f32>(var_0.a, -672f, var_0.e.x), false))))));
    var var_2 = 697i;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.e.xz)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(410f, _wgslsmith_f_op_f32(-var_0.e.x)))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_2(min(_wgslsmith_dot_vec2_u32(vec2<u32>(8892u, 4294967295u), countOneBits(vec2<u32>(82822u, 20044u))) | 105374u, countOneBits(_wgslsmith_mult_u32(1u, ~3955u))));
    let var_1 = 0u;
    var var_2 = Struct_3(vec2<i32>(~(-(~u_input.c)), i32(-1i) * -reverseBits(0i)));
    let var_3 = true;
    let var_4 = Struct_2(97997u ^ var_0.a);
    return _wgslsmith_f_op_vec2_f32(func_3(~abs(select(vec4<u32>(var_1, 17197u, 1u, 4294967295u) >> (vec4<u32>(9435u, var_0.a, 1u, var_4.a) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_0.a, 114u, 1u, 1u)), !vec4<bool>(false, var_3, false, true)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), select(vec2<bool>(true, 21734u > arg_2.c.x), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false)), false), vec2<bool>(all(vec4<bool>(true, arg_2.a.b.x <= 1i, true, false)), abs(~10823i) >= _wgslsmith_add_i32(arg_2.a.b.x, -20658i)), all(vec4<bool>(!(arg_2.a.c.x < arg_1.e.x), true, true, true)));
    var var_1 = -_wgslsmith_dot_vec4_i32(firstLeadingBit(~_wgslsmith_mult_vec4_i32(arg_2.a.b, vec4<i32>(28655i, 51408i, arg_2.e.a.x, u_input.b))), max(~firstTrailingBit(vec4<i32>(arg_2.e.a.x, 0i, -2147483647i, 1i)), abs(arg_2.a.b)));
    var var_2 = ~arg_2.e.a;
    var var_3 = Struct_2(8842u);
    var var_4 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.a, 1u, _wgslsmith_add_u32(0u, 41629u), ~0u), vec4<u32>(arg_1.c, ~arg_3.b.x, 55334u, countOneBits(reverseBits(0u))));
    return _wgslsmith_f_op_vec4_f32(arg_2.a.c * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.x, _wgslsmith_f_op_vec2_f32(func_2()).x, -374f, _wgslsmith_f_op_f32(-arg_2.a.c.x)) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(142f - 1000f), _wgslsmith_div_f32(arg_3.e.x, arg_3.a), 124f)))));
}

fn func_1() -> Struct_4 {
    var var_0 = abs(7140u);
    var var_1 = firstTrailingBit(reverseBits(abs(~(u_input.a & u_input.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1735f, -1224f) - vec2<f32>(-845f, -853f)) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(446f, -1294f), vec2<f32>(-1125f, 1405f))))) - _wgslsmith_f_op_vec2_f32(func_2())))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f * -1422f))), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(1u, 24064u), 0u, _wgslsmith_div_u32(4294967295u, 146629u)), vec3<bool>(true, true, true)), 0u, ~vec2<u32>(1u, _wgslsmith_add_u32(1u, 0u)), vec3<f32>(2901f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-727f, -1355f)), _wgslsmith_f_op_f32(trunc(-1371f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1414f)))))), Struct_5(Struct_4(abs(~17066u), -min(vec4<i32>(u_input.b, 0i, -2147483647i, 1i), vec4<i32>(-1i, -36282i, u_input.a.x, var_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, -1154f, 256f, -1000f)), vec4<f32>(-1394f, 188f, 1550f, -1184f))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-12060i, u_input.b, -2147483647i), u_input.b)), ~vec3<u32>(~1u, 4294967295u, 10818u), vec3<u32>(1u, 1u, 1u), abs(vec2<u32>(1u, 1u)), Struct_3(vec2<i32>(var_1.x, ~var_1.x))), Struct_1(1000f, vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~(~1u), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1996u, 4294967295u, 31869u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(283f, -1000f, -1350f) - vec3<f32>(-2047f, 1064f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1298f, -241f, 342f))) - vec3<f32>(-962f, _wgslsmith_f_op_f32(-1256f + -458f), 1000f)))));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), -min(_wgslsmith_clamp_i32(-18897i, u_input.b, _wgslsmith_div_i32(3696i, -1i)), _wgslsmith_mult_i32(-2147483647i, 1i)), _wgslsmith_add_i32(firstTrailingBit(abs(29310i)) ^ u_input.a.x, abs(_wgslsmith_mult_i32(u_input.a.x, -var_1.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1015f, var_2.x, var_2.x, -116f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-454f, -2883f, var_2.x, 1661f), _wgslsmith_f_op_vec4_f32(vec4<f32>(160f, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, var_2.x, -840f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 798f, _wgslsmith_f_op_f32(var_2.x * -1623f), _wgslsmith_div_f32(-386f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -514f, var_2.x, 379f) - vec4<f32>(var_2.x, var_2.x, var_2.x, 426f)) - _wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(-1521f, var_2.x), Struct_1(var_2.x, vec3<u32>(51322u, 0u, 21558u), 1u, vec2<u32>(4294967295u, 0u), var_2.yyx), Struct_5(Struct_4(4294967295u, vec4<i32>(var_3.x, var_3.x, var_3.x, -57067i), vec4<f32>(var_2.x, var_2.x, 425f, 481f), 6258i), vec3<u32>(0u, 0u, 38888u), vec3<u32>(83515u, 51956u, 4294967295u), vec2<u32>(4294967295u, 38967u), Struct_3(vec2<i32>(-1i, u_input.c))), Struct_1(1153f, vec3<u32>(56394u, 4294967295u, 1u), 1u, vec2<u32>(30858u, 20960u), vec3<f32>(-760f, var_2.x, var_2.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(675f, var_2.x, var_2.x, var_2.x) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<f32>(-2079f, var_2.x, var_2.x, var_2.x))))));
    return Struct_4(12447u, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(36597i, 12387i, u_input.b, var_3.x)), ~countOneBits(vec4<i32>(var_1.x, var_3.x, u_input.b, -1i))), vec4<i32>(reverseBits(var_1.x ^ u_input.b), var_3.x, u_input.c, -19582i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, var_2.x, 508f, -677f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 225f) - vec4<f32>(869f, var_2.x, var_2.x, 1999f)))))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(~func_1().a, firstLeadingBit(var_0.b) << (~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, 12325u), vec4<u32>(var_0.a, var_0.a, 27707u, 1u)), ~vec4<u32>(var_0.a, 4294967295u, 22868u, var_0.a)) % vec4<u32>(32u)), var_0.c, var_0.d);
    let var_1 = Struct_3(func_1().b.yx);
    var var_2 = Struct_5(func_1(), ~abs(select(vec3<u32>(1u, var_0.a, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 36503u, var_0.a), vec3<u32>(36038u, var_0.a, var_0.a)), true)), vec3<u32>(~4294967295u, 1u, 4294967295u >> (min(41984u, var_0.a) % 32u)), select(_wgslsmith_clamp_vec2_u32(max(~vec2<u32>(9711u, var_0.a), ~vec2<u32>(4294967295u, var_0.a)), abs(firstLeadingBit(vec2<u32>(1u, var_0.a))), ~firstTrailingBit(vec2<u32>(var_0.a, var_0.a))), ~vec2<u32>(countOneBits(var_0.a), ~var_0.a), !vec2<bool>(false, var_0.d != -14142i)), Struct_3(countOneBits(u_input.a.xy)));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.b.zx, vec2<u32>(abs(var_0.a), 32405u)), abs(abs(vec2<u32>(17571u, 0u) & var_2.b.zz) << (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u))));
    var_2 = Struct_5(var_2.a, vec3<u32>(0u, ~(4294967295u ^ var_3.x) & 21305u, 23606u), var_2.c, abs(var_2.b.zy), var_2.e);
    let var_4 = vec4<bool>(!((-16826i >> (var_2.a.a % 32u)) < -1i) & true, false, true, false);
    var var_5 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_3.x, var_3.x)), var_2.c.yz) & (vec2<u32>(var_0.a ^ var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.a, var_0.a, var_3.x, 0u), vec4<u32>(1u, var_0.a, var_2.b.x, var_3.x))) ^ min(~var_2.c.zz, var_2.c.zx)), _wgslsmith_mult_vec2_u32(var_2.b.zx, var_2.d), abs(_wgslsmith_mult_vec2_u32(var_2.b.zz, var_2.b.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(56017u, var_3.x << (var_3.x % 32u)), ~func_1().a), var_2.d.x), var_0.c.x);
}

