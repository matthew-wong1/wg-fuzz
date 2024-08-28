struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-1i), 35166i), firstLeadingBit(-34843i), max(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2853i, -26381i, -1i), firstLeadingBit(vec3<i32>(1i, 1i, 1i))), abs(~(~1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1103f, -384f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1116f, -1251f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1997f * 172f), -1000f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1331f, -2284f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1164f, -576f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1695f), vec2<f32>(259f, -788f), true))))))));
    var_0 = 16208i;
    let var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(-1071f)), _wgslsmith_div_f32(var_1.x, 1060f), -467f);
    var var_3 = u_input.a & (~u_input.a >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(_wgslsmith_mod_u32(16530u, u_input.a), 1u)) % 32u));
    return true;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: bool) -> Struct_4 {
    var var_0 = arg_0.b.a;
    let var_1 = var_0.a;
    var_0 = Struct_2(Struct_1(28075u, 1u, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-169f, var_0.d.c)))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(25855u, var_0.b.x, arg_0.b.b.x), ~arg_0.b.c.a.b), arg_0.b.a.b.x, ~select(~var_1.b, arg_0.b.d, func_3())), var_0.c, Struct_1(u_input.a, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1101f - var_1.c))), _wgslsmith_add_vec2_i32(abs(firstLeadingBit(reverseBits(vec2<i32>(30761i, -24324i)))), -vec2<i32>(arg_0.b.a.e.x, -32458i)));
    var_0 = Struct_2(Struct_1(~59647u, 21769u, -1353f), vec3<u32>(arg_0.b.d, _wgslsmith_mult_u32(var_0.b.x, ~(~u_input.a)), var_0.a.b ^ var_1.b), vec4<i32>(0i, firstTrailingBit(var_0.e.x), 379i, (var_0.c.x | firstTrailingBit(1i)) << (~max(var_0.b.x, 34285u) % 32u)), Struct_1(u_input.a, var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.d.c + 2455f) - var_1.c))), vec2<i32>(min(var_0.e.x, 2147483647i), abs(-_wgslsmith_div_i32(arg_0.b.a.c.x, arg_0.b.a.e.x))));
    var var_2 = var_0.d;
    return arg_0.b;
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.c.a;
    var var_1 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(441f, var_0.d.c)))), arg_0), vec4<bool>(arg_0.c.d, false, true, !arg_0.c.d), !select(select(select(vec2<bool>(arg_0.c.d, true), vec2<bool>(true, false), true), select(vec2<bool>(true, arg_0.c.d), vec2<bool>(true, arg_0.c.d), true), all(vec3<bool>(arg_0.c.d, true, true))), vec2<bool>(any(vec4<bool>(true, false, false, true)), arg_0.c.d), select(vec2<bool>(true, arg_0.c.d), select(vec2<bool>(false, false), vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.d, false)), vec2<bool>(false, arg_0.c.d))), arg_0.c.d).c.a.d;
    var var_2 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.c, 1057f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-640f, 701f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(775f, var_0.a.c) * vec2<f32>(827f, arg_0.a.a.c))))), func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.c, -726f)), arg_0), select(!vec4<bool>(true, true, arg_0.c.d, true), select(vec4<bool>(arg_0.c.d, true, arg_0.c.d, arg_0.c.d), vec4<bool>(arg_0.c.d, arg_0.c.d, true, arg_0.c.d), vec4<bool>(arg_0.c.d, true, true, true)), func_3()), select(select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.d, arg_0.c.d), true), !vec2<bool>(true, arg_0.c.d), true), !(arg_0.c.d & arg_0.c.d))), vec4<bool>(arg_0.c.d, any(select(select(vec3<bool>(arg_0.c.d, true, true), vec3<bool>(false, arg_0.c.d, arg_0.c.d), true), vec3<bool>(arg_0.c.d, arg_0.c.d, arg_0.c.d), !vec3<bool>(arg_0.c.d, arg_0.c.d, arg_0.c.d))), all(vec3<bool>(true, true, true)), !(all(vec3<bool>(arg_0.c.d, arg_0.c.d, arg_0.c.d)) && func_2(Struct_5(vec2<f32>(435f, -504f), arg_0), vec4<bool>(arg_0.c.d, arg_0.c.d, arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.d, arg_0.c.d), true).c.d)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, func_3()), arg_0.c.d), vec2<bool>(all(select(vec3<bool>(false, arg_0.c.d, arg_0.c.d), vec3<bool>(arg_0.c.d, true, false), false)), !any(vec3<bool>(arg_0.c.d, true, arg_0.c.d)))), all(vec3<bool>(true, any(!vec2<bool>(true, arg_0.c.d)), true))).a;
    let var_3 = Struct_4(var_0, ~var_0.b.zy, func_2(Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1745f, -786f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2992f, var_1.c)))), func_2(Struct_5(vec2<f32>(var_2.d.c, arg_0.a.d.c), Struct_4(arg_0.c.a, var_2.b.yx, Struct_3(Struct_2(Struct_1(var_2.d.b, var_0.a.a, var_2.d.c), vec3<u32>(var_1.a, u_input.a, 32291u), vec4<i32>(var_2.c.x, -2147483647i, arg_0.c.b.x, arg_0.a.c.x), var_0.d, arg_0.c.b), var_0.c.xy, Struct_1(41149u, var_0.a.b, -146f), arg_0.c.d, 4294967295u), 4294967295u)), !vec4<bool>(false, arg_0.c.d, false, arg_0.c.d), select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.d, false), vec2<bool>(arg_0.c.d, arg_0.c.d)), arg_0.c.d)), !(!select(vec4<bool>(false, arg_0.c.d, arg_0.c.d, arg_0.c.d), vec4<bool>(arg_0.c.d, false, true, false), vec4<bool>(arg_0.c.d, false, arg_0.c.d, arg_0.c.d))), vec2<bool>(all(select(vec2<bool>(arg_0.c.d, true), vec2<bool>(true, false), vec2<bool>(arg_0.c.d, true))), arg_0.c.d), -1567f >= _wgslsmith_f_op_f32(-613f - var_1.c)).c, firstLeadingBit(20560u));
    var_1 = Struct_1(firstTrailingBit(0u), var_3.b.x, 2101f);
    return Struct_1(var_0.b.x, ~var_2.b.x, var_0.a.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = !select(func_3(), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)) & true, func_3());
    var var_1 = vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-608f)))))));
    var var_2 = all(!(!(!vec2<bool>(var_0, true))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(711f, -711f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2051f, -354f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(404f)), _wgslsmith_f_op_f32(1691f * 1000f)), vec2<f32>(656f, func_4(Struct_4(Struct_2(arg_1, vec3<u32>(arg_1.a, arg_1.b, 51219u), vec4<i32>(1i, 0i, arg_2.x, 0i), Struct_1(1u, u_input.a, -1000f), arg_2.yx), vec2<u32>(0u, 4294967295u), Struct_3(Struct_2(Struct_1(1u, 101213u, -1283f), vec3<u32>(arg_1.a, u_input.a, u_input.a), arg_2, Struct_1(0u, u_input.a, -781f), arg_2.zz), arg_2.ww, arg_1, false, arg_1.b), u_input.a)).c), var_0))));
    var var_3 = func_2(Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1021f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) + vec2<f32>(var_1.x, arg_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, var_1.x))), !vec2<bool>(var_0, var_0))), func_2(Struct_5(vec2<f32>(631f, -1639f), Struct_4(Struct_2(arg_1, vec3<u32>(u_input.a, 43347u, 21348u), vec4<i32>(arg_0.x, arg_2.x, 2147483647i, 0i), Struct_1(38896u, 44924u, -1393f), arg_0.yz), vec2<u32>(7250u, 34113u), Struct_3(Struct_2(arg_1, vec3<u32>(4294967295u, 30664u, arg_1.a), arg_0, arg_1, arg_0.xw), vec2<i32>(arg_2.x, -2147483647i), Struct_1(arg_1.b, u_input.a, arg_1.c), false, u_input.a), 27626u)), vec4<bool>(arg_2.x < 2147483647i, false, var_0 | var_0, false), select(select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), false), vec2<bool>(false, true), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0))), !select(var_0, var_0, var_0))), !vec4<bool>(true, _wgslsmith_f_op_f32(step(arg_1.c, var_1.x)) == _wgslsmith_f_op_f32(arg_1.c - -862f), var_0 == all(vec4<bool>(var_0, true, var_0, true)), true | any(vec4<bool>(false, true, true, var_0))), vec2<bool>(!(true & var_0) && (firstTrailingBit(arg_1.a) != ~7916u), var_0), !(!any(vec3<bool>(var_0, false, var_0)))).c;
    return var_3.d;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec2<bool> {
    var var_0 = 2147483647i ^ ~(i32(-1i) * -arg_1.b.x);
    var var_1 = vec3<bool>(false, !any(vec3<bool>(false, false, arg_1.d)), func_5(max(-_wgslsmith_div_vec4_i32(vec4<i32>(36402i, 0i, 0i, -1i), arg_1.a.c), _wgslsmith_mod_vec4_i32(vec4<i32>(15372i, -3897i, arg_3, arg_1.a.e.x), _wgslsmith_mod_vec4_i32(arg_1.a.c, vec4<i32>(0i, 9009i, -1i, arg_3)))), func_4(func_2(Struct_5(vec2<f32>(arg_1.c.c, -1000f), Struct_4(arg_1.a, vec2<u32>(arg_0.a, u_input.a), arg_1, 1u)), !vec4<bool>(arg_1.d, false, arg_1.d, false), !vec2<bool>(arg_1.d, arg_1.d), all(vec4<bool>(false, true, arg_1.d, arg_1.d)))), arg_1.a.c));
    var var_2 = arg_1;
    var var_3 = Struct_2(arg_0, vec3<u32>(arg_1.c.b, 0u, ~1u), abs(-select(arg_1.a.c, -vec4<i32>(-2147483647i, -2147483647i, arg_3, 2147483647i), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, arg_1.d, true, var_2.d), vec4<bool>(var_1.x, false, var_2.d, true)))), var_2.a.a, ~(var_2.a.c.xx >> (arg_1.a.b.yx % vec2<u32>(32u))));
    let var_4 = true;
    return !(!var_1.zy);
}

