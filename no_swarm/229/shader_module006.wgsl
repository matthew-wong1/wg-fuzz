struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 36505u, 0u, 4294967295u, 6699u, 27230u, 74960u, 3212u);

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, true, false, false, true, false, true, true, true, false, false, true, false, true, false, true, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    global1 = array<bool, 21>();
    var var_0 = arg_0;
    let var_1 = var_0.a.x;
    let var_2 = 4294967295u ^ ((u_input.a.x << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)]) ^ 0u, 8u)] % 32u)) | (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5059u, 4294967295u, min(u_input.a.x, 0u)), 8u)] ^ 45786u));
    let var_3 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 8u)] & _wgslsmith_div_u32(1u, (4294967295u >> (1u % 32u)) >> (1u % 32u)), ~(~0u));
    return 1i;
}

fn func_3() -> f32 {
    var var_0 = firstLeadingBit(~abs(-countOneBits(u_input.d)));
    var var_1 = true;
    var var_2 = select(vec3<u32>(86090u, select(30272u, 59803u, global1[_wgslsmith_index_u32(0u, 21u)] && global1[_wgslsmith_index_u32(21136u, 21u)]), ~(~1u)) >> (max(vec3<u32>(23225u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12642u, 8u)], 8u)], u_input.a.x), vec3<u32>(2151u, u_input.a.x, 1u)), 8u)], 0u), (vec3<u32>(4294967295u, u_input.a.x, 40578u) | vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)])) | (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) ^ vec3<u32>(66433u, 62507u, 0u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(23464u, global0[_wgslsmith_index_u32(79499u, 8u)], u_input.a.x), abs(vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(1u, 8u)])), vec3<u32>(70406u, 4294967295u, 0u)) | _wgslsmith_mult_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 0u, 4294967295u), firstTrailingBit(vec3<u32>(41393u, u_input.a.x, 0u))), vec3<u32>(select(~u_input.a.x, countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), true), ~1112u, global0[_wgslsmith_index_u32(firstTrailingBit(30616u), 8u)])), !(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(20868u, 21u)], true, true)))));
    global1 = array<bool, 21>();
    var var_3 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-3288f, -286f)) + 1768f), _wgslsmith_f_op_f32(1226f - _wgslsmith_f_op_f32(round(692f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(878f, 782f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f + 2373f)))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    var var_0 = arg_0.c;
    var var_1 = Struct_4(select(vec2<i32>(arg_1, func_2(arg_0.c, _wgslsmith_sub_i32(1i, u_input.c))), select(vec2<i32>(u_input.b.x, firstTrailingBit(u_input.c)), u_input.b, !vec2<bool>(var_0.a.x, global1[_wgslsmith_index_u32(3945u, 21u)])), arg_0.b.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))) + 1493f), Struct_2(_wgslsmith_f_op_f32(-arg_0.a), !(!var_0.a), Struct_1(vec4<bool>(true, all(vec2<bool>(false, arg_2.x)), true, true))), !select(!select(arg_0.c.a.wwz, arg_0.b.zzy, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), !select(arg_0.c.a.yxz, arg_0.b.xyy, false), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_0.a <= arg_0.a, true)));
    var_1 = Struct_4(vec2<i32>(-u_input.d | ~2147483647i, u_input.b.x), _wgslsmith_f_op_f32(func_3()), Struct_2(_wgslsmith_f_op_f32(abs(708f)), select(arg_0.c.a, vec4<bool>(u_input.a.x == 4294967295u, var_0.a.x, all(var_1.c.b), true), var_0.a), Struct_1(!select(vec4<bool>(var_1.d.x, false, arg_2.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 21u)]), vec4<bool>(true, false, arg_0.c.a.x, var_0.a.x), false))), arg_0.b.wwz);
    let var_2 = abs(-u_input.d);
    var_0 = Struct_1(select(!arg_0.b, vec4<bool>(true, true, true, all(vec2<bool>(true, true))), !(!any(arg_0.b.zxx))));
    return _wgslsmith_mult_u32(~reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.a.x | 50678u)), ~(~1u) >> ((~(1163u | global0[_wgslsmith_index_u32(133527u, 8u)]) | abs(~u_input.a.x)) % 32u));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_div_i32(min(~firstTrailingBit(u_input.b.x), -u_input.e), firstLeadingBit(firstLeadingBit(-arg_0.a.x))), u_input.b.x, Struct_1(vec4<bool>(true, any(!arg_0.c.c.a), (0u | u_input.a.x) >= u_input.a.x, true)), Struct_2(-1763f, vec4<bool>(all(vec3<bool>(false, false, false)), !(arg_2.b.x && false), !(true | arg_2.c.a.x), all(vec4<bool>(true, false, false, false))), Struct_1(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], false, true), arg_0.c.b, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 21u)]))));
    global1 = array<bool, 21>();
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1153f + -957f) - -468f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, arg_2.a) + vec2<f32>(-633f, arg_2.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, 1137f) + vec2<f32>(arg_0.b, -2980f)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    let var_0 = func_4(Struct_4(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-1i, ~(-7250i))), 1f, Struct_2(-113f, vec4<bool>(true, false, all(vec3<bool>(global1[_wgslsmith_index_u32(25607u, 21u)], global1[_wgslsmith_index_u32(55148u, 21u)], false)), global1[_wgslsmith_index_u32(0u, 21u)] | global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), Struct_1(select(vec4<bool>(true, global1[_wgslsmith_index_u32(30592u, 21u)], true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), false))), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec3<bool>(global1[_wgslsmith_index_u32(7025u, 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 21u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 21u)], false), vec3<bool>(global1[_wgslsmith_index_u32(51230u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, global1[_wgslsmith_index_u32(9786u, 21u)])))), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_1(Struct_2(-457f, select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 21u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(41710u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), global1[_wgslsmith_index_u32(33114u, 21u)]), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59941u, 8u)], 21u)], true, true, false))), (-2147483647i >> (u_input.a.x % 32u)) >> (_wgslsmith_mult_u32(44608u, 76879u) % 32u), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63461u, 8u)], 8u)], 21u)]))), 8u)], 8u)], _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(1743u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 51331u, 4294967295u)), max(vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(1907u, 8u)], 0u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)])))), func_1(Struct_2(711f, vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]))), ~1i, vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-538f))), !vec4<bool>(global1[_wgslsmith_index_u32(select(u_input.a.x, 48002u, true), 21u)], false, !global1[_wgslsmith_index_u32(4294967295u, 21u)], true), Struct_1(vec4<bool>(true, true, true, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1512f, func_4(Struct_4(vec2<i32>(2147483647i, u_input.d), var_0.a, var_0, vec3<bool>(true, var_0.c.a.x, true)), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), var_0).a, -2077f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, 288f, -253f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1019f, 147f) - vec3<f32>(274f, -746f, var_0.a))), true))));
    let var_2 = -(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.d, -1i, u_input.e, u_input.e), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 1i)), abs(vec4<i32>(0i, -21143i, u_input.b.x, 34024i))));
    let var_3 = -1i;
    var var_4 = Struct_3(var_2.x, i32(-1i) * -9341i, var_0.c, func_4(Struct_4(var_2.wx, _wgslsmith_f_op_f32(-853f * var_1.x), var_0, vec3<bool>(var_0.c.a.x && var_0.b.x, global1[_wgslsmith_index_u32(40236u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)] % 32u), 21u)], global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 8u)], 21u)])), abs(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

