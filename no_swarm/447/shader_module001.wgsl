struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(1095f, -1789f), vec2<bool>(true, true), vec2<u32>(4294967295u, 7774u), vec3<i32>(-59409i, -92001i, 2147483647i), vec2<bool>(false, true)), Struct_1(vec2<f32>(-851f, 986f), vec2<bool>(false, true), vec2<u32>(48451u, 0u), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec2<bool>(false, false)), Struct_1(vec2<f32>(-941f, 315f), vec2<bool>(true, true), vec2<u32>(0u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 49367i), vec2<bool>(false, true)), Struct_1(vec2<f32>(-438f, -673f), vec2<bool>(false, false), vec2<u32>(42743u, 57970u), vec3<i32>(33983i, -1i, 1i), vec2<bool>(true, true)), Struct_1(vec2<f32>(-1799f, 323f), vec2<bool>(false, false), vec2<u32>(1u, 0u), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec2<bool>(true, true)), Struct_1(vec2<f32>(-201f, -875f), vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-1i, 0i, 52981i), vec2<bool>(false, true)), Struct_1(vec2<f32>(361f, -380f), vec2<bool>(true, true), vec2<u32>(58216u, 0u), vec3<i32>(-36692i, -14066i, -48608i), vec2<bool>(false, true)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - _wgslsmith_f_op_f32(sign(-335f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-154f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f * 351f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1197f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(529f))))), _wgslsmith_f_op_f32(select(2249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)), true)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, var_0)), vec2<f32>(-1027f, var_0)))), vec2<bool>(false, true), ~(~arg_2.yx), arg_0, !vec2<bool>(true, u_input.b < -1198i)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, _wgslsmith_div_f32(var_0, -2260f))))) + _wgslsmith_div_vec2_f32(var_1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, var_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(234f, var_1.a.a.x)))) + vec2<f32>(1f, -1024f))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(0u, 7u)]);
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.a.a.x, -1276f, -647f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, 3124f, -1231f, -101f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, arg_0.a.a.x, -1664f, arg_0.a.a.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a.a.x, -1159f, 1000f, 128f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, -2513f, -963f, 605f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-294f, var_0.a.a.x, 483f, -456f) + vec4<f32>(arg_2.a.a.x, -435f, arg_0.a.a.x, 577f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, var_1.a.x, -2137f, -1256f) + vec4<f32>(-227f, 1163f, -358f, 189f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1373f, arg_2.a.a.x, _wgslsmith_f_op_f32(-arg_0.a.a.x))), (61130i ^ _wgslsmith_mult_i32(-43221i, var_0.a.d.x)) <= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -33402i, 2147483647i), vec4<i32>(1i, -41840i, var_1.d.x, var_1.d.x)), _wgslsmith_clamp_i32(var_0.a.d.x, 39809i, -2147483647i)))));
    return countOneBits(reverseBits(~vec4<u32>(var_0.a.c.x, 1u, 47727u, 7531u) & select(~vec4<u32>(arg_2.a.c.x, var_1.c.x, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.c.x, var_0.a.c.x, 1u, 14066u), vec4<u32>(var_0.a.c.x, var_0.a.c.x, var_1.c.x, 838u)), !arg_0.a.b.x)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 7>();
    var var_0 = vec2<i32>(u_input.b, _wgslsmith_add_i32(max(22968i, reverseBits(u_input.b)), ~u_input.b ^ u_input.b));
    var var_1 = max(_wgslsmith_mod_vec3_u32(u_input.a, reverseBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.e, u_input.d.x, u_input.a.x), ~41511u, u_input.c | 25265u))), ~(vec3<u32>(33607u, max(u_input.e, 41885u), ~0u) >> (firstTrailingBit(firstLeadingBit(u_input.a)) % vec3<u32>(32u))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 7u)];
    var var_3 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a + arg_0.xy), var_2.a, !var_2.b)), !(!var_2.e), vec2<u32>(select(var_2.c.x, var_2.c.x, var_2.b.x), 1u), var_2.d ^ _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, var_2.d.x), var_2.d), vec2<bool>(!var_2.e.x, true))), _wgslsmith_f_op_f32(arg_0.x - -2031f), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(var_2.d, ~vec3<i32>(var_0.x, 1i, -1i), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d.x, 59141u), vec3<u32>(1u, var_1.x, u_input.c)), vec2<u32>(var_2.c.x, 3588u) << (u_input.d % vec2<u32>(32u)))), select(select(var_2.e, vec2<bool>(var_2.e.x, var_2.e.x), vec2<bool>(var_2.b.x, true)), vec2<bool>(var_2.b.x, var_2.e.x), true), var_2.c, var_2.d, select(var_2.e, var_2.e, true))));
    return Struct_2(global0[_wgslsmith_index_u32(~12132u, 7u)]);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    let var_0 = arg_1.a.e.x;
    global0 = array<Struct_1, 7>();
    var var_1 = ~(arg_1.a.c.x & ~(~4294967295u));
    var_1 = 4294967295u;
    let var_2 = -34471i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.a * _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), -1170f) * arg_1.a.a) + arg_1.a.a));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = func_2(arg_2);
    let var_1 = true;
    global0 = array<Struct_1, 7>();
    return vec4<bool>(any(!select(vec4<bool>(arg_1.a.b.x, var_1, arg_1.a.e.x, var_1), vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.a.e.x, arg_1.a.e.x, false, arg_1.a.b.x))), var_1, !var_1 && true, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = select(func_6(_wgslsmith_f_op_vec2_f32(func_5(~select(vec4<u32>(0u, 10899u, arg_1.a.c.x, arg_1.a.c.x), vec4<u32>(4294967295u, 1u, arg_0.x, arg_1.a.c.x), false), func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x), vec3<f32>(1000f, -935f, arg_1.a.a.x)))), _wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(-1322f * -629f)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, 223f, arg_1.a.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(min(1162f, -1166f)), _wgslsmith_f_op_f32(trunc(441f)), arg_1.a.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.b), -1i, arg_1.a.d.x), vec3<i32>(13699i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -91302i), vec2<i32>(2147483647i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(4298i, 32325i), vec2<i32>(-62647i, 1i))))), vec4<bool>(arg_1.a.b.x, func_6(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(206f, 469f), _wgslsmith_f_op_vec2_f32(func_3(arg_1.a.d, vec3<i32>(-1i, -2147483647i, -8794i), u_input.a, vec2<u32>(34522u, 24446u))))), Struct_2(arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, 1016f, arg_1.a.a.x) * vec3<f32>(2079f, -237f, arg_1.a.a.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(266f, 687f, arg_1.a.a.x)))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(0i, u_input.b), abs(u_input.b))).x, !(!(true & arg_1.a.e.x)), true), vec4<bool>(any(!select(vec3<bool>(false, arg_1.a.b.x, arg_1.a.e.x), vec3<bool>(arg_1.a.e.x, true, true), arg_1.a.e.x)), !arg_1.a.b.x, true, arg_1.a.b.x & true));
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_div_u32(~0u, 1u);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.d.x | (i32(-1i) * -4414i), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, arg_1.a.d.x), vec2<i32>(u_input.b, arg_1.a.d.x)), _wgslsmith_dot_vec2_i32(~(~arg_1.a.d.yz), -_wgslsmith_sub_vec2_i32(arg_1.a.d.zx, vec2<i32>(-53841i, u_input.b)))), arg_1.a.d);
    let var_3 = Struct_1(arg_1.a.a, var_0.zz, ~(~(~arg_0)), -vec3<i32>(~(arg_1.a.d.x ^ arg_1.a.d.x), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(21339i, 42081i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))), u_input.b), vec2<bool>(false, !func_6(vec2<f32>(arg_1.a.a.x, -103f), Struct_2(Struct_1(arg_1.a.a, arg_1.a.b, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(u_input.b, 37903i, u_input.b), var_0.wz)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.a.a.x, arg_1.a.a.x), vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x), var_0.xwx)), vec3<i32>(-2147483647i, arg_1.a.d.x, -1i)).x));
    return arg_1;
}

