struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2767f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1621f * -730f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-379f, 369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2140f) * -1383f)), 1000f);
    global0 = false;
    let var_1 = 2147483647i;
    var var_2 = Struct_1(false, global1[_wgslsmith_index_u32(min(~(~(4294967295u >> (u_input.d.x % 32u))), _wgslsmith_sub_u32(~(~21743u), u_input.b.x)), 24u)], true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wwy + var_0.yyx)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(292f, var_0.x, var_0.x), vec3<f32>(260f, 474f, var_0.x))))) + var_0.www), vec3<bool>(true, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), false));
    global0 = var_2.a;
    return var_2.e.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = false;
    global1 = array<i32, 24>();
    global0 = any(vec4<bool>(arg_1.c, arg_2.a, arg_2.a & (arg_1.e.x & func_3(vec2<i32>(-2147483647i, arg_2.b))), !(_wgslsmith_f_op_f32(-arg_1.d.x) != arg_1.d.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, 936f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(205f, arg_1.d.x)), -1068f)), _wgslsmith_f_op_f32(min(-267f, _wgslsmith_f_op_f32(abs(arg_2.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.d.x - arg_1.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(sign(1393f)), select(arg_2.e.x, arg_2.e.x, arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f * 144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * arg_1.d.x))), !vec4<bool>(799f != arg_2.d.x, true, arg_2.e.x, 1u > u_input.a))));
    let var_1 = arg_1.e.xy;
    return Struct_1(!all(select(select(arg_2.e, vec3<bool>(true, false, arg_2.a), arg_1.e), vec3<bool>(true, true, true), vec3<bool>(arg_2.a, true, true))), 50654i & (i32(-1i) * -arg_2.b), arg_1.a, _wgslsmith_f_op_vec3_f32(arg_2.d * vec3<f32>(_wgslsmith_f_op_f32(max(-1341f, _wgslsmith_f_op_f32(step(817f, var_0.x)))), arg_1.d.x, 781f)), arg_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<i32, 24>();
    global0 = true;
    global0 = arg_0.e.x;
    global0 = !arg_0.c;
    global0 = !arg_1.e.x;
    return Struct_1(arg_1.c, _wgslsmith_div_i32(2147483647i, -2147483647i), arg_1.e.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-157f - -1000f), _wgslsmith_div_f32(-1484f, arg_0.d.x), _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(min(2484f, arg_0.d.x)))))), !vec3<bool>(all(select(arg_1.e, vec3<bool>(arg_0.e.x, arg_0.c, false), arg_0.e)), _wgslsmith_f_op_f32(arg_0.d.x - 349f) >= _wgslsmith_f_op_f32(round(arg_0.d.x)), true));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> u32 {
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    global0 = arg_1.e.x;
    global1 = array<i32, 24>();
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(~min(abs(u_input.b.x), _wgslsmith_mod_u32(1u, u_input.a)), 76928u), 4294967295u);
}

