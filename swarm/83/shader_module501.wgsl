struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2;
    let var_1 = u_input.b;
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1289f, 2258f, arg_1.a.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(342f, -2273f, var_0.b.x))))), !((true & var_0.a.c.b.x) && arg_1.c.b.x), arg_2.d), _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_div_vec2_f32(vec2<f32>(-307f, _wgslsmith_f_op_f32(f32(-1f) * -668f)), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-arg_1.a.x)))), Struct_1(max(abs(var_0.c.a), arg_0.a.a), !select(arg_0.b, vec4<bool>(true, false, false, var_0.d.b.x), arg_1.c.b.x)), arg_1.c);
    let var_2 = vec3<i32>(-2147483647i, -abs(_wgslsmith_mult_i32(-42235i, arg_1.c.a)), ~35081i);
    var var_3 = vec4<bool>(all(!(!vec2<bool>(true, var_0.d.b.x))), arg_1.b, all(vec2<bool>(true, true)), any(arg_1.c.b.ywx));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(334f, var_0.a.a.x))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + 1677f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(arg_2, arg_0.d.b), arg_0.a, Struct_4(Struct_2(vec3<f32>(-2383f, -209f, arg_0.a.a.x), true, Struct_1(-24508i, arg_0.a.c.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, -2334f)), arg_0.c, Struct_1(arg_0.d.a, vec4<bool>(arg_2.b.x, false, arg_0.d.b.x, arg_0.d.b.x))))) - _wgslsmith_f_op_f32(-arg_0.b.x)) > arg_0.b.x;
    var_0 = true || any(vec3<bool>(arg_0.d.b.x, arg_2.b.x, 487f < arg_0.a.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -2947f, _wgslsmith_f_op_f32(-1009f - arg_0.a.a.x))) - vec3<f32>(-114f, -398f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -840f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.a, vec3<f32>(1239f, 728f, arg_0.b.x)), arg_0.a.a)) + vec3<f32>(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.b.x), _wgslsmith_f_op_f32(1069f - arg_0.a.a.x)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-34130i, arg_2.b), arg_2.b), Struct_2(vec3<f32>(arg_0.b.x, -265f, -917f), true, arg_2), Struct_4(Struct_2(vec3<f32>(-1336f, 1096f, arg_0.b.x), arg_2.b.x, Struct_1(-19857i, arg_0.a.c.b)), arg_0.b, Struct_1(0i, arg_0.c.b), arg_2)))))));
    let var_2 = -_wgslsmith_mod_i32(2147483647i, i32(-1i) * -36548i);
    return Struct_1(~firstTrailingBit(-arg_0.a.c.a), arg_0.a.c.b);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_2.a.a.x), -939f));
    let var_1 = Struct_4(arg_2.a, vec2<f32>(-546f, _wgslsmith_f_op_f32(f32(-1f) * -715f)), arg_2.c, func_2(arg_2, _wgslsmith_div_vec3_u32(reverseBits(u_input.d), vec3<u32>(arg_1, 43589u, 0u)) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))) % vec3<u32>(32u)), Struct_1(abs(_wgslsmith_clamp_i32(0i, u_input.a.x, arg_2.c.a)), select(select(vec4<bool>(false, true, arg_2.c.b.x, arg_2.a.b), vec4<bool>(true, true, false, false), arg_2.d.b), select(arg_2.a.c.b, vec4<bool>(false, arg_2.d.b.x, arg_2.a.c.b.x, arg_2.a.c.b.x), false), !arg_2.d.b))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.a.x);
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -1547f, arg_2.a.a.x)))))), all(vec3<bool>(true, true, all(vec4<bool>(var_1.a.b, var_1.c.b.x, false, true)))), Struct_1(~arg_2.c.a, vec4<bool>(false, var_1.a.c.b.x, true, false))), var_0.xx, Struct_1(u_input.c.x << (4294967295u % 32u), vec4<bool>(var_1.d.b.x && any(vec2<bool>(true, false)), false, func_2(Struct_4(Struct_2(vec3<f32>(-1691f, var_0.x, -335f), var_1.a.c.b.x, var_1.c), arg_2.a.a.zz, arg_2.a.c, Struct_1(u_input.a.x, var_1.a.c.b)), vec3<u32>(arg_1, 51263u, arg_1), func_2(Struct_4(Struct_2(var_1.a.a, arg_2.c.b.x, var_1.d), vec2<f32>(arg_0, var_2), var_1.a.c, Struct_1(-2147483647i, var_1.c.b)), u_input.d, arg_2.c)).b.x, var_1.d.b.x == true)), func_2(Struct_4(Struct_2(_wgslsmith_div_vec3_f32(var_1.a.a, vec3<f32>(var_1.a.a.x, 680f, var_2)), true, var_1.c), var_1.b, var_1.d, func_2(arg_2, vec3<u32>(0u, 1u, arg_1), Struct_1(arg_2.d.a, arg_2.a.c.b))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, countOneBits(1u), u_input.d.x), u_input.d), var_1.d));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_1.a.a.x, -1000f, 1894f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-999f, arg_0, var_0.x, 583f), vec4<f32>(arg_2.b.x, -1306f, -725f, var_1.a.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(131f, 986f) - -729f), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1305f))), var_0.x), func_2(Struct_4(Struct_2(var_1.a.a, var_1.a.c.b.x, var_1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1375f, var_0.x) - var_3.a.a.xy), var_3.a.c, arg_2.c), vec3<u32>(28557u, ~0u, _wgslsmith_add_u32(4294967295u, arg_1)), func_2(Struct_4(Struct_2(vec3<f32>(1172f, -352f, var_1.a.a.x), false, Struct_1(1i, arg_2.c.b)), vec2<f32>(var_1.b.x, 1184f), Struct_1(-16849i, vec4<bool>(var_1.c.b.x, true, var_1.a.c.b.x, true)), var_3.a.c), select(u_input.d, vec3<u32>(arg_1, u_input.d.x, u_input.b), vec3<bool>(var_3.d.b.x, var_3.d.b.x, true)), arg_2.a.c)).b)) + vec4<f32>(-788f, arg_0, -917f, var_2));
    return Struct_1(var_3.c.a, var_3.a.c.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_3(Struct_1(arg_1.a, arg_1.b), !vec4<bool>(all(vec2<bool>(arg_1.b.x, true)), true, _wgslsmith_f_op_f32(-195f * -748f) == _wgslsmith_f_op_f32(step(580f, 1455f)), arg_1.b.x));
    var var_2 = func_2(Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, 1756f, -490f)), all(vec2<bool>(arg_1.b.x, true)), Struct_1(u_input.c.x, !arg_1.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1317f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_1.a, Struct_1(func_2(Struct_4(Struct_2(vec3<f32>(-1401f, -832f, 2013f), var_1.a.b.x, arg_1), vec2<f32>(-1000f, -933f), Struct_1(-27390i, vec4<bool>(var_1.b.x, arg_1.b.x, arg_1.b.x, true)), Struct_1(var_1.a.a, vec4<bool>(false, false, true, true))), ~u_input.d, func_2(Struct_4(Struct_2(vec3<f32>(-1290f, 525f, -693f), var_0, Struct_1(arg_1.a, var_1.b)), vec2<f32>(-1069f, 128f), Struct_1(arg_0.x, arg_1.b), Struct_1(var_1.a.a, vec4<bool>(false, true, true, false))), vec3<u32>(u_input.b, u_input.b, u_input.d.x), var_1.a)).a, arg_1.b)), ~vec3<u32>(u_input.d.x, _wgslsmith_div_u32(countOneBits(u_input.d.x), ~1u), select(~u_input.d.x, 1u, true)), var_1.a).b.xx;
    var_1 = Struct_3(arg_1, func_4(_wgslsmith_f_op_f32(-1666f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(180f - 387f)))), _wgslsmith_dot_vec2_u32(u_input.d.xx, firstTrailingBit(firstLeadingBit(u_input.d.xy))), Struct_4(Struct_2(vec3<f32>(1627f, -893f, -1000f), arg_1.b.x, func_4(-289f, u_input.b, Struct_4(Struct_2(vec3<f32>(-818f, 782f, -167f), var_2.x, var_1.a), vec2<f32>(-260f, -116f), Struct_1(18235i, arg_1.b), Struct_1(u_input.c.x, arg_1.b)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1792f, 957f) * vec2<f32>(1000f, 1106f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, 194f) * vec2<f32>(1143f, -197f)))), var_1.a, func_2(Struct_4(Struct_2(vec3<f32>(1000f, -1000f, -1000f), true, var_1.a), vec2<f32>(785f, -3855f), var_1.a, var_1.a), abs(vec3<u32>(67851u, 31757u, u_input.b)), var_1.a))).b);
    var_2 = arg_1.b.wz;
    return arg_1;
}

