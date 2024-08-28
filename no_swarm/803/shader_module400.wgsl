struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, false, false);

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, false, false, false, true, true, false, false, false, false, true, true, true, false, false, true, false, true, true, true, true, false, false, false, false, true, false, true, true, false);

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, ~51130u), _wgslsmith_sub_vec2_u32(vec2<u32>(18677u, 29517u), firstTrailingBit(vec2<u32>(4294967295u, 1u)))), select(global4.b, !vec3<bool>(true, true, global4.b.x), true), global4.c), global4.c.x, vec4<i32>(global0.x, _wgslsmith_sub_i32(abs(firstLeadingBit(global0.x)), u_input.b.x), _wgslsmith_clamp_i32(reverseBits(2147483647i), -2147483647i, 0i) ^ u_input.b.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(~u_input.b, abs(vec2<i32>(7258i, u_input.b.x))))), 30045i, _wgslsmith_f_op_f32(floor(1781f)));
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = select(!(!(!(!vec4<bool>(false, true, arg_1, arg_1)))), select(!vec4<bool>(func_3(), arg_0 & global1[_wgslsmith_index_u32(arg_3.x, 8u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(24136u, 34904u), 31u)], global4.b.x), select(vec4<bool>(!global1[_wgslsmith_index_u32(global4.a.x, 8u)], u_input.b.x == 42342i, all(vec2<bool>(true, arg_2)), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(arg_1, false, global2[_wgslsmith_index_u32(22075u, 31u)], false), vec4<bool>(global2[_wgslsmith_index_u32(62463u, 31u)], arg_1, global2[_wgslsmith_index_u32(8269u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(true, false, arg_0, true)), any(vec2<bool>(global1[_wgslsmith_index_u32(17650u, 8u)], global4.b.x))), global2[_wgslsmith_index_u32(~170682u, 31u)]), vec4<bool>(all(vec2<bool>(true, arg_1)), global1[_wgslsmith_index_u32(max(1u, _wgslsmith_div_u32(global4.a.x, 1u)), 8u)], !(!global1[_wgslsmith_index_u32(global4.a.x, 8u)]), arg_1)), arg_2 | !(true && global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zy), 31u)]));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1623f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x - -796f) * _wgslsmith_div_f32(global4.c.x, global4.c.x)) * 1281f)), _wgslsmith_f_op_f32(-788f - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(348f - -281f) * global4.c.x)), -191f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global4.c.x - 421f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(372f)) + global4.c.x), _wgslsmith_f_op_f32(trunc(global4.c.x))))));
    global2 = array<bool, 31>();
    let var_2 = Struct_1(~vec2<u32>(_wgslsmith_div_u32(~35475u, 51520u & global4.a.x), 42907u << (~4294967295u % 32u)), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(120f, var_1.x, var_0.x))) == 338f, false, global1[_wgslsmith_index_u32(34900u, 8u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), global4.c.x, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1144f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1878f, -1201f, global4.c.x) * vec4<f32>(-1652f, 207f, 268f, global4.c.x)), _wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(var_1.x, global4.c.x, var_1.x, global4.c.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(global4.c)))))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global4.c.x, _wgslsmith_div_f32(var_2.c.x, global4.c.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-886f, 270f, -1394f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, global4.c.x, var_2.c.x) - var_2.c.zxx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x))) * vec3<f32>(var_1.x, 415f, -310f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1502f, 1369f), var_1.wxz)))))));
    return ~abs(~arg_3.xw);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(1i, global0.x, u_input.b.x, 2147483647i) | -vec4<i32>(u_input.b.x, u_input.b.x, -1i, -27560i)), vec4<i32>(-24252i, min(global0.x, u_input.b.x), ~global0.x, _wgslsmith_add_i32(-2147483647i, 8226i)) | countOneBits(vec4<i32>(u_input.b.x, -1i, 0i, global0.x) & vec4<i32>(1i, global0.x, 0i, 51253i))), firstTrailingBit(~select(max(vec4<i32>(global0.x, 0i, -80767i, -1i), vec4<i32>(35593i, u_input.b.x, -54522i, -2147483647i)), reverseBits(vec4<i32>(27517i, -38681i, global0.x, u_input.b.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], false, arg_0.b.x), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])))));
    global2 = array<bool, 31>();
    global3 = ~u_input.b.x;
    var var_2 = global4.b;
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(arg_0.a, vec2<u32>(1u, arg_0.a.x)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(global4.a, arg_0.a), ~1u) % vec2<u32>(32u)), select(!var_0.b, !arg_0.b, select(select(global4.b, arg_0.b, global4.b.x), var_0.b, global4.b.x == global4.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-663f, 441f, global4.c.x, arg_0.c.x), arg_0.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) - -2054f))), vec4<i32>(var_1.x, _wgslsmith_add_i32(-1i, u_input.b.x), _wgslsmith_sub_i32(15488i, _wgslsmith_dot_vec3_i32(vec3<i32>(35601i, global0.x, 9376i), _wgslsmith_add_vec3_i32(vec3<i32>(3373i, 18295i, global0.x), vec3<i32>(var_1.x, var_1.x, 0i)))), _wgslsmith_mod_i32(~16014i, ~(i32(-1i) * -2147483647i))), 1i, _wgslsmith_f_op_f32(max(arg_0.c.x, var_0.c.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(firstLeadingBit(max(func_2(false, global4.b.x, global4.b.x, u_input.c), reverseBits(global4.a))), vec3<bool>(global4.b.x, false, any(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(97699u, 31u)], global1[_wgslsmith_index_u32(0u, 8u)])) | global4.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-791f, 400f, 1804f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, 2131f, 826f, global4.c.x)))), vec4<f32>(-188f, _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(ceil(989f)), _wgslsmith_f_op_f32(ceil(385f))), false))));
    global2 = array<bool, 31>();
    let var_1 = 0u;
    global4 = func_4(Struct_1(vec2<u32>(_wgslsmith_add_u32(26490u, 19373u), ~var_1), select(var_0.a.b, vec3<bool>(true || var_0.a.b.x, any(vec4<bool>(true, global4.b.x, global1[_wgslsmith_index_u32(global4.a.x, 8u)], true)), true & var_0.a.b.x), _wgslsmith_f_op_f32(ceil(715f)) < _wgslsmith_f_op_f32(234f + -2126f)), _wgslsmith_f_op_vec4_f32(-global4.c))).a;
    return Struct_1(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(28383u, 1u)), ~_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(var_1, var_1)), vec2<u32>(44081u, 16508u))), global4.b, vec4<f32>(_wgslsmith_f_op_f32(select(global4.c.x, _wgslsmith_f_op_f32(-global4.c.x), global1[_wgslsmith_index_u32(abs(37917u), 8u)])), global4.c.x, global4.c.x, _wgslsmith_f_op_f32(trunc(-933f))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = vec2<f32>(-932f, 657f);
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    var var_1 = vec4<bool>(false, 21782u <= (~arg_2.a.x >> ((u_input.a.x >> (17258u % 32u)) % 32u)), all(!vec3<bool>(true, !arg_2.b.x, global2[_wgslsmith_index_u32(~1656u, 31u)])), any(!vec4<bool>(true && arg_2.b.x, !arg_2.b.x, true, true)));
    global4 = Struct_1(~(~(~(~vec2<u32>(arg_1.a.x, 15790u)))), !vec3<bool>(!any(vec4<bool>(global4.b.x, arg_1.b.x, false, true)), !(!global1[_wgslsmith_index_u32(1u, 8u)]), true), vec4<f32>(var_0.x, 1706f, _wgslsmith_f_op_f32(select(arg_2.c.x, global4.c.x, func_3())), _wgslsmith_f_op_f32(sign(-2412f))));
    return StorageBuffer(vec2<i32>(func_4(func_4(func_1()).a).d, ~global0.x ^ -2147483647i), vec2<i32>(abs(~global0.x), abs(-min(0i, -2147483647i))), -select(global0.x, global0.x, !any(vec4<bool>(arg_1.b.x, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c.zx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, global4.c.x))))));
    let x = u_input.a;
    s_output = func_5(var_2.x, func_1(), func_1());
}

