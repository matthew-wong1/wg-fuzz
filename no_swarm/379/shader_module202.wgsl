struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
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

var<private> global0: array<u32, 25> = array<u32, 25>(40248u, 6088u, 0u, 33039u, 22544u, 0u, 18165u, 1u, 4294967295u, 46840u, 4294967295u, 47015u, 6627u, 0u, 4294967295u, 4294967295u, 0u, 0u, 23581u, 1u, 9447u, 31027u, 1u, 0u, 34020u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<bool> {
    global0 = array<u32, 25>();
    let var_0 = Struct_1(u_input.b.x, ~6047u, ~_wgslsmith_sub_u32(1u, min(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 0u))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(39641i, arg_2.x, _wgslsmith_clamp_i32(~arg_1.d.b.x, 1i, _wgslsmith_mult_i32(u_input.a, u_input.e))), -6453i));
    global0 = array<u32, 25>();
    let var_1 = Struct_3(Struct_2(reverseBits(arg_1.b.a.a), arg_2.yz), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1347f, 377f, -197f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.c), _wgslsmith_f_op_f32(max(360f, -788f)), _wgslsmith_f_op_f32(1652f - arg_0))) + vec3<f32>(_wgslsmith_f_op_f32(-893f + 512f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.b.x, -1092f)), 1086f)), arg_0);
    global0 = array<u32, 25>();
    return !select(!arg_1.a, vec3<bool>(!(true || arg_1.c), true, false), select(vec3<bool>(any(vec4<bool>(true, false, arg_1.c, arg_1.a.x)), 144f <= arg_0, true), arg_1.a, !arg_1.a));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.c - _wgslsmith_f_op_f32(-1249f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2472f * arg_1.b.b.x))))), -1000f);
    global0 = array<u32, 25>();
    var var_1 = Struct_4(select(select(vec3<bool>(true, false, !arg_1.a.x), select(vec3<bool>(arg_1.a.x, true, true), vec3<bool>(arg_1.c, arg_1.c, arg_1.a.x), arg_1.a.x), vec3<bool>(arg_1.c || arg_1.c, true, arg_1.c)), select(select(arg_1.a, arg_1.a, false), func_3(var_0.x, arg_1, ~u_input.d), true), !vec3<bool>(0u <= arg_2, func_3(var_0.x, arg_1, u_input.d).x, !arg_1.a.x)), Struct_3(Struct_2(0u, _wgslsmith_div_vec2_i32(arg_1.b.a.b, u_input.d.zy)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-954f, _wgslsmith_f_op_f32(-911f - -257f), var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.b.c, 285f, arg_1.a.x))))))), func_3(_wgslsmith_f_op_f32(-1f), Struct_4(select(arg_1.a, vec3<bool>(true, arg_1.a.x, arg_1.c), select(vec3<bool>(true, arg_1.a.x, false), arg_1.a, arg_1.a)), Struct_3(Struct_2(arg_0, vec2<i32>(arg_1.b.a.b.x, arg_1.b.a.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, 872f) + vec3<f32>(1000f, arg_1.b.c, arg_1.b.c)), -2603f), !select(arg_1.a.x, false, arg_1.c), Struct_2(_wgslsmith_mult_u32(1u, u_input.b.x), ~vec2<i32>(arg_1.b.a.b.x, 41161i))), abs(u_input.d)).x, arg_1.b.a);
    var var_2 = Struct_4(var_1.a, Struct_3(var_1.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(var_1.b.b)))))), 287f), false, Struct_2(u_input.b.x, var_1.d.b));
    let var_3 = Struct_5(arg_1, Struct_2(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 31898u, u_input.b.x, 65167u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], arg_1.b.a.a, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 25u)], var_1.d.a), vec2<u32>(41418u, arg_0)), 107870u), true), var_1.d.b), Struct_1(_wgslsmith_sub_u32(min(~35297u, ~1u), _wgslsmith_div_u32(arg_1.b.a.a, ~29157u)), u_input.b.x, 13883u, countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.e, var_1.b.a.b.x, -2147483647i), vec4<i32>(arg_1.b.a.b.x, arg_1.b.a.b.x, arg_1.b.a.b.x, arg_1.d.b.x)))), _wgslsmith_f_op_vec2_f32(min(arg_1.b.b.zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1037f) * _wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(arg_1.b.c, var_1.b.c)))))))));
    return var_3.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = array<u32, 25>();
    let var_0 = _wgslsmith_mult_vec4_u32(~select(vec4<u32>(19858u, arg_1.b, 0u, 1u), vec4<u32>(0u, global0[_wgslsmith_index_u32(94180u, 25u)], u_input.b.x, global0[_wgslsmith_index_u32(37287u, 25u)]), arg_0.x) & firstLeadingBit(firstLeadingBit(vec4<u32>(20590u, 40614u, 1u, 27346u))), ~abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10205u, 25u)], 25u)], 4294967295u, u_input.b.x, 4294967295u)))) << (_wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, arg_1.c, 6348u)), ~u_input.b.x ^ u_input.b.x, ~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(u_input.b.x), 25u)], 25u)]), vec4<u32>(~arg_1.c << (u_input.b.x % 32u), ~(~u_input.b.x), ~(arg_1.a ^ 1509u), min(~59216u, _wgslsmith_clamp_u32(u_input.b.x, arg_1.b, 12851u)))) % vec4<u32>(32u));
    var var_1 = u_input.d.www;
    let var_2 = Struct_5(Struct_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-503f * 860f) - _wgslsmith_f_op_f32(2368f + 1000f)), Struct_4(vec3<bool>(false, false, arg_0.x), Struct_3(Struct_2(u_input.b.x, var_1.xx), vec3<f32>(-298f, 915f, -431f), -915f), var_1.x <= arg_1.d, Struct_2(1u, u_input.d.yx)), vec4<i32>(-25960i, u_input.e ^ var_1.x, arg_1.d & arg_1.d, 1i)), Struct_3(Struct_2(~26329u, -vec2<i32>(arg_1.d, u_input.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(338f, -2059f, -757f))), vec3<f32>(-828f, 235f, 972f), vec3<bool>(false, arg_0.x, arg_0.x))), 1f), !all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), Struct_2(~var_0.x | 24761u, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i) >> (u_input.b.yx % vec2<u32>(32u)), -var_1.zy))), Struct_2(func_2(~reverseBits(4294967295u), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_2(11601u, var_1.yy), vec3<f32>(1309f, 1063f, 968f), -747f), all(vec3<bool>(true, arg_0.x, arg_0.x)), Struct_2(var_0.x, u_input.d.wx)), u_input.b.x).b, u_input.d.zz), arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1434f, -553f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, -531f) - vec2<f32>(868f, -233f)))))));
    let var_3 = var_2.a;
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = vec4<bool>(true, false, true & select(true, func_4(vec2<bool>(false, false), func_2(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_4(vec3<bool>(true, true, false), Struct_3(Struct_2(arg_1.b, u_input.d.wx), vec3<f32>(331f, -820f, 1000f), 1122f), false, arg_2), u_input.b.x)), true), true);
    global0 = array<u32, 25>();
    let var_1 = arg_2;
    var var_2 = min(~(~u_input.b.yx), u_input.b.yy);
    let var_3 = vec3<u32>(32169u, 123358u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.a, 1u) ^ 4294967295u, _wgslsmith_sub_u32(24364u, arg_2.a)));
    return firstTrailingBit(vec4<u32>(var_3.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 25u)], 47165u), 0u >> (_wgslsmith_clamp_u32(arg_2.a, 8271u, var_2.x) % 32u), ~(28918u << (var_2.x % 32u)))) >> (~(~vec4<u32>(max(u_input.b.x, var_3.x), _wgslsmith_div_u32(arg_1.a, var_3.x), select(42441u, 5737u, false), var_1.a)) % vec4<u32>(32u));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2744f - _wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(trunc(-670f)))));
    var var_1 = func_3(556f, Struct_4(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, arg_0), !vec3<bool>(false, arg_0, false)), Struct_3(Struct_2(arg_2.x & global0[_wgslsmith_index_u32(915u, 25u)], reverseBits(u_input.d.wz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -569f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f - -107f) * var_0)), arg_0, Struct_2(~0u, vec2<i32>(23085i, -1i) | u_input.d.zw)), vec4<i32>(firstTrailingBit(~19051i), ~u_input.e, u_input.d.x, _wgslsmith_mult_i32(u_input.c, ~(-2147483647i) & u_input.a)));
    var var_2 = false;
    var var_3 = var_1.xx;
    var_1 = !(!(!func_3(_wgslsmith_div_f32(var_0, var_0), Struct_4(vec3<bool>(var_3.x, var_3.x, true), Struct_3(Struct_2(u_input.b.x, vec2<i32>(u_input.d.x, 24597i)), vec3<f32>(-2664f, 637f, -2084f), 997f), arg_0, Struct_2(78063u, vec2<i32>(u_input.d.x, u_input.d.x))), u_input.d)));
    return Struct_2(arg_2.x, firstTrailingBit(~(~(vec2<i32>(u_input.a, 2147483647i) & u_input.d.wz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, 23189u, func_1(-7622i, Struct_1(0u, 1u, u_input.b.x, u_input.d.x), Struct_2(1u, vec2<i32>(i32(-1i) * -1i, -u_input.c))));
    var var_1 = Struct_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1646f, 590f) * _wgslsmith_f_op_f32(abs(642f))) * _wgslsmith_f_op_f32(f32(-1f) * -133f)), Struct_4(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.d.xw), vec3<f32>(1596f, 1079f, -484f), _wgslsmith_f_op_f32(min(-337f, -673f))), !all(vec4<bool>(true, true, false, true)), func_5(false, var_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 16620u, 1u, u_input.b.x), vec4<u32>(28860u, global0[_wgslsmith_index_u32(23773u, 25u)], 65515u, var_0.a)))), vec4<i32>(select(1i, var_0.b.x, func_4(vec2<bool>(false, false), Struct_1(4294967295u, var_0.a, 0u, 43123i))), -var_0.b.x, reverseBits(-var_0.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b.x, 53388i), vec3<i32>(0i, 10009i, 2147483647i)), firstTrailingBit(var_0.b.x)))), Struct_3(func_5(true, global0[_wgslsmith_index_u32(~1u, 25u)], vec4<u32>(firstLeadingBit(var_0.a), ~64529u, 1u, ~20405u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1068f, -516f, -500f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-783f, 893f, -377f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1332f + -1176f), _wgslsmith_f_op_f32(-1535f - 985f))))), true & all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))), var_0);
    var var_2 = var_1.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(reverseBits(51710u), _wgslsmith_div_u32(90622u, 1u & u_input.b.x)) | global0[_wgslsmith_index_u32(~21774u, 25u)]);
}

