struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(~(~(~arg_0.a ^ u_input.a.x)), firstLeadingBit(arg_0.b), _wgslsmith_f_op_vec2_f32(-arg_0.c));
    let var_1 = !vec4<bool>(!(_wgslsmith_add_u32(arg_0.a, u_input.a.x) >= u_input.a.x), true, true, true);
    var var_2 = -278f;
    let var_3 = all(vec2<bool>(var_1.x, all(!var_1)));
    var_2 = -2468f;
    return firstLeadingBit(max(_wgslsmith_add_i32(abs(_wgslsmith_div_i32(2147483647i, arg_0.b.x)), -5258i), -2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    let var_0 = u_input.b >> (~_wgslsmith_mult_u32(firstLeadingBit(~global0.x), global0.x) % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1652f, 851f))))))));
    let var_2 = min(countOneBits(vec4<i32>(-1i) * -vec4<i32>(arg_0.a, -8218i, 3377i, arg_2.b.a)), min(select(vec4<i32>(var_0, 1i, var_0, arg_0.a), vec4<i32>(~u_input.b, -39679i, select(0i, arg_1.a, true), arg_2.a >> (u_input.a.x % 32u)), vec4<bool>(true, true, true, true)), min(-vec4<i32>(arg_1.a, u_input.b, 1i, -1i), -vec4<i32>(arg_2.a, -34604i, 2147483647i, arg_2.a)) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 30066u), vec4<u32>(4294967295u, u_input.a.x, 69958u, u_input.a.x))) % vec4<u32>(32u))));
    var var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(91263u, 1u)), var_2.wwx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-215f))))), _wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))))));
    var var_4 = select(vec3<u32>(_wgslsmith_clamp_u32(global0.x, 33065u, ~u_input.a.x), ~(~u_input.a.x), firstTrailingBit(1u)) >> (~vec3<u32>(4294967295u, min(var_3.a, 20823u), 1u) % vec3<u32>(32u)), vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(4294967295u, 1187u, 33904u))), min(vec3<u32>(4294967295u, 0u, 42131u), u_input.a)), ~31897u), vec3<bool>(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true, false));
    return -1i;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    let var_0 = vec4<i32>(func_4(arg_0.b, Struct_2(arg_1.b.a), Struct_4(func_3(Struct_1(u_input.a.x, vec3<i32>(arg_0.b.a, u_input.b, -23281i), vec2<f32>(713f, -1280f))), Struct_2(firstLeadingBit(u_input.b)))), max(firstLeadingBit(73769i), -35904i), -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a, 1i, u_input.b), vec3<i32>(-46556i, 0i, arg_0.b.a)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-4490i, arg_0.a, arg_2, -11077i), vec4<i32>(arg_2, 6312i, arg_2, 15753i)))), u_input.b);
    global0 = min(vec4<u32>(_wgslsmith_mod_u32(66058u, u_input.a.x), global0.x, ~u_input.a.x << (1u % 32u), abs(1u)), _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(global0.x, 38585u, 4294967295u, u_input.a.x)), ~(vec4<u32>(u_input.a.x, 69080u, 8281u, global0.x) >> (vec4<u32>(1u, global0.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~max(vec4<u32>(0u, 27825u, u_input.a.x, 30625u), vec4<u32>(u_input.a.x, global0.x, global0.x, 4495u)))) >> (vec4<u32>(min(4294967295u, _wgslsmith_mult_u32(global0.x, u_input.a.x)), u_input.a.x, u_input.a.x, ~0u) % vec4<u32>(32u));
    var var_1 = ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19991u, 0u, 48630u, global0.x), vec4<u32>(0u, global0.x, 7095u, 0u)), ~1u)) ^ _wgslsmith_div_u32(u_input.a.x, 1u);
    var var_2 = ~arg_2;
    var var_3 = vec4<bool>(countOneBits(-34392i >> (abs(0u) % 32u)) == _wgslsmith_mult_i32(0i, u_input.b), !(!any(vec3<bool>(false, false, false))), any(vec2<bool>(true, true)), (select(true, select(true, true, true), true) || all(vec2<bool>(true, true))) & false);
    return Struct_2(_wgslsmith_add_i32(arg_2, -(_wgslsmith_add_i32(arg_2, -21920i) >> (min(global0.x, 42631u) % 32u))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> f32 {
    var var_0 = func_2(Struct_4(1514i, arg_1), Struct_4(abs(select(min(-1i, 2147483647i), -arg_2.a, all(vec4<bool>(false, true, true, false)))), arg_2.b), firstLeadingBit(-4815i));
    var var_1 = ~abs(max(1u >> (0u % 32u), global0.x));
    let var_2 = -vec4<i32>(-67872i, reverseBits(-_wgslsmith_mult_i32(arg_1.a, 55442i)), func_4(arg_1, Struct_2(-arg_2.a), arg_2), 0i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1925f));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = select(-vec2<i32>(u_input.b, u_input.b << (global0.x % 32u)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, 1u), _wgslsmith_mod_vec2_u32(global0.zx, vec2<u32>(6474u, global0.x) ^ vec2<u32>(arg_2, u_input.a.x))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, 2147483647i), vec2<i32>(0i, func_2(Struct_4(u_input.b, Struct_2(u_input.b)), Struct_4(u_input.b, Struct_2(u_input.b)), 2147483647i).a)) ^ min(vec2<i32>(2147483647i, -25918i) << (~vec2<u32>(arg_2, 14889u) % vec2<u32>(32u)), vec2<i32>(20816i, u_input.b)), vec2<bool>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(arg_0.x))) >= _wgslsmith_f_op_f32(func_5(-2147483647i, func_2(Struct_4(31295i, Struct_2(u_input.b)), Struct_4(-2147483647i, Struct_2(u_input.b)), 1i), Struct_4(-1i, Struct_2(u_input.b)), 1090f)), true));
    var var_1 = any(vec4<bool>(true, true, true, true));
    global0 = ~countOneBits(vec4<u32>(49137u, ~global0.x, 85099u, countOneBits(abs(4294967295u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.wx + arg_1.xz)));
    let var_3 = Struct_3(!select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), false), _wgslsmith_dot_vec3_u32(u_input.a, abs(u_input.a)), 1u, Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -1i, u_input.b), var_0.x)));
    return 1u;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = ~(~vec4<u32>(abs(1u), firstTrailingBit(global0.x), u_input.a.x, u_input.a.x));
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(229f, -1051f))), _wgslsmith_f_op_f32(500f + 367f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1260f + -229f) + 1239f), _wgslsmith_f_op_f32(floor(1076f)), _wgslsmith_f_op_f32(func_5(arg_0 | arg_0, func_2(Struct_4(-2147483647i, Struct_2(arg_0)), Struct_4(arg_0, Struct_2(-836i)), arg_0), Struct_4(arg_0, Struct_2(-8791i)), _wgslsmith_f_op_f32(-1797f * 202f))))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-206f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) + _wgslsmith_f_op_f32(min(-378f, 1093f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-147f)))), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(298f, -179f, 529f, 643f), vec4<f32>(-103f, 174f, -1459f, -138f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1323f, 1000f, -549f, 1741f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1442f, -1089f, -282f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(195f, 959f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 237f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -426f)))));
    let var_1 = !(!vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))));
    var_0 = 4294967295u;
    let var_2 = func_4(func_2(Struct_4(arg_0, func_2(Struct_4(arg_0, Struct_2(1i)), Struct_4(arg_0, Struct_2(-7869i)), u_input.b)), Struct_4(1i | u_input.b, func_2(Struct_4(u_input.b, Struct_2(arg_0)), Struct_4(arg_0, Struct_2(arg_0)), 29925i)), -28685i), func_2(Struct_4(-1i, func_2(Struct_4(u_input.b, Struct_2(u_input.b)), Struct_4(u_input.b, Struct_2(0i)), u_input.b)), Struct_4(abs(33684i), func_2(Struct_4(-45813i, Struct_2(arg_0)), Struct_4(u_input.b, Struct_2(u_input.b)), u_input.b)), arg_0 | ~(-50437i)), Struct_4(_wgslsmith_add_i32(~u_input.b, arg_0), Struct_2(arg_0))) ^ arg_0;
    return !(!(!(!(!vec3<bool>(var_1.x, true, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), func_1(-1i), vec3<bool>(false, true, true)), vec3<bool>(true, any(vec2<bool>(true, true)), true || (16555i >= u_input.b)), !vec3<bool>(true, any(vec2<bool>(false, true)), global0.x == 4294967295u));
    let var_1 = Struct_1(1u, ~vec3<i32>(u_input.b, 67047i, ~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(round(-822f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(step(-1261f, -197f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(func_5(u_input.b, Struct_2(-2147483647i), Struct_4(2147483647i, Struct_2(28662i)), 1000f)))) + var_1.c.x), _wgslsmith_f_op_f32(func_5(2147483647i, func_2(Struct_4(-var_1.b.x, func_2(Struct_4(23590i, Struct_2(var_1.b.x)), Struct_4(var_1.b.x, Struct_2(u_input.b)), -30915i)), Struct_4(_wgslsmith_sub_i32(1i, u_input.b), Struct_2(u_input.b)), 1i), Struct_4(u_input.b, Struct_2(u_input.b)), -1768f)), var_1.c.x);
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(11763u, 1u, 7401u, 65897u) | firstTrailingBit(~(~vec4<u32>(var_1.a, global0.x, 1u, 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(53229u, 45867u, global0.x, 39650u) & ~vec4<u32>(0u, 4294967295u, global0.x, global0.x), ~vec4<u32>(42152u, 71934u, u_input.a.x, 0u) | (vec4<u32>(global0.x, u_input.a.x, var_1.a, u_input.a.x) & vec4<u32>(global0.x, 0u, var_1.a, 1u))), ~vec4<u32>(1u, 1u, u_input.a.x, firstTrailingBit(81277u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x)))))));
    var var_4 = Struct_4(func_4(func_2(Struct_4(u_input.b | -50542i, func_2(Struct_4(1i, Struct_2(u_input.b)), Struct_4(28585i, Struct_2(2147483647i)), u_input.b)), Struct_4(95913i, func_2(Struct_4(-2147483647i, Struct_2(3527i)), Struct_4(var_1.b.x, Struct_2(-14413i)), 1i)), func_2(Struct_4(-1i, Struct_2(u_input.b)), Struct_4(u_input.b, Struct_2(var_1.b.x)), ~(-2147483647i)).a), Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, var_1.b.x), _wgslsmith_mult_i32(u_input.b, var_1.b.x))), Struct_4(2147483647i, Struct_2(var_1.b.x))), func_2(Struct_4(-14473i, Struct_2(~67820i)), Struct_4(_wgslsmith_add_i32(-u_input.b, 3803i >> (var_1.a % 32u)), func_2(Struct_4(29682i, Struct_2(23127i)), Struct_4(u_input.b, Struct_2(var_1.b.x)), firstLeadingBit(var_1.b.x))), ~(-46335i)));
    let var_5 = Struct_4(_wgslsmith_sub_i32(-var_4.a, -func_4(Struct_2(u_input.b), Struct_2(u_input.b), Struct_4(15374i, var_4.b))), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_5.a, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(-1507i, -587i), vec2<i32>(-13246i, -19897i))), var_1.b.xz) >> (~u_input.a.x % 32u), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.x, 962f, var_2.x), _wgslsmith_f_op_vec3_f32(min(var_2, var_2)), var_2.x > var_2.x)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_2.x, -110f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -2931f, var_1.c.x), _wgslsmith_f_op_vec3_f32(exp2(var_2))))), var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 1959f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, var_2.x, var_2.x, var_1.c.x), vec4<f32>(-780f, var_2.x, var_3, var_2.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, -1237f, var_1.c.x, var_3), vec4<f32>(var_1.c.x, var_2.x, var_1.c.x, 1092f), vec4<bool>(true, false, false, true))))))), reverseBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(min(var_1.c.x, -243f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_mult_i32(reverseBits(0i), u_input.b), Struct_2(func_4(Struct_2(8968i), Struct_2(21321i), var_5)), var_5, _wgslsmith_f_op_f32(-var_3))) - 668f));
}

