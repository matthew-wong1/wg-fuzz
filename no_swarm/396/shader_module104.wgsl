struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<bool>(false, false, select(!select(true, true, true), !all(vec2<bool>(true, false)), false));
    var_0 = select(!vec3<bool>(var_0.x, true, false), !(!(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)))), true);
    let var_1 = global1.x;
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(511f, -1000f, -706f) * vec3<f32>(999f, 689f, 219f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(943f)), 653f, _wgslsmith_f_op_f32(abs(-512f)))))), var_0.x, vec4<u32>(global1.x, max(~min(23685u, 0u), 0u), global1.x << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 57069u, global1.x), 1u) % 32u), global1.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, 390f, -2335f, -480f))))))));
    global0 = 0u;
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec2_u32(~abs(min(arg_1.yz, vec2<u32>(arg_1.x, arg_1.x)) | arg_2.c.xz), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, abs(0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(91463u, 73075u), abs(vec2<u32>(1u, arg_2.c.x)), arg_2.c.zy))));
    var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.c.x, 2534u)), ~arg_1.x)), _wgslsmith_div_u32(arg_3, arg_2.c.x)) | u_input.c;
    var var_1 = Struct_1(vec3<f32>(100f, 241f, _wgslsmith_f_op_f32(arg_2.a.x - 988f)), false, vec4<u32>(_wgslsmith_add_u32(~arg_1.x >> ((u_input.c.x << (4404u % 32u)) % 32u), 4294967295u), firstTrailingBit(4294967295u), 0u, 24082u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_2.a.x)), 749f, arg_2.a.x, -743f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_2.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 2153f, 1665f, arg_2.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d + arg_2.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-932f, arg_2.a.x, 280f, arg_2.a.x) + arg_2.d)))));
    let var_2 = ~1u;
    return vec2<u32>(0u, _wgslsmith_add_u32(~u_input.c.x ^ (~arg_3 >> (~arg_1.x % 32u)), var_2));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = abs(_wgslsmith_add_u32(60690u, global1.x) ^ u_input.d);
    global1 = max(func_4(arg_1.x, func_3(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1232f * -807f), -1266f, _wgslsmith_f_op_f32(max(593f, 1037f))), all(!vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), ~arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, 256f, 1336f, -1574f) + vec4<f32>(-373f, -381f, 1000f, 208f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-138f, 626f, -1201f, 324f) + vec4<f32>(-829f, 1000f, -591f, 1377f)))), 45220u), func_3().yy);
    global0 = arg_0.x;
    global1 = vec2<u32>(41334u, ~abs(_wgslsmith_sub_u32(abs(global1.x), arg_0.x & 698u)));
    global0 = 64483u;
    return select(vec4<bool>(any(select(select(arg_2.yy, vec2<bool>(arg_2.x, arg_1.x), arg_2.zz), !vec2<bool>(arg_1.x, arg_2.x), !arg_2.x)), all(select(select(vec4<bool>(false, arg_1.x, false, arg_2.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_2.x), arg_2.x), !vec4<bool>(false, true, arg_2.x, false), select(true, true, true))), true, arg_1.x), select(vec4<bool>(any(select(vec3<bool>(arg_2.x, false, false), vec3<bool>(true, false, false), arg_1.x)), arg_2.x, true, arg_1.x), !(!select(vec4<bool>(arg_2.x, arg_1.x, true, true), vec4<bool>(true, arg_2.x, true, true), true)), arg_1.x), select(select(vec4<bool>(true, !arg_2.x, arg_2.x | arg_1.x, arg_2.x), select(vec4<bool>(arg_2.x, false, arg_2.x, arg_1.x), vec4<bool>(arg_2.x, false, true, arg_2.x), !arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), !vec4<bool>(false, arg_1.x, arg_2.x, false), u_input.d > global1.x)), vec4<bool>(all(vec4<bool>(arg_1.x, false, arg_1.x, true)) | arg_1.x, true, !arg_1.x, true), arg_1.x));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1579f, 566f, 1607f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, 100f, 1341f))), vec3<f32>(-1490f, _wgslsmith_f_op_f32(-1844f * 145f), -1730f))), (all(func_2(vec4<u32>(0u, 16995u, 45483u, 39985u), vec2<bool>(false, false), vec3<bool>(false, false, false))) || any(vec3<bool>(true, true, true))) != true, func_3(), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(f32(-1f) * -1908f))) + 1365f), 1848f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(~5399u), 1u), 4294967295u);
    let var_2 = any(!vec4<bool>(true, var_0.b, true, all(vec4<bool>(false, var_0.b, var_0.b, false)))) || !var_0.b;
    global1 = u_input.c;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, min(vec4<i32>(_wgslsmith_clamp_i32(0i, -50179i, u_input.b.x), select(5103i, -2147483647i, true), _wgslsmith_sub_i32(38100i, u_input.a.x), u_input.a.x), u_input.b)), 2147483647i, _wgslsmith_sub_i32(40289i, 1i));
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = min(arg_2.c.x, u_input.c.x);
    global0 = global1.x;
    let var_1 = arg_1.x;
    global0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, 0u), ~(~(~global1.x)));
    let var_2 = select(vec4<bool>(any(arg_0), arg_0.x, false, true), func_2(~arg_2.c, select(vec2<bool>(!arg_2.b, !arg_0.x), select(vec2<bool>(false, false), select(vec2<bool>(arg_2.b, false), vec2<bool>(false, arg_0.x), vec2<bool>(true, true)), any(vec4<bool>(false, arg_2.b, arg_2.b, arg_0.x))), true), !vec3<bool>(any(vec3<bool>(true, false, arg_0.x)), all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), arg_0.x)), true);
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: f32) -> vec2<bool> {
    var var_0 = func_5(vec3<bool>(!(!arg_1.x), false, true), vec4<f32>(_wgslsmith_div_f32(-1080f, _wgslsmith_f_op_f32(-311f + arg_3)), _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1610f))))), _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))) + arg_0.d.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) + _wgslsmith_f_op_f32(f32(-1f) * -1121f)), -261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f * arg_3))), all(vec4<bool>(func_1(vec3<u32>(30775u, 0u, 17435u)), true, true, !arg_0.b)), min(abs(arg_0.c), arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, arg_0.a.x, _wgslsmith_f_op_f32(select(arg_2.x, arg_3, arg_1.x)), arg_0.d.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, 255f, -719f, arg_2.x) + arg_0.d))), vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(490f)) - _wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-297f)) + _wgslsmith_div_f32(-2093f, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * func_5(vec3<bool>(arg_0.b, arg_1.x, arg_0.b), vec4<f32>(1180f, arg_3, arg_3, 237f), arg_0, vec4<f32>(arg_0.a.x, 876f, -627f, arg_2.x)).a.x) + func_5(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -2087f, -901f, arg_0.a.x)), arg_0, arg_0.d).a.x)));
    let var_1 = func_5(vec3<bool>(true, true, false), arg_0.d, func_5(vec3<bool>(all(select(vec3<bool>(true, false, arg_0.b), vec3<bool>(true, false, arg_0.b), false)), !arg_0.b || true, false), vec4<f32>(-1820f, _wgslsmith_f_op_f32(round(168f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.x - 217f))), arg_3), Struct_1(vec3<f32>(arg_0.a.x, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), true, ~(~arg_0.c), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.d.x, -505f)), arg_3, -139f, _wgslsmith_f_op_f32(ceil(arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - _wgslsmith_div_vec4_f32(vec4<f32>(-422f, -198f, var_0.d.x, -1390f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, 780f, -548f, var_0.d.x), vec4<f32>(arg_2.x, 1390f, arg_3, arg_3)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.d.x, arg_3, 145f), vec4<f32>(1129f, 1521f, 528f, 517f), vec4<bool>(arg_1.x, true, arg_0.b, true))))))));
    global1 = reverseBits(vec2<u32>(u_input.c.x, func_3().x));
    let var_2 = true;
    let var_3 = func_5(!select(!(!vec3<bool>(true, false, arg_0.b)), select(!vec3<bool>(true, false, var_2), !vec3<bool>(var_1.b, var_0.b, arg_0.b), true), !(arg_0.d.x < var_1.d.x)), vec4<f32>(_wgslsmith_f_op_f32(round(-984f)), _wgslsmith_f_op_f32(trunc(arg_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))), true)), var_1.d.x), arg_0, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x - -1979f))), _wgslsmith_f_op_f32(select(arg_2.x, -1698f, true)), _wgslsmith_f_op_f32(select(737f, _wgslsmith_f_op_f32(-260f + arg_2.x), !var_0.b)), -1419f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    global1 = select(abs(~(vec2<u32>(u_input.c.x, u_input.c.x) & u_input.c)), u_input.c, func_6(func_5(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec4<f32>(1168f, _wgslsmith_f_op_f32(f32(-1f) * -1272f), -945f, _wgslsmith_f_op_f32(f32(-1f) * -744f)), Struct_1(vec3<f32>(-1264f, 760f, 1085f), func_1(vec3<u32>(u_input.d, u_input.d, u_input.d)), min(vec4<u32>(global1.x, 21717u, 78908u, 10955u), vec4<u32>(4294967295u, 0u, 40471u, 93598u)), vec4<f32>(-1448f, -207f, 238f, -246f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-417f, -178f, 1201f, 1976f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, 1000f, 424f, -1526f)))), vec2<bool>(false, all(vec2<bool>(false, true)) & true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(991f, -1387f, 1000f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-920f, -630f, -886f), vec3<f32>(-1609f, -310f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2542f * -1000f)))));
    let var_0 = select(func_2(func_5(vec3<bool>(func_5(vec3<bool>(false, true, false), vec4<f32>(-1361f, -718f, -2025f, 1000f), Struct_1(vec3<f32>(535f, -223f, -1246f), true, vec4<u32>(global1.x, 140627u, 1u, 19269u), vec4<f32>(1187f, 957f, 638f, -1164f)), vec4<f32>(-466f, -1104f, 310f, -1084f)).b, true, any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1145f, 301f, -1250f, -242f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1595f, 908f, 2453f, -1168f), vec4<f32>(269f, 705f, 920f, 787f)))), func_5(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-357f, -557f, 166f, -1007f))), func_5(vec3<bool>(false, false, false), vec4<f32>(1955f, 252f, -933f, -1746f), Struct_1(vec3<f32>(252f, -428f, 1796f), true, vec4<u32>(global1.x, u_input.c.x, 76486u, u_input.c.x), vec4<f32>(-1285f, -877f, 883f, 391f)), vec4<f32>(-1134f, 238f, -1918f, 1136f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1506f, 1039f, -1913f, -884f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(281f, 906f, 1683f, -1000f), vec4<f32>(-1000f, -650f, -1204f, 297f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1742f, -1454f, 2283f, 284f))), true))).c, !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_2(vec4<u32>(67953u, u_input.d, u_input.c.x, global1.x), vec2<bool>(false, true), vec3<bool>(true, false, false)).yw, all(vec2<bool>(false, false))), vec3<bool>(true, true, true)), select(vec4<bool>(false, true || func_2(vec4<u32>(9913u, u_input.c.x, u_input.c.x, global1.x), vec2<bool>(false, true), vec3<bool>(false, false, false)).x, false, true), !vec4<bool>(true, true, func_6(Struct_1(vec3<f32>(1396f, 381f, -837f), true, vec4<u32>(global1.x, 1u, global1.x, 45380u), vec4<f32>(-108f, -502f, 383f, -462f)), vec2<bool>(false, false), vec3<f32>(-899f, -264f, 148f), 175f).x, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), func_2(vec4<u32>(4294967295u, 85021u, u_input.c.x, global1.x), vec2<bool>(true, false), vec3<bool>(false, false, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, func_1(vec3<u32>(u_input.d, 23536u, 77573u))), true), true));
    global1 = ~(vec2<u32>(global1.x, ~(~72771u)) & _wgslsmith_add_vec2_u32(vec2<u32>(max(1u, u_input.c.x), _wgslsmith_div_u32(0u, 12897u)), u_input.c));
    var var_1 = func_5(!var_0.zzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2493f, _wgslsmith_f_op_f32(f32(-1f) * -130f), -406f, _wgslsmith_f_op_f32(-935f * -1275f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(389f, 235f, 416f, 1000f))))), func_5(vec3<bool>(var_0.x, !func_5(vec3<bool>(var_0.x, var_0.x, true), vec4<f32>(-1000f, -2028f, -1198f, 1100f), Struct_1(vec3<f32>(-1431f, -235f, 921f), true, vec4<u32>(global1.x, u_input.d, 47996u, u_input.d), vec4<f32>(-1779f, 117f, 1000f, -1185f)), vec4<f32>(542f, 571f, -1229f, -409f)).b, true), vec4<f32>(-340f, 1120f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(414f))), 1761f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, -629f, 1000f)), !(!var_0.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 1u, 4294967295u, global1.x), ~vec4<u32>(0u, 4294967295u, global1.x, 44498u)), func_5(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, -1000f, -720f, 1121f) * vec4<f32>(1015f, -1655f, 133f, 272f)), Struct_1(vec3<f32>(-2088f, 554f, -971f), false, vec4<u32>(global1.x, 0u, u_input.d, 11181u), vec4<f32>(-508f, 1042f, 908f, 1126f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2056f, 807f, 1289f, 526f) * vec4<f32>(1298f, -707f, -1000f, -1000f))).d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1026f - -1238f), _wgslsmith_f_op_f32(715f * -1477f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -489f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(264f, 1015f, 1412f, -1379f), vec4<f32>(-616f, 1441f, 844f, 898f), true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(var_0.zxy, vec4<f32>(114f, -1275f, -215f, -609f), Struct_1(vec3<f32>(-1007f, 1473f, 639f), var_0.x, vec4<u32>(global1.x, global1.x, u_input.c.x, 9104u), vec4<f32>(268f, -104f, -1000f, -1339f)), vec4<f32>(-1064f, -114f, 818f, 1014f)).d.x, 531f, _wgslsmith_f_op_f32(f32(-1f) * -890f), 1f)))));
    global1 = vec2<u32>(~global1.x, 3066u);
    let x = u_input.a;
    s_output = StorageBuffer(-22088i);
}

