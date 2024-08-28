struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = vec2<u32>(u_input.a.x, u_input.a.x);
    var var_1 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 42769i, global1.x, global1.x), vec4<i32>(-1i, global1.x, 2756i, global1.x)) ^ min(vec4<i32>(global1.x, global1.x, 50008i, 2147483647i), vec4<i32>(-12240i, 6980i, 1i, 22447i)), -vec4<i32>(0i, global1.x, global1.x, 33655i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, 5362i, global1.x, global1.x)), vec4<i32>(global1.x, global1.x, 27878i, global1.x) >> (u_input.a % vec4<u32>(32u)))), vec4<i32>(global1.x, 1i, 0i >> (0u % 32u), global1.x) << (u_input.a % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), select(~(-vec4<i32>(7598i, global1.x, -4376i, global1.x)), abs(vec4<i32>(global1.x, 0i, global1.x, global1.x)) << (firstTrailingBit(vec4<u32>(u_input.a.x, 1u, var_0.x, u_input.a.x)) % vec4<u32>(32u)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))) ^ select(~firstLeadingBit(vec4<i32>(global1.x, -29828i, 24667i, -11275i)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(global1.x, global1.x, 2147483647i, global1.x), vec4<i32>(1i, global1.x, -2147483647i, -2147483647i)), vec4<i32>(global1.x, global1.x, -6788i, 20309i) ^ vec4<i32>(9731i, global1.x, 0i, -24329i)), vec4<bool>(true, true, true, true)));
    var_1 = countOneBits(vec4<i32>(global1.x, 27610i, firstTrailingBit(2147483647i), var_1.x));
    var var_2 = Struct_3(true, select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), false)), ~vec4<u32>(~_wgslsmith_add_u32(44045u, 11659u), 42480u, ~1u, ~u_input.a.x), Struct_2(Struct_1(select(true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), any(vec2<bool>(true, false)), vec3<i32>(firstLeadingBit(global1.x), global1.x ^ var_1.x, firstLeadingBit(var_1.x))), _wgslsmith_div_i32(global1.x, reverseBits(var_1.x)), 1179f, Struct_1(any(vec3<bool>(true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, true)) || true, var_1.xyy)));
    global1 = min(vec2<i32>(-24327i << (max(_wgslsmith_mod_u32(0u, var_0.x), ~0u) % 32u), 4507i | global1.x), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(min(vec2<i32>(-1i, var_1.x), vec2<i32>(global1.x, global1.x)), abs(vec2<i32>(var_1.x, global1.x)), vec2<i32>(global1.x, -46507i)));
    return !var_2.d.d.a;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1121f);
    return Struct_3(false, !(!vec3<bool>(true, global1.x <= -1i, true)), u_input.a, Struct_2(Struct_1(true, vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false))), func_3(), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, 839i, 1i), false), vec3<i32>(21248i, -22221i, 0i))), -2147483647i, 506f, Struct_1(true, vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)), countOneBits(vec3<i32>(-1i, -1i, global1.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(arg_2.d.d.x << (~arg_1 % 32u)), ~(~select(-40453i, -1i, false))), arg_2.a.d.xz >> (reverseBits(_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.zz) & ~u_input.a.zx) % vec2<u32>(32u)));
    let var_0 = arg_2;
    var var_1 = vec2<f32>(383f, -549f);
    var var_2 = ~35857u;
    var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.zxy) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, arg_1, 1u), ~(u_input.a.yyz | vec3<u32>(4294967295u, arg_1, u_input.a.x))), u_input.a.zzy);
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<bool> {
    global0 = arg_3.d.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.d.c)))) * func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.d.c, -1043f), vec2<f32>(arg_3.d.c, arg_3.d.c)) + vec2<f32>(-1417f, -427f)), select(_wgslsmith_clamp_u32(arg_3.c.x, 0u, u_input.a.x), arg_3.c.x, arg_3.d.a.a), arg_3.d, select(false, select(true, true, false), true)).d.c) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_3.d.c, arg_3.d.c, false)))), arg_3.d.c), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.c, arg_3.d.c))), ~firstTrailingBit(1u), Struct_2(func_1(vec2<f32>(arg_3.d.c, arg_3.d.c), arg_2.x, Struct_2(Struct_1(arg_3.a, arg_3.d.d.b, true, vec3<i32>(arg_0.x, global1.x, global1.x)), arg_0.x, arg_3.d.c, Struct_1(true, vec4<bool>(true, arg_1.x, true, false), true, vec3<i32>(global1.x, global1.x, 17414i))), false).d.a, global1.x >> (12194u % 32u), func_2().d.c, arg_3.d.d), (arg_0.x | global1.x) >= -1i).d.c)));
    var var_0 = arg_1.x;
    var var_1 = 1060f;
    let var_2 = !vec2<bool>(false, !((arg_0.x <= 2147483647i) | all(arg_3.d.d.b)));
    return !func_2().d.d.b.www;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_4(max(min(vec3<i32>(-11129i, global1.x, -1682i), vec3<i32>(32281i, global1.x, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(18972i, 0i, 1i), vec3<i32>(global1.x, global1.x, global1.x))), vec2<bool>(true, true), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 11715u, u_input.a.x), vec3<u32>(41349u, 0u, 0u))), func_1(vec2<f32>(922f, 510f), u_input.a.x, Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), false, vec3<i32>(global1.x, global1.x, -1i)), global1.x, 1000f, Struct_1(false, vec4<bool>(false, true, true, true), false, vec3<i32>(-84781i, -2147483647i, global1.x))), true)), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(274f, 109f), _wgslsmith_div_vec2_f32(vec2<f32>(2158f, -558f), vec2<f32>(-529f, -965f)), vec2<bool>(true, true))), 16228u, Struct_2(Struct_1(true, vec4<bool>(false, false, true, true), true, vec3<i32>(global1.x, global1.x, 0i)), 1i, 926f, Struct_1(false, vec4<bool>(true, false, true, true), false, vec3<i32>(global1.x, -12542i, global1.x))), any(func_1(vec2<f32>(-1286f, 165f), 4294967295u, Struct_2(Struct_1(false, vec4<bool>(false, false, true, false), false, vec3<i32>(-96637i, global1.x, -11923i)), 1i, 1193f, Struct_1(false, vec4<bool>(true, true, false, false), false, vec3<i32>(global1.x, -13184i, global1.x))), false).b)).d.d.b.wwz, any(vec3<bool>(true, true, true))), func_4(~vec3<i32>(~(-966i), abs(global1.x), select(23029i, global1.x, true)), vec2<bool>(true, ~1u >= abs(u_input.a.x)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a.x, 1u), max(vec3<u32>(u_input.a.x, 15200u, 0u), vec3<u32>(u_input.a.x, 27770u, 0u))), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 4294967295u, 24649u), abs(u_input.a.zyx)), func_4(~vec3<i32>(global1.x, global1.x, global1.x), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) ^ vec3<u32>(72965u, u_input.a.x, 4294967295u), Struct_3(true, vec3<bool>(true, true, false), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), Struct_2(Struct_1(false, vec4<bool>(false, true, true, false), true, vec3<i32>(global1.x, global1.x, -1i)), global1.x, -1000f, Struct_1(false, vec4<bool>(false, false, true, true), true, vec3<i32>(2147483647i, -685i, 2147483647i))))).x), Struct_3(true, vec3<bool>(true, true, all(vec2<bool>(true, false))), ~select(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 53505u), vec4<bool>(false, false, true, true)), func_1(vec2<f32>(1f, 1f), 4294967295u, func_1(vec2<f32>(-170f, -980f), u_input.a.x, Struct_2(Struct_1(true, vec4<bool>(false, true, false, true), false, vec3<i32>(1i, -2147483647i, global1.x)), -14363i, 851f, Struct_1(true, vec4<bool>(true, true, true, true), true, vec3<i32>(global1.x, -1i, -2147483647i))), true).d, any(vec2<bool>(false, true))).d)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(all(func_1(vec2<f32>(785f, -110f), u_input.a.x, Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), false, vec3<i32>(-2147483647i, global1.x, -28198i)), 0i, -1788f, Struct_1(true, vec4<bool>(true, false, false, false), true, vec3<i32>(global1.x, 24494i, -31828i))), false).d.d.b.yy), u_input.a.x == max(u_input.a.x, u_input.a.x), any(vec2<bool>(true, true)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-746f)));
    var var_1 = global1.x;
    var_0 = select(!select(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-587f, -1791f))), func_2().c.x, Struct_2(Struct_1(true, vec4<bool>(var_0.x, var_0.x, true, false), var_0.x, vec3<i32>(265i, 0i, 2147483647i)), global1.x, 735f, Struct_1(var_0.x, vec4<bool>(false, var_0.x, false, var_0.x), false, vec3<i32>(2147483647i, global1.x, -1i))), !var_0.x).d.a.b.yww, !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(func_3(), !var_0.x, var_0.x)), vec3<bool>(all(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.x, var_0.x, true)), !vec4<bool>(var_0.x, true, true, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x, ((global1.x & 12114i) != global1.x) && func_3()), !func_3());
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, 1258f)))), -1681f), _wgslsmith_f_op_f32(sign(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(368f, -1000f) + vec2<f32>(694f, -640f)), min(12727u, u_input.a.x), Struct_2(Struct_1(var_0.x, vec4<bool>(false, var_0.x, var_0.x, true), var_0.x, vec3<i32>(global1.x, 0i, 2147483647i)), global1.x, 1000f, Struct_1(var_0.x, vec4<bool>(var_0.x, false, false, var_0.x), false, vec3<i32>(global1.x, -2509i, global1.x))), u_input.a.x < 4294967295u).d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1609f - -1000f))) + -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1492f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1200f)))), 487f);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(global1.x, global1.x, _wgslsmith_mult_i32(1i, -40777i), _wgslsmith_mult_i32(-global1.x, abs(global1.x))));
}

