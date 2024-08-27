struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_3.a);
    global0 = -53237i;
    global0 = countOneBits(_wgslsmith_mod_i32(0i, 74506i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.a, 194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2224f - -759f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f + arg_1.a) + arg_3.a.a) * arg_1.a) - var_0.a.a));
    let var_2 = var_0.a;
    return ~_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(~reverseBits(1u), ~u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(75527u, 0u, 8383u, 5143u), vec4<u32>(4294967295u, 6673u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(58246u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
}

fn func_2() -> Struct_1 {
    global0 = ~select(~(-40167i), u_input.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 113592u)) == func_3(true, Struct_1(274f, vec2<i32>(82680i, u_input.c.x)), _wgslsmith_add_i32(u_input.d, u_input.d), Struct_2(Struct_1(-1648f, vec2<i32>(u_input.d, u_input.c.x)))));
    let var_0 = Struct_1(260f, -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-6286i, 0i) | u_input.c.zw, vec2<i32>(-63456i, u_input.c.x), _wgslsmith_add_vec2_i32(u_input.c.zy, u_input.b.yx))));
    var var_1 = var_0.a;
    let var_2 = -vec4<i32>(abs(_wgslsmith_clamp_i32(u_input.b.x, firstTrailingBit(u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, 2905i))), 0i, u_input.d, max(-abs(u_input.c.x), abs(var_0.b.x)));
    let var_3 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a)) + _wgslsmith_f_op_f32(sign(755f)))) + _wgslsmith_f_op_f32(f32(-1f) * -389f)), vec2<i32>(-(i32(-1i) * -20158i) << (~reverseBits(u_input.a) % 32u), abs(_wgslsmith_div_i32(var_3.b.x, 2147483647i))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1471f);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-158f))), vec2<i32>(16633i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.d) >> (vec2<u32>(u_input.a, 32352u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, arg_3), u_input.b.xx, u_input.c.wy)))));
    var var_2 = u_input.d;
    global1 = 4225u;
    let var_3 = true;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = 20029u;
    let var_1 = func_4(any(vec3<bool>(true, true, true)), select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(true, true, false), !all(vec2<bool>(false, false)), !all(vec2<bool>(true, true))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)), !any(vec2<bool>(false, false)))), func_4(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 0u << (u_input.a % 32u)) > select(select(u_input.a, 0u, false), 87907u, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), func_4(all(vec2<bool>(true, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), Struct_1(220f, _wgslsmith_add_vec2_i32(u_input.b.zy, arg_2.a.b)), _wgslsmith_dot_vec2_i32(arg_2.a.b, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 2893i), vec2<i32>(-1i, u_input.c.x)))).a, -_wgslsmith_sub_i32(2147483647i ^ arg_3, arg_2.a.b.x | -42026i)).a, 1i);
    let var_2 = var_1;
    var var_3 = !vec4<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), false)), false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), true);
    global0 = -1i;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2029f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1999f)))), _wgslsmith_f_op_f32(f32(-1f) * -1339f)))), func_4(!var_3.x, select(!(!vec4<bool>(var_3.x, false, false, true)), select(!vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, var_3.x, var_3.x), var_3.x), vec4<bool>(var_3.x, var_3.x || var_3.x, true, var_3.x)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.a, var_2.a.a))), countOneBits(-vec2<i32>(-1i, arg_2.a.b.x))), -1i).a.b);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = var_0;
    global1 = 71932u;
    global0 = _wgslsmith_dot_vec4_i32(-min(-min(u_input.c, vec4<i32>(arg_3.x, arg_2.b.x, 54246i, 42000i)), ~vec4<i32>(arg_0.b.x, var_0.a.b.x, arg_3.x, -2147483647i)), u_input.c);
    let var_2 = ~vec4<u32>(1u, ~u_input.a, ~(u_input.a & 52236u) & ~firstTrailingBit(1u), 4294967295u);
    return func_4(var_2.x <= var_2.x, select(vec4<bool>(u_input.a <= (u_input.a << (30646u % 32u)), false, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, false, true))), vec4<bool>(true, false, true, all(vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1438f))), ~(~_wgslsmith_div_vec2_i32(arg_1.a.b, arg_2.b))), 45600i).a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = 1i;
    let var_0 = true;
    let var_1 = func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-986f * 1168f))), _wgslsmith_add_vec2_i32(~reverseBits(vec2<i32>(arg_0, 0i)), u_input.b.zx)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(631f)) - -432f), -vec2<i32>(-9976i, 62203i))), func_5(-563f, Struct_2(Struct_1(460f, vec2<i32>(u_input.b.x, -2147483647i))), func_4(!var_0, select(!vec4<bool>(var_0, false, var_0, false), !vec4<bool>(var_0, true, true, false), var_0 || var_0), func_2(), 0i), -(_wgslsmith_dot_vec3_i32(vec3<i32>(-1965i, -2147483647i, -21448i), u_input.c.xzx) << (0u % 32u))), u_input.b);
    var var_2 = select(abs(~func_5(_wgslsmith_f_op_f32(var_1.a + var_1.a), Struct_2(Struct_1(var_1.a, u_input.b.zz)), func_4(true, vec4<bool>(true, var_0, var_0, var_0), Struct_1(var_1.a, u_input.c.zx), -87102i), firstTrailingBit(13651i)).b), u_input.b.yy, vec2<bool>(true, all(!(!vec4<bool>(false, var_0, var_0, false)))));
    let var_3 = false;
    return Struct_2(func_6(Struct_1(var_1.a, func_6(func_2(), Struct_2(Struct_1(var_1.a, var_1.b)), func_6(Struct_1(var_1.a, vec2<i32>(2147483647i, -1i)), Struct_2(Struct_1(var_1.a, vec2<i32>(arg_0, 18263i))), Struct_1(1464f, var_1.b), u_input.c.xww), vec3<i32>(u_input.b.x, -1i, 1i)).b), Struct_2(func_6(var_1, Struct_2(var_1), var_1, vec3<i32>(u_input.c.x, arg_0, u_input.b.x))), var_1, -vec3<i32>(u_input.b.x, ~17001i, func_5(342f, Struct_2(var_1), Struct_2(var_1), u_input.c.x).b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~1i) >> (~u_input.a % 32u));
    global0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, ~(-1i)), -6531i);
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~37547i, u_input.d, -1i >> (u_input.a % 32u)), vec3<i32>(countOneBits(var_0.a.b.x), var_0.a.b.x, (u_input.b.x ^ u_input.c.x) >> (u_input.a % 32u))) & ~firstTrailingBit(-vec3<i32>(2147483647i, u_input.d, 1i));
    var_1 = (select(abs(vec3<i32>(-38244i, 1i, u_input.c.x)), u_input.b, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false)) << (vec3<u32>((4294967295u ^ u_input.a) << (~u_input.a % 32u), countOneBits(u_input.a), countOneBits(4294967295u)) % vec3<u32>(32u))) ^ vec3<i32>(~(~(-28001i)), ~0i, 26041i);
    var var_2 = var_0.a;
    var var_3 = ~vec2<u32>(min(0u, 0u), ~func_3(var_2.a >= var_0.a.a, var_0.a, -2147483647i, var_0));
    global1 = max(max(1u, firstTrailingBit(u_input.a)), 19725u);
    var_1 = vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(26538i, var_1.x), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a, ~0u, ~u_input.a) >> (_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1633u, 18750u), vec3<u32>(0u, 0u, 7145u), vec3<u32>(1u, var_3.x, var_3.x)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, var_3.x), vec3<u32>(u_input.a, u_input.a, u_input.a)))) % vec3<u32>(32u)), vec2<i32>(-29255i, _wgslsmith_mod_i32(firstLeadingBit(~(-1i)), -_wgslsmith_mult_i32(var_0.a.b.x, u_input.d))), -_wgslsmith_add_i32(var_2.b.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + -1043f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, var_0.a.a, var_2.a) - vec3<f32>(-329f, var_0.a.a, var_0.a.a))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -1377f, 2456f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, -970f, var_0.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2009f, -473f, var_2.a) - vec3<f32>(var_2.a, var_0.a.a, var_2.a)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))))));
}

