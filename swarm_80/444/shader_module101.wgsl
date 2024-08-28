struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(4294967295u, 0u, 19226u, 9276u), false), Struct_1(vec4<u32>(28468u, 9302u, 19051u, 19725u), false));

var<private> global1: array<u32, 7>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<i32>(-18896i, u_input.c, -2944i & -_wgslsmith_dot_vec3_i32(vec3<i32>(1061i, 1i, 48559i), arg_2.zxz), -1i) << (arg_3.a % vec4<u32>(32u));
    var_0 = -(~arg_2);
    let var_1 = arg_3.b;
    var var_2 = max(0i, _wgslsmith_clamp_i32(var_0.x, reverseBits(firstTrailingBit(2147483647i)), ~u_input.c >> (_wgslsmith_mod_u32(arg_3.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]) % 32u)) | _wgslsmith_mult_i32(-21788i, -1i));
    let var_3 = ~15773u;
    return var_3;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = u_input.c;
    global0 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(-1562f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-222f)), 239f)))));
    let var_2 = ~((max(global1[_wgslsmith_index_u32(~3864u, 7u)], global1[_wgslsmith_index_u32(arg_3, 7u)] & u_input.b.x) | func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1649f, var_1, 370f, -957f) + vec4<f32>(arg_1, -706f, var_1, arg_1)), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), true), countOneBits(vec4<i32>(-2147483647i, var_0, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 7u)]), 2u)])) | 4294967295u);
    let var_3 = ~u_input.b;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    var_0 = Struct_1(max(u_input.b, u_input.b), any(vec3<bool>(arg_1, var_0.b, any(!vec4<bool>(false, var_0.b, false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(12705u, 1392f, vec3<bool>(var_0.b, arg_1, true), 50405u)) + -838f), _wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_div_f32(arg_0, -693f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 947f) + arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1687f * arg_0), -270f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0)))));
    global1 = array<u32, 7>();
    let var_2 = u_input.b.x;
    return !var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    global1 = array<u32, 7>();
    let var_0 = Struct_1(u_input.b, false);
    let var_1 = var_0;
    let var_2 = -2824i;
    return var_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = array<u32, 7>();
    let var_0 = all(!vec3<bool>(true, !func_1(2262f, true), true));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = 4294967295u;
    return firstLeadingBit(_wgslsmith_clamp_i32(23873i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-32147i, -2147483647i, u_input.c, u_input.a) | vec4<i32>(-6565i, u_input.c, -2147483647i, -11208i), _wgslsmith_mod_vec4_i32(vec4<i32>(-23117i, 0i, -11231i, u_input.c), vec4<i32>(0i, u_input.a, 1i, 2147483647i))), vec4<i32>(firstTrailingBit(u_input.a), countOneBits(u_input.c), 2147483647i, 47818i)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    let var_0 = true;
    global1 = array<u32, 7>();
    var var_1 = _wgslsmith_mod_i32(func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), func_4(!func_1(-1317f, true), Struct_1(vec4<u32>(4294967295u, 1u, 0u, u_input.b.x), any(vec4<bool>(var_0, false, var_0, var_0))), Struct_1(abs(u_input.b), true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 7u)] >> (1u % 32u), u_input.b.x, select(global1[_wgslsmith_index_u32(0u, 7u)], u_input.b.x, false))), 2u)]), -(~(-_wgslsmith_clamp_i32(u_input.a, u_input.c, 46092i))));
    global1 = array<u32, 7>();
    let var_2 = select(select(!vec2<bool>(false, var_0), !select(!vec2<bool>(var_0, false), vec2<bool>(false, false), !var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-869f - -180f), _wgslsmith_f_op_f32(max(-1352f, 680f)))) < _wgslsmith_f_op_f32(min(1640f, _wgslsmith_f_op_f32(3911f + 1781f)))), vec2<bool>(!(_wgslsmith_clamp_u32(u_input.b.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16440u, 7u)], 7u)]) > ~global1[_wgslsmith_index_u32(0u, 7u)]), all(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0), vec2<bool>(false, true), true), true))), select(vec2<bool>(false, var_0), select(!(!vec2<bool>(var_0, false)), select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), !vec2<bool>(false, var_0)), false), !(!(var_0 || true))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1386f, -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, -1339f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(872f, -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, 126f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1165f, -488f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-442f, 501f) * vec2<f32>(884f, 714f)), vec2<bool>(var_2.x, false))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2247f, 873f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_3.x))))), -614f), vec4<u32>(global1[_wgslsmith_index_u32(~u_input.b.x, 7u)], u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(func_3(vec4<f32>(var_3.x, -731f, 779f, var_3.x), vec4<bool>(var_0, false, var_2.x, var_0), vec4<i32>(u_input.c, 1i, u_input.a, u_input.c), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x, 40482u, global1[_wgslsmith_index_u32(35121u, 7u)]), var_2.x)), u_input.b.x)), u_input.b.wyy);
}

