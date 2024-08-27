struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_4) -> vec2<i32> {
    global0 = any(select(select(!(!vec4<bool>(true, arg_0, arg_0, arg_0)), select(!vec4<bool>(false, true, arg_1.x, arg_0), !vec4<bool>(arg_0, arg_1.x, arg_0, arg_0), all(arg_1)), select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, arg_1.x), false), select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_0, false, arg_1.x, arg_1.x), arg_1.x), !arg_0)), select(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), !select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_1.x, arg_0, false, false), vec4<bool>(true, false, true, false)), (arg_2.d <= arg_3.b.b.x) != true), !all(!arg_1)));
    global0 = arg_1.x;
    let var_0 = abs(_wgslsmith_clamp_u32(max(~min(0u, arg_3.a.d.x), ~arg_3.a.b), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20470u, 67870u, arg_3.a.d.x, arg_2.c), vec4<u32>(u_input.b, arg_2.c, 0u, arg_3.a.b)), vec4<u32>(29008u, arg_2.c, 4294967295u, arg_3.a.b) ^ vec4<u32>(0u, arg_3.a.d.x, 59261u, arg_2.c))), ~arg_2.c));
    let var_1 = all(arg_1.yz);
    global0 = any(!(!arg_1));
    return vec2<i32>(abs(arg_2.b.x), arg_2.b.x ^ arg_3.a.e);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(firstLeadingBit(_wgslsmith_dot_vec2_i32(max(func_3(false, vec3<bool>(true, true, true), Struct_5(u_input.d.x, vec3<i32>(24173i, -68498i, 36591i), u_input.a.x, 1000f), Struct_4(Struct_3(1943f, u_input.b, Struct_1(vec4<f32>(103f, -2619f, -603f, -862f), vec3<f32>(1014f, 2378f, -1000f)), vec3<u32>(0u, 5310u, 4294967295u), -1076i), Struct_1(vec4<f32>(1449f, -500f, 2429f, 1205f), vec3<f32>(-1000f, -514f, 106f)), Struct_1(vec4<f32>(-1000f, -1000f, 903f, -157f), vec3<f32>(1069f, 1190f, -161f)), vec2<f32>(-1739f, -1543f))), abs(vec2<i32>(2147483647i, u_input.d.x))), ~countOneBits(vec2<i32>(-6202i, u_input.e.x)))), -(u_input.d.xwy ^ _wgslsmith_div_vec3_i32(reverseBits(u_input.d.yzz), u_input.e | u_input.e)), u_input.a.x, -1624f);
    let var_1 = !all(!vec3<bool>(true, 393f > var_0.d, true));
    global0 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -365f))), var_0.d, -165f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, var_0.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, -149f, var_0.d), vec3<f32>(-1257f, -678f, 938f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -1137f, var_0.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.d) + vec3<f32>(var_0.d, 568f, var_0.d))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f))), _wgslsmith_clamp_u32(21396u, var_0.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.a.x), select(u_input.a, u_input.a, true)), 1u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(313f)), _wgslsmith_f_op_f32(-150f - -326f), _wgslsmith_f_op_f32(exp2(var_2.b.x)), 1f), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(sign(var_2.a.x)))), (vec3<u32>(4294967295u >> (1u % 32u), u_input.b, max(u_input.a.x, 57298u)) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(33573u, u_input.b, u_input.b), vec3<u32>(0u, 43019u, u_input.b)), 1u, var_0.c)) ^ select(~(~vec3<u32>(u_input.b, var_0.c, var_0.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(47676u, 1u, u_input.b), vec3<u32>(1u, var_0.c, var_0.c)) ^ vec3<u32>(var_0.c, 4294967295u, var_0.c), var_1), 28039i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2328f), _wgslsmith_f_op_f32(select(var_3.a, -478f, true)))), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.d, -654f)), _wgslsmith_f_op_f32(-924f - 539f))), var_0.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_div_f32(-1000f, 2544f)))), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1881f - var_2.b.x))), var_2.a.x));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = abs(firstTrailingBit(_wgslsmith_sub_vec2_i32(-u_input.c, select(vec2<i32>(10444i, arg_1), vec2<i32>(arg_1, u_input.d.x), all(vec4<bool>(false, true, true, false))))));
    global0 = all(vec4<bool>(all(vec3<bool>(true, arg_2.a.x == 1735f, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), true, (any(vec2<bool>(true, true)) | false) | (_wgslsmith_f_op_f32(floor(-462f)) <= -595f)));
    let var_1 = Struct_2(Struct_1(vec4<f32>(156f, -174f, _wgslsmith_f_op_f32(ceil(-136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-936f, arg_2.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_f_op_vec3_f32(-arg_2.a.ywy)), func_2(), select(vec4<bool>(!select(false, false, true), true, select(true, all(vec3<bool>(false, true, false)), arg_0 == arg_2.b.x), false), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), arg_1 < 61234i));
    var var_2 = func_2().a.zwy;
    var var_3 = select(var_1.c.x, var_1.c.x, all(select(select(!var_1.c.xy, select(vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(false, true), false), !var_1.c.x), !vec2<bool>(false, var_1.c.x), select(!var_1.c.zz, select(var_1.c.yw, vec2<bool>(var_1.c.x, var_1.c.x), true), true))));
    return any(var_1.c.wyx);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = arg_1.a;
    let var_1 = ~abs(vec4<u32>(u_input.a.x, min(u_input.a.x, abs(21199u)), select(u_input.a.x, 29864u, true), u_input.b));
    global0 = false;
    global0 = false;
    var var_2 = Struct_2(arg_1, arg_1, vec4<bool>(false, !(var_1.x == ~42259u), true, false));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.a.x, _wgslsmith_f_op_f32(-arg_3))), ~countOneBits(0u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1.a))) * var_0), _wgslsmith_f_op_vec3_f32(exp2(var_2.a.b))), var_1.xwy, -(arg_2 >> ((1u >> (u_input.b % 32u)) % 32u)) & 3686i);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global0 = false;
    global0 = !arg_1;
    global0 = false;
    return func_5(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + 589f)))), u_input.d.x, func_2(), vec2<u32>(1u, ~_wgslsmith_mod_u32(u_input.b, u_input.a.x))), arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(~0i, ~(~u_input.e.x), u_input.d.x, 1i), (~u_input.d ^ u_input.d) & -_wgslsmith_sub_vec4_i32(u_input.d, u_input.d)), arg_0.a.x);
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> bool {
    global0 = _wgslsmith_mod_i32(u_input.e.x, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, arg_0.e), -u_input.d.x)) == u_input.d.x;
    let var_0 = Struct_4(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.c.a)) - _wgslsmith_div_vec4_f32(arg_0.c.a, vec4<f32>(118f, arg_0.c.b.x, arg_0.a, arg_0.a))), vec3<f32>(arg_0.c.b.x, arg_1, -410f)), true), func_5(select(arg_0.e <= -22562i, true, false) || func_4(arg_1, 1i, arg_0.c, vec2<u32>(u_input.b, arg_0.b)), func_2(), -20759i, _wgslsmith_f_op_f32(-arg_0.c.b.x)).c, arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -920f))));
    var var_1 = var_0.a.e < _wgslsmith_div_i32(firstLeadingBit(~(~arg_0.e)), var_0.a.e);
    var var_2 = -(-1i << (1u % 32u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.c.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(func_1(Struct_1(vec4<f32>(2034f, 1000f, -1874f, -204f), var_0.b.a.wyy), true).c.a.zyz)))));
    return all(vec3<bool>(any(vec4<bool>(true, true, true, true)), true & !all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)) && (_wgslsmith_f_op_f32(round(var_3.b.x)) < _wgslsmith_f_op_f32(exp2(arg_0.c.b.x)))));
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    let var_0 = ~abs(~vec3<u32>(~u_input.b, firstLeadingBit(u_input.b), ~u_input.b));
    let var_1 = _wgslsmith_div_u32(64283u, reverseBits(~(u_input.a.x << (abs(4294967295u) % 32u))));
    var var_2 = Struct_3(func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-195f)), -2372f, -886f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -682f, 533f))), true).c.b.x, ~u_input.a.x, func_1(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-931f, 143f, 630f, -482f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, -1000f, 277f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1308f, -1317f, -478f) + vec3<f32>(672f, 455f, 465f))))), select(firstTrailingBit(var_0.x) < var_1, all(arg_1), arg_0)).c, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 40431u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(59059u, u_input.a.x, 1u), select(var_0, var_0, false)), ~vec3<u32>(4294967295u, var_0.x, 4294967295u)), ~vec3<u32>(56256u, var_0.x, min(1u, u_input.a.x))), max(1006i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), min(2147483647i, u_input.c.x)) << (u_input.a.x % 32u)));
    var var_3 = var_2.c.a;
    var var_4 = Struct_5(i32(-1i) * -1i, ~vec3<i32>(reverseBits(-55496i), _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.xy), 2147483647i), ~4294967295u, var_3.x);
    return Struct_4(func_5(true, var_2.c, _wgslsmith_mult_i32(-1i, 2147483647i), var_2.a), var_2.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(684f + var_3.x), 1f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_4.d)), var_2.c.b.x, !arg_1.x))), var_3.yyz), func_5(any(!vec3<bool>(arg_2, arg_0, arg_1.x)), var_2.c, _wgslsmith_div_i32(var_4.b.x, abs(_wgslsmith_add_i32(-1i, u_input.e.x))), -487f).c.a.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, 478f, -527f, -1143f)), vec3<f32>(1f, 1f, 1f)), true && (u_input.d.x <= -2147483647i)), _wgslsmith_f_op_f32(trunc(func_5(true, func_1(Struct_1(vec4<f32>(-307f, 156f, 1270f, -2885f), vec3<f32>(-961f, 682f, 515f)), false).c, -1i, -716f).c.a.x))), !(!vec2<bool>(all(vec3<bool>(true, true, true)), 46892u == u_input.a.x)), _wgslsmith_f_op_f32(round(1f)) <= 2795f);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(558f - -679f), _wgslsmith_div_f32(-505f, -135f), true)))), _wgslsmith_f_op_f32(floor(941f)), _wgslsmith_f_op_f32(-1839f * var_0.b.a.x), var_0.b.b.x), vec3<f32>(_wgslsmith_f_op_f32(525f * _wgslsmith_div_f32(-1000f, var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(584f)) + _wgslsmith_f_op_f32(round(-265f)))), func_5(all(vec2<bool>(false, true)) | (var_0.a.e < var_0.a.e), var_0.c, u_input.d.x, -1534f).a));
    global0 = !all(vec4<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false)), true, true));
    global0 = select(!(~_wgslsmith_dot_vec4_i32(vec4<i32>(44651i, 0i, var_0.a.e, -1i), u_input.d) < -1i), false, false);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(var_0.b.a.x)), var_0.a.d.x, Struct_1(var_0.a.c.a, var_0.b.b), vec3<u32>(4294967295u, _wgslsmith_mod_u32(firstTrailingBit(~1u), reverseBits(~4294967295u)), 4294967295u), var_0.a.e);
    let var_3 = _wgslsmith_sub_u32(abs(1u & ~var_2.d.x), 30202u);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, vec4<u32>(23738u & min(u_input.a.x, var_2.d.x), ~var_3, 0u, u_input.a.x) & ~countOneBits(reverseBits(vec4<u32>(17755u, var_2.d.x, 2045u, 66577u))), select(~(~4294967295u ^ var_2.b), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(var_0.a.b), var_2.d.x), var_0.a.d.x), true), firstLeadingBit(u_input.c.x));
}

