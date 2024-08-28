struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = false;
    var var_1 = Struct_1(vec3<i32>(u_input.e.x, u_input.c, u_input.c), u_input.e, vec3<i32>(0i, min(~(-77181i), u_input.e.x), -4494i), false, 4294967295u);
    var var_2 = !select(vec2<bool>((true && var_0) & var_1.d, var_0 || any(vec2<bool>(true, var_0))), vec2<bool>(true, var_1.d), !(!select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, false), false)));
    var_2 = !(!vec2<bool>(!(var_2.x || true), false));
    var_2 = select(!vec2<bool>(all(select(vec4<bool>(false, var_2.x, var_2.x, var_0), vec4<bool>(true, false, false, var_1.d), var_2.x)), true), select(select(vec2<bool>(true, var_1.c.x < 3415i), vec2<bool>(var_0, var_0), true), vec2<bool>(var_0, all(vec2<bool>(false, var_0)) == var_1.d), all(vec4<bool>(true, true, true, true))), all(select(!vec3<bool>(true, var_2.x, var_1.d), vec3<bool>(false, false, true), select(!vec3<bool>(var_1.d, false, var_2.x), vec3<bool>(true, true, true), !vec3<bool>(var_1.d, true, true)))));
    return !(!(!select(vec3<bool>(true, var_0, true), vec3<bool>(false, true, var_1.d), true)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(!(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), func_3(), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 0i, -2749i), vec3<i32>(u_input.e.x, u_input.e.x, 25836i)), -vec3<i32>(u_input.e.x, 0i, -2147483647i)) | abs(-vec3<i32>(0i, -46937i, -2147483647i)), vec2<i32>(abs(2147483647i), u_input.e.x), ~(~(vec3<i32>(-1i, u_input.c, u_input.c) << (u_input.b % vec3<u32>(32u)))), true, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 1u, u_input.b.x), ~u_input.a)));
    let var_1 = any(!vec3<bool>(var_0.b.x, _wgslsmith_sub_i32(var_0.c.a.x, u_input.c) > u_input.e.x, true));
    var var_2 = Struct_1(var_0.c.c & (var_0.c.c << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.c.e, 4294967295u, u_input.b.x), vec3<u32>(5449u, u_input.b.x, 90528u), _wgslsmith_add_vec3_u32(vec3<u32>(986u, 30205u, 0u), u_input.b)) % vec3<u32>(32u))), vec2<i32>(max(max(1i, u_input.c), _wgslsmith_mult_i32(0i, var_0.c.b.x)), -1i), -vec3<i32>(u_input.c, _wgslsmith_div_i32(var_0.c.b.x, var_0.c.c.x) << (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, -8153i), vec3<i32>(var_0.c.c.x, var_0.c.a.x, 0i))), var_1, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c.e, 4294967295u, 68759u, 69755u), vec4<u32>(u_input.d, 4294967295u, 50157u, 0u)), firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.a, var_0.c.e, 0u, var_0.c.e)))));
    let var_3 = var_0.b.x;
    var var_4 = arg_0;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(~(~arg_0.c.e), arg_1 << (1u % 32u));
    let var_1 = !vec4<bool>(all(vec2<bool>(!arg_0.a, any(arg_0.b))), any(arg_0.b), !func_2(211f).b.x, select(arg_0.c.d, all(!arg_0.b.yx), true));
    var_0 = vec2<u32>((1u >> (0u % 32u)) ^ (~(var_0.x | arg_1) & (arg_0.c.e >> ((35624u >> (u_input.d % 32u)) % 32u))), ~(~u_input.b.x));
    var_0 = firstTrailingBit(~_wgslsmith_sub_vec2_u32(u_input.b.zx >> (~vec2<u32>(0u, arg_0.c.e) % vec2<u32>(32u)), firstTrailingBit(u_input.b.yx)));
    var var_2 = ~_wgslsmith_sub_u32(u_input.d, _wgslsmith_add_u32(select(14245u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c.e), vec2<u32>(arg_0.c.e, arg_1)), !var_1.x), select(u_input.a, reverseBits(8580u), u_input.d <= 0u)));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-276f, 1303f, var_1.x))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1766f)) * _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1130f)))))) - 638f), 1603f, _wgslsmith_f_op_f32(f32(-1f) * -712f));
    let var_1 = -207f;
    let var_2 = 222f;
    var var_3 = Struct_1(reverseBits(arg_3.c.a), reverseBits(firstLeadingBit(~_wgslsmith_mult_vec2_i32(arg_3.c.b, u_input.e))), arg_3.c.a, arg_3.a, firstLeadingBit((~0u ^ min(1u, arg_3.c.e)) << (~u_input.b.x % 32u)));
    var var_4 = abs(var_3.e);
    return func_2(242f).c;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = func_5(u_input.b.zx, select(select(select(!arg_1.xy, !arg_1.xy, arg_1.xz), !arg_1.xy, firstTrailingBit(35909u) < 0u), arg_1.xz, !(!arg_1.xy)), u_input.e.x, func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2027f) + _wgslsmith_f_op_f32(-arg_0))), u_input.b.x, vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-781i, 2147483647i, u_input.e.x)), vec3<i32>(u_input.c, u_input.c, u_input.e.x)), u_input.c)));
    let var_1 = !(!vec4<bool>(!arg_1.x, false, _wgslsmith_f_op_f32(-914f * -1180f) < arg_0, false));
    var var_2 = var_0;
    return ~(-1i);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 76069u, u_input.a), max(vec4<u32>(u_input.a, u_input.b.x, 1u, 0u), vec4<u32>(4294967295u, u_input.d, u_input.b.x, u_input.d))), ~max(vec4<u32>(u_input.d, u_input.a, 0u, 65901u), vec4<u32>(u_input.b.x, 29328u, 1390u, u_input.a))) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61294u, u_input.a, 0u, 1u), vec4<u32>(0u, u_input.b.x, 46499u, u_input.b.x)) << (0u % 32u), func_2(_wgslsmith_f_op_f32(310f + -218f)).c.e, u_input.d, ~17436u ^ _wgslsmith_clamp_u32(7304u, u_input.a, 0u)), (select(~vec4<u32>(20689u, 0u, u_input.d, u_input.b.x), firstLeadingBit(vec4<u32>(0u, 0u, 15479u, 45999u)), false) << (_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, 51140u, 4082u, u_input.d)), vec4<u32>(u_input.d, 7441u, u_input.d, u_input.d) & vec4<u32>(0u, u_input.b.x, 23508u, 1u)) % vec4<u32>(32u))) ^ vec4<u32>(1u, ~(~u_input.d), _wgslsmith_mult_u32(abs(u_input.d), 1u), max(0u, u_input.b.x)));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.xx, -vec2<i32>(arg_3.x, u_input.e.x)), _wgslsmith_sub_vec2_i32(func_4(func_2(482f), 38280u, u_input.e << (var_0.yw % vec2<u32>(32u))).c.c.zy, vec2<i32>(~(-2147483647i), -1i))) >> (vec2<u32>(var_0.x, abs(~max(0u, 362u))) % vec2<u32>(32u));
    var var_2 = Struct_1(max(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(var_1.x, 2147483647i, u_input.c)), _wgslsmith_mult_vec3_i32(-vec3<i32>(0i, arg_0, -9833i), func_4(Struct_2(true, vec3<bool>(true, true, false), Struct_1(arg_3, vec2<i32>(arg_3.x, 0i), vec3<i32>(var_1.x, arg_3.x, 0i), false, var_0.x)), u_input.b.x, arg_3.yz).c.a)), vec3<i32>(u_input.e.x, arg_1, u_input.c)), vec2<i32>(_wgslsmith_sub_i32(var_1.x, max(func_1(-883f, vec3<bool>(false, true, true)), arg_3.x)), arg_1), abs(min(_wgslsmith_div_vec3_i32(vec3<i32>(18343i, arg_1, -2147483647i), vec3<i32>(-2147483647i, -1i, arg_3.x)), vec3<i32>(-1i, 11426i, 1i)) >> ((vec3<u32>(19743u, 15122u, u_input.b.x) & vec3<u32>(var_0.x, 14851u, 0u)) % vec3<u32>(32u))), !((_wgslsmith_clamp_i32(70362i, -58417i, arg_3.x) & ~arg_3.x) != arg_2), ~(~(~(~u_input.b.x))));
    var var_3 = ~(~(vec2<u32>(40130u, 4294967295u) ^ select(var_0.zw, vec2<u32>(0u, 38546u), true)));
    var var_4 = (var_2.a.x >> (min(var_3.x, ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, var_0.x)) % 32u)) ^ arg_1;
    return func_4(func_2(-260f), _wgslsmith_add_u32(~1u, 1u) << (var_2.e % 32u), func_4(func_4(Struct_2(false, vec3<bool>(var_2.d, var_2.d, true), Struct_1(var_2.a, vec2<i32>(1i, 0i), arg_3, true, var_0.x)), ~4294967295u, vec2<i32>(arg_3.x, 2147483647i)), _wgslsmith_mult_u32(1u, var_2.e), abs(abs(u_input.e))).c.b & vec2<i32>(arg_1, arg_1)).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, any(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), true, true)));
    var var_1 = Struct_2(select(var_0.x, false, _wgslsmith_f_op_f32(trunc(297f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(726f, -1254f))))), vec3<bool>(all(vec2<bool>(false, true)), !all(var_0), select(true, var_0.x, true)), func_6(~31572i, _wgslsmith_add_i32(u_input.c & _wgslsmith_add_i32(u_input.c, u_input.e.x), -func_1(-1178f, vec3<bool>(var_0.x, false, true))), ~(-1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -11911i), firstLeadingBit(select(vec3<i32>(u_input.c, u_input.e.x, u_input.e.x), vec3<i32>(6299i, u_input.e.x, -1i), vec3<bool>(var_0.x, false, var_0.x))), _wgslsmith_add_vec3_i32(func_5(u_input.b.xz, vec2<bool>(var_0.x, var_0.x), u_input.e.x, Struct_2(false, vec3<bool>(false, true, false), Struct_1(vec3<i32>(41178i, u_input.c, u_input.e.x), vec2<i32>(u_input.c, 14318i), vec3<i32>(1i, u_input.e.x, u_input.e.x), var_0.x, 17390u))).c, vec3<i32>(u_input.c, u_input.e.x, -2147483647i)))));
    var var_2 = _wgslsmith_div_f32(725f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(-1000f + -1552f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1650f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-850f - -255f))))), var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(1000f * 317f);
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, -340f), vec2<f32>(-1000f, 617f)))))))))));
    var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-173f, var_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -692f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, var_3), vec2<f32>(-104f, 795f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 303f) - vec2<f32>(2182f, 617f)))))));
    var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -1265f)))), var_3);
    var_1 = func_2(_wgslsmith_f_op_f32(ceil(-127f)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) - -867f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(var_1.c.b, -_wgslsmith_clamp_vec2_i32(var_1.c.c.zy, var_1.c.b, vec2<i32>(0i, var_1.c.a.x))), _wgslsmith_div_u32(var_1.c.e, 35800u), 1i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f + 1000f)), _wgslsmith_f_op_f32(var_3 * -328f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3)))))));
}

