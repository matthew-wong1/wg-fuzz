struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = ~(~30072u);
    var_0 = select(~global0[_wgslsmith_index_u32(arg_0, 4u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0 | 1u, u_input.a, ~arg_0, u_input.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(29386u, global0[_wgslsmith_index_u32(0u, 4u)], 0u, 9478u), ~vec4<u32>(u_input.a, 0u, u_input.a, 0u)) | (reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u, u_input.a, arg_0)) | (vec4<u32>(26899u, arg_0, 40161u, u_input.a) ^ vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(u_input.a, 4u)], u_input.a)))), true);
    let var_1 = false;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(select(1i, abs(0i), true), -1i), ~(-1i), 1i), vec3<i32>(-1i) * -vec3<i32>(-1i, 1i, _wgslsmith_sub_i32(-10709i, -2147483647i)));
    var var_3 = !(!vec4<bool>(var_1 | true, var_1 && true, !(!var_1), all(!vec2<bool>(var_1, true))));
    return -606f;
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = ~u_input.a;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, 0i, 57301i), min(2147483647i, 0i), -38790i), 1i, 61874i), _wgslsmith_div_i32(select(-(10803i << (global0[_wgslsmith_index_u32(u_input.a, 4u)] % 32u)), 2147483647i, !arg_0.x & all(vec2<bool>(arg_0.x, arg_0.x))), 1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(3083f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(405f, 238f, -720f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-753f, 337f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, -869f, 800f) - vec3<f32>(-813f, -859f, -287f))))))));
    var_2 = vec3<f32>(-564f, var_2.x, -1036f);
    global0 = array<u32, 4>();
    return firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -countOneBits(vec3<i32>(2147483647i, -65325i, 0i)), -select(~vec3<i32>(-35644i, -29901i, 5772i), vec3<i32>(2147483647i, -40742i, -2147483647i), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global0 = array<u32, 4>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1000f) * _wgslsmith_f_op_f32(-arg_1.b.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1173f))))))), Struct_1(!select(!arg_1.b.b.x, !arg_1.b.a, true), arg_1.b.b, arg_0.x, abs(~firstLeadingBit(arg_1.b.d)), arg_0.xwx));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e.x, arg_0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1963f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1638f)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(300f)), 269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1395f), -616f, arg_2))), arg_0.c));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(324f, -1391f, 309f, arg_0.c), vec4<f32>(-934f, -269f, -131f, 1919f)) * _wgslsmith_f_op_vec4_f32(ceil(var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, arg_0.c, -1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_0.c, 1636f, -670f) + vec4<f32>(_wgslsmith_f_op_f32(-679f + -1080f), _wgslsmith_f_op_f32(720f * arg_0.e.x), _wgslsmith_f_op_f32(func_2(u_input.a)), 1647f))), Struct_2(_wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, var_0.x))), Struct_1(arg_2, vec4<bool>(!arg_0.b.x, arg_2, arg_0.a, false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x), -548f)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_0.d.x, -1i, 1i)), func_3(vec4<bool>(false, false, arg_2, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -338f, arg_0.c)))), -30063i);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e.x, -1000f, arg_0.e.x, var_0.x), vec4<f32>(var_0.x, -1121f, 561f, 195f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(var_1.a.x, var_0.x, -546f, var_1.a.x))))), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, var_1.b.e.x, -959f, -1081f))))), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0.e.x) * vec2<f32>(var_0.x, 827f)), var_0.ww)), var_1.b), arg_0.d.x), func_3(arg_0.b).x).b;
    var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(var_0 + var_0)))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e.zx - var_2.e.xx) * vec2<f32>(arg_0.c, -1401f))), Struct_1(true, !var_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_2.e.x) + _wgslsmith_f_op_f32(func_2(22441u))), -var_2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(303f, -662f, -1179f) + arg_0.e) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.e))))), var_1.b.d.x).b;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.zx), _wgslsmith_f_op_vec2_f32(arg_0.e.xx + arg_0.e.zx))))), arg_0);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b.c) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(276f - arg_0.c.b.c)) * _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.c.b.c, arg_0.b), _wgslsmith_f_op_f32(-arg_0.c.b.c))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)), arg_0.c.a.x, arg_0.c.b.b.x))))));
    return func_1(arg_0.c.b, arg_0.c.b.d.yy, arg_0.c.b.a).b;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<bool>) -> vec4<bool> {
    global0 = array<u32, 4>();
    let var_0 = ~arg_1.yy;
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, -425f)), func_4(vec4<f32>(arg_2, 981f, _wgslsmith_div_f32(arg_0.c, -404f), arg_0.e.x), Struct_2(vec2<f32>(arg_2, arg_2), Struct_1(true, func_1(Struct_1(true, vec4<bool>(true, arg_3.x, true, arg_3.x), arg_2, arg_0.d, arg_0.e), arg_0.d.yy, true).b.b, _wgslsmith_f_op_f32(arg_0.e.x - -868f), ~arg_0.d, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, -732f, arg_2))))), func_5(Struct_3(countOneBits(vec4<i32>(arg_0.d.x, -2147483647i, arg_0.d.x, -1i)), arg_0.c, func_1(arg_0, arg_0.d.yy, true))).d.x).b);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_6(func_5(Struct_3(-vec4<i32>(-31663i, 27094i, -68580i, 1i), _wgslsmith_f_op_f32(-1048f - 897f), func_1(Struct_1(true, vec4<bool>(false, false, false, false), -203f, vec3<i32>(-1i, -3149i, -25761i), vec3<f32>(803f, -996f, -1000f)), vec2<i32>(0i, 2831i), true))), _wgslsmith_add_vec3_u32(~vec3<u32>(18978u, 4294967295u, u_input.a), countOneBits(vec3<u32>(4294967295u, u_input.a, 71288u) | vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 1u))), -1042f, func_5(Struct_3(vec4<i32>(2147483647i, 17826i, -28263i, 29022i), 1096f, Struct_2(vec2<f32>(-1004f, 1674f), Struct_1(false, vec4<bool>(true, true, false, false), 103f, vec3<i32>(-27114i, -2669i, -6043i), vec3<f32>(-241f, 295f, -126f))))).b), vec4<bool>(true, _wgslsmith_mult_u32(~0u, global0[_wgslsmith_index_u32(~4294967295u, 4u)]) > reverseBits(u_input.a), any(vec4<bool>(func_5(Struct_3(vec4<i32>(-5203i, -6460i, -35646i, -26998i), -737f, Struct_2(vec2<f32>(274f, -582f), Struct_1(false, vec4<bool>(true, true, true, true), -785f, vec3<i32>(38968i, -11022i, -1i), vec3<f32>(1795f, 1498f, -714f))))).b.x, true, false, true)), false), !vec4<bool>(all(func_5(Struct_3(vec4<i32>(22363i, 28520i, -2678i, 3782i), -359f, Struct_2(vec2<f32>(-767f, -385f), Struct_1(true, vec4<bool>(false, false, true, false), 2055f, vec3<i32>(-51270i, 38841i, -13886i), vec3<f32>(-754f, -1999f, -494f))))).b.xx), any(vec4<bool>(true, true, false, true)), func_1(func_4(vec4<f32>(-180f, -631f, -1308f, -308f), Struct_2(vec2<f32>(171f, 388f), Struct_1(true, vec4<bool>(false, false, true, false), 167f, vec3<i32>(0i, -47689i, -9877i), vec3<f32>(-436f, 1501f, -1187f))), -1i).b, vec2<i32>(-2147483647i, 9402i), true).b.a, true));
    let var_1 = _wgslsmith_sub_vec4_i32(select(min(_wgslsmith_sub_vec4_i32(-vec4<i32>(-27215i, -1i, -2147483647i, -16913i), select(vec4<i32>(-1i, 1i, 0i, 0i), vec4<i32>(-1i, 0i, -1i, -1i), vec4<bool>(var_0.x, true, false, var_0.x))), vec4<i32>(~(-2147483647i), ~(-1i), func_1(Struct_1(var_0.x, vec4<bool>(false, true, true, var_0.x), -1000f, vec3<i32>(-25356i, 37761i, 41066i), vec3<f32>(1000f, -333f, -634f)), vec2<i32>(12869i, 37810i), var_0.x).b.d.x, abs(-17261i))), vec4<i32>(1i, _wgslsmith_add_i32(1i, 1i), 1i, -(i32(-1i) * -2147483647i)), vec4<bool>(true, func_6(func_1(Struct_1(false, vec4<bool>(true, var_0.x, false, var_0.x), -100f, vec3<i32>(-2147483647i, 2147483647i, -47743i), vec3<f32>(-686f, -1000f, -1868f)), vec2<i32>(2147483647i, -6673i), var_0.x).b, ~vec3<u32>(29548u, 4294967295u, u_input.a), _wgslsmith_f_op_f32(min(558f, -738f)), vec4<bool>(false, false, false, var_0.x)).x, var_0.x, var_0.x)), select(~(~(~vec4<i32>(-1i, 2147483647i, -13356i, 2147483647i))), select(vec4<i32>(-26085i, i32(-1i) * -38420i, 0i, firstLeadingBit(18790i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(all(vec2<bool>(false, var_0.x)), var_0.x, !var_0.x, func_5(Struct_3(vec4<i32>(1i, 1i, -1i, 2147483647i), 1440f, Struct_2(vec2<f32>(-2111f, -522f), Struct_1(true, vec4<bool>(var_0.x, true, var_0.x, false), -2375f, vec3<i32>(-39254i, 0i, -7315i), vec3<f32>(1457f, 257f, -1268f))))).a)), !select(true, var_0.x, true)));
    global0 = array<u32, 4>();
    let var_2 = func_5(Struct_3(~var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(round(828f))) - 127f), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, 1000f, -1969f, -263f), vec4<f32>(-1000f, 207f, -232f, 1927f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, -427f, 1050f, -591f) - vec4<f32>(794f, -470f, 1019f, 1123f))), func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1147f, 260f, -1000f, 113f))), Struct_2(vec2<f32>(592f, 1631f), Struct_1(var_0.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x), -2023f, var_1.xyz, vec3<f32>(-379f, 486f, -196f))), var_1.x), 19482i)));
    let var_3 = select(vec2<bool>(-1i >= (select(25718i, var_2.d.x, var_0.x) >> (countOneBits(u_input.a) % 32u)), true), vec2<bool>(var_2.b.x, func_1(Struct_1(true, var_2.b, var_2.c, func_3(var_2.b), var_2.e), var_1.ww, var_0.x).b.a), ~_wgslsmith_add_i32(2147483647i, var_2.d.x) < (i32(-1i) * -select(var_1.x, -4753i, var_2.a)));
    let var_4 = Struct_3(var_1, var_2.c, Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(1823f, -446f)), _wgslsmith_f_op_f32(-var_2.e.x)))), Struct_1(0u <= u_input.a, !vec4<bool>(var_3.x, false, var_3.x, true), var_2.c, var_2.d, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.e.x, 1197f, var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(28119u >> (_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(u_input.a, 39711u, u_input.a)), ~vec3<u32>(u_input.a, 7934u, global0[_wgslsmith_index_u32(1u, 4u)]), true), vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u), 4u)], 1u)) % 32u), ~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 4u)] ^ u_input.a, firstLeadingBit(1u), 0u, ~(~0u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9938u, 9707u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106596u, 4u)], 4u)], 4u)], 4294967295u)), 4u)], ~u_input.a, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(2368u, 4u)], 1u)), abs(firstTrailingBit(vec4<u32>(33591u, 47937u, 42339u, 4294967295u)))), max(~(~1u), abs(u_input.a))));
}

