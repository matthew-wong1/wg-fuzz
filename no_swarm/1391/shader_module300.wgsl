struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(max(~vec4<i32>(~u_input.d.x, min(28309i, -3555i), select(-2147483647i, u_input.c.x, arg_0.a), firstTrailingBit(u_input.e.x)), select(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -35054i, u_input.c.x, u_input.c.x)), -u_input.c, vec4<bool>(true, arg_0.a, arg_0.c.x, false)) ^ u_input.c), 1u, Struct_2(arg_0.a, _wgslsmith_f_op_vec4_f32(trunc(arg_0.b)), arg_0.c, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.d.ywy, firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 0u))), 1609u, firstTrailingBit(~u_input.a.x), min(u_input.b, arg_0.d.x))), -22350i);
    var var_1 = Struct_1(all(vec2<bool>(true & var_0.c.c.x, any(vec4<bool>(arg_0.c.x, true, arg_0.a, false)))));
    let var_2 = var_0.c.d.yx;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -527f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-418f, -895f)), _wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1196f, var_3.x, -2609f, arg_0.b.x))))))));
    return _wgslsmith_f_op_vec3_f32(floor(var_4.zxw));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(-1i | u_input.e.x, select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(select(true, true, true), true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1201f, 858f, -924f, 1000f)), vec2<bool>(true, true), ~u_input.a))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(733f))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(525f)), _wgslsmith_f_op_f32(step(946f, -1559f))))));
    var var_1 = -427f;
    var_1 = var_0.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-436f + var_0.c.x)), -1804f)), _wgslsmith_f_op_f32(-var_0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -779f)));
    let var_3 = Struct_2(true, vec4<f32>(257f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), var_2.x), select(!select(select(var_0.b, var_0.b, var_0.b.x), select(vec2<bool>(false, var_0.b.x), vec2<bool>(false, true), vec2<bool>(false, true)), var_0.b.x), select(!var_0.b, select(vec2<bool>(var_0.b.x, true), var_0.b, vec2<bool>(true, true)), select(var_0.b, vec2<bool>(true, true), var_0.b.x)), var_0.b), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) ^ u_input.a, ~vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(19508u, 4294967295u, u_input.b), u_input.a.xxx), _wgslsmith_add_u32(u_input.a.x, 0u), u_input.b), ~u_input.b, ~u_input.b ^ 63838u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 34559u), u_input.a.xzz))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-565f)) - _wgslsmith_f_op_f32(var_2.x - 660f))))) * _wgslsmith_f_op_f32(step(292f, var_2.x)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_0, vec4<f32>(960f, arg_3.c.x, arg_3.c.x, 152f), arg_3.b, vec4<u32>(0u, 4034u, u_input.a.x, arg_2.x)))).xz - vec2<f32>(arg_3.c.x, -422f))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), 731f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(arg_3.c.x, 2529f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f))) * arg_3.c.xy) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -869f) - vec2<f32>(arg_3.c.x, var_0.x)))))));
    return arg_3;
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = func_4(all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(true, true, true), false, true)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1267f)) - _wgslsmith_f_op_f32(f32(-1f) * -606f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(func_2()), true))) && true, vec4<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, 42660u, 0u, u_input.b)), vec4<u32>(u_input.b, 26308u, u_input.a.x, 76870u))), 45841u, u_input.a.x, ~(~u_input.a.x)), Struct_4(-_wgslsmith_clamp_i32(arg_0.x, 48854i, arg_0.x), select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2194f, 2311f, 904f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, -1779f, -203f))))));
    let var_1 = func_4(var_0.b.x, func_4(!(!var_0.b.x), any(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, false, false), var_0.b.x)), ~vec4<u32>(60141u, 30795u, 0u, 8756u), Struct_4(max(arg_0.x, 2147483647i), !var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, 1307f, 259f)))).c.x == var_0.c.x, u_input.a << (vec4<u32>(10122u, 4294967295u, 75210u, u_input.a.x) % vec4<u32>(32u)), func_4(var_0.b.x, false, vec4<u32>(u_input.a.x, u_input.b, u_input.b, 12814u), Struct_4(_wgslsmith_sub_i32(var_0.a | 0i, ~9577i), !var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(-1968f, var_0.c.x, -1539f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.x, var_0.c.x, -973f), vec3<f32>(var_0.c.x, -1439f, 627f))))))).b;
    var_0 = Struct_4(_wgslsmith_clamp_i32(~(-(-54361i >> (u_input.a.x % 32u))), arg_0.x, (42830i & firstTrailingBit(var_0.a)) << (3689u % 32u)), var_1, _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), var_0.c)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_1.x, vec4<f32>(var_0.c.x, 565f, var_0.c.x, var_0.c.x), var_0.b, u_input.a))), var_0.c)), !vec3<bool>(false, var_0.b.x, true))));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 9062u, 49609u, 0u)), 0u), reverseBits(u_input.a.x)), firstTrailingBit(u_input.b));
    let var_3 = _wgslsmith_dot_vec4_i32(~abs(abs(vec4<i32>(11135i, -1i, 1i, arg_0.x))) << (~(~select(vec4<u32>(0u, 44582u, var_2, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.a.x), var_1.x)) % vec4<u32>(32u)), vec4<i32>(reverseBits(u_input.e.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, arg_0.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), u_input.e.yx)), arg_0.x, firstTrailingBit(select(i32(-1i) * -2147483647i, var_0.a, true))));
    return _wgslsmith_clamp_i32(reverseBits(abs(min(arg_0.x, 32651i) | 0i)), arg_0.x, -19835i);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = (firstTrailingBit(-418i) & _wgslsmith_mult_i32(arg_1.x ^ u_input.c.x, 0i)) | _wgslsmith_dot_vec2_i32(arg_1.wy, select(~(vec2<i32>(-64346i, u_input.c.x) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), min(_wgslsmith_sub_vec2_i32(arg_1.yy, vec2<i32>(-1642i, 1i)), vec2<i32>(arg_1.x, 0i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), !all(arg_2)));
    let var_1 = func_4(true, arg_0.a, u_input.a, Struct_4(-16839i, arg_2.xw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-484f, -802f), _wgslsmith_f_op_f32(394f * 1379f), _wgslsmith_f_op_f32(abs(-450f))))));
    return countOneBits(vec4<i32>(arg_1.x, var_0, _wgslsmith_dot_vec3_i32(reverseBits(~u_input.e), _wgslsmith_mod_vec3_i32(arg_1.wyz, arg_1.xxy)), u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec4_i32(func_5(Struct_1(true), vec4<i32>(_wgslsmith_sub_i32(u_input.e.x, -26028i), u_input.d.x, 1i, func_1(vec3<i32>(u_input.e.x, u_input.e.x, u_input.d.x))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), abs(vec4<i32>(u_input.d.x, 13889i, u_input.d.x, u_input.c.x)) | -_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.e.x, 0i, u_input.c.x, -2147483647i)));
    var_0 = vec4<i32>(~0i, _wgslsmith_add_i32(-42382i, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(12440i, var_0.x)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.c.x, u_input.c.x))))), ~_wgslsmith_add_i32(-2147483647i, -(~u_input.c.x)), u_input.c.x);
    var_0 = firstLeadingBit(abs(-vec4<i32>(-var_0.x, -51827i, -9116i, u_input.d.x)));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -789f, 1565f, 1072f) * vec4<f32>(-1042f, 1000f, -2572f, -316f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(169f, -196f, -734f, -579f) + vec4<f32>(134f, 932f, 103f, -1890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, -113f, 1000f, -1564f))))), vec4<f32>(_wgslsmith_f_op_f32(step(-1368f, -1000f)), _wgslsmith_f_op_f32(106f + -1378f), 933f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1511f * -1000f) + 1f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1971f, 1233f, 1194f, -919f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1178f, -422f, 2673f, 338f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2152f, 1000f, -1914f, -1642f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, -990f, -649f, 272f) * vec4<f32>(-709f, 861f, -523f, -2350f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-851f, 2087f, 2179f, 1337f) - vec4<f32>(-2211f, 214f, 1603f, -917f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2387f, 481f, 1436f, -1299f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_2.yxy, countOneBits(~(~30340u)) << (_wgslsmith_add_u32(u_input.a.x & _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 4294967295u) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(round(-1498f)), _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(min(var_2.x, var_2.x))) + var_2))), var_2);
}

