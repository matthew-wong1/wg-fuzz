struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = min(vec2<u32>(87752u, ~1u), countOneBits(vec2<u32>(1u, abs(~0u))));
    return Struct_5(Struct_3(-u_input.a | u_input.a, Struct_1(~vec3<u32>(0u, var_0.x, var_0.x) ^ (vec3<u32>(43080u, var_0.x, 56983u) ^ vec3<u32>(1u, 30400u, var_0.x)), vec3<bool>(true, true, true), _wgslsmith_mult_i32(50400i, u_input.a) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(-2147483647i, 1i, u_input.a, 26137i)), vec4<bool>(true, true, true, true)), u_input.a, Struct_1(vec3<u32>(_wgslsmith_mod_u32(38190u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 1u)), var_0.x & var_0.x), vec3<bool>(all(vec2<bool>(false, false)), u_input.a > -1i, true), true, vec4<bool>(true, true, true, true)), vec3<u32>(_wgslsmith_mult_u32(var_0.x, max(1u, var_0.x)), 1u, _wgslsmith_div_u32(~1u, ~var_0.x))));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: bool) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -2046f)).a.b;
    let var_1 = _wgslsmith_add_i32(~53747i, arg_1.a.c);
    var_0 = func_2(-1072f).a.b;
    var var_2 = min(u_input.a, 16917i);
    var_2 = -1i;
    return arg_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    var var_0 = ~arg_0.e;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(round(304f)) == 667f, arg_0.d.d.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(487f + _wgslsmith_f_op_f32(-1618f - 1046f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(230f)) * _wgslsmith_f_op_f32(f32(-1f) * -123f)))).a.d.d.x);
    var var_2 = Struct_2(~(~(~1u)), arg_2.a.e.zx, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-817f - 703f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - _wgslsmith_f_op_f32(step(-269f, 527f))))).a.d.b, func_2(-1169f).a.d);
    var_2 = Struct_2(~(~var_0.x & _wgslsmith_div_u32(func_3(true, Struct_5(arg_2.a), var_1.x).b.a.x, _wgslsmith_mod_u32(arg_3, 1u))), _wgslsmith_add_vec2_u32(firstTrailingBit(var_0.yy >> (arg_2.a.d.a.xy % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(1u, arg_2.a.e.x ^ arg_1.x))), vec3<bool>(true, true, !func_2(_wgslsmith_f_op_f32(f32(-1f) * -565f)).a.d.c), func_2(-1448f).a.b);
    var_0 = vec3<u32>(reverseBits(abs(~55693u)), arg_1.x, _wgslsmith_add_u32(arg_1.x, ~(~(40799u << (arg_3 % 32u)))));
    return Struct_1(~arg_0.d.a, func_2(_wgslsmith_f_op_f32(-785f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2064f + -585f)))).a.d.d.zxz, !var_1.x, var_2.d.d);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_4(Struct_3(1i, func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(427f)), 1f))).a.d, u_input.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-649f, -316f)))).a.b, ~(~(arg_1.b.a & arg_1.d.a))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(arg_1.e, firstLeadingBit(vec3<u32>(arg_1.d.a.x, 37143u, 31282u) | arg_1.b.a)), arg_0), func_2(754f), ~arg_0.x | 4294967295u);
    let var_1 = Struct_2(4294967295u, _wgslsmith_sub_vec2_u32(func_3(!arg_1.b.c, Struct_5(Struct_3(12533i, Struct_1(vec3<u32>(34488u, var_0.a.x, arg_1.b.a.x), vec3<bool>(var_0.c, arg_1.d.c, var_0.d.x), false, vec4<bool>(arg_1.b.c, arg_1.b.d.x, var_0.b.x, var_0.b.x)), -5430i, var_0, vec3<u32>(arg_0.x, 0u, var_0.a.x))), !func_4(Struct_3(49984i, var_0, arg_1.c, Struct_1(var_0.a, var_0.b, arg_1.b.b.x, vec4<bool>(false, true, arg_1.b.c, arg_1.d.c)), vec3<u32>(28230u, 33910u, arg_1.d.a.x)), var_0.a, Struct_5(Struct_3(u_input.a, var_0, arg_1.c, var_0, vec3<u32>(arg_1.d.a.x, 0u, arg_0.x))), arg_1.e.x).c).e.yz, firstTrailingBit(firstLeadingBit(vec2<u32>(94160u, arg_0.x)) << (countOneBits(vec2<u32>(0u, 0u)) % vec2<u32>(32u)))), var_0.b, var_0);
    var var_2 = vec4<bool>(true, arg_1.d.b.x, false, !select(true, arg_1.b.b.x, !all(vec2<bool>(var_0.b.x, true))));
    var var_3 = vec3<i32>(u_input.a << (~max(var_1.b.x, 4294967295u | arg_1.e.x) % 32u), -u_input.a, ~u_input.a);
    let var_4 = (vec3<i32>(-1i) * -abs(-vec3<i32>(2147483647i, 74007i, u_input.a))) | _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, arg_1.a, 1i) ^ vec3<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), var_3.x, -48706i), vec3<i32>(~(arg_1.a << (var_1.d.a.x % 32u)), var_3.x, var_3.x));
    return arg_1.d;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -326f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1907f, -785f, 1057f) - vec3<f32>(-1022f, -2612f, -1483f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(995f, -952f, 1691f)))));
    var var_1 = Struct_1(~(~(~abs(vec3<u32>(42996u, arg_1.b.x, 76025u)))), arg_1.c, false, arg_1.d.d);
    var_1 = arg_1.d;
    var_1 = func_5(vec3<u32>(_wgslsmith_clamp_u32(var_1.a.x, 43627u, 65128u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(4294967295u, 0u), arg_1.d.a.x, arg_1.b.x & arg_1.a, _wgslsmith_clamp_u32(arg_1.a, arg_1.b.x, arg_1.b.x)), select(vec4<u32>(var_1.a.x, 97536u, arg_1.d.a.x, 53058u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, 0u, var_1.a.x, 43031u), vec4<u32>(21959u, 1u, 1u, var_1.a.x)), !var_1.d))), Struct_3(1i, func_4(func_3(arg_0, func_2(-276f), !var_1.d.x), ~(~vec3<u32>(0u, 1u, 92599u)), Struct_5(func_2(var_0.x).a), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_1.a.x, var_1.a.x))), abs(_wgslsmith_clamp_i32(u_input.a, -1i, u_input.a) & u_input.a), arg_1.d, vec3<u32>(1u, arg_1.b.x, arg_1.b.x)));
    var_1 = Struct_1(func_3(var_1.b.x, Struct_5(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 1i, -38482i)), func_3(true, Struct_5(Struct_3(-3657i, arg_1.d, -24428i, Struct_1(arg_1.d.a, var_1.b, arg_1.d.c, vec4<bool>(var_1.d.x, false, arg_0, true)), var_1.a)), var_1.b.x).b, 2147483647i, arg_1.d, var_1.a)), !arg_1.d.d.x).e, func_5(vec3<u32>(61071u, ~var_1.a.x | func_5(arg_1.d.a, Struct_3(1i, Struct_1(var_1.a, vec3<bool>(arg_1.c.x, var_1.d.x, arg_0), arg_0, var_1.d), 3378i, arg_1.d, vec3<u32>(19527u, 57075u, var_1.a.x))).a.x, ~(~4294967295u)), Struct_3(reverseBits(_wgslsmith_mod_i32(-25247i, -1i)), func_5(arg_1.d.a, func_3(arg_1.c.x, Struct_5(Struct_3(u_input.a, arg_1.d, -1i, Struct_1(arg_1.d.a, vec3<bool>(arg_0, var_1.d.x, true), var_1.d.x, arg_1.d.d), vec3<u32>(arg_1.b.x, var_1.a.x, 1u))), arg_0)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, 0i))), arg_1.d, ~var_1.a)).b, true, func_3(var_1.b.x, func_2(var_0.x), (false == all(vec2<bool>(var_1.d.x, true))) == ((387f <= var_0.x) & var_1.b.x)).b.d);
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(sign(547f))) <= var_0.x, Struct_5(Struct_3(u_input.a & reverseBits(-1i), Struct_1(vec3<u32>(0u, var_1.a.x, 0u), !var_1.d.xzw, arg_0, !arg_1.d.d), -1i, func_3(true, Struct_5(Struct_3(9922i, arg_1.d, u_input.a, Struct_1(arg_1.d.a, vec3<bool>(arg_1.c.x, var_1.b.x, arg_0), var_1.c, arg_1.d.d), vec3<u32>(arg_1.a, var_1.a.x, arg_1.d.a.x))), var_1.b.x).b, ~arg_1.d.a)), false);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> vec4<u32> {
    var var_0 = reverseBits(arg_0.c >> (arg_3 % 32u));
    var_0 = _wgslsmith_dot_vec3_i32(~firstTrailingBit(~(~vec3<i32>(u_input.a, -480i, u_input.a))), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(arg_2.a.a, 0i, 2147483647i)) >> (arg_2.a.b.a % vec3<u32>(32u)), select(-vec3<i32>(arg_2.a.a, arg_2.a.a, arg_0.a), vec3<i32>(arg_0.a, arg_0.a, arg_0.c), select(arg_0.b.b.x, false, true)) << (vec3<u32>(arg_0.d.a.x, 1u, ~arg_2.a.d.a.x) % vec3<u32>(32u))));
    var var_1 = Struct_4(vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_3, 1u), vec4<u32>(arg_0.b.a.x, arg_0.e.x, 21020u, 0u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37570u, arg_3), vec3<u32>(arg_0.b.a.x, arg_0.d.a.x, 51761u)))), 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(-1195f)), -548f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2119f, -987f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1094f))))), select(vec2<bool>(arg_2.a.b.b.x, true), select(vec2<bool>(arg_0.d.d.x, true), !vec2<bool>(arg_2.a.d.d.x, arg_0.b.d.x), vec2<bool>(true, arg_0.b.c)), select(true, false, all(arg_2.a.d.d.zxy))))));
    var var_2 = -((~(vec2<i32>(arg_1, arg_2.a.a) ^ vec2<i32>(arg_2.a.c, 8276i)) >> (~vec2<u32>(1u, 39738u) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, firstTrailingBit(-1i)), select(~vec2<i32>(2147483647i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.a.a, u_input.a), vec2<i32>(-2147483647i, arg_1), vec2<i32>(arg_1, 12791i)), vec2<bool>(false, false))));
    var_0 = _wgslsmith_mod_i32(-12195i, _wgslsmith_add_i32(min(var_2.x, _wgslsmith_add_i32(arg_1 ^ arg_2.a.a, -arg_0.a)), u_input.a));
    return vec4<u32>(_wgslsmith_sub_u32(1u, abs(_wgslsmith_mult_u32(1u, var_1.a.x))), 9893u, arg_2.a.d.a.x, 1u ^ _wgslsmith_clamp_u32(arg_2.a.d.a.x, 32248u, min(~arg_0.d.a.x, func_4(Struct_3(var_2.x, arg_2.a.d, 27858i, arg_2.a.b, vec3<u32>(36676u, 4132u, 59193u)), vec3<u32>(2337u, arg_2.a.b.a.x, 1u), Struct_5(Struct_3(u_input.a, Struct_1(arg_2.a.d.a, vec3<bool>(false, false, arg_0.d.d.x), true, arg_2.a.d.d), u_input.a, Struct_1(arg_2.a.e, vec3<bool>(false, false, arg_2.a.d.d.x), false, arg_2.a.d.d), vec3<u32>(0u, var_1.a.x, var_1.a.x))), 44405u).a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~firstTrailingBit(26107u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), false), firstLeadingBit(vec2<u32>(26917u, 12809u))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(109291u, 6751u, 1u, 12683u), vec4<u32>(46255u, 1u, 4294967295u, 14943u))), ~7387u), ~func_6(func_1(true, Struct_2(994u, vec2<u32>(31122u, 39555u), vec3<bool>(false, true, true), Struct_1(vec3<u32>(82254u, 1u, 30045u), vec3<bool>(true, true, false), true, vec4<bool>(true, false, true, false)))), u_input.a, Struct_5(Struct_3(u_input.a, Struct_1(vec3<u32>(1255u, 0u, 0u), vec3<bool>(false, false, true), false, vec4<bool>(true, true, false, false)), -46404i, Struct_1(vec3<u32>(1u, 1u, 0u), vec3<bool>(false, false, false), false, vec4<bool>(true, true, true, true)), vec3<u32>(0u, 6617u, 6585u))), 4294967295u));
    let var_1 = Struct_2(~(~(~5894u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(83677u, 10846u))), countOneBits(func_5(vec3<u32>(_wgslsmith_mult_u32(18386u, 7757u), ~0u, 1u), Struct_3(abs(u_input.a), Struct_1(vec3<u32>(68334u, 1u, 0u), vec3<bool>(true, true, true), true, vec4<bool>(true, true, true, false)), u_input.a, Struct_1(vec3<u32>(1u, 142202u, 1u), vec3<bool>(false, true, true), true, vec4<bool>(true, true, true, true)), vec3<u32>(1u, 1u, 1u))).a.xy), vec3<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(false, true, false)) & all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), -101f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-418f)) + _wgslsmith_f_op_f32(889f * 1090f))), Struct_1(max(vec3<u32>(1u, 1u, min(1u, 67338u)), vec3<u32>(1u, ~64766u, ~65766u)), !vec3<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(true, false, true)), func_5(vec3<u32>(9097u, 66450u, 0u), Struct_3(-1i, Struct_1(vec3<u32>(1u, 15629u, 32915u), vec3<bool>(true, true, true), false, vec4<bool>(true, false, true, true)), u_input.a, Struct_1(vec3<u32>(1u, 11970u, 1u), vec3<bool>(true, true, true), true, vec4<bool>(true, false, false, true)), vec3<u32>(55122u, 1u, 13109u))).b.x), true, vec4<bool>(func_5(vec3<u32>(4294967295u, 6968u, 59706u), func_3(true, Struct_5(Struct_3(-2147483647i, Struct_1(vec3<u32>(32166u, 31511u, 0u), vec3<bool>(false, true, true), false, vec4<bool>(true, true, false, false)), u_input.a, Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(false, true, false), false, vec4<bool>(false, true, false, true)), vec3<u32>(0u, 0u, 1u))), true)).b.x, true, select(func_2(1245f).a.d.b.x, any(vec4<bool>(true, true, false, false)), true), all(vec2<bool>(true, false)))));
    var_0 = 4294967295u & abs(var_1.a);
    var var_2 = 4294967295u;
    var var_3 = func_5(~vec3<u32>(var_1.b.x, _wgslsmith_mod_u32(var_1.d.a.x, var_1.a ^ var_1.d.a.x), 56846u << (func_1(false, var_1).d.a.x % 32u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(622f, -408f)) - _wgslsmith_f_op_f32(f32(-1f) * -477f)))).a).a;
    let var_4 = ~(var_1.b.x ^ 48354u);
    var_3 = vec3<u32>(var_1.b.x, var_1.d.a.x, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_4, 1u), vec4<u32>(15207u, var_3.x, 1u, 67253u)), vec4<u32>(var_4, var_1.b.x, 28516u, 15155u) | vec4<u32>(50329u, var_3.x, var_1.a, var_4)) ^ func_1(var_1.c.x, Struct_2(var_1.b.x, var_1.d.a.yy, vec3<bool>(var_1.d.d.x, var_1.c.x, var_1.d.b.x), Struct_1(var_1.d.a, var_1.c, var_1.c.x, vec4<bool>(var_1.c.x, false, var_1.d.c, false)))).e.x));
    var_0 = _wgslsmith_dot_vec2_u32(func_4(func_1(true, Struct_2(_wgslsmith_add_u32(40719u, var_4), vec2<u32>(var_1.b.x, var_1.b.x), func_1(false, Struct_2(var_4, vec2<u32>(0u, var_3.x), vec3<bool>(true, true, false), var_1.d)).b.d.xww, var_1.d)), vec3<u32>(~var_1.b.x, ~(~4294967295u), var_1.b.x), func_2(_wgslsmith_f_op_f32(-605f + 1268f)), ~func_6(Struct_3(u_input.a, Struct_1(var_1.d.a, vec3<bool>(false, true, true), true, var_1.d.d), -19454i, Struct_1(vec3<u32>(1u, 32711u, 1u), vec3<bool>(var_1.c.x, false, var_1.c.x), false, var_1.d.d), var_1.d.a), countOneBits(-2147483647i), Struct_5(Struct_3(-1i, Struct_1(var_1.d.a, var_1.c, var_1.c.x, vec4<bool>(true, false, true, false)), -1i, Struct_1(vec3<u32>(var_3.x, var_1.d.a.x, var_4), vec3<bool>(false, var_1.d.d.x, var_1.c.x), true, var_1.d.d), vec3<u32>(60504u, 4473u, 4294967295u))), var_1.d.a.x).x).a.zz, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1011f, -347f)) - _wgslsmith_div_f32(-384f, 1000f)) * _wgslsmith_div_f32(-1323f, _wgslsmith_f_op_f32(max(-821f, 1112f))))).a.d.a.yx);
    var var_5 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(1u, ~min(var_1.b.x, var_3.x)), vec2<u32>(var_4, var_4)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, 754f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, -650f, -1433f, 186f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b.x, -1832f, 972f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b.x, 1000f, -1000f)), var_1.d.d.zyy)) * vec3<f32>(_wgslsmith_div_f32(var_5.b.x, var_5.b.x), var_5.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1502f)))), _wgslsmith_f_op_f32(min(var_5.b.x, _wgslsmith_f_op_f32(exp2(var_5.b.x)))));
}

