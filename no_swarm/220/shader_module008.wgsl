struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1471f, 721f, -1429f) + vec3<f32>(675f, 963f, -197f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1210f, -1298f, 193f)))))));
    let var_1 = _wgslsmith_f_op_f32(floor(131f));
    let var_2 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-33866i, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.a.x, 5829u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -1465i), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_div_i32(2147483647i, u_input.b), -7567i, -15234i), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), vec4<i32>(u_input.b ^ -87839i, ~u_input.b, firstLeadingBit(u_input.b), -u_input.b))) & (vec4<i32>(u_input.b, select(_wgslsmith_sub_i32(11538i, 41339i), u_input.b & u_input.b, all(vec3<bool>(true, true, false))), firstTrailingBit(_wgslsmith_add_i32(-20610i, 1i)), ~(~u_input.b)) & (vec4<i32>(-u_input.b, -1i, _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b) & min(-vec4<i32>(u_input.b, -26387i, 8528i, -1i), vec4<i32>(-1i, u_input.b, 1i, 2147483647i))));
    let var_3 = select(var_0.x >= var_0.x, true, true);
    var var_4 = var_2.www;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> vec2<u32> {
    let var_0 = ~_wgslsmith_add_vec4_i32(-select(vec4<i32>(u_input.b, -1i, -18328i, u_input.b), vec4<i32>(1i, -41914i, -57730i, 0i), false), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, u_input.b, -24040i), vec4<i32>(0i, u_input.b, u_input.b, -1i)), select(vec4<i32>(u_input.b, u_input.b, 28078i, -1i), vec4<i32>(-58711i, -1i, 2147483647i, u_input.b), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))) | vec4<i32>(u_input.b, -12943i, _wgslsmith_sub_i32(~1i, abs(~u_input.b)), abs(_wgslsmith_mod_i32(~8161i, max(-63179i, u_input.b))));
    var var_1 = Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(~arg_3, 0u)), ~(vec2<u32>(arg_0.b.x, arg_0.b.x) >> (~arg_0.b % vec2<u32>(32u))), ~select(vec2<u32>(1u, u_input.a.x), u_input.a.yz, arg_1) | ~(~u_input.a.zy)));
    var var_2 = max(_wgslsmith_add_vec3_u32(~vec3<u32>(60884u, 88196u, arg_0.b.x), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, var_1.b.x))), u_input.a) | vec3<u32>(u_input.a.x, ~var_1.b.x ^ ~countOneBits(arg_3), var_1.b.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1306f, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.x, -1277f))))), vec2<u32>(~(~(~u_input.a.x)), 4294967295u));
    var var_4 = _wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1369f, 2314f) * var_1.a))))) - vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(712f * _wgslsmith_f_op_f32(sign(arg_0.a.x))))));
    return abs(vec2<u32>(u_input.a.x, ~var_3.b.x) << (~vec2<u32>(~u_input.a.x, var_1.b.x) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.x, -1000f))))))), func_4(arg_1, select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)), !func_3(), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_1.b.x, arg_1.b.x, u_input.a.x)), vec4<u32>(arg_1.b.x, 0u, 71306u, arg_1.b.x))));
    var_0 = Struct_1(var_0.a, ~(~vec2<u32>(~arg_1.b.x, 14045u)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_div_u32(arg_1.b.x, 34790u);
    var_0 = Struct_1(vec2<f32>(var_0.a.x, 620f), vec2<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, 1u), vec2<u32>(arg_2, 46959u)), vec2<u32>(0u, 66483u)), 1u), 34038u));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = func_2(0i, func_2(~(~u_input.b), func_2(0i, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), arg_1.b), countOneBits(~47439u)), arg_1.b.x), arg_0.b.x);
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, false, false, true))), false), vec2<bool>(true, true), (~var_1.b.x << (u_input.a.x % 32u)) != arg_0.b.x);
    var var_3 = _wgslsmith_f_op_f32(-1582f + _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-1048f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + arg_0.a.x))))));
    var var_4 = vec2<f32>(365f, func_2(-12166i & _wgslsmith_div_i32(u_input.b ^ u_input.b, 1i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(883f, arg_1.a.x, true)), _wgslsmith_f_op_f32(ceil(-643f))), u_input.a.xz), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 143193u, arg_2.b.x, u_input.a.x), vec4<u32>(20960u, 18830u, 0u, 0u)), _wgslsmith_add_u32(~var_0.b.x, _wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(arg_1.b.x, 0u))))).a.x);
    return func_2(-1i, arg_0, 1u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    var var_0 = vec4<u32>(abs(1u), ~(~(arg_0.b.x ^ arg_1.b.x)), _wgslsmith_div_u32(countOneBits(abs(arg_0.b.x ^ 4294967295u)), select(func_2(arg_3 | 0i, func_5(arg_0, arg_1, arg_1, 833f), arg_0.b.x).b.x, ~(~95797u), !(true | arg_2.x))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b.x, arg_1.b.x, 29577u, arg_1.b.x), countOneBits(vec4<u32>(arg_1.b.x, arg_0.b.x, u_input.a.x, u_input.a.x))) & 23576u));
    var var_1 = ~(~58891u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_0.a.x, arg_0.a.x)))), vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(min(func_5(Struct_1(vec2<f32>(arg_1.a.x, -661f), vec2<u32>(arg_1.b.x, var_0.x)), arg_0, Struct_1(vec2<f32>(-1000f, -1221f), vec2<u32>(u_input.a.x, 1u)), arg_0.a.x).a.x, _wgslsmith_f_op_f32(arg_0.a.x - 1206f)))), !any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))));
    var var_3 = arg_2.x;
    var var_4 = arg_1;
    return ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 44655u, 19535u), vec4<u32>(20776u, u_input.a.x, u_input.a.x, 46854u) >> (vec4<u32>(arg_1.b.x, 69153u, 4294967295u, 1u) % vec4<u32>(32u))), min(var_4.b.x, ~21126u ^ max(u_input.a.x, arg_0.b.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = select(u_input.a, vec3<u32>(func_6(func_5(func_2(-1i, Struct_1(arg_1, vec2<u32>(38443u, arg_0.x)), arg_0.x), func_2(u_input.b, Struct_1(arg_1, u_input.a.zx), u_input.a.x), func_2(40008i, Struct_1(vec2<f32>(arg_1.x, 409f), u_input.a.zy), u_input.a.x), _wgslsmith_f_op_f32(-arg_1.x)), func_5(Struct_1(arg_1, vec2<u32>(arg_0.x, 0u)), Struct_1(vec2<f32>(arg_1.x, 1685f), u_input.a.yx), Struct_1(arg_1, vec2<u32>(arg_0.x, 25285u)), arg_1.x), vec3<bool>(true, true, true), _wgslsmith_add_i32(1i, u_input.b)), firstTrailingBit(u_input.a.x) >> (select(abs(arg_0.x), 10023u, arg_0.x < arg_0.x) % 32u), (~1u | countOneBits(u_input.a.x)) | reverseBits(1u)), select(select(vec3<bool>(var_0 != false, false, any(vec4<bool>(true, var_0, var_0, var_0))), select(select(vec3<bool>(false, true, var_0), vec3<bool>(false, true, false), var_0), select(vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, var_0), true), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, true), false)), any(vec4<bool>(var_0, var_0, false, var_0)) && select(var_0, false, true)), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), false), select(vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, true), var_0), arg_1.x >= arg_1.x), !any(vec2<bool>(var_0, var_0))), var_0));
    var var_2 = select(false, var_0, true && var_0);
    let var_3 = ~firstLeadingBit(reverseBits(arg_2));
    var var_4 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    return func_5(Struct_1(arg_1, vec2<u32>(u_input.a.x, max(1u, 4294967295u) ^ arg_0.x)), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, arg_1) - arg_1), max(u_input.a.xx, _wgslsmith_mod_vec2_u32(var_1.xy, arg_0))), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1), ~vec2<u32>(1u, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1231f, arg_1.x), arg_1)), vec2<u32>(1u, 19449u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - vec2<f32>(arg_1.x, arg_1.x)), select(arg_0, vec2<u32>(var_1.x, var_1.x), var_0)), -1000f), func_5(func_2(-9318i, Struct_1(vec2<f32>(299f, -458f), var_1.zy), 0u), Struct_1(vec2<f32>(arg_1.x, 316f), select(u_input.a.zx, vec2<u32>(4294967295u, arg_0.x), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_1)), ~vec2<u32>(var_1.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1240f)), arg_1.x), func_5(Struct_1(arg_1, ~(~vec2<u32>(0u, 46356u))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1578f)), vec2<f32>(185f, -579f))), func_2(_wgslsmith_mod_i32(arg_2, u_input.b), func_2(u_input.b, Struct_1(vec2<f32>(263f, arg_1.x), vec2<u32>(6625u, 40845u)), var_1.x), u_input.a.x).b), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, 478f)) - arg_1), ~(~vec2<u32>(46769u, var_1.x))), arg_1.x), _wgslsmith_f_op_f32(trunc(arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -354f), -2169f, -36737i == u_input.b))))));
    let var_1 = func_1(min(u_input.a.yz, vec2<u32>(~(u_input.a.x & 62034u), 62337u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1173f, -1289f)), u_input.b);
    var_0 = vec2<f32>(1f, 1f);
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(974f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -1000f) * var_1.a)), false))), vec2<f32>(-631f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(666f, var_0.x)) - -525f)))));
    var var_2 = select(u_input.a, vec3<u32>(var_1.b.x, u_input.a.x, ~(var_1.b.x | reverseBits(var_1.b.x))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), func_3() && all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, -1338f, 1000f, var_0.x), vec4<f32>(-1311f, var_1.a.x, -527f, -1385f))) * vec4<f32>(-1045f, -126f, var_0.x, var_1.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1720f, var_0.x, var_0.x)))), vec4<f32>(-197f, _wgslsmith_f_op_f32(684f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.a.x, 1709f), any(vec3<bool>(true, true, true)))), 1u);
}

