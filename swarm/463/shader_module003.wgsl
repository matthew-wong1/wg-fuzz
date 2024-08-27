struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 77243i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = ~firstTrailingBit(69323u);
    var var_1 = Struct_2(vec3<i32>(-countOneBits(~u_input.d.x), _wgslsmith_div_i32(reverseBits(1i), -19718i), select(~(~(-14251i)), reverseBits(48908i), all(vec4<bool>(arg_0, false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.c.x, true)), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - _wgslsmith_f_op_f32(-486f + _wgslsmith_f_op_f32(max(-780f, arg_1.b))))), 0u, ~_wgslsmith_add_vec3_u32(vec3<u32>(58659u, abs(0u), 54320u), vec3<u32>(1u, 40200u, ~arg_1.a)));
    let var_2 = _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(var_1.d.zx), vec2<u32>(26476u, 0u))), _wgslsmith_mult_vec2_u32(reverseBits(var_1.d.xz), var_1.d.xy)) << ((u_input.a >> (vec2<u32>(abs(4294967295u), 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = Struct_2(vec3<i32>(firstTrailingBit(var_1.a.x), 1i, arg_1.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, var_1.b.x, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, arg_1.b, 176f), var_1.b))))), firstLeadingBit(~(~arg_1.a | ~39556u)), abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.x, var_2.x, 0u) << (~var_1.d % vec3<u32>(32u)), reverseBits(countOneBits(var_1.d)))));
    global1 = var_1.a.xy;
    return select(arg_1.d.x, arg_1.d.x, arg_0 && any(!vec4<bool>(arg_0, arg_0, true, arg_0))) >> (0u % 32u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = max(~select(u_input.b.wxz, vec3<i32>(global0.x, -6116i, func_3(arg_0, Struct_1(29398u, -995f, vec3<f32>(-149f, -635f, -960f), vec4<i32>(global0.x, 99517i, 1i, 1i)))), !vec3<bool>(arg_0, arg_0, false)), ~u_input.c);
    global0 = -u_input.b.zy << (max(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(17624u, u_input.a.x), vec2<u32>(52776u, u_input.e))) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(24512u, 1u), u_input.a), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.a.x), vec2<u32>(u_input.a.x, u_input.e)) << (u_input.a.x % 32u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1425f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-200f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1717f * _wgslsmith_f_op_f32(f32(-1f) * -1010f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -341f))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-809f * var_1))), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(f32(-1f) * -350f), !arg_0))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_2 * var_2)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1301f)), !(!vec2<bool>(true, arg_0))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-581f, var_2)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1368f + var_1)))));
    return Struct_1(u_input.a.x, 1408f, vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(771f - 316f), 984f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1, var_1))))), vec4<i32>(abs(abs(-25905i) | countOneBits(u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0.x, ~global0.x), u_input.b.wzx ^ u_input.b.xzy), ~(~reverseBits(global1.x)), global1.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.c.c.yx;
    var var_1 = vec4<f32>(744f, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, -174f)) + _wgslsmith_f_op_f32(-arg_3))) * 377f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1895f), 1f)), -1385f)) * -402f));
    let var_2 = func_2(any(vec2<bool>(all(select(vec3<bool>(arg_0.b, false, false), vec3<bool>(false, arg_2.b, false), vec3<bool>(true, true, true))), false))).d;
    let var_3 = select(vec4<bool>(!arg_2.b, !arg_0.b, any(vec2<bool>(all(vec3<bool>(true, false, false)), true)), true && (false & any(vec2<bool>(arg_2.b, arg_2.b)))), vec4<bool>(false, true, false, !((1469f <= var_0.x) && all(vec3<bool>(false, arg_0.b, false)))), select(vec4<bool>(_wgslsmith_div_i32(var_2.x, -1i) == 2147483647i, 1048f < _wgslsmith_f_op_f32(sign(-678f)), true, arg_0.b), select(select(vec4<bool>(arg_2.b, arg_2.b, arg_0.b, arg_0.b), vec4<bool>(arg_2.b, arg_0.b, arg_0.b, arg_2.b), !vec4<bool>(false, arg_2.b, true, false)), vec4<bool>(false, true, arg_0.b, arg_2.b), !(!vec4<bool>(false, arg_0.b, arg_0.b, false))), false));
    global1 = vec2<i32>(abs(func_2(arg_2.b).d.x) | ~(38376i << (_wgslsmith_dot_vec3_u32(arg_0.e.d, arg_0.e.d) % 32u)), firstLeadingBit(~global1.x));
    return Struct_2(var_2.zxw, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(559f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1117f, var_0.x) + _wgslsmith_f_op_f32(arg_3 - -551f)), _wgslsmith_f_op_f32(trunc(arg_0.c.b))))), 1u, _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 30818u, arg_0.d.x), 0u, 46415u), vec3<u32>(min(u_input.e, u_input.e) >> (~u_input.e % 32u), arg_1, _wgslsmith_add_u32(~arg_1, ~0u)), ~reverseBits(~arg_0.e.d)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_3 {
    global0 = ((firstLeadingBit(select(u_input.c.yx, u_input.d, vec2<bool>(true, true))) >> (u_input.a % vec2<u32>(32u))) | (vec2<i32>(-19633i, global1.x) & vec2<i32>(~10905i, ~(-1i)))) >> (u_input.a % vec2<u32>(32u));
    global1 = -arg_1.xy;
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-705f, -1744f))), false, func_2(!any(vec3<bool>(true, false, false))), min(u_input.a, u_input.a), Struct_2(vec3<i32>(-2147483647i, 27025i, 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(548f, -1504f, -1176f), vec3<f32>(-1000f, 114f, -131f), true))), 0u, ~vec3<u32>(20843u, 1u, u_input.e))), ~min(u_input.a.x << (~34450u % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.e, 32600u, 47654u)), _wgslsmith_mod_u32(0u, u_input.a.x))), Struct_5(-24309i, true), -1030f);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(var_0.b.x))))), true, Struct_1(0u, _wgslsmith_f_op_f32(sign(354f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(ceil(func_4(Struct_3(2261f, true, Struct_1(10621u, var_0.b.x, var_0.b, u_input.b), vec2<u32>(3133u, 77426u), Struct_2(vec3<i32>(global1.x, u_input.d.x, global1.x), vec3<f32>(-362f, var_0.b.x, var_0.b.x), u_input.a.x, var_0.d)), u_input.e, Struct_5(-1i, true), var_0.b.x).b.x)), _wgslsmith_f_op_f32(-var_0.b.x)), u_input.b ^ (select(u_input.b, u_input.b, vec4<bool>(true, true, true, false)) << (firstTrailingBit(vec4<u32>(4294967295u, var_0.d.x, 32239u, 4294967295u)) % vec4<u32>(32u)))), u_input.a, func_4(Struct_3(var_0.b.x, 1u > var_0.d.x, Struct_1(max(1u, 1u), _wgslsmith_div_f32(var_0.b.x, 1589f), _wgslsmith_f_op_vec3_f32(-var_0.b), firstTrailingBit(vec4<i32>(arg_0, arg_1.x, arg_0, var_0.a.x))), u_input.a, Struct_2(vec3<i32>(1i, 1i, -2147483647i), vec3<f32>(var_0.b.x, -1235f, -738f), var_0.c, firstLeadingBit(var_0.d))), firstLeadingBit(65193u << (u_input.e % 32u)) & u_input.e, Struct_5(~(-global0.x), true), _wgslsmith_f_op_f32(f32(-1f) * -631f)));
    var var_2 = Struct_3(var_1.e.b.x, any(select(select(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, false), vec2<bool>(true, true)), !vec2<bool>(false, var_1.b), select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_1.b, false), vec2<bool>(false, var_1.b)), any(vec2<bool>(false, var_1.b))), any(!vec2<bool>(false, var_1.b)))), var_1.c, min(abs(u_input.a >> (var_1.d % vec2<u32>(32u))), ~abs(var_1.d)) << (~var_1.e.d.yx % vec2<u32>(32u)), var_1.e);
    return Struct_3(1022f, all(!(!select(vec2<bool>(true, var_1.b), vec2<bool>(true, false), var_2.b))), var_2.c, vec2<u32>(min(abs(select(var_2.c.a, u_input.a.x, var_1.b)), var_2.d.x), u_input.e), var_1.e);
}

