struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2 = Struct_2(vec4<u32>(4294967295u, 4294967295u, 76558u, 4294967295u), vec3<f32>(-2646f, -135f, 1052f));

var<private> global1: array<u32, 25> = array<u32, 25>(5576u, 4294967295u, 1u, 5415u, 1u, 0u, 17359u, 1420u, 4294967295u, 1u, 4294967295u, 23947u, 25025u, 42156u, 65962u, 36922u, 45007u, 1944u, 0u, 4294967295u, 36292u, 76362u, 1u, 1u, 42368u);

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_4(Struct_2(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 77446u), global0.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, -1134f), vec3<f32>(-191f, -662f, -1013f))), vec3<f32>(_wgslsmith_div_f32(-1582f, 192f), _wgslsmith_f_op_f32(sign(465f)), 1920f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-1224f * global0.b.x), _wgslsmith_f_op_f32(min(global0.b.x, 1425f)), _wgslsmith_f_op_f32(min(-217f, 947f)))))));
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    var var_1 = var_0.a;
    global2 = array<Struct_3, 13>();
    return vec3<bool>(!any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true)), -544f < _wgslsmith_f_op_f32(-var_1.b.x), all(vec2<bool>(any(vec4<bool>(true, true, true, false)), false)));
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global0.b.xz))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(max(global0.b.x, global0.b.x))))) * _wgslsmith_f_op_vec2_f32(-global0.b.zz));
    let var_1 = any(select(vec4<bool>(true, any(func_3()), select(global0.b.x > -1028f, false, true), true), !vec4<bool>(any(vec4<bool>(true, false, true, true)), true, all(vec3<bool>(false, true, false)), true), true));
    let var_2 = Struct_4(Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(global0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10869u, 25u)], 25u)], u_input.a, global0.a.x, 6928u), global0.a), vec4<u32>(u_input.a, global0.a.x, 43561u, global0.a.x)), ~global0.a), global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, global0.b.x, -1000f)))))) * vec4<f32>(_wgslsmith_f_op_f32(step(-555f, _wgslsmith_div_f32(var_0.x, var_0.x))), var_0.x, 713f, -1024f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -938f)), _wgslsmith_f_op_f32(1000f - -832f)))) + var_2.a.b.x);
    var var_4 = vec2<i32>(~(~(~(7382i << (u_input.a % 32u)))), _wgslsmith_dot_vec4_i32(-reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 35005i, -2147483647i, -7917i), vec4<i32>(2147483647i, -24471i, -18539i, -2147483647i), vec4<i32>(1i, 2147483647i, 0i, 2147483647i))), vec4<i32>(~25791i >> (_wgslsmith_dot_vec2_u32(var_2.a.a.xw, global0.a.zy) % 32u), ~(-73169i), ~(~2147483647i), 1i)));
    return vec3<bool>(true, all(vec3<bool>(true, true, true)), !var_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    global1 = array<u32, 25>();
    global2 = array<Struct_3, 13>();
    global1 = array<u32, 25>();
    let var_0 = !(!arg_0);
    var var_1 = arg_2.a;
    return arg_2.a;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = arg_0;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), global0.b.x, -610f);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(arg_0.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(879f, 2179f, arg_0.b.x))) * global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.b.x, global0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1489f + _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)), 1410f, _wgslsmith_f_op_f32(min(arg_0.b.x, -1092f)))))));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_clamp_i32(~countOneBits(-1i), firstTrailingBit(2147483647i), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), max(vec2<i32>(2147483647i, -32131i), vec2<i32>(-2147483647i, -2147483647i)))));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global2 = array<Struct_3, 13>();
    global0 = func_5(func_4(select(select(vec3<bool>(false, false, true), func_2(), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), false), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), 4294967295u, Struct_4(Struct_2(countOneBits(vec4<u32>(u_input.a, 32325u, 7234u, 1u)), _wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(global0.b.x, 834f, global0.b.x), true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, 2681f, global0.b.x, -452f), vec4<f32>(417f, 970f, -1112f, global0.b.x), false)), vec4<f32>(328f, -130f, 376f, global0.b.x))))));
    global0 = func_4(func_2(), 26452u, Struct_4(func_4(vec3<bool>(true, true, true), ~(~1u), Struct_4(Struct_2(global0.a, vec3<f32>(global0.b.x, -212f, global0.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, global0.b.x, -312f, global0.b.x), vec4<f32>(global0.b.x, global0.b.x, 463f, global0.b.x), vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2442f, 1782f, 739f, 1514f)))))));
    let var_0 = Struct_4(Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~global0.a, global0.a), select(func_5(Struct_2(global0.a, vec3<f32>(-202f, global0.b.x, -1000f))).a, vec4<u32>(1u, u_input.a, 38555u, global0.a.x), vec4<bool>(true, true, true, true)), vec4<u32>(global0.a.x, 4294967295u, u_input.a, global1[_wgslsmith_index_u32(18410u, 25u)]) & global0.a), vec3<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)), func_4(vec3<bool>(true, false, false), _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(4294967295u, 4254u, 1u, 1u)), Struct_4(Struct_2(vec4<u32>(66457u, arg_0.x, 0u, 4294967295u), global0.b), vec4<f32>(1292f, 2735f, 102f, -462f))).b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, 914f, global0.b.x))))));
    global1 = array<u32, 25>();
    return Struct_3(vec4<bool>(any(vec2<bool>(true, true)), true, !(!(global1[_wgslsmith_index_u32(17855u, 25u)] > u_input.a)), all(vec2<bool>(true, false)) || (_wgslsmith_dot_vec2_u32(vec2<u32>(31240u, arg_0.x), global0.a.yw) >= 53552u)), Struct_1(-1000f, var_0.a.a.xy ^ vec2<u32>(_wgslsmith_div_u32(var_0.a.a.x, var_0.a.a.x), ~22273u), func_3().yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec3<u32>(4294967295u, 4294967295u, ~global0.a.x));
    let var_1 = Struct_4(Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-global0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2123f), 761f, _wgslsmith_f_op_f32(exp2(var_0.b.a)), -847f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1109f, -536f, var_0.b.a, 1519f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, var_0.b.a, global0.b.x, -1539f) * vec4<f32>(682f, 1000f, var_0.b.a, -730f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, var_0.b.a, global0.b.x, var_0.b.a)))))));
    global0 = Struct_2(~vec4<u32>(var_1.a.a.x, _wgslsmith_div_u32(4294967295u, 4294967295u), 28681u, ~(~global1[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1185f, _wgslsmith_div_f32(1396f, -332f), global0.b.x)))));
    global1 = array<u32, 25>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1236f, global0.b.x, global0.b.x)) - var_1.b.yxw))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x) * global0.b.x)), _wgslsmith_f_op_f32(288f + func_4(!vec3<bool>(true, var_0.b.c.x, var_0.b.c.x), ~global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)], var_1).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1397f))), all(var_0.a.zxz)));
    let var_3 = func_5(var_1.a).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(-13508i, 1i))));
}

