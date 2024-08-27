struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.wzw, ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.b.b, u_input.b.x, 4294967295u)), select(vec3<u32>(0u, arg_1.b.b, 1u), u_input.b.wzz, vec3<bool>(false, false, false)))), ~arg_2.b.b, 4294967295u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -select(-1i, -3907i, arg_0.x);
    var var_1 = select(u_input.b.yw, u_input.b.zz & _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(2409u, arg_1.b.b), 40207u), vec2<u32>(4294967295u, 1u)), !vec2<bool>(!(!arg_1.b.d.x), arg_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1527f))))) - 1439f), 39843u, arg_1.a, !(!(!vec3<bool>(arg_1.b.d.x, arg_0.x, true))), vec4<f32>(2556f, _wgslsmith_f_op_f32(trunc(arg_1.b.a)), arg_1.b.a, 1253f));
    var var_3 = arg_1.b.e.wz;
    return Struct_1(var_3.x, ~(~func_3(u_input.a >> (vec2<u32>(arg_1.b.b, arg_1.b.b) % vec2<u32>(32u)), arg_1, Struct_2(946f, Struct_1(arg_1.b.e.x, 83224u, 352f, var_2.d, vec4<f32>(-1338f, var_2.a, var_3.x, 447f))))), _wgslsmith_f_op_f32(step(var_3.x, arg_1.b.a)), vec3<bool>(true, !arg_0.x, any(vec3<bool>(false, -1i < u_input.a.x, true))), arg_1.b.e);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = abs(~vec3<u32>(~(~u_input.b.x), arg_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(102207u, 0u), u_input.b.ww)));
    var_0 = max(~(~(~u_input.b.wwz) << (vec3<u32>(_wgslsmith_add_u32(90926u, 91857u), _wgslsmith_sub_u32(u_input.c, arg_1.b), abs(1u)) % vec3<u32>(32u))), u_input.b.wwx);
    let var_1 = arg_2.x;
    var_0 = _wgslsmith_clamp_vec3_u32(u_input.b.yxw & vec3<u32>(60906u, ~0u, ~_wgslsmith_mod_u32(1u, 28241u)), firstTrailingBit(vec3<u32>(var_0.x ^ 18271u, var_0.x, 1u)) & firstTrailingBit(~u_input.b.xzy), vec3<u32>(var_0.x, ~(~max(18206u, u_input.b.x)), arg_1.b));
    let var_2 = func_2(select(func_2(select(select(vec2<bool>(true, false), vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.d.x), select(vec2<bool>(false, arg_1.d.x), vec2<bool>(arg_1.d.x, false), false), arg_1.b >= u_input.c), Struct_2(_wgslsmith_f_op_f32(arg_2.x - 729f), arg_1)).d.zx, arg_1.d.zy, select(func_2(vec2<bool>(false, false), Struct_2(arg_1.a, arg_1)).d.zz, func_2(vec2<bool>(true, true), Struct_2(-1999f, arg_1)).d.xz, select(!arg_1.d.x, false, false))), Struct_2(func_2(vec2<bool>(arg_1.d.x | arg_1.d.x, false), Struct_2(_wgslsmith_f_op_f32(sign(arg_2.x)), func_2(arg_1.d.yy, Struct_2(395f, arg_1)))).e.x, arg_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.x)) - _wgslsmith_f_op_f32(-arg_2.x))))) + 1421f);
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -401f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -1058i, 3133i)), func_2(vec2<bool>(false, false), Struct_2(1917f, Struct_1(1143f, 13538u, 405f, vec3<bool>(false, true, false), vec4<f32>(-951f, 1058f, -918f, 363f)))), vec2<f32>(1f, 1f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1381f));
    var var_1 = Struct_2(114f, Struct_1(_wgslsmith_f_op_f32(select(-412f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a.x, 387i, u_input.a.x, 2059i), Struct_1(105f, 4294967295u, -303f, vec3<bool>(var_0, var_0, true), vec4<f32>(1049f, -410f, 1669f, -381f)), vec2<f32>(481f, 256f))), 456f)), false)), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(825f, 1000f)), _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a.x, -2147483647i, -1i, 8012i), func_2(vec2<bool>(var_0, var_0), Struct_2(-410f, Struct_1(-470f, 3572u, -655f, vec3<bool>(var_0, true, var_0), vec4<f32>(1000f, -217f, -1624f, 341f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1682f, 691f))))), !select(func_2(vec2<bool>(false, var_0), Struct_2(-1059f, Struct_1(1000f, 3224u, -681f, vec3<bool>(false, true, true), vec4<f32>(-135f, -710f, 572f, 897f)))).d, vec3<bool>(var_0, true, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, -951f, 155f, 607f)))));
    let var_2 = ~func_3(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, ~u_input.a.x), u_input.a), Struct_2(var_1.b.c, Struct_1(_wgslsmith_f_op_f32(step(263f, 723f)), ~4294967295u, _wgslsmith_f_op_f32(-var_1.a), vec3<bool>(var_0, var_0, false), var_1.b.e)), Struct_2(1746f, var_1.b));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(step(var_1.b.e.x, 1618f)), Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 1i)) >> ((u_input.b << (vec4<u32>(u_input.b.x, var_1.b.b, 4294967295u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(-1033f, 4294967295u, _wgslsmith_f_op_f32(-var_1.a), !vec3<bool>(var_0, true, true), vec4<f32>(var_1.b.a, var_1.b.e.x, var_1.a, 964f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.e.zw)) * var_1.b.e.ww))), 16629u, _wgslsmith_f_op_f32(-var_1.b.c), vec3<bool>(all(!vec3<bool>(false, var_1.b.d.x, false)), !var_1.b.d.x, true), var_1.b.e));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(abs(abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x))), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i) << (~u_input.b % vec4<u32>(32u)), !var_0), func_2(vec2<bool>(false, var_3.b.d.x), Struct_2(var_3.b.a, func_2(var_1.b.d.xx, var_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.b.e.yz))) - vec2<f32>(var_3.b.c, _wgslsmith_f_op_f32(var_1.a + 1000f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(var_3.b.c * _wgslsmith_f_op_f32(-var_1.a)))), -716f));
    return var_3.b.d.yz;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32((min(vec3<i32>(u_input.a.x, u_input.a.x, 38898i), vec3<i32>(u_input.a.x, -21486i, -1i)) ^ vec3<i32>(-31163i, 37514i, u_input.a.x)) << (vec3<u32>(0u, 0u, _wgslsmith_add_u32(31628u, u_input.c)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 57228i), vec4<i32>(u_input.a.x, -2147483647i, 1i, 2147483647i)), vec4<i32>(-1i, 32031i, u_input.a.x, 3944i) ^ vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x)), -u_input.a.x, 2147483647i), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, -39701i, u_input.a.x)))) | -vec3<i32>(u_input.a.x, u_input.a.x, ~49263i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1)))) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + arg_1))))), Struct_1(_wgslsmith_f_op_f32(func_4(max(~vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), countOneBits(vec4<i32>(u_input.a.x, -32955i, var_0.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(-arg_1), abs(1u), _wgslsmith_f_op_f32(abs(377f)), !vec3<bool>(arg_0.x, arg_0.x, false), vec4<f32>(-1558f, arg_1, -271f, 625f)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(trunc(arg_1))))), ~4294967295u, func_2(!select(arg_0, arg_0, vec2<bool>(arg_0.x, arg_0.x)), Struct_2(_wgslsmith_f_op_f32(round(-1070f)), func_2(arg_0, Struct_2(arg_1, Struct_1(-913f, u_input.c, arg_1, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec4<f32>(388f, -748f, arg_1, arg_1)))))).e.x, !(!select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-1765f, _wgslsmith_div_f32(-2156f, arg_1), _wgslsmith_f_op_f32(880f * arg_1), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(442f, -1132f, arg_1, 1698f) - vec4<f32>(451f, -184f, 222f, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 887f, 1799f, arg_1))))));
    var_0 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(_wgslsmith_mod_i32(var_0.x, 1i), max(var_0.x, var_0.x), u_input.a.x) | select(vec3<i32>(var_0.x, u_input.a.x, 83218i), _wgslsmith_div_vec3_i32(vec3<i32>(-31250i, 0i, var_0.x), vec3<i32>(u_input.a.x, u_input.a.x, var_0.x)), !var_1.b.d)), select(-_wgslsmith_div_vec3_i32(~vec3<i32>(-31730i, -32667i, -9028i), vec3<i32>(1i, var_0.x, var_0.x) << (u_input.b.wzw % vec3<u32>(32u))), vec3<i32>(reverseBits(0i), ~u_input.a.x, abs(i32(-1i) * -1i)), select(vec3<bool>(true, true, false), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(var_1.b.d.x, false, false), -702f == arg_1), var_1.b.d)));
    let var_2 = var_1.b;
    var var_3 = func_2(select(vec2<bool>(var_1.b.d.x, arg_0.x), var_1.b.d.yz, all(vec2<bool>(var_1.b.d.x, func_1().x))), var_1);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), 214f);
    let var_1 = var_0.d.zz;
    let var_2 = select(select(select(vec4<bool>(!var_1.x, var_0.b >= u_input.c, var_0.d.x, var_1.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_0.d.x, false, var_1.x, true), var_1.x), !vec4<bool>(true, var_1.x, var_1.x, true)), func_1().x), select(!select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(false, false, var_0.d.x, true), vec4<bool>(true, var_0.d.x, false, var_0.d.x)), !vec4<bool>(var_0.d.x, false, var_1.x, var_0.d.x), any(var_0.d)), vec4<bool>(false, false, true, false)), !(!(!select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, true, var_0.d.x, false), vec4<bool>(var_1.x, var_0.d.x, false, var_1.x)))), any(!var_1));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_mult_vec3_u32(u_input.b.yyw, vec3<u32>(1u, 4294967295u, u_input.b.x))), min(_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(6880u), var_0.b << (28578u % 32u), ~0u, reverseBits(69883u)), ~(~vec4<u32>(4235u, var_0.b, u_input.c, 4294967295u))), _wgslsmith_div_vec4_u32(u_input.b, (u_input.b ^ vec4<u32>(108477u, 4294967295u, var_0.b, var_0.b)) << (vec4<u32>(u_input.b.x, var_0.b, 4294967295u, 804u) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.b, var_0.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zx, u_input.b.xx), abs(u_input.b.zx)))));
}

