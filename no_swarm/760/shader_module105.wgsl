struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: f32 = -746f;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> Struct_3 {
    global0 = i32(-1i) * -72897i;
    global0 = select(~_wgslsmith_dot_vec2_i32(~vec2<i32>(76507i, 23255i), abs(vec2<i32>(1i, -44223i))), _wgslsmith_add_i32(-37228i, ~1i), all(vec3<bool>(true, arg_2 != 44305u, true))) ^ _wgslsmith_mult_i32(1i, 25180i);
    let var_0 = true;
    global1 = 204f;
    var var_1 = firstTrailingBit(vec4<i32>(select(1i, 1i, var_0), abs(~(~20708i)), ~(21826i & select(-49888i, 2147483647i, var_0)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(13087i, 39204i)), 19427i, 2147483647i), 1i, ~1i)));
    return Struct_3(~u_input.a, u_input.a, _wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(arg_2, u_input.a.x, ~arg_2), vec3<bool>(true, true, true)), select(vec3<u32>(u_input.a.x & 0u, 4294967295u, _wgslsmith_div_u32(43544u, u_input.a.x)), ~vec3<u32>(arg_2, 1u, u_input.a.x), vec3<bool>(true, true, true))), Struct_2(var_1.wyw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -944f, _wgslsmith_f_op_f32(arg_3 - arg_3), -1351f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2357f, 1190f, 780f, -239f), vec4<f32>(arg_1.x, arg_0, arg_0, -460f), vec4<bool>(true, var_0, false, false))))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = arg_0.c;
    var_0 = arg_0.c;
    var_0 = arg_0.c << (arg_0.c % vec3<u32>(32u));
    var var_1 = Struct_3(~u_input.a, min(reverseBits(~(~vec2<u32>(u_input.a.x, var_0.x))), countOneBits(~vec2<u32>(var_0.x, 48263u))), reverseBits(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 40919u, 32481u), arg_0.c), abs(~arg_0.c))), arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.e + _wgslsmith_f_op_vec4_f32(arg_0.e * arg_0.e))) * vec4<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(660f))), arg_0.e.x)));
    var var_2 = select(vec2<bool>(true, !(true && any(vec3<bool>(false, false, false)))), select(vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false))), !vec2<bool>(true, var_0.x < var_0.x), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), false);
    return var_1.c;
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(f32(-1f) * -884f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f - 1000f) - 394f)))));
    let var_0 = Struct_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1945f)), vec2<f32>(-1636f, _wgslsmith_f_op_f32(step(-1303f, _wgslsmith_f_op_f32(f32(-1f) * -803f)))), 8514u, 1452f).d, min(_wgslsmith_add_vec3_u32(func_3(func_1(1249f, vec2<f32>(-287f, 2328f), u_input.a.x, 815f), func_1(-624f, vec2<f32>(-1993f, -900f), 4294967295u, -255f).d, ~(-2147483647i), func_1(-353f, vec2<f32>(-539f, 1343f), 38503u, -447f).e.yxw), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), min(firstLeadingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(696u, 82153u, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(4294967295u, u_input.a.x, 1u)))), func_1(1010f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, 1000f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(492f, 753f), vec2<f32>(2118f, 458f), true)))), 47795u, _wgslsmith_f_op_f32(-1143f * _wgslsmith_f_op_f32(-1f))).d, Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 45276u, u_input.a.x), vec4<u32>(1u, 39271u, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, 82725u, u_input.a.x))), 24245u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, -183f, -1771f, 148f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) + _wgslsmith_f_op_f32(abs(-387f))), 1f))));
    global1 = _wgslsmith_f_op_f32(min(-990f, var_0.d.c.x));
    var var_1 = var_0.d;
    let var_2 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(any(vec3<bool>(false, true, false)), var_0.a.a.x <= 0i, var_0.a.a.x == var_0.c.a.x, true)), 1u == u_input.a.x, any(vec3<bool>(true, true, true))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)) || (func_1(var_1.c.x, _wgslsmith_f_op_vec2_f32(var_1.c.zx - var_0.d.c.zw), 11061u, 491f).d.a.x == ~(-3057i)));
    return _wgslsmith_f_op_f32(exp2(var_1.c.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.b, func_1(arg_3.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.yx - vec2<f32>(arg_2.c.x, -1145f))), firstTrailingBit(_wgslsmith_div_u32(3557u, arg_2.a)), arg_1).a.x), vec2<u32>(55152u, _wgslsmith_div_u32(u_input.a.x ^ 37785u, u_input.a.x)));
    var var_1 = -316f;
    var var_2 = ~select(vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -50639i), 2147483647i), max(abs(arg_0.x), arg_0.x), arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, arg_0.x, select(58633i, arg_0.x, true)), max(vec4<i32>(arg_0.x, arg_0.x, 0i, -33066i), vec4<i32>(arg_0.x, -19017i, -14819i, arg_0.x))), select(vec4<bool>(-57381i < arg_0.x, true, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, any(vec2<bool>(true, false)))));
    var var_3 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var_3 = select(select(vec2<bool>(true | (-2147483647i == arg_0.x), true), vec2<bool>(var_3.x, !var_3.x), select(vec2<bool>(true, var_3.x), select(select(vec2<bool>(false, var_3.x), vec2<bool>(true, false), var_3.x), select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, true)), vec2<bool>(true, true)), !(!vec2<bool>(var_3.x, true)))), select(select(select(select(vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, var_3.x), var_3.x), select(vec2<bool>(var_3.x, false), vec2<bool>(true, var_3.x), true), var_3.x), !(!vec2<bool>(var_3.x, true)), all(select(vec2<bool>(false, var_3.x), vec2<bool>(false, true), false))), vec2<bool>(var_3.x | (arg_3.b != 1u), true), any(select(!vec3<bool>(var_3.x, false, var_3.x), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, true, true), vec3<bool>(var_3.x, true, var_3.x)), any(vec3<bool>(false, false, var_3.x))))), !(!select(!vec2<bool>(var_3.x, true), vec2<bool>(false, var_3.x), select(vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, var_3.x), vec2<bool>(false, true)))));
    return Struct_4(Struct_2(func_1(arg_3.c.x, arg_3.c.yw, firstTrailingBit(~87230u), _wgslsmith_f_op_f32(f32(-1f) * -672f)).d.a), select(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.x, arg_2.a, 18567u) | vec3<u32>(13256u, 0u, u_input.a.x)), ~(vec3<u32>(u_input.a.x, 3671u, u_input.a.x) << (vec3<u32>(0u, 1u, 54438u) % vec3<u32>(32u))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(105136u, 1u, 24489u), vec3<u32>(u_input.a.x, 77010u, arg_3.b)), min(vec3<u32>(28610u, u_input.a.x, arg_2.a), vec3<u32>(43322u, arg_2.a, arg_2.b)), vec3<bool>(false, var_3.x, true))), vec3<u32>(arg_3.b, ~4294967295u, (1u | arg_3.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 119646u, arg_3.a, var_0.x), vec4<u32>(arg_2.b, 21905u, u_input.a.x, arg_2.b)) % 32u)), !(!select(vec3<bool>(true, true, true), vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, true, false)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, _wgslsmith_div_f32(-1287f, arg_1)) * _wgslsmith_f_op_vec2_f32(arg_3.c.wz * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_3.c.x), arg_2.c.wz)))), 54250u, 527f).d, Struct_1(func_1(arg_3.c.x, vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + 183f)), ~func_1(arg_1, arg_3.c.xy, u_input.a.x, 763f).a.x, _wgslsmith_f_op_f32(-arg_3.c.x)).b.x, 8604u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_3.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = arg_1.d;
    global0 = 0i;
    var var_1 = ~vec3<i32>(arg_1.c.a.x, _wgslsmith_add_i32(5268i, arg_1.a.a.x), -_wgslsmith_add_i32(arg_0.d.a.x, 1i));
    var var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(func_3(Struct_3(arg_1.b.yz, arg_1.b.yz, arg_0.c, arg_1.a, vec4<f32>(arg_1.d.c.x, -963f, var_0.c.x, arg_1.e)), Struct_2(arg_0.d.a), var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1536f, -1000f, arg_0.e.x) * arg_0.e.xwy)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a), vec2<u32>(1u, 149776u)) << (~u_input.a.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(70046u, 80787u), 1u, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_1.d.b, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, 0u, u_input.a.x))), vec4<u32>(min(4621u, u_input.a.x), ~0u, 25102u, 4294967295u));
    let var_3 = ~abs(0u) <= countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(116774u, _wgslsmith_mult_u32(arg_1.d.a, 4294967295u), countOneBits(39864u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_0.a.x, 75981u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 7705u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0.c.x), vec3<u32>(u_input.a.x, 4294967295u, 83912u)))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.xxw + vec3<f32>(164f, var_0.c.x, arg_0.e.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, 670f, arg_1.d.c.x))) + vec3<f32>(-127f, _wgslsmith_f_op_f32(-124f * var_0.c.x), 760f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.d.c.yzw, var_0.c.yxz)) * vec3<f32>(391f, arg_1.e, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(arg_0.e.zzz - _wgslsmith_f_op_vec3_f32(step(arg_1.d.c.ywz, vec3<f32>(-1769f, -1711f, -221f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(select(2147483647i, 25870i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -1i), ~vec2<i32>(-2147483647i, -20507i)) <= -2147483647i), ~(~1i));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_f_op_f32(step(2316f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-273f)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1342f, -896f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2195f, -361f) * vec2<f32>(-416f, 1362f))))), _wgslsmith_clamp_u32(reverseBits(u_input.a.x), select(14538u, 1u, true) ^ 1u, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_f32(-1f)), func_4((vec3<i32>(-24056i, -1873i, var_0.x) ^ abs(vec3<i32>(-15679i, 2147483647i, 2147483647i))) | ~vec3<i32>(var_0.x, -2147483647i, -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1854f) - 875f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(681f * 270f))), Struct_1(1u, 1u & ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, 459f, -1890f, 199f))), Struct_1(abs(firstLeadingBit(u_input.a.x)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 1398f, -644f, -168f))))));
    let var_3 = Struct_2(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-30774i, var_0.x, var_0.x) ^ vec3<i32>(var_0.x, 1i, 1i), ~vec3<i32>(52922i, var_0.x, var_0.x))));
    var var_4 = -(~(-(var_3.a.x >> (u_input.a.x % 32u)))) ^ (~987i >> (1u % 32u));
    global1 = -870f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(1u), ~select(~15829u, ~1u, false), u_input.a.x, u_input.a.x), vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.a.x, 18847i), var_0), ~firstTrailingBit(~(-11686i))), _wgslsmith_mod_i32(var_3.a.x, 45766i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_1(-463f, var_2.yx, u_input.a.x, var_2.x).e, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, -767f, var_2.x) - vec4<f32>(-149f, 109f, var_2.x, -1005f)), vec4<bool>(var_1, var_1, var_1, true))))));
}

