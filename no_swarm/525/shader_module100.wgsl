struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_4(-215f, !global1.x);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, u_input.d, u_input.d) << (vec3<u32>(u_input.d, 1u, 1u) % vec3<u32>(32u))) & ~vec3<u32>(u_input.d, u_input.d, u_input.d), ~(~vec3<u32>(1u, 55824u, 11266u))), _wgslsmith_mult_u32(u_input.d, ~(~u_input.d))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, 32344u), select(~vec2<u32>(u_input.d, u_input.d), abs(vec2<u32>(4294967295u, u_input.d)), !global1.wy), vec2<u32>(u_input.d, u_input.d)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1, vec2<u32>(var_1.x, 4294967295u)), 4294967295u, countOneBits(4294967295u), ~1u), vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.d), abs(u_input.d)), ~1u, ~(~4294967295u), _wgslsmith_mult_u32(1u, var_1.x >> (~var_1.x % 32u)))), 19u)];
    global0 = array<Struct_4, 19>();
    var_0 = Struct_4(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a)) >= -1426f);
    return (arg_0 ^ ~(-1046i)) >> (4294967295u % 32u);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = vec4<i32>(~firstLeadingBit(abs(u_input.c) & (2147483647i << (u_input.d % 32u))), 2147483647i, -1i, _wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), func_3(2147483647i)));
    var var_1 = vec3<u32>(~1422u, select(0u, 0u, global1.x), u_input.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 864f, arg_0, 122f), vec4<f32>(625f, 342f, arg_0, arg_0)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), arg_0, _wgslsmith_div_f32(arg_0, -921f), -939f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(507f, -1252f, 2000f, 182f), vec4<f32>(374f, 1000f, arg_0, arg_0)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-1286f - -522f), arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, -185f, 310f, arg_0)))))));
    let var_3 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = abs(u_input.a);
    return all(vec2<bool>(any(select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true))), (false != all(vec4<bool>(false, true, global1.x, global1.x))) | any(vec3<bool>(false, global1.x, global1.x))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = !((func_2(_wgslsmith_div_f32(-1054f, -574f)) | !(48036i < u_input.a)) & func_2(_wgslsmith_f_op_f32(abs(-688f))));
    var var_1 = select(!select(vec3<bool>(true, !var_0, true), vec3<bool>(all(vec4<bool>(global1.x, var_0, true, global1.x)), true, u_input.d < 1u), true), !vec3<bool>(global1.x, global1.x, var_0), select(vec3<bool>(!all(global1.wz), global1.x, false), select(select(select(global1.wzw, global1.yxx, global1.wwy), global1.wxx, vec3<bool>(false, true, false)), !select(global1.yyy, global1.xzy, vec3<bool>(true, var_0, var_0)), true & var_0), !(!(!global1.yxz))));
    global0 = array<Struct_4, 19>();
    global2 = array<vec3<i32>, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-770f, -746f, -956f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, -1000f, 220f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-241f, 401f, 318f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1303f, 747f, -723f) * vec3<f32>(-1493f, -2177f, -809f))))))));
    return -451f;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(515f, _wgslsmith_f_op_f32(-arg_0.a))) * -201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, -1957f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a, arg_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1103f + 330f)), 1171f))));
    let var_1 = !(-720f > var_0.x);
    var var_2 = vec3<bool>(var_1, any(vec4<bool>(select(false, arg_0.b, arg_0.b) & global1.x, var_1, !global1.x, abs(u_input.d) <= ~1u)), true);
    var var_3 = global0[_wgslsmith_index_u32(0u, 19u)];
    return Struct_2(u_input.b.wxy);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = vec3<u32>(~32394u, abs(countOneBits(1u)), 2518u);
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(40103i, -u_input.a), 1i));
    return !vec2<bool>(global1.x, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 29>();
    var var_0 = func_5(func_4(Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(175f)), _wgslsmith_f_op_f32(func_1(u_input.c)), global1.x || global1.x)), func_2(_wgslsmith_f_op_f32(max(384f, -1234f))))), 25171i, select(vec2<bool>(false, any(!vec2<bool>(global1.x, global1.x))), select(select(global1.xx, !vec2<bool>(global1.x, global1.x), global1.zz), global1.xx, global1.x), global1.yx), func_4(Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(370f)))), false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1066f)), 103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f * 1798f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2783f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1153f, -1000f))))));
    var var_2 = -(_wgslsmith_mod_i32(i32(-1i) * -7383i, _wgslsmith_sub_i32(-1i, max(u_input.b.x, u_input.a))) | ~abs(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.a)));
    let var_3 = func_4(global0[_wgslsmith_index_u32(83914u, 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

