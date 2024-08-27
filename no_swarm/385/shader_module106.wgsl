struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec2<f32> = vec2<f32>(-364f, 193f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_4(Struct_3(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 30293u, 1u), vec3<u32>(4294967295u, arg_1.d.x, arg_1.d.x)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_1.e.c.x, arg_1.b.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.d.x, 11695u, arg_1.d.x), vec3<u32>(arg_1.e.b, arg_1.e.b, 0u), vec3<u32>(50839u, arg_1.d.x, arg_1.d.x)), arg_1.e.a)), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(45201u, 27641u, 12787u), _wgslsmith_div_vec3_u32(arg_1.b.a, arg_1.b.a)), _wgslsmith_add_u32(arg_1.d.x, arg_1.b.a.x) ^ countOneBits(arg_1.b.a.x), _wgslsmith_div_vec2_u32(arg_1.b.c, _wgslsmith_add_vec2_u32(vec2<u32>(55319u, arg_1.e.c.x), vec2<u32>(11732u, arg_1.b.c.x)))), Struct_1(arg_1.b.a, arg_1.d.x, ~arg_1.e.a.yy), _wgslsmith_div_i32(-(~arg_0.x), ~arg_0.x), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.a, u_input.a)), u_input.a << (1u % 32u))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - global2.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1477f - 1447f), global2.x, false))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -553f), global2.x))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(726f * _wgslsmith_f_op_f32(step(global2.x, arg_1.c))), -2116f);
    let var_1 = Struct_4(Struct_3(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.a.x, 26317u, 4294967295u)), arg_1.e.a), var_0.a.c, Struct_1(~(~var_0.a.b.a), countOneBits(~4294967295u), _wgslsmith_mod_vec2_u32(var_0.a.b.a.zx & vec2<u32>(47927u, 1u), vec2<u32>(var_0.a.c.c.x, 1316u))), arg_0.x, u_input.a));
    var var_2 = arg_1.e;
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_mult_u32(31584u, arg_3.d.x);
    var var_1 = arg_2.b;
    var var_2 = u_input.a >= (abs(1i) | (-1i | ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -46876i), vec3<i32>(1i, 5477i, u_input.a))));
    var_2 = func_2(vec2<i32>(-1i, _wgslsmith_mod_i32(-2147483647i, -u_input.a)) & firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), countOneBits(vec2<i32>(-36742i, u_input.a)))), arg_2);
    return firstTrailingBit(~(~var_1.a));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 8>();
    var var_0 = Struct_4(Struct_3(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(u_input.a >= 2147483647i, func_2(vec2<i32>(3420i, u_input.a), Struct_2(vec4<bool>(true, global1.x, global1.x, true), Struct_1(vec3<u32>(1981u, 4294967295u, 0u), 4294967295u, vec2<u32>(12484u, 24680u)), global2.x, vec2<u32>(0u, 3122u), Struct_1(vec3<u32>(61025u, 36260u, 27339u), 62331u, vec2<u32>(74582u, 26199u)))), true)), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(44992u, 0u, 4294967295u)), 1u, vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_add_vec3_u32(max(vec3<u32>(1u, 0u, 1u), vec3<u32>(66314u, 54071u, 65594u)), func_3(vec2<bool>(global1.x, true), vec3<bool>(global1.x, true, false), Struct_2(vec4<bool>(false, false, global1.x, false), Struct_1(vec3<u32>(3490u, 43006u, 44796u), 2129u, vec2<u32>(46204u, 46440u)), -452f, vec2<u32>(113502u, 15350u), Struct_1(vec3<u32>(64094u, 1u, 0u), 4294967295u, vec2<u32>(13645u, 1u))), Struct_2(vec4<bool>(true, global1.x, global1.x, global1.x), Struct_1(vec3<u32>(79360u, 1u, 7854u), 29564u, vec2<u32>(23206u, 4294967295u)), 1950f, vec2<u32>(1u, 10837u), Struct_1(vec3<u32>(4294967295u, 14005u, 5697u), 1u, vec2<u32>(0u, 1u))))), 1u, ~_wgslsmith_mod_vec2_u32(vec2<u32>(80934u, 1u), vec2<u32>(109390u, 18400u))), u_input.a, -_wgslsmith_add_i32(u_input.a, ~u_input.a)));
    let var_1 = Struct_1(firstTrailingBit(abs((var_0.a.b.a & vec3<u32>(var_0.a.b.a.x, var_0.a.b.b, 4294967295u)) | var_0.a.a)), max(min(abs(_wgslsmith_clamp_u32(1u, var_0.a.c.b, var_0.a.c.a.x)), var_0.a.c.c.x), var_0.a.a.x), var_0.a.a.yy);
    global0 = array<Struct_3, 8>();
    let var_2 = -29724i;
    return var_0.a.c;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(~arg_1.c.a, arg_1.b, arg_1.c, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.d, -25928i, -1i, arg_0)), ~vec4<i32>(1i, arg_1.d, arg_0, arg_1.d)) ^ _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(-2147483647i, arg_1.d)), 38088i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-269f + global2.x)))));
    global1 = select(vec3<bool>(true, global1.x, global1.x), select(select(!(!vec3<bool>(global1.x, global1.x, true)), !(!vec3<bool>(global1.x, global1.x, true)), false), vec3<bool>(any(vec4<bool>(global1.x, global1.x, false, true)), global1.x, any(!global1.zx)), !select(!vec3<bool>(global1.x, true, false), vec3<bool>(false, false, global1.x), select(vec3<bool>(true, false, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(false, true, global1.x)))), !select(vec3<bool>(global1.x, any(vec4<bool>(true, global1.x, global1.x, global1.x)), !global1.x), !(!vec3<bool>(global1.x, false, global1.x)), !select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, global1.x))));
    let var_2 = _wgslsmith_div_u32(func_3(global1.xx, vec3<bool>(global1.x, global1.x && !global1.x, !(var_1.x <= var_1.x)), Struct_2(vec4<bool>(global1.x & global1.x, !global1.x, any(global1.zz), global1.x), var_0.a.b, -1092f, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 53246u), var_0.a.c.a.xz, vec2<u32>(1u, 33760u)), arg_1.c), Struct_2(!select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(true, true, false, global1.x)), Struct_1(arg_1.a << (vec3<u32>(0u, 48569u, arg_2) % vec3<u32>(32u)), arg_1.b.a.x, vec2<u32>(42036u, var_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1214f + -1097f) + _wgslsmith_f_op_f32(abs(359f))), ~abs(vec2<u32>(var_0.a.b.c.x, 1u)), arg_1.b)).x, ~func_1().a.x);
    global1 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, true)), select(vec3<bool>(global1.x, !global1.x, global1.x), vec3<bool>(true, true, global1.x), all(global1.xy)), vec3<bool>(global1.x, global1.x, global1.x));
    return Struct_4(arg_1);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -819f) + _wgslsmith_f_op_f32(round(-780f))), global2.x), vec3<f32>(-198f, _wgslsmith_f_op_f32(-global2.x), global2.x)));
    global1 = select(vec3<bool>(func_2(firstTrailingBit(_wgslsmith_add_vec2_i32(arg_0.yy, vec2<i32>(u_input.a, 1348i))), Struct_2(select(vec4<bool>(true, true, true, false), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x), arg_1.a.c, _wgslsmith_f_op_f32(-var_0.x), func_4(13878i, Struct_3(vec3<u32>(arg_1.a.c.c.x, 0u, arg_1.a.c.a.x), arg_1.a.b, Struct_1(arg_1.a.b.a, 871u, arg_1.a.c.a.zx), -32692i, 44801i), arg_1.a.a.x).a.a.yx, Struct_1(vec3<u32>(arg_1.a.c.b, 0u, 39432u), arg_1.a.a.x, vec2<u32>(4294967295u, arg_1.a.b.c.x)))), global1.x, select(global1.x, !any(vec2<bool>(global1.x, global1.x)), !(!global1.x))), !vec3<bool>(!any(vec3<bool>(true, global1.x, true)), false, global1.x), true);
    let var_1 = Struct_2(select(select(select(vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, global1.x)), true), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(false, global1.x, global1.x, true), arg_1.a.b.b != 16116u), select(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, true), false), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, false, false, false), vec4<bool>(false, global1.x, true, false)), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(true, global1.x, global1.x, false), global1.x))), vec4<bool>(func_2(arg_0.yy & vec2<i32>(14484i, -2147483647i), Struct_2(vec4<bool>(global1.x, false, false, false), Struct_1(arg_1.a.a, 4294967295u, vec2<u32>(45039u, 51511u)), -1728f, vec2<u32>(arg_1.a.b.b, arg_1.a.b.c.x), Struct_1(arg_1.a.a, 0u, vec2<u32>(arg_1.a.a.x, arg_1.a.c.c.x)))), all(global1.xx), global1.x, select(false, func_2(arg_0.yy, Struct_2(vec4<bool>(true, true, global1.x, true), arg_1.a.c, var_0.x, vec2<u32>(arg_1.a.c.a.x, arg_1.a.c.c.x), Struct_1(vec3<u32>(arg_1.a.c.a.x, arg_1.a.a.x, arg_1.a.c.c.x), arg_1.a.a.x, arg_1.a.a.yx))), !global1.x)), !select(!vec4<bool>(true, global1.x, global1.x, true), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, global1.x, global1.x), true), global1.x)), Struct_1(vec3<u32>(~arg_1.a.c.c.x, 0u, 15923u) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, arg_1.a.a.x) ^ vec3<u32>(arg_1.a.b.a.x, arg_1.a.c.b, 58322u), vec3<u32>(arg_1.a.a.x, arg_1.a.a.x, 0u)), 4294967295u, _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_1.a.b.c.x, arg_1.a.b.c.x)), max(vec2<u32>(0u, arg_1.a.a.x) | vec2<u32>(20923u, arg_1.a.c.a.x), func_3(global1.xz, vec3<bool>(global1.x, global1.x, false), Struct_2(vec4<bool>(global1.x, true, global1.x, global1.x), arg_1.a.b, 1558f, vec2<u32>(4294967295u, 75778u), arg_1.a.b), Struct_2(vec4<bool>(global1.x, global1.x, false, true), arg_1.a.b, global2.x, vec2<u32>(4294967295u, 87612u), Struct_1(arg_1.a.b.a, 10613u, vec2<u32>(4294967295u, arg_1.a.b.a.x)))).xy))), _wgslsmith_f_op_f32(-global2.x), ~vec2<u32>(~12725u, 1u), Struct_1(vec3<u32>(39716u, func_3(select(global1.zz, global1.zz, global1.x), select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, true)), Struct_2(vec4<bool>(global1.x, true, global1.x, global1.x), arg_1.a.b, global2.x, arg_1.a.c.a.zz, Struct_1(arg_1.a.b.a, 36536u, vec2<u32>(38282u, 14792u))), Struct_2(vec4<bool>(global1.x, false, true, global1.x), Struct_1(arg_1.a.c.a, arg_1.a.a.x, vec2<u32>(arg_1.a.b.a.x, arg_1.a.b.b)), var_0.x, arg_1.a.a.yy, arg_1.a.c)).x, _wgslsmith_add_u32(arg_1.a.c.b, 16112u)), abs(abs(arg_1.a.a.x)) >> (arg_1.a.b.a.x % 32u), func_1().a.zy));
    let var_2 = arg_1;
    var var_3 = arg_1;
    return Struct_1(vec3<u32>(1u, func_3(select(select(global1.xy, vec2<bool>(true, true), vec2<bool>(var_1.a.x, var_1.a.x)), !global1.yz, all(vec4<bool>(var_1.a.x, global1.x, false, global1.x))), vec3<bool>(!var_1.a.x, !global1.x, all(vec3<bool>(true, var_1.a.x, false))), var_1, Struct_2(select(var_1.a, var_1.a, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(var_2.a.b.a.x, var_3.a.a.x, var_2.a.b.b), 44712u, arg_1.a.c.c), _wgslsmith_div_f32(var_1.c, -3055f), var_2.a.b.a.yz, Struct_1(vec3<u32>(var_2.a.a.x, arg_1.a.c.b, 1u), 6413u, var_1.e.a.xx))).x, _wgslsmith_mult_u32(var_3.a.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(49351u, 64101u, 94972u), vec3<u32>(var_3.a.b.c.x, var_2.a.b.a.x, var_3.a.c.b))) >> (4294967295u % 32u)), ~var_3.a.a.x, var_2.a.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 8>();
    var var_0 = global1.x;
    var var_1 = global1.zy;
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1535f)))))));
    let var_2 = func_5(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 1u, 0u, 46524u) % vec4<u32>(32u)), -vec4<i32>(17030i, u_input.a, u_input.a, u_input.a)), 0i, u_input.a), func_4(u_input.a, Struct_3(vec3<u32>(1u, 1u, 1u), func_1(), func_1(), -2147483647i, 1i), 1u));
    global0 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-2147483647i, -2727i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2853i)), ~abs(vec4<i32>(u_input.a, u_input.a, 11663i, u_input.a))), vec4<i32>(-5673i, ~11328i << ((var_2.c.x << (6877u % 32u)) % 32u), u_input.a, ~u_input.a)), var_2.a);
}

