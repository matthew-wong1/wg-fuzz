struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = vec3<u32>(~max(~u_input.a, select(u_input.a, u_input.a, arg_0.b.x)), ~(~_wgslsmith_mult_u32(u_input.a, u_input.a)), u_input.a >> (u_input.a % 32u)) << (abs(vec3<u32>(~abs(u_input.a), u_input.a >> ((u_input.a | 24789u) % 32u), _wgslsmith_sub_u32(u_input.a, u_input.a) >> (u_input.a % 32u))) % vec3<u32>(32u));
    var var_1 = Struct_1(!(!(!arg_0.c)), arg_0.b, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(949f)) + 1000f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(f32(-1f) * -248f)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(545f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1374f))))))));
    let var_3 = arg_3;
    let var_4 = _wgslsmith_sub_i32(44431i, 2147483647i);
    return vec4<i32>(abs(_wgslsmith_mult_i32((arg_2 | var_4) | min(-2147483647i, var_4), ~min(1i, 25573i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, arg_2, u_input.b) >> (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, 5718i)), arg_2), u_input.b, 1i);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = min(-_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, ~u_input.b, max(u_input.b, u_input.b), 84660i), vec4<i32>(u_input.b, ~u_input.b, u_input.b, ~u_input.b)), -abs(abs(func_3(Struct_1(true, vec3<bool>(true, true, true), true), vec2<bool>(false, true), -1i, Struct_1(false, vec3<bool>(true, false, false), true)))));
    let var_1 = _wgslsmith_mult_u32(~firstTrailingBit(~arg_2.x), ~(~(~_wgslsmith_dot_vec3_u32(arg_2, arg_2))));
    var var_2 = !(!(true || any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))));
    var var_3 = arg_2.yx << (_wgslsmith_mult_vec2_u32(~(~arg_0), arg_2.yx) % vec2<u32>(32u));
    var var_4 = Struct_1(1f > _wgslsmith_f_op_f32(sign(-463f)), !(!vec3<bool>(true, all(vec2<bool>(false, true)), any(vec3<bool>(false, false, false)))), any(vec4<bool>(true, true, true, true)));
    return Struct_1(!var_4.a, var_4.b, var_4.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = -countOneBits(_wgslsmith_mult_i32(1i, abs(firstLeadingBit(12668i))));
    let var_1 = Struct_1(false, !vec3<bool>(true, any(func_2(vec2<u32>(37093u, u_input.a), u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a), 0u).b), any(select(vec2<bool>(false, arg_1.b.x), vec2<bool>(arg_3.c, arg_1.c), arg_1.b.zz))), ~_wgslsmith_div_u32(4294967295u, ~u_input.a) == _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(firstLeadingBit(u_input.a), 0u)));
    let var_2 = arg_3;
    let var_3 = func_2(_wgslsmith_mod_vec2_u32(~(~select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 34557u), var_1.b.zz)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.a), u_input.a), 1u)), u_input.a, _wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.a, 84022u, u_input.a), ~vec3<u32>(46489u, 4294967295u, 4294967295u), var_2.b.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), min(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 4928u)) | ~vec3<u32>(u_input.a, u_input.a, 26958u))), _wgslsmith_dot_vec3_u32(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 22118u, 29543u), vec3<u32>(36314u, 1u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 131497u, u_input.a)), !arg_1.c), _wgslsmith_sub_vec3_u32(vec3<u32>(~25852u, u_input.a, 104386u), vec3<u32>(u_input.a, ~52922u, countOneBits(u_input.a)))));
    let var_4 = func_2(vec2<u32>(_wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), u_input.a | 77360u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12214u), vec2<u32>(2328u, u_input.a)))) << (~(vec2<u32>(u_input.a, 1u) | ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~(abs(~u_input.a) | u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, (u_input.a | 67517u) >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(65148u, u_input.a) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, 4294967295u), u_input.a, 0u))), reverseBits(~u_input.a)).b.x;
    return 4294967295u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(false, all(!select(vec4<bool>(arg_1.b.x, true, arg_1.a, false), vec4<bool>(false, arg_1.b.x, arg_1.a, arg_1.a), false)), arg_0.x == (max(u_input.a, 57778u) >> (1u % 32u))), !select(arg_1.b, select(vec3<bool>(false, true, arg_1.a), !arg_1.b, -2147483647i > u_input.b), arg_1.b), select(select(select(func_2(arg_0, 4294967295u, arg_2.xww, 1u).b, !vec3<bool>(arg_1.a, false, arg_1.b.x), arg_1.b), arg_1.b, vec3<bool>(arg_1.c, false, arg_2.x <= 39485u)), arg_1.b, select(!any(arg_1.b.yy), func_2(max(vec2<u32>(arg_0.x, 1u), arg_2.zz), ~u_input.a, select(arg_2.xxz, vec3<u32>(18788u, arg_2.x, 4294967295u), vec3<bool>(true, arg_1.c, false)), 1u).c, true)));
    var var_1 = func_2(max(~arg_2.zy, arg_0 >> (vec2<u32>(3997u, 1u) % vec2<u32>(32u))), 4294967295u, countOneBits(~vec3<u32>(arg_0.x, 4294967295u, 0u)) << (~vec3<u32>(1u, ~43219u, 48877u) % vec3<u32>(32u)), 0u);
    var var_2 = arg_1;
    var var_3 = Struct_1(false, arg_1.b, true);
    let var_4 = _wgslsmith_f_op_f32(min(435f, 1045f));
    return arg_1;
}

