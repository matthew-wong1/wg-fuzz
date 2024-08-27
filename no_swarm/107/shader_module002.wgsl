struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25860u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global0 = countOneBits(55938u | min(~1u, u_input.a.x));
    let var_0 = !vec3<bool>(true, all(vec3<bool>(true, true, true)), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_2(Struct_1(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)) >> (~u_input.a.x % 32u)), vec3<i32>(0i, (i32(-1i) * -2147483647i) << (0u % 32u), -41733i), u_input.b.x, (_wgslsmith_dot_vec3_i32(vec3<i32>(-9205i, u_input.b.x, 0i), u_input.b) >> (_wgslsmith_mod_u32(14906u, u_input.a.x) % 32u)) & _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1372f - _wgslsmith_f_op_f32(f32(-1f) * -1437f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-139f, _wgslsmith_f_op_f32(f32(-1f) * -1108f))), -854f, var_0.x))))));
    return var_3;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = arg_0.a.a;
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    return ~u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    global0 = 0u;
    global0 = max((u_input.a.x ^ 0u) & ~0u, firstLeadingBit(_wgslsmith_add_u32(arg_0, ~9567u)));
    global0 = 768u;
    return countOneBits(func_2(Struct_2(Struct_1(_wgslsmith_mult_u32(arg_0, u_input.a.x), vec3<i32>(2147483647i, 2147483647i, u_input.b.x), 0i, _wgslsmith_add_i32(arg_1.x, arg_1.x)))));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_mult_u32(39476u, select(min(u_input.a.x, u_input.a.x), ~(~(~arg_0.a.a)), true));
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, false, false)), true), select(true, false, true) & false));
    global0 = _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(func_4(func_2(arg_0), arg_0.a.b.zz), ~arg_0.a.a));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.a.b.yy, vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -2147483647i)), firstLeadingBit(-6100i));
    let var_2 = Struct_1(~func_4(u_input.a.x, vec2<i32>(-21234i, arg_0.a.d)), max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.a.c, u_input.b.x, 32492i)), ~u_input.b), abs(-vec3<i32>(-2249i, -3047i, var_1)), abs(~vec3<i32>(0i, u_input.b.x, 35416i))), abs(vec3<i32>(-2147483647i, ~u_input.b.x, -u_input.b.x))), select(-u_input.b.x, var_1 & -2147483647i, true), var_1);
    return vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.a), ~vec2<u32>(19394u, 1u)), vec2<u32>(abs(min(113504u, arg_0.a.a)), u_input.a.x)), 4294967295u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    global0 = 24483u;
    var var_0 = arg_3;
    global0 = 1u;
    var var_1 = 119010u;
    var var_2 = Struct_2(Struct_1(func_4(arg_0.x, vec2<i32>(~2147483647i, _wgslsmith_mod_i32(arg_1.x, -1036i))), _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), u_input.b), arg_1.x, u_input.b.x));
    return Struct_1(reverseBits(1u), -arg_1, arg_1.x, (u_input.b.x >> (_wgslsmith_mod_u32(35419u, _wgslsmith_sub_u32(arg_0.x, 26717u)) % 32u)) & arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(abs(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 25570u, u_input.a.x)), func_1(Struct_2(Struct_1(319u, vec3<i32>(u_input.b.x, 3345i, u_input.b.x), 0i, 42415i))))), vec3<i32>(~(u_input.b.x ^ reverseBits(-2882i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(31109i, -52027i), u_input.b.x), vec3<i32>(~39934i, u_input.b.x >> (u_input.a.x % 32u), -39151i)), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -2147483647i) << (45288u % 32u))), ~vec2<u32>(u_input.a.x, reverseBits(~u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-920f)), -1000f, any(vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~(~u_input.a), vec2<u32>(var_0.a, 1u)), _wgslsmith_mult_vec2_u32(max(vec2<u32>(var_0.a, var_0.a), u_input.a), ~(~vec2<u32>(var_0.a, 0u)))), ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a))));
    var_0 = Struct_1(firstLeadingBit(~(~u_input.a.x)), firstTrailingBit(firstTrailingBit(vec3<i32>(9668i, var_0.c, _wgslsmith_sub_i32(2147483647i, 1i)))), ~_wgslsmith_add_i32(2147483647i, firstLeadingBit(abs(1i))), ~(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~0i, ~var_0.b.x)));
    global0 = func_2(Struct_2(Struct_1(func_5(vec3<u32>(1u, var_0.a, var_0.a) >> (vec3<u32>(var_0.a, 16850u, u_input.a.x) % vec3<u32>(32u)), u_input.b, u_input.a, _wgslsmith_f_op_f32(max(326f, -760f))).a, abs(vec3<i32>(1i, var_0.d, var_0.c)), firstTrailingBit(_wgslsmith_mod_i32(59194i, u_input.b.x)), var_0.c)));
    var var_1 = Struct_2(func_5(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(var_0.a, u_input.a.x, var_0.a)), ~(~vec3<u32>(1u, u_input.a.x, 0u))), vec3<i32>(~firstLeadingBit(var_0.c), var_0.d, -u_input.b.x), (u_input.a << (select(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.a, u_input.a.x), false) % vec2<u32>(32u))) ^ ~vec2<u32>(14167u, 1u), 1f));
    let var_2 = Struct_1(reverseBits(_wgslsmith_sub_u32(42092u, func_1(Struct_2(Struct_1(u_input.a.x, vec3<i32>(u_input.b.x, var_0.c, 1i), 38441i, u_input.b.x))).x)), firstLeadingBit(abs(reverseBits(~vec3<i32>(1i, 34359i, -2147483647i)))), firstTrailingBit(2147483647i), abs(_wgslsmith_clamp_i32(~(~var_1.a.b.x), 2147483647i, -41802i)));
    var var_3 = abs(var_0.b.zy);
    var var_4 = var_2;
    var var_5 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(var_1.a.a, var_4.a), var_4.a, 15750u, u_input.a.x), ~vec4<u32>(20706u, 20501u, ~var_1.a.a, var_0.a >> (var_4.a % 32u))), min(select(vec4<u32>(~var_1.a.a, var_4.a, func_5(vec3<u32>(var_0.a, var_0.a, var_2.a), var_2.b, vec2<u32>(4278u, 19392u), -349f).a, ~var_4.a), ~min(vec4<u32>(50836u, var_2.a, 80400u, u_input.a.x), vec4<u32>(var_4.a, 93095u, 4294967295u, 4294967295u)), true), firstTrailingBit(vec4<u32>(u_input.a.x, 13128u, 7026u, 12609u) & vec4<u32>(0u, 1u, var_2.a, 8947u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-173f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, 980f)), _wgslsmith_f_op_f32(round(-754f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2455f - _wgslsmith_f_op_f32(max(-166f, -459f))))), countOneBits(abs(var_4.d)), var_3.x);
}

