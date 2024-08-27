struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 0i, 33924i);

var<private> global1: bool;

var<private> global2: f32 = -999f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = abs(abs(14187i)) == _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(1i, -2147483647i, 1i, global0.x)), -abs(vec4<i32>(22028i, -7435i, global0.x, 1i))), reverseBits(~(vec4<i32>(global0.x, u_input.a, -1i, -25033i) & vec4<i32>(u_input.a, u_input.b, -2147483647i, -23635i))));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(step(-323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-461f)) + _wgslsmith_f_op_f32(1493f + 1000f))))), -2147483647i, vec3<u32>(firstTrailingBit(0u), u_input.c, _wgslsmith_clamp_u32(select(1u, u_input.c, any(vec3<bool>(arg_0, arg_0, arg_0))), ~firstLeadingBit(56631u), u_input.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1466f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f - -1649f))))));
    var var_1 = u_input.c;
    var var_2 = u_input.a;
    var_2 = reverseBits(var_0.b) & ~global0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1686f * -274f) + _wgslsmith_f_op_f32(select(var_0.a, 1000f, true))) - _wgslsmith_f_op_f32(f32(-1f) * -1756f))) + var_0.d);
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(round(-370f));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f)))), ~global0.x, _wgslsmith_div_vec3_u32(~((vec3<u32>(u_input.c, 71872u, u_input.c) << (vec3<u32>(1u, u_input.c, 4294967295u) % vec3<u32>(32u))) & vec3<u32>(1u, u_input.c, 174165u)), vec3<u32>(~firstLeadingBit(u_input.c), ~abs(4294967295u), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-395f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), -771f))))));
    let var_1 = var_0.b;
    global2 = var_0.d;
    var var_2 = true;
    return Struct_3(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), select(true, true, any(vec2<bool>(true, false)))), vec2<bool>(true == select(false, false, true), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), var_0.c.x, false, vec2<bool>(any(vec4<bool>(all(vec3<bool>(false, true, false)), false, true, true)), abs(_wgslsmith_dot_vec2_u32(var_0.c.zy, var_0.c.xz)) == _wgslsmith_dot_vec3_u32(vec3<u32>(27280u, 1u, var_0.c.x), ~vec3<u32>(u_input.c, 82877u, 1u))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> f32 {
    var var_0 = ~reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, u_input.b), -(~global0.xz)));
    global2 = -1352f;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(580f * -1000f) - -285f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-323f)), 1f, arg_1)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(734f, -638f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -479f)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(step(-188f, _wgslsmith_f_op_f32(-1f))))) * _wgslsmith_div_f32(-1134f, _wgslsmith_f_op_f32(step(945f, -1253f))));
    let var_1 = -global0.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(690f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-177f)))))))), _wgslsmith_f_op_f32(floor(392f))));
}