fn func_1() -> vec2<u32> {
    let var_0 = vec2<f32>(-2419f, 586f);
    let var_1 = _wgslsmith_f_op_f32(1653f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    let var_2 = func_5(~vec3<i32>(u_input.c.x, -1i | u_input.c.x, 2147483647i << (u_input.d.x % 32u)) & reverseBits(-vec3<i32>(u_input.c.x, 0i, -2147483647i)), func_4(1f, u_input.b, Struct_4(Struct_2(vec3<f32>(-1163f, var_0.x, var_0.x), false, func_2(Struct_4(Struct_2(vec3<f32>(942f, -845f, var_1), false, Struct_1(2147483647i, vec4<bool>(false, true, true, true))), var_0, Struct_1(1i, vec4<bool>(true, false, false, true)), Struct_1(u_input.a.x, vec4<bool>(false, false, false, true))), vec3<u32>(u_input.b, u_input.b, 21911u), Struct_1(0i, vec4<bool>(true, true, false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, -2102f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(118f, 701f) - var_0)), Struct_1(-u_input.a.x, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), Struct_1(2147483647i, func_2(Struct_4(Struct_2(vec3<f32>(var_0.x, var_1, var_1), true, Struct_1(0i, vec4<bool>(false, false, false, true))), var_0, Struct_1(-1i, vec4<bool>(true, false, true, false)), Struct_1(u_input.c.x, vec4<bool>(true, true, true, true))), u_input.d, Struct_1(-1i, vec4<bool>(true, true, true, true))).b))));
    let var_3 = Struct_3(var_2, vec4<bool>(-countOneBits(var_2.a) >= _wgslsmith_mod_i32(-var_2.a, 20021i), any(vec3<bool>(func_4(-312f, 4294967295u, Struct_4(Struct_2(vec3<f32>(1499f, var_1, -3289f), true, Struct_1(1i, vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x))), vec2<f32>(1769f, 312f), Struct_1(var_2.a, var_2.b), Struct_1(u_input.c.x, vec4<bool>(true, var_2.b.x, false, var_2.b.x)))).b.x, var_2.b.x, var_2.b.x)), var_2.b.x && true, func_2(Struct_4(Struct_2(vec3<f32>(var_0.x, var_1, var_1), true, Struct_1(var_2.a, var_2.b)), vec2<f32>(-968f, 858f), func_4(var_0.x, u_input.d.x, Struct_4(Struct_2(vec3<f32>(var_1, -375f, 474f), false, var_2), vec2<f32>(var_1, -1000f), var_2, Struct_1(-58551i, vec4<bool>(false, var_2.b.x, true, var_2.b.x)))), var_2), ~u_input.d, Struct_1(var_2.a, var_2.b)).b.x));
    let var_4 = var_1;
    return (vec2<u32>(2545u, ~1u) ^ u_input.d.xz) & u_input.d.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~(~func_1()), _wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(7018u, 1u)) ^ ~(~vec2<u32>(u_input.d.x, u_input.b)), ~(~max(vec2<u32>(581u, u_input.b), u_input.d.zy))));
    let var_1 = _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, u_input.c.x), -1i), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a)), -28794i), select(7945i, -func_2(Struct_4(Struct_2(vec3<f32>(307f, 367f, -1000f), true, Struct_1(u_input.a.x, vec4<bool>(true, false, false, false))), vec2<f32>(-1286f, 2372f), Struct_1(-73453i, vec4<bool>(false, false, true, true)), Struct_1(1i, vec4<bool>(true, false, true, true))), u_input.d & u_input.d, func_2(Struct_4(Struct_2(vec3<f32>(1338f, 814f, 2480f), true, Struct_1(u_input.c.x, vec4<bool>(true, false, false, false))), vec2<f32>(-267f, -688f), Struct_1(u_input.c.x, vec4<bool>(false, false, true, false)), Struct_1(u_input.c.x, vec4<bool>(true, false, false, true))), vec3<u32>(u_input.b, var_0.x, 10802u), Struct_1(u_input.c.x, vec4<bool>(true, true, false, false)))).a, true));
    var var_2 = Struct_1(var_1, vec4<bool>(2147483647i == min(_wgslsmith_dot_vec3_i32(u_input.a.zzx, vec3<i32>(1i, u_input.c.x, var_1)), -2147483647i), true, true, !(func_5(u_input.a.yyw, Struct_1(-1487i, vec4<bool>(true, false, false, false))).b.x || any(vec2<bool>(false, true)))));
    var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-832f - -1149f) + _wgslsmith_f_op_f32(-988f * 2781f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(575f)) + -432f))), _wgslsmith_dot_vec2_u32(var_0, _wgslsmith_clamp_vec2_u32(func_1(), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 19799u) | u_input.d.zy, ~vec2<u32>(var_0.x, 7053u)), min(var_0, var_0) ^ ~vec2<u32>(u_input.d.x, 1u))), Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-34556i, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)), vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x)), Struct_2(vec3<f32>(-1703f, 594f, 2051f), false, Struct_1(var_2.a, var_2.b)), Struct_4(Struct_2(vec3<f32>(-1000f, 1000f, -986f), var_2.b.x, Struct_1(u_input.a.x, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x))), vec2<f32>(-1083f, -234f), Struct_1(0i, var_2.b), Struct_1(-2147483647i, vec4<bool>(false, false, var_2.b.x, false))))), -914f), min(var_1, u_input.c.x) > (i32(-1i) * -1i), func_2(Struct_4(Struct_2(vec3<f32>(-545f, 104f, -481f), false, Struct_1(var_1, vec4<bool>(var_2.b.x, false, false, true))), vec2<f32>(-453f, -428f), Struct_1(-7524i, vec4<bool>(false, true, true, false)), Struct_1(-2147483647i, var_2.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u), vec3<u32>(26360u, var_0.x, u_input.b)), Struct_1(1i, var_2.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(728f, -1614f))))), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-644f)), _wgslsmith_f_op_f32(ceil(520f)), var_0.x == 1u)), u_input.b, Struct_4(Struct_2(vec3<f32>(-960f, 1432f, -275f), true, Struct_1(u_input.c.x, vec4<bool>(var_2.b.x, var_2.b.x, false, false))), vec2<f32>(-1729f, -162f), func_4(-1000f, 49767u, Struct_4(Struct_2(vec3<f32>(-690f, -442f, -450f), var_2.b.x, Struct_1(var_2.a, var_2.b)), vec2<f32>(191f, 285f), Struct_1(38458i, vec4<bool>(false, var_2.b.x, true, var_2.b.x)), Struct_1(-1i, var_2.b))), Struct_1(u_input.c.x, var_2.b))), func_5(vec3<i32>(u_input.c.x, -13552i, var_1), func_2(Struct_4(Struct_2(vec3<f32>(126f, -667f, 258f), true, Struct_1(var_2.a, vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x))), vec2<f32>(1291f, -519f), Struct_1(var_1, var_2.b), Struct_1(-2147483647i, var_2.b)), ~u_input.d, func_5(u_input.a.wzy, Struct_1(var_1, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)))))));
    var_2 = Struct_1(-(~abs(-2147483647i)), select(vec4<bool>(true, !func_5(u_input.a.xwx, Struct_1(u_input.c.x, var_2.b)).b.x, true, var_2.b.x), func_5(_wgslsmith_add_vec3_i32(u_input.a.ywx, vec3<i32>(25794i, -2147483647i, var_2.a)), func_4(_wgslsmith_f_op_f32(-145f + 1000f), ~1u, Struct_4(Struct_2(vec3<f32>(-655f, 1253f, -519f), var_2.b.x, Struct_1(11429i, var_2.b)), vec2<f32>(487f, -494f), Struct_1(var_1, var_2.b), Struct_1(-32103i, var_2.b)))).b, true));
    let var_3 = Struct_3(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-291f))), -1776f)), 1u, Struct_4(Struct_2(vec3<f32>(-349f, -798f, -2380f), all(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), Struct_1(37150i, vec4<bool>(false, true, var_2.b.x, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, 2345f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1381f, 768f))), func_2(Struct_4(Struct_2(vec3<f32>(269f, 491f, -1000f), var_2.b.x, Struct_1(-25581i, vec4<bool>(false, var_2.b.x, false, false))), vec2<f32>(125f, -1084f), Struct_1(-22619i, vec4<bool>(var_2.b.x, var_2.b.x, false, true)), Struct_1(-23376i, vec4<bool>(var_2.b.x, false, true, true))), firstTrailingBit(vec3<u32>(38183u, var_0.x, u_input.b)), Struct_1(var_2.a, var_2.b)), func_4(493f, 20872u, Struct_4(Struct_2(vec3<f32>(1038f, 1835f, 1000f), var_2.b.x, Struct_1(var_2.a, vec4<bool>(false, false, var_2.b.x, var_2.b.x))), vec2<f32>(831f, -2012f), Struct_1(0i, var_2.b), Struct_1(0i, vec4<bool>(var_2.b.x, false, var_2.b.x, true)))))), func_5(~vec3<i32>(_wgslsmith_add_i32(0i, var_1), var_2.a, _wgslsmith_mod_i32(var_2.a, -1i)), func_5(abs(u_input.a.zxy) & vec3<i32>(-2147483647i, -7933i, 111953i), func_2(Struct_4(Struct_2(vec3<f32>(452f, -700f, -1475f), var_2.b.x, Struct_1(-1i, var_2.b)), vec2<f32>(870f, 923f), Struct_1(var_2.a, var_2.b), Struct_1(-15486i, var_2.b)), ~vec3<u32>(u_input.b, u_input.b, var_0.x), Struct_1(var_2.a, vec4<bool>(true, true, true, var_2.b.x))))).b);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1036f - -1000f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -824f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-410f + 1370f), _wgslsmith_f_op_f32(f32(-1f) * -563f), false)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1065f)), -2083f))));
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -815f))), 1f) * vec3<f32>(-1534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - -1255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1164f - 2000f)))), true, Struct_1(6950i, vec4<bool>(false, true, all(select(vec4<bool>(true, var_2.b.x, var_2.b.x, true), var_3.a.b, vec4<bool>(var_2.b.x, true, true, var_3.b.x))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_mult_vec3_u32(abs(u_input.d), u_input.d), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d.x & 49425u, 70563u >> (var_0.x % 32u)), u_input.d.x));
}

