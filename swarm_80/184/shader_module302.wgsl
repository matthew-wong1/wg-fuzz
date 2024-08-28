struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: Struct_5;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1755f, -366f, 1391f, -1584f), vec4<f32>(-801f, 1032f, -970f, -1652f), vec4<f32>(-565f, -515f, 1000f, 317f), vec4<f32>(881f, -1055f, -1150f, 772f), vec4<f32>(418f, 102f, 839f, -812f), vec4<f32>(-1287f, 548f, -1366f, 812f), vec4<f32>(869f, 622f, 476f, -491f), vec4<f32>(-1461f, 553f, 764f, -854f), vec4<f32>(1159f, -1176f, -1198f, 1584f), vec4<f32>(1433f, -456f, -754f, -1619f), vec4<f32>(-782f, 228f, -1259f, -971f), vec4<f32>(-593f, 533f, 517f, -1000f), vec4<f32>(623f, -1181f, 515f, 195f), vec4<f32>(-434f, 183f, -1166f, -123f), vec4<f32>(-367f, -827f, 187f, -262f), vec4<f32>(483f, 959f, -783f, 105f), vec4<f32>(175f, 166f, -1000f, -1275f), vec4<f32>(-757f, -1668f, -883f, -1551f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_2.a, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.b.a.c, global1.a.a.c, 1u, global1.a.a.c)), vec4<u32>(arg_2.c, 4294967295u, 37881u, 1u))), 17u)];
    let var_1 = Struct_4(vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1022f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(270f)) + arg_2.e.x), all(arg_2.d.yx), true), global1.a.b);
    var var_2 = abs(_wgslsmith_add_i32(-1i, global1.c.x << (30710u % 32u)));
    global2 = array<vec4<f32>, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.e.x, _wgslsmith_f_op_f32(select(626f, _wgslsmith_f_op_f32(f32(-1f) * -507f), var_1.b.b.x))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    let var_0 = false;
    let var_1 = !select(vec4<bool>(select(var_0, !global1.e.a.b.x, true), false, var_0, any(global1.a.a.d) || var_0), vec4<bool>(!(-30360i < u_input.c), false, true, global1.a.a.d.x), any(vec4<bool>(!var_0, true, true, all(global1.b.a.d))));
    var var_2 = Struct_2(global1.e.b, Struct_1(firstTrailingBit(select(~4294967295u, 4294967295u, var_1.x)), vec3<bool>(!var_0, false, false), arg_2, var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, -1403f, -259f, -507f) * vec4<f32>(arg_0, -924f, global1.b.a.e.x, -989f)), vec4<f32>(-1000f, 729f, arg_0, arg_1), select(var_1, vec4<bool>(global1.b.a.b.x, global1.b.a.b.x, var_0, var_0), var_1.x))))));
    global1 = Struct_5(Struct_2(var_2.a, global1.e.a), Struct_2(var_2.a, var_2.b), global1.c, !select(select(select(var_1.zyx, vec3<bool>(false, var_2.b.d.x, var_0), global1.a.b.d.yxx), global1.e.b.d.xyx, !var_1.wxx), vec3<bool>(all(vec2<bool>(var_0, global1.a.b.d.x)), any(var_2.a.d.www), true), !vec3<bool>(var_0, true, false)), Struct_2(var_2.b, Struct_1(firstLeadingBit(global1.e.a.a), global1.a.a.d.zww, 7267u, select(select(vec4<bool>(true, true, global1.a.a.d.x, var_1.x), var_1, true), !var_1, global1.b.a.d), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, var_2.b.a, global1.e.b.c), vec3<u32>(global1.a.b.c, u_input.b.x, var_2.b.a)), 18u)])));
    let var_3 = ~(~global1.e.b.a) ^ reverseBits(~1u);
    return !vec3<bool>(false, -1372f == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(517f, var_2.b.e.x))), !(!var_1.x));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_1 {
    return Struct_1(arg_0.a.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -574f) - _wgslsmith_f_op_f32(step(global1.a.a.e.x, -839f))) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(min(-1363f, arg_0.b)), _wgslsmith_f_op_f32(arg_2.e.b.e.x * -1619f), Struct_1(global1.e.b.c, vec3<bool>(false, arg_2.a.a.d.x, true), arg_0.c.a.a, vec4<bool>(true, arg_3.x, true, arg_3.x), vec4<f32>(-2261f, arg_0.c.b.e.x, -576f, arg_2.a.b.e.x)), ~arg_0.a.xxz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f * arg_0.d.x) + _wgslsmith_f_op_f32(arg_0.c.b.e.x - -331f)), global1.e.b.e.x), u_input.b.x), arg_1, !(!(!global1.e.a.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(arg_2.a.a.e, vec4<f32>(arg_0.d.x, -1500f, -859f, -765f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.a.e.x, global1.e.a.e.x, -1299f, 576f)))), arg_2.a.a.e)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-834f, arg_2.a.a.e.x)) + _wgslsmith_f_op_f32(global1.a.a.e.x - 1287f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1291f, global1.e.b.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.e.b.e.x) - 1791f) + arg_0.e.b.e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1803f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(310f)), _wgslsmith_f_op_f32(-arg_2.a.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.a.e.x)), _wgslsmith_div_f32(arg_2.b.a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1147f))) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~(~arg_2.e.b.c), 18u)] * func_1(Struct_3(vec4<u32>(u_input.a, 96116u, 72330u, global1.b.b.c), 351f, Struct_2(arg_2.a.a, Struct_1(4294967295u, vec3<bool>(global1.a.a.b.x, global1.b.a.b.x, arg_2.a.a.d.x), 1u, arg_0.e.a.d, arg_0.e.b.e)), vec3<f32>(-1469f, 1000f, -457f)), 20185u, arg_2, arg_2.d.zz).e)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_div_f32(-1299f, -475f), global1.a.b.e.x);
    var var_2 = global1.c.wyy;
    let var_3 = u_input.a;
    var_2 = vec3<i32>(0i, 2147483647i, -2147483647i);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 18>();
    let var_0 = Struct_5(func_4(Struct_5(Struct_2(func_1(Struct_3(vec4<u32>(u_input.b.x, 18466u, 1u, 4294967295u), 1000f, global0[_wgslsmith_index_u32(18422u, 17u)], global1.e.a.e.yzy), 4294967295u, Struct_5(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], Struct_2(global1.e.a, global1.a.b), global1.c, global1.e.b.b, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), global1.a.b.d.yz), Struct_1(u_input.b.x, global1.b.b.b, global1.e.b.c, global1.a.a.d, vec4<f32>(-707f, -1448f, global1.e.a.e.x, -1000f))), Struct_2(Struct_1(global1.e.a.a, global1.d, 0u, global1.e.b.d, global2[_wgslsmith_index_u32(global1.b.b.a, 18u)]), Struct_1(1u, global1.e.a.b, global1.e.b.c, global1.b.a.d, global2[_wgslsmith_index_u32(global1.a.a.c, 18u)])), global1.c, select(global1.e.a.b, vec3<bool>(false, true, global1.d.x), global1.b.b.d.x), Struct_2(func_1(Struct_3(vec4<u32>(u_input.a, u_input.b.x, 10311u, global1.a.a.c), 282f, Struct_2(global1.a.a, Struct_1(u_input.a, vec3<bool>(false, global1.d.x, false), 111512u, vec4<bool>(true, global1.e.b.d.x, false, true), global2[_wgslsmith_index_u32(24931u, 18u)])), global1.a.b.e.yxy), 0u, Struct_5(Struct_2(global1.b.b, Struct_1(0u, vec3<bool>(global1.d.x, global1.d.x, false), u_input.a, global1.e.a.d, vec4<f32>(-1239f, -1406f, global1.a.b.e.x, global1.b.a.e.x))), global1.e, vec4<i32>(-71224i, global1.c.x, -8501i, global1.c.x), vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.a, 17u)]), global1.d.xz), global1.b.a)), !func_3(_wgslsmith_div_f32(global1.e.b.e.x, -633f), _wgslsmith_f_op_f32(trunc(global1.a.b.e.x)), ~global1.e.a.a).xz, Struct_5(Struct_2(func_1(Struct_3(vec4<u32>(955u, 0u, 1u, u_input.a), -739f, Struct_2(global1.a.a, global1.e.a), global1.a.a.e.wwy), global1.a.a.c, Struct_5(global1.e, global0[_wgslsmith_index_u32(4294967295u, 17u)], global1.c, global1.e.b.b, global1.b), global1.d.zy), global1.a.a), Struct_2(func_1(Struct_3(vec4<u32>(0u, 0u, u_input.a, 8551u), global1.b.a.e.x, Struct_2(global1.a.a, Struct_1(0u, global1.b.b.d.yxy, global1.a.b.a, global1.e.b.d, global2[_wgslsmith_index_u32(1u, 18u)])), vec3<f32>(2011f, -766f, 2131f)), 1894u, Struct_5(global0[_wgslsmith_index_u32(44362u, 17u)], Struct_2(global1.e.a, global1.b.b), global1.c, vec3<bool>(global1.b.a.b.x, false, false), Struct_2(global1.a.b, Struct_1(u_input.b.x, global1.b.b.b, u_input.a, vec4<bool>(global1.d.x, global1.a.b.b.x, global1.e.b.d.x, false), vec4<f32>(821f, 337f, global1.e.b.e.x, global1.a.a.e.x)))), vec2<bool>(global1.b.a.d.x, true)), Struct_1(1u, global1.a.a.b, 95090u, global1.b.a.d, vec4<f32>(global1.b.b.e.x, global1.b.b.e.x, 1891f, global1.b.b.e.x))), global1.c, func_3(_wgslsmith_f_op_f32(trunc(-748f)), _wgslsmith_f_op_f32(342f * global1.a.a.e.x), firstTrailingBit(u_input.b.x)), global0[_wgslsmith_index_u32(~u_input.a, 17u)])), global0[_wgslsmith_index_u32(~1u, 17u)], global1.c, vec3<bool>(!(any(global1.e.a.b) != true), func_3(_wgslsmith_f_op_f32(255f + _wgslsmith_f_op_f32(round(global1.a.b.e.x))), -146f, 0u).x, global1.e.a.d.x), Struct_2(func_1(Struct_3(~vec4<u32>(4294967295u, global1.b.a.a, global1.b.b.a, 636u), func_1(Struct_3(vec4<u32>(7996u, 1456u, u_input.a, u_input.b.x), global1.a.a.e.x, global0[_wgslsmith_index_u32(global1.a.a.c, 17u)], vec3<f32>(-506f, global1.e.a.e.x, 981f)), global1.b.b.a, Struct_5(global1.a, global0[_wgslsmith_index_u32(global1.b.b.c, 17u)], global1.c, vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(global1.d.x, global1.e.a.b.x)).e.x, global0[_wgslsmith_index_u32(func_1(Struct_3(vec4<u32>(u_input.b.x, 1u, 4294967295u, 47818u), 1239f, Struct_2(global1.e.a, Struct_1(u_input.a, global1.d, 36424u, vec4<bool>(global1.a.b.b.x, true, global1.e.a.d.x, true), global1.b.a.e)), vec3<f32>(1304f, -1100f, global1.b.a.e.x)), 4294967295u, Struct_5(Struct_2(Struct_1(u_input.b.x, global1.a.a.b, global1.a.a.a, global1.a.b.d, global1.b.b.e), global1.e.a), global0[_wgslsmith_index_u32(1u, 17u)], global1.c, vec3<bool>(false, false, global1.e.b.d.x), Struct_2(Struct_1(global1.a.b.c, global1.e.b.b, 1u, global1.b.b.d, global2[_wgslsmith_index_u32(global1.a.a.a, 18u)]), Struct_1(4294967295u, global1.a.a.b, global1.e.a.a, vec4<bool>(true, global1.d.x, true, true), vec4<f32>(-697f, 2236f, -481f, global1.b.b.e.x)))), vec2<bool>(true, global1.a.b.d.x)).c, 17u)], _wgslsmith_f_op_vec3_f32(sign(global1.b.a.e.xzx))), u_input.b.x, Struct_5(func_4(Struct_5(Struct_2(global1.a.a, Struct_1(u_input.b.x, vec3<bool>(global1.a.b.d.x, true, global1.e.a.d.x), global1.b.b.a, global1.a.a.d, global2[_wgslsmith_index_u32(1u, 18u)])), global0[_wgslsmith_index_u32(32298u, 17u)], global1.c, global1.a.a.b, Struct_2(Struct_1(0u, global1.d, 1u, global1.e.b.d, vec4<f32>(global1.e.a.e.x, global1.e.b.e.x, -1082f, global1.b.a.e.x)), global1.b.b)), vec2<bool>(false, global1.b.a.b.x), Struct_5(global1.e, global1.e, vec4<i32>(global1.c.x, global1.c.x, 0i, u_input.c), vec3<bool>(global1.e.b.d.x, global1.b.b.d.x, false), global1.b)), func_4(Struct_5(global1.b, Struct_2(Struct_1(global1.a.a.c, global1.b.a.d.yxz, 0u, global1.b.a.d, global2[_wgslsmith_index_u32(8871u, 18u)]), Struct_1(global1.b.b.c, vec3<bool>(global1.e.a.b.x, global1.b.a.b.x, true), 46051u, global1.b.a.d, global1.b.b.e)), global1.c, global1.d, global1.b), vec2<bool>(true, global1.e.b.b.x), Struct_5(Struct_2(global1.b.b, Struct_1(u_input.b.x, vec3<bool>(true, false, false), 4294967295u, global1.b.b.d, global1.b.a.e)), Struct_2(Struct_1(global1.b.a.a, vec3<bool>(false, true, global1.d.x), 33063u, global1.a.a.d, global1.a.b.e), global1.b.a), vec4<i32>(global1.c.x, global1.c.x, 23902i, u_input.c), vec3<bool>(global1.d.x, true, false), Struct_2(global1.a.b, global1.b.b))), vec4<i32>(u_input.c, 11232i, global1.c.x, u_input.c), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(global1.e.b.c ^ 45325u, 17u)]), global1.b.a.d.xw), func_4(Struct_5(Struct_2(Struct_1(9815u, vec3<bool>(true, global1.e.b.d.x, global1.e.a.d.x), 4054u, vec4<bool>(global1.d.x, true, global1.e.a.b.x, global1.d.x), global2[_wgslsmith_index_u32(global1.b.a.a, 18u)]), Struct_1(4294967295u, global1.d, global1.e.a.c, global1.b.b.d, global2[_wgslsmith_index_u32(u_input.b.x, 18u)])), Struct_2(global1.e.a, Struct_1(28051u, vec3<bool>(true, global1.e.a.d.x, false), global1.a.b.c, global1.b.a.d, vec4<f32>(-751f, global1.a.a.e.x, global1.b.a.e.x, 2167f))), global1.c ^ vec4<i32>(14895i, -3572i, global1.c.x, 51897i), global1.b.b.b, Struct_2(Struct_1(4294967295u, vec3<bool>(global1.a.a.d.x, global1.d.x, global1.a.b.b.x), global1.a.a.c, vec4<bool>(true, global1.a.b.b.x, false, true), global2[_wgslsmith_index_u32(global1.e.a.a, 18u)]), global1.b.b)), func_4(Struct_5(Struct_2(global1.b.a, global1.a.a), Struct_2(global1.a.b, Struct_1(global1.b.a.c, vec3<bool>(false, global1.d.x, global1.a.a.d.x), global1.b.b.a, vec4<bool>(true, global1.e.b.d.x, true, global1.d.x), vec4<f32>(global1.a.a.e.x, -1000f, 1223f, -716f))), global1.c, global1.e.b.b, Struct_2(global1.b.a, global1.a.a)), !vec2<bool>(global1.d.x, global1.b.a.d.x), Struct_5(global0[_wgslsmith_index_u32(global1.b.a.c, 17u)], global0[_wgslsmith_index_u32(global1.a.a.c, 17u)], vec4<i32>(global1.c.x, 31560i, global1.c.x, 11284i), vec3<bool>(true, true, true), global1.b)).b.d.xz, Struct_5(func_4(Struct_5(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(26306u, 17u)], global1.c, global1.b.b.b, global1.e), global1.e.a.b.zx, Struct_5(global1.b, global0[_wgslsmith_index_u32(global1.e.b.c, 17u)], vec4<i32>(1i, global1.c.x, global1.c.x, 7127i), global1.e.a.d.wwz, Struct_2(Struct_1(global1.a.b.c, global1.e.b.d.ywz, u_input.a, global1.e.a.d, global1.e.a.e), Struct_1(26071u, global1.d, global1.b.b.a, global1.a.a.d, global2[_wgslsmith_index_u32(global1.e.b.c, 18u)])))), func_4(Struct_5(global0[_wgslsmith_index_u32(55419u, 17u)], Struct_2(global1.e.b, Struct_1(global1.b.a.a, vec3<bool>(false, true, false), global1.e.a.a, global1.a.b.d, global2[_wgslsmith_index_u32(global1.e.b.c, 18u)])), vec4<i32>(-2147483647i, -1i, global1.c.x, 2863i), vec3<bool>(global1.b.b.d.x, false, global1.b.b.d.x), global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(true, global1.a.b.b.x), Struct_5(global1.b, Struct_2(global1.a.b, Struct_1(1u, vec3<bool>(global1.d.x, global1.b.a.d.x, global1.e.a.b.x), 1u, global1.e.b.d, global2[_wgslsmith_index_u32(4294967295u, 18u)])), vec4<i32>(u_input.c, u_input.c, 2147483647i, global1.c.x), global1.b.a.b, Struct_2(global1.b.a, global1.b.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(34034i, global1.c.x, 2147483647i, 42336i), global1.c, vec4<i32>(-30087i, 1i, 32366i, u_input.c)), !global1.e.a.d.wxx, func_4(Struct_5(global1.b, global0[_wgslsmith_index_u32(13380u, 17u)], global1.c, global1.d, Struct_2(Struct_1(48351u, vec3<bool>(global1.a.a.d.x, global1.a.a.b.x, true), 62643u, vec4<bool>(false, global1.e.b.b.x, true, false), global1.b.a.e), global1.b.a)), global1.d.yz, Struct_5(Struct_2(Struct_1(10664u, global1.b.a.d.wzz, 26209u, vec4<bool>(false, false, global1.d.x, true), vec4<f32>(global1.e.a.e.x, global1.e.b.e.x, global1.a.a.e.x, 118f)), Struct_1(u_input.a, global1.e.a.d.xxw, 31058u, global1.a.a.d, vec4<f32>(508f, global1.b.a.e.x, global1.b.a.e.x, 1905f))), Struct_2(global1.e.a, Struct_1(1u, global1.d, u_input.b.x, vec4<bool>(global1.a.a.d.x, global1.d.x, true, true), global1.e.b.e)), global1.c, global1.a.b.d.www, Struct_2(global1.b.a, global1.e.b))))).b));
    var var_1 = global1.b.b.d;
    var var_2 = abs(vec3<u32>(abs(func_1(Struct_3(vec4<u32>(u_input.b.x, 78025u, 82214u, global1.b.a.c), -718f, Struct_2(Struct_1(var_0.b.b.c, var_0.e.a.d.zyx, 1u, var_0.e.a.d, vec4<f32>(-1371f, var_0.b.a.e.x, -274f, -1000f)), Struct_1(1u, vec3<bool>(var_1.x, false, global1.e.b.d.x), global1.a.b.c, vec4<bool>(global1.b.b.b.x, var_0.b.b.b.x, true, true), vec4<f32>(-884f, var_0.a.b.e.x, -547f, 719f))), vec3<f32>(547f, global1.b.a.e.x, var_0.e.b.e.x)), global1.a.b.c, Struct_5(global0[_wgslsmith_index_u32(global1.a.b.c, 17u)], Struct_2(global1.a.a, Struct_1(u_input.b.x, vec3<bool>(var_0.a.b.b.x, false, var_1.x), u_input.a, vec4<bool>(true, var_1.x, false, true), vec4<f32>(377f, global1.e.b.e.x, global1.e.b.e.x, global1.a.a.e.x))), var_0.c, vec3<bool>(false, false, var_0.e.a.b.x), global1.e), vec2<bool>(false, var_1.x)).c), select(810u, countOneBits(0u), var_1.x), global1.a.b.c)) & reverseBits(vec3<u32>(_wgslsmith_div_u32(max(0u, var_0.e.a.a), 1u), 0u, min(_wgslsmith_sub_u32(var_0.a.a.a, u_input.b.x), 92742u | global1.e.b.a)));
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(777f * -374f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<f32>(var_4, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-131f, _wgslsmith_f_op_f32(f32(-1f) * -180f)))), global1.e.b.e.x));
}

