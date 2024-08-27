struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.a, select(vec2<u32>(u_input.c, 0u), vec2<u32>(35393u, 28089u), vec2<bool>(true, false))), reverseBits(firstTrailingBit(arg_0.a)), ~firstTrailingBit(arg_0.a)), max(vec2<u32>(1u, ~arg_0.c), _wgslsmith_sub_vec2_u32(arg_0.a, arg_0.a)), vec2<u32>(max(1u, abs(1u)), 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x) + 214f)), _wgslsmith_f_op_f32(-arg_0.b.x), 1862f), u_input.c, arg_0.d);
    var var_1 = Struct_3(Struct_2(~(~77419i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-608f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b + var_0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1211f, arg_0.b.x, arg_0.b.x)))));
    var_1 = Struct_3(Struct_2(-32874i, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * 512f), -1153f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))), arg_0.b);
    var var_2 = false;
    var var_3 = true;
    return arg_0.a.x >> (arg_0.c % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec2<u32> {
    var var_0 = Struct_1(vec2<u32>(1u, 25812u), arg_0.b, ~(0u << (abs(arg_0.c) % 32u)), select(~_wgslsmith_mod_vec2_i32(arg_0.d >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), reverseBits(vec2<i32>(15147i, u_input.a))), ~(~arg_0.d), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_1 = vec2<bool>(false, (true && !all(vec4<bool>(false, false, false, false))) && true);
    var_0 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(39417u, arg_0.c) & arg_0.c, (u_input.c << (39106u % 32u)) & u_input.c), arg_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * arg_0.b)))), arg_0.a.x, -vec2<i32>(-(~1i), 2147483647i));
    let var_2 = Struct_2(-70027i, var_0.b.x);
    var var_3 = select(vec4<bool>((!var_1.x || var_1.x) && false, !(any(var_1) & true), true, var_1.x), vec4<bool>(all(select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), false), !vec3<bool>(var_1.x, var_1.x, var_1.x), !var_1.x)), !any(!vec4<bool>(false, var_1.x, false, true)), var_1.x, 15825i > firstLeadingBit(var_0.d.x)), var_1.x);
    return ~_wgslsmith_sub_vec2_u32(select(var_0.a, arg_0.a, var_2.a < -var_0.d.x), reverseBits(~arg_0.a));
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_1(func_4(Struct_1(abs(min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(9858u, 73686u))), vec3<f32>(_wgslsmith_f_op_f32(1683f - -1000f), arg_0.x, _wgslsmith_f_op_f32(floor(-150f))), 28894u, abs(select(vec2<i32>(47453i, 64909i), vec2<i32>(51027i, -10546i), vec2<bool>(false, false)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(37136u, u_input.c)), ~1u) << (func_3(Struct_1(vec2<u32>(4294967295u, u_input.c), vec3<f32>(-267f, arg_0.x, arg_0.x), u_input.c, vec2<i32>(u_input.b, u_input.b))) % 32u), ~u_input.b), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-536f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 299f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + -1870f))), arg_0.x), u_input.c, _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.a, -2147483647i) >> (func_4(Struct_1(vec2<u32>(u_input.c, 18258u), vec3<f32>(arg_0.x, arg_0.x, -910f), 0u, vec2<i32>(u_input.a, 20684i)), 4294967295u, 2147483647i) % vec2<u32>(32u))), vec2<i32>(max(_wgslsmith_clamp_i32(u_input.a, u_input.b, u_input.a), _wgslsmith_div_i32(u_input.b, 18990i)), 3808i)));
    let var_1 = u_input.c;
    let var_2 = Struct_2(var_0.d.x, _wgslsmith_div_f32(808f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    let var_3 = var_0;
    var var_4 = Struct_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(true, select(false, false, false)), false));
    return select(abs(~vec3<u32>(var_0.c >> (var_0.c % 32u), _wgslsmith_mult_u32(71176u, var_1), 75431u)), vec3<u32>(~101763u, 4294967295u, _wgslsmith_add_u32(5927u, ~39074u)), true);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f)), 816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1833f))), 1239f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.x, arg_2.b.x, -542f, -1292f), vec4<f32>(arg_2.b.x, 514f, 1000f, 2127f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.x * arg_2.b.x))), arg_2.b.x, arg_2.b.x), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 127f))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_div_f32(var_0.x, -1114f)))), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-231f - var_0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(486f, 1566f, var_0.x, -127f))))))));
    let var_1 = true;
    let var_2 = Struct_2(firstLeadingBit(~1i), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(step(316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(min(324f, -464f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(249f - var_2.b) * -888f)) * _wgslsmith_f_op_f32(f32(-1f) * -1037f))));
    return 0i;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: bool) -> vec2<i32> {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(-753f, arg_2)))));
    let var_2 = Struct_1(max(vec2<u32>(4294967295u, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, u_input.c)) & vec2<u32>(_wgslsmith_mod_u32(u_input.c, 29953u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 71113u, u_input.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -549f, var_1.x) * vec3<f32>(var_1.x, var_1.x, arg_2)))) + vec3<f32>(arg_2, 616f, _wgslsmith_f_op_f32(f32(-1f) * -1560f))), 68330u, ~vec2<i32>(-_wgslsmith_add_i32(arg_1, 2147483647i), ~15399i));
    let var_3 = func_5(~_wgslsmith_mod_vec3_u32(func_2(var_2.b.xz) >> (vec3<u32>(1u, 4294967295u, 30676u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(585u, 4294967295u, u_input.c)) & min(vec3<u32>(58745u, u_input.c, u_input.c), vec3<u32>(4294967295u, var_2.c, u_input.c))), firstLeadingBit(firstLeadingBit(-vec3<i32>(-1i, 2147483647i, u_input.b))), Struct_1(~var_2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, _wgslsmith_div_f32(var_1.x, var_2.b.x), 1467f), vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -269f), 1518f), arg_0.a.x)), var_2.a.x, vec2<i32>(-1i) * -vec2<i32>(1i, arg_1)));
    let var_4 = Struct_3(Struct_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1, var_3) | -1i, firstTrailingBit(49969i)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, -2059f), -806f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1043f, var_2.b.x, 518f), var_2.b))))));
    return vec2<i32>(-1i, countOneBits(abs(func_5(vec3<u32>(0u, u_input.c, var_2.c), vec3<i32>(arg_1, var_2.d.x, var_4.a.a), var_2)))) | var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(749f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-365f, -1000f)))) * _wgslsmith_f_op_f32(ceil(-1255f)))));
    var var_1 = -(~_wgslsmith_add_vec2_i32(-func_1(Struct_4(vec2<bool>(true, true)), 65252i, var_0.x, false), -vec2<i32>(u_input.a, 1i)));
    var_1 = _wgslsmith_div_vec2_i32(-min(func_1(Struct_4(vec2<bool>(true, true)), _wgslsmith_sub_i32(var_1.x, 1i), 1460f, true), -(~vec2<i32>(u_input.a, 1i))), vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(-1i, -44343i), ~_wgslsmith_add_i32(u_input.b, var_1.x)), 2147483647i));
    let var_2 = var_0.x;
    var_1 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(abs(0i)), ~11765i), vec2<i32>(0i, -2147483647i));
    var var_3 = 0u;
    let var_4 = vec3<bool>(select(false, !any(vec4<bool>(true, false, true, false)), !select(false, true, all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(213f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_0.x))) > var_2, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1621f, -1643f, -1000f, var_2) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -408f, 935f, var_0.x) - vec4<f32>(var_2, var_2, 501f, -575f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, 944f, -1049f, -887f)))))), max(~(countOneBits(vec3<i32>(var_1.x, u_input.b, u_input.a)) >> ((vec3<u32>(u_input.c, 1u, u_input.c) | vec3<u32>(u_input.c, u_input.c, 85367u)) % vec3<u32>(32u))), vec3<i32>(2147483647i, ~u_input.b, max(-2147483647i, -2147483647i)) >> (firstTrailingBit(func_2(vec2<f32>(var_0.x, var_2))) % vec3<u32>(32u))), max(vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(0u, u_input.c, 9838u)), ~vec3<u32>(1u, u_input.c, u_input.c)), u_input.c, ~min(4294967295u, 12529u), countOneBits(~u_input.c)), (vec4<u32>(14469u, u_input.c, 1u, 3989u) & abs(vec4<u32>(u_input.c, u_input.c, 98141u, u_input.c))) << (((vec4<u32>(0u, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, u_input.c, 40940u, 1u) % vec4<u32>(32u))) << ((vec4<u32>(u_input.c, u_input.c, 49084u, u_input.c) & vec4<u32>(u_input.c, 76091u, 5365u, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

