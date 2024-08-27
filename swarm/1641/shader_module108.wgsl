struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, 363f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global0 = Struct_2(min(~(~_wgslsmith_sub_u32(arg_0.a, 10893u)), arg_0.a | 57213u), -527f);
    var var_0 = Struct_2(arg_1.a, 431f);
    global0 = Struct_2(min(var_0.a, arg_1.a), -567f);
    let var_1 = vec4<u32>(firstLeadingBit(~min(~0u, arg_1.a)), arg_0.a, 3189u, firstTrailingBit(17594u));
    var var_2 = select(select(vec4<bool>(!all(vec3<bool>(false, true, false)), false, true, true), vec4<bool>(true, !(u_input.a.x <= 2147483647i), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, false, false), arg_1.a >= 1u)), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec4<bool>(true, true, true, true)), u_input.a.x <= _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), any(vec2<bool>(true, true)), !any(vec4<bool>(true, true, true, true)) && true));
    return all(vec2<bool>(var_2.x, true));
}

fn func_2() -> vec4<bool> {
    return vec4<bool>(true && !func_3(Struct_2(global0.a, -1000f), Struct_2(global0.a, global0.b)), false, true, any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~global0.a;
    var var_1 = Struct_2(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(-1756f * _wgslsmith_f_op_f32(max(global0.b, -860f))))), _wgslsmith_f_op_f32(-1055f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.b)))));
    let var_2 = 46826u;
    var var_3 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(abs(1u), abs(0u), var_1.a, ~5265u)), ~countOneBits(~vec4<u32>(var_1.a, 46275u, var_1.a, 45598u)));
    global0 = Struct_2(13162u, _wgslsmith_f_op_f32(-var_1.b));
    return arg_2;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = i32(-1i) * -6149i;
    let var_1 = select(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(30198u, global0.a)), vec2<u32>(52870u, ~(~arg_2.a)), _wgslsmith_mod_vec2_u32((vec2<u32>(0u, global0.a) & vec2<u32>(arg_2.a, arg_2.a)) | select(vec2<u32>(0u, 20111u), vec2<u32>(arg_2.a, 65921u), arg_1.a), vec2<u32>(global0.a ^ arg_2.a, _wgslsmith_mod_u32(30519u, 4294967295u)))), ~(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a, 1u) & vec2<u32>(0u, 4294967295u), ~vec2<u32>(global0.a, arg_2.a)) | vec2<u32>(_wgslsmith_mod_u32(global0.a, arg_2.a), ~global0.a)), true);
    var var_2 = func_4(arg_1.b.x & _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_1.b.x, -1i, _wgslsmith_clamp_i32(-29113i, -1i, -23063i)), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 35672i, var_0), vec3<i32>(-1i, -21110i, -63964i), u_input.a.wzx), ~vec3<i32>(arg_1.b.x, arg_1.b.x, -8229i))), vec3<bool>(all(func_2()), !arg_1.a, arg_1.a), arg_1);
    let var_3 = Struct_2(max(reverseBits(4294967295u), _wgslsmith_mult_u32(firstLeadingBit(0u), ~(~1u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))));
    return Struct_1(!any(!vec2<bool>(arg_1.c, var_2.c)), _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.a >> (vec4<u32>(arg_2.a, var_3.a, 35772u, 68824u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a))), vec4<i32>(-countOneBits(arg_1.b.x), 1i, min(~23821i, 22072i >> (arg_2.a % 32u)), var_0)), all(vec3<bool>(false, true, !var_2.c)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_4(u_input.a.x, select(!vec3<bool>(arg_0.c | true, false, all(vec3<bool>(arg_0.c, arg_0.a, false))), select(!func_2().xyx, !select(vec3<bool>(arg_0.c, false, false), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.c, arg_0.c, arg_0.a)), select(vec3<bool>(false, arg_0.a, true), vec3<bool>(true, arg_0.c, arg_0.a), vec3<bool>(false, false, arg_0.c))), arg_0.c), arg_0);
    var var_1 = Struct_1(!var_0.c, func_4(u_input.a.x, !func_2().xxx, Struct_1(false, _wgslsmith_mod_vec4_i32(firstTrailingBit(arg_0.b), ~arg_0.b), arg_0.a)).b, true);
    var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - vec2<f32>(-1541f, global0.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b, global0.b))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(492f, global0.b) + vec2<f32>(-169f, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(913f, 524f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, global0.b) * vec2<f32>(-1173f, global0.b)))))), arg_0, Struct_2(global0.a, global0.b));
    var_1 = var_0;
    global0 = Struct_2(60357u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b * -318f), global0.b, true)), global0.b)), global0.b)));
    return Struct_2(global0.a, _wgslsmith_f_op_f32(global0.b * global0.b));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = ~(vec3<u32>(54728u, arg_1.a, 25904u) >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 0u, 50031u) << (vec3<u32>(62226u, arg_0.a, 73363u) % vec3<u32>(32u)), abs(vec3<u32>(arg_2.a, arg_3.a, arg_1.a))), vec3<u32>(arg_0.a, arg_0.a, _wgslsmith_mult_u32(arg_3.a, 0u)), true | select(false, false, true)) % vec3<u32>(32u)));
    var var_1 = var_0.zy;
    var_1 = vec2<u32>(var_1.x, 64097u >> ((countOneBits(~arg_0.a) | _wgslsmith_clamp_u32(global0.a & arg_1.a, select(arg_1.a, 2383u, true), ~var_1.x)) % 32u));
    let var_2 = !(!all(func_2().zww));
    var var_3 = Struct_1(true, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(~reverseBits(u_input.a.x), u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -79920i, u_input.a.x, 1i), u_input.a), 2147483647i)), var_0.x >= arg_0.a);
    return vec3<f32>(1140f, arg_2.b, 623f);
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(global0.a | _wgslsmith_add_u32(~(~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(65469u, global0.a, 6182u, 37083u), vec4<u32>(global0.a, 4294967295u, 0u, 4294967295u)), ~vec4<u32>(arg_1, global0.a, 16163u, arg_1))), _wgslsmith_f_op_f32(sign(global0.b)));
    var var_1 = 4294967295u;
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, var_0.a | global0.a), 1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.a, ~var_0.a), 1u << (global0.a % 32u)), _wgslsmith_add_u32(0u, 0u | _wgslsmith_sub_u32(arg_1, 0u)), 4294967295u) >> (firstLeadingBit(vec4<u32>(global0.a, arg_1, 26676u, 43482u) ^ vec4<u32>(global0.a, countOneBits(arg_1), arg_1, ~408u)) % vec4<u32>(32u));
    var_1 = _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(19488u, ~var_2.x)), _wgslsmith_mult_u32(var_0.a, 0u));
    let var_3 = var_2.yx;
    return Struct_1(-4093i > _wgslsmith_mod_i32(-26853i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) & ~2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(6071i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), abs(-u_input.a.x), reverseBits(0i) >> (_wgslsmith_mod_u32(0u, var_3.x) % 32u)), ~_wgslsmith_add_vec4_i32(u_input.a, u_input.a) << (var_2 % vec4<u32>(32u))), !(!func_1(arg_2.yx, func_4(0i, vec3<bool>(arg_0, arg_0, false), Struct_1(arg_0, u_input.a, arg_0)), Struct_2(var_3.x, 134f)).a));
}