fn func_7(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = vec3<bool>(true, false, all(!func_6(arg_0.a.a, Struct_2(arg_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(-313f, arg_0.a.a.x, arg_0.a.a.x), vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), arg_0.a.d).yx));
    let var_1 = u_input.b;
    let var_2 = -(var_1 | countOneBits(~abs(u_input.b)));
    var var_3 = func_1(~u_input.d, arg_0).a;
    var var_4 = vec2<i32>(arg_0.a.d.x, _wgslsmith_sub_i32(2147483647i, 0i));
    return select(arg_0.a.c, u_input.a.yx, var_0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global0 = array<Struct_1, 7>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(747f, 1135f), vec2<f32>(804f, 806f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(468f, 1161f) - vec2<f32>(-1728f, 2102f))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true)), func_7(func_1(~u_input.a.zy, Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 7u)]))), -_wgslsmith_div_vec3_i32(max(vec3<i32>(7650i, u_input.b, -2147483647i), vec3<i32>(-2147483647i, u_input.b, u_input.b)), vec3<i32>(u_input.b, -1i, u_input.b) << (u_input.a % vec3<u32>(32u))), vec2<bool>(true || all(vec3<bool>(true, false, false)), true)));
    var var_2 = func_1(vec2<u32>(var_1.a.c.x | 81961u, var_0) ^ ~abs(max(var_1.a.c, u_input.d)), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 7u)]));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, -105f, -1540f, -888f)), vec4<f32>(_wgslsmith_f_op_f32(1479f + 2576f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1086f)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, -1509f)))))), vec4<bool>((abs(624u) >= _wgslsmith_add_u32(var_1.a.c.x, var_0)) || true, any(vec4<bool>(var_1.a.d.x != 38073i, all(vec3<bool>(true, var_1.a.e.x, var_1.a.b.x)), !var_1.a.b.x, true)), (select(4294967295u, var_0, true) > _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6426u), vec2<u32>(9066u, var_2.a.c.x))) && var_1.a.e.x, true)));
    var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, ~var_0), 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, -702f, var_2.a.a.x, var_2.a.a.x))))))));
}

