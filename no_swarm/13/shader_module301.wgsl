struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global0 = array<i32, 7>();
    let var_0 = _wgslsmith_f_op_f32(max(arg_0.x, -1233f));
    global0 = array<i32, 7>();
    var var_1 = arg_1;
    let var_2 = u_input.b.x;
    return true;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global0 = array<i32, 7>();
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), false), vec3<bool>(true, true, true), false), 632f, _wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.a.wy, u_input.a.zw), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 5029u), u_input.a.zw, _wgslsmith_add_vec2_u32(u_input.a.ww, u_input.a.zy)))), -417f, vec2<bool>(all(vec4<bool>(true, select(true, true, false), true, true)), !all(vec3<bool>(false, true, false))));
    var var_1 = var_0;
    var var_2 = true;
    let var_3 = vec4<i32>(~_wgslsmith_dot_vec2_i32(-u_input.b.zw ^ -vec2<i32>(-60638i, 2147483647i), countOneBits(vec2<i32>(arg_0.x, 2147483647i))), -global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -max(0i, -(~u_input.b.x)), _wgslsmith_add_i32((_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_1.c, 7u)], global0[_wgslsmith_index_u32(var_1.c, 7u)], arg_0.x), vec3<i32>(u_input.b.x, 1i, -6509i)) | _wgslsmith_clamp_i32(-2147483647i, arg_0.x, -11829i)) ^ ~global0[_wgslsmith_index_u32(~var_0.c, 7u)], _wgslsmith_div_i32(-27799i, ~_wgslsmith_sub_i32(-1i, 607i))));
    return abs(-countOneBits(_wgslsmith_sub_i32(82302i, 2147483647i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(~arg_3.c & ~4294967295u, arg_2 << (firstTrailingBit(arg_0.x) % 32u));
    var var_1 = u_input.b.x;
    var_0 = ~u_input.a.x;
    let var_2 = vec3<i32>(func_3(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-7747i, -19340i), u_input.b.yx), u_input.b.wx)) >> (firstTrailingBit(47944u) % 32u), ~(~45027i), (u_input.b.x >> (1u % 32u)) & min(-15046i, -2147483647i));
    var_0 = 2815u;
    return vec4<bool>(false, all(vec2<bool>(arg_1.x, false)), _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(arg_0.x, 7u)], -1i) > 3747i, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_0 = Struct_1(vec3<bool>(all(vec4<bool>(func_1(vec4<f32>(1293f, 562f, -1882f, -506f), Struct_1(vec3<bool>(true, true, true), 297f, 4294967295u, -778f, vec2<bool>(true, false))), all(vec3<bool>(true, true, false)), true, true)), all(func_2(u_input.a.zz, vec4<bool>(false, true, true, true), u_input.a.x, Struct_1(vec3<bool>(true, false, true), -189f, 10788u, 166f, vec2<bool>(true, false)))) | ((1i | u_input.b.x) <= ~global0[_wgslsmith_index_u32(127781u, 7u)]), any(vec3<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-436f, _wgslsmith_f_op_f32(min(-1383f, -1000f)))))), vec2<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -861f) > _wgslsmith_f_op_f32(floor(-179f))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 7u)], global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]) >> (29796u % 32u), u_input.b.x, -countOneBits(_wgslsmith_add_i32(u_input.b.x, 6006i))), min(vec3<i32>(abs(1i), global0[_wgslsmith_index_u32(12875u, 7u)], -13757i ^ select(u_input.b.x, global0[_wgslsmith_index_u32(10476u, 7u)], var_0.e.x)), vec3<i32>(abs(5908i), global0[_wgslsmith_index_u32(reverseBits(var_0.c | var_0.c), 7u)], global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(var_0.c, 4294967295u, var_0.c))), 7u)])));
    let var_2 = 0i;
    var var_3 = all(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b), var_0.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, 1643f, 1370f, var_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, 1251f, var_0.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(442f, var_0.b, var_0.d, var_0.d) - vec4<f32>(var_0.d, -1301f, -650f, -1393f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1147f, 407f, var_0.b, 692f), vec4<f32>(-163f, var_0.d, 1534f, -320f))), !vec4<bool>(var_0.a.x, true, var_0.e.x, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f - 305f)), -1161f, -1000f, var_0.d), vec4<bool>(any(!vec4<bool>(false, false, false, var_0.a.x)), true, select(!var_0.a.x, false, false), !var_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(293f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -411f)), _wgslsmith_f_op_f32(sign(var_0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 751f, var_0.d)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d, -494f, var_0.d), vec3<f32>(1f, 1f, 1f))))));
}

