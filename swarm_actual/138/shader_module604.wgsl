struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1165f, -402f, -416f, 103f), 0u, vec3<bool>(true, true, false));

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<f32> {
    global1 = vec4<i32>(global1.x, min(~abs(-global1.x), ~(-2147483647i)), ~(-1i), -447i);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a.yyw)));
    global1 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(select(arg_0 >> (arg_1 % 32u), 1i, global0.c.x || false), min(min(global1.x, -22423i), global1.x ^ 45881i), u_input.d.x, _wgslsmith_mod_i32(arg_0, 1i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0, global1.x, u_input.d.x, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-50130i, 35211i, 17935i, -1i), vec4<i32>(0i, u_input.d.x, global1.x, arg_0)))));
    global1 = vec4<i32>(2147483647i, 9749i, _wgslsmith_div_i32(arg_0, ~(-2147483647i ^ ~arg_0)), abs(arg_0));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f + var_0.x))))), _wgslsmith_mult_u32(abs(firstLeadingBit(4294967295u)), 95495u & global0.b), select(vec3<bool>(global0.c.x, global0.c.x, all(global0.c)), vec3<bool>(any(vec4<bool>(true, global0.c.x, global0.c.x, false)), global0.c.x, !(arg_0 <= 1i)), vec3<bool>(global0.c.x, global0.c.x, global0.c.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)))), _wgslsmith_div_f32(607f, global0.a.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(-17883i ^ _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, ~arg_2), arg_2, ~(15252i & arg_2)), ~(~(u_input.b.x << (49771u % 32u)))));
    let var_1 = Struct_3(~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.yz, -vec2<i32>(global1.x, 2147483647i)), arg_2, _wgslsmith_mult_i32(-6755i, u_input.d.x), _wgslsmith_div_i32(firstLeadingBit(51393i), arg_2)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(global0.a.x, -1298f, 809f, global0.a.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(8240u, 74284u, u_input.a, 1u), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), !(!global0.c)), Struct_1(_wgslsmith_f_op_vec4_f32(step(global0.a, vec4<f32>(var_0.x, -296f, 890f, global0.a.x))), countOneBits(0u), global0.c), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -405f))), -1032f, var_0.x)), _wgslsmith_f_op_vec2_f32(-global0.a.ww));
    var var_2 = -757i;
    let var_3 = ~_wgslsmith_add_vec3_i32(u_input.d, _wgslsmith_add_vec3_i32(u_input.d, var_1.a.zyw & global1.yyx) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(21383u, var_1.b.a.b), u_input.b.xz), ~4294967295u, abs(4294967295u)) % vec3<u32>(32u)));
    let var_4 = -1i;
    return _wgslsmith_f_op_f32(var_1.b.a.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-174f * var_1.b.c.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = arg_1.a;
    global0 = arg_1;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1700f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + -470f)), _wgslsmith_f_op_f32(-global0.a.x))), firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.b << (arg_1.b % 32u), u_input.c | global0.b), reverseBits(~0u))), vec3<bool>(!((true || arg_1.c.x) & arg_1.c.x), any(vec3<bool>(global0.c.x, false, global0.c.x)), true));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-873f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(-131f, -528f), _wgslsmith_f_op_f32(-312f + _wgslsmith_f_op_f32(func_2(vec2<i32>(global1.x, 0i), vec3<u32>(22337u, global0.b, u_input.b.x), global1.x)))))));
    var var_1 = reverseBits(u_input.b.x);
    return ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, ~(~global0.b)), _wgslsmith_mult_u32(~(~global0.b), countOneBits(u_input.a)), 135144u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = _wgslsmith_dot_vec3_i32((vec3<i32>(global1.x, firstTrailingBit(global1.x), u_input.d.x) & ~(~u_input.d)) & ~global1.zyz, ~(~(vec3<i32>(-1i) * -u_input.d)));
    let var_1 = Struct_3(reverseBits(max(vec4<i32>(-2147483647i, u_input.d.x ^ -2147483647i, -5632i, -global1.x), ~firstTrailingBit(vec4<i32>(63338i, u_input.d.x, 1i, 2658i)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-133f, arg_2.a.x, 1880f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_1, 1000f, -1000f))), ~firstLeadingBit(23218u), arg_2.c), arg_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, global0.a.x, global0.a.x), global0.a.wyx)), _wgslsmith_div_vec3_f32(arg_2.a.zxy, arg_2.a.wyy), vec3<bool>(any(vec3<bool>(arg_0, arg_2.c.x, arg_0)), false, arg_2.c.x)))), global0.a.yx);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.b.a.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_1, arg_2.a.x, var_1.b.c.x))))), arg_2.b, arg_2.c);
    return Struct_3(vec4<i32>(var_0, ~(-2036i), var_0, 2147483647i), var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(-455f - 455f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((u_input.c >> (6333u % 32u)) < _wgslsmith_clamp_u32(4294967295u, ~(46519u >> (0u % 32u)), global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(exp2(global0.a.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, global0.a)), (global0.b >> (func_1(vec2<i32>(u_input.d.x, global1.x), Struct_1(vec4<f32>(global0.a.x, global0.a.x, -424f, -1519f), 0u, vec3<bool>(global0.c.x, true, global0.c.x)), global1.x) % 32u)) | (global0.b | ~73965u), !select(global0.c, vec3<bool>(global0.c.x, false, true), true && global0.c.x)));
    global1 = var_0.a;
    let var_1 = Struct_2(var_0.b.a, func_4(!global0.c.x, -865f, func_4(any(!vec4<bool>(global0.c.x, global0.c.x, true, true)), -1551f, Struct_1(vec4<f32>(-868f, 186f, -858f, global0.a.x), _wgslsmith_add_u32(43612u, global0.b), global0.c)).b.a).b.a, _wgslsmith_div_vec3_f32(global0.a.yyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_0.b.b.a.x, 1769f), func_4(false, -921f, Struct_1(var_0.b.b.a, 1u, global0.c)).b.c)))));
    var var_2 = _wgslsmith_mult_vec4_u32(u_input.b, u_input.b);
    var_0 = Struct_3(var_0.a, func_4(any(var_0.b.b.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + -2395f))), var_1.b).b, vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + 898f)), _wgslsmith_f_op_f32(f32(-1f) * -370f)));
    let var_3 = max(1u, 17918u | ~firstLeadingBit(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(0i, ~(-1i >> (global0.b % 32u))), ~var_3);
}

