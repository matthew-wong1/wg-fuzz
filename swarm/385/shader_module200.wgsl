struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    global1 = true;
    global1 = false;
    let var_0 = vec4<i32>(~u_input.d.x | -2147483647i, 2147483647i, -(~9291i), countOneBits(u_input.a.x | -firstLeadingBit(u_input.a.x)));
    var var_1 = select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, ~14517u, 1u), u_input.c), 25u)], select(global0[_wgslsmith_index_u32(select(1u, 160628u, true) >> (4294967295u % 32u), 25u)], vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false), select(select(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], any(vec3<bool>(false, false, true))), select(global0[_wgslsmith_index_u32(max(u_input.c, u_input.b.x), 25u)], select(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), true), any(vec4<bool>(true, true, true, true)))), !all(!global0[_wgslsmith_index_u32(1u, 25u)]));
    var var_2 = !vec4<bool>(var_1.x, abs(u_input.d.x) != countOneBits(var_0.x), false, any(!vec4<bool>(var_1.x, false, false, false)) == true);
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.d.zy + arg_0.yy);
    let var_1 = vec2<u32>(58776u, 66539u);
    let var_2 = Struct_1(var_0.x, ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(arg_1.b.x, u_input.c, 4294967295u), arg_2.b), _wgslsmith_clamp_vec3_u32(arg_2.b, arg_1.b, vec3<u32>(arg_2.b.x, 4294967295u, 17834u))), vec3<u32>(7376u, u_input.b.x, _wgslsmith_add_u32(u_input.c, arg_1.b.x))), !select(vec2<bool>(arg_1.c.x, func_3(arg_0.x)), select(arg_1.c, arg_1.c, arg_1.c.x), vec2<bool>(true, !arg_2.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, var_0.x, arg_1.d.x) - vec3<f32>(arg_0.x, 355f, 402f)))));
    global1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-299f * var_0.x)))) - 1656f));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global1 = all(select(select(select(select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), false), select(var_0.c, arg_2.c, arg_2.c), select(arg_1.xy, vec2<bool>(arg_2.c.x, arg_2.c.x), arg_1.x)), select(!arg_0.c, select(vec2<bool>(var_0.c.x, arg_0.c.x), vec2<bool>(false, arg_1.x), vec2<bool>(true, true)), vec2<bool>(false, false)), true), !var_0.c, !select(true, func_2(vec3<f32>(arg_0.a, var_0.a, 353f), arg_2, arg_2).c.x, all(arg_1))));
    var var_1 = 19828u;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1402f, -544f, _wgslsmith_f_op_f32(step(579f, var_0.a))))), func_2(func_2(_wgslsmith_f_op_vec3_f32(step(arg_2.d, _wgslsmith_f_op_vec3_f32(-arg_0.d))), arg_0, arg_0).d, func_2(arg_0.d, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, arg_2.d.x, 1839f)), func_2(vec3<f32>(arg_2.a, -580f, arg_0.d.x), Struct_1(1032f, vec3<u32>(1u, arg_0.b.x, u_input.c), var_0.c, var_0.d), Struct_1(arg_2.d.x, arg_0.b, vec2<bool>(true, true), var_0.d)), func_2(vec3<f32>(arg_2.a, 194f, -2381f), Struct_1(var_0.a, vec3<u32>(0u, arg_2.b.x, 0u), var_0.c, var_0.d), arg_2)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-156f, arg_0.d.x, arg_0.a), vec3<f32>(arg_2.a, 955f, -111f)), arg_2, Struct_1(788f, vec3<u32>(arg_2.b.x, 4294967295u, u_input.c), arg_1.yx, arg_0.d))), Struct_1(arg_0.d.x, vec3<u32>(abs(arg_0.b.x), ~4294967295u, ~50934u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, arg_2.a, arg_0.a)), func_2(vec3<f32>(451f, -175f, arg_2.a), Struct_1(-2206f, vec3<u32>(1u, 4294967295u, 0u), vec2<bool>(arg_1.x, true), vec3<f32>(var_0.a, 742f, -147f)), Struct_1(var_0.a, vec3<u32>(arg_0.b.x, 1u, var_0.b.x), vec2<bool>(false, arg_2.c.x), vec3<f32>(-1379f, 651f, var_0.a))), func_2(arg_2.d, Struct_1(644f, var_0.b, var_0.c, arg_0.d), arg_0)).c, arg_2.d)), arg_2);
    var var_3 = (-_wgslsmith_mult_i32(~u_input.d.x, u_input.d.x) & u_input.d.x) & _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(~_wgslsmith_mult_i32(-25245i, u_input.d.x), u_input.d.x, u_input.a.x, ~u_input.d.x));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.a), var_2.b, vec2<bool>(~u_input.d.x > countOneBits(-u_input.a.x), all(arg_1)), _wgslsmith_f_op_vec3_f32(select(arg_2.d, var_2.d, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.c, 0u), ~abs(0u)), 25u)])));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-517f, arg_1.a) * _wgslsmith_f_op_f32(470f - var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.d.x, -1107f, arg_1.a), arg_0, Struct_1(var_0.a, vec3<u32>(arg_0.b.x, 4294967295u, arg_1.b.x), vec2<bool>(false, true), vec3<f32>(-466f, var_0.a, var_0.d.x))).d.x + 1268f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(var_0.a, 562f)))), _wgslsmith_f_op_f32(arg_0.d.x + -1134f)));
    let var_2 = u_input.a;
    let var_3 = !vec4<bool>(50110u < arg_0.b.x, var_0.c.x, true, true);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(-104f * 1000f)), 600f), 1010f, !(!any(!var_3.wwx))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(-701f, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(arg_3), _wgslsmith_mod_vec3_u32(arg_2.b, vec3<u32>(arg_2.b.x, 4294967295u, u_input.c))), countOneBits(vec3<u32>(arg_2.b.x, arg_3.x, 4294967295u))), vec3<u32>(~_wgslsmith_mod_u32(0u, 2900u), 0u, ~(~0u))), !vec2<bool>(false && arg_2.c.x, true), arg_2.d);
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, arg_2.d) - vec3<f32>(_wgslsmith_f_op_f32(arg_2.d.x * var_0.d.x), -829f, arg_2.d.x)), arg_0, func_4(func_4(Struct_1(-2045f, vec3<u32>(20971u, var_0.b.x, arg_2.b.x) << (vec3<u32>(14741u, u_input.c, arg_3.x) % vec3<u32>(32u)), select(vec2<bool>(false, true), var_0.c, arg_0.c.x), _wgslsmith_f_op_vec3_f32(ceil(arg_2.d))), vec4<bool>(true, arg_2.c.x, true, all(vec4<bool>(true, false, var_0.c.x, true))), func_4(arg_2, select(vec4<bool>(arg_2.c.x, var_0.c.x, true, true), vec4<bool>(true, false, true, arg_2.c.x), vec4<bool>(arg_0.c.x, arg_2.c.x, false, var_0.c.x)), func_4(arg_0, vec4<bool>(arg_2.c.x, true, arg_2.c.x, true), Struct_1(-141f, arg_0.b, vec2<bool>(true, false), arg_2.d)))), select(select(select(vec4<bool>(arg_2.c.x, var_0.c.x, false, arg_0.c.x), vec4<bool>(true, true, false, arg_0.c.x), true), select(vec4<bool>(var_0.c.x, arg_2.c.x, true, arg_2.c.x), vec4<bool>(var_0.c.x, arg_0.c.x, var_0.c.x, arg_0.c.x), vec4<bool>(true, true, arg_2.c.x, true)), select(vec4<bool>(true, arg_2.c.x, var_0.c.x, arg_0.c.x), vec4<bool>(var_0.c.x, true, arg_2.c.x, true), false)), vec4<bool>(arg_0.c.x, func_4(Struct_1(arg_2.d.x, vec3<u32>(var_0.b.x, 4294967295u, arg_0.b.x), vec2<bool>(arg_2.c.x, var_0.c.x), vec3<f32>(arg_0.a, arg_2.d.x, var_0.a)), vec4<bool>(arg_2.c.x, true, arg_2.c.x, true), arg_0).c.x, all(vec3<bool>(false, arg_2.c.x, var_0.c.x)), any(global0[_wgslsmith_index_u32(var_0.b.x, 25u)])), !select(vec4<bool>(arg_2.c.x, true, false, var_0.c.x), vec4<bool>(arg_0.c.x, var_0.c.x, var_0.c.x, true), arg_2.c.x)), func_2(arg_2.d, arg_2, Struct_1(_wgslsmith_f_op_f32(floor(1000f)), select(vec3<u32>(4294967295u, var_0.b.x, var_0.b.x), vec3<u32>(32828u, 18955u, 31430u), true), var_0.c, arg_0.d))));
    global1 = arg_2.c.x;
    let var_2 = -2147483647i;
    var_0 = arg_0;
    return any(vec2<bool>(true, select(arg_2.c.x, true, _wgslsmith_mult_i32(var_2, 0i) < 1i)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    global1 = arg_1.x;
    global0 = array<vec3<bool>, 25>();
    global1 = true;
    let var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(func_5(func_4(func_2(vec3<f32>(2121f, -1820f, 165f), Struct_1(-1395f, vec3<u32>(u_input.c, u_input.b.x, u_input.b.x), arg_1.zw, vec3<f32>(-1023f, 183f, 795f)), Struct_1(756f, vec3<u32>(4294967295u, 1u, 1u), arg_1.wz, vec3<f32>(791f, -1117f, 810f))), vec4<bool>(true, false, true, false), func_2(vec3<f32>(-3482f, 579f, -684f), Struct_1(-1345f, vec3<u32>(8543u, 28622u, u_input.c), vec2<bool>(false, arg_1.x), vec3<f32>(2940f, -671f, 1275f)), Struct_1(-829f, vec3<u32>(0u, u_input.c, 1u), arg_1.yz, vec3<f32>(1303f, 893f, 574f)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, 1851f, -613f)), Struct_1(147f, vec3<u32>(u_input.c, 1u, u_input.c), vec2<bool>(arg_1.x, true), vec3<f32>(-1194f, 938f, 519f)), Struct_1(-962f, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), arg_1.xz, vec3<f32>(1241f, -1675f, 707f))))), vec3<u32>(~0u, 1u, 31055u), arg_1.yz, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(round(2288f)))), -871f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(-1049f, vec3<u32>(u_input.c, 87447u, u_input.c), arg_1.wx, vec3<f32>(347f, 201f, -691f)), Struct_1(265f, vec3<u32>(29755u, 45496u, u_input.b.x), vec2<bool>(arg_1.x, true), vec3<f32>(-507f, -607f, -478f))))))), select(min(u_input.a.x & (arg_0 ^ 6801i), u_input.d.x ^ 2147483647i), -u_input.d.x, false), func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f), -1320f), ~vec3<u32>(u_input.b.x, u_input.c, u_input.b.x), arg_1.xx, vec3<f32>(1000f, 378f, _wgslsmith_f_op_f32(round(-938f)))), vec4<bool>(all(arg_1.zww), any(!arg_1.xw), select(true, !arg_1.x, true), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(576f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(4693u, 1u, u_input.c) ^ vec3<u32>(u_input.c, 1u, u_input.c), firstTrailingBit(vec3<u32>(u_input.c, 27939u, 51016u))), arg_1.yx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-793f, -670f, 968f), vec3<f32>(-786f, -509f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, 509f, 159f))))), vec3<u32>(abs(~u_input.c), u_input.c, ~firstTrailingBit(_wgslsmith_mult_u32(6546u, 134346u))));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(536f, -187f)))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, ~u_input.c), vec3<u32>(u_input.b.x ^ u_input.b.x, firstLeadingBit(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b))), select(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(709f, 105f, 1714f), vec3<f32>(369f, -687f, -1512f)), func_4(Struct_1(1405f, vec3<u32>(u_input.b.x, u_input.b.x, 32800u), arg_1.xx, vec3<f32>(1000f, -1247f, -593f)), arg_1, Struct_1(-985f, vec3<u32>(1u, u_input.c, u_input.c), vec2<bool>(arg_1.x, true), vec3<f32>(256f, 928f, -762f))), func_4(Struct_1(388f, vec3<u32>(36480u, 15100u, u_input.b.x), arg_1.zx, vec3<f32>(963f, 697f, -120f)), vec4<bool>(false, var_0, true, var_0), Struct_1(1000f, vec3<u32>(4574u, u_input.c, u_input.b.x), arg_1.yy, vec3<f32>(296f, -320f, -1000f)))).c, vec2<bool>(true, func_6(Struct_1(-606f, vec3<u32>(u_input.c, 0u, 1710u), arg_1.zw, vec3<f32>(167f, 1000f, -230f)), arg_0, Struct_1(186f, vec3<u32>(20050u, 73987u, u_input.c), arg_1.wy, vec3<f32>(848f, 1362f, 1147f)), vec3<u32>(1u, u_input.c, 4192u))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, 940f, -1784f) - vec3<f32>(158f, -773f, -1432f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(619f, 1091f, -1040f), vec3<f32>(-635f, -1330f, 333f), arg_1.x))))), select(select(select(arg_1, !vec4<bool>(var_0, arg_1.x, false, var_0), all(arg_1.wz)), arg_1, vec4<bool>(true, true, true, true)), arg_1, false), func_4(Struct_1(1f, vec3<u32>(0u, u_input.b.x, u_input.c) >> (vec3<u32>(5387u, u_input.c, 1u) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, 1071f, -1605f)), Struct_1(-1089f, vec3<u32>(u_input.c, u_input.c, u_input.c), vec2<bool>(arg_1.x, false), vec3<f32>(1112f, 517f, -1000f)), Struct_1(-361f, vec3<u32>(4294967295u, 4294967295u, u_input.c), arg_1.xx, vec3<f32>(1225f, -533f, -461f))).c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-917f, 1233f, 444f), vec3<f32>(655f, -387f, 1314f), var_0))))), arg_1, Struct_1(372f, vec3<u32>(u_input.c, 184u, u_input.b.x), vec2<bool>(!var_0, false | var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-944f, 2302f, -1359f), vec3<f32>(-865f, -3441f, -326f), true))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_4(var_1, arg_1, Struct_1(_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(13982u, 4164u, var_1.b.x), vec3<u32>(11719u, 842u, 1u)), !arg_1.wx, _wgslsmith_f_op_vec3_f32(floor(var_1.d)))).d.x, var_1.d.x)) + func_4(Struct_1(var_1.a, vec3<u32>(~u_input.c, ~34425u, _wgslsmith_add_u32(4294967295u, u_input.b.x)), vec2<bool>(func_6(Struct_1(1497f, vec3<u32>(1u, u_input.c, var_1.b.x), var_1.c, var_1.d), -1i, var_1, vec3<u32>(var_1.b.x, var_1.b.x, u_input.c)), any(vec3<bool>(arg_1.x, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a), 483f)), !vec4<bool>(all(arg_1), u_input.c < 0u, true, false), func_2(_wgslsmith_f_op_vec3_f32(ceil(var_1.d)), var_1, var_1)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 1u, 4294967295u) >> (vec3<u32>(u_input.b.x, 48368u, 1u) % vec3<u32>(32u))), vec3<u32>(abs(u_input.b.x), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(12116u, 0u, 0u, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, 30283u, u_input.b.x))), u_input.b.x)), u_input.c);
    var var_1 = Struct_1(_wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f * -347f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(0i, vec4<bool>(false, false, false, true))), 2074f))), vec3<u32>(reverseBits(var_0), ~13167u, _wgslsmith_div_u32(min(~2719u, 4294967295u), 87626u)), func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 417f), _wgslsmith_f_op_f32(-1798f - -1005f)), max(~vec3<u32>(0u, var_0, 1u), ~vec3<u32>(0u, var_0, var_0)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec3<f32>(_wgslsmith_div_f32(1000f, -521f), 1169f, _wgslsmith_div_f32(-325f, 1241f))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), Struct_1(-1356f, ~(~vec3<u32>(0u, 110576u, var_0)), vec2<bool>(true, func_2(vec3<f32>(-1033f, 750f, -574f), Struct_1(-709f, vec3<u32>(u_input.b.x, 5791u, 103512u), vec2<bool>(true, true), vec3<f32>(1313f, -623f, -115f)), Struct_1(1000f, vec3<u32>(var_0, 1u, 0u), vec2<bool>(true, false), vec3<f32>(1407f, 624f, -634f))).c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, 445f, 832f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, -1712f, -1026f)))))).c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -350f, 492f) + vec3<f32>(1446f, -346f, 1000f)) - func_2(vec3<f32>(-705f, 1702f, 199f), Struct_1(2240f, vec3<u32>(82693u, var_0, u_input.c), vec2<bool>(true, false), vec3<f32>(287f, -500f, 1239f)), Struct_1(-159f, vec3<u32>(u_input.c, 4294967295u, 56470u), vec2<bool>(false, false), vec3<f32>(-796f, 1000f, -1360f))).d) * vec3<f32>(-432f, -117f, _wgslsmith_f_op_f32(f32(-1f) * -1207f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-813f, -725f, 1000f), vec3<f32>(201f, -1559f, -2377f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_mult_i32(-u_input.d.x, countOneBits(u_input.d.x)) < (select(-126i, u_input.d.x, true) >> (func_4(Struct_1(1235f, vec3<u32>(55093u, u_input.c, 1u), vec2<bool>(false, true), vec3<f32>(-509f, -492f, 185f)), vec4<bool>(false, true, false, true), Struct_1(757f, vec3<u32>(0u, u_input.b.x, 65094u), vec2<bool>(true, false), vec3<f32>(-565f, 877f, 203f))).b.x % 32u)))));
    global1 = var_1.c.x;
    var var_2 = var_1.d;
    var_1 = Struct_1(var_1.d.x, var_1.b, var_1.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-var_1.a)), var_1.a, var_2.x), var_1.d)));
    var var_3 = Struct_1(var_2.x, _wgslsmith_clamp_vec3_u32(func_4(Struct_1(-794f, vec3<u32>(var_0, var_0, var_0), vec2<bool>(var_1.c.x, var_1.c.x), var_1.d), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), Struct_1(var_1.a, vec3<u32>(var_1.b.x, 52064u, var_0), vec2<bool>(var_1.c.x, var_1.c.x), var_1.d)).b, vec3<u32>(1u, var_0, 0u) << (vec3<u32>(var_0, var_1.b.x, var_1.b.x) % vec3<u32>(32u)), var_1.b << (~vec3<u32>(var_1.b.x, 63704u, var_0) % vec3<u32>(32u))) ^ vec3<u32>(~u_input.c << (~1u % 32u), u_input.b.x, _wgslsmith_mult_u32(~var_1.b.x, var_0)), select(var_1.c, !var_1.c, false), _wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_f_op_vec3_f32(-var_1.d)) - vec3<f32>(705f, var_2.x, -604f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, reverseBits(vec3<i32>(1i, ~(-1i) ^ u_input.a.x, -(0i << (var_0 % 32u)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, ~u_input.a.x), vec3<i32>(-25365i, 0i, 0i)));
}

