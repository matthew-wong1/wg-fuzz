struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = firstTrailingBit(-vec4<i32>(_wgslsmith_sub_i32(-1i << (1u % 32u), _wgslsmith_div_i32(-1i, 33178i)), -20844i, -2147483647i, u_input.b));
    let var_1 = ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, 29741u, u_input.e), vec4<u32>(u_input.e, u_input.d, u_input.c, 13487u), reverseBits(vec4<u32>(4294967295u, 47347u, 1u, 18823u))) ^ ~select(vec4<u32>(u_input.c, 41816u, u_input.d, 1u), vec4<u32>(u_input.d, 53295u, 36263u, 21980u), vec4<bool>(true, true, true, false))) & ~vec4<u32>(u_input.a, select(4294967295u, u_input.e, false), 8567u | u_input.a, u_input.a)) ^ vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 5116u, u_input.e), select(vec3<u32>(1u, 62246u, u_input.a), vec3<u32>(3782u, 13192u, 69450u), vec3<bool>(true, true, false))), 1u, ~(~u_input.e), _wgslsmith_div_u32(countOneBits(~u_input.a), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, u_input.e), 4294967295u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1748f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2604f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-156f, 1424f), vec2<f32>(1972f, -509f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-365f, 434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1083f, false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(538f, 2729f), vec2<f32>(813f, -1471f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, 1071f)))))));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2153f, 670f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-139f, -654f), vec2<f32>(780f, -1470f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-732f, -1000f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-729f, 1995f), vec2<f32>(1f, 1f), vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1078f)), var_0.x) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, var_0.x))) * _wgslsmith_div_f32(var_0.x, 675f))));
    var var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, !any(vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.x <= var_0.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec2<bool>(false, true))), vec2<bool>(true, true))), vec4<u32>(abs(~u_input.a), u_input.d, u_input.a, u_input.e), !select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !(!vec2<bool>(-582f < var_0.x, any(vec3<bool>(true, true, false)))));
    let var_2 = vec3<u32>(u_input.c, u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x >> (~var_1.b.x % 32u), u_input.c), max(min(vec2<u32>(u_input.d, u_input.a), ~var_1.b.xz), var_1.b.xx)));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_1.a.x))), _wgslsmith_f_op_vec2_f32(func_3()).x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -226f, false)) + -823f)), -528f));
    return ~vec3<i32>(~(~_wgslsmith_sub_i32(1i, u_input.b)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8034i, -15314i, -1572i), vec3<i32>(-68535i, 0i, u_input.b)), 1i) & 32751i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b & u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_mult_i32(-63264i, -1i), i32(-1i) * -31509i), ~abs(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_i32(arg_2 << (vec3<u32>(4294967295u, u_input.a << (abs(u_input.e) % 32u), arg_1.x) % vec3<u32>(32u)), vec3<i32>(u_input.b & 61975i, ~(~_wgslsmith_add_i32(u_input.b, 1i)), _wgslsmith_sub_i32(arg_0.a.x | arg_2.x, -45356i)));
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, -24409i), select(vec2<i32>(2147483647i, 294i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, arg_0.a.x), arg_2.yz, vec2<i32>(arg_0.a.x, var_0.x)), vec2<bool>(true, true)))));
    var_0 = ~(-firstTrailingBit(vec3<i32>(1i, var_0.x, u_input.b))) | _wgslsmith_clamp_vec3_i32(arg_2 | arg_2, abs(_wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_2.x, 1i, arg_2.x), arg_2), arg_2)), arg_2);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2589f, _wgslsmith_f_op_f32(trunc(1531f))))), 972f), vec2<f32>(_wgslsmith_f_op_f32(step(998f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -314f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1806f + -794f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1541f, -1174f), _wgslsmith_f_op_f32(781f * -710f), true)))), vec2<bool>(true, !any(vec3<bool>(true, true, true)))));
    var_0 = -(arg_2 & arg_2) >> (firstTrailingBit(~vec3<u32>(1u, arg_1.x, ~arg_1.x)) % vec3<u32>(32u));
    return Struct_1(select(vec2<bool>(!(arg_0.a.x != var_0.x), true | all(vec4<bool>(false, false, false, false))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, true)), abs(vec4<u32>(~countOneBits(u_input.e), 1u, ~u_input.e, ~(~20408u))), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), _wgslsmith_f_op_f32(-var_2.x) <= var_2.x), all(vec3<bool>(true, arg_0.a.x == arg_0.a.x, true))), !select(vec4<bool>(true, false, any(vec4<bool>(true, true, false, true)), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), all(vec3<bool>(true, true, true)))), vec2<bool>(!(select(true, false, false) && true), !(!any(vec3<bool>(true, false, false)))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(~7292i, ~(-u_input.b)), 41947i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - 1709f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)))));
    var var_2 = Struct_2(vec2<i32>(-2147483647i, -2147483647i) ^ func_2().yy);
    var var_3 = Struct_1(select(arg_0.d.xx, vec2<bool>(!func_4(Struct_2(vec2<i32>(2147483647i, u_input.b)), vec3<u32>(0u, arg_0.b.x, 0u), vec3<i32>(-33083i, 25806i, var_2.a.x)).d.x, arg_0.c.x), vec2<bool>(all(func_4(Struct_2(var_2.a), arg_0.b.zyw, vec3<i32>(0i, -49225i, u_input.b)).d.wzz), func_4(Struct_2(vec2<i32>(-2320i, -2147483647i)), arg_0.b.zwy, abs(vec3<i32>(u_input.b, 2147483647i, var_0.a.x))).e.x)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.e), _wgslsmith_add_u32(firstTrailingBit(u_input.c) | u_input.d, 44107u), 34869u, 12671u), vec4<bool>(select(all(vec3<bool>(arg_0.e.x, arg_0.d.x, false)), !arg_0.c.x, arg_0.a.x), !(any(arg_0.a) & arg_0.d.x), any(!(!vec2<bool>(arg_0.d.x, arg_0.d.x))), true), !arg_0.d, !arg_0.c.ww);
    var var_4 = func_4(Struct_2(select(vec2<i32>(var_0.a.x, u_input.b), max(var_2.a, vec2<i32>(1i, var_0.a.x)), arg_0.a.x) << (arg_0.b.zx % vec2<u32>(32u))), ~vec3<u32>(_wgslsmith_add_u32(~0u, var_3.b.x), ~(var_3.b.x & arg_0.b.x), _wgslsmith_mult_u32(~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 0u, 328u), arg_0.b.zwx))), vec3<i32>(var_0.a.x << (_wgslsmith_div_u32(arg_0.b.x, 1u) % 32u), var_0.a.x ^ (-2147483647i ^ func_2().x), _wgslsmith_mult_i32(2147483647i, ~u_input.b)));
    return Struct_2(_wgslsmith_clamp_vec2_i32(countOneBits(select(_wgslsmith_mult_vec2_i32(var_0.a, var_2.a), var_2.a, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -19953i), abs(var_2.a)), var_0.a, min(var_2.a, _wgslsmith_mod_vec2_i32(var_2.a, vec2<i32>(1i, u_input.b)))), var_0.a));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = ~(-abs(~(vec3<i32>(70727i, u_input.b, -2147483647i) >> (vec3<u32>(0u, u_input.c, u_input.d) % vec3<u32>(32u)))));
    let var_1 = func_5(func_4(Struct_2(select(var_0.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), var_0.xz), true)), firstTrailingBit(countOneBits(~vec3<u32>(57258u, u_input.d, 4294967295u))), func_2()));
    return Struct_1(!vec2<bool>(!select(arg_0, true, arg_0), !arg_0), vec4<u32>(~u_input.a, u_input.c, 38739u, firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(u_input.d, 0u)))), func_4(func_5(func_4(func_5(Struct_1(vec2<bool>(arg_0, false), vec4<u32>(u_input.e, 4294967295u, 4294967295u, 55644u), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, false, false, arg_0), vec2<bool>(true, true))), min(vec3<u32>(u_input.a, 19591u, 1u), vec3<u32>(u_input.e, 60560u, u_input.e)), _wgslsmith_sub_vec3_i32(vec3<i32>(26765i, var_0.x, 1i), vec3<i32>(u_input.b, var_1.a.x, u_input.b)))), ~vec3<u32>(func_4(var_1, vec3<u32>(u_input.e, 29055u, u_input.e), vec3<i32>(-2147483647i, 4453i, 24842i)).b.x, firstTrailingBit(u_input.c), 4294u), vec3<i32>(-1i, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, -1i), var_0.zy, vec2<i32>(-1i, var_1.a.x)), countOneBits(vec2<i32>(var_1.a.x, 30491i))))).c, !vec4<bool>(false, true, any(func_4(var_1, vec3<u32>(40155u, 1u, 4294967295u), vec3<i32>(0i, var_0.x, var_1.a.x)).d.xzx), all(vec4<bool>(true, true, arg_0, false)) | arg_0), !select(vec2<bool>(true || arg_0, false), select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0)), any(func_4(var_1, vec3<u32>(0u, 4294967295u, u_input.e), vec3<i32>(var_0.x, u_input.b, var_1.a.x)).c.xzw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = var_0.d.xyy;
    let var_2 = func_1(_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.b, u_input.b), ~(-2147483647i)) <= 1i);
    var var_3 = all(var_0.c.yxw);
    let var_4 = 106f;
    let x = u_input.a;
    s_output = StorageBuffer(-28867i, u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1026f, var_4) + vec2<f32>(-419f, 940f))))), var_4, var_0.b.xw);
}

