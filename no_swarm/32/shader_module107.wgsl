struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec2<u32>(1u, 4294967295u), Struct_1(vec4<f32>(-980f, 167f, 415f, 954f), true), Struct_3(0u), Struct_3(4294967295u), 0i), Struct_4(vec2<u32>(4294967295u, 14962u), Struct_1(vec4<f32>(313f, -1142f, -596f, -185f), true), Struct_3(32636u), Struct_3(13555u), 1i), Struct_4(vec2<u32>(22702u, 27020u), Struct_1(vec4<f32>(134f, -1180f, 1654f, 123f), false), Struct_3(0u), Struct_3(1u), 1i), Struct_4(vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(-1985f, 664f, -713f, 1000f), true), Struct_3(0u), Struct_3(4294967295u), 2147483647i), Struct_4(vec2<u32>(11729u, 1u), Struct_1(vec4<f32>(315f, 1187f, -1115f, 452f), true), Struct_3(0u), Struct_3(1u), 1i), Struct_4(vec2<u32>(4294967295u, 0u), Struct_1(vec4<f32>(-1367f, -324f, 422f, 859f), false), Struct_3(4294967295u), Struct_3(1u), -20107i), Struct_4(vec2<u32>(64380u, 51042u), Struct_1(vec4<f32>(-829f, -3479f, 244f, -450f), false), Struct_3(1u), Struct_3(26805u), 0i), Struct_4(vec2<u32>(55357u, 44272u), Struct_1(vec4<f32>(-177f, -1098f, -1000f, -1106f), true), Struct_3(13941u), Struct_3(4294967295u), i32(-2147483648)), Struct_4(vec2<u32>(0u, 9982u), Struct_1(vec4<f32>(668f, 1406f, 1121f, -1000f), false), Struct_3(0u), Struct_3(35144u), -1i), Struct_4(vec2<u32>(0u, 10420u), Struct_1(vec4<f32>(-211f, 628f, 990f, -414f), false), Struct_3(0u), Struct_3(1u), -1i));

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<bool>, 1>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f));
    let var_1 = ~(-1i);
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1648f, 353f)), -1958f, arg_0 >= var_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-614f)))))));
    let var_4 = !all(vec2<bool>(false, all(global1.xyw) | global1.x));
    return all(global1.ywz);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.b << (1u % 32u), 1u)], Struct_1(vec4<f32>(233f, _wgslsmith_f_op_f32(-2075f + _wgslsmith_f_op_f32(abs(-289f))), _wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(abs(-1000f))), global1.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(f32(-1f) * -935f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(676f, -1000f)), -338f, 1f), func_3(arg_0.x & 0i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2042f))), _wgslsmith_f_op_f32(-1236f + -1676f), -1000f, -468f), !select(false, true, all(vec2<bool>(global1.x, false)))));
    let var_1 = Struct_2(select(!(!global2[_wgslsmith_index_u32(1u, 1u)]), select(vec4<bool>(any(var_0.a.wzy), all(vec4<bool>(true, global1.x, false, true)), global1.x, true), vec4<bool>(var_0.a.x, any(var_0.a.zy), all(global1.xw), any(vec3<bool>(true, false, false))), select(global2[_wgslsmith_index_u32(countOneBits(0u), 1u)], vec4<bool>(false, var_0.d.b, global1.x, false), u_input.b >= u_input.b)), vec4<bool>(true || global1.x, all(var_0.a.wxx), all(vec2<bool>(false, var_0.c.b)), select(func_3(u_input.a), any(vec3<bool>(true, global1.x, false)), true))), Struct_1(vec4<f32>(-657f, var_0.d.a.x, _wgslsmith_f_op_f32(-796f * 467f), var_0.b.a.x), true), var_0.d, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(ceil(709f)))), true));
    var_0 = Struct_2(vec4<bool>(any(select(!vec3<bool>(false, true, var_1.a.x), vec3<bool>(true, var_0.b.b, var_0.c.b), select(var_0.a.zww, vec3<bool>(var_0.c.b, var_0.a.x, global1.x), vec3<bool>(true, var_0.c.b, true)))), var_1.d.b != true, var_1.a.x, all(var_0.a.wxw)), var_1.d, Struct_1(_wgslsmith_f_op_vec4_f32(var_1.c.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.b.a, vec4<f32>(-814f, var_1.d.a.x, var_1.d.a.x, -307f), vec4<bool>(var_0.b.b, true, true, var_0.a.x))))), !var_0.d.b), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b.a, _wgslsmith_f_op_vec4_f32(sign(var_0.c.a)), !var_0.a)), _wgslsmith_f_op_vec4_f32(-var_1.d.a)), global1.x));
    global0 = array<Struct_4, 10>();
    var var_2 = _wgslsmith_sub_vec3_u32(((_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 5878u, u_input.b), vec3<u32>(u_input.b, u_input.b, 82330u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 100684u), vec3<u32>(u_input.b, 18631u, 4294967295u))) << ((~vec3<u32>(53645u, 92726u, u_input.b) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 18638u, 108566u))) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(92365u, u_input.b), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37015u, 4294967295u), vec3<u32>(4294967295u, 1u, 65418u))), ~(~vec3<u32>(1u, u_input.b, 100467u))) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b & (u_input.b | firstTrailingBit(u_input.b)), 1u));
    return Struct_2(vec4<bool>(true, global1.x, true, var_2.x != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(1u, var_2.x, 4294967295u))), var_0.b, var_1.d, var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    global2 = array<vec4<bool>, 1>();
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)));
    var var_2 = vec4<i32>(0i, firstLeadingBit(-2147483647i), u_input.a, firstTrailingBit(reverseBits(~_wgslsmith_mult_i32(u_input.a, u_input.a))));
    var var_3 = ~1i;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(298f, arg_1), vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> bool {
    global1 = func_2(vec4<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 56524i), vec4<i32>(u_input.a, -11770i, u_input.a, u_input.a) << (vec4<u32>(u_input.b, 74120u, u_input.b, u_input.b) % vec4<u32>(32u)))))).a;
    var var_0 = select(global2[_wgslsmith_index_u32(4294967295u, 1u)], !global2[_wgslsmith_index_u32(countOneBits(u_input.b), 1u)], arg_0);
    var var_1 = any(var_0.yyx);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, arg_2.x, arg_2.x, 358f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -110f, arg_1, arg_1) * vec4<f32>(arg_2.x, -1583f, arg_2.x, arg_1)), u_input.b <= u_input.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, arg_2.x, -1492f, -910f)) + func_2(vec4<i32>(u_input.a, 0i, u_input.a, 42724i)).b.a)))), any(global2[_wgslsmith_index_u32(1u ^ ~reverseBits(u_input.b), 1u)]));
    var var_3 = -(~_wgslsmith_sub_i32(_wgslsmith_div_i32(43008i, _wgslsmith_add_i32(1i, u_input.a)), -u_input.a));
    return func_3(u_input.a) | all(global2[_wgslsmith_index_u32(u_input.b, 1u)]);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> Struct_5 {
    global1 = vec4<bool>(func_5(any(vec2<bool>(!global1.x, true)), -654f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec4<i32>(arg_2, -7662i, arg_2, -4343i)), _wgslsmith_div_f32(-738f, -1214f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -1324f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-189f, -1865f) + vec2<f32>(805f, 1470f))))), select(false, true, arg_3.x), false, arg_1);
    var var_0 = 1000f;
    let var_1 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.a, 2147483647i, 66625i)), vec3<i32>(u_input.a, u_input.a, 11237i) ^ vec3<i32>(arg_2, -3815i, -51175i)) & ~vec3<i32>(2147483647i, -18049i, u_input.a), ((vec3<i32>(arg_2, 24753i, u_input.a) << (arg_0 % vec3<u32>(32u))) & abs(vec3<i32>(-35985i, 10388i, u_input.a))) >> (vec3<u32>(arg_0.x, arg_0.x ^ u_input.b, 16827u) % vec3<u32>(32u))), vec3<i32>(u_input.a, u_input.a, ~arg_2 ^ 1i), func_2(_wgslsmith_div_vec4_i32(max(vec4<i32>(-2147483647i, -2925i, u_input.a, u_input.a), vec4<i32>(21663i, u_input.a, 0i, -1i)), reverseBits(vec4<i32>(u_input.a, 2147483647i, arg_2, 0i))) ^ abs(min(vec4<i32>(arg_2, -31304i, -1i, -23541i), vec4<i32>(0i, arg_2, -6197i, arg_2)))).a.xyy);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-150f, 383f) - _wgslsmith_f_op_f32(f32(-1f) * -1076f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(298f, -1059f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(625f)), _wgslsmith_f_op_f32(-2082f + -187f)))), _wgslsmith_f_op_f32(round(-2649f)))));
    var var_2 = global1.wwy;
    return Struct_5(arg_0, Struct_3(_wgslsmith_clamp_u32(arg_0.x, ~101237u, ~u_input.b | min(u_input.b, 0u))), Struct_3(_wgslsmith_sub_u32(arg_0.x, abs(arg_0.x) << (_wgslsmith_mult_u32(90179u, arg_0.x) % 32u))));
}

