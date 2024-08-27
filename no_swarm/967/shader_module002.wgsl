struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(~select(u_input.b, select(_wgslsmith_mult_vec4_u32(vec4<u32>(40485u, 47961u, 86521u, u_input.b.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 36173u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.a), u_input.b), all(vec4<bool>(false, true, true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-109f, 128f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(trunc(426f)), -167f, 1f), Struct_3(firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(11924u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2274f, -1422f, -1138f, -1369f))))), Struct_2(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.a)), ~(~u_input.b.wxz), Struct_1(~u_input.b.ywx, abs(vec4<u32>(19476u, u_input.b.x, 35104u, 25966u)), vec2<f32>(-2015f, -1142f), 1094f, -u_input.c), ~u_input.b.x)), firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.c.x, 1i))), Struct_1(firstTrailingBit(~u_input.b.yyx), vec4<u32>(0u, 8822u, ~u_input.a, _wgslsmith_sub_u32(max(u_input.b.x, u_input.a), u_input.a)), vec2<f32>(-1715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1599f + -1573f))), _wgslsmith_f_op_f32(f32(-1f) * -1284f), vec3<i32>(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -32740i >> (u_input.b.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 0i, -54955i), vec4<i32>(u_input.c.x, u_input.c.x, 45142i, u_input.c.x)), u_input.c.x))));
    let var_1 = Struct_2(abs(var_0.e.a.zx) ^ u_input.b.yy, ~var_0.e.a, var_0.e, ~u_input.a);
    let var_2 = var_0.e;
    let var_3 = all(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), max(~4294967295u, var_1.a.x) > u_input.b.x, !any(vec2<bool>(true, true)), true));
    let var_4 = select(reverseBits(_wgslsmith_sub_vec2_u32(countOneBits(var_0.a.wz), abs(vec2<u32>(var_2.b.x, 1u)))), _wgslsmith_clamp_vec2_u32(~u_input.b.wz, (vec2<u32>(0u, 30016u) ^ var_2.a.yx) & select(var_2.b.zx, vec2<u32>(var_1.c.b.x, 33304u), vec2<bool>(var_3, false)), vec2<u32>(4294967295u & u_input.a, var_1.c.b.x)), vec2<bool>(var_3, any(select(vec3<bool>(var_3, false, false), vec3<bool>(var_3, true, true), true)))) >> (_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_2.b.x, u_input.a), var_2.b.zw | vec2<u32>(var_0.c.a, 4294967295u), !vec2<bool>(var_3, var_3)) | vec2<u32>(var_2.b.x, _wgslsmith_div_u32(var_0.a.x, 22013u)), vec2<u32>(u_input.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1.b.x), vec2<u32>(28918u, 76756u) | var_0.e.a.xz) & vec2<u32>(18836u, ~var_2.b.x)) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(trunc(var_0.c.b));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_3(~67584u, _wgslsmith_f_op_vec4_f32(func_3()), Struct_2(_wgslsmith_mult_vec2_u32(u_input.b.wy, _wgslsmith_add_vec2_u32(~u_input.b.xw, max(vec2<u32>(1u, u_input.b.x), vec2<u32>(1u, u_input.b.x)))), u_input.b.xxw, Struct_1(u_input.b.wxw, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), vec2<f32>(1098f, 1944f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(288f, 1142f)) - _wgslsmith_f_op_f32(trunc(-316f))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 31917i), vec3<i32>(-13397i, 1645i, 38056i)), countOneBits(u_input.c))), ~(~u_input.b.x) & 32127u));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.c.c.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.c.c * _wgslsmith_f_op_vec2_f32(-var_0.c.c.c)))));
    var var_2 = Struct_4((u_input.b | ~reverseBits(var_0.c.c.b)) | ~countOneBits(vec4<u32>(var_0.a, var_0.a, u_input.b.x, 1u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-624f))), _wgslsmith_f_op_f32(max(var_0.c.c.d, -1364f)), _wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(f32(-1f) * -1023f))), _wgslsmith_f_op_f32(round(922f))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(exp2(var_1.x)))), var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(827f)))), select(true, any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)) & true))), var_0, u_input.c.xx, var_0.c.c);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-1498f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x))))), 113f);
    var_1 = vec2<f32>(-454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) + 886f) * var_0.b.x)));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1602f - var_0.b.x), -551f), -1417f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1612f, 427f)))))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.b.zxx * _wgslsmith_f_op_vec3_f32(func_2())));
    let var_1 = Struct_4(vec4<u32>(~select(~58664u, min(16832u, 0u), true), 37095u, 79813u, 1u ^ _wgslsmith_mult_u32(~u_input.b.x, ~13161u)), arg_0.c.b, arg_0.c, select(u_input.c.yz, vec2<i32>(arg_0.c.c.c.e.x, max(u_input.c.x, max(-1i, 24385i))), _wgslsmith_f_op_f32(step(-425f, _wgslsmith_f_op_f32(min(580f, -882f)))) <= 1246f), Struct_1(arg_0.c.c.b << (arg_0.c.c.b % vec3<u32>(32u)), arg_0.e.b & u_input.b, _wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_f_op_vec2_f32(var_0.xx - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -382f), vec2<f32>(-532f, var_0.x)))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), arg_0.e.d, vec3<i32>(firstTrailingBit(-30985i), 2147483647i, arg_0.c.c.c.e.x) << (vec3<u32>(~9939u, abs(1172u), u_input.b.x) % vec3<u32>(32u))));
    var var_2 = Struct_4(u_input.b & ~(select(var_1.a, var_1.e.b, vec4<bool>(false, true, false, true)) | select(var_1.a, var_1.e.b, vec4<bool>(true, false, false, true))), arg_0.b, var_1.c, var_1.c.c.c.e.zz, arg_0.c.c.c);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.e.d), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f + arg_0.c.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.c.x * 1299f) - _wgslsmith_f_op_f32(-var_1.c.c.c.c.x)))), var_1.e.c.x);
    let var_4 = Struct_3(abs(countOneBits(8742u)), vec4<f32>(-736f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(arg_0.b.x + arg_0.e.c.x))), -147f, -1533f), arg_0.c.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.c.x) + _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(ceil(arg_0.b.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -313f), 300f))), var_1.c.c.c.c.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d - arg_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(302f, arg_2.c.x, true)) - 873f)), 2783f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.d * 177f))), -691f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 411f), 1446f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-348f, 290f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + arg_1))), _wgslsmith_div_f32(-1931f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))), _wgslsmith_f_op_f32(arg_2.d * -2888f)));
    return Struct_2(firstTrailingBit(~(u_input.b.zz ^ ~u_input.b.xx)), ~(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(arg_2.a.x, 4294967295u, arg_2.a.x), reverseBits(u_input.b.www)) & min(~vec3<u32>(arg_0.x, u_input.b.x, 0u), arg_2.a | vec3<u32>(4294967295u, 1u, 12575u))), Struct_1(arg_0, u_input.b, var_0.zy, var_0.x, reverseBits(vec3<i32>(_wgslsmith_sub_i32(-17009i, 8077i), min(arg_2.e.x, arg_2.e.x), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(~(~u_input.b.wwy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1604f * -306f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(159f)) - _wgslsmith_f_op_f32(func_1(Struct_4(vec4<u32>(0u, 1u, u_input.b.x, 53923u), vec4<f32>(-1984f, 1764f, 1200f, 307f), Struct_3(27098u, vec4<f32>(-582f, -451f, 1277f, -785f), Struct_2(vec2<u32>(0u, 41664u), u_input.b.zwz, Struct_1(u_input.b.zxx, u_input.b, vec2<f32>(1698f, 371f), -1000f, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), u_input.b.x)), u_input.c.yy, Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), u_input.b, vec2<f32>(-875f, -1000f), 456f, vec3<i32>(u_input.c.x, u_input.c.x, 19142i))))))) - _wgslsmith_f_op_vec4_f32(func_3()).x), Struct_1(_wgslsmith_clamp_vec3_u32(u_input.b.ywz, vec3<u32>(1u, ~u_input.b.x, ~u_input.b.x), vec3<u32>(4294967295u, 4294967295u, 34460u)), abs(_wgslsmith_add_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), vec4<u32>(28040u, 75155u, u_input.b.x, 0u) & vec4<u32>(24378u, u_input.b.x, 1u, 25384u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1363f, -2152f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-577f, -905f) * vec2<f32>(-385f, 1500f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-141f, 378f))), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(u_input.b, vec4<f32>(-1505f, -965f, -726f, 1000f), Struct_3(u_input.b.x, vec4<f32>(867f, 507f, 1115f, -1048f), Struct_2(u_input.b.zy, vec3<u32>(u_input.b.x, 4294967295u, 48710u), Struct_1(u_input.b.wzy, u_input.b, vec2<f32>(-217f, 1444f), 1263f, vec3<i32>(-1i, u_input.c.x, u_input.c.x)), 83456u)), vec2<i32>(2147483647i, 1i), Struct_1(u_input.b.yzz, u_input.b, vec2<f32>(503f, -298f), -1079f, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)))))), _wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(~0i, _wgslsmith_mult_i32(20442i, 13974i), _wgslsmith_sub_i32(u_input.c.x, -25157i)))));
    var var_1 = func_4(_wgslsmith_add_vec3_u32(u_input.b.xwz, reverseBits(vec3<u32>(var_0.b.x, _wgslsmith_sub_u32(84647u, 1788u), ~var_0.d))), -169f, func_4(~countOneBits(vec3<u32>(20281u, 35307u, u_input.a)), _wgslsmith_f_op_f32(-162f * var_0.c.c.x), var_0.c).c).c;
    var var_2 = firstTrailingBit(~(-15716i));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, 739f, var_1.d, var_0.c.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -852f, var_1.d, var_1.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c.c.x + var_0.c.d), _wgslsmith_f_op_f32(-381f - var_0.c.d), 701f, 2051f)))) * vec4<f32>(var_0.c.d, _wgslsmith_f_op_f32(var_0.c.c.x + -930f), 1694f, _wgslsmith_f_op_f32(round(-811f))));
    var var_5 = Struct_4(abs(~((u_input.b << (vec4<u32>(u_input.b.x, var_1.b.x, 0u, var_0.d) % vec4<u32>(32u))) ^ u_input.b)), var_4, Struct_3(38698u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(min(398f, var_0.c.c.x)), _wgslsmith_f_op_f32(select(var_1.c.x, var_0.c.c.x, true)), _wgslsmith_f_op_f32(var_4.x + var_4.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-718f, var_4.x, 133f, -1000f)))))), var_0), func_4(vec3<u32>(~0u, var_1.a.x >> (~var_0.a.x % 32u), var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x + 1175f), _wgslsmith_f_op_f32(floor(-1550f))), func_4(func_4(vec3<u32>(u_input.b.x, var_0.a.x, 16096u), _wgslsmith_f_op_f32(round(var_4.x)), func_4(vec3<u32>(var_0.d, var_1.b.x, 4294967295u), 990f, Struct_1(var_0.b, var_1.b, var_0.c.c, var_0.c.c.x, vec3<i32>(u_input.c.x, -63433i, var_1.e.x))).c).b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.x, var_1.d) + _wgslsmith_f_op_f32(-var_0.c.d)), func_4(var_0.b, var_0.c.d, func_4(vec3<u32>(var_0.d, var_0.b.x, 18399u), var_1.c.x, Struct_1(var_0.b, vec4<u32>(0u, 7951u, u_input.a, 1u), var_4.xz, 651f, var_1.e)).c).c).c).c.e.yx, func_4(vec3<u32>(0u, _wgslsmith_sub_u32(~var_1.b.x, var_1.b.x), var_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f + 2355f)))), var_0.c).c);
    var var_6 = _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-50520i, ~var_1.e.x, 26702i, 1i), firstLeadingBit(abs(vec4<i32>(-1i, var_1.e.x, var_0.c.e.x, var_5.e.e.x)))), vec4<i32>(-5972i & min(var_0.c.e.x, 0i), max(~(-1i), 11004i | u_input.c.x), ~_wgslsmith_div_i32(u_input.c.x, 41462i), u_input.c.x)));
    var var_7 = select(!(var_1.e.x < (i32(-1i) * -38887i)), false, !(~_wgslsmith_dot_vec2_i32(vec2<i32>(-21191i, -7217i), vec2<i32>(2147483647i, -1i)) != 23011i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(abs(var_0.c.c.x)), true)), func_4(~(~min(vec3<u32>(u_input.a, 0u, 4294967295u), var_0.b)), var_0.c.d, Struct_1(vec3<u32>(func_4(vec3<u32>(var_1.a.x, var_1.b.x, 39398u), var_1.d, Struct_1(var_0.b, u_input.b, var_0.c.c, 557f, var_0.c.e)).c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.b.x, 4294967295u), var_0.b), var_1.b.x), countOneBits(select(var_0.c.b, var_5.c.c.c.b, vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec2_f32(var_0.c.c - vec2<f32>(var_0.c.c.x, -396f)), 882f, ~vec3<i32>(23748i, u_input.c.x, -1i))).c.c);
}