fn func_1() -> vec2<bool> {
    global1 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_2(), all(vec2<bool>(false, false)), func_2())))) >= _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f * -617f))));
    global2 = -213f;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -724f), 554f))), _wgslsmith_div_f32(-418f, -501f));
    global1 = !any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_1 = Struct_3(func_2().a, ~(~14059u), true, select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), all(vec2<bool>(true, false))), select(vec2<bool>(true, true), func_2().d, vec2<bool>(true, true)), false), select(vec2<bool>(false, false), select(vec2<bool>(true, false), func_2().d, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    return !func_2().d;
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.c;
    var var_1 = Struct_2(!vec3<bool>(any(arg_0.a), true | !arg_0.d.x, !arg_0.c), Struct_1(false, abs(~select(vec4<u32>(4294967295u, u_input.c, 1u, 91576u), vec4<u32>(u_input.c, 46687u, u_input.c, arg_0.b), vec4<bool>(arg_0.a.x, arg_0.d.x, arg_0.d.x, arg_0.a.x))), ~(~vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), vec3<u32>(~27332u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, arg_0.b), ~0u), _wgslsmith_add_u32(~9024u, min(43922u, 1u)))), Struct_1(arg_0.c, vec4<u32>(_wgslsmith_mod_u32(1u, ~51335u), abs(u_input.c | arg_0.b), ~arg_0.b, _wgslsmith_mod_u32(0u, 1u)), vec3<u32>(arg_0.b, 1u, u_input.c), vec3<u32>(select(~arg_0.b, ~u_input.c, false), arg_0.b, _wgslsmith_clamp_u32(u_input.c, arg_0.b, 1u) ^ _wgslsmith_mod_u32(29173u, 4294967295u))));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, firstTrailingBit(~667u)), vec2<u32>(0u, 0u)), arg_0.b, abs(~19001u), firstLeadingBit(min(0u, ~4294967295u)) >> (var_1.c.d.x % 32u));
    let var_3 = _wgslsmith_add_u32(8072u, _wgslsmith_add_u32(var_2.x, ~(~(~arg_0.b))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(471f * -185f))) - -526f))));
    return any(vec2<bool>(!var_1.c.a != true, _wgslsmith_clamp_i32(firstLeadingBit(31619i), 1i, global0.x) < global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(countOneBits(~vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(0u, u_input.c)) & max(firstLeadingBit(vec2<u32>(u_input.c, 1u) ^ vec2<u32>(3877u, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(24809u, 4294967295u), vec2<u32>(48751u, 1u) ^ vec2<u32>(0u, u_input.c), abs(vec2<u32>(94595u, 1u)))));
    var var_1 = select(select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, select(true, true, any(vec4<bool>(false, false, true, false))), any(vec2<bool>(true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, true), vec4<bool>(false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), true)), func_5(Struct_3(func_1(), 17255u, true, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), true));
    var var_2 = max(countOneBits(vec4<u32>(func_2().b, 12662u, 1u, var_0.x)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~var_0.x, 40664u), _wgslsmith_add_u32(var_0.x, ~42990u), u_input.c), var_0.x, reverseBits(reverseBits(u_input.c) << (u_input.c % 32u)), ~func_2().b));
    var_2 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(20559u, var_2.x, var_0.x, u_input.c) << (vec4<u32>(var_0.x, 4294967295u, 4294967295u, 29392u) % vec4<u32>(32u)), abs(vec4<u32>(var_0.x, u_input.c, 6353u, var_2.x))) & firstTrailingBit(vec4<u32>(var_0.x, firstTrailingBit(34982u), _wgslsmith_add_u32(4294967295u, u_input.c), ~1u)));
    let var_3 = _wgslsmith_mult_i32(global0.x, 25197i);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1120f, _wgslsmith_f_op_f32(func_4(func_2(), !var_1.x, func_2()))) * 657f), min(var_3, ~((1i | global0.x) >> (24208u % 32u))), var_2.xxw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 714f) - _wgslsmith_f_op_f32(-2263f + 2254f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(213f, _wgslsmith_f_op_f32(f32(-1f) * -345f)))))));
    global2 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_u32(var_0, var_0)), ~_wgslsmith_mult_i32(22124i | u_input.b, var_4.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(553f, -314f), vec2<f32>(2434f, var_4.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1382f, var_4.d) - vec2<f32>(964f, var_4.d))) + vec2<f32>(_wgslsmith_f_op_f32(-var_4.d), -482f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1013f, _wgslsmith_f_op_f32(-var_4.d)), vec2<f32>(_wgslsmith_div_f32(1000f, var_4.a), _wgslsmith_f_op_f32(-var_4.a)), vec2<bool>(var_1.x == var_1.x, !var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d)), _wgslsmith_mod_u32(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(4294967295u, 1u)), var_4.c.x), vec4<u32>(4294967295u >> (var_2.x % 32u), ~var_2.x, ~4294967295u, firstTrailingBit(0u)))));
}

