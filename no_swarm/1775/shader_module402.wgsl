struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1366f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(423f + 436f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1712f, -1027f))))));
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), _wgslsmith_mod_vec4_i32(arg_0, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -43887i, arg_0.x, 1i), -vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -1i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u ^ u_input.a.x, ~u_input.a.x, 1699u), firstLeadingBit(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.b, u_input.b, u_input.b)), 301f), vec2<bool>(true, !all(vec2<bool>(false, false)) & true), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, arg_0.x, select(2147483647i, 1i, false), arg_0.x >> (u_input.b % 32u)), arg_0), vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = 1703f;
    var var_3 = true;
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(60724u, 0u, countOneBits(~select(90203u, var_1.a.c.x, var_1.b.x))), vec3<u32>(firstTrailingBit(~var_1.a.c.x) | var_1.a.c.x, ~countOneBits(_wgslsmith_sub_u32(4294967295u, 4294967295u)), 4294967295u));
    return _wgslsmith_f_op_f32(var_1.d.x - var_2);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = false;
    let var_1 = -1i ^ arg_0.b.x;
    var var_2 = Struct_1(select(!select(select(arg_0.a, arg_0.a, vec3<bool>(var_0, false, arg_0.a.x)), arg_0.a, any(arg_0.a)), select(vec3<bool>(true, var_0 || arg_0.a.x, !var_0), !arg_0.a, select(select(arg_0.a, arg_0.a, false), vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, true, arg_0.a.x))), select(select(arg_0.a, arg_0.a, var_0 && true), vec3<bool>(var_0, !var_0, false), true)), reverseBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1, arg_0.b.x, var_1, arg_0.b.x), arg_0.b, ~vec4<i32>(21655i, var_1, arg_0.b.x, -52134i))) & countOneBits(arg_0.b), min(vec3<u32>(arg_0.c.x & u_input.b, arg_0.c.x, arg_0.c.x), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a.x, arg_0.c.x, 14745u) | vec3<u32>(arg_0.c.x, arg_0.c.x, 541u), arg_0.c, vec3<bool>(arg_0.a.x, true, var_0)), arg_0.c)), _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d))) + _wgslsmith_f_op_f32(-666f - 1000f))));
    global0 = var_2.d;
    global0 = _wgslsmith_f_op_f32(func_3(vec4<i32>((-var_2.b.x << (~var_2.c.x % 32u)) >> (u_input.b % 32u), _wgslsmith_sub_i32(~2147483647i, -1i), var_1, 2147483647i)));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = true;
    global0 = arg_1.d;
    var var_1 = arg_1;
    return Struct_2(Struct_1(!var_1.a, _wgslsmith_clamp_vec4_i32(arg_1.b, countOneBits(-var_1.b), -var_1.b & vec4<i32>(var_1.b.x, -4750i, arg_1.b.x, -10478i)), ~func_2(arg_1).c << (func_2(func_2(Struct_1(arg_1.a, arg_1.b, vec3<u32>(1u, var_1.c.x, var_1.c.x), var_1.d))).c % vec3<u32>(32u)), var_1.d), !var_1.a.yz, -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-4744i, arg_0, arg_1.b.x, -2472i), var_1.b) & vec4<i32>(0i, 0i, -1i, var_1.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d, arg_1.d), vec2<f32>(1033f, var_1.d)))) + vec2<f32>(1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)))));
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = 1120f;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d) * _wgslsmith_div_f32(arg_0.a.d, 681f)), arg_0.a.d))))));
    let var_0 = func_4(~_wgslsmith_dot_vec3_i32(~select(vec3<i32>(0i, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b.zxx, arg_0.a.a), arg_0.a.b.wyw), arg_0.a, vec4<u32>(~(~1u), ~3347u, ~abs(4294967295u), ~(arg_0.a.c.x | arg_0.a.c.x) >> (1u % 32u))).a;
    var var_1 = any(func_4(reverseBits(arg_0.c.x), func_4(~(2147483647i & var_0.b.x), arg_0.a, ~vec4<u32>(u_input.b, 4294967295u, var_0.c.x, 20202u)).a, max(countOneBits(select(vec4<u32>(var_0.c.x, 78377u, 120150u, arg_0.a.c.x), vec4<u32>(arg_0.a.c.x, u_input.a.x, 0u, arg_0.a.c.x), arg_0.a.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 1u, var_0.c.x), vec4<u32>(var_0.c.x, 4294967295u, arg_0.a.c.x, 4294967295u)))).b);
    let var_2 = Struct_2(Struct_1(vec3<bool>(_wgslsmith_f_op_f32(var_0.d + -2518f) < _wgslsmith_f_op_f32(var_0.d - arg_0.a.d), var_0.a.x, true), countOneBits(var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(abs(arg_0.a.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, u_input.b, 3242u), vec4<u32>(4294967295u, 1u, arg_0.a.c.x, 126422u)), 0u >> (arg_0.a.c.x % 32u)), vec3<u32>(min(arg_0.a.c.x, u_input.b), _wgslsmith_mod_u32(u_input.a.x, 1u), ~23122u)), arg_0.d.x), vec2<bool>(func_2(var_0).a.x, true), func_4(-1i, Struct_1(!vec3<bool>(true, false, arg_0.a.a.x), vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_0.b.x, 1i, var_0.b.x), min(~var_0.c, var_0.c), arg_0.d.x), vec4<u32>(_wgslsmith_div_u32(~arg_0.a.c.x, ~var_0.c.x), var_0.c.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(80529u, 1u), 24061u), (var_0.c.x >> (0u % 32u)) << (abs(0u) % 32u))).a.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, 1313f), vec2<f32>(-1162f, -1000f)));
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) + -558f);
    var var_0 = firstTrailingBit(vec3<u32>(u_input.b, func_5(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-28660i, -1i), vec2<i32>(-39614i, -3914i)), func_2(Struct_1(vec3<bool>(false, false, false), vec4<i32>(-2052i, 1i, 40900i, 0i), vec3<u32>(35274u, 82338u, 1u), 103f)), vec4<u32>(60815u, u_input.b, u_input.a.x, u_input.b))), ~1u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(148f)) + _wgslsmith_f_op_f32(f32(-1f) * -1454f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) * -175f))), -346f);
    var var_2 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec4<bool>(false, false, false, true))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -10679i, 2633i, -1i), ~vec4<i32>(21095i, -47323i, 12048i, 0i)), _wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(var_0.x, u_input.b, u_input.a.x)), _wgslsmith_mod_vec3_u32(func_4(-23487i, Struct_1(vec3<bool>(false, false, false), vec4<i32>(0i, -1952i, 1i, -276i), vec3<u32>(4294967295u, u_input.a.x, 1u), var_1.x), vec4<u32>(u_input.b, 24721u, u_input.b, u_input.a.x)).a.c, select(vec3<u32>(53063u, 4294967295u, 0u), vec3<u32>(u_input.a.x, var_0.x, 38241u), false))), _wgslsmith_f_op_f32(-var_1.x)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), !func_4(-2147483647i, Struct_1(vec3<bool>(false, true, false), vec4<i32>(-27747i, -66243i, -2147483647i, 11964i), vec3<u32>(var_0.x, 30756u, 4294967295u), -745f), vec4<u32>(var_0.x, var_0.x, 60225u, var_0.x)).a.a.xx, vec2<bool>(true, true)), func_4(-5874i, func_2(func_4(1i, func_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(30606i, 52352i, 12236i, 2147483647i), vec3<u32>(0u, 0u, 49710u), -477f)), vec4<u32>(u_input.b, var_0.x, 4294967295u, u_input.b)).a), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, 36920u, 25229u, var_0.x), max(vec4<u32>(11676u, var_0.x, var_0.x, u_input.b), vec4<u32>(0u, 74448u, 98u, var_0.x))), abs(~vec4<u32>(u_input.b, 37803u, u_input.b, var_0.x)))).c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-751f + var_1.x), _wgslsmith_div_f32(var_1.x, -322f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(447f, 747f) * vec2<f32>(349f, var_1.x)) - _wgslsmith_f_op_vec2_f32(abs(var_1.xz)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 849f)) - _wgslsmith_f_op_vec2_f32(abs(var_1.xx))))))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * -977f), -802f) + _wgslsmith_f_op_f32(var_2.d.x - -235f)), var_2.a.d));
    return func_4(~var_2.c.x, var_2.a, _wgslsmith_sub_vec4_u32(min(~firstTrailingBit(vec4<u32>(var_0.x, u_input.a.x, var_0.x, 4294967295u)), select(vec4<u32>(u_input.b, 0u, 1u, var_2.a.c.x), vec4<u32>(3980u, 114970u, 1u, var_2.a.c.x), true)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_2.a.c.x, 0u, var_0.x, var_0.x) ^ vec4<u32>(4891u, u_input.a.x, 4294967295u, var_0.x), vec4<u32>(37124u, var_2.a.c.x, u_input.a.x, var_0.x)), vec4<u32>(_wgslsmith_mult_u32(1u, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(23083u, var_0.x, 0u), var_2.a.c), 71821u, var_2.a.c.x)))).a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_1;
    var_0 = arg_2.a;
    var_0 = Struct_1(arg_0.a, arg_0.b, min(~arg_2.a.c, ~(~vec3<u32>(4294967295u, 4294967295u, 43515u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(898f - -852f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(~arg_0.b)), _wgslsmith_div_f32(-883f, arg_0.d))), !(_wgslsmith_f_op_f32(-arg_0.d) == _wgslsmith_f_op_f32(196f - 1000f)))));
    let var_1 = func_4(-37947i, func_4(var_0.b.x, func_1(), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.c.x, 1587u, 1u, 1u)), select(vec4<u32>(arg_1.c.x, 0u, 87084u, 73220u), vec4<u32>(0u, arg_2.a.c.x, u_input.b, 4294967295u), var_0.a.x), vec4<u32>(0u, 4294967295u, 44278u, var_0.c.x) & vec4<u32>(arg_0.c.x, u_input.b, 0u, 4294967295u))).a, ~min(reverseBits(vec4<u32>(21645u, arg_1.c.x, 66697u, 1u) << (vec4<u32>(57386u, u_input.b, u_input.a.x, 4294967295u) % vec4<u32>(32u))), ~(~vec4<u32>(arg_2.a.c.x, 1u, arg_0.c.x, arg_1.c.x))));
    var var_2 = ~u_input.a & vec2<u32>(_wgslsmith_clamp_u32(~1u, 4294967295u, var_0.c.x), ~(~var_1.a.c.x));
    return arg_1.c;
}

