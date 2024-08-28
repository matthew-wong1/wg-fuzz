struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 5053u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = ~(~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.a, u_input.a)), abs(u_input.c), min(vec2<u32>(4294967295u, u_input.a), u_input.c)) & select(u_input.c, ~vec2<u32>(u_input.a, 3753u), true));
    let var_0 = ~(~_wgslsmith_clamp_u32(71940u, 1u, _wgslsmith_mod_u32(min(global0.x, u_input.a), ~0u)));
    global0 = vec2<u32>(var_0, u_input.a);
    let var_1 = var_0;
    global0 = u_input.c | vec2<u32>(~var_1, firstTrailingBit(~_wgslsmith_mod_u32(1u, global0.x)));
    return _wgslsmith_mult_u32(var_0, reverseBits(1u << (0u % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.x, u_input.b), vec2<i32>(2147483647i, arg_2.x), vec2<bool>(true, false)), arg_2.xy), firstTrailingBit(arg_1 << (38132u % 32u)), ~arg_1)), _wgslsmith_mod_i32(u_input.b ^ -13724i, _wgslsmith_dot_vec2_i32(-arg_2.yz, arg_2.zy)), ~(~1i));
    global0 = vec2<u32>(31981u, func_3());
    global0 = ~u_input.c;
    global0 = u_input.c;
    global0 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, ~(~u_input.c)), vec2<u32>((u_input.c.x & 81984u) ^ 17142u, 71813u), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global0.x, u_input.a)), vec2<u32>(global0.x, 1u)));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 559f))))), vec3<i32>(arg_2.x, -(28482i | arg_1), min(7956i, var_0.c)) & _wgslsmith_mult_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(arg_2, vec3<i32>(arg_2.x, 1i, -2147483647i), arg_2)), select(firstTrailingBit(arg_2), max(var_0.a.b, var_0.a.b), true)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    global0 = ~(~u_input.c);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.xzx - arg_2.zwx) + arg_2.wzz));
    var_0 = arg_2.wyw;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec3<f32>(-201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(591f + arg_0.a)))) * arg_0.a), arg_0.a);
    global0 = vec2<u32>(_wgslsmith_mod_u32(abs(1u) ^ (countOneBits(global0.x) >> (u_input.a % 32u)), global0.x | _wgslsmith_sub_u32(56777u, u_input.a)), ~14868u);
    global0 = firstLeadingBit(vec2<u32>(firstLeadingBit(u_input.c.x), ~abs(22077u)));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xy + var_0.yz)))), u_input.b, _wgslsmith_mult_vec3_i32(countOneBits(arg_0.b), vec3<i32>(-(~arg_0.b.x), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 962i, u_input.b), vec3<i32>(u_input.b, 35137i, u_input.b))), 44600i))).b.x;
    let var_2 = arg_0.a;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a)));
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = false;
    let var_3 = vec4<bool>(select(all(vec2<bool>(true, true)), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), true), true & (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 0u), vec3<u32>(0u, 37233u, global0.x)) == (_wgslsmith_sub_u32(global0.x, u_input.c.x) ^ ~21405u)), select(!(_wgslsmith_f_op_f32(arg_1.a * 852f) == _wgslsmith_f_op_f32(f32(-1f) * -330f)), true, select(true, var_1.a > -1000f, _wgslsmith_f_op_f32(round(arg_0.a)) <= 2262f)), true);
    return Struct_2(arg_1.a, -(~var_1.b));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_3(func_6(func_5(func_4(func_2(Struct_1(vec2<f32>(-741f, 886f)), u_input.b, vec3<i32>(0i, u_input.b, u_input.b)), countOneBits(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, -660f, 540f, 168f))), Struct_3(func_2(Struct_1(vec2<f32>(-794f, -1000f)), -36702i, vec3<i32>(2147483647i, u_input.b, -13336i)), ~u_input.b, u_input.b)), Struct_2(-955f, select(vec3<i32>(-4831i, 0i, 1i), vec3<i32>(u_input.b, u_input.b, 0i), true) | reverseBits(vec3<i32>(33732i, u_input.b, -57579i)))), firstTrailingBit(94065i), (i32(-1i) * -_wgslsmith_add_i32(u_input.b, u_input.b)) << ((global0.x | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.x), u_input.c), vec2<u32>(22856u, 22313u))) % 32u));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(var_0.a.a - -1590f), _wgslsmith_clamp_vec3_i32(vec3<i32>(~var_0.b, _wgslsmith_add_i32(11816i, 0i), -2147483647i), ~vec3<i32>(-35248i, 1i, 1138i), ~vec3<i32>(var_0.a.b.x, u_input.b, 1i))), 3032i, _wgslsmith_div_i32(u_input.b, u_input.b) | ~0i);
    var_0 = Struct_3(var_0.a, ~_wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(4434i, u_input.b) >> (~arg_1.x % 32u), var_0.c), ~_wgslsmith_div_i32(~(~(-2147483647i)), reverseBits(1i)));
    var_0 = Struct_3(func_2(Struct_1(vec2<f32>(-419f, _wgslsmith_f_op_f32(-1000f * 496f))), 1i, var_0.a.b), u_input.b, u_input.b);
    global0 = u_input.c & u_input.c;
    return var_0.a.b.yz;
}

