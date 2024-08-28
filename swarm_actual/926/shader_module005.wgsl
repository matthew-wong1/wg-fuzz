struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec4<i32> {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(~u_input.c.zz, reverseBits(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.c.zx, arg_1.a.a.c.xz))), u_input.c.xz);
    let var_1 = !(!select(vec3<bool>(any(vec4<bool>(true, false, true, false)), arg_1.a.a.d, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_1.a.a.d), vec3<bool>(arg_1.a.a.d, arg_1.c.d, arg_1.c.d)), true));
    var var_2 = Struct_4(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(981f, arg_1.c.a.x, -260f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a.a.e.yz)), -1494f, vec4<i32>(abs(_wgslsmith_mod_i32(-8110i, -38076i)), _wgslsmith_mod_i32(-2147483647i, var_0.x | -13981i), select(~arg_1.e.x, var_0.x, var_1.x), firstTrailingBit(_wgslsmith_mult_i32(32889i, -1i))), !select(arg_1.c.d, var_1.x, false) != all(vec4<bool>(var_1.x, arg_1.a.a.d, arg_1.a.a.d, true)), arg_1.c.e), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.b, _wgslsmith_f_op_f32(f32(-1f) * -931f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f))), -644f), arg_1.e);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.e.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-981f, 1798f))))) * vec2<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(1473f + arg_1.b.x))), 1863f, ~arg_1.c.c ^ arg_1.e, !arg_1.c.d, _wgslsmith_f_op_vec3_f32(exp2(var_2.a.a.e)));
    var var_4 = Struct_3(arg_1.c, !vec2<bool>(var_2.a.a.d, var_1.x), _wgslsmith_f_op_f32(-var_3.a.x), abs(u_input.b));
    return ~arg_1.a.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = 257f;
    let var_1 = firstTrailingBit(vec2<i32>(-1i) * -u_input.c.zz);
    let var_2 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-166f, _wgslsmith_f_op_f32(-arg_0.b)))), ~vec4<i32>(_wgslsmith_mod_i32(arg_0.c.x, 8598i), _wgslsmith_dot_vec2_i32(vec2<i32>(-31281i, -1i), vec2<i32>(1i, var_1.x)), -2147483647i, -21610i & var_1.x), true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * -775f), -636f, 285f)))), _wgslsmith_f_op_f32(-1444f + _wgslsmith_f_op_f32(select(-1013f, arg_1, false))));
    var_0 = arg_1;
    var_0 = arg_1;
    return ~(~u_input.b);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(step(945f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, -696f) + _wgslsmith_f_op_f32(-373f * 341f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(786f - 598f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(461f))))), vec4<i32>((-1i ^ u_input.a) >> ((1u << (u_input.b.x % 32u)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c.x, -5228i), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), i32(-1i) * -1699i), _wgslsmith_mod_i32(-u_input.a, 1307i), _wgslsmith_add_i32(3747i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-41741i, u_input.a)))), !arg_0, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-463f, -1153f)), _wgslsmith_f_op_f32(round(-1506f)))), _wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-2319f + -1708f)))), select(vec2<bool>(true, true), vec2<bool>(!(u_input.b.x > u_input.b.x), all(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)))), !select(!vec2<bool>(false, arg_0), vec2<bool>(false, false), 41988u == u_input.b.x)), -1000f, ~func_4(Struct_1(vec2<f32>(1000f, 601f), _wgslsmith_f_op_f32(select(-1332f, -478f, arg_0)), func_3(149707u, Struct_4(Struct_2(Struct_1(vec2<f32>(695f, -330f), 1623f, vec4<i32>(4699i, u_input.c.x, 1i, 1i), true, vec3<f32>(-958f, 381f, -1212f)), 1717f), vec3<f32>(-1000f, 625f, -719f), Struct_1(vec2<f32>(1001f, -1326f), 537f, vec4<i32>(u_input.c.x, -68595i, u_input.c.x, 1i), arg_0, vec3<f32>(-1311f, -1964f, 385f)), vec2<f32>(-1136f, -307f), vec4<i32>(u_input.c.x, 17206i, u_input.c.x, -1i))), arg_0, vec3<f32>(-158f, -761f, 659f)), -1019f));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(52571u, 680u), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b.x, 4294967295u)), _wgslsmith_div_vec2_u32(func_4(var_0.a, var_0.c).zy, select(~u_input.b.zy, _wgslsmith_div_vec2_u32(u_input.b.zx, u_input.b.zx), arg_0))));
    var_0 = Struct_3(var_0.a, !vec2<bool>(1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 15682u), vec3<u32>(var_0.d.x, 33818u, var_0.d.x)), any(vec3<bool>(false, arg_0, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))), -1000f)))), var_0.d);
    var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.b)) - 596f), var_0.a.b), -1522f, countOneBits(-firstLeadingBit(vec4<i32>(var_0.a.c.x, -44160i, -1i, -1i))), var_0.a.d, _wgslsmith_f_op_vec3_f32(-var_0.a.e)), vec2<bool>(true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f - var_0.a.e.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 839f))), var_0.d);
    return ~func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(779f, var_0.c))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2047f, var_0.a.a.x), vec2<f32>(var_0.a.b, var_0.c)))), var_0.a.e.x, _wgslsmith_mult_vec4_i32(-vec4<i32>(8461i, u_input.a, 1566i, var_0.a.c.x), firstTrailingBit(var_0.a.c)), any(!vec4<bool>(arg_0, true, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(154f, var_0.a.e.x, -926f) + var_0.a.e) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, -1096f, var_0.c)))), -102f);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = any(select(vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, arg_0.x < arg_0.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), true));
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1246f, 1237f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(743f, 253f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(804f, -870f), vec2<f32>(-2121f, -1000f))), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-570f)) * _wgslsmith_f_op_f32(f32(-1f) * -1155f)), -abs(vec4<i32>(arg_1.x, 1i, u_input.c.x, arg_1.x)), -140f <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-148f, -385f), -2124f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1863f, 684f, 768f), vec3<f32>(-959f, -693f, 1892f)))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), vec2<bool>(!any(vec2<bool>(true, true)), !(!all(vec3<bool>(false, false, true)))), 697f, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(116503u, 20047u, arg_0.x, 0u) & vec4<u32>(u_input.b.x, 205854u, 63973u, 51653u), vec4<u32>(4294967295u, arg_0.x, 3284u, arg_0.x) >> (vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), firstLeadingBit(34168u), _wgslsmith_mod_u32(u_input.b.x, 1u)), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_clamp_u32(arg_0.x, u_input.b.x, u_input.b.x), ~1u, u_input.b.x))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.e.zz, var_0.a.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -128f))), -366f, _wgslsmith_mult_vec4_i32(var_0.a.c, reverseBits(var_0.a.c)), false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1628f, var_0.a.b, var_0.c), var_0.a.e)), var_0.a.e))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-652f, _wgslsmith_f_op_f32(666f * var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), var_0.c)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.a.e * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.e, vec3<f32>(var_0.a.a.x, -1286f, 1064f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 1621f, 356f)))), var_0.a.e)), var_0.a, vec2<f32>(_wgslsmith_f_op_f32(min(617f, _wgslsmith_f_op_f32(-690f * -782f))), var_0.c), var_0.a.c);
    var_0 = Struct_3(var_1.c, !var_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c.e.x)), var_1.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_1.a.a.e.x)) - _wgslsmith_f_op_f32(-var_1.a.a.a.x)) + var_1.b.x)), vec3<u32>(u_input.b.x, ~6411u, ~reverseBits(~49263u)));
    let var_2 = var_0.a;
    return var_0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_2(func_5(abs(_wgslsmith_add_vec3_u32(arg_3 ^ vec3<u32>(arg_3.x, 1u, u_input.b.x), func_2(arg_1.c.d))), vec3<i32>(_wgslsmith_mod_i32(-1i, ~arg_0.x), u_input.a, arg_1.a.a.c.x)), arg_1.d.x);
    let var_1 = arg_2;
    let var_2 = countOneBits(abs(23043u));
    var_0 = arg_1.a;
    var_0 = Struct_2(func_5(vec3<u32>(37135u, _wgslsmith_add_u32(~1u, u_input.b.x), ~23495u ^ ~arg_3.x), select(func_3(~arg_3.x, Struct_4(Struct_2(Struct_1(arg_1.b.yy, arg_2, vec4<i32>(-42608i, -2147483647i, -14071i, u_input.c.x), false, var_0.a.e), 950f), var_0.a.e, Struct_1(vec2<f32>(1317f, 263f), arg_1.a.b, vec4<i32>(1518i, arg_0.x, -1i, -1i), var_0.a.d, var_0.a.e), vec2<f32>(var_1, var_1), arg_0)).yww, vec3<i32>(select(-26293i, -29986i, false), 1i, 0i), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-413f)) + var_0.b)))));
    return _wgslsmith_div_i32(-u_input.a, 12637i);
}

