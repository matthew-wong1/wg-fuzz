struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_f32(414f + arg_0.d.a.x), arg_0.d.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(floor(arg_0.c.a.x)), _wgslsmith_f_op_f32(-arg_0.d.a.x))), select(arg_1.wyx, !(!arg_1.wyw), vec3<bool>(true, 47431u > u_input.b.x, arg_1.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(max(861f, 1765f)), _wgslsmith_f_op_f32(trunc(arg_0.d.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.a.x, 354f, arg_0.d.a.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.a.x, 1662f, arg_0.c.a.x))), !arg_0.e)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.a.x, arg_0.c.a.x, 914f))))))));
    var var_1 = _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(47272i, 2147483647i, 0i, u_input.a) | ~vec4<i32>(-58256i, arg_2, u_input.a, 37622i))), vec4<i32>(u_input.a, -(~(-1i)), 5218i, 0i));
    var_1 = _wgslsmith_div_vec4_i32(-(vec4<i32>(firstLeadingBit(1i), -2147483647i, firstTrailingBit(-42308i), arg_2) ^ ~vec4<i32>(30201i, u_input.a, -72194i, -48910i)), vec4<i32>(-_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2, 0i, arg_2), vec4<i32>(27148i, 1i, -28432i, -27146i))), u_input.a, 0i, -u_input.a ^ firstTrailingBit(var_1.x)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(440f, 550f) + var_0.zx)), vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 1u), u_input.b.x))), ~_wgslsmith_div_u32(~max(11931u, 19780u), min(u_input.b.x, arg_0.c.b.x)), select(!select(!arg_1.yww, !vec3<bool>(arg_1.x, arg_1.x, true), all(vec2<bool>(arg_1.x, arg_1.x))), vec3<bool>(any(vec4<bool>(arg_0.e, arg_0.b, arg_0.b, false)) | false, any(!arg_1), arg_0.b), select(!arg_1.xxz, !(!vec3<bool>(true, arg_0.b, false)), vec3<bool>(arg_1.x || true, !arg_0.e, false))), false, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.xz)) * var_0.xz), vec2<f32>(arg_0.c.a.x, -810f))), ~(~vec2<u32>(0u, 10566u))));
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-43602i, var_1.x, -48275i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_1.wy) | u_input.a)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, var_1.x, var_1.x, -1i), vec4<i32>(51899i, var_1.x, -2147483647i, arg_2), false), -vec4<i32>(40767i, -57138i, var_1.x, u_input.a)), ~var_1.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -49892i), vec2<i32>(-1i, arg_2) | var_1.xz), ~u_input.a), 30852i, -(-u_input.a | _wgslsmith_sub_i32(-13868i, -91047i))), ~countOneBits(vec4<i32>(var_1.x, 2147483647i, 0i, var_1.x) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_2, -12113i, var_1.x), vec4<i32>(var_1.x, -30380i, 1i, 33925i))));
    return reverseBits(arg_0.a.b.x);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(715f, 304f))))), ~vec2<u32>(func_3(Struct_2(Struct_1(vec2<f32>(1225f, -332f), u_input.b.xx), false, Struct_1(vec2<f32>(1538f, 1000f), vec2<u32>(23039u, u_input.b.x)), Struct_1(vec2<f32>(-1453f, 1392f), vec2<u32>(8690u, u_input.b.x)), false), vec4<bool>(true, true, false, true), -1i), u_input.b.x)), _wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)) >> (select(min(vec2<u32>(22697u, 0u), u_input.b.zy), _wgslsmith_div_vec2_u32(vec2<u32>(57142u, u_input.b.x), u_input.b.zz), select(false, true, false)) % vec2<u32>(32u))), vec3<bool>(true, !select(false, false, true), any(vec2<bool>(true, true))), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(304f, -1000f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b.x, 4294967295u), ~vec2<u32>(u_input.b.x, 4294967295u))));
    let var_1 = Struct_2(var_0.e, true, Struct_1(vec2<f32>(-1042f, -1000f), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, 1u)))), var_0.a, var_0.d);
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(var_1.c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_1.d.a.x))), u_input.b.yy), 4294967295u, vec3<bool>(all(select(vec3<bool>(var_1.e, var_0.c.x, var_1.b), !vec3<bool>(true, var_0.d, var_1.b), false)), var_1.b || all(select(vec3<bool>(false, true, var_0.d), var_0.c, false)), u_input.a != ~(-1i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1593f * var_1.a.a.x), -219f)) < var_0.a.a.x, var_0.a);
    let var_3 = _wgslsmith_add_u32(~(~(~var_1.c.b.x)), 0u);
    var_2 = var_0;
    return Struct_4(select(!vec4<bool>(true, true, false, var_2.d), vec4<bool>(true, true, !(45939u > u_input.b.x), _wgslsmith_f_op_f32(trunc(-428f)) < _wgslsmith_f_op_f32(round(-1000f))), select(!vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.d), vec4<bool>(var_2.d, var_2.c.x, !var_2.d, all(vec2<bool>(true, false))), select(!vec4<bool>(true, var_2.c.x, false, var_0.d), !vec4<bool>(var_2.c.x, var_2.d, var_0.d, false), var_1.b))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = arg_1.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(346f, 945f), vec2<f32>(-615f, -2483f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -381f) * vec2<f32>(-1547f, 658f)), vec2<bool>(false, false))))), arg_2.yx);
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, 1710f))), -892f), ~firstTrailingBit(vec2<u32>(var_1.b.x, _wgslsmith_mult_u32(u_input.b.x, var_1.b.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.x, var_1.a.x))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, arg_2.x), 1u), vec2<u32>(_wgslsmith_clamp_u32(20299u, var_1.b.x, u_input.b.x), u_input.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(select(u_input.b.x, 0u, arg_0.x), u_input.b.x), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), 6410u))));
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), select(-vec2<i32>(u_input.a, -9101i), vec2<i32>(u_input.a, -2147483647i) >> (var_2.b % vec2<u32>(32u)), true)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, 2147483647i), u_input.a), -(vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(u_input.a, u_input.a)))), -min(-(~vec2<i32>(7497i, u_input.a)), ~vec2<i32>(u_input.a, u_input.a) | -vec2<i32>(7940i, u_input.a)));
    return Struct_3(Struct_1(var_2.a, select(~(~var_1.b), u_input.b.yy, true)), ~u_input.b.x, arg_1.a.xyx, var_3.x != -43350i, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_1.a)), ~select(vec2<u32>(var_1.b.x, arg_2.x) & vec2<u32>(u_input.b.x, 15011u), u_input.b.zz, var_0.zw)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = abs(vec4<i32>(arg_1.x, -6897i, 0i, 1i));
    let var_1 = func_4(vec3<bool>(true, true, true), Struct_4(vec4<bool>((true & arg_0.d) | !arg_2.c.x, arg_2.d, !arg_2.d, false)), vec4<u32>(arg_0.a.b.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.b.x ^ 7738u, _wgslsmith_dot_vec4_u32(vec4<u32>(15015u, arg_2.b, 4294967295u, arg_2.a.b.x), vec4<u32>(arg_0.b, arg_2.e.b.x, u_input.b.x, u_input.b.x))), 4294967295u), 51274u, 5321u)).a;
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_0.e.a.x));
    let var_3 = var_1.a.x;
    var_2 = arg_2.a.a.x;
    return 1i;
}

