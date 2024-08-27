struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<f32, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(u_input.a.wyw, vec3<i32>(reverseBits(16981i) << (u_input.b % 32u), -2147483647i, select(2147483647i, _wgslsmith_mult_i32(u_input.a.x, -24342i), global0.x))), (50118u << (_wgslsmith_dot_vec4_u32(vec4<u32>(33294u, 0u, 38175u, u_input.b), vec4<u32>(u_input.b, 2056u, 21607u, u_input.b)) % 32u)) | u_input.b);
    var var_1 = Struct_1(vec3<i32>(9424i, 2662i, min(var_0.a.x, -15464i)), u_input.b);
    let var_2 = Struct_1(vec3<i32>(select(u_input.a.x << (0u % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), true) & -(i32(-1i) * -30732i), -2147483647i, -(~u_input.a.x << (min(40118u, 22217u) % 32u))), u_input.b);
    let var_3 = var_2;
    var var_4 = (global1[_wgslsmith_index_u32(1u, 18u)] != _wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(floor(673f)))) | true;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(40771u, 18u)], -1716f)), global1[_wgslsmith_index_u32(u_input.b, 18u)])) - global1[_wgslsmith_index_u32(u_input.b, 18u)]), global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.b, 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_3.b, var_3.b, 29883u), vec4<u32>(var_2.b, 24171u, 58079u, 4294967295u))), 18u)], -234f) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 18u)])), global1[_wgslsmith_index_u32(~(~(~var_3.b)), 18u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(~var_0.b, ~15363u), 18u)] - 154f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = all(select(!vec2<bool>(false, arg_3.x), !arg_3.yy, select(!select(global0.wz, vec2<bool>(global0.x, true), false), vec2<bool>(arg_3.x, true), vec2<bool>(any(vec4<bool>(arg_3.x, false, global0.x, arg_3.x)), true))));
    var var_1 = u_input.a.xzz;
    global0 = select(vec4<bool>(global0.x, !global0.x, _wgslsmith_sub_u32(arg_2, u_input.b) < 17953u, all(!(!vec4<bool>(false, true, false, global0.x)))), vec4<bool>(true, arg_3.x, all(!(!arg_3)), arg_3.x), arg_3.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1[_wgslsmith_index_u32(0u, 18u)], 1180f, 1733f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 18u)], -2496f, -1000f), vec4<f32>(1000f, 225f, 2404f, global1[_wgslsmith_index_u32(u_input.b, 18u)]), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 988f, arg_0.x, arg_1), vec4<f32>(arg_1, -1000f, arg_1, -780f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 132f, arg_1, 318f))), vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(19947u, arg_2), 18u)], -1000f, _wgslsmith_f_op_f32(-arg_0.x), -1117f), false)))));
    var_1 = reverseBits(u_input.a.yyy);
    return _wgslsmith_mod_u32(u_input.b, ~_wgslsmith_sub_u32(firstTrailingBit(4294967295u) | arg_2, 4294967295u));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: bool) -> vec3<i32> {
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    var var_0 = Struct_1(vec3<i32>(-2147483647i, 3786i, u_input.a.x), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.x, -996f) * _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_f32(-arg_1.x), u_input.b << (_wgslsmith_clamp_u32(u_input.b, ~0u, 22104u) % 32u), !(!vec3<bool>(arg_2.x, arg_2.x, true))));
    var var_1 = !arg_0;
    return -var_0.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~(-(~(-u_input.a.wy)));
    var var_1 = ~(~reverseBits(reverseBits(arg_1.b & arg_1.b)));
    let var_2 = Struct_1(select(-(vec3<i32>(1i, u_input.a.x, -7904i) & u_input.a.wyw), select(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), -1i, u_input.a.x), firstLeadingBit(func_2(global0.x, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 18u)], -1000f), vec4<bool>(global0.x, true, global0.x, false), false)), global0.x), select(select(global0.zxy, vec3<bool>(global0.x, global0.x, false), select(global0.x, true, false)), select(!vec3<bool>(global0.x, false, false), vec3<bool>(true, false, false), global0.x && true), global0.x)), u_input.b);
    var_1 = 24667u;
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    return 61122u;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 18>();
    var var_0 = select(vec2<bool>(false, any(vec3<bool>(!global0.x, global0.x, all(global0.xwx)))), !select(select(select(global0.wx, vec2<bool>(global0.x, global0.x), global0.zz), select(global0.xz, vec2<bool>(true, true), global0.x), vec2<bool>(true, false)), !(!vec2<bool>(true, global0.x)), !(!vec2<bool>(false, global0.x))), global0.x);
    let var_1 = 0i;
    global0 = !select(select(!(!vec4<bool>(false, false, var_0.x, global0.x)), select(vec4<bool>(global0.x, var_0.x, var_0.x, global0.x), !vec4<bool>(global0.x, false, var_0.x, var_0.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, true, false, true), true)), (arg_0.b == 1u) != true), vec4<bool>(!global0.x, true, any(!global0.zz), 720f <= global1[_wgslsmith_index_u32(arg_0.b, 18u)]), !select(!vec4<bool>(false, true, global0.x, var_0.x), !vec4<bool>(false, true, var_0.x, var_0.x), true));
    var_0 = vec2<bool>(true, !global0.x);
    return Struct_1(arg_0.a, _wgslsmith_mult_u32(0u, abs(u_input.b & arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(select(_wgslsmith_sub_vec3_i32(u_input.a.yzx, -u_input.a.zzx), _wgslsmith_sub_vec3_i32(u_input.a.wxy, u_input.a.yyz) >> (vec3<u32>(u_input.b, 35120u, 0u) % vec3<u32>(32u)), vec3<bool>(!global0.x, false, global0.x)), ~(func_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 642f, global1[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(vec3<i32>(-9894i, u_input.a.x, 18701i), 1u)) >> (4294967295u % 32u))));
    global0 = !select(!(!(!vec4<bool>(global0.x, false, global0.x, false))), select(select(!vec4<bool>(true, global0.x, true, global0.x), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false)), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(false, global0.x, global0.x, true), false)), !(!vec4<bool>(global0.x, true, true, false)), all(select(global0.xzx, vec3<bool>(false, false, true), global0.x))), !any(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, global0.x, false), global0.x)));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.x, (u_input.a.x >> (38725u % 32u)) << (u_input.b % 32u)), var_0.a.x));
    global0 = !vec4<bool>(true, global0.x, all(vec2<bool>(true, true)), true);
    global1 = array<f32, 18>();
    var var_2 = _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 18u)]));
    let var_3 = Struct_1(~var_0.a, _wgslsmith_clamp_u32(u_input.b >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(26499u, 103175u) & vec2<u32>(var_0.b, u_input.b)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, var_0.b) ^ ~u_input.b, 39445u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, var_0.b))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, 0u, 55709u), vec4<u32>(u_input.b, 10694u, 6094u, 0u)), select(vec4<u32>(var_0.b, var_0.b, u_input.b, 59231u) >> (vec4<u32>(u_input.b, u_input.b, var_0.b, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 43942u, var_0.b, 1u), vec4<u32>(1084u, 19801u, var_0.b, 1u)), vec4<bool>(global0.x, false, false, global0.x)))));
    let var_4 = u_input.a;
    let var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 18u)]), global1[_wgslsmith_index_u32(0u, 18u)]) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_3.b, 18u)]))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(56844u, 18u)], 756f), vec2<f32>(global1[_wgslsmith_index_u32(var_3.b, 18u)], -678f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(var_3.b, 18u)]) * vec2<f32>(-286f, global1[_wgslsmith_index_u32(var_0.b, 18u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1277f, global1[_wgslsmith_index_u32(0u, 18u)])))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, 210f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_f32(-1088f - -103f), ~_wgslsmith_add_vec2_u32(~vec2<u32>(44403u, 31326u) << ((vec2<u32>(var_3.b, 57190u) | vec2<u32>(var_0.b, var_3.b)) % vec2<u32>(32u)), vec2<u32>(var_0.b >> (u_input.b % 32u), ~var_0.b)), reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_3.a.x, -19461i), (vec2<i32>(var_4.x, var_4.x) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) ^ var_4.yw)));
}

