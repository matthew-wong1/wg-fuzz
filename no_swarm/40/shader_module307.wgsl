struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<f32>(1107f, 793f, -1000f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<bool, 21>;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_1(abs(arg_2.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)) - global0.b))));
    global2 = array<bool, 21>();
    let var_1 = !global1.wy;
    var_0 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_0.c.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -3680f)), -1204f, 933f)));
    var_0 = arg_0.c;
    return -1i;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> i32 {
    global1 = vec4<bool>(!global1.x, all(vec2<bool>(true & !arg_0.d, all(global1.xw))), global1.x, true);
    global1 = select(!select(!select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 21u)], true), vec4<bool>(arg_0.d, true, arg_0.d, true), global1.x), vec4<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], arg_0.d, true)), true, all(global1.ywy)), vec4<bool>(all(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a, 21u)], false, false)), true, global2[_wgslsmith_index_u32(~u_input.a.x, 21u)], global2[_wgslsmith_index_u32(arg_1, 21u)] | global2[_wgslsmith_index_u32(arg_0.a.a, 21u)])), !select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.a.a, 21u)], false, global1.x), vec4<bool>(arg_0.d, arg_0.d, false, global1.x), global1.x), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)], global1.x, global1.x), global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), select(vec4<bool>(global1.x, arg_0.d, global2[_wgslsmith_index_u32(arg_1, 21u)], false), vec4<bool>(false, arg_0.d, global1.x, arg_0.d), vec4<bool>(false, arg_0.d, false, global1.x))), vec4<bool>(true, true, arg_0.d, true), any(vec2<bool>(true, true))), arg_0.d);
    global1 = !select(!select(!vec4<bool>(false, global1.x, false, global2[_wgslsmith_index_u32(83426u, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(4277u, 21u)], arg_0.d, global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), arg_0.d), !(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(18164u, 21u)])), vec4<bool>(true, false, !(false && global2[_wgslsmith_index_u32(global0.a, 21u)]), global1.x));
    let var_0 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, 378f, 1000f)))))));
    var var_1 = !global1.x & select(global2[_wgslsmith_index_u32((4294967295u ^ arg_0.c.a) >> (~21217u % 32u), 21u)] == global1.x, all(!vec4<bool>(false, arg_0.d, true, false)), (global1.x & global1.x) & any(vec2<bool>(true, true)));
    return -58541i;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, 1i), _wgslsmith_div_vec2_i32(~abs(vec2<i32>(-37994i, 1i)), vec2<i32>(-28444i, 1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(func_2(Struct_2(Struct_1(global0.a, vec3<f32>(global0.b.x, global0.b.x, 162f)), vec2<i32>(-25297i, -4313i), Struct_1(u_input.a.x, global0.b), global1.x, vec4<f32>(796f, global0.b.x, -1044f, -962f)), Struct_1(13200u, vec3<f32>(1119f, -1408f, -297f)), vec2<u32>(global0.a, global0.a)), func_2(Struct_2(Struct_1(20252u, vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), vec2<i32>(-11575i, 269i), Struct_1(49198u, global0.b), false, vec4<f32>(-1000f, global0.b.x, global0.b.x, global0.b.x)), Struct_1(u_input.a.x, global0.b), vec2<u32>(0u, u_input.a.x))), abs(func_3(Struct_2(Struct_1(u_input.a.x, global0.b), vec2<i32>(-49806i, -1i), Struct_1(global0.a, global0.b), global2[_wgslsmith_index_u32(global0.a, 21u)], vec4<f32>(-705f, global0.b.x, 633f, 588f)), 8912u, 591f))), vec2<i32>(1i, 0i)));
    var var_1 = Struct_1(u_input.a.x, vec3<f32>(431f, 989f, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(-global0.b.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, abs(49395u)), vec2<u32>(~u_input.a.x, 0u)), vec3<f32>(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(233f))), _wgslsmith_f_op_f32(-global0.b.x))), ~(vec2<i32>(1i, i32(-1i) * -8308i) >> (vec2<u32>(42318u & u_input.a.x, ~27064u) % vec2<u32>(32u))), Struct_1(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(global0.a, var_1.a, 15192u), vec3<u32>(4294967295u, 7420u, global0.a)), ~vec3<u32>(global0.a, 4294967295u, 39385u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), global0.b.x, _wgslsmith_f_op_f32(min(global0.b.x, -490f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(610f, var_1.b.x, -484f)) - vec3<f32>(global0.b.x, -661f, global0.b.x)))), global2[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, global0.b.x, global0.b.x, -678f) - vec4<f32>(global0.b.x, -1000f, 1430f, 436f)))), vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, 1634f)), _wgslsmith_div_f32(global0.b.x, 733f), -1125f, -1771f))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) + _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))))));
    global0 = var_2.c;
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    global2 = array<bool, 21>();
    let var_0 = any(!select(vec4<bool>(global0.a < 0u, false, any(vec3<bool>(global1.x, global1.x, global2[_wgslsmith_index_u32(global0.a, 21u)])), true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.a.a, 21u)], true, false), select(vec4<bool>(arg_1.d, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(47303u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global1.x, true), vec4<bool>(global1.x, true, global1.x, arg_1.d)), !arg_1.d), !any(vec2<bool>(false, false))));
    global1 = vec4<bool>(arg_1.d, select(true, all(select(vec4<bool>(false, false, false, arg_1.d), vec4<bool>(arg_1.d, var_0, global1.x, arg_1.d), true)), !var_0 | (!var_0 & true)), !(!arg_1.d), !global1.x);
    var var_1 = arg_0.c;
    global2 = array<bool, 21>();
    return -arg_1.b.x;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> Struct_3 {
    let var_0 = vec2<i32>(~min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, 54519i, -21319i, 21233i), vec4<i32>(arg_3, 16086i, 8853i, 2147483647i)) & -72206i, ~(arg_3 ^ arg_3)), _wgslsmith_add_i32(i32(-1i) * -arg_3, select(~9736i, 0i, true)));
    let var_1 = vec2<i32>((arg_0 & _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_3, 0i, var_0.x), countOneBits(vec3<i32>(arg_3, -20163i, 28523i)))) << (5310u % 32u), _wgslsmith_mod_i32(2094i, _wgslsmith_sub_i32(~(-1i), -1i)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1015f)), arg_2.x, _wgslsmith_f_op_f32(arg_2.x * global0.b.x), _wgslsmith_f_op_f32(global0.b.x - global0.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(862f)), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1327f - global0.b.x) + _wgslsmith_f_op_f32(-2388f * arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.b.x, _wgslsmith_f_op_f32(arg_2.x * 856f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(752f, -890f, global0.b.x, arg_2.x) - vec4<f32>(-225f, arg_2.x, 1291f, global0.b.x))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zx ^ u_input.a.yy, vec2<u32>(90154u, 0u)), vec2<u32>(0u, abs(0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1636f, global0.b.x)), _wgslsmith_f_op_vec3_f32(global0.b + var_2.wxz))))), -(~(~var_1)) & -_wgslsmith_div_vec2_i32(vec2<i32>(-1290i, 47266i) & var_1, -vec2<i32>(var_1.x, 41337i)), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, 915f, 1000f))))), false, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, 1121f, 1084f, -835f), vec4<f32>(1063f, 1637f, -1634f, global0.b.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, global0.b.x, global0.b.x, arg_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1860f, global0.b.x, 614f, var_2.x), vec4<f32>(-944f, 1119f, -419f, -749f))))))));
    global2 = array<bool, 21>();
    return Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(func_3(func_1(), var_3.a.a, -1178f), -var_0.x), -53621i), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.ww, vec2<u32>(var_3.c.a, var_3.a.a)), vec2<u32>(20961u, global0.a)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, var_3.c.a)), vec2<u32>(global0.a, global0.a))), 4294967295u), Struct_1(57895u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xzz) * vec3<f32>(-569f, 1174f, _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = select(vec3<bool>(arg_0.c.b.x <= -307f, true, any(select(global1.yxy, select(vec3<bool>(true, global1.x, true), global1.xzy, global1.x), select(global1.wyy, global1.zxx, true)))), !vec3<bool>(func_1().d, global2[_wgslsmith_index_u32(global0.a, 21u)], true), !select(global1.yxz, global1.zxw, true));
    let var_1 = global2[_wgslsmith_index_u32(global0.a, 21u)];
    var_0 = select(!select(select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(24689u, 21u)], true), !global1.yww, vec3<bool>(true, false, var_0.x)), global1.zyy, global1.zwz), !select(!(!vec3<bool>(global1.x, true, global1.x)), select(select(vec3<bool>(false, global1.x, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global1.x), true), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.c.a, 21u)], false, var_0.x), true), global2[_wgslsmith_index_u32(func_1().c.a, 21u)]), vec3<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 21u)], false, true, true)), true, !all(vec3<bool>(true, global1.x, true))));
    var_0 = global1.zzw;
    var var_2 = global1.wz;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(_wgslsmith_sub_i32(func_4(Struct_3(-2147483647i, u_input.a.yz, Struct_1(4294967295u, vec3<f32>(global0.b.x, -578f, global0.b.x))), func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -416f, global0.b.x, 121f)), 0u), 1i), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(global0.b.x * 1003f)), 995f), countOneBits(func_2(func_1(), Struct_1(u_input.a.x, global0.b), u_input.a.yw))));
    global2 = array<bool, 21>();
    var var_0 = _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -1000f)));
    let var_1 = vec2<bool>(func_1().d, all(select(select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global1.x, global1.x), vec4<bool>(global2[_wgslsmith_index_u32(28996u, 21u)], global1.x, global2[_wgslsmith_index_u32(73365u, 21u)], false)), !vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 21u)], false, false, global1.x), global1.x), select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, true, false, false), false), !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 21u)], true, global1.x), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global2[_wgslsmith_index_u32(0u, 21u)], global1.x))), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a, 21u)], true, global2[_wgslsmith_index_u32(16016u, 21u)]), false))));
    var_0 = global0.b.x;
    let var_2 = func_1();
    let var_3 = (~(countOneBits(vec4<i32>(var_2.b.x, var_2.b.x, var_2.b.x, 30821i)) >> (_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-25384i, 2147483647i, -2147483647i) ^ vec3<i32>(var_2.b.x, -2147483647i, -2147483647i), vec3<i32>(1i, var_2.b.x, -70562i) | vec3<i32>(-2147483647i, 1i, var_2.b.x)), -_wgslsmith_sub_i32(var_2.b.x, -41570i), func_4(func_5(var_2.b.x, true, global0.b.xz, -1730i), var_2, var_2.e, var_2.c.a), -14656i)) & -vec4<i32>(var_2.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-10i, var_2.b.x, var_2.b.x), vec3<i32>(-5390i, var_2.b.x, 0i)), var_2.b.x, abs(_wgslsmith_div_i32(-1i, var_2.b.x)));
    let var_4 = func_5((var_3.x << (~(~1u) % 32u)) << (firstTrailingBit(80398u) % 32u), var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, 293f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b.yx, vec2<f32>(global0.b.x, var_2.e.x))) * vec2<f32>(var_2.a.b.x, -273f))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-var_3.x, reverseBits(40708i) | _wgslsmith_dot_vec2_i32(-var_2.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-42576i, var_3.x), vec2<i32>(var_2.b.x, var_3.x)))), -vec3<i32>(var_2.b.x, -min(-4328i, 66304i), 1i), vec4<i32>(var_4.a, -24816i, _wgslsmith_mult_i32(56886i << (var_2.a.a % 32u), var_2.b.x << (0u % 32u)), func_3(var_2, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1220f))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xxx, ~vec3<u32>(u_input.a.x, var_2.c.a, 4294967295u) << (~u_input.a.zxz % vec3<u32>(32u))), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.c.a, 4294967295u, 42712u, var_2.c.a), u_input.a), min(u_input.a, vec4<u32>(var_2.a.a, 21139u, global0.a, global0.a))), u_input.a.x)), 2232f);
}

