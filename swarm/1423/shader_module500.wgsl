struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec2<bool>, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(select(select(vec2<u32>(2857u, arg_0.x), vec2<u32>(arg_1, 4692u), global2[_wgslsmith_index_u32(select(arg_1, u_input.b, true), 16u)]), ~vec2<u32>(102941u, u_input.b), vec2<bool>(23154u > arg_1, true)), firstTrailingBit(arg_0.xx), min(select(arg_0.xz, vec2<u32>(4294967295u, arg_1), global2[_wgslsmith_index_u32(19806u, 16u)]) & (vec2<u32>(u_input.b, arg_1) & vec2<u32>(u_input.b, arg_1)), vec2<u32>(~arg_0.x, select(9602u, 0u, global1[_wgslsmith_index_u32(arg_0.x, 2u)])))) | vec2<u32>(arg_1, firstLeadingBit(16045u << (_wgslsmith_div_u32(0u, arg_0.x) % 32u)));
    global0 = array<Struct_3, 6>();
    let var_1 = !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(~abs(29265u), 2u)], select(false, true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, u_input.b), 2u)])));
    global1 = array<bool, 2>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_2, -1024f, arg_2), vec4<f32>(arg_2, arg_2, -1632f, arg_2)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), -568f, _wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(step(1635f, 1087f))))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(1004f, -482f);
    var var_1 = arg_0;
    global0 = array<Struct_3, 6>();
    global2 = array<vec2<bool>, 16>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1115f, 1000f)) * _wgslsmith_f_op_f32(636f + -152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(751f, 1992f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(912f, -1195f) + vec2<f32>(-1294f, -1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(561f, -384f), vec2<f32>(-1493f, 1531f))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.b, u_input.b, 1u) << (vec3<u32>(1959u, 11230u, 1u) % vec3<u32>(32u)), arg_1, var_2.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1077f, var_2.x, -1196f, var_2.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-219f, 334f, var_2.x, 545f))))))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(~max(vec2<i32>(u_input.a, -25423i), vec2<i32>(u_input.a | u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)))), u_input.b));
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global1 = array<bool, 2>();
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(abs(2147483647i), ~31574i, arg_3.a), _wgslsmith_clamp_i32(firstTrailingBit(~u_input.a) | -(~2147483647i), ~u_input.a, u_input.a), countOneBits(-_wgslsmith_sub_i32(firstTrailingBit(48417i), arg_3.a >> (22649u % 32u))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 16>();
    var var_0 = global0[_wgslsmith_index_u32(~select(select(~u_input.b, func_1(global1[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(26606u, 2u)], Struct_2(1i, vec2<f32>(1228f, -362f), Struct_1(vec4<f32>(947f, -774f, -563f, -1005f), vec4<f32>(103f, -126f, -1000f, 1858f)), vec3<f32>(697f, -1000f, 1390f), u_input.a)), global1[_wgslsmith_index_u32(36167u & u_input.b, 2u)]) | _wgslsmith_mult_u32(~u_input.b, u_input.b), 1u, all(select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 2u)], false), vec3<bool>(false, false, true)), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], false, true), vec3<bool>(false, false, false))))), 6u)];
    var var_1 = select(~reverseBits(u_input.b), var_0.b.x, -var_0.c.a == _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a) >> (1u % 32u), -reverseBits(1i)));
    var var_2 = Struct_2(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2190f - _wgslsmith_f_op_f32(f32(-1f) * -237f)))), -109f), var_0.c.c, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-39187i, u_input.a), u_input.b)).x, _wgslsmith_f_op_f32(-var_0.c.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.c.c.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-26557i, -1i), var_0.d.x)).x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) + _wgslsmith_f_op_f32(var_0.c.b.x + var_0.c.b.x)))), -(~1i));
    var var_3 = var_0.c;
    var_2 = Struct_2(u_input.a, vec2<f32>(131f, 810f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.c.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1172f, 1000f)) + var_0.c.c.a.x), 1569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.d.x - -1208f) * _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec4_f32(func_3(~(~vec3<u32>(u_input.b, 1u, var_0.b.x)), u_input.b, _wgslsmith_f_op_vec4_f32(func_3(var_0.b, firstLeadingBit(97031u), _wgslsmith_f_op_f32(-360f + 837f))).x))), vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(-271f, -123f, var_0.e))), var_3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-28040i, -1i), 37901u)).x * _wgslsmith_f_op_f32(-var_0.c.d.x))), ~_wgslsmith_mod_i32(1i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -37766i);
}

