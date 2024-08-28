struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
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

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-411f, 1000f, -1532f), vec3<f32>(-1680f, -467f, -243f), vec3<f32>(1397f, 2396f, -1782f), vec3<f32>(1391f, -1225f, -1305f), vec3<f32>(-487f, -193f, 169f), vec3<f32>(1000f, 1231f, -760f));

var<private> global1: i32 = -2193i;

var<private> global2: f32 = 275f;

var<private> global3: Struct_1 = Struct_1(0u, vec2<u32>(60093u, 0u), 1111f, vec2<f32>(-1000f, 1085f));

var<private> global4: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-513f, -1000f, 954f, 672f), vec4<f32>(896f, -1245f, -622f, -243f), vec4<f32>(1855f, 211f, 1000f, 679f), vec4<f32>(1000f, -376f, 1000f, 816f), vec4<f32>(-1444f, -326f, 273f, 1327f), vec4<f32>(857f, -446f, 222f, 213f), vec4<f32>(996f, -1315f, -2271f, -683f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec3<f32> {
    global1 = max(u_input.e.x, u_input.d.x);
    let var_0 = u_input.d.x ^ u_input.e.x;
    var var_1 = Struct_2(min(_wgslsmith_dot_vec2_i32(u_input.d.xz >> (global3.b % vec2<u32>(32u)), min(u_input.e.xx, vec2<i32>(1i, -39477i))), u_input.e.x) & 1i, global3.c, global3.d.x);
    global4 = array<vec4<f32>, 7>();
    global2 = 707f;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, _wgslsmith_f_op_f32(exp2(var_1.b)), var_1.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.c * 348f), global3.c, -746f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1764f, global3.c, 422f))), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(18329u, 6u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(6584u, 6u)], _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(global3.a, 6u)]))))))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = ~(~(vec4<u32>(u_input.b, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 29051u, 74370u)), 4294967295u) | ~vec4<u32>(global3.a, 46520u, 14963u, 85742u)));
    var var_1 = u_input.e.x;
    let var_2 = Struct_1(1u, _wgslsmith_add_vec2_u32(max(max(~global3.b, ~u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.ww, vec2<u32>(u_input.b, 105968u)), vec2<u32>(13769u, 1u) | vec2<u32>(u_input.a.x, 1u))), ~u_input.a), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.d.x)), -1640f) + global3.d)));
    global1 = u_input.e.x >> (1u % 32u);
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.a, global3.b.x), 1u), _wgslsmith_sub_u32(u_input.c.x, var_0.x) | _wgslsmith_clamp_u32(global3.a, global3.a, u_input.a.x)), _wgslsmith_add_u32(min(~var_0.x, 4294967295u & u_input.b), _wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(global3.b.x, u_input.c.x)))), !vec4<bool>(!all(vec2<bool>(false, false)), true, false, true)));
    return _wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(837f - 443f) - arg_0));
}

fn func_1() -> vec2<f32> {
    global4 = array<vec4<f32>, 7>();
    let var_0 = Struct_2(15285i, 851f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global3.d), global3.d)))));
    let var_1 = _wgslsmith_mult_u32(~(_wgslsmith_mult_u32(~0u, _wgslsmith_mod_u32(global3.b.x, 11189u)) >> (global3.a % 32u)), 13263u);
    global4 = array<vec4<f32>, 7>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, 1299f))))), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~4294967295u, firstTrailingBit(u_input.c), global3.d.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global3.d))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, 16032u, 3128u), vec4<u32>(7108u, var_0.a, var_0.b.x, 4294967295u)), 1u) == firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(18677u, u_input.a.x), u_input.a)), true, select(select(true, true, false) & true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true))).x;
    let var_2 = var_0;
    let var_3 = Struct_2(0i, _wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1)), var_2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(1u, select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()).x))) - 459f));
    var var_4 = true;
    global3 = Struct_1(firstTrailingBit(_wgslsmith_mult_u32(global3.b.x << (_wgslsmith_div_u32(u_input.a.x, var_0.b.x) % 32u), var_0.b.x)), select(~global3.b, ~vec2<u32>(min(1u, 0u), ~4294967295u), (var_2.c <= var_3.c) | false), var_0.d.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d), _wgslsmith_f_op_vec2_f32(global3.d * vec2<f32>(-2368f, global3.c))), global3.d))));
    var var_5 = 1u;
    let var_6 = Struct_3(vec3<i32>(abs((var_3.a & u_input.d.x) | u_input.e.x), u_input.e.x, 0i), vec3<i32>(32416i, var_3.a, _wgslsmith_sub_i32(-u_input.e.x, -67667i ^ firstTrailingBit(var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.e >> (vec4<u32>(0u, u_input.b, u_input.c.x, 4294967295u) % vec4<u32>(32u))), u_input.e), var_3.a, !(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, 22518i), vec3<i32>(u_input.e.x, var_6.b.x, var_6.b.x)) < 1i)));
}

