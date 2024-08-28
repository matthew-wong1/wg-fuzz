struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = Struct_4(select(vec2<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), vec2<bool>(true, true), all(vec4<bool>(arg_0 <= -1000f, true, -2147483647i != u_input.a, false))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * arg_0)))))), Struct_2(Struct_1(abs(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 13661u, 1u, u_input.b.x), true)))));
    let var_1 = Struct_2(Struct_1(vec4<u32>(~(~var_0.c.a.a.x), 55233u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, var_0.c.a.a.x, u_input.b.x)), select(vec3<u32>(u_input.b.x, var_0.c.a.a.x, u_input.b.x), var_0.c.a.a.zwy, vec3<bool>(true, true, false))), 4294967295u)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(60526u, var_1.a.a.x, u_input.b.x, 22214u) << ((vec4<u32>(17058u, 103579u, 36613u, 1u) << (vec4<u32>(var_0.c.a.a.x, u_input.b.x, u_input.b.x, var_0.c.a.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 67656u, 26365u, var_0.c.a.a.x), var_1.a.a) >> (vec4<u32>(27201u, var_0.c.a.a.x, u_input.b.x, 30938u) % vec4<u32>(32u)))));
    var_2 = var_1;
    let var_3 = var_0;
    return var_3.b.zz;
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = 340f;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, 1000f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(726f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, _wgslsmith_f_op_f32(-268f + 241f)))), !(!arg_0.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = vec2<bool>(select(arg_0.x, any(vec3<bool>(arg_0.x, 278f > var_1.x, true)), arg_0.x), arg_0.x);
    var var_3 = i32(-1i) * -20794i;
    return _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, ~48741u, 54061u, 1u)), reverseBits(~vec4<u32>(1u, u_input.b.x, ~u_input.b.x, ~u_input.b.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = -abs(_wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.a, 1i), firstLeadingBit(arg_3.xy)), arg_3.zx));
    var var_1 = Struct_2(Struct_1(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) << (abs(func_2(vec4<bool>(false, false, true, false))) % vec4<u32>(32u))));
    var_1 = Struct_2(Struct_1(vec4<u32>(var_1.a.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.b.x)), firstTrailingBit(abs(33554u)), var_1.a.a.x)));
    let var_2 = Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.b.x, countOneBits(15051u), ~u_input.b.x, u_input.b.x))), -_wgslsmith_mult_i32(~1i, select(arg_3.x, arg_3.x, var_1.a.a.x > u_input.b.x)), 16302i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, arg_1, 373f, arg_2.x) + _wgslsmith_f_op_vec4_f32(trunc(arg_2))))));
    return Struct_3(var_2.a, arg_0.x, -2064i);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_5 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_div_i32(1i, 18372i), _wgslsmith_mod_i32(u_input.a, arg_0.b))), vec2<i32>(min(arg_0.b, u_input.a), 2147483647i)) | firstTrailingBit(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, 0i) >> (vec2<u32>(arg_1.x, arg_2.a.a.x) % vec2<u32>(32u)), abs(vec2<i32>(u_input.a, -1i) >> (vec2<u32>(arg_1.x, 4294967295u) % vec2<u32>(32u)))));
    var var_2 = var_0;
    var var_3 = func_1(reverseBits(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(30419i, arg_0.b, -1i), vec3<i32>(var_1.x, var_1.x, u_input.a))), ~vec3<i32>(var_1.x, arg_0.c, arg_0.b))), 1942f, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1f), -668f, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-1000f)).x - _wgslsmith_div_f32(528f, 972f)))).x), countOneBits(~firstLeadingBit(vec3<i32>(77203i, 2147483647i, u_input.a)))).a.a;
    var var_4 = any(!vec3<bool>(!arg_3, true, true));
    return Struct_5(var_1, arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(501f - 1000f), _wgslsmith_div_f32(873f, 513f), -1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -2010f, -1079f), _wgslsmith_div_vec3_f32(vec3<f32>(-294f, 1000f, 1004f), vec3<f32>(195f, 2387f, 912f)), false))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1971f, -1781f, -2262f) - vec3<f32>(-654f, 1378f, 485f)))))), vec4<f32>(-872f, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(max(924f, _wgslsmith_f_op_f32(step(1074f, -150f)))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1412f, -903f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f))), -526f), func_1(_wgslsmith_div_vec3_i32(select(vec3<i32>(-38181i, 17071i, u_input.a), vec3<i32>(50993i, u_input.a, -23742i), vec3<bool>(false, true, true)) & ~vec3<i32>(-46169i, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 69529i, var_1.x), vec3<i32>(var_1.x, 6649i, 3815i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 41046u, 28055u), var_3.a.wzy, vec3<u32>(15724u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), 1261f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2318f, -1548f, 1000f, -620f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, -2707f, 336f, -613f) + vec4<f32>(-1266f, 1458f, 1000f, 1863f)))), select((vec3<i32>(var_1.x, -1i, arg_0.c) | vec3<i32>(6771i, var_1.x, u_input.a)) ^ vec3<i32>(arg_0.c, var_1.x, u_input.a), select(-vec3<i32>(-2147483647i, 41049i, arg_0.b), select(vec3<i32>(-81586i, 2147483647i, arg_0.b), vec3<i32>(-2147483647i, -1i, arg_0.b), true), vec3<bool>(false, arg_3, false)), vec3<bool>(any(vec4<bool>(true, arg_3, true, true)), !arg_3, select(true, arg_3, arg_3)))).a);
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    let var_0 = arg_0.b.a.a;
    var var_1 = all(!select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), true), vec4<bool>(u_input.a < u_input.a, any(vec2<bool>(false, false)), var_0.a.x != 14899u, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))));
    let var_2 = abs(firstLeadingBit(arg_0.a));
    return arg_0.e;
}

