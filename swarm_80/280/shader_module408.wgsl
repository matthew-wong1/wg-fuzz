struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 27> = array<i32, 27>(486i, -1i, 2147483647i, -12730i, -16968i, 0i, -27860i, 1i, 34140i, -46354i, 49091i, 8193i, 0i, 2147483647i, -1i, 99345i, 1i, -1i, 29577i, 1i, -556i, 20914i, -23935i, 2147483647i, -14246i, 9691i, 2147483647i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = vec4<bool>(all(select(vec3<bool>(arg_2.b.a, true, !arg_2.b.a), !vec3<bool>(true, arg_2.b.a, true), !(!arg_2.b.e))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1551f * arg_1.c) - arg_3.x) < arg_3.x), true, arg_2.c <= ~(~(arg_0.x ^ arg_0.x)));
    let var_1 = ~(~(~(~(~arg_2.c))));
    let var_2 = arg_0.x;
    global0 = ~max(~(countOneBits(vec4<i32>(-23494i, global0.x, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 27u)])) << ((vec4<u32>(18180u, 1u, 58215u, arg_2.a.x) ^ vec4<u32>(63370u, 4294967295u, var_1, 46652u)) % vec4<u32>(32u))), select(-vec4<i32>(arg_1.d.x, 59975i, -1i, 2147483647i) & ~vec4<i32>(global0.x, arg_2.d.x, global1[_wgslsmith_index_u32(var_2, 27u)], global0.x), vec4<i32>(max(-50164i, global0.x), _wgslsmith_sub_i32(-2147483647i, 0i), u_input.b, global0.x), !(!vec4<bool>(var_0.x, false, false, arg_1.a))));
    let var_3 = vec4<bool>(arg_1.a, !(30994u > var_1) && false, all(select(select(!vec3<bool>(arg_2.b.a, true, arg_1.e.x), !var_0.yyx, !vec3<bool>(true, var_0.x, true)), select(!var_0.yzy, !vec3<bool>(false, var_0.x, false), select(false, var_0.x, var_0.x)), true)), (firstTrailingBit(_wgslsmith_sub_u32(32506u, 1u)) >> (var_1 % 32u)) != 1u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b + arg_2.b.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    global0 = -min(reverseBits(-vec4<i32>(0i, global0.x, -20198i, -18360i)), select(min(vec4<i32>(-43557i, 21789i, global0.x, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_0.d.x, -2147483647i, u_input.a), vec4<i32>(global0.x, global0.x, 83102i, arg_1.d.x), vec4<i32>(arg_2.d.x, arg_0.d.x, 1i, arg_1.d.x))), -vec4<i32>(-2147483647i, -23935i, 2147483647i, global0.x), arg_2.a));
    global0 = vec4<i32>(-1i, reverseBits(_wgslsmith_dot_vec3_i32(arg_1.d >> (vec3<u32>(arg_1.c, 72211u, 1u) % vec3<u32>(32u)), global0.wwx)), u_input.b, ~16925i) >> (~vec4<u32>(~_wgslsmith_sub_u32(arg_1.c, 4294967295u), 24724u << (1u % 32u), countOneBits(0u) >> (1u % 32u), 37117u) % vec4<u32>(32u));
    global1 = array<i32, 27>();
    global0 = -(vec4<i32>(25513i, abs(1i), -9719i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(32405i, u_input.b, -1i), arg_1.d), min(arg_1.d, vec3<i32>(global0.x, 1i, global0.x)))) & (vec4<i32>(-62538i, reverseBits(global1[_wgslsmith_index_u32(u_input.e, 27u)]), 54182i, i32(-1i) * -2147483647i) ^ vec4<i32>(1i >> (u_input.e % 32u), -arg_2.d.x, -2147483647i, -4356i)));
    global1 = array<i32, 27>();
    return arg_1.d;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<i32, 27>();
    let var_0 = func_4(Struct_1(!(u_input.d != u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 11306u, 4294967295u), vec3<u32>(29489u, 101493u, u_input.d)), Struct_1(arg_0.e.x, arg_0.b, arg_0.c, vec2<i32>(-1i, global1[_wgslsmith_index_u32(1646u, 27u)]), vec3<bool>(true, false, false)), Struct_2(vec2<u32>(u_input.c, u_input.c), arg_0, u_input.e, global0.xzx), vec2<f32>(arg_0.c, 980f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.b, arg_0.b)) + arg_0.b)), -1654f, abs(-vec2<i32>(global1[_wgslsmith_index_u32(42652u, 27u)], u_input.b) >> (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))), vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x)), Struct_2(firstTrailingBit(max(~vec2<u32>(2220u, u_input.e), min(vec2<u32>(u_input.e, u_input.e), vec2<u32>(0u, u_input.c)))), arg_0, u_input.d, select(_wgslsmith_sub_vec3_i32(global0.yyz, vec3<i32>(-1i, -2147483647i, global0.x) & vec3<i32>(36741i, global1[_wgslsmith_index_u32(0u, 27u)], -2147483647i)), global0.www, all(!vec4<bool>(arg_0.e.x, false, arg_0.e.x, true)))), arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.e, ~max(u_input.d ^ u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 45923u, u_input.d), vec4<u32>(1u, 64373u, u_input.e, u_input.d))), _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(40733u, u_input.d, u_input.e, 50876u), vec4<u32>(u_input.e, 0u, 20347u, u_input.c)), vec4<u32>(6478u, u_input.d, u_input.d, u_input.c) | vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(38152u, u_input.c, 1u, u_input.c), vec4<u32>(1u, 4294967295u, u_input.e, 291u)) << (abs(vec4<u32>(u_input.e, 0u, u_input.e, u_input.c)) % vec4<u32>(32u)))), arg_0, Struct_2(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.e, 78779u), vec2<u32>(0u, u_input.d))), Struct_1(any(!vec4<bool>(true, arg_0.a, arg_0.e.x, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, 1815f, 793f))), arg_0.b.x, ~vec2<i32>(23301i, -37123i), !arg_0.e), u_input.e, vec3<i32>(0i | var_0.x, _wgslsmith_sub_i32(firstTrailingBit(arg_0.d.x), global0.x), func_4(Struct_1(true, arg_0.b, 1247f, vec2<i32>(-19881i, -2147483647i), vec3<bool>(false, arg_0.e.x, false)), Struct_2(vec2<u32>(1u, 0u), arg_0, 69992u, var_0), Struct_1(arg_0.e.x, vec3<f32>(533f, arg_0.c, 658f), -219f, var_0.xz, vec3<bool>(false, true, false))).x)), vec2<f32>(1f, 1f))).zy;
    var var_2 = reverseBits(var_0.x);
    let var_3 = Struct_1(any(vec2<bool>(true, arg_0.d.x <= _wgslsmith_mod_i32(34417i, global0.x))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1836f - arg_0.b.x))))), reverseBits(var_0.xz), !(!vec3<bool>(!arg_0.a, true, !arg_0.e.x)));
    return -716f;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-203f, 156f)))), arg_1, 474f)) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(313f))), 2788f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1), _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.d, 4294967295u, 0u), arg_2, Struct_2(vec2<u32>(4294967295u, 6209u), arg_2, u_input.d, vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(98945u, 27u)], u_input.a)), _wgslsmith_f_op_vec2_f32(-arg_2.b.yy))).x, any(!vec3<bool>(arg_2.a, arg_2.e.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(992f)) + _wgslsmith_f_op_f32(f32(-1f) * -473f)) + _wgslsmith_f_op_f32(-arg_1)), arg_2.c));
    global1 = array<i32, 27>();
    let var_1 = Struct_2(abs(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 17930u), vec2<u32>(u_input.e, 1u)), ~abs(5230u))), arg_2, u_input.d, max(firstTrailingBit(global0.zyz), global0.zyx));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(floor(-1526f)))), vec4<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f) * -1000f)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1479f)) - _wgslsmith_f_op_f32(min(-415f, 181f))) * -638f))));
    var var_2 = Struct_1(var_1.b.e.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(var_0.x - 722f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -339f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1))))))), 538f, vec2<i32>(-1i, ~(~arg_0)) & abs(-reverseBits(vec2<i32>(u_input.a, 1i))), vec3<bool>(true, var_1.b.b.x < var_0.x, all(vec3<bool>(true, true, any(vec4<bool>(arg_2.e.x, true, arg_2.a, var_1.b.a))))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = all(!vec4<bool>(true, !(arg_1.c == arg_1.c), true, true));
    let var_1 = func_5(i32(-1i) * -1i, -1034f, Struct_1(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b.x, 922f, arg_1.b.c))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.b.x, -700f, arg_1.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1065f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(arg_1.b))))), vec2<i32>(-(0i << (0u % 32u)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(99908u, 27u)], global0.x) << (abs(0u) % 32u)), !arg_1.b.e), arg_1.d.xy);
    var var_2 = -(~(~vec4<i32>(-8972i, 17942i, global1[_wgslsmith_index_u32(21765u, 27u)], global0.x)) ^ max(-vec4<i32>(-6944i, 0i, var_1.b.d.x, var_1.d.x), ~vec4<i32>(0i, -1i, -1i, var_1.d.x))) & ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], u_input.a, arg_1.d.x, arg_1.d.x), -vec4<i32>(global0.x, 41386i, 0i, var_1.b.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(var_1.c, 27u)], -1i, 32279i), vec4<i32>(-21299i, 0i, var_1.d.x, 2147483647i)));
    var var_3 = true;
    var var_4 = _wgslsmith_mod_u32(u_input.d, _wgslsmith_sub_u32(u_input.e, countOneBits(_wgslsmith_clamp_u32(71811u, min(var_1.c, u_input.e), _wgslsmith_div_u32(75598u, var_1.a.x)))));
    return _wgslsmith_f_op_vec2_f32(select(var_1.b.b.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.yz), vec2<f32>(_wgslsmith_div_f32(arg_1.b.c, _wgslsmith_f_op_f32(-var_1.b.b.x)), -446f)), true));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = !(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-345f, 209f)));
    let var_1 = var_0;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(~global0.x, abs(global1[_wgslsmith_index_u32(~func_6(vec3<u32>(u_input.c, u_input.d, u_input.d), _wgslsmith_f_op_vec2_f32(func_1(u_input.e, Struct_2(vec2<u32>(u_input.e, 25692u), Struct_1(true, vec3<f32>(-1000f, 774f, -617f), -1000f, vec2<i32>(global1[_wgslsmith_index_u32(u_input.e, 27u)], u_input.a), vec3<bool>(false, false, true)), 59231u, vec3<i32>(global0.x, global0.x, global0.x))))), 27u)]), u_input.b, firstTrailingBit(global0.x));
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(96754u, 24051u) << (vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(39690u, 4294967295u)) & ~vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(_wgslsmith_add_u32(0u, u_input.d), u_input.c & u_input.e))), func_5(0i, -601f, Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -468f, 317f))), _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(69737u, 0u, u_input.e), func_5(0i, 324f, Struct_1(true, vec3<f32>(1009f, 372f, -800f), -965f, global0.zz, vec3<bool>(false, true, false)), global0.yz).b, Struct_2(vec2<u32>(44888u, 57046u), Struct_1(false, vec3<f32>(-574f, 687f, -1000f), -724f, vec2<i32>(u_input.a, -27293i), vec3<bool>(true, true, false)), 15016u, vec3<i32>(global0.x, 10554i, -34495i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-898f, -1271f) + vec2<f32>(-288f, 1085f)))).x, _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(62524u, 27u)]), -vec2<i32>(-24515i, global0.x)), !func_5(global1[_wgslsmith_index_u32(u_input.d, 27u)], -1999f, Struct_1(false, vec3<f32>(1230f, -562f, 1384f), -662f, vec2<i32>(global1[_wgslsmith_index_u32(82283u, 27u)], -1i), vec3<bool>(false, false, false)), global0.ww).b.e), vec2<i32>(_wgslsmith_sub_i32(global0.x ^ global1[_wgslsmith_index_u32(u_input.c, 27u)], firstTrailingBit(u_input.b)), -1i)).b, _wgslsmith_add_u32(u_input.d, u_input.c), vec3<i32>(i32(-1i) * -2147483647i, abs(u_input.b), ~_wgslsmith_mod_i32(countOneBits(-23277i), u_input.a)));
    var var_1 = var_0.a;
    var var_2 = (~func_5(abs(var_0.b.d.x), _wgslsmith_f_op_f32(var_0.b.b.x + var_0.b.c), func_5(1i, 444f, var_0.b, var_0.b.d).b, var_0.d.xx).a.x < 4294967295u) | true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(func_5(~global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-var_0.b.c)), var_0.b, var_0.b.d).b)), global0.x, 7569i);
}

