struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(-528f, 309f), _wgslsmith_f_op_f32(abs(-895f)), 963f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, -477f, -1250f, 1188f) + vec4<f32>(-100f, 1000f, -678f, 1000f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(1593f, 111f)), _wgslsmith_f_op_f32(795f - 128f), -1000f, _wgslsmith_f_op_f32(round(930f)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, 740f, 1643f, -354f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, -451f, 1000f, 730f)), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2002f, -479f, 269f, -882f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1033f, -1183f, -169f, 747f) + vec4<f32>(-154f, 525f, 612f, -1000f)))))));
    let var_2 = global1[_wgslsmith_index_u32(~var_0, 25u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) + var_2.a)), ~firstTrailingBit(abs(1u)));
    var var_4 = !vec4<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(917f * -1000f))) < -1249f, true, !all(vec4<bool>(true, true, true, true)));
    return vec2<u32>(~_wgslsmith_mod_u32(var_3.b, firstTrailingBit(var_3.b)) ^ var_0, ~(~8183u));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    global0 = array<Struct_1, 1>();
    let var_0 = ~countOneBits(arg_3);
    return !select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, arg_0.x >= arg_2.a), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), any(vec4<bool>(true, false, false, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = vec2<bool>(arg_2.x, arg_2.x);
    global1 = array<Struct_1, 25>();
    var var_1 = arg_0;
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, var_1.a)), vec2<f32>(var_1.a, -754f)))), func_3(~(~2147483647i)), Struct_1(_wgslsmith_f_op_f32(1323f - 707f), var_1.b), u_input.a.x);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = 0u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27779u, 1u), vec3<u32>(88799u, 34605u, 4294967295u)), _wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_clamp_u32(0u, 45492u, 8947u), ~11695u), vec4<u32>(1u, 1u, 1u, 1u)), ~1u, firstLeadingBit(0u));
    var var_1 = func_2(global0[_wgslsmith_index_u32(1u, 1u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)), ~(~(~0u))), vec2<bool>(true, true));
    var_1 = select(!vec4<bool>(any(var_1.yz), all(select(var_1.xxw, vec3<bool>(true, true, var_1.x), var_1.yzx)), var_1.x, false), vec4<bool>(true, true, ~(-1i) >= u_input.a.x, all(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(397f, -2486f), vec2<f32>(577f, -1129f), false)), ~vec2<u32>(48318u, 1u), global0[_wgslsmith_index_u32(46675u, 1u)], _wgslsmith_mult_i32(arg_0.x, arg_0.x)).zz)), vec4<bool>(any(!func_4(vec2<f32>(-1000f, 1368f), vec2<u32>(14173u, 14908u), Struct_1(-2698f, 4294967295u), 23816i)), ~u_input.a.x != max(arg_0.x, arg_0.x >> (1u % 32u)), select(~4396u <= _wgslsmith_dot_vec3_u32(vec3<u32>(11225u, 0u, 0u), vec3<u32>(1u, 0u, 0u)), all(var_1.yz) & select(var_1.x, var_1.x, var_1.x), var_1.x), var_1.x));
    var_0 = ~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, ~15924u), 0u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-912f * -269f), -1000f, _wgslsmith_f_op_f32(max(-387f, -789f)))))));
    return vec4<bool>(all(var_1.yyz) && all(!var_1.ww), var_1.x, true, !any(func_2(global1[_wgslsmith_index_u32(28218u, 25u)], global0[_wgslsmith_index_u32(1u, 1u)], !var_1.zy).yzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global1 = array<Struct_1, 25>();
    let var_1 = !all(func_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.ww), u_input.a.x)));
    global0 = array<Struct_1, 1>();
    global1 = array<Struct_1, 25>();
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(-28096i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 4114i), -u_input.a.xw), var_1 && true), max(-35628i, _wgslsmith_mod_i32(u_input.a.x, -u_input.a.x)), 2147483647i, -6614i & u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(0i, reverseBits(u_input.a.x)), u_input.a.x, _wgslsmith_mult_i32(-24943i, ~(-17300i)), min(~(~(-19868i)), ~u_input.a.x)));
    let var_3 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), abs(~(~vec4<u32>(4294967295u, 1u, 23670u, 4294967295u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(10188u, 33776u, 35450u, 59182u), vec4<u32>(4294967295u, 35096u, 0u, 10744u), vec4<u32>(57076u, 1u, 1u, 4294967295u)) % vec4<u32>(32u)))), firstLeadingBit(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_4 = _wgslsmith_dot_vec3_i32(u_input.a.xxw, _wgslsmith_sub_vec3_i32(u_input.a.ywy & _wgslsmith_sub_vec3_i32(~u_input.a.xzz, u_input.a.yyx), u_input.a.wyy));
    var var_5 = _wgslsmith_f_op_f32(1821f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f - -103f) - _wgslsmith_f_op_f32(498f * 1000f))) + 1f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(u_input.a)));
}

