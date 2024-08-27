struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: Struct_1;

var<private> global2: array<f32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global2 = array<f32, 29>();
    var var_0 = _wgslsmith_f_op_f32(-global1.a);
    global2 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1050f, global1.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, global2[_wgslsmith_index_u32(1u, 29u)]) - vec2<f32>(global1.a, 234f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, -1666f), vec2<f32>(global2[_wgslsmith_index_u32(0u, 29u)], 554f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, 1000f))))))));
    let var_2 = Struct_1(-418f, vec4<u32>(~countOneBits(abs(global1.b.x)), (~u_input.d >> (global1.b.x % 32u)) << (~reverseBits(u_input.c) % 32u), u_input.c, 0u), any(!(!select(vec3<bool>(global1.c, false, global1.d), vec3<bool>(false, true, global1.d), true))), all(vec4<bool>(all(vec4<bool>(global1.c, global1.c, global1.c, global1.c)), !global1.c && any(vec4<bool>(true, false, global1.d, false)), global1.d && true, false)));
    return u_input.c;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec3<f32> {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 29u)], -804f));
    global0 = array<vec2<bool>, 24>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2177f, 756f, var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(337f, -769f, 301f), _wgslsmith_div_vec3_f32(vec3<f32>(-784f, arg_0.a.a, -574f), vec3<f32>(1000f, 269f, -1071f))) * vec3<f32>(_wgslsmith_f_op_f32(var_1 * global2[_wgslsmith_index_u32(var_0, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -806f), global1.a)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(468f)))) + 288f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1146f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(98271u, 29u)], var_1)))))), vec3<bool>(var_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(530f, 277f))), all(!(!vec2<bool>(arg_1, arg_0.c))), all(select(select(vec3<bool>(arg_1, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, false, arg_1), false), select(vec3<bool>(true, arg_0.b, true), vec3<bool>(arg_0.b, false, false), true), vec3<bool>(arg_0.b, global1.d, arg_0.b))))));
    global1 = Struct_1(-1919f, _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, 59540u, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b, !vec4<bool>(true, false, arg_1, false)) ^ abs(abs(arg_0.a.b)), select(arg_0.a.b, vec4<u32>(_wgslsmith_div_u32(1151u, var_0), global1.b.x, select(arg_0.a.b.x, 1u, arg_1), firstTrailingBit(u_input.d)), any(vec4<bool>(arg_0.c, false, global1.c, false)) && select(arg_1, false, true))), false, !(!arg_1));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.d, 29u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, global1.a)) + _wgslsmith_f_op_f32(round(540f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -366f), global2[_wgslsmith_index_u32(57755u, 29u)])))))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~firstTrailingBit(global1.b.x), 30325u), 29u)]);
}

