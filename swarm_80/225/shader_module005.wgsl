struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, false, false, true, false, true, true, true, true, true, false, false, true, false, true, true, false, false, false, true, false, false, false);

var<private> global2: u32 = 0u;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1968f * -518f)))) + _wgslsmith_f_op_f32(436f - 2622f));
    global0 = _wgslsmith_f_op_f32(select(847f, _wgslsmith_f_op_f32(trunc(847f)), arg_0.x));
    let var_0 = arg_2.x;
    global0 = _wgslsmith_f_op_f32(abs(1368f));
    let var_1 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(538f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(375f, -589f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(countOneBits(countOneBits(abs(vec4<i32>(arg_1, 2147483647i, 0i, arg_1) << (vec4<u32>(arg_2, arg_2, arg_2, arg_2) % vec4<u32>(32u))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(global1[_wgslsmith_index_u32(58674u, 24u)], global1[_wgslsmith_index_u32(arg_2, 24u)], true, global1[_wgslsmith_index_u32(arg_2, 24u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false), !vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(22836u, 24u)]), vec4<i32>(arg_1, arg_0.x, -1i, -1i))), _wgslsmith_f_op_f32(sign(-968f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(857f, 324f), vec2<f32>(-884f, -361f), global1[_wgslsmith_index_u32(u_input.b.x, 24u)])) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -292f), vec2<f32>(-672f, -454f), false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 150f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1836f, 142f) + vec2<f32>(-955f, 1029f)))), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, firstLeadingBit(arg_2), u_input.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_2, 28386u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, arg_2)), vec4<u32>(60424u, 49907u, 1u, 0u) & vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.b.x), ~vec4<u32>(u_input.a.x, u_input.b.x, 85645u, 4294967295u)))));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.b.x, 521f))))), _wgslsmith_f_op_f32(f32(-1f) * -1162f), vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f + 1000f) - _wgslsmith_f_op_f32(-var_0.b.a.x))), var_0.b.b.x));
    var var_2 = Struct_2(-vec4<i32>(1i, 22299i, 0i, -(~u_input.c.x)), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.a.x) - vec2<f32>(1696f, var_0.b.a.x)))) - _wgslsmith_f_op_vec2_f32(var_0.b.b * _wgslsmith_f_op_vec2_f32(-var_0.b.a))), _wgslsmith_mult_vec4_u32(~reverseBits(var_0.b.c), var_0.b.c | ~vec4<u32>(u_input.b.x, var_0.b.c.x, arg_2, arg_2))));
    var_2 = Struct_2(vec4<i32>(~(-(~1i)), -2147483647i, -1i, 0i), var_0.b);
    var var_3 = Struct_2(select(select(vec4<i32>(var_0.a.x, 8427i, arg_1, 0i), reverseBits(vec4<i32>(arg_1, 2147483647i, 13881i, 34753i)), global1[_wgslsmith_index_u32(min(11809u, 1u), 24u)]) | var_2.a, (var_0.a & _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 1i, 15718i, var_2.a.x), var_2.a)) ^ vec4<i32>(_wgslsmith_div_i32(var_2.a.x, arg_1), 1i, reverseBits(arg_0.x), u_input.c.x), vec4<bool>(global1[_wgslsmith_index_u32(~var_0.b.c.x << (4294967295u % 32u), 24u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(var_2.b.c.x, 24u)], true, false)), false, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.c.zz)))), _wgslsmith_f_op_vec2_f32(-var_2.b.b), var_2.b.c));
    return Struct_2(firstLeadingBit(~(~vec4<i32>(u_input.c.x, var_3.a.x, arg_0.x, var_0.a.x))), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(max(-1000f, 884f))) - vec2<f32>(var_1.b, var_3.b.b.x)), vec4<u32>(u_input.b.x, 45214u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.a.x), ~countOneBits(121968u))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = ~_wgslsmith_mult_i32(max(~_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(18761i, u_input.c.x >> (arg_0 % 32u), 0i)), -4084i);
    global2 = ~(~(~1u));
    var var_1 = func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.c.x, u_input.c.x, 9214i) ^ vec3<i32>(9503i, 0i, u_input.c.x)), countOneBits(abs(vec3<i32>(u_input.c.x, u_input.c.x, 320i)))), -29765i), 1i, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(9889u, arg_0))), vec2<u32>(firstTrailingBit(~u_input.a.x), arg_0)));
    var var_2 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(4294967295u, 47529u))), vec2<u32>(min(_wgslsmith_mult_u32(var_1.b.c.x, 34025u), ~(~u_input.a.x)), reverseBits(abs(~0u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_1.b.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.a.x, -213f))), vec2<f32>(708f, _wgslsmith_f_op_f32(-var_1.b.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.b.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.a - var_1.b.b)))), ~var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(~(~50302u)));
    global1 = array<bool, 24>();
    var var_1 = vec4<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), select(-(~(~16748i)), u_input.c.x, !(!(u_input.a.x >= var_0.c.x))), u_input.c.x, 2147483647i);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))), vec2<bool>(!(var_1.x < u_input.c.x), all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 24u)], global1[_wgslsmith_index_u32(37372u, 24u)]), global1[_wgslsmith_index_u32(53800u, 24u)]))))), var_0.a.x, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(trunc(-445f))), 2442f));
    var var_3 = var_1.x;
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_0.a.x) * var_2.c.zx), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 24u)], global1[_wgslsmith_index_u32(var_0.c.x, 24u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.c.x, 24u)])))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -206f))))) * _wgslsmith_f_op_vec2_f32(exp2(var_0.b))), _wgslsmith_div_f32(251f, _wgslsmith_f_op_f32(trunc(1162f))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(54333i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-325f + -569f), _wgslsmith_f_op_f32(-var_0.b.x), var_2.c.x))), var_2.c, vec3<bool>(!(global1[_wgslsmith_index_u32(21635u, 24u)] | global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), true, global1[_wgslsmith_index_u32(4294967295u, 24u)]))), 516f, (vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, var_1.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, var_1.x, 1i))) << ((var_0.c & vec4<u32>(var_0.c.x, u_input.a.x, u_input.a.x, abs(13835u))) % vec4<u32>(32u)));
}

