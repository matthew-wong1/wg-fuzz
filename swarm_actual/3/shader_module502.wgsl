struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1354f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~1u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-622f, 114f)))))) + 176f);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-135f, 407f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1607f * -411f))))));
    var var_1 = vec2<u32>(36984u, var_0 << (abs(abs(48470u)) % 32u));
    var var_2 = Struct_2(u_input.a.wwz, 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-435f, -1000f))), vec2<f32>(361f, -715f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(668f, 1000f))))))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(countOneBits(0i), u_input.a.x), u_input.a.x), _wgslsmith_clamp_i32(-16199i, u_input.a.x | _wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, 50151i)), _wgslsmith_add_i32(1i, -u_input.a.x))));
    return -686f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = (~u_input.b.x >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.c.x, 124631u, u_input.b.x)), 1u), ~24988u) % 32u)) << (u_input.b.x % 32u);
    global0 = -663f;
    global0 = _wgslsmith_f_op_f32(func_3(select(!(!arg_0), arg_0, select(select(vec2<bool>(true, true), arg_0, arg_0), arg_0, all(vec3<bool>(false, arg_0.x, arg_0.x)))), !(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, true, false, false), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))));
    let var_1 = abs(countOneBits(u_input.a.zzx)) ^ (vec3<i32>(~32743i, 2147483647i, u_input.a.x) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(36771i, u_input.a.x, u_input.a.x) | -vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a.wxw));
    var var_2 = Struct_2(~(-(~u_input.a.wwx)), abs(u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, arg_1)), 1i);
    return select(max(vec3<u32>(u_input.c.x << (u_input.c.x % 32u), 1u, var_0) | vec3<u32>(var_2.b, 0u, ~4294967295u), vec3<u32>(_wgslsmith_sub_u32(select(u_input.c.x, 4294967295u, arg_0.x), select(var_2.b, 0u, arg_0.x)), 86335u, var_0)), ~max(vec3<u32>(var_0, 0u, ~u_input.b.x), vec3<u32>(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(18308u, var_2.b, u_input.b.x), vec3<u32>(46216u, 1u, 4294967295u)), 28121u)), select(select(vec3<bool>(select(true, arg_0.x, arg_0.x), var_2.a.x == 0i, true), !vec3<bool>(true, true, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(any(arg_0), true, false), vec3<bool>(any(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.x, true))), false, arg_0.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = firstLeadingBit(vec2<i32>(u_input.a.x, arg_2.d));
    var_0 = vec2<i32>(~(~var_0.x) << (arg_2.b % 32u), 0i);
    let var_1 = vec3<i32>(-74155i, var_0.x, ~(-max(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, var_0.x, u_input.a.x, -1i), vec4<i32>(2147483647i, 0i, var_0.x, 0i)))));
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(8343u, arg_2.b), u_input.c.x, 4294967295u) << (vec3<u32>(~arg_2.b, 3257u, arg_0) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b, 50350u, u_input.c.x), vec3<u32>(u_input.b.x, arg_2.b, 1u)) & (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b, 1u, 73218u), vec3<u32>(arg_0, 1u, arg_0)) << (~vec3<u32>(40253u, 15067u, 0u) % vec3<u32>(32u))));
    var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c.x, arg_0), ~(vec3<u32>(arg_2.b, arg_2.b, u_input.b.x) | vec3<u32>(0u, var_2.x, arg_0))), ~vec3<u32>(arg_2.b << (var_2.x % 32u), ~arg_0, _wgslsmith_sub_u32(49923u, 0u)), _wgslsmith_div_vec3_u32(func_2(vec2<bool>(arg_1, arg_1), vec2<f32>(-2353f, arg_2.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x, 40259u) & vec3<u32>(arg_0, arg_2.b, 96831u), select(vec3<u32>(0u, 10939u, arg_0), vec3<u32>(17286u, u_input.c.x, var_2.x), false))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(267f, -606f), -416f));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(select(_wgslsmith_dot_vec2_i32(arg_0.a.yz, vec2<i32>(arg_0.a.x, arg_0.a.x)), i32(-1i) * -2147483647i, true), u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-18307i, 3482i, u_input.a.x, 23818i)), ~vec4<i32>(arg_0.d, u_input.a.x, u_input.a.x, u_input.a.x)), 2147483647i), u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(ceil(arg_1)), arg_0.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(-570f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + 1000f)))));
    let var_2 = arg_0;
    let var_3 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, ~func_2(vec2<bool>(false, false), var_1.yx).x), u_input.c >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(10764u, 0u, 150488u, var_2.b), vec4<u32>(37033u, 0u, 0u, 35700u)), u_input.b.x << (abs(1u) % 32u)));
    let var_4 = all(vec2<bool>(true, true));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(35315u << (_wgslsmith_dot_vec4_u32(vec4<u32>(7490u, var_3.x, arg_0.b, 21477u), vec4<u32>(var_3.x, var_3.x, 4294967295u, u_input.b.x)) % 32u), select(!var_4, !var_4, any(vec2<bool>(false, false))), arg_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1633f, _wgslsmith_f_op_f32(ceil(var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, var_2.c.x) - arg_0.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, arg_0.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i);
    var var_1 = Struct_2(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -16240i), vec3<i32>(var_0.a, var_0.a, 34764i)), _wgslsmith_mult_i32(0i, u_input.a.x), ~var_0.a) & -min(-u_input.a.zwy, ~vec3<i32>(-17665i, 26150i, var_0.a)), 0u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(32580i, -2147483647i, var_0.a), u_input.a.xyx), 0u, _wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, false, Struct_2(u_input.a.wyy, 40944u, vec2<f32>(-1236f, -1987f), var_0.a))), u_input.a.x), -810f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2516f, -1487f), vec2<f32>(1000f, -860f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1413f, 1059f))) - _wgslsmith_f_op_vec2_f32(func_4(Struct_2(u_input.a.zxz, u_input.b.x, vec2<f32>(190f, -934f), var_0.a), -501f))), true)), u_input.a.x);
    let var_2 = var_1.b;
    var_0 = Struct_1(abs(var_1.d) & max(32424i, -abs(-2147483647i)));
    let var_3 = Struct_3(~vec2<u32>(1u >> (~var_1.b % 32u), ~0u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(sign(-586f)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1599f + 889f) - _wgslsmith_f_op_f32(-var_1.c.x))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1144f)), 1007f)), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - -2022f) * -198f)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)))), Struct_2(~u_input.a.xxy, max(max(u_input.c.x, countOneBits(14168u)), u_input.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec3<i32>(var_1.a.x, -1i, u_input.a.x), var_1.b, var_1.c, -2147483647i), var_1.c.x)), vec2<f32>(-166f, -166f), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(floor(var_1.c))), ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(32897i, -17650i, 2147483647i)), -vec3<i32>(var_1.d, var_1.a.x, var_1.a.x))));
    var_1 = Struct_2(~vec3<i32>(var_0.a, -2147483647i, 2147483647i), 0u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1779f, -1510f), var_3.b.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.c.x, 325f) * vec2<f32>(-1103f, var_1.c.x)))) + var_3.b.wz))), -1i >> (~4294967295u % 32u));
    var var_4 = -2147483647i;
    let var_5 = _wgslsmith_clamp_i32(0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 10367i), ~1i, var_0.a, _wgslsmith_mult_i32(u_input.a.x, var_3.c.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(23144i, var_1.a.x, var_3.c.a.x, 1i) | vec4<i32>(var_3.c.a.x, -24868i, u_input.a.x, -21130i), vec4<i32>(var_1.a.x, var_0.a, var_1.d, 7429i))), 0i | (_wgslsmith_mod_i32(abs(-13686i), _wgslsmith_mod_i32(var_1.d, var_0.a)) | 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(4294967295u, 42638u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63303u, 4294967295u, var_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(19509u, u_input.c.x, var_1.b, var_1.b), vec4<u32>(u_input.b.x, var_3.a.x, 50547u, 4294967295u))) % 32u)), ~(var_0.a << (var_1.b % 32u)), -1622i);
}

