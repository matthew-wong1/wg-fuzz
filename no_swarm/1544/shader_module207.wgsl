struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = Struct_1(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -254f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2766f)))), 26066u, !(!all(vec3<bool>(true, false, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x + arg_0)))))), 745u, true);
    global0 = firstTrailingBit(var_0.b);
    return arg_1;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(865f, 2059f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1735f, -1000f)) * 1417f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(319f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2045f, 2223f, 2491f), _wgslsmith_f_op_vec3_f32(func_3(-1000f, vec3<f32>(-976f, -462f, -1490f))), all(vec4<bool>(false, true, true, true)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(354f, 1608f, -744f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-503f, 777f, 365f), vec3<f32>(-1232f, 1412f, -1238f), vec3<bool>(true, false, true))))))), 9027u, true);
    let var_1 = vec4<i32>(_wgslsmith_div_i32(max(1i, -1i), ~min(arg_0.x, 31957i)), abs(min(18361i, u_input.a)), i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), vec4<i32>(-1i, -11500i, 1i, 11893i) << (vec4<u32>(8430u, var_0.b, 1u, var_0.b) % vec4<u32>(32u))), 1i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1936f, _wgslsmith_f_op_f32(1487f - var_0.a.x), -863f) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 2288f, -1341f)))), 43831u, (var_0.b == abs(max(4294967295u, 27276u))) | true);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_mod_vec2_i32(~vec2<i32>(10199i | u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)))));
    var_0 = arg_1;
    global0 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(58377u, arg_2.x), ~0u), arg_2), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(10544u, arg_1.b, arg_1.b), vec3<u32>(1u, arg_1.b, 25991u)) << (~vec3<u32>(arg_1.b, 1u, arg_1.b) % vec3<u32>(32u))), select(vec3<u32>(arg_2.x, var_0.b, arg_2.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 0u, arg_1.b), vec3<u32>(1u, 24047u, arg_2.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(arg_2.x, arg_2.x), 4294967295u, 440u), select(!vec3<bool>(false, arg_1.c, true), select(vec3<bool>(false, arg_1.c, var_0.c), vec3<bool>(false, true, true), vec3<bool>(var_0.c, arg_1.c, arg_1.c)), !vec3<bool>(false, arg_1.c, arg_1.c)))), arg_1.b ^ _wgslsmith_sub_u32(~arg_2.x ^ 1u, arg_1.b));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-826f, 811f, var_0.a.x)))))) + vec3<f32>(557f, -1159f, var_0.a.x)), max(firstLeadingBit(var_0.b), arg_2.x), var_0.c);
    var var_1 = 589f;
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = 2147483647i;
    var var_1 = min(-(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 39743i)) ^ ~firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(48576i, 10028i), vec2<i32>(1i, -1i))), vec2<i32>(-u_input.a, -2147483647i));
    var_0 = ~(0i | _wgslsmith_div_i32(-var_1.x & -1i, 53245i));
    global0 = 1u;
    var_0 = firstLeadingBit(_wgslsmith_add_i32(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), 1i), 7165i));
    return max(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 0u, arg_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b), vec2<u32>(0u, arg_1))), ~_wgslsmith_mod_u32(71309u, 1u)), ~(~(~1u)), 4294967295u, ~1u ^ arg_1), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, 0u, 4294967295u), arg_3), ~vec4<u32>(1u, arg_1, 13795u, 1u)) >> (_wgslsmith_mult_vec4_u32(arg_0, arg_0) % vec4<u32>(32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(307f * func_2(~vec2<i32>(1i, 1i)).a.x), func_2(vec2<i32>(~1i, u_input.a)).a.x));
    global0 = arg_0;
    global0 = func_4(vec4<u32>(reverseBits(abs(arg_1.b)), ~arg_1.b << (_wgslsmith_mult_u32(arg_0, 43877u) % 32u), 7639u, abs(~arg_1.b)) | _wgslsmith_div_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(0u, 4294967295u, arg_0, arg_1.b))), vec4<u32>(~arg_0, arg_0 >> (90045u % 32u), ~26767u, 4294967295u)), arg_1.b, arg_1, vec4<u32>(_wgslsmith_add_u32(~arg_0, ~1u), 25967u, arg_0, ~(~(~arg_0)))).x;
    global0 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(arg_1.b, 4294967295u, 4294967295u, arg_0))) | ~(~(vec4<u32>(35668u, arg_0, 0u, arg_0) & vec4<u32>(arg_0, arg_0, arg_1.b, arg_0))), vec4<u32>(arg_1.b, _wgslsmith_mod_u32(reverseBits(~arg_1.b), arg_1.b), 1u, abs(~(~arg_0))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.a))))), 15235u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_0, 68426u, arg_0, arg_0), vec4<u32>(0u, arg_0, 7011u, 58174u)), vec4<u32>(arg_0, 0u, 41679u, arg_0) ^ vec4<u32>(arg_1.b, arg_0, arg_0, 28683u), ~vec4<u32>(1u, 41456u, 48308u, arg_0)), min(vec4<u32>(0u, arg_1.b, 7271u, 41921u), vec4<u32>(arg_0, arg_1.b, arg_0, arg_1.b)) & ~vec4<u32>(arg_1.b, 1u, 1486u, arg_1.b)) <= arg_1.b);
    return Struct_1(arg_1.a, _wgslsmith_div_u32(1u, ~var_1.b), all(select(!vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, arg_1.c), select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(var_1.c, var_1.c)))) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(1u), 1u));
    let var_0 = func_5(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(27923u, 62072u, 10283u, 11995u)), func_4(~vec4<u32>(1u, 69954u, 1u, 4294967295u), 4294967295u, func_1(159f, Struct_1(vec3<f32>(-1512f, 1000f, -188f), 11451u, false), vec2<u32>(7425u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(695f + -114f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, -1000f, -479f)), countOneBits(0u), all(vec3<bool>(true, true, true))), firstTrailingBit(~vec2<u32>(69374u, 37149u))).a, ~_wgslsmith_mod_u32(1u, 4294967295u), all(vec2<bool>(true, true)) && any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b, _wgslsmith_sub_u32(81179u, 52386u), ~var_0.b, _wgslsmith_mod_u32(5061u, var_0.b)) & ~(vec4<u32>(0u, var_0.b, var_0.b, 4294967295u) >> (vec4<u32>(1u, 1u, var_0.b, var_0.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(var_0.b, 13113u, 4323u, var_0.b))), vec4<u32>(0u, _wgslsmith_clamp_u32(var_0.b, var_0.b, var_0.b), var_0.b << (var_0.b % 32u), 41566u | var_0.b)) | vec4<u32>(4294967295u, 4294967295u, var_0.b, func_1(_wgslsmith_f_op_f32(ceil(var_0.a.x)), Struct_1(vec3<f32>(311f, 415f, 676f), var_0.b, true), ~vec2<u32>(19670u, var_0.b)).b), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 4294967295u) >> (vec3<u32>(var_0.b, 51397u, var_0.b) % vec3<u32>(32u)), vec3<u32>(35666u, var_0.b, var_0.b) << (vec3<u32>(var_0.b, 4294967295u, 1u) % vec3<u32>(32u))), ~var_0.b, firstLeadingBit(firstTrailingBit(1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 63748u, var_0.b, var_0.b), vec4<u32>(603u, 17808u, 50619u, var_0.b)), vec4<u32>(var_0.b, var_0.b, var_0.b, 4294967295u) ^ vec4<u32>(4294967295u, var_0.b, 4294967295u, 18413u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 55425u, 31159u, var_0.b), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(10058u, var_0.b, var_0.b, var_0.b), vec4<u32>(1u, var_0.b, var_0.b, var_0.b)) % vec4<u32>(32u)))));
    var var_2 = func_5(_wgslsmith_clamp_u32(1u, abs(17501u), _wgslsmith_mod_u32((643u ^ var_1.x) ^ 0u, var_0.b)), var_0);
    let var_3 = vec2<i32>(firstLeadingBit(u_input.a), countOneBits(u_input.a));
    var_2 = func_2(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3.x, 1i, -17829i), _wgslsmith_add_i32(7722i, var_3.x)), select(-abs(-1i), u_input.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.b, 1u), ~4705u) << (var_1.x % 32u), select(_wgslsmith_clamp_u32(4294967295u, var_0.b ^ var_1.x, firstLeadingBit(1u)), 4294967295u ^ func_2(var_3).b, all(vec3<bool>(var_0.c, var_2.c, false))), func_5(var_2.b, var_0).b, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2.b, var_1.x, _wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(55267u, var_2.b))), var_2.b)));
}

