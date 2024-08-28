struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1505f, -807f, 1000f)), vec3<f32>(2467f, -312f, -1165f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, 1306f, 100f)))), _wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-64916i, u_input.c, 8348i), vec3<i32>(u_input.b, 9158i, u_input.c), vec3<i32>(u_input.c, 20128i, u_input.b))), ~firstTrailingBit(vec3<i32>(1i, u_input.c, u_input.c))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(0u, u_input.a.x)), 1u, _wgslsmith_div_u32(abs(1u), ~7575u)), !(1u > ~u_input.a.x)), -931f);
    let var_1 = Struct_4(var_0.a, 534f, select(u_input.a.zz, u_input.a.xz, !any(vec2<bool>(var_0.a.d, false))), countOneBits(0i) ^ _wgslsmith_div_i32(var_0.a.b.x, var_0.a.b.x));
    var var_2 = select(select(select(select(vec4<bool>(var_1.a.d, false, true, var_1.a.d), !vec4<bool>(false, var_0.a.d, var_0.a.d, var_0.a.d), all(vec4<bool>(false, var_1.a.d, true, var_1.a.d))), select(select(vec4<bool>(var_0.a.d, var_1.a.d, false, true), vec4<bool>(var_1.a.d, false, var_0.a.d, var_1.a.d), vec4<bool>(false, var_0.a.d, var_0.a.d, var_1.a.d)), vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.d, false, var_1.a.d, var_0.a.d)), vec4<bool>(var_0.a.b.x >= 41210i, !var_0.a.d, var_1.a.d, var_1.a.d)), select(vec4<bool>(u_input.c != u_input.b, all(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, var_0.a.d, false))), select(!vec4<bool>(false, false, var_0.a.d, false), select(vec4<bool>(false, false, false, var_1.a.d), vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_1.a.d, var_0.a.d)), var_0.a.d), !select(vec4<bool>(true, false, true, var_1.a.d), vec4<bool>(var_0.a.d, var_0.a.d, true, false), vec4<bool>(true, var_0.a.d, true, var_0.a.d))), true), !vec4<bool>(!var_0.a.d || any(vec2<bool>(var_0.a.d, var_0.a.d)), var_1.a.d, all(vec2<bool>(var_0.a.d, true)) | true, all(!vec3<bool>(true, false, var_1.a.d))), ~(~(~70867u)) > max(16574u, u_input.a.x));
    return _wgslsmith_sub_u32(68349u, abs(65983u));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 847f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1341f, arg_0) * vec3<f32>(arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -1472f, 1000f)))), select(~(vec3<i32>(u_input.b, 2147483647i, 29887i) | vec3<i32>(u_input.b, -23765i, u_input.b)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, u_input.c, 0i), vec3<i32>(-12007i, u_input.c, 1i) >> (arg_1.xwy % vec3<u32>(32u)), ~vec3<i32>(-7584i, 6497i, u_input.c)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 1u, true), _wgslsmith_f_op_f32(arg_0 - 914f), vec2<u32>(func_3(), 19406u), reverseBits(~(-reverseBits(-11685i))));
    global0 = var_0.a.d;
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(26743u, var_0.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.c, _wgslsmith_clamp_u32(abs(17501u), 1u, func_3())), vec2<u32>(var_0.c.x, _wgslsmith_add_u32(1972u, 33744u))));
    var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.a)))), var_0.a.b, arg_1.x, any(vec3<bool>(var_0.a.d, !var_0.a.d, true))), var_0.b, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(u_input.a.x, 49018u)), var_1.x) | ~reverseBits(u_input.a.yz), var_0.d);
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1505f - var_0.a.a.x), 224f, true))))), ~(~vec2<u32>(arg_1.x, abs(19721u))), reverseBits(0i));
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + var_0.a.a.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_4(arg_0.d, _wgslsmith_div_f32(arg_0.c.a.a.x, -1777f), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 7757u, arg_0.a.c)), ~1u), -arg_0.a.b.x);
    global0 = any(vec4<bool>(var_0.a.b.x > (i32(-1i) * -36876i), !arg_0.a.d, var_0.a.d, arg_0.a.c < _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 43343u), 24573u)));
    global0 = !var_0.a.d;
    let var_1 = -1000f;
    var var_2 = _wgslsmith_div_vec4_i32(-select(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, -2147483647i, 0i, u_input.b), vec4<i32>(1i, u_input.c, arg_2.x, -6694i)), select(vec4<i32>(2147483647i, -34579i, arg_2.x, 0i), vec4<i32>(u_input.c, u_input.c, 2147483647i, 62344i), var_0.a.d), arg_0.a.d), vec4<i32>(arg_0.d.b.x, -arg_0.b, ~36077i, firstLeadingBit(2147483647i)), all(vec3<bool>(true, var_0.a.d, var_0.a.d))), -(~(-(vec4<i32>(u_input.c, arg_2.x, -10494i, arg_1.x) >> (vec4<u32>(arg_0.d.c, 1u, arg_0.c.a.c, arg_0.c.a.c) % vec4<u32>(32u))))));
    return func_2(arg_0.d.a.x, vec4<u32>(0u, 64611u, select(arg_0.c.a.c, min(arg_0.d.c, 4294967295u), !arg_0.d.d) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.c, 4294967295u, 83015u, var_0.c.x), select(vec4<u32>(u_input.a.x, 0u, 75660u, u_input.a.x), vec4<u32>(arg_0.d.c, u_input.a.x, 1u, 38468u), false)) % 32u), arg_0.a.c)).a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> vec2<bool> {
    global0 = arg_0.c.x >= ((u_input.a.x ^ ~(~arg_1.a.c)) | u_input.a.x);
    let var_0 = 1287f;
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-164f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(var_0, 374f)))) + var_0), vec4<u32>(arg_1.a.c, arg_2.c.x, 0u, arg_2.a.c & 75398u)).a;
    global0 = false;
    var var_2 = arg_0.a;
    return select(vec2<bool>(false, all(!select(vec2<bool>(false, var_1.d), vec2<bool>(true, false), false))), !vec2<bool>(func_2(_wgslsmith_f_op_f32(var_0 * 1700f), firstTrailingBit(vec4<u32>(u_input.a.x, arg_1.a.c, 1u, 4294967295u))).a.d, arg_1.a.d), !select(!var_2.d & true, func_4(Struct_3(arg_0.a, -2147483647i, arg_1, arg_1.a), vec3<i32>(-1i, var_1.b.x, 36681i), arg_1.a.b).d, all(!vec4<bool>(arg_1.a.d, var_1.d, true, var_2.d))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec2_f32(arg_1.xx, arg_1.yx);
    let var_1 = 113921u;
    var var_2 = func_5(Struct_4(func_4(Struct_3(arg_0.a, _wgslsmith_clamp_i32(arg_0.a.b.x, arg_0.a.b.x, -47421i), func_2(1882f, vec4<u32>(arg_0.a.c, 82150u, u_input.a.x, u_input.a.x)), arg_0.a), select(arg_0.a.b, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -5357i, arg_0.d), arg_0.a.b), arg_0.a.d), ~(-vec3<i32>(arg_0.a.b.x, 4315i, arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1000f) * _wgslsmith_div_f32(1353f, -641f))), max(arg_0.c, vec2<u32>(~var_1, func_3())), u_input.c), Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))), Struct_4(func_2(_wgslsmith_f_op_f32(select(404f, _wgslsmith_f_op_f32(floor(var_0.x)), !arg_0.a.d)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(67580u, 4294967295u, 4294967295u, arg_0.a.c), vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_1))).a, var_0.x, vec2<u32>(63998u, 42263u), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(28772i, -2147483647i, -1i, -1i) >> (vec4<u32>(u_input.a.x, u_input.a.x, var_1, u_input.a.x) % vec4<u32>(32u))), ~reverseBits(vec4<i32>(35357i, -1i, u_input.b, 2147483647i)))));
    let var_3 = max(vec3<u32>(arg_0.a.c & u_input.a.x, 4294967295u >> (_wgslsmith_add_u32(47309u, u_input.a.x) % 32u), var_1), abs(~(u_input.a ^ u_input.a))) | u_input.a;
    var var_4 = _wgslsmith_mod_i32(i32(-1i) * -1i, arg_0.d);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_1)), countOneBits(~(arg_0.a.b ^ arg_0.a.b)), 85234u, true), abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-18375i, -2147483647i), vec2<i32>(2147483647i, 0i))), func_2(1585f, ~(~vec4<u32>(0u, 1u, var_1, 0u))), Struct_1(arg_1, _wgslsmith_mult_vec3_i32(vec3<i32>(68381i, i32(-1i) * -30583i, min(0i, u_input.b)), ~abs(arg_0.a.b)), reverseBits(~47951u), false));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = vec3<i32>(-arg_1.b.x, -2147483647i, _wgslsmith_mod_i32(abs(-28485i), _wgslsmith_mod_i32(arg_1.b.x, u_input.b)));
    var var_1 = arg_0.d;
    var var_2 = vec2<u32>(~arg_0.c.a.c, var_1.c);
    let var_3 = !select(vec4<bool>(true, arg_1.d && true, arg_0.d.d, (arg_1.d && true) || any(vec4<bool>(var_1.d, true, true, var_1.d))), !(!(!vec4<bool>(arg_1.d, arg_0.a.d, true, var_1.d))), select(!(!vec4<bool>(var_1.d, true, arg_1.d, true)), !select(vec4<bool>(arg_0.c.a.d, true, arg_0.a.d, arg_0.d.d), vec4<bool>(arg_1.d, arg_0.c.a.d, arg_0.d.d, arg_0.c.a.d), arg_1.d), true));
    global0 = u_input.a.x >= reverseBits(var_1.c);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (~2147483647i >> (_wgslsmith_mult_u32(select(u_input.a.x & u_input.a.x, 7342u, false), 0u) % 32u)) >= ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(29859i, 2147483647i)));
    global0 = !(!(!func_6(func_1(Struct_4(Struct_1(vec3<f32>(-1038f, -768f, -419f), vec3<i32>(-6532i, -46553i, 0i), 8012u, true), -312f, u_input.a.yz, u_input.b), vec3<f32>(1981f, -1016f, 1274f)), func_2(-876f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)).a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(760f, -637f, -1003f, -731f), vec4<f32>(2509f, 428f, -919f, 1000f), false)))));
    let var_0 = _wgslsmith_mod_u32(func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1094f, -906f, 451f))), -vec3<i32>(0i, u_input.b, u_input.c), 4294967295u, func_4(Struct_3(Struct_1(vec3<f32>(-1538f, 747f, 106f), vec3<i32>(0i, 0i, -1i), u_input.a.x, false), u_input.c, Struct_2(Struct_1(vec3<f32>(1059f, 354f, -966f), vec3<i32>(u_input.c, u_input.c, u_input.b), u_input.a.x, true), 880f), Struct_1(vec3<f32>(355f, -930f, 126f), vec3<i32>(u_input.b, -91360i, 81471i), u_input.a.x, true)), vec3<i32>(-1i, -24997i, 1i), vec3<i32>(-1i, 0i, -2147483647i)).d), u_input.c, func_2(func_1(Struct_4(Struct_1(vec3<f32>(377f, 1000f, -744f), vec3<i32>(2147483647i, u_input.c, u_input.b), u_input.a.x, false), 1257f, u_input.a.zz, -26972i), vec3<f32>(528f, -1748f, 156f)).d.a.x, firstTrailingBit(vec4<u32>(47072u, u_input.a.x, u_input.a.x, u_input.a.x))), func_2(_wgslsmith_div_f32(634f, 442f), ~vec4<u32>(72336u, u_input.a.x, u_input.a.x, 4294967295u)).a), -(~(-vec3<i32>(u_input.b, 1i, u_input.b))), vec3<i32>(0i, _wgslsmith_sub_i32(u_input.c, abs(1i)), u_input.c)).c, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x));
    global0 = !((func_1(Struct_4(Struct_1(vec3<f32>(-199f, 1565f, 157f), vec3<i32>(u_input.c, 0i, 2147483647i), u_input.a.x, true), 278f, u_input.a.xx, u_input.b), vec3<f32>(-455f, 463f, -295f)).c.a.b.x == u_input.c) && true) & !(0u >= var_0);
    var var_1 = func_1(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(619f, 344f, 849f) * vec3<f32>(-616f, -200f, 2326f)) + vec3<f32>(-960f, -171f, -172f)), abs(min(vec3<i32>(u_input.b, 24554i, -1i), vec3<i32>(u_input.c, u_input.c, 1i))), ~var_0, all(vec2<bool>(true, false)) && true), -1343f, ~_wgslsmith_mult_vec2_u32(~u_input.a.zy, u_input.a.xy), -u_input.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2639f * 460f), -632f, -1139f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), func_1(Struct_4(Struct_1(vec3<f32>(-1362f, 602f, 141f), vec3<i32>(0i, -18400i, 2147483647i), var_0, false), 1658f, u_input.a.yx, u_input.b), vec3<f32>(106f, -1524f, 144f)).c.a.a.x, _wgslsmith_div_f32(172f, 682f))))));
    global0 = false;
    global0 = -837f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f + _wgslsmith_div_f32(func_1(Struct_4(Struct_1(vec3<f32>(-743f, var_1.c.b, var_1.c.b), var_1.c.a.b, var_0, var_1.a.d), -1017f, u_input.a.zy, 2147483647i), vec3<f32>(547f, var_1.a.a.x, var_1.d.a.x)).a.a.x, -2222f)));
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~(~69323u)), _wgslsmith_div_u32(var_0, abs(36433u))), 688f, _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_mult_i32(func_1(Struct_4(Struct_1(vec3<f32>(var_1.d.a.x, var_2.b, var_1.d.a.x), vec3<i32>(29337i, -1i, var_1.b), var_2.a.c, false), _wgslsmith_div_f32(983f, var_2.b), _wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.zx), ~u_input.b), var_2.a.a).c.a.b.x, func_2(var_1.c.b, firstTrailingBit(vec4<u32>(u_input.a.x, var_2.a.c, var_1.c.a.c, var_2.a.c))).a.b.x << (~(~var_1.d.c) % 32u)), ~var_2.a.c);
}

