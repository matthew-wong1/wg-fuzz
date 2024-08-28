struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(false, any(select(vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, false)), u_input.c.x >= u_input.a.x), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true))), true, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 35185i), vec2<i32>(24159i, -2147483647i))) < _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -21433i, 24526i), vec3<i32>(1i, 0i, 0i)), ~(-2147483647i), 15407i, 20284i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 25502i, 1i, 0i), vec4<i32>(2147483647i, 3163i, -13211i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 12768i, -2147483647i, 55566i), vec4<i32>(-4388i, 1i, 1i, 2147483647i)), any(vec2<bool>(false, true)))));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, 134f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1219f, -1000f)))))), _wgslsmith_clamp_i32(122143i, ~1i, -(~5208i)) < 48008i, _wgslsmith_mult_u32(reverseBits(42874u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(19253u, u_input.b.x) | u_input.b.x, max(u_input.c.x, u_input.b.x))), 517f);
    let var_2 = Struct_3(abs(~min(select(vec2<i32>(0i, 2147483647i), vec2<i32>(1454i, 1i), false), vec2<i32>(-36217i, 36492i))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + -628f)) - _wgslsmith_f_op_f32(abs(-768f))), any(var_0), u_input.b.x, var_1.a), select(vec4<bool>(var_0.x, var_1.b, any(var_0.xzx), var_0.x), !vec4<bool>(!var_0.x, all(vec2<bool>(var_1.b, false)), any(vec4<bool>(true, var_0.x, false, false)), true), var_0.x), Struct_2(2156f, countOneBits(_wgslsmith_div_i32(-67426i, -62588i)) <= select(i32(-1i) * -1i, _wgslsmith_mod_i32(-7615i, 1i), true), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a - 667f), _wgslsmith_f_op_f32(-1419f - 1000f))) + 484f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -642f)), _wgslsmith_f_op_f32(var_1.d + -1194f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(786f)))), var_1.a));
    var var_3 = max(~var_2.a, reverseBits(vec2<i32>(60128i, firstTrailingBit(~(-34377i)))));
    var var_4 = var_2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, 180f))))));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i) | _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(41577i, -20938i) >> (vec2<u32>(u_input.a.x, u_input.c.x) % vec2<u32>(32u))), vec2<i32>(-1i, -40657i)), Struct_2(822f, false, _wgslsmith_sub_u32(45908u, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -532f))), !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, all(vec3<bool>(false, true, false))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(375f)) * _wgslsmith_f_op_f32(784f + -1171f)), _wgslsmith_f_op_f32(func_3()))), true, ~(~u_input.c.x) ^ u_input.a.x, -1617f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1078f, 1153f, 371f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, 381f, -405f, -343f))), vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), -758f, -973f, _wgslsmith_f_op_f32(-585f * -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1799f);
    var_1 = var_0.b.a;
    let var_2 = var_0.d;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1214f)), 2500f)) * var_0.b.a)), true, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(abs(var_2.c), var_0.b.c, u_input.b.x << (1u % 32u))), vec3<u32>(u_input.a.x, u_input.b.x, var_2.c)), _wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x * -122f), _wgslsmith_f_op_f32(-var_0.d.a))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-683f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-818f, var_3.a)), var_0.d.d) + 1f)), _wgslsmith_f_op_f32(772f - 1028f), var_2.d);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = ~(~(~(~(~u_input.b.x))));
    let var_1 = select(~(~vec3<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.a.x), countOneBits(var_0))), u_input.b, select(vec3<bool>(false, ~0u == (u_input.b.x | 4294967295u), false), vec3<bool>(true, select(!arg_1, false, arg_3.x > arg_3.x), arg_1), select(vec3<bool>(true, arg_1, any(vec2<bool>(true, false))), vec3<bool>(arg_1, false, -2147483647i == arg_0), _wgslsmith_f_op_f32(floor(arg_3.x)) != -181f)));
    return vec2<bool>(select(arg_1, true, arg_1), true);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> vec2<bool> {
    let var_0 = ~arg_0.a.c;
    var var_1 = ~u_input.b;
    var var_2 = arg_0.a;
    let var_3 = Struct_4(arg_0.a, ~arg_0.b, _wgslsmith_f_op_vec2_f32(trunc(arg_0.c)), firstTrailingBit(arg_0.d));
    let var_4 = ~(-_wgslsmith_mod_vec4_i32(min(vec4<i32>(var_3.b.x, arg_0.b.x, 2147483647i, 20483i) ^ vec4<i32>(var_3.b.x, var_3.b.x, arg_0.b.x, arg_0.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, -1i, 2147483647i), vec4<i32>(arg_0.b.x, -6580i, var_3.b.x, var_3.b.x), vec4<i32>(49446i, -28690i, 60612i, var_3.b.x))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-10453i, var_3.b.x, 1i, -1i), vec4<i32>(var_3.b.x, arg_0.b.x, -15860i, arg_0.b.x))));
    return select(func_4(var_3.b.x, all(vec3<bool>(any(vec4<bool>(false, var_2.b, true, arg_0.a.b)), false, true)), _wgslsmith_dot_vec4_u32(arg_0.d >> (arg_0.d % vec4<u32>(32u)), arg_0.d), _wgslsmith_f_op_vec3_f32(func_2())), vec2<bool>(true, arg_0.a.b), var_3.a.b);
}