fn func_1() -> bool {
    let var_0 = func_5(294f, func_4(func_2(u_input.e.xzy, Struct_1(true, 39300i, select(false, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 957f, 2374f)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), Struct_1(true, u_input.e.x & global1[_wgslsmith_index_u32(u_input.d.x, 24u)], any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, 896f, -859f) * vec3<f32>(1330f, -1464f, -302f)), vec3<bool>(true, true, true))), Struct_1(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(19501u, 24u)], u_input.c)), Struct_1(false, -29166i, true, vec3<f32>(-1351f, 1751f, 172f), vec3<bool>(false, true, false)), Struct_1(false, -13020i, false, vec3<f32>(1976f, -638f, -1686f), vec3<bool>(true, false, true))).a, u_input.c, ~u_input.e.x < -2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(-1397f, 1228f, -580f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-314f, -218f, 114f)))), func_2(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], -1i), Struct_1(false, u_input.c, true, vec3<f32>(-1026f, 254f, -1451f), vec3<bool>(false, false, false)), func_2(u_input.e.zxy, Struct_1(false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false, vec3<f32>(-787f, 345f, 752f), vec3<bool>(false, false, true)), Struct_1(false, 2147483647i, false, vec3<f32>(530f, 1694f, 274f), vec3<bool>(true, false, false)))).e)));
    global0 = ~u_input.e.x != u_input.e.x;
    var var_1 = u_input.e.x;
    var var_2 = firstLeadingBit(-abs(select(_wgslsmith_div_i32(u_input.e.x, global1[_wgslsmith_index_u32(var_0, 24u)]), global1[_wgslsmith_index_u32(35744u, 24u)] << (68451u % 32u), select(true, false, true))));
    var var_3 = Struct_1(false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], !(all(func_2(vec3<i32>(-2147483647i, 17979i, 2147483647i), Struct_1(false, u_input.e.x, true, vec3<f32>(969f, 673f, 766f), vec3<bool>(false, false, false)), Struct_1(true, 38316i, true, vec3<f32>(1000f, -1000f, 586f), vec3<bool>(false, true, true))).e.yy) | func_4(Struct_1(false, 1i, true, vec3<f32>(1366f, 861f, 884f), vec3<bool>(true, true, true)), func_2(vec3<i32>(51104i, u_input.c, global1[_wgslsmith_index_u32(5271u, 24u)]), Struct_1(true, 1i, false, vec3<f32>(751f, 696f, -1530f), vec3<bool>(true, true, false)), Struct_1(false, global1[_wgslsmith_index_u32(var_0, 24u)], true, vec3<f32>(-1241f, 1283f, -102f), vec3<bool>(true, true, true)))).a), vec3<f32>(1440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(316f))), _wgslsmith_f_op_f32(f32(-1f) * -150f)), select(vec3<bool>(false, func_3(-vec2<i32>(-22116i, u_input.e.x)), select(select(true, true, false), true, true)), func_4(Struct_1(true, _wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(1u, 24u)]), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, -1052f, 1018f) * vec3<f32>(-1265f, 840f, -1906f)), vec3<bool>(false, false, false)), Struct_1(true, 45235i, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, -1036f, -513f)), func_4(Struct_1(true, -33425i, true, vec3<f32>(-542f, 404f, -2436f), vec3<bool>(true, false, true)), Struct_1(false, global1[_wgslsmith_index_u32(var_0, 24u)], true, vec3<f32>(-945f, -1000f, -513f), vec3<bool>(true, true, true))).e)).e, 1u >= u_input.a));
    return !any(var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, global1[_wgslsmith_index_u32(4294967295u, 24u)], func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, -829f, -1024f)))))), vec3<bool>(true, func_4(func_2(select(vec3<i32>(19974i, u_input.c, u_input.c), u_input.e.www, true), func_4(Struct_1(true, 6838i, true, vec3<f32>(1116f, 1000f, 1841f), vec3<bool>(false, false, true)), Struct_1(false, 49493i, false, vec3<f32>(-161f, 287f, -665f), vec3<bool>(false, true, false))), func_4(Struct_1(false, u_input.c, true, vec3<f32>(1187f, -1056f, -837f), vec3<bool>(false, false, true)), Struct_1(true, 0i, true, vec3<f32>(1201f, -152f, -1000f), vec3<bool>(false, true, false)))), Struct_1(true, 1i, select(false, true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-940f, 1280f, -2334f) * vec3<f32>(931f, -1259f, 783f)), vec3<bool>(true, true, true))).a, true));
    global1 = array<i32, 24>();
    var var_1 = ~u_input.b.x;
    global0 = var_0.a;
    global1 = array<i32, 24>();
    var var_2 = func_4(var_0, var_0);
    global0 = true;
    var var_3 = func_2(~u_input.e.zwx, var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-22715i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.d.yy)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f + 709f) + _wgslsmith_f_op_f32(f32(-1f) * -485f)), _wgslsmith_f_op_f32(trunc(var_3.d.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.x, var_0.d.x))))))));
}

