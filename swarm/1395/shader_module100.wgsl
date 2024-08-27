struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-601f, 1000f), vec2<f32>(-1719f, -656f), vec2<f32>(2115f, 763f), vec2<f32>(-253f, -890f), vec2<f32>(1122f, 584f), vec2<f32>(195f, -1808f), vec2<f32>(-1353f, -192f), vec2<f32>(-140f, -1956f), vec2<f32>(-181f, -833f), vec2<f32>(-1414f, 242f), vec2<f32>(1331f, 445f), vec2<f32>(-1496f, -126f), vec2<f32>(708f, -1043f), vec2<f32>(-1406f, -1229f), vec2<f32>(463f, 812f), vec2<f32>(384f, 1185f), vec2<f32>(678f, -1725f), vec2<f32>(-274f, 661f), vec2<f32>(-1000f, 432f), vec2<f32>(494f, -1805f), vec2<f32>(490f, 2375f), vec2<f32>(498f, 362f), vec2<f32>(908f, 2212f), vec2<f32>(-107f, 1221f), vec2<f32>(194f, -827f), vec2<f32>(1413f, -674f), vec2<f32>(154f, 1757f), vec2<f32>(-1108f, 336f), vec2<f32>(776f, -748f), vec2<f32>(-168f, -1584f), vec2<f32>(816f, 429f));

var<private> global1: vec2<u32> = vec2<u32>(26620u, 47481u);

var<private> global2: f32 = -1259f;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, false, vec4<i32>(i32(-2147483648), 0i, -37711i, 0i)), Struct_1(true, true, vec4<i32>(i32(-2147483648), 15709i, 6523i, -17532i)), Struct_1(true, false, vec4<i32>(2147483647i, 1i, -8255i, -14905i)), Struct_1(false, false, vec4<i32>(-7407i, -15560i, -4577i, i32(-2147483648))), Struct_1(true, true, vec4<i32>(64671i, 20460i, 2147483647i, -2988i)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<f32> {
    global1 = ~_wgslsmith_add_vec2_u32(arg_2.a.yz & _wgslsmith_div_vec2_u32(arg_2.a.xz, arg_2.a.zx ^ vec2<u32>(81843u, 4294967295u)), arg_2.a.yy);
    let var_0 = 1u;
    var var_1 = (u_input.a < ~(~(~global1.x))) | true;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-70151i, _wgslsmith_div_i32(-2147483647i, -2147483647i)), arg_3.c.wy);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, 1505f, arg_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, 1261f, arg_0.d, arg_1)), var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), arg_1, _wgslsmith_div_f32(arg_0.d, 1000f), _wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, _wgslsmith_f_op_f32(-arg_1), 624f, 1f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.d)))), 941f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-308f * 2053f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1)), arg_0.d)))));
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(2213f, 1982f), _wgslsmith_f_op_f32(max(1000f, -669f)), _wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(-737f - -998f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(4294967295u, arg_1, -2147483647i, -924f), -580f, Struct_3(vec3<u32>(arg_0, 27742u, 11984u), arg_1, global3[_wgslsmith_index_u32(arg_0, 5u)], Struct_1(true, true, vec4<i32>(-2147483647i, arg_1, arg_1, arg_1)), Struct_1(true, false, vec4<i32>(arg_1, 1i, -1i, arg_1))), global3[_wgslsmith_index_u32(arg_0, 5u)])) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(583f, 547f, 785f, 1704f))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - -218f)), 1200f, -2030f)));
    let var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    var var_2 = Struct_1(true, _wgslsmith_mult_i32((arg_1 | 1i) | ~24909i, -28939i) >= (arg_1 >> (u_input.b % 32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 2293i, 2147483647i, arg_1) | min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3884i, arg_1, 19666i, 0i), vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(arg_1, arg_1, arg_1, arg_1)), vec4<i32>(-23332i, -1i, arg_1, -1i)), vec4<i32>(arg_1 & abs(arg_1), (i32(-1i) * -2147483647i) << (global1.x % 32u), -arg_1, 5422i)));
    var var_3 = select(!select(!(!vec2<bool>(var_2.a, var_2.b)), select(select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.b, false), var_2.a), vec2<bool>(true, true), all(vec4<bool>(var_2.a, false, var_2.a, var_2.b))), !(!vec2<bool>(var_2.a, var_2.a))), vec2<bool>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(613f - var_1.x)) <= _wgslsmith_f_op_f32(-var_1.x), true), select(!select(select(vec2<bool>(var_2.b, false), vec2<bool>(true, true), false), vec2<bool>(var_2.a, var_2.a), !var_2.a), vec2<bool>(true, any(vec2<bool>(true, false)) & !var_2.a), _wgslsmith_dot_vec4_i32(-var_2.c, vec4<i32>(arg_1, -6795i, var_2.c.x, -1i) << (vec4<u32>(global1.x, u_input.b, 44837u, global1.x) % vec4<u32>(32u))) == -9964i));
    let var_4 = -arg_1 & 5968i;
    return _wgslsmith_mult_u32(0u, 34868u);
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    let var_0 = ~firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a | global1.x, 1u & global1.x), 596u));
    global1 = ~vec2<u32>(_wgslsmith_div_u32(~(~var_0), global1.x), 31329u);
    let var_1 = -(~(-vec3<i32>(reverseBits(1i), ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 37672i, 0i, 24229i), vec4<i32>(-2147483647i, 22829i, -2147483647i, 5510i)))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~countOneBits(var_0), reverseBits(_wgslsmith_clamp_u32(43389u, 4294967295u, 29707u))) ^ select(global1.x, u_input.b, arg_0.x & arg_0.x), func_2(4294967295u, var_1.x));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(208f))));
    return StorageBuffer(var_1.xy, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1080f, -843f, 532f, 1865f)))))))), _wgslsmith_clamp_u32(global1.x >> (1u % 32u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(var_0, var_1.x), var_0, _wgslsmith_mult_u32(17681u, var_0), _wgslsmith_dot_vec4_u32(vec4<u32>(33087u, global1.x, var_0, 43536u), vec4<u32>(global1.x, 0u, 4294967295u, 0u))), ~(~vec4<u32>(0u, var_0, var_0, 16124u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~(~firstTrailingBit(2147483647i)), -2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(16061i, 16698i, -10096i)), _wgslsmith_sub_vec3_i32(vec3<i32>(3819i, -1i, 7655i), vec3<i32>(-1i, -2147483647i, -4399i))), -(~(-10545i))) ^ _wgslsmith_sub_i32(~38768i | _wgslsmith_dot_vec3_i32(vec3<i32>(37659i, 17287i, 0i), vec3<i32>(2147483647i, 2147483647i, 0i)), _wgslsmith_clamp_i32(0i, -8054i, 14356i) ^ ~24468i));
    var var_1 = _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0, var_0), -2147483647i), vec2<i32>(15265i, var_0 | -49866i)), vec2<i32>(-1i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(1i, 2147483647i, var_0)))));
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true));
}

