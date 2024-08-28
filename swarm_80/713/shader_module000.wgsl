struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -1000f)) + _wgslsmith_f_op_vec2_f32(exp2(arg_2)))))) * _wgslsmith_f_op_vec2_f32(min(arg_2, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(arg_2, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-482f, arg_2.x))))))))));
    var var_1 = Struct_3(2147483647i);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.c, arg_1.c), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 47149i, 39595i), vec4<i32>(30658i, -2147483647i, 1i, u_input.b)), ~min(1i, arg_1.c.x), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, 2147483647i), arg_1.c.zz), arg_1.c.x), ~0i), abs(min(vec4<i32>(u_input.b, arg_1.c.x, -16948i, -1i) >> (vec4<u32>(4294967295u, 53325u, arg_1.b, 0u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -1i, arg_1.c.x, u_input.b)))) << ((~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.b, 35724u, 12112u), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.b, arg_1.b))) >> ((~(vec4<u32>(1u, u_input.a.x, arg_1.b, u_input.a.x) & vec4<u32>(arg_1.b, 5416u, 4294967295u, 4294967295u)) ^ max(_wgslsmith_clamp_vec4_u32(vec4<u32>(43624u, 4294967295u, arg_1.b, arg_1.b), vec4<u32>(1u, 30472u, 3746u, arg_1.b), vec4<u32>(arg_1.b, arg_1.b, arg_1.b, u_input.a.x)), vec4<u32>(39704u, u_input.a.x, arg_1.b, arg_1.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -599f, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0, arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -366f, arg_2.x) + vec3<f32>(823f, arg_2.x, -1455f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(527f, arg_2.x, var_0.x) * vec3<f32>(arg_0, var_0.x, 520f)), vec3<f32>(1000f, var_0.x, -1252f))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-var_0.x), 1000f)))));
    return select(select(vec4<bool>(select(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, false, false)), false), false, !all(vec3<bool>(true, false, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, true, true)))), vec4<bool>(true, u_input.a.x <= ~_wgslsmith_mult_u32(arg_1.b, 1u), true, any(vec3<bool>(true, true, true)) | false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, !any(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = select((_wgslsmith_add_i32(abs(u_input.b), -2147483647i) ^ countOneBits(arg_3.c.x)) == _wgslsmith_sub_i32(~firstLeadingBit(0i), 36760i), all(!func_3(arg_3.a, Struct_1(-1000f, arg_3.b, vec4<i32>(arg_3.c.x, u_input.b, arg_3.c.x, 6837i)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a, arg_3.a), vec2<f32>(arg_3.a, 1382f)))), u_input.b < 2147483647i);
    var_0 = true;
    let var_1 = arg_3;
    var var_2 = -54663i;
    let var_3 = reverseBits(_wgslsmith_sub_i32(-31481i, select(-19738i, arg_3.c.x, any(vec2<bool>(false, false))))) ^ _wgslsmith_mult_i32(countOneBits(~_wgslsmith_dot_vec4_i32(var_1.c, arg_3.c)), _wgslsmith_add_i32(48298i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 44330i, -2147483647i, 0i) << (vec4<u32>(4294967295u, arg_0, u_input.a.x, var_1.b) % vec4<u32>(32u)), vec4<i32>(var_1.c.x, arg_3.c.x, 14156i, var_1.c.x))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1116f, -438f, -1079f, 669f), vec4<f32>(1507f, 1810f, var_1.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1351f, 538f, 950f, arg_3.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, 1005f, arg_3.a, -1222f) + vec4<f32>(-631f, -353f, arg_3.a, 1361f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.a, 273f, arg_3.a) - vec4<f32>(-1162f, 1217f, var_1.a, 692f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -159f, arg_3.a, 524f), vec4<f32>(-338f, arg_3.a, var_1.a, -1280f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(448f, arg_3.a, -2104f, arg_3.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(168f, arg_3.a, arg_3.a, arg_3.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1704f, var_1.a, 1103f, var_1.a))), any(vec3<bool>(true, true, true)))))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(115f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -372f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1127f, 952f) + _wgslsmith_f_op_f32(trunc(-687f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x, ~max(vec4<u32>(u_input.a.x, u_input.a.x, 30217u, 54844u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)), 1u, Struct_1(-165f, u_input.a.x & u_input.a.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, u_input.b, u_input.b, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(-7540i, arg_0.a, -1i, arg_0.a)))))));
    let var_1 = Struct_2(vec4<i32>(1i, 1i, 1i, abs(min(countOneBits(27410i), 1i << (u_input.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(var_0.x, 565f, var_0.x, var_0.x)), any(vec3<bool>(false, true, true)) & true)) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(-682f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))), var_0.x, var_0.x)), ~u_input.a.zy, ~(-((vec3<i32>(u_input.b, 21655i, arg_0.a) | vec3<i32>(u_input.b, arg_0.a, -32215i)) | (vec3<i32>(u_input.b, arg_0.a, 92610i) | vec3<i32>(41423i, u_input.b, u_input.b)))));
    let var_2 = var_1.a.xw;
    let var_3 = arg_0.a;
    var var_4 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = any(select(vec2<bool>((arg_0.a >= 24659i) | (1u != u_input.a.x), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false))), select(func_3(_wgslsmith_f_op_f32(step(1000f, -1000f)), Struct_1(1955f, u_input.a.x, vec4<i32>(arg_0.a, 23779i, -67965i, 6168i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1234f, -1000f))).ww, select(func_3(1421f, Struct_1(-288f, u_input.a.x, vec4<i32>(0i, 0i, 10985i, 0i)), vec2<f32>(-421f, -1000f)).zx, vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), func_3(-457f, Struct_1(-1011f, u_input.a.x, vec4<i32>(-30478i, 0i, 0i, u_input.b)), vec2<f32>(335f, -1340f)).xx, true)), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))));
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_mod_i32(2147483647i, arg_0.a), firstTrailingBit(-15851i), -8759i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b), vec4<i32>(29350i, -1i, 36458i, u_input.b)) | vec4<i32>(arg_0.a, u_input.b, arg_0.a, arg_0.a)), arg_0.a, i32(-1i) * -(~u_input.b), abs(reverseBits(-1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(989f, 305f, -942f, 338f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1041f, 219f, -433f, 1000f)), false)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-345f)), _wgslsmith_div_f32(591f, -1987f), _wgslsmith_f_op_f32(f32(-1f) * -778f), 568f))), max(u_input.a.xz, min(vec2<u32>(~47354u, ~u_input.a.x), u_input.a.xy)), ~countOneBits(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(8064i, u_input.b, arg_0.a), vec3<i32>(0i, u_input.b, arg_0.a)))));
    var var_2 = ~vec2<i32>(-2147483647i >> (abs(_wgslsmith_clamp_u32(4294967295u, 82068u, 7292u)) % 32u), _wgslsmith_div_i32(var_1.a.x, 16380i));
    var_1 = Struct_2(vec4<i32>(0i, var_1.d.x, arg_0.a, 46106i), vec4<f32>(var_1.b.x, -180f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-183f - -219f)) * var_1.b.x), _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(max(u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x << (4294967295u % 32u))), ~1u), max(vec3<i32>(-2147483647i, firstTrailingBit(1i), ~var_1.a.x) << (u_input.a % vec3<u32>(32u)), countOneBits(var_1.a.yzz)));
    var var_3 = false;
    return var_1.b;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec4<u32>(reverseBits(~arg_0), ~arg_1.c.x, 0u, ~u_input.a.x);
    var var_1 = vec4<i32>(10263i, _wgslsmith_mult_i32((arg_1.d.x | 32964i) | -2147483647i, -u_input.b), u_input.b, arg_1.d.x);
    var_1 = abs(vec4<i32>(max(arg_1.d.x, 1i), _wgslsmith_dot_vec2_i32(countOneBits(arg_1.a.xx), arg_1.a.wx), u_input.b, arg_1.a.x)) & (countOneBits(vec4<i32>(_wgslsmith_mod_i32(arg_1.d.x, var_1.x), u_input.b, _wgslsmith_sub_i32(u_input.b, 0i), _wgslsmith_dot_vec2_i32(arg_1.d.xx, arg_1.d.yy))) >> ((~_wgslsmith_add_vec4_u32(vec4<u32>(19296u, var_0.x, var_0.x, arg_0), vec4<u32>(arg_1.c.x, 0u, 0u, 11003u)) >> (reverseBits(vec4<u32>(arg_1.c.x, 0u, u_input.a.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = -vec4<i32>(u_input.b, var_1.x, _wgslsmith_dot_vec2_i32(~select(var_1.yy, vec2<i32>(-1i, -1i), false), -(var_1.xw | vec2<i32>(49276i, arg_1.d.x))), -1i);
    var_1 = arg_1.a;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f - arg_1.b.x)), 32020u, vec4<i32>(_wgslsmith_mult_i32(u_input.b, -reverseBits(u_input.b)), _wgslsmith_sub_i32(arg_1.d.x | 10295i, _wgslsmith_sub_i32(u_input.b << (1u % 32u), countOneBits(u_input.b))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, -29557i), -var_1.x, arg_1.a.x ^ 0i), abs(max(u_input.b, arg_1.a.x))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-307f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(875f)))))), u_input.a.x, abs(-vec4<i32>(u_input.b, -37848i, u_input.b ^ u_input.b, u_input.b)));
    var_0 = func_5(var_0.b, Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -44727i, 2686i, -2147483647i) ^ -vec4<i32>(var_0.c.x, -1051i, 42301i, var_0.c.x), vec4<i32>(reverseBits(var_0.c.x), 6601i, 1i, abs(-20826i))), _wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_3(2147483647i)))), vec2<u32>(u_input.a.x, 1u), ~min(select(vec3<i32>(u_input.b, 0i, 5125i), vec3<i32>(u_input.b, -2147483647i, -2147483647i), false), min(var_0.c.wwx, var_0.c.wwy))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-777f - 482f), func_5(4294967295u, Struct_2(vec4<i32>(var_0.c.x, -53259i, 2147483647i, u_input.b), vec4<f32>(-1054f, -1000f, -1000f, -856f), u_input.a.yy, vec3<i32>(u_input.b, u_input.b, -52556i))).a))) + _wgslsmith_f_op_f32(f32(-1f) * -824f)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(5550u, 31272u), ~vec2<u32>(4294967295u, 0u))), vec4<i32>(var_0.c.x, abs(var_0.c.x), -2147483647i, -1i));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.b, countOneBits(~(vec4<i32>(-1i) * -var_0.c)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), ~_wgslsmith_mod_u32(117887u, u_input.a.x), vec4<i32>(reverseBits(var_0.c.x) ^ var_0.c.x, var_0.c.x, (11890i | func_1(Struct_3(var_0.c.x)).a) >> (0u % 32u), ~var_0.c.x >> (4244u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_0.c.x, -770i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x, ~(~vec4<u32>(var_0.b, 1u, 26711u, 23642u)), 0u, Struct_1(var_0.a, var_0.b, vec4<i32>(var_0.c.x, u_input.b, var_0.c.x, u_input.b)))).x), vec2<u32>(u_input.a.x, u_input.a.x | var_0.b));
}