fn func_6(arg_0: Struct_4) -> Struct_5 {
    let var_0 = arg_0.b.xx;
    let var_1 = func_4(func_4(Struct_3(arg_0.c, u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(31904i, 39088i), u_input.a, firstLeadingBit(u_input.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.c.a.a.zzw, _wgslsmith_clamp_vec3_u32(arg_0.c.a.a.ywz, vec3<u32>(arg_0.c.a.a.x, u_input.b.x, arg_0.c.a.a.x), vec3<u32>(u_input.b.x, arg_0.c.a.a.x, u_input.b.x))), vec3<u32>(arg_0.c.a.a.x, ~73378u, 12163u)), Struct_2(func_4(Struct_3(arg_0.c, 8397i, u_input.a), arg_0.c.a.a.xzz, func_4(Struct_3(Struct_2(Struct_1(vec4<u32>(39042u, u_input.b.x, 65696u, 4294967295u))), u_input.a, u_input.a), vec3<u32>(arg_0.c.a.a.x, arg_0.c.a.a.x, 1u), Struct_2(Struct_1(vec4<u32>(arg_0.c.a.a.x, arg_0.c.a.a.x, arg_0.c.a.a.x, 33303u))), arg_0.a.x).b.a, 6881u < u_input.b.x).b.a.a), select(!any(vec3<bool>(false, arg_0.a.x, arg_0.a.x)), !(!arg_0.a.x), arg_0.a.x)).b, ~arg_0.c.a.a.xwy, arg_0.c, !((_wgslsmith_f_op_f32(-arg_0.b.x) <= _wgslsmith_f_op_f32(abs(arg_0.b.x))) || arg_0.a.x));
    let var_2 = select(select(!(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))), select(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true)), select(select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), vec4<bool>(true, true, true, true)), !vec4<bool>(arg_0.a.x, false, true, false), !vec4<bool>(true, arg_0.a.x, arg_0.a.x, true)), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(arg_0.a.x, false, true, true))), arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x || true, (firstTrailingBit(50595u) & ~u_input.b.x) <= arg_0.c.a.a.x, false), any(vec3<bool>(!(var_1.b.b > -2147483647i), true, arg_0.a.x || all(arg_0.a))));
    let var_3 = !var_2.www;
    return Struct_5(vec2<i32>(~(i32(-1i) * -11847i), var_1.b.b), Struct_3(Struct_2(var_1.b.a.a), select(_wgslsmith_sub_i32(i32(-1i) * -17289i, ~77056i), (-10213i | u_input.a) & firstLeadingBit(var_1.a.x), var_2.x), -31059i), _wgslsmith_f_op_vec3_f32(-arg_0.b), vec4<f32>(var_0.x, func_4(Struct_3(func_1(vec3<i32>(u_input.a, var_1.a.x, -1i), var_1.c.x, vec4<f32>(-678f, 1474f, var_0.x, var_0.x), vec3<i32>(u_input.a, 2147483647i, var_1.b.b)).a, u_input.a, var_1.b.b | u_input.a), var_1.e.a.a.zxz, Struct_2(func_4(Struct_3(arg_0.c, -2147483647i, 1i), vec3<u32>(4294967295u, 1u, var_1.b.a.a.a.x), arg_0.c, var_3.x).b.a.a), arg_0.a.x).d.x, _wgslsmith_f_op_f32(trunc(970f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f + -611f)))), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(select(vec4<u32>(u_input.b.x, 19511u, 36402u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4265u, u_input.b.x), vec4<bool>(true, true, true, true)) << ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 17758u, 0u)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(u_input.b.x, 45736u, 1u, u_input.b.x)), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true))));
    var_0 = Struct_2(var_0.a);
    let var_1 = func_6(Struct_4(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, 934f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(238f))), _wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(sign(945f)))), func_5(func_4(func_1(vec3<i32>(u_input.a, u_input.a, 0i), 371f, vec4<f32>(-670f, -501f, 959f, 424f), vec3<i32>(-88155i, 0i, 53835i)), var_0.a.a.ywy >> (var_0.a.a.www % vec3<u32>(32u)), Struct_2(Struct_1(vec4<u32>(var_0.a.a.x, 1u, 4294967295u, 4294967295u))), true))));
    var var_2 = var_1.b.a;
    var_2 = Struct_2(var_2.a);
    let var_3 = true;
    var_2 = Struct_2(func_6(Struct_4(select(select(vec2<bool>(var_3, false), vec2<bool>(var_3, var_3), vec2<bool>(var_3, var_3)), select(vec2<bool>(var_3, var_3), vec2<bool>(true, var_3), vec2<bool>(false, var_3)), !vec2<bool>(var_3, var_3)), _wgslsmith_div_vec3_f32(vec3<f32>(-391f, 260f, var_1.c.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(831f, var_1.d.x, 518f)))), Struct_2(var_0.a))).e.a);
    var_2 = Struct_2(var_1.b.a.a);
    var var_4 = !vec2<bool>(!(!var_3), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(countOneBits(u_input.a), -1365i, ~var_1.b.b)), _wgslsmith_f_op_f32(-var_1.d.x), -657f);
}

