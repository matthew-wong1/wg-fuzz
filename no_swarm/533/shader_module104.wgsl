struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 27106i, -1353i, 0i);

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 505f, arg_0.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(-514f, -1198f, arg_0.c), vec3<f32>(-105f, arg_0.c, arg_0.c))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1116f, -337f, 1565f) - vec3<f32>(464f, arg_0.c, 1093f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(arg_0.c, 296f)))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, _wgslsmith_div_u32(arg_0.b, 28988u) != (arg_0.b & arg_0.b), all(vec4<bool>(true, true, true, true)), true)), select(true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, -477f, -256f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-270f, 2246f, -207f) + vec3<f32>(-693f, -1083f, 1612f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1305f, 872f, -1725f)), !vec3<bool>(true, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(68837i, Struct_1(arg_0.a, 22572u), 1432f, vec4<i32>(u_input.c.x, u_input.b, -20301i, global0.x)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-250f, -659f, 932f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, 482f, -3477f)) * vec3<f32>(254f, -1527f, -713f))))));
    global1 = (var_0.x & var_0.x) && false;
    let var_2 = i32(-1i) * -30086i;
    global1 = (all(vec3<bool>(var_0.x != var_0.x, var_0.x, true)) && true) != select(!(all(vec3<bool>(false, true, var_0.x)) | true), !any(!vec3<bool>(true, var_0.x, var_0.x)), all(!vec4<bool>(var_0.x, true, var_0.x, false)) & all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)));
    return ~43857u;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f - -201f) + _wgslsmith_div_f32(1128f, -727f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -146f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 225f)), 1064f, true)))));
    global0 = select(~(~(~vec4<i32>(arg_0, u_input.a, u_input.c.x, u_input.b))) | abs(~(vec4<i32>(arg_0, global0.x, arg_0, arg_0) & vec4<i32>(arg_0, -4494i, -1i, arg_0))), _wgslsmith_div_vec4_i32(-vec4<i32>(-39031i, ~37895i, u_input.b, _wgslsmith_mult_i32(-1i, 9775i)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b, -1i), vec4<i32>(-25590i, 2147483647i, u_input.b, u_input.b))), select(!select(!vec4<bool>(true, arg_2, false, true), vec4<bool>(false, arg_2, false, true), arg_2), !select(vec4<bool>(arg_2, false, false, false), vec4<bool>(false, arg_2, true, arg_2), arg_2), u_input.d <= u_input.d));
    var var_1 = Struct_1(select(vec2<i32>(2147483647i, ~arg_0), vec2<i32>(_wgslsmith_div_i32(global0.x, -74283i) >> (0u % 32u), _wgslsmith_sub_i32(-1i, global0.x)), vec2<bool>(!arg_2, true)), arg_1);
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-6851i ^ (-1i >> (abs(var_1.b) % 32u)), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-12769i, arg_0, 57969i), vec3<i32>(var_1.a.x, 2147483647i, 0i), vec3<i32>(-2147483647i, var_1.a.x, -735i)), vec3<i32>(arg_0, countOneBits(-3113i), ~arg_0)), u_input.b), max(-vec4<i32>(1i, -2147483647i, var_1.a.x, global0.x), vec4<i32>(-1i) * -vec4<i32>(global0.x, -7367i, arg_0, -1i)) << ((reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(40525u, arg_1, arg_1, var_1.b), vec4<u32>(var_1.b, 44200u, arg_1, u_input.d))) << (vec4<u32>(12253u, arg_1 >> (arg_1 % 32u), 34470u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = !(!arg_2);
    return ~(reverseBits(_wgslsmith_clamp_u32(var_1.b, 1u, func_2(Struct_1(u_input.c, arg_1)))) | firstLeadingBit(countOneBits(max(var_1.b, arg_1))));
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(29165i << ((_wgslsmith_clamp_u32(arg_0, u_input.d, u_input.d) >> (func_2(Struct_1(vec2<i32>(global0.x, global0.x), u_input.d)) % 32u)) % 32u), global0.x), Struct_1(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(~(-2114i), 2965i)), _wgslsmith_div_u32(41798u, u_input.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-214f, -1585f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -994f)))))), _wgslsmith_div_vec4_i32(vec4<i32>(~(-u_input.a), ~u_input.c.x, -1i, u_input.a), ~(-vec4<i32>(5317i, u_input.b, -1i, -1i) << ((vec4<u32>(arg_0, u_input.d, u_input.d, 34850u) << (vec4<u32>(4294967295u, arg_0, u_input.d, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var var_1 = Struct_1(var_0.d.xw, var_0.b.b >> (_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b, 0u, 46830u, u_input.d), vec4<u32>(28521u, 4294967295u, u_input.d, var_0.b.b))), var_0.b.b) % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, var_0.c, 231f))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -559f) - _wgslsmith_f_op_f32(select(var_2.x, -526f, all(vec2<bool>(false, true))))), Struct_2(~(~u_input.c.x) >> (min(arg_0, _wgslsmith_mult_u32(var_1.b, 1u)) % 32u), var_0.b, _wgslsmith_div_f32(-1562f, var_0.c), abs(~var_0.d)), 38798u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 486f), 226f)), Struct_2(_wgslsmith_dot_vec4_i32(-var_0.d, vec4<i32>(1i, min(var_1.a.x, u_input.b), var_1.a.x, var_0.d.x)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, 1097f, false)) * _wgslsmith_f_op_f32(abs(var_2.x)))), var_0.d));
    var var_4 = arg_0;
    return Struct_1(~_wgslsmith_div_vec2_i32(firstTrailingBit(global0.xy), abs(vec2<i32>(-26848i, 40161i))), 4294967295u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    return func_5(func_4(arg_3, func_2(Struct_1(vec2<i32>(u_input.c.x, global0.x), min(arg_0.x, 4294967295u))), true));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(~u_input.d);
    var_0 = ~abs(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, u_input.d), ~4294967295u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(148f)) + -909f), Struct_2(~min(arg_1.a.x, -u_input.a), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-arg_0.x), any(vec2<bool>(true, false)))))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, 8837i) << (vec4<u32>(u_input.d, 0u, arg_1.b, 64346u) % vec4<u32>(32u)), vec4<i32>(arg_1.a.x, 62442i, arg_1.a.x, arg_1.a.x))), abs(firstLeadingBit(0u)), vec2<f32>(_wgslsmith_f_op_f32(max(-197f, arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x))))))), Struct_2(-15163i, Struct_1(vec2<i32>(global0.x, 0i) ^ global0.ww, ~min(u_input.d, u_input.d)), -468f, select(_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.x, u_input.b, 70641i, 2147483647i), vec4<i32>(-7728i, 48172i, u_input.a, arg_1.a.x)), vec4<i32>(countOneBits(global0.x), arg_1.a.x << (u_input.d % 32u), global0.x, -2147483647i), vec4<bool>(true, true, true, true))));
    var var_2 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(1u ^ arg_1.b, ~u_input.d), 1u) > min(67935u, arg_1.b);
    let var_3 = countOneBits(_wgslsmith_mult_vec3_i32(abs(var_1.e.d.ywz), -_wgslsmith_sub_vec3_i32(global0.xyx, -global0.wxw)));
    return func_5(var_1.b.b.b);
}