fn func_6(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 12673i), vec4<i32>(2147483647i, 16632i, 1i, -2147483647i))), ~0i, ~max(func_2(Struct_5(vec2<f32>(-1000f, -757f), Struct_4(Struct_2(Struct_1(4294967295u, u_input.a, 463f), vec3<u32>(0u, u_input.a, 0u), vec4<i32>(-16099i, -2147483647i, 0i, -56730i), Struct_1(u_input.a, u_input.a, -523f), vec2<i32>(24111i, 0i)), vec2<u32>(22430u, u_input.a), Struct_3(Struct_2(Struct_1(28321u, 66270u, 1342f), vec3<u32>(0u, u_input.a, 4294967295u), vec4<i32>(-6644i, -2147483647i, -6024i, 55472i), Struct_1(u_input.a, 62988u, 1554f), vec2<i32>(2147483647i, 25996i)), vec2<i32>(21793i, -1i), Struct_1(u_input.a, u_input.a, 515f), false, u_input.a), 4294967295u)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0, arg_0.x).c.b.x, 16198i)), ~abs(reverseBits(vec3<i32>(0i, 0i, 0i))));
    let var_1 = ~vec2<u32>(_wgslsmith_sub_u32(3394u, select(u_input.a, 4294967295u << (u_input.a % 32u), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))), 0u);
    return _wgslsmith_clamp_i32(~(-7980i) & var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0, select(-var_0, select(vec3<i32>(var_0.x, 444i, var_0.x), vec3<i32>(var_0.x, -32284i, var_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), true))), vec3<i32>(_wgslsmith_add_i32(abs(-2147483647i), _wgslsmith_mod_i32(var_0.x, 0i)), 1i, 59173i)), ~_wgslsmith_mod_i32(~_wgslsmith_add_i32(0i, var_0.x), firstLeadingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = vec4<i32>(min(func_6(func_1(Struct_1(1u, u_input.a, -814f), Struct_3(Struct_2(Struct_1(u_input.a, u_input.a, -718f), vec3<u32>(u_input.a, 1u, 5013u), vec4<i32>(-2147483647i, 1i, 1i, 3963i), Struct_1(0u, u_input.a, -1034f), vec2<i32>(-8299i, 24184i)), vec2<i32>(-2147483647i, 2147483647i), Struct_1(u_input.a, 4294967295u, -716f), false, 17597u), _wgslsmith_f_op_f32(205f + 744f), _wgslsmith_sub_i32(22630i, 0i))), firstLeadingBit(1i >> (1u % 32u))), 1i, _wgslsmith_add_i32(-67682i, -firstTrailingBit(_wgslsmith_mod_i32(1i, -31576i))), 13259i);
    var var_2 = Struct_4(func_2(Struct_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1609f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(175f, -399f) * vec2<f32>(-1731f, -682f)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), Struct_4(func_2(Struct_5(vec2<f32>(-514f, 393f), Struct_4(Struct_2(Struct_1(u_input.a, u_input.a, 3009f), vec3<u32>(4597u, u_input.a, u_input.a), var_1, Struct_1(u_input.a, 87886u, -472f), var_1.xy), vec2<u32>(4294967295u, u_input.a), Struct_3(Struct_2(Struct_1(21087u, u_input.a, 181f), vec3<u32>(u_input.a, u_input.a, 5849u), var_1, Struct_1(u_input.a, 0u, -905f), vec2<i32>(var_1.x, 2147483647i)), var_1.wx, Struct_1(u_input.a, 60450u, 1012f), true, u_input.a), u_input.a)), vec4<bool>(false, true, true, true), vec2<bool>(true, true), false).a, ~vec2<u32>(u_input.a, u_input.a), func_2(Struct_5(vec2<f32>(995f, -1000f), Struct_4(Struct_2(Struct_1(u_input.a, 80377u, -695f), vec3<u32>(4294967295u, 51925u, 1u), vec4<i32>(var_1.x, -2147483647i, 30559i, -2147483647i), Struct_1(4294967295u, u_input.a, 1307f), var_1.zy), vec2<u32>(38898u, 41143u), Struct_3(Struct_2(Struct_1(1u, u_input.a, -1074f), vec3<u32>(26954u, 7837u, u_input.a), var_1, Struct_1(u_input.a, u_input.a, 1945f), vec2<i32>(-2147483647i, var_1.x)), var_1.xy, Struct_1(u_input.a, u_input.a, -1527f), true, 1u), 1u)), vec4<bool>(true, false, false, false), vec2<bool>(false, false), true).c, firstLeadingBit(26346u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), -1i == (2802i ^ var_1.x)), !func_1(Struct_1(22085u, u_input.a, -562f), func_2(Struct_5(vec2<f32>(-1537f, -358f), Struct_4(Struct_2(Struct_1(26123u, u_input.a, -1701f), vec3<u32>(0u, u_input.a, 9771u), vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), Struct_1(53192u, 53113u, -750f), var_1.yx), vec2<u32>(6095u, 4294967295u), Struct_3(Struct_2(Struct_1(1u, 0u, 2067f), vec3<u32>(u_input.a, u_input.a, 1u), vec4<i32>(0i, var_1.x, var_1.x, 2147483647i), Struct_1(u_input.a, u_input.a, 341f), var_1.yx), var_1.zx, Struct_1(36676u, 14935u, 1525f), true, 1u), 11636u)), vec4<bool>(true, false, false, false), vec2<bool>(true, false), false).c, -744f, var_1.x), false).a, max(vec2<u32>(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(u_input.a)), min(u_input.a, ~u_input.a)), vec2<u32>(countOneBits(max(4294967295u, u_input.a)), ~8733u)), func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(904f, 1000f))), func_2(Struct_5(vec2<f32>(2563f, -1076f), Struct_4(Struct_2(Struct_1(10752u, u_input.a, -900f), vec3<u32>(u_input.a, 1u, u_input.a), var_1, Struct_1(u_input.a, 0u, 2171f), var_1.xw), vec2<u32>(0u, 0u), Struct_3(Struct_2(Struct_1(u_input.a, 0u, -1208f), vec3<u32>(u_input.a, 1u, 4294967295u), vec4<i32>(var_1.x, var_1.x, -1i, var_1.x), Struct_1(57631u, u_input.a, 399f), var_1.zy), var_1.wy, Struct_1(8761u, 20753u, -1352f), true, u_input.a), u_input.a)), vec4<bool>(true, true, true, true), vec2<bool>(true, false), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false)) || false).c, _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(abs(~1u), _wgslsmith_mult_u32(firstTrailingBit(1u), ~u_input.a))));
    var_2 = Struct_4(Struct_2(var_2.a.a, vec3<u32>(var_2.b.x, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(14328u, 1u), var_2.b)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(var_2.b.x, 4212u))), firstLeadingBit(reverseBits(vec4<i32>(2147483647i, 1i, var_1.x, -16633i))), Struct_1(0u, ~var_2.a.d.a, 1000f), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, abs(2147483647i)), max(var_1.x, var_1.x) | ~24889i)), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(var_2.c.a.b, ~var_2.c.a.b)), 4294967295u), var_2.c, ~func_2(Struct_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2147f, var_2.c.c.c))), func_2(Struct_5(vec2<f32>(var_2.c.c.c, 1327f), Struct_4(Struct_2(Struct_1(0u, 16778u, var_2.a.a.c), var_2.a.b, var_2.a.c, var_2.c.a.a, var_2.c.b), var_2.c.a.b.xx, var_2.c, u_input.a)), vec4<bool>(true, var_2.c.d, var_2.c.d, true), vec2<bool>(false, true), true)), select(select(vec4<bool>(false, var_2.c.d, var_2.c.d, false), vec4<bool>(var_2.c.d, var_2.c.d, var_2.c.d, true), vec4<bool>(false, var_2.c.d, false, var_2.c.d)), vec4<bool>(var_2.c.d, var_2.c.d, var_2.c.d, var_2.c.d), !var_2.c.d), vec2<bool>(true, 0u != u_input.a), (var_2.a.c.x << (17949u % 32u)) == -var_2.a.c.x).b.x);
    var_0 = reverseBits(27604u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(vec4<u32>(36492u, 68893u, var_2.a.d.b, var_2.a.a.a))));
}