fn func_1() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = -u_input.a;
    return (0i <= func_5(func_4(vec3<bool>(true, true, true), func_2(), ~vec4<u32>(12996u, 32745u, 1u, 15797u)), abs(-vec3<i32>(u_input.a, u_input.a, u_input.a)), func_4(func_2().a.yyy, Struct_4(vec4<bool>(true, false, false, true)), ~vec4<u32>(18713u, var_0, u_input.b.x, 4294967295u)))) & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!(any(vec2<bool>(true, false)) || func_1())), any(!func_2().a.zyy));
    var var_1 = !(u_input.a >= _wgslsmith_mod_i32(~u_input.a, 30043i));
    var var_2 = Struct_2(func_4(vec3<bool>(var_0.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) == ~u_input.b.x, !(!var_0.x)), Struct_4(select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, true, true, var_0.x))), select(max(vec4<u32>(4294967295u, u_input.b.x, 4424u, 29597u) | vec4<u32>(u_input.b.x, 1u, 2481u, 11356u), vec4<u32>(u_input.b.x, u_input.b.x, 84072u, u_input.b.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.b.x, 4294967295u))), !vec4<bool>(false, var_0.x, false, var_0.x))).a, !all(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, true), var_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 972f)), vec2<f32>(353f, -1837f), var_0)), ~vec2<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 104857u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-1459f, _wgslsmith_div_f32(-937f, 374f))), _wgslsmith_f_op_f32(-1556f * _wgslsmith_f_op_f32(f32(-1f) * -519f))), vec2<u32>(_wgslsmith_mult_u32(~u_input.b.x, ~1u), _wgslsmith_add_u32(firstLeadingBit(22795u), u_input.b.x))), false);
    var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(858f * var_2.c.a.x) * var_2.a.a.x)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.a.x))));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.a.x), _wgslsmith_f_op_f32(floor(198f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.a.x - var_2.d.a.x), _wgslsmith_f_op_f32(-753f * 955f), var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1062f, 696f))), !var_2.e)), _wgslsmith_f_op_f32(select(359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.a.x - 1722f)), any(!vec2<bool>(var_0.x, false))))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(~(~vec3<i32>(u_input.a, u_input.a, -72282i))), vec3<i32>(-1i) * -(vec3<i32>(-9712i, u_input.a, 1i) << (vec3<u32>(1u, var_2.d.b.x, 6488u) % vec3<u32>(32u))), select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 48222i), vec3<i32>(u_input.a, 35721i, -5952i), vec3<i32>(u_input.a, 0i, 4766i)), -vec3<i32>(5957i, u_input.a, -41137i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 63915i), vec3<i32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(u_input.b.x, u_input.b.x, var_2.d.b.x) % vec3<u32>(32u)), false)), func_5(func_4(vec3<bool>(any(vec2<bool>(false, var_0.x)), any(vec2<bool>(var_3.a.x, false)), any(vec2<bool>(false, var_0.x))), func_2(), vec4<u32>(u_input.b.x ^ var_2.d.b.x, abs(var_2.a.b.x), firstLeadingBit(0u), u_input.b.x)), -((vec3<i32>(u_input.a, u_input.a, -2147483647i) << (vec3<u32>(u_input.b.x, var_2.d.b.x, var_2.a.b.x) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))), Struct_3(var_2.d, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), vec3<bool>(true, true, false), func_2().a.x, Struct_1(func_4(var_3.a.xyz, Struct_4(var_3.a), vec4<u32>(12529u, 30452u, var_2.a.b.x, 59274u)).e.a, ~u_input.b.yz))));
}

