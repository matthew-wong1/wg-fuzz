struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(u_input.a, u_input.a);
    var_0 = Struct_4(~(-(select(u_input.a, var_0.a, true) ^ -vec4<i32>(-1i, u_input.d.x, 7994i, -56335i))), u_input.a);
    global0 = _wgslsmith_div_i32(-2147483647i, u_input.a.x);
    var_0 = Struct_4(u_input.a, ~u_input.a);
    var_0 = Struct_4(_wgslsmith_div_vec4_i32(select(~vec4<i32>(-2147483647i, var_0.b.x, -2147483647i, var_0.a.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -45644i, 31758i, u_input.a.x), vec4<i32>(-2147483647i, u_input.d.x, 6494i, -2147483647i)), true), u_input.a), u_input.a);
    return Struct_1(u_input.c, !select(vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), vec3<bool>(all(vec2<bool>(true, true)), select(false, true, false), true), !any(vec3<bool>(true, true, false))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    global0 = arg_2.b.x;
    let var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c & arg_3.x, _wgslsmith_mod_u32(arg_1, arg_1)), vec2<u32>(select(arg_1, u_input.b, true), arg_3.x)), reverseBits(vec2<u32>(arg_3.x ^ u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c))));
    let var_1 = Struct_2(countOneBits(arg_2.b.wwx), ~(~(arg_1 ^ countOneBits(21373u))));
    var var_2 = Struct_5(func_2().b, abs(vec2<u32>(firstLeadingBit(123152u), ~4294967295u)));
    var var_3 = abs(arg_2.a.x ^ firstTrailingBit(var_1.a.x));
    return arg_2.b.x;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(u_input.a.yzz, abs(1u));
    var var_1 = func_2();
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -_wgslsmith_mod_i32(u_input.a.x, u_input.d.x), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1101f, -1016f, 940f, -299f), vec4<f32>(138f, 411f, 586f, 712f)), ~15621u, Struct_4(u_input.a, u_input.a), ~vec4<u32>(0u, 26371u, 6552u, 19493u)), i32(-1i) * -1i), vec4<i32>(_wgslsmith_clamp_i32(37074i, 0i, _wgslsmith_mod_i32(-34544i, u_input.d.x)), _wgslsmith_mod_i32(46934i, u_input.a.x), 0i, _wgslsmith_dot_vec2_i32(var_0.a.yy, var_0.a.yx))) >= _wgslsmith_dot_vec4_i32(~(_wgslsmith_div_vec4_i32(u_input.a, u_input.a) | (vec4<i32>(u_input.d.x, var_0.a.x, 21129i, 1i) | u_input.a)), select(-(~u_input.a), vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, var_0.a.x, u_input.a.x), -1i, 1i, var_0.a.x ^ -8713i), 1u < ~var_1.a));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(371f, 1236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-533f + -450f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f + -261f))))), -1374f, !var_1.b.x));
    let var_4 = 1u & _wgslsmith_mult_u32(var_0.b, 0u & (_wgslsmith_dot_vec2_u32(vec2<u32>(519u, u_input.b), vec2<u32>(u_input.b, var_1.a)) ^ ~u_input.c));
    return ~reverseBits(var_4);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    global0 = arg_2.a.a.x;
    global0 = reverseBits(countOneBits(-8558i));
    var var_0 = func_2();
    var_0 = Struct_1(0u, func_2().b);
    global0 = arg_1.a.x;
    return min(reverseBits(firstTrailingBit(_wgslsmith_div_i32(arg_1.b.x, 52971i))), u_input.d.x) ^ arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), Struct_4(u_input.a, ~countOneBits(select(u_input.a, u_input.a, true))), Struct_3(Struct_2(~(u_input.a.zyx & u_input.d), _wgslsmith_add_u32(u_input.c, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(988f + _wgslsmith_f_op_f32(991f * 163f)), 1149f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -155f))))));
    global0 = func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, -1677f, 1000f, -227f) + vec4<f32>(-425f, -663f, -734f, -1922f)), _wgslsmith_div_vec4_f32(vec4<f32>(-369f, 322f, 118f, -557f), vec4<f32>(-1863f, 234f, 871f, -424f)))))), 1u, Struct_4(u_input.a | vec4<i32>(reverseBits(u_input.d.x), ~2147483647i, u_input.d.x, 0i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.d.x), -u_input.a, vec4<i32>(1i, u_input.d.x, -1i, u_input.d.x)), -u_input.a, u_input.a)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 36598u, u_input.b, u_input.c), vec4<u32>(31983u, 1u, u_input.b, 0u)) ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b, 21617u, 18769u, 4294967295u), vec4<u32>(u_input.c, u_input.c, 0u, 1u), true), ~vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c))));
    let var_0 = abs(u_input.d.x);
    let var_1 = countOneBits(vec3<u32>(_wgslsmith_mult_u32(~min(7345u, u_input.c), ~(~1u)), abs(u_input.b), ~u_input.b));
    var var_2 = -146f;
    let var_3 = Struct_5(func_2().b, _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(u_input.b, 69102u)), vec2<u32>(~0u, ~u_input.b)) ^ vec2<u32>(min(19048u, 24740u) ^ max(u_input.c, u_input.c), abs(4294967295u)));
    var var_4 = Struct_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.a.yyz, vec3<i32>(1i, -1i, var_0))), abs(vec3<i32>(u_input.d.x, var_0, 1i) >> (var_1 % vec3<u32>(32u))))), ~func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.b.x ^ _wgslsmith_add_u32(var_4.b, 1u), u_input.c) | _wgslsmith_mult_vec2_u32(~var_1.zx, var_1.zy), max(max(11957i, var_4.a.x), abs(var_4.a.x) & -abs(u_input.a.x)));
}

