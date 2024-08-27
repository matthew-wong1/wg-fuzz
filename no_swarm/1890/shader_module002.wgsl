struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(33772u, 62031u), vec2<u32>(19957u, 1u), vec2<i32>(1i, 0i), -10202i, vec3<f32>(-868f, 481f, -964f));

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(global0.a, ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 5714u)), abs(~u_input.c), -(~firstTrailingBit(-8565i)), global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1188f, 713f)))))), -489f, global0.e.x);
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(floor(-1405f)));
    var var_2 = _wgslsmith_mult_vec4_i32(select(select(~vec4<i32>(-1i, 2147483647i, var_1.a.c.x, -46i), _wgslsmith_mod_vec4_i32(vec4<i32>(-33615i, global0.d, var_1.a.d, var_0.a.d), vec4<i32>(var_1.a.c.x, u_input.a.x, 1i, 0i)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), vec4<i32>(1151i, _wgslsmith_dot_vec2_i32(vec2<i32>(33228i, u_input.a.x), var_0.a.c), var_0.a.d, max(var_0.a.c.x, u_input.a.x)), vec4<bool>(all(global1[_wgslsmith_index_u32(1u, 23u)]), all(vec3<bool>(false, false, false)), true, true)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(42819i, -2147483647i, -34394i, u_input.a.x), vec4<i32>(55035i, var_0.a.d, -43027i, -24881i)) | ~vec4<i32>(-2147483647i, 52556i, var_0.a.c.x, 15495i))) >> (countOneBits(min(~vec4<u32>(var_0.a.b.x, 1u, 1u, 4294967295u), ~(vec4<u32>(20660u, 22599u, var_1.a.b.x, global0.b.x) << (vec4<u32>(18636u, var_0.a.a.x, 46091u, u_input.b) % vec4<u32>(32u))))) % vec4<u32>(32u));
    return ~firstTrailingBit(vec2<u32>(global0.b.x, 0u));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<i32> {
    global1 = array<vec3<bool>, 23>();
    let var_0 = arg_1;
    let var_1 = arg_1;
    global0 = Struct_1(func_3(), ~global0.a | ~var_1.a.a, firstTrailingBit(vec2<i32>(-1i) * -min(arg_1.a.c, vec2<i32>(-13792i, u_input.c.x))), var_0.a.c.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, -668f, _wgslsmith_f_op_f32(round(arg_2.x))) + _wgslsmith_f_op_vec3_f32(-arg_1.a.e)))));
    let var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-140f)))) * _wgslsmith_f_op_f32(step(-1523f, _wgslsmith_f_op_f32(-global0.e.x)))))), var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-827f, 1237f, select(true, arg_1.a.c.x != var_1.a.c.x, var_1.a.c.x >= arg_1.a.d))), 690f));
    return vec2<i32>(_wgslsmith_mod_i32(2147483647i, i32(-1i) * -1i), -2147483647i) ^ vec2<i32>(-1i >> (func_3().x % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.c, u_input.a), select(vec2<i32>(var_0.a.c.x, arg_1.a.c.x), global0.c, false)), 1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_0;
    global1 = array<vec3<bool>, 23>();
    var var_0 = -countOneBits(vec4<i32>(1i, _wgslsmith_add_i32(~12360i, -arg_0.c.x), arg_3.a.c.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.d, 12832i, arg_3.a.d), vec3<i32>(arg_0.d, -51117i, 2147483647i), arg_1.x), min(vec3<i32>(26057i, u_input.a.x, 42280i), vec3<i32>(u_input.c.x, 0i, u_input.a.x)))));
    var var_1 = arg_3;
    global0 = var_1.a;
    return Struct_1(~(~(arg_0.a ^ abs(arg_0.b))), arg_3.a.b, min(vec2<i32>(arg_0.c.x, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.d, 0i), var_0.x)), vec2<i32>(_wgslsmith_add_i32(max(0i, u_input.c.x), 463i), 0i)), var_1.a.c.x, vec3<f32>(global0.e.x, arg_3.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.d)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(605f + -493f))))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = func_4(Struct_1(global0.b, _wgslsmith_sub_vec2_u32(~(vec2<u32>(0u, global0.a.x) | vec2<u32>(24086u, u_input.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.x, 4294967295u), global0.b)), firstTrailingBit(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-7849i, -1i), u_input.c, vec2<i32>(global0.c.x, 43413i)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -31811i, -20336i), -vec3<i32>(2147483647i, -3683i, 24334i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, global0.e.x, -1218f)))), select(vec2<bool>(any(!vec2<bool>(false, arg_0.x)), arg_0.x), arg_0, arg_0), _wgslsmith_add_u32(_wgslsmith_mult_u32(64927u, firstTrailingBit(~u_input.b)), ~(global0.b.x << (1u % 32u))), Struct_2(Struct_1(~(~vec2<u32>(u_input.b, 107548u)), global0.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(33129i, 0i), func_2(30768u, Struct_2(Struct_1(vec2<u32>(0u, global0.a.x), vec2<u32>(u_input.b, 1u), global0.c, 2147483647i, global0.e), global0.e.x, global0.e.x, global0.e.x), global0.e), u_input.a), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a.x) | ~(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2495f, -659f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 748f))))), _wgslsmith_f_op_f32(-global0.e.x), 1067f));
    return select(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 25912u) & var_0.a, firstTrailingBit(vec2<u32>(var_0.a.x, u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 1u, 7912u | u_input.b), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(8956u, u_input.b, 49948u), vec3<u32>(71229u, 36198u, 28800u)), _wgslsmith_clamp_u32(global0.b.x, var_0.a.x, 0u) & var_0.b.x, _wgslsmith_mod_u32(~24269u, 1643u))), !arg_0.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = ~33850i;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.e)));
    let var_2 = !all(vec2<bool>(true, true));
    var var_3 = Struct_2(arg_1, 1324f, var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * -583f), any(select(vec2<bool>(var_2, false), vec2<bool>(var_2, true), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(select(arg_1.e.x, arg_1.e.x, var_2)), var_2)));
    global1 = array<vec3<bool>, 23>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(firstLeadingBit(func_1(vec2<bool>(true, false))), Struct_1(func_4(Struct_1(~vec2<u32>(0u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(68717u, 4408u), vec2<u32>(4294967295u, u_input.b)), u_input.c, reverseBits(u_input.a.x), global0.e), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), global0.a.x, Struct_2(func_4(Struct_1(global0.b, global0.a, vec2<i32>(global0.c.x, 1i), u_input.c.x, global0.e), vec2<bool>(true, true), u_input.b, Struct_2(Struct_1(vec2<u32>(global0.a.x, 10685u), vec2<u32>(1u, global0.a.x), vec2<i32>(30890i, global0.c.x), global0.d, vec3<f32>(global0.e.x, global0.e.x, global0.e.x)), global0.e.x, -1320f, 646f)), global0.e.x, _wgslsmith_f_op_f32(-global0.e.x), func_4(Struct_1(global0.a, vec2<u32>(u_input.b, 4294967295u), vec2<i32>(u_input.a.x, 4742i), 0i, global0.e), vec2<bool>(true, false), global0.b.x, Struct_2(Struct_1(vec2<u32>(global0.a.x, u_input.b), global0.a, vec2<i32>(-34655i, global0.c.x), 7327i, vec3<f32>(-630f, -401f, -1702f)), global0.e.x, global0.e.x, 792f)).e.x)).a, min(func_4(func_4(Struct_1(global0.b, global0.b, global0.c, -39004i, vec3<f32>(-1275f, global0.e.x, -1000f)), vec2<bool>(false, false), global0.b.x, Struct_2(Struct_1(vec2<u32>(u_input.b, 15030u), vec2<u32>(global0.a.x, global0.a.x), u_input.c, global0.d, vec3<f32>(943f, -1119f, -242f)), 349f, 291f, global0.e.x)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), abs(u_input.b), Struct_2(Struct_1(global0.a, vec2<u32>(4294967295u, global0.b.x), u_input.a, -1i, global0.e), -951f, -2206f, -359f)).b, global0.a), firstTrailingBit(_wgslsmith_sub_vec2_i32(global0.c, global0.c)) & ~vec2<i32>(53283i, 37419i), -28994i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f * global0.e.x) * _wgslsmith_f_op_f32(global0.e.x - global0.e.x)), _wgslsmith_f_op_f32(max(-1684f, -1439f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1822f) + _wgslsmith_f_op_f32(-146f - global0.e.x)))));
    var var_0 = global0.e.x;
    var var_1 = !any(select(vec4<bool>(false, false, all(global1[_wgslsmith_index_u32(4294967295u, 23u)]), select(false, false, true)), vec4<bool>(true, false, global0.e.x <= global0.e.x, false), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    let var_2 = Struct_2(Struct_1(~(~(~vec2<u32>(49560u, 0u))), (~vec2<u32>(global0.a.x, 0u) << ((vec2<u32>(1u, 49715u) >> (global0.b % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(u_input.b >> (u_input.b % 32u), 8103u) % vec2<u32>(32u)), ~u_input.c, global0.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.e.x))), _wgslsmith_f_op_f32(global0.e.x - 496f), global0.e.x)), _wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), global0.e.x);
    var var_3 = ~_wgslsmith_mult_vec2_i32(-vec2<i32>(-14954i, global0.d & u_input.a.x), u_input.a ^ -(~global0.c));
    var var_4 = 2861f;
    let var_5 = ~vec2<u32>(func_3().x, global0.a.x);
    var var_6 = global1[_wgslsmith_index_u32(43777u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.a.a.x, func_3().x, u_input.b, ~0u), vec2<f32>(773f, _wgslsmith_f_op_f32(-var_2.c)), var_2.a.e);
}