fn func_7(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.c - arg_0);
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), false, true), true);
    let var_2 = ~firstTrailingBit(-(~reverseBits(u_input.a)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.c, -788f) * vec3<f32>(941f, arg_0, -1429f)), vec3<f32>(-864f, arg_1.c, arg_0)) * vec3<f32>(-795f, _wgslsmith_f_op_f32(-arg_1.c), -699f))));
    global0 = arg_1.d;
    return func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.yz))) * var_3.yx), func_5(~reverseBits(109495u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(any(vec2<bool>(true, true)), true, false), vec3<bool>(true, true, true), true);
    var var_1 = vec2<i32>(-global0.x, -1i);
    let var_2 = func_7(-1000f, Struct_2(~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(-1i, u_input.a), ~1i), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, 627f) - vec2<f32>(1196f, 1000f))), func_1(vec4<u32>(4294967295u, u_input.d, u_input.d, 26577u) & vec4<u32>(0u, u_input.d, 24396u, u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1255f, 1045f)), all(vec3<bool>(var_0.x, false, var_0.x)), i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1588f))))), vec4<i32>(-1i, _wgslsmith_sub_i32(~global0.x, -27469i), func_6(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1300f, -1000f))), func_6(vec2<f32>(-1304f, 719f), Struct_1(u_input.c, u_input.d))).a.x, ~(-62594i))));
    global0 = -(~vec4<i32>(global0.x, u_input.c.x, global0.x, ~1i) << (vec4<u32>(35353u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 14850u), vec2<u32>(12233u, u_input.d)), u_input.d), 100271u ^ var_2.b, ~u_input.d) % vec4<u32>(32u)));
    var var_3 = Struct_2(var_2.a.x, var_2, _wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(f32(-1f) * -465f)), ~(~(firstLeadingBit(vec4<i32>(-22992i, u_input.a, 10379i, u_input.b)) | -vec4<i32>(0i, -6914i, -10588i, var_2.a.x))));
    var_1 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(-min(var_3.d, vec4<i32>(-6438i, 2147483647i, 2147483647i, var_1.x)), min(-vec4<i32>(-20546i, var_2.a.x, var_1.x, 1590i), max(var_3.d, vec4<i32>(var_3.d.x, var_3.d.x, -2147483647i, u_input.a)))), 56529i);
    var var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer((~(var_3.b.b << (var_2.b % 32u)) >> (var_3.b.b % 32u)) << (_wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(51895u, 1155u, 17985u), ~var_3.b.b), ~_wgslsmith_div_u32(var_2.b, 89535u)) % 32u), ~vec4<u32>(abs(var_2.b), ~_wgslsmith_div_u32(u_input.d, var_2.b), ~1u, 4294967295u), ~(~abs(vec2<u32>(u_input.d, 6472u))));
}