fn func_6(arg_0: Struct_5, arg_1: bool) -> vec4<f32> {
    global2 = array<vec4<bool>, 1>();
    global0 = array<Struct_4, 10>();
    global1 = select(vec4<bool>(global1.x, !arg_1 | !(!arg_1), !(max(18973i, 0i) != _wgslsmith_sub_i32(u_input.a, 2147483647i)), false), !vec4<bool>(arg_1, false, select(true, arg_1 & true, true), any(select(global1.xw, vec2<bool>(arg_1, true), global1.xy))), select(select(!select(vec4<bool>(arg_1, arg_1, global1.x, false), global2[_wgslsmith_index_u32(28578u, 1u)], true), !select(global2[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(0u, 1u)]), true), vec4<bool>(all(vec3<bool>(true, global1.x, global1.x)) && !arg_1, true, true, true), func_3(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, 8216i, u_input.a)))));
    global1 = vec4<bool>(!(!global1.x) & true, func_3(~_wgslsmith_clamp_i32(-58053i, -6167i, -1182i)) != (u_input.b > ~(u_input.b >> (arg_0.b.a % 32u))), true, !all(func_2(~vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)).a.xw));
    var var_0 = Struct_3(arg_0.b.a);
    return vec4<f32>(-1020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-1210f + _wgslsmith_f_op_f32(f32(-1f) * -1006f)), 957f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_4(vec2<u32>(~0u, 13445u), Struct_1(_wgslsmith_f_op_vec4_f32(func_6(func_1(vec3<u32>(u_input.b, u_input.b, u_input.b), global1.x, -69450i, select(vec2<bool>(global1.x, false), global1.wx, global1.xx)), false)), true), func_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 14213u)), vec3<u32>(u_input.b, u_input.b, u_input.b), select(vec3<u32>(1u, 6452u, 4294967295u), vec3<u32>(u_input.b, 1u, u_input.b), global1.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, 49336u, 1u, u_input.b)), 77334u, max(u_input.b, 8697u))), min(u_input.b, reverseBits(u_input.b)) >= firstTrailingBit(~u_input.b), u_input.a, func_2(max(reverseBits(vec4<i32>(u_input.a, -2349i, u_input.a, 0i)), ~vec4<i32>(u_input.a, -1187i, 2147483647i, u_input.a))).a.xz).b, func_1(vec3<u32>(35087u, _wgslsmith_mult_u32(1u, max(u_input.b, 0u)), firstLeadingBit(79912u)), !global1.x, u_input.a, global1.wx).b, -(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-18590i, u_input.a, u_input.a, 1i)), firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, 21312i, u_input.a)))));
    var var_2 = vec4<u32>(~var_1.c.a & _wgslsmith_add_u32(var_1.c.a, 5267u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(6005u, 306u, 4294967295u), vec3<u32>(var_1.d.a, 34448u, u_input.b)) >> (4294967295u % 32u), select(~min(85671u, u_input.b), _wgslsmith_mult_u32(0u, u_input.b) >> (13414u % 32u), (true || global1.x) && !global1.x), ~1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(30886u, var_1.a.x, u_input.b)), ~vec3<u32>(u_input.b, var_1.a.x, u_input.b) & ~vec3<u32>(var_1.c.a, var_1.d.a, 28322u)) ^ firstTrailingBit(11145u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 70731u), vec2<u32>(8407u, var_1.d.a)), abs(78826u)), u_input.b, ~abs(32238u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a), 94622u)), ~min(vec4<u32>(u_input.b, u_input.b, var_1.d.a, var_1.d.a), vec4<u32>(0u, var_1.a.x, u_input.b, u_input.b))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(78284u, 1u), 1u)], func_2(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1.e, var_1.e, var_1.e), vec4<i32>(u_input.a, -83402i, 24765i, -91849i))).c, func_2(~(vec4<i32>(u_input.a, var_1.e, var_1.e, 18498i) & vec4<i32>(1i, u_input.a, var_1.e, u_input.a))).c, var_1.b), _wgslsmith_f_op_f32(669f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.x, 189f)))))).x;
    global2 = array<vec4<bool>, 1>();
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-(~vec2<i32>(var_1.e, u_input.a)), abs(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a)))) & -(vec2<i32>(var_1.e, 1i) >> (vec2<u32>(37908u, u_input.b) % vec2<u32>(32u))), var_1.b.a.zy, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2425f * var_1.b.a.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1202f - -315f))))), _wgslsmith_f_op_f32(f32(-1f) * -690f));
}