fn func_6(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25500u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 52369u)), 0u, func_4(Struct_1(vec2<f32>(-1000f, -216f), 441f, arg_0, true, vec3<f32>(-1801f, -525f, -278f)), 261f).x, ~1u) >> (~abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(350u, _wgslsmith_sub_u32(56723u, u_input.b.x)), firstTrailingBit(u_input.b.x), u_input.b.x, 129878u));
    var_0 = ~_wgslsmith_add_vec4_u32(select(countOneBits(~vec4<u32>(u_input.b.x, 4294967295u, var_0.x, 16487u)), firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 59154u, 54383u)), false), _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, min(u_input.b.x, 4294967295u), ~8839u, ~8234u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1533u, u_input.b.x, 44850u), vec4<u32>(16763u, 8157u, var_0.x, 0u), vec4<u32>(1u, 73248u, var_0.x, 0u))));
    let var_1 = 922f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, 1000f)))), 377f, arg_0, true, vec3<f32>(var_1, _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), var_1);
    let var_3 = Struct_4(Struct_2(var_2.a, var_1), _wgslsmith_f_op_vec3_f32(-var_2.a.e), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), var_1, ~(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(-23590i, arg_0.x, -1i, u_input.c.x)) | _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(arg_0.x, var_2.a.c.x, -1275i, -31816i))), false, vec3<f32>(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-var_2.a.b)), var_1, var_2.a.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_2.a.e.yy * vec2<f32>(217f, -1879f)))))), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), var_2.a.c.yy)), var_2.a.c), 1i, func_1(-var_2.a.c, Struct_4(Struct_2(var_2.a, 710f), vec3<f32>(1000f, -711f, var_2.b), func_5(var_0.wyx, vec3<i32>(arg_0.x, arg_0.x, var_2.a.c.x)), _wgslsmith_f_op_vec2_f32(-var_2.a.e.zx), arg_0), 287f, vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, 30584u), 4294967295u, ~var_0.x))));
    return Struct_3(func_5((u_input.b ^ var_0.xxw) | _wgslsmith_div_vec3_u32(~var_0.wxy, var_0.xxw | u_input.b), var_3.e.xzz), select(select(vec2<bool>(true, true), select(!vec2<bool>(var_2.a.d, var_3.a.a.d), vec2<bool>(false, false), true), vec2<bool>(!var_2.a.d, false)), vec2<bool>(func_5(vec3<u32>(var_0.x, 4294967295u, u_input.b.x), u_input.c).d && !var_2.a.d, true), true), 942f, vec3<u32>(select(~u_input.b.x, var_0.x, true), 4294967295u, min(~var_0.x, u_input.b.x)) >> (select(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 44686u, var_0.x)), abs(vec3<u32>(1u, var_0.x, u_input.b.x))), vec3<u32>(var_0.x, var_0.x, 50851u) >> (~vec3<u32>(var_0.x, 34899u, var_0.x) % vec3<u32>(32u)), false) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-(~vec4<i32>(func_1(vec4<i32>(16139i, 6261i, u_input.c.x, u_input.c.x), Struct_4(Struct_2(Struct_1(vec2<f32>(203f, -1000f), 1398f, vec4<i32>(-2147483647i, 2147483647i, u_input.a, 1i), false, vec3<f32>(-334f, 336f, -828f)), 920f), vec3<f32>(-527f, -651f, 462f), Struct_1(vec2<f32>(-195f, 267f), -2551f, vec4<i32>(u_input.a, u_input.c.x, 2147483647i, -1i), false, vec3<f32>(-667f, -1866f, 128f)), vec2<f32>(-1994f, 638f), vec4<i32>(u_input.c.x, 2147483647i, -1i, 2147483647i)), 234f, vec3<u32>(0u, u_input.b.x, u_input.b.x)), ~(-16309i), -u_input.c.x, _wgslsmith_mod_i32(0i, 9769i))));
    let var_1 = select(vec2<i32>(var_0.a.c.x, _wgslsmith_div_i32(var_0.a.c.x, countOneBits(func_3(0u, Struct_4(Struct_2(var_0.a, -1000f), vec3<f32>(var_0.a.e.x, var_0.a.b, -394f), Struct_1(var_0.a.e.xx, var_0.c, vec4<i32>(29754i, u_input.a, 9231i, var_0.a.c.x), var_0.b.x, var_0.a.e), var_0.a.a, var_0.a.c)).x))), vec2<i32>(1i, firstTrailingBit(min(var_0.a.c.x, 2147483647i))) | _wgslsmith_sub_vec2_i32(func_5(vec3<u32>(1u, 4294967295u, u_input.b.x), countOneBits(vec3<i32>(-19052i, 2147483647i, var_0.a.c.x))).c.zz, ~var_0.a.c.xz), vec2<bool>(false, !(var_0.a.d | (false | var_0.a.d))));
    var var_2 = func_5(var_0.d, vec3<i32>(~(-26320i), -u_input.a, max(var_1.x, ~var_1.x)));
    global0 = !all(select(vec3<bool>(any(var_0.b), var_0.b.x | true, false), vec3<bool>(any(vec3<bool>(var_2.d, var_0.a.d, true)), all(vec2<bool>(var_2.d, false)), var_2.d), false));
    var var_3 = var_0.a;
    var var_4 = func_6(_wgslsmith_mod_vec4_i32(func_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x), abs(var_0.d)), reverseBits(-vec3<i32>(-2147483647i, 31958i, var_2.c.x))).c, -vec4<i32>(var_2.c.x, -var_0.a.c.x, 10806i, -var_2.c.x))).a;
    var_0 = func_6(~(-var_3.c) & ~var_0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.b.x, ~var_0.d.x, var_0.d.x, var_0.d.x), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(70428u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(13462u, 68876u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 20924u, 1u, 1u)))));
}