fn func_5(arg_0: bool, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_1(u_input.c ^ vec3<u32>(_wgslsmith_add_u32(~4294967295u, u_input.c.x), firstTrailingBit(~1u), reverseBits(_wgslsmith_clamp_u32(16434u, 4294967295u, u_input.c.x))), vec2<bool>(arg_0, arg_0), arg_1);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(682f, arg_1))))) * vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c, var_0.c)), _wgslsmith_f_op_f32(arg_1 + -997f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -1722f) * vec2<f32>(arg_1, -1235f)), vec2<f32>(1000f, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, var_0.c), vec2<f32>(arg_1, var_0.c))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2424f, arg_1), vec2<f32>(arg_1, -1000f)))), !var_0.b)))));
    var_0 = Struct_1(~(~_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 0u, 50u), u_input.c), u_input.b)), vec2<bool>(!any(func_4(-58103i, false, 41646u, vec3<f32>(var_2.x, var_0.c, 1000f))), !var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(min(1884f, arg_1))) * 729f)));
    var var_3 = Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2285i, -15522i, -1i) >> (var_0.a % vec3<u32>(32u)), -vec3<i32>(-2147483647i, -14545i, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(-43618i, 0i), ~7853i, abs(-1i))), ~(~reverseBits(-1i))), Struct_2(var_2.x, all(var_0.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 4070u), (var_0.a.xx >> (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u))) & ~vec2<u32>(var_0.a.x, 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(trunc(-245f)))))), select(!vec4<bool>(var_0.c <= arg_1, true, var_0.a.x <= 1u, false), vec4<bool>(false, !all(vec3<bool>(var_0.b.x, arg_0, true)), arg_0, true), true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2870f, arg_1)))), all(!var_0.b) | (any(vec3<bool>(var_1, true, var_1)) & func_4(41621i, true, var_0.a.x, vec3<f32>(-102f, 1326f, var_0.c)).x), ~(~var_0.a.x) | u_input.c.x, var_2.x), vec4<f32>(var_2.x, 1189f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-110f)), _wgslsmith_f_op_f32(-646f + -380f))), arg_1));
    return u_input.c & u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(any(!func_1(Struct_4(Struct_2(1394f, false, 0u, 1159f), vec3<i32>(-37732i, -1i, 977i), vec2<f32>(254f, 462f), vec4<u32>(13600u, u_input.b.x, 0u, 19146u)), vec4<f32>(-431f, -453f, 479f, -1063f), -833f, -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-387f)), _wgslsmith_f_op_f32(999f + 408f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f - -2075f))))), !select(func_1(Struct_4(Struct_2(-1018f, true, u_input.b.x, -1595f), vec3<i32>(-35727i, 20075i, -1i), vec2<f32>(-132f, -2174f), vec4<u32>(4294967295u, u_input.b.x, 10783u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, 201f, -743f, -1000f)), -1000f, _wgslsmith_f_op_f32(select(-265f, 1004f, false))), func_1(Struct_4(Struct_2(103f, true, 4294967295u, 124f), vec3<i32>(0i, 0i, 10963i), vec2<f32>(-683f, 1092f), vec4<u32>(u_input.a.x, 50062u, 0u, 1u)), vec4<f32>(353f, -145f, -636f, 1158f), _wgslsmith_f_op_f32(step(2882f, -1285f)), _wgslsmith_div_f32(-879f, 1000f)), !any(vec2<bool>(false, false))), -1018f);
    var var_1 = _wgslsmith_mod_vec2_i32(min(~(-(~vec2<i32>(-97i, -2147483647i))), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-26749i, 22811i), vec2<i32>(1i, 1i))), select(min(vec2<i32>(1i, 1i), ~firstTrailingBit(vec2<i32>(-1i, 0i))), firstTrailingBit(countOneBits(reverseBits(vec2<i32>(1i, 1435i)))), select(true, !var_0.b.x, reverseBits(u_input.c.x) <= (u_input.b.x >> (4294967295u % 32u)))));
    var var_2 = var_0.b.x;
    var var_3 = abs(firstTrailingBit(~vec3<i32>(_wgslsmith_sub_i32(var_1.x, var_1.x), _wgslsmith_mult_i32(var_1.x, -2147483647i), _wgslsmith_mod_i32(var_1.x, var_1.x))));
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(~select(var_0.a, vec3<u32>(0u, 0u, 0u), false) & ~reverseBits(u_input.b), u_input.c), !var_0.b, _wgslsmith_f_op_f32(-var_0.c));
    let var_4 = vec4<f32>(var_0.c, 1507f, -1240f, _wgslsmith_f_op_f32(func_3()));
    var var_5 = 245f;
    let var_6 = _wgslsmith_div_vec2_i32(var_3.zy, var_3.yy);
    let x = u_input.a;
    s_output = StorageBuffer(var_6, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1615f)))), _wgslsmith_clamp_vec4_u32((_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 1528u, 0u, 4109u), vec4<u32>(4294967295u, 1u, 58682u, 4294967295u), vec4<u32>(var_0.a.x, 0u, 64964u, 0u)) ^ vec4<u32>(1u, 1u, u_input.b.x, 4294967295u)) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 31779u, 63552u, 1u), vec4<u32>(u_input.a.x, var_0.a.x, u_input.b.x, u_input.b.x)) << (firstTrailingBit(vec4<u32>(28740u, 3610u, var_0.a.x, u_input.c.x)) % vec4<u32>(32u))), vec4<u32>(24213u, firstTrailingBit(~var_0.a.x), u_input.b.x, select(reverseBits(18822u), u_input.c.x, all(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.a.x, 1u, 1u), vec4<u32>(var_0.a.x, 1u, var_0.a.x, var_0.a.x))) ^ (abs(vec4<u32>(31110u, var_0.a.x, u_input.b.x, 17690u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(1u, var_0.a.x, 25867u, 1u), vec4<u32>(8390u, 40047u, u_input.a.x, u_input.b.x)))));
}

