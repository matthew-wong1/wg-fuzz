struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, global0.x))))), vec3<u32>(arg_0.b.x << (~arg_2.b.c.x % 32u), _wgslsmith_dot_vec2_u32(arg_0.b.xx, arg_0.b.xy), arg_0.b.x), 1i, arg_2.a.d.a.d), arg_2.a.c, abs(vec3<u32>(~(~1u), reverseBits(countOneBits(40185u)), 1u)));
    let var_1 = Struct_4(!(!select(vec2<bool>(arg_2.a.b, arg_2.a.b), select(vec2<bool>(arg_2.a.b, arg_2.a.b), vec2<bool>(false, arg_2.a.b), arg_2.a.b), false)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(809f, 1513f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.a.a.a.a * vec2<f32>(arg_0.a.x, global0.x)))) - arg_0.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.b.a.a)) - _wgslsmith_f_op_vec2_f32(max(var_0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.a)))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: i32) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-abs(reverseBits(vec2<i32>(-3464i, u_input.b))), vec2<i32>(u_input.b, (u_input.b ^ arg_3) >> (arg_1.x % 32u))), firstLeadingBit(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.a, arg_3)))), 17207i, -47226i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1869f, global0.x)) + vec2<f32>(global0.x, -291f)), vec3<u32>(~56122u, _wgslsmith_div_u32(arg_2, arg_2), arg_2 & arg_1.x), -2147483647i, ~select(vec4<i32>(u_input.a, arg_3, u_input.a, 54330i), vec4<i32>(var_0.x, 0i, -38956i, 2795i), arg_0.x)), var_0.x, Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(490f, 217f), arg_1, -1i, vec4<i32>(var_0.x, var_0.x, 34836i, u_input.a)), var_0.x, vec3<u32>(arg_1.x, 53010u, arg_1.x)), -8477i < arg_3, 2147483647i, Struct_2(Struct_1(vec2<f32>(113f, 1808f), arg_1, var_0.x, vec4<i32>(2147483647i, 8081i, var_0.x, var_0.x)), var_0.x, vec3<u32>(4294967295u, arg_2, arg_2))), Struct_2(Struct_1(vec2<f32>(-994f, global0.x), arg_1, -13062i, vec4<i32>(13726i, 8612i, -32221i, arg_3)), arg_3, max(arg_1, arg_1))))));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(498f, global0.x)))), _wgslsmith_div_vec3_u32(abs(arg_1), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2, 2713u), vec3<u32>(1u, 0u, 10739u))), ~_wgslsmith_clamp_i32(arg_3, arg_3, 32707i), vec4<i32>(min(-1261i, 60421i), _wgslsmith_mod_i32(42933i, 9071i), 2147483647i, -39137i)), ~abs(arg_3), arg_1), false, _wgslsmith_clamp_i32(arg_3, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.xy, vec2<i32>(-26939i, 1i), vec2<i32>(0i, u_input.b)), vec2<i32>(u_input.a, u_input.b) & vec2<i32>(35074i, -2147483647i)), max(u_input.b, var_0.x << (67933u % 32u))) >> (~(~reverseBits(11210u)) % 32u), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1182f))), _wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(1u, arg_2, arg_1.x)), var_0.x, vec4<i32>(~var_0.x, -2147483647i, var_0.x, var_0.x)), -12737i ^ u_input.a, vec3<u32>(~_wgslsmith_dot_vec3_u32(arg_1, arg_1), ~arg_2, arg_1.x)));
    var_0 = ~var_1.d.a.d >> (vec4<u32>(max(0u, var_1.a.c.x), arg_1.x, 14801u, ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2, 4294967295u, 90265u), 70964u, 12884u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(var_1.a.a.a.x, -561f), vec3<u32>(~(55725u & arg_1.x), 89980u, var_1.d.a.b.x), _wgslsmith_dot_vec4_i32(~(var_1.d.a.d << (vec4<u32>(0u, arg_2, arg_1.x, var_1.a.c.x) % vec4<u32>(32u))), var_1.d.a.d), countOneBits(abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.x, arg_3, 1i), vec4<i32>(var_0.x, -56338i, -2147483647i, 2147483647i))))), var_0.x, Struct_5(Struct_3(Struct_2(var_1.d.a, _wgslsmith_add_i32(1i, 12539i), ~arg_1), all(!vec4<bool>(arg_0.x, var_1.b, var_1.b, true)), ~_wgslsmith_mod_i32(-23046i, -21823i), Struct_2(var_1.d.a, -u_input.b, arg_1)), Struct_2(Struct_1(var_1.d.a.a, vec3<u32>(arg_1.x, 6522u, var_1.a.c.x), 2147483647i, var_1.d.a.d), var_0.x, _wgslsmith_sub_vec3_u32(var_1.a.c, vec3<u32>(var_1.a.c.x, var_1.d.c.x, arg_1.x))))));
    return Struct_3(Struct_2(Struct_1(var_1.d.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 81208u, 0u), vec3<u32>(arg_1.x, 1982u, 2285u)), select(46275i, arg_3, var_1.b) >> (~21868u % 32u), _wgslsmith_div_vec4_i32(var_1.a.a.d, vec4<i32>(arg_3, 19018i, 0i, u_input.a) << (vec4<u32>(1u, 24093u, 12740u, 55773u) % vec4<u32>(32u)))), var_0.x, ~select(vec3<u32>(43470u, arg_1.x, 1u), vec3<u32>(18539u, 1u, arg_1.x), true) << (~select(arg_1, vec3<u32>(4294967295u, var_1.d.a.b.x, 31582u), true) % vec3<u32>(32u))), firstLeadingBit(u_input.b) == -u_input.a, ~(-(~arg_3)), Struct_2(var_1.a.a, _wgslsmith_add_i32(-(~var_1.a.b), var_0.x), _wgslsmith_mod_vec3_u32(var_1.d.a.b, countOneBits(arg_1 >> (arg_1 % vec3<u32>(32u))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(func_2(vec2<bool>(all(select(vec3<bool>(false, arg_2.b, arg_2.b), vec3<bool>(arg_2.b, true, true), arg_2.b)), !any(vec2<bool>(false, arg_2.b))), vec3<u32>(1u, 13613u, 64809u), arg_1.x, _wgslsmith_div_i32(~(-arg_2.a.a.c), arg_2.a.b)), arg_2.a);
    global0 = vec2<f32>(-2703f, _wgslsmith_div_f32(arg_0.x, global0.x));
    return func_2(select(vec2<bool>(arg_0.x != global0.x, all(select(vec2<bool>(false, var_0.a.b), vec2<bool>(true, var_0.a.b), arg_2.b))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_2.b), vec2<bool>(true, true), true), false), ~(~vec3<u32>(23686u, 1u, 33832u) ^ arg_2.a.a.b), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.x, ~countOneBits(42055u)), arg_2.d.c.x, 1u), _wgslsmith_mod_i32(u_input.a, i32(-1i) * -6897i)).a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_1.c.x;
    var var_1 = select(_wgslsmith_div_vec3_u32(min(arg_0.a.d.c, arg_0.b.c), firstTrailingBit(~(arg_1.c << (vec3<u32>(36587u, arg_1.c.x, arg_1.a.b.x) % vec3<u32>(32u))))), max(arg_0.b.a.b, _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, 75428u) & _wgslsmith_mod_vec3_u32(arg_1.a.b, arg_0.b.a.b), arg_1.c, firstLeadingBit(vec3<u32>(arg_0.a.a.c.x, 1u, 18089u)) | arg_1.c)), true | arg_0.a.b);
    let var_2 = Struct_1(vec2<f32>(-140f, arg_1.a.a.x), func_1(func_1(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.d.a.a.x - arg_0.a.d.a.a.x), _wgslsmith_f_op_f32(arg_0.a.a.a.a.x * -649f)), vec4<u32>(~4294967295u, 18956u, ~var_1.x, arg_0.a.d.a.b.x), func_2(select(vec2<bool>(arg_0.a.b, arg_0.a.b), vec2<bool>(arg_0.a.b, false), vec2<bool>(true, arg_0.a.b)), ~vec3<u32>(var_1.x, 1u, 4294967295u), arg_0.b.c.x, 7692i)).a.a, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(23584u, 0u), 1u, 65386u), vec4<u32>(arg_1.a.b.x, arg_0.b.a.b.x, 6240u, 4294967295u) & vec4<u32>(arg_1.a.b.x, var_1.x, 14986u, arg_0.b.a.b.x)), func_2(vec2<bool>(!arg_0.a.b, true), firstLeadingBit(vec3<u32>(arg_0.a.d.c.x, 3682u, 0u)) & vec3<u32>(arg_0.a.d.a.b.x, 1u, arg_1.c.x), arg_1.c.x, ~(-u_input.b))).c, abs(i32(-1i) * -arg_2.x), -arg_0.a.a.a.d);
    var var_3 = var_2;
    let var_4 = func_2(select(select(vec2<bool>(func_2(vec2<bool>(arg_0.a.b, arg_0.a.b), vec3<u32>(16802u, 1u, 63288u), 20686u, 0i).b, all(vec4<bool>(true, arg_0.a.b, true, true))), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), arg_0.a.b), vec2<bool>(true, any(vec2<bool>(true, true))), !(!(!vec2<bool>(arg_0.a.b, true)))), _wgslsmith_mult_vec3_u32(var_2.b, ~min(vec3<u32>(var_3.b.x, 1u, var_1.x), var_2.b)) >> (~(arg_1.a.b >> ((vec3<u32>(15021u, var_2.b.x, var_3.b.x) >> (arg_0.b.a.b % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(arg_1.c.zx, ~firstLeadingBit(reverseBits(vec2<u32>(var_1.x, 57265u)))), -17393i).d.a;
    return arg_0.b.a.a.x;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> vec2<f32> {
    let var_0 = arg_2.b;
    var var_1 = vec2<bool>(any(vec3<bool>(arg_3, arg_3, false)), true);
    var var_2 = abs(44683i << (arg_2.a.a.b.x % 32u));
    var var_3 = _wgslsmith_mult_vec4_i32(arg_2.a.a.d, reverseBits(arg_2.a.a.d));
    let var_4 = ~_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, -34866i, 0i), _wgslsmith_mult_vec3_i32(arg_2.d.a.d.wyz, -vec3<i32>(-32111i, 2147483647i, var_3.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -462f), _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(1000f, global0.x), vec3<u32>(55405u, 23624u, 9544u), u_input.b, vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b)), 1i, vec3<u32>(4294967295u, 56032u, 4294967295u)), true, 1i, Struct_2(Struct_1(vec2<f32>(global0.x, -2991f), vec3<u32>(1u, 4294967295u, 4294967295u), u_input.b, vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.a)), u_input.a, vec3<u32>(16879u, 26294u, 1u))), Struct_2(Struct_1(vec2<f32>(231f, 803f), vec3<u32>(0u, 2162u, 41025u), u_input.b, vec4<i32>(u_input.b, u_input.b, -1i, -1i)), 42068i, vec3<u32>(80542u, 25135u, 4294967295u))), func_1(vec2<f32>(-276f, global0.x), vec4<u32>(1u, 31267u, 73965u, 17987u), Struct_3(Struct_2(Struct_1(vec2<f32>(1129f, 1762f), vec3<u32>(1u, 4294967295u, 4294967295u), u_input.a, vec4<i32>(-2147483647i, 2147483647i, u_input.a, 0i)), -1i, vec3<u32>(34815u, 4294967295u, 0u)), true, u_input.b, Struct_2(Struct_1(vec2<f32>(global0.x, global0.x), vec3<u32>(107079u, 1u, 4294967295u), 23303i, vec4<i32>(u_input.a, 1i, 1i, 28964i)), u_input.b, vec3<u32>(37443u, 74777u, 0u)))), -vec3<i32>(0i, u_input.a, -2147483647i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.b, u_input.a)), Struct_3(Struct_2(Struct_1(vec2<f32>(global0.x, 204f), vec3<u32>(1u, 1u, 0u), 2147483647i, vec4<i32>(u_input.a, 65224i, u_input.a, 58611i)), 1i, vec3<u32>(9300u, 134471u, 4294967295u)), all(vec3<bool>(true, false, true)), 1i, Struct_2(Struct_1(vec2<f32>(global0.x, global0.x), vec3<u32>(4294967295u, 0u, 6137u), u_input.b, vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), -41635i, vec3<u32>(9426u, 1u, 42937u))), true))))));
    var var_1 = Struct_1(var_0, vec3<u32>(~1u, ~4294967295u, 1u), -abs(~_wgslsmith_mod_i32(1i, u_input.a)), -abs(vec4<i32>(u_input.b, u_input.a, u_input.a << (1u % 32u), -14673i)));
    let var_2 = func_2(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), !vec2<bool>(select(true, true, true), true), false), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~40373u, ~var_1.b.x, 0u), ~var_1.b | max(vec3<u32>(var_1.b.x, 13146u, 0u), vec3<u32>(var_1.b.x, 0u, var_1.b.x))), var_1.b.x ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 19230u, var_1.b.x) | vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, 27271u), ~vec4<u32>(7528u, 1u, var_1.b.x, var_1.b.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, 54784u, 1u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, var_1.b.x)))), ~(~_wgslsmith_dot_vec3_i32(var_1.d.wzz, firstTrailingBit(vec3<i32>(1i, u_input.b, 2947i))))).d;
    let var_3 = func_2(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), all(vec3<bool>(false, false, false))), vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), var_1.b, ~37526u, func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(var_2.a.a.x, 355f)))), vec4<u32>(1u, ~1u | var_2.a.b.x, var_2.a.b.x, countOneBits(_wgslsmith_mod_u32(var_2.c.x, 0u))), func_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), var_1.b, _wgslsmith_mod_u32(5396u, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.b.x, var_2.c.x, 19170u), vec4<u32>(var_1.b.x, var_2.c.x, 14839u, 2894u)) % 32u), var_2.b)).b);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1356f), var_3.d.a.a)), var_1.a)), ~(~vec3<u32>(var_2.c.x | 4294967295u, func_1(var_1.a, vec4<u32>(var_3.d.c.x, var_2.c.x, 18007u, var_2.a.b.x), var_3).c.x, ~11108u)), -59888i, vec4<i32>(0i, select(min(-2728i, ~var_1.d.x), 2147483647i ^ var_3.c, var_3.b), u_input.a, -var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b, -var_2.a.d, -33054i, reverseBits(~vec3<i32>(var_1.d.x, 2147483647i, -1i)) & ~(-abs(var_3.a.a.d.xxw)));
}

