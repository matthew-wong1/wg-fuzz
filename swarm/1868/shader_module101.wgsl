struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> bool {
    global0 = !(arg_0.a >= arg_0.a);
    global0 = false;
    global0 = u_input.a.x == max(_wgslsmith_dot_vec3_i32(select(u_input.a.zyz, u_input.a.xyx, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), select(reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i)), vec3<i32>(u_input.a.x, 1i, 1i) | u_input.a.xyx, false)), ~(-1i << (firstLeadingBit(164386u) % 32u)));
    let var_0 = firstLeadingBit(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~u_input.a.x, i32(-1i) * -1i, -2147483647i), i32(-1i) * -u_input.a.x), 2147483647i, select(_wgslsmith_div_i32(abs(-1i), ~u_input.a.x), -select(22299i, 61357i, true), true)));
    let var_1 = arg_2.xx;
    return !(true | !(!any(vec2<bool>(true, false))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    let var_0 = vec3<i32>(-12767i, u_input.a.x, u_input.a.x);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a * 1010f)), 1497f)), 64207u << (arg_2.a.b % 32u)), 52159u, vec3<bool>(true, u_input.c == 1u, arg_3.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0));
    let var_2 = _wgslsmith_mult_i32(-1i, firstLeadingBit(firstTrailingBit(12765i)) ^ (_wgslsmith_dot_vec2_i32(u_input.a.xx, var_0.zy) & -2147483647i)) > _wgslsmith_dot_vec3_i32(max(firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)), _wgslsmith_add_vec3_i32(max(u_input.a.yxw, var_0), ~vec3<i32>(-13326i, var_0.x, 1i))), ~(u_input.a.xxz >> ((vec3<u32>(4294967295u, 16176u, arg_2.b) << (vec3<u32>(1u, arg_2.b, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global0 = var_2;
    return all(!vec3<bool>((var_0.x & var_0.x) > 40571i, var_1.c.x, false));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> vec3<bool> {
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + -575f))), _wgslsmith_mult_vec2_u32(~(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(12315u, u_input.c)) | arg_1), arg_1), Struct_4(arg_0, arg_1.x >> (min(abs(44835u), _wgslsmith_sub_u32(arg_0.b, u_input.c)) % 32u), select(!select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, false, false), false), vec3<bool>(arg_3, !arg_3, -16658i > u_input.a.x), arg_2 < (2147483647i | u_input.a.x))), select(!select(!vec2<bool>(true, arg_3), vec2<bool>(arg_3, true), false), !vec2<bool>(arg_3, func_3(arg_0, 0u, vec4<u32>(u_input.b, arg_1.x, 0u, u_input.c))), false));
    let var_0 = Struct_2(vec2<u32>(countOneBits(firstLeadingBit(5139u)), _wgslsmith_mult_u32(4294967295u, arg_1.x)) | ~select(arg_1, ~vec2<u32>(u_input.b, 1u), any(vec3<bool>(true, false, arg_3))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), 1u), reverseBits(firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, arg_1.x), vec2<u32>(0u, u_input.c)))), min(u_input.a.x, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-5570i, arg_2, 2147483647i), vec3<i32>(-24739i, u_input.a.x, -1i)), u_input.a.x)));
    global0 = (abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b, var_0.a.x, var_0.c.x), vec3<u32>(u_input.c, var_0.a.x, var_0.c.x)), max(vec3<u32>(0u, arg_1.x, var_0.c.x), vec3<u32>(21104u, arg_0.b, arg_0.b)))) & ~85902u) != _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(0u, 5921u, u_input.c, u_input.c)), reverseBits(~vec4<u32>(1u, 16801u, arg_0.b, 1u)));
    global0 = true;
    var var_1 = Struct_3(select(!select(!vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(arg_3, true, arg_3, arg_3), select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(false, arg_3, true, arg_3), arg_3)), !(!select(vec4<bool>(arg_3, arg_3, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, arg_3))), u_input.a.x < reverseBits(arg_2 >> (0u % 32u))), Struct_1(_wgslsmith_div_f32(var_0.b.a, arg_0.a), countOneBits(firstTrailingBit(~arg_1.x))), arg_3, countOneBits(~u_input.a));
    return select(!vec3<bool>(arg_3, true, false), select(!(!(!vec3<bool>(var_1.c, true, var_1.c))), vec3<bool>(true, true, true), -503f != arg_0.a), true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    global0 = any(select(select(vec4<bool>(arg_0.x, true, !arg_0.x, all(vec3<bool>(false, arg_0.x, true))), !vec4<bool>(true, arg_0.x, true, arg_0.x), select(!vec4<bool>(false, false, arg_0.x, false), !vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, false))), select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<bool>(false, true, true, arg_0.x)), select(arg_0.x, true, arg_0.x)), vec4<bool>(false, arg_0.x, all(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), arg_0)), arg_0.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1622f, 1670f, 1204f, -906f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2633f, -484f, -280f, 979f) - vec4<f32>(630f, -1000f, -822f, 280f))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) - 263f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1318f + 2287f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1073f)), _wgslsmith_f_op_f32(-477f * -350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) - 1000f))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32((14221i & u_input.a.x) | abs(i32(-1i) * -13532i), u_input.a.x), (u_input.a.x | ~(-u_input.a.x)) << (((1u << (max(u_input.b, 1u) % 32u)) ^ 16304u) % 32u));
    let var_2 = _wgslsmith_clamp_i32(~(~19841i), u_input.a.x, var_1);
    var var_3 = 256f;
    return Struct_1(626f, 27277u);
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    global0 = true;
    var var_1 = u_input.b;
    var var_2 = func_5(!func_2(Struct_1(766f, min(u_input.b, var_0)), vec2<u32>(~1u, _wgslsmith_mult_u32(u_input.c, 65655u)), -1i, true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1397f)))) - -238f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a * var_2.a), var_2.a))));
    return func_5(vec3<bool>(all(vec2<bool>(var_3, var_3)), true, all(!vec2<bool>(var_3, var_3))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(!vec4<bool>(true & arg_1, arg_1, arg_0.a.x >= ~arg_0.b.b, true), func_1(), all(!vec3<bool>(!arg_1, arg_1 && arg_1, arg_2.b.a != arg_2.b.a)), _wgslsmith_clamp_vec4_i32(-max(u_input.a, select(vec4<i32>(arg_3.x, u_input.a.x, arg_3.x, arg_3.x), vec4<i32>(2829i, arg_2.d, -18034i, arg_2.d), arg_1)), vec4<i32>(1i, _wgslsmith_sub_i32(abs(4067i), 1i), arg_3.x, i32(-1i) * -2147483647i), vec4<i32>(arg_2.d, ~max(-68568i, u_input.a.x), _wgslsmith_add_i32(countOneBits(2147483647i), _wgslsmith_mod_i32(arg_3.x, 2147483647i)), arg_3.x ^ -2147483647i)));
    let var_1 = Struct_1(arg_2.b.a, 4294967295u);
    let var_2 = u_input.c;
    var var_3 = func_1();
    var_3 = Struct_1(_wgslsmith_f_op_f32(var_3.a * -1523f), _wgslsmith_div_u32(u_input.b, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(22501u, arg_0.c.x, 23248u, var_1.b), vec4<u32>(76281u, var_1.b, 0u, 1u)), 1u, false)));
    return Struct_1(var_3.a, 4294967295u);
}

