struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(5999u, 2965u, 40805u, 52873u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    let var_0 = true;
    let var_1 = Struct_1(vec2<i32>(u_input.a, firstLeadingBit(firstTrailingBit(-34473i))));
    var var_2 = -419f;
    let var_3 = _wgslsmith_clamp_u32(~(32852u ^ u_input.c), global0.x, _wgslsmith_div_u32(global0.x, abs(abs(0u))));
    global0 = firstTrailingBit(~((select(vec4<u32>(9063u, 19337u, 1686u, 7517u), vec4<u32>(u_input.c, u_input.b, global0.x, global0.x), vec4<bool>(var_0, true, var_0, false)) & ~vec4<u32>(global0.x, 34584u, global0.x, global0.x)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.x, 1u, 35796u), vec4<u32>(677u, 4294967295u, 1u, 36285u))));
    return arg_1.x < u_input.c;
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_3(1000f, min(~(vec2<u32>(105244u, u_input.c) >> (global0.zz % vec2<u32>(32u))) & global0.xx, vec2<u32>(global0.x, 1u)), (all(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true), arg_1)) == true) & (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 82455u, u_input.b), abs(global0.zyy)) < u_input.b), Struct_1(vec2<i32>(-10674i, -(arg_0 >> (global0.x % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 623f, -905f, -456f), vec4<f32>(2620f, 850f, -326f, -512f))))))));
    let var_1 = _wgslsmith_f_op_f32(max(362f, var_0.e.x));
    global0 = select(vec4<u32>(1u, min(~(4294967295u >> (global0.x % 32u)), 0u), ~(~(~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b, 59542u)))), select(vec4<u32>(firstTrailingBit(~0u), global0.x ^ ~var_0.b.x, ~(~global0.x), ~4877u), vec4<u32>(58233u, abs(28403u), firstLeadingBit(u_input.b), _wgslsmith_div_u32(4294967295u & var_0.b.x, abs(u_input.b))), select(vec4<bool>(false, false, arg_1, false), select(select(vec4<bool>(var_0.c, false, arg_1, arg_1), vec4<bool>(arg_1, false, var_0.c, var_0.c), true), !vec4<bool>(false, var_0.c, true, var_0.c), true), vec4<bool>(arg_1, any(vec4<bool>(true, false, arg_1, true)), true, any(vec4<bool>(arg_1, false, true, false))))), !all(select(vec3<bool>(false, false, arg_1), vec3<bool>(true, var_0.c, arg_1), arg_1)) | true);
    var var_2 = Struct_1(var_0.d.a);
    var var_3 = var_0;
    return var_0.b.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec4<u32> {
    global0 = ~((select(~vec4<u32>(4294967295u, 0u, global0.x, 1u), ~vec4<u32>(arg_3.x, 17800u, 0u, global0.x), vec4<bool>(arg_2.x, true, arg_2.x, true)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, arg_3.x), vec4<u32>(54681u, arg_3.x, 1u, 20566u))) ^ vec4<u32>(~1u, ~(~global0.x), func_4(-44536i, arg_0.x || arg_0.x), 36627u));
    var var_0 = Struct_4(firstTrailingBit(~(~(~global0.wyy))), global0.x, vec4<i32>(-2147483647i, -86835i, arg_1.a.x, -15586i));
    var var_1 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(-arg_1.a, var_0.c.yw), -1i, 62152i);
    let var_2 = Struct_4(~vec3<u32>(1u, 28148u, arg_3.x), arg_3.x, ~vec4<i32>(-abs(-27333i), u_input.a, min(firstTrailingBit(2147483647i), u_input.a << (27760u % 32u)), arg_1.a.x));
    return vec4<u32>(_wgslsmith_add_u32(var_0.a.x, var_2.a.x) << (((~u_input.b << ((var_2.b ^ 35836u) % 32u)) >> (~(~0u) % 32u)) % 32u), var_0.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, var_0.a.x), ~(~(~var_2.b))), var_2.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    global0 = func_5(arg_0.wyz, Struct_1(vec2<i32>(~(32643i & u_input.a), u_input.a)), arg_0.zyw, vec3<u32>(func_4(24744i, func_3(firstLeadingBit(-1398i), vec2<u32>(global0.x, global0.x) & vec2<u32>(25404u, global0.x))), firstTrailingBit(1u | ~global0.x), ~0u));
    var var_0 = global0.x;
    let var_1 = Struct_4(global0.zwy, max(70923u & u_input.b, 24890u), -_wgslsmith_clamp_vec4_i32(min(countOneBits(vec4<i32>(u_input.a, 0i, u_input.a, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(99837i, u_input.a, u_input.a, -45774i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(~vec4<i32>(-2780i, 7174i, 48964i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-19216i, -1i, 11905i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, 44823i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 31680i)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1159f), vec2<u32>(~6320u, ~(~1656u)), false, Struct_1(-(~(vec2<i32>(u_input.a, var_1.c.x) ^ vec2<i32>(var_1.c.x, 2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, -261f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -202f, 1000f, arg_1), vec4<f32>(-1000f, arg_1, 232f, arg_1))))));
    var var_3 = false && (var_2.c || (all(!arg_0) && false));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = select(func_2(vec4<bool>(true, all(vec4<bool>(true, false, false, false)) & true, true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(361f, -636f, false)))))), vec4<bool>(true, true, true, true), vec4<bool>(u_input.c == ~select(arg_0.x, arg_0.x, false), func_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), -107f).x, true, true == !any(vec2<bool>(false, true))));
    var var_1 = 0i;
    let var_2 = vec3<f32>(1f, 1f, 1f);
    var var_3 = false;
    return Struct_4(vec3<u32>(47529u, firstTrailingBit(62233u), u_input.b << (~u_input.c % 32u)), 4294967295u, vec4<i32>(1i, u_input.a, min(u_input.a ^ _wgslsmith_mult_i32(u_input.a, 0i), countOneBits(_wgslsmith_div_i32(u_input.a, 0i))), ~u_input.a));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, firstLeadingBit(max(global0.x, 1u)) << (~56272u % 32u), arg_3.a.x, abs(5840u & ~arg_2.a.x)), ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24507u, arg_3.a.x, 18139u, 1u), vec4<u32>(37543u, 10696u, arg_2.b, 84231u)), vec4<u32>(55800u, global0.x, u_input.c, arg_3.b) >> (vec4<u32>(arg_3.b, global0.x, 4145u, 0u) % vec4<u32>(32u)), abs(vec4<u32>(arg_2.a.x, 21524u, global0.x, 1u))) << (vec4<u32>(12817u, 54234u, 2741u, 1u) % vec4<u32>(32u))), ~vec4<u32>(arg_2.a.x, global0.x, 12372u, 4294967295u));
    var var_0 = Struct_2(arg_3.c.x);
    global0 = vec4<u32>(u_input.c, arg_3.a.x, _wgslsmith_dot_vec2_u32(~arg_2.a.xz | ~arg_2.a.zy, firstLeadingBit(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(global0.yyy, global0.yxw)))), ~50327u);
    var_0 = Struct_2(var_0.a);
    var var_1 = u_input.b;
    return Struct_3(474f, abs(~arg_2.a.xy), true & arg_0, Struct_1(_wgslsmith_mod_vec2_i32(-arg_2.c.zy, min(vec2<i32>(u_input.a, 63819i), arg_2.c.wx) << (~vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2370f, 916f, arg_1, -1542f)))), vec4<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(ceil(arg_1)), arg_1), vec4<bool>(!arg_0, arg_0, true, func_2(vec4<bool>(false, false, arg_0, arg_0), -459f).x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, -927f, -1000f, arg_1)))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> vec3<bool> {
    global0 = ~vec4<u32>(func_6(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_1.a)), Struct_4(vec3<u32>(18176u, 53131u, arg_1.b.x), ~49560u, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, u_input.a), vec4<i32>(-9123i, u_input.a, u_input.a, arg_3.d.a.x), vec4<i32>(-1i, arg_3.d.a.x, u_input.a, arg_3.d.a.x))), func_1(abs(vec4<u32>(11731u, 4294967295u, 0u, global0.x)))).b.x, func_4(arg_1.d.a.x, true) << (~23138u % 32u), 4294967295u, _wgslsmith_dot_vec2_u32(abs(arg_1.b), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_1.b.x, arg_1.b.x)), ~vec2<u32>(u_input.b, 55621u))));
    let var_0 = func_2(func_2(vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(false, true, arg_1.c, arg_1.c)), false, arg_3.c), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), arg_1.a).x;
    var var_1 = vec2<u32>(arg_3.b.x & ~(firstLeadingBit(arg_1.b.x) | 1u), arg_3.b.x);
    let var_2 = func_1(~select(firstTrailingBit(vec4<u32>(1u, 12645u, arg_3.b.x, arg_3.b.x) & vec4<u32>(global0.x, 1u, global0.x, arg_3.b.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_1.x, arg_1.b.x, u_input.b), vec4<u32>(var_1.x, 7800u, 1u, 15799u)), ~vec4<u32>(u_input.c, 44775u, global0.x, 0u)), !select(vec4<bool>(false, arg_3.c, false, true), vec4<bool>(arg_1.c, false, var_0, true), vec4<bool>(true, arg_1.c, false, true))));
    let var_3 = countOneBits(_wgslsmith_add_vec4_i32(~func_1(vec4<u32>(u_input.b, 1u, 46604u, 74371u)).c, countOneBits(var_2.c)));
    return vec3<bool>(true, true, arg_1.c || arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-u_input.a);
    global0 = abs(~(~select(~vec4<u32>(1u, 52888u, global0.x, 53868u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global0.x, u_input.c, 4294967295u), vec4<u32>(u_input.b, global0.x, u_input.c, global0.x)), all(vec3<bool>(true, true, true)))));
    let var_1 = global0.wyy;
    let var_2 = ~0i;
    var var_3 = select(!vec3<bool>(!all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), true), vec3<bool>(true, (1u < var_1.x) == any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true), func_7(global0.xyy, func_6(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(714f))), func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u), vec4<u32>(global0.x, 4294967295u, global0.x, var_1.x))), Struct_4(vec3<u32>(58324u, global0.x, var_1.x), 1u, vec4<i32>(37891i, var_0.a, var_2, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1737f, 2213f, -1539f, 1f)), func_6(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(683f)))), Struct_4(_wgslsmith_mult_vec3_u32(global0.zxz, global0.xww), ~1u, vec4<i32>(var_0.a, u_input.a, 21238i, var_2)), Struct_4(firstLeadingBit(vec3<u32>(4294967295u, 83536u, 14997u)), ~var_1.x, select(vec4<i32>(var_2, var_0.a, var_0.a, var_2), vec4<i32>(var_2, u_input.a, -26165i, -2147483647i), false)))));
    global0 = ~((vec4<u32>(func_6(var_3.x, -1000f, Struct_4(global0.xwz, 365u, vec4<i32>(u_input.a, 0i, -16752i, u_input.a)), Struct_4(vec3<u32>(global0.x, 4294967295u, 116515u), global0.x, vec4<i32>(-1i, u_input.a, var_0.a, -2147483647i))).b.x, 1u, ~1u, _wgslsmith_dot_vec3_u32(global0.yyx, global0.wxy)) >> (select(vec4<u32>(var_1.x, 1u, u_input.c, global0.x), vec4<u32>(35079u, 4294967295u, 9616u, 34260u), !vec4<bool>(var_3.x, var_3.x, true, true)) % vec4<u32>(32u))) & (~vec4<u32>(global0.x, 0u, 0u, 7570u) | select(vec4<u32>(var_1.x, u_input.c, var_1.x, 7689u), reverseBits(vec4<u32>(64437u, global0.x, var_1.x, 0u)), true)));
    var_3 = !(!select(vec3<bool>(!var_3.x, var_3.x, false), !func_7(vec3<u32>(u_input.b, u_input.b, global0.x), Struct_3(1000f, var_1.yx, var_3.x, Struct_1(vec2<i32>(var_0.a, var_0.a)), vec4<f32>(-2127f, 560f, -2731f, -825f)), vec4<f32>(952f, -425f, -111f, 494f), Struct_3(-171f, vec2<u32>(1u, global0.x), var_3.x, Struct_1(vec2<i32>(-8441i, u_input.a)), vec4<f32>(501f, -251f, -1057f, -710f))), vec3<bool>(false, false, true)));
    global0 = vec4<u32>(~104352u & _wgslsmith_mult_u32((global0.x ^ global0.x) | ~0u, _wgslsmith_mod_u32(u_input.b, u_input.b)), select(4294967295u, 0u, any(!select(vec4<bool>(var_3.x, false, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, var_3.x), false))), 16938u, ~_wgslsmith_dot_vec3_u32(func_5(vec3<bool>(false, var_3.x, false), Struct_1(vec2<i32>(-15885i, -22365i)), func_7(vec3<u32>(var_1.x, u_input.c, u_input.b), Struct_3(-1113f, vec2<u32>(var_1.x, 0u), true, Struct_1(vec2<i32>(u_input.a, u_input.a)), vec4<f32>(1227f, 576f, -560f, -902f)), vec4<f32>(424f, -620f, 929f, -1000f), Struct_3(-541f, vec2<u32>(4294967295u, 1u), var_3.x, Struct_1(vec2<i32>(var_2, -18696i)), vec4<f32>(-1000f, 1188f, 569f, 359f))), ~vec3<u32>(1u, 5695u, u_input.c)).xwx, reverseBits(~global0.ywy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(307f, -1840f), -533f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2226f, -1963f) * vec2<f32>(398f, -1171f)))))), _wgslsmith_f_op_f32(-func_6(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-552f, -1162f)))), func_1(select(vec4<u32>(8462u, 4294967295u, 65004u, var_1.x), vec4<u32>(16248u, 1u, global0.x, var_1.x), true)), func_1(~vec4<u32>(0u, 0u, global0.x, u_input.b))).a));
}

