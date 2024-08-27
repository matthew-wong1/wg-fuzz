struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(~u_input.c.x, u_input.a.x, _wgslsmith_div_u32(20312u, ~u_input.a.x))), ~u_input.c);
    var var_1 = vec4<bool>(!(max(u_input.a.x, ~8510u) < ~(~u_input.a.x)), any(vec3<bool>(true, false, false)), true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -579f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1426f, -276f)) + vec2<f32>(_wgslsmith_f_op_f32(149f - -352f), -814f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(440f, 104f))), any(vec4<bool>(true, var_1.x, u_input.b > u_input.b, var_1.x)))), ~15070u, vec4<i32>(-reverseBits(u_input.b), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-34889i, u_input.b, 2147483647i, 1i)), reverseBits(vec4<i32>(-19942i, 0i, 12703i, 0i))), -4972i, u_input.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1171f, 2019f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(461f, 340f, 1491f), vec3<f32>(-2087f, -381f, 695f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1125f, 976f, -1482f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(112f, -474f, 1774f), vec3<f32>(-1804f, 548f, -1165f))))))), 834f);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.e, 165f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.d.x, var_3.a.x), vec2<f32>(var_3.e, -407f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a * var_3.d.zy))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.a)))), ~var_3.b, vec4<i32>(abs(u_input.b), abs(-_wgslsmith_mult_i32(u_input.b, 1i)), ~(~_wgslsmith_clamp_i32(var_3.c.x, u_input.b, 0i)), var_3.c.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d * vec3<f32>(-264f, var_3.d.x, -212f)) - var_3.d)))), -614f);
    return -608f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(-1000f, -1954f), min(~(~_wgslsmith_add_u32(4294967295u, u_input.c.x)), ~abs(max(u_input.a.x, 0u))), -(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(3247i, -5272i, u_input.b, -19848i)), vec4<i32>(u_input.b, u_input.b, -14983i, 12775i)) ^ ~(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), 1f, _wgslsmith_f_op_f32(f32(-1f) * -221f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(361f, 2062f, 670f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 217f, 785f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-533f)) - 764f), 382f, _wgslsmith_f_op_f32(1747f * -837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(647f)))))));
    let var_1 = ~select(0u, 8850u, !select(true, false, true));
    let var_2 = vec3<bool>(any(vec2<bool>(true, true | any(vec3<bool>(false, true, false)))), true, u_input.a.x == 1u);
    let var_3 = ~(~(select(vec4<u32>(var_1, 24764u, u_input.a.x, var_0.b) >> (vec4<u32>(4294967295u, 4151u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<u32>(var_1, 22885u, var_1, var_0.b), vec4<bool>(true, true, var_2.x, false)) >> (u_input.a % vec4<u32>(32u))));
    var var_4 = Struct_1(vec2<f32>(var_0.e, var_0.a.x), _wgslsmith_mult_u32(13195u, u_input.a.x) << (reverseBits((var_3.x & u_input.a.x) & firstTrailingBit(0u)) % 32u), var_0.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.d), var_0.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(495f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)), -119f)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.e, -937f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-375f, var_0.d.x))))), 0u | ~_wgslsmith_sub_u32(min(1u, var_4.b), ~1u), select(abs(var_0.c), var_4.c, var_2.x), _wgslsmith_f_op_vec3_f32(trunc(var_4.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.d.x)) - _wgslsmith_div_f32(var_4.d.x, _wgslsmith_f_op_f32(-var_4.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-arg_1.x, ~(-(~arg_1.x))), _wgslsmith_add_i32(firstTrailingBit(~_wgslsmith_dot_vec3_i32(arg_2.c.wzz, vec3<i32>(-1i, -29446i, 0i))), i32(-1i) * -reverseBits(-2147483647i)));
    var var_1 = func_2();
    var var_2 = Struct_1(arg_2.d.yz, 0u, -(~max(reverseBits(vec4<i32>(arg_1.x, arg_2.c.x, -2147483647i, 0i)), abs(vec4<i32>(var_0, 1i, -2203i, u_input.b)))), arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - _wgslsmith_f_op_f32(562f * 580f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(207f - 720f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, var_1.a.x))))));
    var var_3 = -vec4<i32>(u_input.b, firstTrailingBit(var_0), i32(-1i) * -var_0, arg_2.c.x);
    var_1 = arg_2;
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = vec2<i32>(2147483647i, -6761i);
    var_0 = -vec2<i32>(_wgslsmith_mod_i32(u_input.b, 2147483647i) & select(select(-1i, var_0.x, true), _wgslsmith_sub_i32(var_0.x, var_0.x), arg_1.x), -(~(~11976i)));
    let var_1 = ~(vec4<u32>(~abs(u_input.a.x), u_input.a.x, ~(u_input.a.x >> (21517u % 32u)), select(4294967295u, u_input.c.x, false) << (_wgslsmith_dot_vec3_u32(vec3<u32>(36551u, u_input.c.x, 4294967295u), u_input.c) % 32u)) & vec4<u32>(u_input.a.x, u_input.a.x ^ ~16666u, ~countOneBits(u_input.c.x), 23506u));
    var var_2 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), ~(~vec2<i32>(var_0.x, -31271i)), func_2());
    var var_3 = -((vec2<i32>(u_input.b, var_0.x ^ u_input.b) ^ var_2.c.xy) & func_4(var_2.d.x, var_2.c.xy, func_2()).c.ww);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-721f * _wgslsmith_f_op_f32(-arg_0.x)))) - _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(1023f)))) - _wgslsmith_f_op_f32(sign(188f)));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = vec2<i32>(106826i, -countOneBits(u_input.b));
    var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-770f, _wgslsmith_div_f32(arg_1.x, -2359f)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f) + -208f))), vec2<i32>(u_input.b, var_0.x), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(-499f))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-4061i, var_0.x & u_input.b), func_4(1000f, vec2<i32>(var_0.x, 1i), Struct_1(arg_1, u_input.a.x, vec4<i32>(u_input.b, var_0.x, -76267i, var_0.x), vec3<f32>(arg_0, 1034f, arg_0), -1000f)).c.yy | (vec2<i32>(u_input.b, -64700i) << (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u)))), Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -964f)), u_input.c.x, vec4<i32>(var_0.x, ~7571i, func_2().c.x, 11232i), func_4(_wgslsmith_f_op_f32(func_3()), countOneBits(vec2<i32>(var_0.x, 1i)), Struct_1(arg_1, u_input.a.x, vec4<i32>(1i, var_0.x, -17508i, var_0.x), vec3<f32>(-315f, arg_0, arg_0), -286f)).d, _wgslsmith_f_op_f32(floor(-691f))))).c.wy;
    let var_1 = vec2<u32>(func_2().b, ~u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -2273f, 1599f)) + vec4<f32>(arg_0, -178f, arg_0, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_0, 1016f, arg_0))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_0, arg_0, 2748f), vec4<f32>(-1258f, -145f, arg_1.x, arg_1.x))) + vec4<f32>(arg_0, -1605f, 940f, 1000f)))))));
    var_0 = ~vec2<i32>(i32(-1i) * -77686i, -32247i);
    return StorageBuffer(func_2().e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1286f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(-1000f, 861f), vec2<bool>(true, true))), -949f)), func_2().e));
}

