struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2() -> u32 {
    var var_0 = 0i;
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-265f)))), -952f, vec4<u32>(~global0.d.x, global0.d.x, global0.e.x, 22090u), Struct_1(true, vec4<u32>(0u, global0.b.x, 0u, 4294967295u) ^ global0.e, true && global0.c, _wgslsmith_div_vec4_u32(global0.d, vec4<u32>(0u, 33535u, 31087u, 0u)), vec4<u32>(global0.e.x, 4294967295u, 4294967295u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(686f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(229f, -696f, global0.e, Struct_1(global0.a, vec4<u32>(43221u, 4294967295u, global0.e.x, global0.b.x), true, vec4<u32>(1u, global0.b.x, global0.e.x, global0.d.x), vec4<u32>(4042u, 0u, 0u, global0.b.x))))))));
    global1 = array<vec2<i32>, 20>();
    var var_3 = vec3<bool>(!global0.a, false, global0.c);
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = 0i;
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(61714u), ~(~1u));
    var var_2 = vec2<bool>(true, arg_0.c);
    let var_3 = Struct_1(true, global0.d | global0.b, arg_0.a, ~arg_0.b, _wgslsmith_add_vec4_u32(arg_0.b << (firstLeadingBit(global0.b) % vec4<u32>(32u)), vec4<u32>(~(~0u), var_1, _wgslsmith_mult_u32(func_2(), ~68461u), 35960u)));
    let var_4 = arg_1;
    return !all(vec3<bool>(arg_0.a, all(select(vec3<bool>(var_4.c, var_4.c, false), vec3<bool>(var_3.c, arg_0.c, true), vec3<bool>(true, arg_0.c, arg_1.c))), all(!vec2<bool>(var_2.x, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<vec2<i32>, 20>();
    var var_0 = Struct_1(!all(vec2<bool>(false, global0.a)), ~vec4<u32>(arg_1.e.x, 5413u, arg_1.d.x, 1u), false, min(vec4<u32>(~_wgslsmith_mod_u32(global0.d.x, arg_1.d.x), (global0.d.x >> (arg_1.d.x % 32u)) << (~1u % 32u), abs(~27358u), arg_1.d.x), ~min(global0.d | global0.e, select(vec4<u32>(1u, 1u, 68718u, 36697u), arg_1.d, vec4<bool>(true, arg_3.x, arg_0.x, arg_1.c)))), arg_1.e);
    var_0 = Struct_1(var_0.c && true, ~(~arg_1.e), arg_1.c, select(~_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_1.d), vec4<u32>(65972u, arg_1.e.x, var_0.e.x, 19926u)), vec4<u32>(_wgslsmith_mult_u32(global0.b.x | 79831u, arg_1.e.x), 49826u, 1u, 1u), vec4<bool>(true, true, all(!arg_3), all(arg_3.wzy))), abs(select(vec4<u32>(4294967295u << (global0.b.x % 32u), global0.d.x, arg_1.d.x, global0.b.x), ~firstTrailingBit(vec4<u32>(var_0.d.x, var_0.e.x, arg_1.d.x, 4294967295u)), arg_3)));
    var var_1 = arg_3;
    var_0 = arg_1;
    return Struct_1(!any(arg_0.xy), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, ~var_0.e.x, ~arg_1.b.x, arg_1.e.x), vec4<u32>(arg_1.d.x, ~global0.e.x, ~4294967295u, global0.b.x))), !func_1(Struct_1(true, select(vec4<u32>(1u, 0u, var_0.e.x, arg_1.d.x), var_0.b, true), false, var_0.b | vec4<u32>(global0.d.x, 8552u, global0.e.x, 46620u), select(vec4<u32>(global0.e.x, 13077u, var_0.b.x, 0u), arg_1.e, true)), Struct_1(true || arg_1.a, ~var_0.b, true, global0.e, ~vec4<u32>(global0.d.x, var_0.b.x, 0u, global0.b.x)), firstLeadingBit(~global0.d.x), 51430i), ~arg_1.b, firstLeadingBit(vec4<u32>(arg_1.b.x, 45003u, var_0.e.x, 14484u) << ((var_0.e << (vec4<u32>(arg_1.b.x, 0u, 1u, var_0.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 21543u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.d.zyz, arg_1.d.yxz), arg_1.e.zyy), ~_wgslsmith_mult_u32(arg_1.e.x, 0u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<i32>, 20>();
    global1 = array<vec2<i32>, 20>();
    global1 = array<vec2<i32>, 20>();
    global0 = arg_0;
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, 890f)))), vec2<f32>(-2399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1379f)) - 1041f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1948f * -1000f), _wgslsmith_f_op_f32(987f + -496f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, -555f)))))));
    return Struct_1(true, firstLeadingBit(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d.x, arg_0.d.x, arg_1.e.x, global0.e.x), vec4<u32>(arg_0.b.x, 15905u, arg_1.e.x, 0u)), vec4<u32>(firstLeadingBit(0u), 12187u, func_2(), ~0u))), ~(~(arg_0.d.x | arg_0.e.x)) >= global0.b.x, (_wgslsmith_add_vec4_u32(max(arg_0.e, global0.d), ~vec4<u32>(1454u, 4294967295u, global0.e.x, arg_1.e.x)) | ~firstLeadingBit(vec4<u32>(global0.e.x, 0u, global0.b.x, 4294967295u))) | (_wgslsmith_div_vec4_u32(arg_0.d & arg_1.b, _wgslsmith_clamp_vec4_u32(arg_0.d, vec4<u32>(global0.e.x, arg_0.d.x, 80488u, global0.d.x), global0.d)) >> ((arg_1.e << (arg_1.d % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(2965u), ~0u, 1u << (_wgslsmith_mult_u32(~global0.d.x, ~1u) % 32u), ~114573u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(select(vec3<bool>(true && global0.c, func_1(Struct_1(global0.c, vec4<u32>(global0.d.x, 1u, 0u, global0.d.x), false, vec4<u32>(global0.b.x, global0.d.x, global0.b.x, global0.e.x), vec4<u32>(42392u, 41860u, global0.b.x, 65417u)), Struct_1(global0.c, vec4<u32>(global0.d.x, 57830u, global0.b.x, global0.b.x), global0.a, vec4<u32>(global0.e.x, global0.d.x, global0.e.x, 1u), global0.b), 25803u, u_input.a), !global0.c), !vec3<bool>(global0.c, true, false), !vec3<bool>(global0.a, global0.a, global0.a)), Struct_1(func_1(Struct_1(global0.c, vec4<u32>(0u, global0.b.x, global0.e.x, 2247u), false, vec4<u32>(global0.e.x, 0u, 0u, 66888u), global0.d), Struct_1(true, global0.e, global0.a, global0.d, vec4<u32>(global0.d.x, 1071u, 1u, 119631u)), _wgslsmith_sub_u32(3248u, global0.e.x), 0i), global0.d, global0.a, min(global0.e, countOneBits(global0.e)), _wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(21065u, global0.d.x, global0.b.x, global0.b.x), vec4<u32>(1u, 16706u, global0.e.x, global0.e.x)) | min(global0.b, vec4<u32>(global0.d.x, global0.d.x, global0.e.x, 76278u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-395f, 659f, -2052f, -275f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-842f, -1000f, 1374f, 411f)))))), vec4<bool>(true, true, true, true)), func_4(!vec3<bool>(any(vec4<bool>(global0.a, global0.a, true, global0.a)), select(true, true, false), global0.a), Struct_1(false, ~vec4<u32>(global0.e.x, global0.e.x, 104046u, global0.b.x), true, vec4<u32>(abs(0u), 17813u, _wgslsmith_mult_u32(0u, global0.e.x), 1u ^ global0.d.x), _wgslsmith_add_vec4_u32(func_4(vec3<bool>(true, global0.a, global0.a), Struct_1(global0.c, vec4<u32>(global0.b.x, global0.d.x, global0.d.x, global0.b.x), true, vec4<u32>(4294967295u, global0.d.x, 7586u, global0.d.x), vec4<u32>(global0.e.x, 11896u, global0.d.x, 7716u)), vec4<f32>(-628f, 218f, -1513f, -906f), vec4<bool>(global0.c, global0.c, false, global0.c)).d, vec4<u32>(global0.b.x, 64014u, 12837u, 76320u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-288f * -1229f), -1591f, _wgslsmith_f_op_f32(-679f - 1575f), _wgslsmith_f_op_f32(1139f * -768f))), select(vec4<bool>(func_4(vec3<bool>(true, global0.c, global0.a), Struct_1(false, global0.b, false, vec4<u32>(114326u, 4294967295u, 15128u, 37291u), vec4<u32>(global0.d.x, global0.e.x, 1u, 1u)), vec4<f32>(-414f, -224f, -312f, 325f), vec4<bool>(false, true, false, true)).a, false, global0.b.x == global0.b.x, true), select(!vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(global0.a, global0.c, global0.c, global0.a), !vec4<bool>(false, false, global0.c, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, global0.c, global0.c), global0.c), !vec4<bool>(global0.a, global0.a, global0.c, false), any(vec3<bool>(false, global0.a, global0.c))))));
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(0i << (0u % 32u), u_input.a, countOneBits(0i))), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(~func_2(), 20u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global0.b.x, global0.d.x)), 20u)])), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.a, u_input.a, u_input.a, 19206i) | vec4<i32>(u_input.a, -14202i, u_input.a, u_input.a), vec4<i32>(-20822i, u_input.a, u_input.a, 1i), vec4<bool>(global0.a, false, global0.a, global0.a)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), select(vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i), vec4<i32>(-15276i, u_input.a, 0i, -2147483647i), select(vec4<bool>(global0.a, true, global0.a, global0.c), vec4<bool>(true, global0.c, global0.a, true), vec4<bool>(true, false, false, false))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1197f)));
    let var_3 = reverseBits(u_input.a);
    var var_4 = Struct_1(global0.a, global0.d, !(!(firstTrailingBit(u_input.a) >= (-1i | var_3))), select(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.e.wx, global0.b.yz), _wgslsmith_mult_u32(global0.d.x, 1u), ~0u << (firstTrailingBit(97385u) % 32u), 1u), global0.e, !(_wgslsmith_f_op_f32(-248f + -245f) >= var_1)), _wgslsmith_div_vec4_u32(vec4<u32>(func_5(Struct_1(true, global0.e, false, vec4<u32>(global0.d.x, 61124u, global0.e.x, 4294967295u), vec4<u32>(1u, 4294967295u, global0.d.x, 0u)), Struct_1(false, global0.d, false, global0.b, global0.d)).d.x, ~0u, _wgslsmith_div_u32(global0.d.x >> (49362u % 32u), abs(4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.b.x, global0.d.x), global0.e.x | global0.d.x, global0.e.x)), _wgslsmith_mod_vec4_u32(global0.d ^ _wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(global0.d.x, 58349u, 10080u, 1u), vec4<u32>(global0.d.x, 1558u, 11264u, 34769u)), vec4<u32>(0u, 8283u, _wgslsmith_mult_u32(global0.b.x, 31457u), global0.d.x))));
    let var_5 = vec4<bool>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_2), 1f, vec4<u32>(~var_4.d.x, abs(var_4.d.x), 1u, ~global0.d.x), func_5(func_4(vec3<bool>(false, var_4.c, global0.c), Struct_1(var_4.a, vec4<u32>(global0.e.x, 0u, var_4.d.x, global0.d.x), global0.a, var_4.d, vec4<u32>(var_4.b.x, var_4.d.x, global0.b.x, var_4.d.x)), vec4<f32>(-376f, 880f, var_1, -259f), vec4<bool>(var_4.c, global0.c, true, true)), func_5(Struct_1(var_4.a, global0.d, true, vec4<u32>(var_4.e.x, 52637u, global0.d.x, var_4.b.x), vec4<u32>(global0.d.x, var_4.b.x, 14614u, global0.e.x)), Struct_1(global0.a, vec4<u32>(22369u, 0u, global0.d.x, var_4.b.x), false, var_4.b, var_4.d))))) <= var_1, var_4.c == true, var_4.c, true);
    var_4 = func_4(var_5.www, func_5(func_5(func_5(func_5(Struct_1(false, vec4<u32>(1u, global0.e.x, 0u, 0u), var_4.c, vec4<u32>(18280u, var_4.d.x, var_4.e.x, global0.e.x), vec4<u32>(var_4.b.x, global0.b.x, 1u, 2884u)), Struct_1(var_5.x, vec4<u32>(global0.e.x, 51486u, var_4.b.x, 0u), global0.c, vec4<u32>(global0.d.x, 1u, var_4.b.x, global0.e.x), vec4<u32>(4294967295u, global0.b.x, 15954u, global0.e.x))), func_4(vec3<bool>(false, var_5.x, false), Struct_1(false, global0.d, false, vec4<u32>(40382u, 98770u, global0.b.x, global0.d.x), global0.d), vec4<f32>(-439f, var_1, 387f, -531f), vec4<bool>(false, true, var_4.c, true))), func_5(Struct_1(global0.a, global0.d, false, vec4<u32>(1u, 78061u, var_4.d.x, 4294967295u), global0.d), func_4(vec3<bool>(false, false, global0.c), Struct_1(false, var_4.d, true, var_4.e, vec4<u32>(16209u, 4294967295u, global0.e.x, 45724u)), vec4<f32>(192f, -1809f, 269f, -1000f), var_5))), Struct_1(_wgslsmith_f_op_f32(-1144f - var_2) == _wgslsmith_f_op_f32(var_1 + var_1), global0.e | func_5(Struct_1(true, var_4.d, global0.c, global0.b, vec4<u32>(global0.b.x, 4294967295u, global0.e.x, var_4.d.x)), Struct_1(global0.a, var_4.b, var_5.x, var_4.b, vec4<u32>(0u, var_4.d.x, global0.e.x, 1u))).d, _wgslsmith_f_op_f32(-var_2) >= _wgslsmith_f_op_f32(sign(var_1)), global0.e, vec4<u32>(1u ^ global0.d.x, ~var_4.e.x, func_5(Struct_1(false, var_4.d, true, vec4<u32>(1u, var_4.b.x, global0.b.x, var_4.e.x), var_4.d), Struct_1(var_5.x, global0.e, var_4.a, var_4.b, vec4<u32>(var_4.e.x, 1u, global0.b.x, global0.b.x))).b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 456f, var_2, 628f)))), vec4<bool>(true, global0.c, any(!var_5), true));
    let x = u_input.a;
    s_output = StorageBuffer((reverseBits(vec2<u32>(var_4.d.x, 5874u)) << (reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(89387u, 1u), vec2<u32>(global0.b.x, 1u))) % vec2<u32>(32u))) & (~(vec2<u32>(var_4.d.x, 48353u) ^ var_4.d.zz) << (min(vec2<u32>(global0.b.x, global0.d.x), _wgslsmith_sub_vec2_u32(global0.e.zy, var_4.e.wy)) % vec2<u32>(32u))));
}