fn func_8(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> StorageBuffer {
    global0 = func_5(Struct_1((arg_1.x <= 13448u) | false, ~u_input.a, (_wgslsmith_mult_i32(arg_2, u_input.a.x) ^ arg_0.b.x) < 0i));
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(f32(-1f) * -108f)), vec2<f32>(global0.b, _wgslsmith_f_op_f32(select(-563f, global0.b, true))), select(func_2().yx, vec2<bool>(arg_0.a, false), arg_0.a))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-288f, global0.b)))), arg_0, func_5(Struct_1(false, vec4<i32>(2147483647i, 25546i, u_input.a.x, arg_2), arg_0.a))), func_5(arg_0)));
    var var_1 = Struct_2(~(((13933u << (arg_1.x % 32u)) & ~48688u) & ~(arg_1.x | 1u)), -1715f);
    var var_2 = func_4(_wgslsmith_add_i32(19881i, -36479i), vec3<bool>(func_2().x, all(!vec2<bool>(true, arg_0.a)), true), Struct_1(!(!arg_0.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, arg_2, arg_2, arg_2), u_input.a, u_input.a), !(arg_0.c && arg_0.a))).b.x >= 41020i;
    let var_3 = vec4<i32>(-1i) * -func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.b))), arg_0, Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a), vec2<u32>(var_0.a, 5549u)), 1000f)).b;
    return StorageBuffer(vec2<u32>(1u, _wgslsmith_mod_u32(var_0.a, global0.a) << ((var_1.a >> (1u % 32u)) % 32u)), func_4(arg_2, vec3<bool>(false, all(vec2<bool>(arg_0.c, false)), true), Struct_1(true, vec4<i32>(arg_2, -1i, 1i, 2147483647i), 1i < u_input.a.x)).b.x | ~(~_wgslsmith_sub_i32(u_input.a.x, arg_2)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32((var_3.yzw | u_input.a.xxy) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_2, u_input.a.x, u_input.a.x), arg_0.b.wyy), vec3<i32>(~35994i, -21735i >> (global0.a % 32u), _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b))), arg_0.b.x), 5081u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(468f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), 1000f, _wgslsmith_f_op_f32(1315f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))))));
    global0 = Struct_2(_wgslsmith_add_u32(6791u, ~_wgslsmith_sub_u32(global0.a, ~0u)), global0.b);
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(216f, global0.b, false)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -1000f)), (~u_input.a.x | u_input.a.x) != ~(-14980i), false);
    var var_2 = Struct_2(~(_wgslsmith_mult_u32(16456u, 1u) ^ global0.a), -2024f);
    let var_3 = countOneBits(select(~vec4<u32>(var_2.a, var_2.a, 1u, 84947u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 33963u, global0.a), vec3<u32>(0u, var_2.a, var_2.a)), global0.a, 4425u, ~var_2.a), !any(vec3<bool>(var_1.x, var_1.x, var_1.x)))) | ~vec4<u32>(~abs(4294967295u), var_2.a, var_2.a, 1u);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = func_8(func_7(!(false != !var_1.x), ~_wgslsmith_clamp_u32(var_3.x, 1u, _wgslsmith_add_u32(4294967295u, global0.a)), _wgslsmith_f_op_vec3_f32(func_6(func_5(func_1(vec2<f32>(var_0.x, -1414f), Struct_1(var_1.x, u_input.a, var_1.x), Struct_2(7690u, global0.b))), Struct_2(4294967295u, global0.b), Struct_2(_wgslsmith_clamp_u32(var_2.a, 0u, 123021u), _wgslsmith_f_op_f32(trunc(-1017f))), func_5(func_4(-5874i, var_1, Struct_1(var_1.x, vec4<i32>(2147483647i, u_input.a.x, -31783i, u_input.a.x), false)))))), ~reverseBits(var_3.wy ^ var_4.wx) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 50461u, 4294967295u, 17911u), vec4<u32>(var_3.x, var_4.x, 68694u, var_4.x)) << (global0.a % 32u), ~global0.a) % vec2<u32>(32u)), 71685i);
}