fn func_7(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    let var_0 = vec4<f32>(func_1().a, arg_0.b.a, _wgslsmith_f_op_f32(arg_0.b.a + 687f), arg_0.b.a);
    var var_1 = _wgslsmith_f_op_f32(floor(330f));
    let var_2 = 4294967295u;
    let var_3 = Struct_3(vec4<bool>(any(func_2(Struct_1(arg_0.b.a, 0u), arg_0.c, 2147483647i, false)) == all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), true, true || all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), func_1(), !(u_input.a.x <= -(~(-1i))), -vec4<i32>(1i, ~(~u_input.a.x), (u_input.a.x | -1i) ^ 5170i, -1i));
    return Struct_4(func_1(), ~u_input.c & func_1().b, select(!(!var_3.a.xzz), var_3.a.wyw, !(var_3.c != func_2(arg_0.b, vec2<u32>(arg_0.a.x, var_3.b.b), 0i, false).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1539f)) * _wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(-583f - 163f)))));
    var var_1 = u_input.a.x;
    var var_2 = func_7(Struct_2(min(min(~vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(40925u, 1u)), vec2<u32>(max(u_input.c, 0u), u_input.c | 1u)), func_6(Struct_2(vec2<u32>(u_input.b, u_input.c), Struct_1(-1542f, u_input.c), vec2<u32>(14192u, u_input.b), ~(-1i)), true, Struct_2(vec2<u32>(u_input.c, 1u), func_1(), abs(vec2<u32>(95728u, 32424u)), u_input.a.x), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, -1i, 14958i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), u_input.a.zzz), u_input.a.zzw)), abs(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, u_input.c)), vec2<u32>(1u, u_input.c))), ~_wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i)), u_input.a.x);
    var_1 = _wgslsmith_clamp_i32(countOneBits(abs(~u_input.a.x)) & _wgslsmith_add_i32(20764i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -38i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)))), i32(-1i) * -14620i, min(32447i, -43167i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(min(500f, -624f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(172f, var_2.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -475f, 196f, var_2.a.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(919f, var_2.a.a, var_2.a.a, -627f)))))), var_2.a.a);
}

