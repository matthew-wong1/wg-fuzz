struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> f32 {
    global0 = array<Struct_3, 12>();
    let var_0 = Struct_1(true, -176f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1986f, 1077f) * _wgslsmith_div_f32(-1000f, 847f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(358f + 1567f), _wgslsmith_f_op_f32(floor(-1144f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1669f, 2442f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f + 1587f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-170f)))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(round(-447f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), var_0.b);
    global0 = array<Struct_3, 12>();
    var var_2 = vec3<bool>(!var_0.a, any(vec3<bool>(true, -1150f <= var_1.c.x, select(arg_0.a >= -37104i, true, all(vec2<bool>(var_0.a, var_1.a))))), !((all(vec3<bool>(var_1.a, false, true)) & (var_1.a | false)) & var_1.a));
    return 1570f;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = vec2<u32>(countOneBits(firstTrailingBit(u_input.b.x)), u_input.c);
    global0 = array<Struct_3, 12>();
    var var_1 = Struct_2(0i, arg_0, reverseBits(vec4<u32>(u_input.c, ~_wgslsmith_add_u32(var_0.x, 75618u), abs(firstTrailingBit(u_input.b.x)), 1u)));
    let var_2 = ~max(~(~vec4<u32>(0u, var_1.c.x, 32395u, var_1.c.x) ^ var_1.c), var_1.c);
    let var_3 = Struct_1(any(vec4<bool>(false, arg_0.a, var_1.b.a != (u_input.b.x == var_2.x), true)), 1706f, _wgslsmith_f_op_vec2_f32(floor(var_1.b.c)), -692f);
    return select(!vec3<bool>(var_3.a, any(vec4<bool>(true, true, true, true)), true), !vec3<bool>(var_3.a, false, false), _wgslsmith_f_op_f32(1191f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1134f * var_3.b))) < var_3.c.x);
}

fn func_2() -> f32 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1429f * _wgslsmith_f_op_f32(f32(-1f) * -1071f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(245f, -150f), -838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f))), vec3<i32>(1i, -35288i, u_input.d.x));
    global0 = array<Struct_3, 12>();
    let var_1 = Struct_5(2147483647i, vec4<i32>(max(2147483647i >> ((1u >> (0u % 32u)) % 32u), _wgslsmith_mult_i32(0i, reverseBits(31259i))), 7207i, 9665i, _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-30095i, 1i, 1i, 96614i), u_input.a))));
    let var_2 = func_4(Struct_1(true, _wgslsmith_f_op_f32(min(var_0.a.x, -348f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, -1311f), _wgslsmith_f_op_f32(floor(var_0.a.x))) - var_0.a.zy), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_1)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))))));
    global0 = array<Struct_3, 12>();
    return _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.xw));
    var_0 = arg_1.wx;
    var var_1 = Struct_3(Struct_1(arg_0.x, arg_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - -603f), arg_1.x), _wgslsmith_f_op_vec2_f32(-arg_1.xz)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + -736f), _wgslsmith_f_op_f32(max(824f, var_0.x)))), _wgslsmith_f_op_f32(-arg_1.x)))), select(!vec4<bool>(true, all(arg_0.yz), arg_2 == false, !arg_0.x), vec4<bool>(all(!vec4<bool>(arg_2, false, arg_0.x, false)), u_input.b.x > 46276u, !arg_0.x && !arg_2, _wgslsmith_f_op_f32(arg_1.x - 419f) >= _wgslsmith_f_op_f32(-var_0.x)), select(vec4<bool>(any(vec4<bool>(arg_2, arg_2, arg_0.x, true)), func_4(Struct_1(arg_2, -1711f, arg_1.wx, 911f)).x, arg_2, true), vec4<bool>(true, arg_0.x && arg_2, !arg_2, false && arg_0.x), vec4<bool>(arg_0.x || false, true, 353f >= var_0.x, false))), var_0.x);
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c);
    var var_2 = -22768i;
    return u_input.c;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_0 = Struct_2(~(~u_input.d.x), arg_0.a, vec4<u32>(func_5(vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_f_op_f32(step(617f, 453f)), _wgslsmith_f_op_f32(func_2()), arg_0.a.c.x, _wgslsmith_f_op_f32(step(arg_0.a.d, 581f))), !all(vec3<bool>(false, arg_0.a.a, false))), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.xx), vec2<u32>(1u, arg_1)), u_input.b.x, ~_wgslsmith_mod_u32(~arg_1, arg_1)));
    let var_1 = arg_0;
    var_0 = Struct_2(var_0.a, var_0.b, vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 63517u), var_0.c.xz) | abs(var_0.c.x), abs(0u & u_input.c) | ~max(3063u, arg_1), 21099u, 42527u));
    return abs(_wgslsmith_mod_u32(firstLeadingBit(func_5(arg_0.b.wyw, vec4<f32>(var_1.a.d, var_0.b.d, -451f, arg_0.a.c.x), var_1.b.x) ^ countOneBits(var_0.c.x)), firstTrailingBit(0u)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<f32>) -> f32 {
    let var_0 = 620f;
    let var_1 = vec4<i32>(~(-65198i), _wgslsmith_dot_vec3_i32(arg_2.b, u_input.a.zzx), min(2147483647i, arg_2.b.x) | 2101i, -1i);
    let var_2 = select(~u_input.b.x, ~0u, arg_0.x) << (4294967295u % 32u);
    var var_3 = var_1.zyy;
    let var_4 = vec3<i32>(var_3.x, countOneBits(1i), ~(-max(-u_input.a.x, _wgslsmith_add_i32(14364i, var_1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-358f, arg_2.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(-arg_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_0 = vec2<u32>(~80456u, _wgslsmith_add_u32(0u, 4294967295u));
    global0 = array<Struct_3, 12>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(31965u, 12u)], u_input.b.x), 12u)], Struct_4(vec3<f32>(-1071f, -1281f, 1271f), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(180f, -768f, -502f) - vec3<f32>(282f, -446f, 346f))))), _wgslsmith_f_op_f32(-610f * _wgslsmith_f_op_f32(sign(284f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-498f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2461f, -1291f) + _wgslsmith_f_op_f32(abs(-1308f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1300f)))))));
    var_0 = countOneBits(min(u_input.b.zy, u_input.b.xz));
    let var_2 = 1i;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.zw, var_1.ww, vec2<bool>(false, false))))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(-119f)), -1513f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), -633f)))));
    var var_4 = -19479i;
    let x = u_input.a;
    s_output = StorageBuffer(min((abs(vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.c)) << (countOneBits(vec4<u32>(24421u, u_input.b.x, 56332u, u_input.c)) % vec4<u32>(32u))) & select(_wgslsmith_mod_vec4_u32(vec4<u32>(29036u, 0u, 104634u, u_input.b.x), vec4<u32>(42439u, 95215u, u_input.c, 76389u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, 113300u), vec4<u32>(0u, 43799u, u_input.c, 5522u)), vec4<bool>(true, true, true, true)), vec4<u32>(~u_input.c, ~u_input.b.x, ~_wgslsmith_add_u32(4294967295u, var_0.x), u_input.c)), ~_wgslsmith_clamp_u32(abs(0u) & u_input.b.x, u_input.b.x, func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.b.yz), 12u)], ~35288u)));
}

