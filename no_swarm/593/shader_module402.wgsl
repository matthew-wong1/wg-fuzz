struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return -289f;
}

fn func_3() -> vec4<u32> {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(20500i, u_input.a), vec2<i32>(u_input.a, 45548i)), -10359i, ~1i), ~(~u_input.a), u_input.c, u_input.a);
    let var_1 = _wgslsmith_div_f32(-487f, -1107f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(159f, 448f) - vec2<f32>(1202f, var_1))))))));
    global0 = array<vec3<f32>, 26>();
    let var_3 = select(all(vec2<bool>(true, select(any(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true)), true))), ~(~u_input.c) <= max(var_0.x, _wgslsmith_mod_i32(u_input.c, 1i)), !all(vec2<bool>(false, 853f >= var_1)));
    return firstLeadingBit(u_input.d);
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, max(4294967295u, u_input.b)), vec4<u32>(70901u, u_input.b, _wgslsmith_div_u32(0u, u_input.e), countOneBits(4701u))), arg_0.x, func_3(), u_input.c, u_input.c), Struct_2(Struct_1(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), func_3() << (~vec4<u32>(u_input.e, u_input.e, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), -34857i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, -1i, 1i, 39520i)), ~vec4<i32>(u_input.c, 2147483647i, u_input.c, -25580i)))), Struct_1(u_input.d, arg_0.x, ~u_input.d, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c, -46528i) & vec4<i32>(-2147483647i, -2147483647i, u_input.c, 2428i), ~vec4<i32>(28917i, u_input.a, u_input.a, 34629i)), ~u_input.c), -17692i));
    var var_1 = vec3<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1203f + var_0.c.b))) < _wgslsmith_f_op_f32(trunc(685f))), any(vec4<bool>(-2514f >= _wgslsmith_f_op_f32(abs(arg_0.x)), true, !(arg_0.x >= var_0.c.b), true)));
    var var_2 = Struct_4(2147483647i, Struct_3(var_0.a, Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(var_0.c.a, vec4<u32>(1u, 18976u, var_0.c.c.x, var_0.b.a.a.x), vec4<u32>(94687u, 0u, 59640u, 1u)), 1527f, ~vec4<u32>(1u, u_input.b, 1u, var_0.b.a.c.x), 11589i, 4325i)), Struct_1(vec4<u32>(_wgslsmith_mult_u32(var_0.c.c.x, 37247u), _wgslsmith_div_u32(u_input.b, 0u), u_input.b, ~491u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-509f))), ~u_input.d | var_0.b.a.a, abs(-69670i), u_input.a)));
    let var_3 = all(vec3<bool>(true, var_1.x, !var_1.x));
    var_2 = Struct_4(54027i | u_input.a, Struct_3(var_2.b.a, Struct_2(var_2.b.c), Struct_1(var_0.a.a << (vec4<u32>(1u, 4294967295u, 64535u, var_0.a.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1089f)) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), ~vec4<u32>(var_0.b.a.c.x, u_input.e, 18402u, 0u), 1i, var_0.a.e)));
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec4<u32>(arg_2.a.a.x & 4294967295u, 13245u, _wgslsmith_mult_u32(func_2(vec4<f32>(-1484f, -1362f, arg_0.c.b, -2787f)).a.a.x, _wgslsmith_sub_u32(0u, 0u)), _wgslsmith_clamp_u32(arg_1.a.a.x, 26431u & arg_0.b.a.a.x, abs(arg_3.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(-1178f - arg_1.b.a.b)))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.a.x & 0u, _wgslsmith_mult_u32(arg_2.a.a.x, 1u), ~arg_3.c.x, select(arg_0.c.a.x, arg_0.a.c.x, true)), arg_3.a), _wgslsmith_sub_i32(min(-1i, u_input.a) & 36018i, _wgslsmith_div_i32(-1i, -5250i)), -1i), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(-arg_0.a.b), -637f, _wgslsmith_f_op_f32(f32(-1f) * -1032f)) - vec4<f32>(-557f, _wgslsmith_f_op_f32(581f + -312f), _wgslsmith_f_op_f32(-1000f + arg_3.b), 469f))).b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1566f, 2080f, arg_3.b, arg_1.b.a.b), vec4<f32>(1194f, arg_2.a.b, 731f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, arg_0.a.b, 536f, -189f)))))).b.a);
    var_0 = Struct_3(Struct_1(func_3(), _wgslsmith_f_op_f32(-705f * 710f), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 1u, 37304u, 1u) ^ arg_2.a.a, _wgslsmith_div_vec4_u32(var_0.b.a.a << (arg_1.c.c % vec4<u32>(32u)), arg_3.c)), -17407i, ~(~(-21402i))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1182f, arg_1.b.a.b, var_0.b.a.b, -1373f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, 386f, arg_2.a.b, arg_2.a.b) - vec4<f32>(-234f, arg_2.a.b, arg_1.b.a.b, 1222f))))).b, func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(431f, arg_1.c.b, -1261f, -1377f) - vec4<f32>(660f, -660f, arg_2.a.b, var_0.c.b))), vec4<f32>(1516f, _wgslsmith_f_op_f32(-480f - -108f), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(trunc(arg_2.a.b)))))).a);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_3.b, 762f)), _wgslsmith_div_f32(-430f, var_0.b.a.b))), arg_2.a.b, 216f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2108f, arg_2.a.b, arg_1.b.a.b, arg_2.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 806f, arg_3.b, 588f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, arg_3.b, -893f, 920f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_2.a.b, var_0.b.a.b, 1211f)))))).b.a;
    return func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_1.b.a.b, arg_3.b, var_1.b)))))))).b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = Struct_4(u_input.c, func_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-341f + arg_1.a.b), arg_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(arg_0.x, 18686u, u_input.e, u_input.d.x), arg_1.a.b, vec4<u32>(85953u, u_input.b, 30083u, arg_0.x), arg_1.a.e, -2147483647i), arg_1.a))), arg_1.a.b)));
    let var_1 = Struct_4(_wgslsmith_div_i32(~_wgslsmith_add_i32(-17084i | u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 0i, 0i, -55103i), vec4<i32>(1i, 12138i, arg_1.a.e, var_0.a))), var_0.b.b.a.e), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, 458f, 203f, 2332f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, arg_1.a.b, arg_1.a.b, var_0.b.a.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c.b, -1260f, var_0.b.c.b, 581f) + vec4<f32>(var_0.b.a.b, var_0.b.a.b, -1448f, arg_1.a.b)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b.a.b, var_0.b.a.b, arg_1.a.b, arg_1.a.b), vec4<f32>(-1133f, var_0.b.b.a.b, -772f, arg_1.a.b), vec4<bool>(arg_2, false, arg_2, true)))))));
    var var_2 = any(vec4<bool>(-var_1.b.a.e < -2147483647i, abs(_wgslsmith_clamp_u32(var_1.b.c.c.x, var_1.b.a.a.x, 55312u)) == ~arg_0.x, all(vec2<bool>(false, true)) && true, arg_2));
    global0 = array<vec3<f32>, 26>();
    return max(reverseBits(~(~var_1.b.a.a.x)), ~11496u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(383f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(4294967295u, 1u, u_input.e, 1u), -1194f, u_input.d, u_input.c, -38369i), Struct_1(vec4<u32>(4294967295u, 1u, 96879u, u_input.d.x), -250f, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), u_input.a, u_input.c)))));
    let var_1 = Struct_1(vec4<u32>(reverseBits(~4294967295u), func_5(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b)), vec4<u32>(4294967295u, 0u, 7679u, u_input.e), vec4<u32>(17595u, 0u, 4294967295u, u_input.d.x) << (vec4<u32>(u_input.d.x, u_input.e, 1u, 51868u) % vec4<u32>(32u))), func_4(func_2(vec4<f32>(-1000f, 389f, -793f, 1000f)), func_2(vec4<f32>(1116f, 1559f, -913f, 1000f)), Struct_2(Struct_1(vec4<u32>(2526u, u_input.e, u_input.b, 1u), 210f, u_input.d, u_input.a, 1i)), Struct_1(u_input.d, 176f, vec4<u32>(898u, 0u, u_input.d.x, 39849u), u_input.a, 2147483647i)), true), u_input.d.x, func_5(vec4<u32>(abs(0u), _wgslsmith_clamp_u32(0u, u_input.b, u_input.b), ~4294967295u, func_2(vec4<f32>(-595f, 280f, -1749f, -333f)).c.a.x), func_2(vec4<f32>(-361f, 918f, -1818f, 892f)).b, all(vec3<bool>(true, true, true)))), -691f, ~u_input.d << (vec4<u32>(u_input.b, ~74867u, ~_wgslsmith_mult_u32(76432u, u_input.d.x), ~countOneBits(u_input.d.x)) % vec4<u32>(32u)), u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -1i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.c), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_i32(u_input.c, u_input.c))), -2147483647i));
    var var_2 = Struct_4(abs(_wgslsmith_mult_i32(-_wgslsmith_add_i32(-38280i, 0i), ~53610i)), func_2(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-618f * var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f - -1999f)))));
    var var_3 = !all(vec4<bool>(false, any(vec4<bool>(true, false, false, false)), true, true));
    var var_4 = var_1.e;
    var_2 = Struct_4(firstTrailingBit(2147483647i), var_2.b);
    let var_5 = var_2.b.c.c.x;
    var var_6 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, var_2.b.b.a.b, -377f, var_2.b.c.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.a.a.x, _wgslsmith_f_op_f32(861f - -1000f), u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a.b, var_1.b, var_1.b, var_2.b.c.b) - vec4<f32>(1000f, var_1.b, -145f, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b.a.b, 867f, var_1.b, -760f))) * vec4<f32>(var_1.b, var_6.b.a.b, -818f, _wgslsmith_f_op_f32(trunc(var_2.b.b.a.b)))))));
}

