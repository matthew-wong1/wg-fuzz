struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 1i, -16634i), vec3<i32>(66100i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 0i, 1i), vec3<i32>(-1i, 12836i, -12324i), vec3<i32>(1i, -1i, -33295i), vec3<i32>(1i, 25015i, 0i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 12930i, 2147483647i), vec3<i32>(-1i, -46219i, -60305i), vec3<i32>(0i, -29057i, 18144i), vec3<i32>(1i, 1i, 45187i), vec3<i32>(i32(-2147483648), 2147483647i, 27697i), vec3<i32>(i32(-2147483648), 20813i, 2147483647i), vec3<i32>(-34254i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 12986i, -36365i), vec3<i32>(19400i, 7308i, -11371i), vec3<i32>(-1i, -58490i, -60101i), vec3<i32>(0i, 35671i, -21356i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(64398i, 0i, -25348i), vec3<i32>(i32(-2147483648), 25955i, 1i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(0i, -55981i, i32(-2147483648)));

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 0u, 2425u), vec3<u32>(74270u, 72724u, 4294967295u), vec3<u32>(60768u, 0u, 2153u), vec3<u32>(1u, 26344u, 0u), vec3<u32>(0u, 19445u, 61858u), vec3<u32>(4294967295u, 56737u, 0u), vec3<u32>(21441u, 42135u, 1u), vec3<u32>(1u, 38026u, 44287u), vec3<u32>(15736u, 6392u, 37016u), vec3<u32>(9426u, 68683u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(107587u, 0u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(36953u, 1u, 18228u), vec3<u32>(4294967295u, 1u, 16684u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(9930i);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = func_2(arg_1.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zw))) * vec2<f32>(800f, -441f)));
    let var_2 = _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1000f)))))));
    let var_3 = func_2(vec2<f32>(283f, _wgslsmith_f_op_f32(-arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1138f));
    let var_4 = -1823f;
    return _wgslsmith_f_op_f32(f32(-1f) * -509f);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(962f, _wgslsmith_f_op_f32(f32(-1f) * -496f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, 256f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-642f, 1136f) + vec2<f32>(-1753f, -369f)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1113f, _wgslsmith_f_op_f32(f32(-1f) * -1669f)))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1376f))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, 270f, -1484f, -749f) + vec4<f32>(1166f, -654f, -1295f, 1212f)), vec3<f32>(-343f, 776f, -493f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1683f, 372f, 364f) * vec3<f32>(-656f, 287f, 1600f)))))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(371f + var_1), _wgslsmith_f_op_f32(404f + var_1))), -254f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 - -2183f))), vec4<f32>(-281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f) * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 925f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(478f + -269f), var_1, _wgslsmith_f_op_f32(-874f * _wgslsmith_f_op_f32(129f + var_1)), -233f)));
    let var_3 = firstLeadingBit(abs(u_input.a.x) ^ (_wgslsmith_div_i32(-2147483647i ^ var_0.a, _wgslsmith_mod_i32(u_input.a.x, 35945i)) & _wgslsmith_sub_i32(var_0.a, -arg_0.a)));
    global1 = array<vec3<i32>, 24>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_2;
    global1 = array<vec3<i32>, 24>();
    var var_1 = vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(i32(-1i) * -(~(-19029i)), u_input.a.x), -2147483647i, -(1i & ((i32(-1i) * -16766i) >> ((20549u ^ u_input.b) % 32u))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(~reverseBits(global0[_wgslsmith_index_u32(u_input.c, 12u)])), (_wgslsmith_div_u32(~4438u, 1u) << (u_input.b % 32u)) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.c, global0[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_sub_u32(u_input.c, u_input.b)), ~64424u, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 12u)] & 30231u)), 12u)];
    var var_3 = true;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 24>();
    var var_0 = ~_wgslsmith_div_u32(countOneBits(~global0[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 12u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) & 4539i), func_1(Struct_1(~(-1394i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2213f, -103f, false)), _wgslsmith_f_op_f32(floor(-1056f))), _wgslsmith_f_op_f32(abs(784f)), _wgslsmith_f_op_f32(-1299f * -230f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), vec4<u32>(132776u, 56031u, 59230u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12u)])), ~global0[_wgslsmith_index_u32(u_input.c, 12u)]) << (_wgslsmith_clamp_u32(98966u, 46433u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 12u)], 81756u), vec2<u32>(0u, 24908u))) % 32u), global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<i32>(-31565i, ~firstTrailingBit(max(2147483647i, u_input.a.x))), var_1);
}