fn func_5(arg_0: Struct_3) -> u32 {
    var var_0 = select(vec4<bool>(true, all(!select(vec3<bool>(false, true, true), vec3<bool>(arg_0.b, true, true), vec3<bool>(arg_0.b, arg_0.b, true))), !all(vec3<bool>(true, arg_0.b, arg_0.b)), !(!all(vec4<bool>(true, true, arg_0.b, arg_0.b)))), vec4<bool>(false, func_1(-2147483647i, abs(u_input.b.xzz)).b | arg_0.b, any(vec4<bool>(all(vec3<bool>(false, arg_0.b, false)), arg_0.c.c.x <= arg_0.c.c.x, arg_0.b, true & arg_0.b)), arg_0.b), arg_0.b);
    let var_1 = func_1(~(-u_input.d.x), vec3<i32>(u_input.b.x, -(~u_input.b.x), 0i));
    global1 = -vec2<i32>(15537i, func_4(func_1(var_1.c.d.x, vec3<i32>(-23865i, 0i, -1i)), ~4294967295u, Struct_5(global0.x, true), _wgslsmith_f_op_f32(step(var_1.e.b.x, var_1.a))).a.x & 1i);
    global0 = arg_0.c.d.wx;
    var_0 = vec4<bool>(var_0.x, func_1(_wgslsmith_mult_i32(arg_0.e.a.x, _wgslsmith_clamp_i32(arg_0.c.d.x, -arg_0.c.d.x, 1i)), min(vec3<i32>(-24933i, global0.x, -1i), func_2(true).d.xzw) << (arg_0.e.d % vec3<u32>(32u))).b, all(vec4<bool>(1i <= global0.x, false, _wgslsmith_f_op_f32(step(-598f, 1413f)) < 283f, true)), !arg_0.b);
    return func_2(arg_0.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~u_input.e), max(func_5(func_1(u_input.b.x, select(vec3<i32>(global1.x, 0i, 1i), u_input.b.zww, false))), ~firstTrailingBit(_wgslsmith_div_u32(4294967295u, 29696u))), func_1(~(-2147483647i), vec3<i32>(~(-20120i), 2147483647i, global0.x)).b);
    var var_1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f * -472f) + 1451f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-170f, -153f, -278f), vec3<f32>(-320f, 1112f, 1463f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, 738f, 179f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(295f, -715f, -1678f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(979f, 240f, 1437f)))), vec3<f32>(-1142f, _wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(ceil(442f)))), -firstLeadingBit(firstTrailingBit(u_input.b)));
    global1 = -vec2<i32>(_wgslsmith_mult_i32(-u_input.d.x, global1.x | 39770i), _wgslsmith_div_i32(-(40131i ^ u_input.c.x), var_1.d.x));
    var var_2 = Struct_1(select(firstTrailingBit(var_0), abs(var_0), !any(vec2<bool>(false, true))), -697f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(-var_1.c.x))), vec4<i32>(~543i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -12683i, global1.x, -13145i), var_1.d), abs(var_1.d | vec4<i32>(0i, -51653i, u_input.c.x, 53117i))), firstTrailingBit(2147483647i), _wgslsmith_mod_i32(-1i, -2147483647i)));
    var_1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f + 1122f) * _wgslsmith_f_op_f32(ceil(-871f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(f32(-1f) * -188f)))), vec4<i32>(-1i) * -(~(~vec4<i32>(-1i, var_1.d.x, u_input.c.x, u_input.c.x))));
    var var_3 = !(!(!all(vec2<bool>(true, false)))) | !((func_1(global0.x, var_2.d.zzy).e.b.x <= _wgslsmith_f_op_f32(trunc(var_2.c.x))) != false);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x, var_1.d.xyy);
}

