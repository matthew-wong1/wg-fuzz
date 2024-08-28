struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(-488f));
    let var_1 = u_input.a;
    let var_2 = -554f;
    let var_3 = vec2<bool>(any(!vec4<bool>(true, true, -894f != var_2, 163f < var_0)), u_input.a > 1u);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 856f, 1293f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, -528f), vec3<f32>(172f, 2255f, 1000f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, -1637f))))))));
    return vec4<i32>(arg_0.x, ~firstTrailingBit(max(1i, ~0i)), -2147483647i, -55355i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = select(vec3<bool>(all(vec3<bool>(true, true, 1u <= u_input.a)), true, true), vec3<bool>(false, !(!(arg_3.a.c.x <= 1i)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), true);
    let var_1 = Struct_2(arg_3.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(arg_1.a.b.xzw));
    let var_3 = vec2<i32>(-(-6275i << (max(u_input.a, ~u_input.a) % 32u)), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(var_1.a.c, ~vec3<i32>(arg_1.a.c.x, arg_1.a.c.x, arg_0.c.x))));
    let var_4 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.c.x ^ var_3.x, arg_1.a.c.x), vec2<i32>(reverseBits(u_input.b), -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, ~arg_0.c.x), -var_3.x, -48398i), ~(~select(vec3<i32>(-18172i, var_1.a.c.x, 21300i), vec3<i32>(45234i, arg_1.a.c.x, arg_1.a.c.x), var_0.x))), _wgslsmith_add_i32(0i, arg_0.c.x), ~(-func_1(_wgslsmith_mod_vec3_i32(arg_1.a.c, arg_0.c)).x));
    return _wgslsmith_f_op_f32(arg_3.a.b.x - _wgslsmith_f_op_f32(ceil(1535f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> vec4<i32> {
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, 24712u)), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1, 7535u, 41148u), vec4<u32>(u_input.a, arg_1, 41281u, arg_1), vec4<u32>(arg_1, 56052u, 1885u, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(91798u, arg_1, u_input.a, 1u), vec4<u32>(6665u, arg_1, 4294967295u, 11071u))));
    var var_2 = ~abs(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, var_1.x, u_input.a, 1359u), ~vec4<u32>(4294967295u, 57765u, u_input.a, var_1.x)) & ((vec4<u32>(var_1.x, 1u, 4294967295u, 50299u) ^ vec4<u32>(1u, u_input.a, u_input.a, var_1.x)) >> ((vec4<u32>(var_1.x, 0u, var_1.x, 1u) & vec4<u32>(var_1.x, var_1.x, 77839u, u_input.a)) % vec4<u32>(32u))));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, 681f, _wgslsmith_f_op_f32(645f - _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1458f, arg_0.b.x, arg_0.b.x)), vec3<f32>(-776f, arg_0.a.x, 1256f), vec3<bool>(arg_2, true, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(-1866f + arg_0.a.x), 678f, _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, arg_0.b, arg_0.c), Struct_2(arg_0), 1000f, Struct_2(Struct_1(vec2<f32>(-340f, -996f), arg_0.b, vec3<i32>(-2147483647i, 2147483647i, arg_3)))))))))));
    return max(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-arg_3, arg_3 << (arg_1 % 32u), -1i, ~3755i), vec4<i32>(arg_3, 1i, countOneBits(66848i), firstLeadingBit(33410i))), ~(~func_1(vec3<i32>(arg_0.c.x, u_input.b, -2147483647i)))), _wgslsmith_sub_vec4_i32(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_3, 18303i, arg_3), vec4<i32>(arg_3, u_input.c, 1i, u_input.b))), _wgslsmith_clamp_vec4_i32(max(abs(vec4<i32>(arg_3, -74655i, var_0.x, -2147483647i)), select(vec4<i32>(arg_0.c.x, var_0.x, arg_0.c.x, -2147483647i), vec4<i32>(u_input.b, 0i, 2147483647i, 0i), arg_2)), vec4<i32>(1i, ~(-1i), arg_0.c.x, -24975i), func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, -1i, 1i), vec3<i32>(0i, -2147483647i, -8664i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(func_1(vec3<i32>(-52982i ^ u_input.b, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(7241i, 18581i, -1502i), vec3<i32>(-60752i, -13406i, 19212i)))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2186f, -794f, -2179f, 1669f)), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, 46466i))), ~_wgslsmith_mod_u32(u_input.a, u_input.a), false, u_input.b)) << (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(46672u, 110u), ~4294967295u) | ~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(7792u, u_input.a)), ~vec2<u32>(7326u, u_input.a))), 4294967295u, _wgslsmith_div_u32(u_input.a, ~_wgslsmith_clamp_u32(4294967295u, 1u, 0u))) % vec4<u32>(32u));
    var var_1 = 20439u;
    var var_2 = ~reverseBits(7483i);
    var_1 = _wgslsmith_sub_u32(u_input.a, ~(27281u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 44866u)) % 32u)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, 608f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1756f, 1390f) + vec2<f32>(-1115f, -1275f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 959f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1615f, -430f)) * vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1118f), -226f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2108f, 1377f), vec2<f32>(-379f, 431f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1221f), vec2<f32>(1091f, -1254f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1002f, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(572f, 812f), vec2<f32>(383f, var_3.x))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1077f, var_3.x, -1061f, var_3.x) + vec4<f32>(130f, var_3.x, var_3.x, -505f)))))), -var_0.xwz);
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_4.a, var_4.b.zw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.b) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + var_4.b.x))), var_3.x, _wgslsmith_f_op_f32(step(1070f, _wgslsmith_f_op_f32(-1053f * var_4.b.x))), var_4.b.x)), var_0.xxw);
    let var_6 = max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a & u_input.a, 1u, 81739u, countOneBits(u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 10605u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), reverseBits(~vec4<u32>(1u, 1u, 7303u, 0u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(44791u, 38133u, 1u), 0u, 1u, u_input.a), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 6627u, 4294967295u), vec4<u32>(u_input.a, 1u, 31462u, u_input.a)))));
    let var_7 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), !select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true), any(vec3<bool>(false, true, false))), !(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_4.b.x)), -1706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(var_5.b.x)));
}