fn func_7(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(func_2(func_2(func_4(~20021i, Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, -1i, -36920i, -9487i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -1612f), ~vec4<u32>(var_0, u_input.b, 4294967295u, arg_0.x)).a)), vec2<bool>(true, true), ~(~vec4<i32>(1i, 2147483647i, ~21789i, abs(-31492i))), vec2<f32>(-1196f, 1122f));
    let var_2 = ~_wgslsmith_sub_u32(54541u, ~4294967295u);
    let var_3 = func_4(-5067i, var_1.a, ~select(vec4<u32>(~4294967295u, 1u, 10731u, _wgslsmith_dot_vec4_u32(vec4<u32>(9759u, 17440u, u_input.a.x, var_1.a.c.x), vec4<u32>(u_input.b, var_1.a.c.x, 1u, 0u))), ~min(vec4<u32>(1u, var_2, var_1.a.c.x, u_input.b), vec4<u32>(var_0, 4294967295u, var_1.a.c.x, 4294967295u)), any(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.a.a.x, var_1.b.x))));
    let var_4 = Struct_2(func_1(), var_1.b, _wgslsmith_div_vec4_i32(var_3.a.b, var_3.a.b), vec2<f32>(1053f, 1000f));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f - 2067f)), 376f, 121f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(740f, 1878f, 1074f) + vec3<f32>(-509f, 1465f, 847f)))), !vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))))));
    var var_1 = func_7(vec2<u32>(_wgslsmith_dot_vec3_u32(func_6(Struct_1(vec3<bool>(false, true, true), vec4<i32>(-2147483647i, 72652i, -36672i, -34601i), vec3<u32>(u_input.b, u_input.b, u_input.b), -383f), func_1(), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(-27152i, 2147483647i, 2147483647i, 2147483647i), vec3<u32>(15397u, u_input.b, u_input.b), var_0.x), vec2<bool>(true, false), vec4<i32>(25228i, 19988i, 50286i, 63679i), vec2<f32>(317f, -389f))), abs(vec3<u32>(u_input.a.x, u_input.a.x, 199u)) ^ vec3<u32>(1u, 1u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 61555u, u_input.b, 1u), vec4<u32>(1u, 4294967295u, 1u, 55065u) | vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = -abs(var_1.b.x);
    var_2 = reverseBits(-2147483647i);
    let var_3 = Struct_1(vec3<bool>(all(var_1.a.zz) | (~var_1.c.x < u_input.b), (4294967295u ^ var_1.c.x) == func_6(func_4(1i, Struct_1(var_1.a, var_1.b, vec3<u32>(var_1.c.x, 53176u, u_input.b), var_0.x), vec4<u32>(var_1.c.x, var_1.c.x, 1u, u_input.b)).a, Struct_1(var_1.a, var_1.b, var_1.c, var_0.x), Struct_2(Struct_1(var_1.a, var_1.b, var_1.c, var_0.x), var_1.a.xx, vec4<i32>(var_1.b.x, 8008i, -2334i, 1i), var_0.yx)).x, !(!any(var_1.a.xz))), select(var_1.b, -var_1.b | var_1.b, !select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(true, true, true, true))), var_1.c, var_1.d);
    var_1 = func_1();
    var var_4 = ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(u_input.b, var_3.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.c.yx, var_1.c.zz), _wgslsmith_add_vec2_u32(var_3.c.yy, vec2<u32>(var_3.c.x, 4294967295u))), 37192u) >> (~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 10709u, var_3.c.x, var_1.c.x), vec4<u32>(var_3.c.x, 4294967295u, 1u, 0u), vec4<u32>(u_input.a.x, 1u, var_3.c.x, 4294967295u)) ^ vec4<u32>(0u, u_input.a.x, 0u, 1u))) % vec4<u32>(32u));
    var_2 = _wgslsmith_mod_i32(func_1().b.x, firstTrailingBit(func_7(~vec2<u32>(13178u, 23216u)).b.x) >> (func_6(func_2(var_3), func_7(select(vec2<u32>(u_input.a.x, 0u), vec2<u32>(var_1.c.x, u_input.a.x), false)), Struct_2(Struct_1(vec3<bool>(var_1.a.x, true, var_3.a.x), vec4<i32>(var_1.b.x, var_1.b.x, -11614i, var_1.b.x), vec3<u32>(var_1.c.x, u_input.a.x, var_4.x), var_0.x), vec2<bool>(false, true), vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_0.zz)).x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 515f, var_3.d) + vec3<f32>(var_3.d, 950f, -687f)))), var_3.a)), _wgslsmith_f_op_vec2_f32(-var_0.zz));
}