fn func_4(arg_0: vec3<f32>) -> bool {
    var var_0 = select(!(!(!vec4<bool>(global1.d, global1.c, global1.d, false))), !vec4<bool>(any(select(vec4<bool>(global1.c, global1.d, false, true), vec4<bool>(global1.c, global1.c, global1.d, global1.c), global1.d)), true, true, false), vec4<bool>(true, all(select(vec4<bool>(global1.d, global1.d, global1.c, global1.d), vec4<bool>(false, global1.d, true, false), vec4<bool>(false, false, false, false))), true, global1.d));
    var var_1 = ~(~vec3<u32>(4294967295u, ~func_3(), _wgslsmith_dot_vec2_u32(global1.b.xy >> (global1.b.xy % vec2<u32>(32u)), ~global1.b.zx)));
    var var_2 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(select(65621u, 1u, true || !var_0.x), 29u)], vec4<u32>(min(max(1u, 59124u), global1.b.x), 45565u, reverseBits(func_3()), func_3()), arg_0.x != 341f, any(vec2<bool>(global1.d, !var_0.x))), global1.d, var_0.x);
    let var_3 = !(!select(select(vec4<bool>(false, true, global1.d, var_0.x), !vec4<bool>(var_2.a.c, var_2.b, var_0.x, true), select(vec4<bool>(true, var_2.b, var_0.x, true), vec4<bool>(var_0.x, var_0.x, global1.c, global1.d), true)), select(select(vec4<bool>(var_0.x, var_2.b, var_0.x, false), vec4<bool>(var_0.x, var_2.b, false, global1.d), global1.c), !vec4<bool>(global1.c, var_0.x, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(global1.c, false, var_0.x, true), vec4<bool>(true, true, var_0.x, global1.c))), -1281f == _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(40365u, 29u)] * -771f)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d, 29u)] - 1543f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 29u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.a)))), _wgslsmith_f_op_f32(step(2301f, _wgslsmith_f_op_f32(select(474f, _wgslsmith_f_op_f32(-var_2.a.a), any(vec3<bool>(true, false, global1.d)))))))), ~min(vec4<u32>(_wgslsmith_mult_u32(var_2.a.b.x, var_2.a.b.x), _wgslsmith_clamp_u32(44857u, var_2.a.b.x, var_2.a.b.x), global1.b.x & global1.b.x, 0u), vec4<u32>(var_1.x, 4294967295u, var_1.x, 4294967295u) | global1.b), true, any(!var_0.yw));
    return !global1.d && !all(!vec2<bool>(false, var_2.b));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = arg_0;
    let var_2 = _wgslsmith_add_u32(~firstLeadingBit(12163u), global1.b.x);
    let var_3 = ~var_0.b.yyx;
    return global2[_wgslsmith_index_u32(~select(var_0.b.x, var_0.b.x, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(arg_0, global1.d, true), false, 26789i)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2349f, var_0.a, global1.a))))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(false, !(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.c, 29u)])) < _wgslsmith_div_f32(global1.a, global2[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_clamp_u32(u_input.c, u_input.d >> (0u % 32u), _wgslsmith_mod_u32(u_input.d, 21039u)) >= global1.b.x, global1.c));
    global0 = array<vec2<bool>, 24>();
    let var_1 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 29u)], vec4<u32>(~abs(76799u), u_input.d, 10829u, ~abs(u_input.d)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, vec4<u32>(global1.b.x, global1.b.x, 4294967295u, u_input.c), global1.d, true), u_input.d)) * global1.a)) >= -311f, var_0);
    global1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~var_1.a.b.x, 29u)], global2[_wgslsmith_index_u32(abs(global1.b.x), 29u)]))))), global1.b, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, _wgslsmith_f_op_f32(540f - -1280f), _wgslsmith_f_op_f32(func_1(var_1.a, 26510u))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-755f, -487f, global1.a))))), select(all(vec3<bool>(any(vec4<bool>(true, false, var_1.c, true)), false, all(vec4<bool>(var_0, false, var_1.c, true)))), (_wgslsmith_f_op_f32(-global1.a) != -1912f) || any(vec4<bool>(global1.d, false, global1.c, var_1.a.d)), global1.d));
    global1 = var_1.a;
    let var_2 = abs(vec3<i32>(23927i, 63026i, _wgslsmith_mult_i32(max(u_input.a << (63770u % 32u), min(-1i, u_input.b.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(28136i, -71667i), _wgslsmith_clamp_i32(5936i, -1i, u_input.b.x)))));
    global0 = array<vec2<bool>, 24>();
    var var_3 = _wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(global2[_wgslsmith_index_u32(~(var_1.a.b.x >> (0u % 32u)), 29u)], var_1.a.b, var_1.a.d, all(vec3<bool>(false, true, true))), true, select(var_1.b, true, global1.d)), !(!var_1.c) == true, ~(~(~(-var_2.x))))).zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(20763u, ~17105u, u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(704f, global1.a, 865f, 1220f), vec4<f32>(188f, 512f, global1.a, var_1.a.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a, 1000f, -363f, -776f))), 826f <= var_1.a.a)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, -888f, global1.a, -685f) - vec4<f32>(1412f, -656f, global1.a, 497f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], var_1.a.a, var_3.x, global2[_wgslsmith_index_u32(global1.b.x, 29u)]) + vec4<f32>(827f, 670f, var_1.a.a, 784f)))))), u_input.e, firstLeadingBit(global1.b.x), -669f);
}