fn func_1() -> bool {
    let var_0 = ~vec2<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(1i, u_input.b))), u_input.b & u_input.b);
    var var_1 = 1u;
    var var_2 = Struct_1(!any(vec4<bool>(true, true, true, true)), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, true, true, false)), u_input.a < 0u, true), false), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(floor(752f)) <= _wgslsmith_f_op_f32(463f * 646f)), !any(vec4<bool>(true, true, true, false))), select(false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), var_0.x < 0i))));
    let var_3 = vec3<bool>(var_2.a, all(vec2<bool>(var_2.a, var_2.c)), all(select(select(var_2.b, select(vec3<bool>(var_2.c, var_2.a, var_2.c), vec3<bool>(var_2.b.x, false, var_2.c), var_2.b.x), var_2.b), var_2.b, vec3<bool>(any(var_2.b), !var_2.b.x, false || var_2.c))));
    let var_4 = func_5(vec2<u32>(func_4(vec3<f32>(553f, 1f, _wgslsmith_f_op_f32(331f * 752f)), Struct_1(true, !var_2.b, true), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-8619i, var_0.x, var_0.x, 2964i), vec4<i32>(var_0.x, -312i, var_0.x, 10615i), vec4<i32>(var_0.x, u_input.b, u_input.b, -68138i)), func_2(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), false), u_input.a, firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, 66196u)), min(u_input.a, u_input.a))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(68236u, 103416u, u_input.a, 60134u), vec4<u32>(4294967295u, u_input.a, 0u, 55423u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 6389u, 34830u), vec4<u32>(u_input.a, 4294967295u, 16925u, 31620u))), firstLeadingBit(_wgslsmith_div_u32(65805u, u_input.a)))), func_2(select(~min(vec2<u32>(27631u, 4654u), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(4294967295u, 1u)), !var_2.c), reverseBits(0u), ~vec3<u32>(u_input.a, reverseBits(u_input.a), firstLeadingBit(0u)), u_input.a), ~vec4<u32>(u_input.a, u_input.a, ~u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 19906u), vec3<u32>(1u, 1u, 0u)), 30353u ^ u_input.a)));
    return true | !any(!vec3<bool>(var_2.b.x, true, var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec3<bool>(func_1(), all(vec2<bool>(true, true)) != true, (_wgslsmith_sub_u32(u_input.a, 0u) & (u_input.a >> (41551u % 32u))) == (_wgslsmith_mult_u32(u_input.a, u_input.a) | ~u_input.a)), true & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-894f + -1000f), _wgslsmith_f_op_f32(sign(-2122f))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1606f - 1000f)))));
    var var_1 = any(func_5(reverseBits(~(~vec2<u32>(u_input.a, 33179u))), func_2(countOneBits(max(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 1u))), u_input.a, select(max(vec3<u32>(62874u, 11940u, 10878u), vec3<u32>(0u, 23351u, 4294967295u)), vec3<u32>(0u, 60906u, 0u), func_5(vec2<u32>(0u, u_input.a), Struct_1(true, var_0.b, true), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)).b), max(~u_input.a, u_input.a)), reverseBits(vec4<u32>(1u, 11056u, 45924u, 1u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (firstLeadingBit(vec4<u32>(u_input.a, 1594u, u_input.a, 0u)) % vec4<u32>(32u))).b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), 541f)));
    var_0 = Struct_1(var_0.c, vec3<bool>(true, all(vec3<bool>(true, u_input.a < 63658u, select(true, var_0.a, true))), true != (_wgslsmith_add_i32(u_input.b, u_input.b) >= 1i)), all(func_5(vec2<u32>(45200u, 1u), func_5(vec2<u32>(8315u, u_input.a), func_5(vec2<u32>(80988u, u_input.a), Struct_1(var_0.a, var_0.b, false), vec4<u32>(1u, u_input.a, 5889u, u_input.a)), select(vec4<u32>(u_input.a, u_input.a, 18672u, 53824u), vec4<u32>(18576u, u_input.a, 1u, u_input.a), false)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u) << (vec4<u32>(u_input.a, 49893u, u_input.a, 1u) % vec4<u32>(32u)))).b));
    var_0 = Struct_1(true, !var_0.b, var_0.a);
    var var_3 = func_5((_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(88186u, 70562u), vec2<u32>(4294967295u, 31882u))) << (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) >> (vec2<u32>(0u, func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1394f, var_2, -572f), vec3<f32>(878f, -673f, 503f), var_0.b.x)), func_2(vec2<u32>(25413u, 25208u), u_input.a, vec3<u32>(u_input.a, u_input.a, 1u), u_input.a), vec4<i32>(-29791i, u_input.b, u_input.b, u_input.b), Struct_1(false, var_0.b, true))) % vec2<u32>(32u)), func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(30875u), ~u_input.a), firstTrailingBit(vec2<u32>(u_input.a, u_input.a))), ~firstTrailingBit(20644u), vec3<u32>(_wgslsmith_mod_u32(abs(4294967295u), u_input.a), u_input.a, u_input.a), u_input.a), ~vec4<u32>(~u_input.a, u_input.a, 41376u, _wgslsmith_sub_u32(u_input.a, ~u_input.a)));
    var var_4 = Struct_1(false, !var_3.b, true);
    var_4 = Struct_1(firstTrailingBit(reverseBits(abs(1u))) < abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 21093u), vec4<u32>(4294967295u, 0u, u_input.a, 21590u)) & reverseBits(1u)), func_5(~select(vec2<u32>(4294967295u, 12605u), max(vec2<u32>(u_input.a, 39111u), vec2<u32>(4294967295u, u_input.a)), var_4.b.yz), func_5(vec2<u32>(4294967295u, 20456u), Struct_1(func_5(vec2<u32>(1625u, 38179u), Struct_1(false, vec3<bool>(true, var_0.c, var_0.a), true), vec4<u32>(u_input.a, 1u, 83823u, u_input.a)).a, var_0.b, false && var_4.a), vec4<u32>(~u_input.a, _wgslsmith_mult_u32(36439u, u_input.a), ~40080u, u_input.a)), ~(~vec4<u32>(8418u, 1u, 38704u, u_input.a))).b, ((min(u_input.a, 48979u) | _wgslsmith_add_u32(4294967295u, u_input.a)) == u_input.a) && all(var_4.b.xz));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) + _wgslsmith_div_f32(-817f, var_2)), var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, -647f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -538f), vec2<f32>(var_2, var_2)) * vec2<f32>(var_2, var_2)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1752f) * vec2<f32>(1766f, -1000f)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + vec2<f32>(-254f, var_2))))), u_input.b);
}