fn func_7(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_3 {
    global0 = _wgslsmith_add_vec2_u32(select(countOneBits(u_input.c), ~vec2<u32>(~global0.x, ~u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(-53882i < arg_1.x, all(vec2<bool>(true, true))))), ~countOneBits(~vec2<u32>(global0.x, 37447u)));
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, ~vec2<u32>(4064u, global0.x)) >> (vec2<u32>(_wgslsmith_add_u32(~63065u, 4294967295u | u_input.c.x), global0.x) % vec2<u32>(32u)), select(u_input.c, ~u_input.c, select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_2(-1056f, _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(arg_0.x, 0i), 2147483647i, 2147483647i), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_1.x, -16242i, arg_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-37782i, -2147483647i, arg_0.x))) >> (vec3<u32>(29536u, 61918u, 1u) % vec3<u32>(32u))));
    return Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, -311f)) - -1352f), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(var_1.a, -655f)), arg_0.x, var_1.b).a - _wgslsmith_f_op_f32(exp2(var_1.a)))), vec3<i32>(23487i, arg_1.x, _wgslsmith_div_i32(-2147483647i | u_input.b, countOneBits(260i)))), _wgslsmith_mult_i32(select(arg_0.x, -(~u_input.b), true), arg_1.x), 50425i);
}

fn func_8(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = ~(~(~u_input.c) << (min(~(u_input.c >> (vec2<u32>(global0.x, 23940u) % vec2<u32>(32u))), ~vec2<u32>(31515u, 1u)) % vec2<u32>(32u)));
    let var_0 = -12121i == (-countOneBits(u_input.b) << (67118u % 32u));
    var var_1 = arg_0.c;
    var_1 = u_input.b;
    let var_2 = vec2<f32>(807f, arg_3.a);
    return func_5(arg_3, func_7(vec2<i32>(~reverseBits(2147483647i), abs(~84099i)), vec2<i32>(~abs(1i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(abs(-(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(global0.x, 18779u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(17613i, u_input.b)), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(11545i, ~u_input.b), ~func_1(false, u_input.c))), _wgslsmith_add_vec4_u32(min(~vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, global0.x, global0.x, 20368u), ~vec4<u32>(global0.x, 4294967295u, 1u, global0.x))), vec4<u32>(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 41913u, u_input.a), vec4<u32>(79191u, 27407u, u_input.a, 0u)), global0.x, u_input.a, 4294967295u)), select(vec2<bool>(any(vec3<bool>(true, true, true)), ~global0.x == 1u), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), false), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -651f), -vec3<i32>(0i, _wgslsmith_mod_i32(-1i, u_input.b), u_input.b)));
    var var_1 = 1015f;
    global0 = u_input.c ^ _wgslsmith_mult_vec2_u32((u_input.c << (~u_input.c % vec2<u32>(32u))) & vec2<u32>(0u, ~u_input.a), abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4228u, 4294967295u), vec2<u32>(4294967295u, u_input.c.x)), ~0u)));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a), !any(vec2<bool>(true, false)))), 1844f));
    var var_3 = !(!(!all(vec3<bool>(false, false, false)))) || all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(38125u), reverseBits(u_input.c.x) & global0.x) << (vec2<u32>(25646u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 64978u), vec4<u32>(global0.x, global0.x, global0.x, 0u)) << (~u_input.a % 32u)) % vec2<u32>(32u)), ~vec4<i32>(2147483647i, -2357i, ~(-14102i) << (u_input.c.x % 32u), ~(var_0.b.x & u_input.b)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2259f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-815f * var_2.a.x) - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(vec2<f32>(-1000f, -419f)), u_input.b, var_0.b).a)), u_input.c.x == u_input.c.x)));
}

