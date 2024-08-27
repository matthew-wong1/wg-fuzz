struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = 29181u;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 3u)]))))), u_input.c.x < 0i, -214f);
    var_0 = ~abs(4294967295u) << (u_input.d.x % 32u);
    return _wgslsmith_div_f32(-781f, 612f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<f32, 3>();
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_clamp_i32(-60718i, i32(-1i) * -46304i, u_input.e | ~(-1i)), firstLeadingBit(1i), _wgslsmith_div_i32(-78769i, u_input.c.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-162f)) + _wgslsmith_f_op_f32(func_3()))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true))), vec2<f32>(882f, _wgslsmith_f_op_f32(f32(-1f) * -950f)), false, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1413f * 1405f))) - _wgslsmith_f_op_f32(f32(-1f) * -420f)))));
    var var_2 = _wgslsmith_mult_vec3_u32(min(u_input.d.wxz, u_input.d.wxw) << ((_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 4294967295u, 1u), u_input.d.yzy), u_input.d.xxy) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, 9193u), u_input.d.wwx)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(~(u_input.b | 1u), ~_wgslsmith_mult_u32(83763u, 0u)), ~u_input.b, u_input.d.x & u_input.d.x));
    let var_3 = -vec4<i32>(select(select(var_0.x, countOneBits(arg_0), var_1.b.x), u_input.e, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, arg_0, -566i, -20803i), reverseBits(vec4<i32>(12187i, u_input.c.x, -30966i, -32888i))) ^ max(i32(-1i) * -52098i, var_0.x & arg_0), (1i << (~var_2.x % 32u)) >> (~firstLeadingBit(0u) % 32u), ~18529i);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.e)) + _wgslsmith_div_f32(-740f, global0[_wgslsmith_index_u32(~var_2.x, 3u)])) + _wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 3u)]))))), !vec2<bool>(true, var_1.b.x), _wgslsmith_f_op_vec2_f32(-var_1.c), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(1531f + _wgslsmith_f_op_f32(-var_1.a)))));
}

fn func_1() -> vec2<i32> {
    global1 = ~u_input.c.x << (~(~u_input.a) % 32u);
    let var_0 = func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(1533i, 30164i, 1i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 1u), firstTrailingBit(u_input.d.wyy), ~u_input.d.zww) % vec3<u32>(32u)), abs(abs(vec3<i32>(-32008i, 0i, 0i))) >> (reverseBits(u_input.d.wwz) % vec3<u32>(32u))));
    let var_1 = min(u_input.d, min(u_input.d ^ u_input.d, vec4<u32>(_wgslsmith_div_u32(~u_input.a, 1u), u_input.b, _wgslsmith_add_u32(u_input.a, max(u_input.b, u_input.b)), _wgslsmith_mult_u32(~323u, _wgslsmith_dot_vec2_u32(vec2<u32>(80025u, u_input.a), vec2<u32>(4294967295u, u_input.b))))));
    let var_2 = func_2(_wgslsmith_div_i32(u_input.e, -(~u_input.c.x)));
    var var_3 = func_2(u_input.e);
    return _wgslsmith_mult_vec2_i32(u_input.c, u_input.c) & u_input.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global1 = min(~(-2147483647i | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_0.x, arg_3.x, 0i), vec4<i32>(arg_3.x, 38207i, -11261i, -55145i)), 1i)), arg_0.x);
    let var_0 = arg_1;
    var var_1 = vec3<i32>(15028i, 0i, u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(reverseBits(abs(40645u)) & arg_2, 3u)], -1053f));
    var var_3 = !select(vec3<bool>(!arg_1.d, !any(vec3<bool>(var_0.d, var_0.d, var_0.b.x)), false), !vec3<bool>(var_0.d, any(vec3<bool>(var_0.b.x, false, false)), !arg_1.b.x), vec3<bool>(!all(vec2<bool>(var_0.b.x, true)), true, any(arg_1.b) | var_0.b.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(159f, -530f)) - 953f))) + var_0.c.x), func_2(select(~(-25652i), abs(max(arg_3.x, 1i)), _wgslsmith_f_op_f32(ceil(1000f)) == _wgslsmith_f_op_f32(-var_0.a))).b, arg_1.c, -7497i > arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1601f)) * _wgslsmith_f_op_f32(func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-func_1(), func_2(u_input.e), ~(~0u), vec2<i32>(firstTrailingBit(-41130i << (countOneBits(u_input.d.x) % 32u)), max(u_input.c.x, ~(-68062i))));
    var var_1 = func_2(firstTrailingBit(u_input.e));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), var_0.c.x);
    global1 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, u_input.d.x, u_input.a), 3u)]), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(12006u, u_input.b), 3u)]), var_1.b, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-var_0.e)), -939f == var_2)), var_2), !(!(var_1.b.x & true)), _wgslsmith_f_op_f32(var_0.e + var_1.e));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(550f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))), 1000f), func_4(~_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.e, 1i), vec2<i32>(u_input.e, u_input.e)), func_2(countOneBits(1i)), u_input.a, vec2<i32>(u_input.e, -u_input.e)).b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(f32(-1f) * -562f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-338f - global0[_wgslsmith_index_u32(1025u, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_3.x)))));
    global1 = -_wgslsmith_sub_i32(~(u_input.e & -2147483647i), 2147483647i | (1i ^ u_input.e)) << (0u % 32u);
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + func_2(~u_input.c.x).c) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, var_3.x) + vec2<f32>(1000f, var_5.c.x)))))), u_input.a, u_input.b, var_1.c);
}

