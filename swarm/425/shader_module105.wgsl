struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<i32, 20>;

var<private> global2: array<vec4<i32>, 16>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~countOneBits(min(0u, u_input.a)), 20u)], abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.e, 20u)] >> ((0u ^ u_input.e) % 32u), 1i)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -2202f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-277f - -674f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) * _wgslsmith_f_op_f32(ceil(-261f))), !global3.x))), global3.x, false);
    var var_1 = select(vec4<bool>(var_0.e, true, true, !(global3.x || true)), !vec4<bool>(var_0.c.x < -179f, true, true, true), true);
    global1 = array<i32, 20>();
    global2 = array<vec4<i32>, 16>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), -1047f) - var_0.c.zx) * _wgslsmith_f_op_vec2_f32(max(var_0.c.xx, _wgslsmith_div_vec2_f32(var_0.c.yz, var_0.c.xx))));
    return vec3<bool>(false, !all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)] < u_input.c, !var_1.x, select(global3.x, false, true))), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 25>();
    var var_0 = select(select(vec3<bool>(true, -1i < max(-45951i, global1[_wgslsmith_index_u32(u_input.a, 20u)]), false), vec3<bool>(arg_2, true, firstLeadingBit(arg_1.b.x) <= -2147483647i), !(!select(vec3<bool>(true, arg_1.e, global3.x), vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, true, arg_1.e)))), select(func_3(), select(select(select(vec3<bool>(arg_1.e, true, false), vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, true, global3.x)), !vec3<bool>(true, arg_2, arg_1.e), vec3<bool>(arg_2, false, arg_2)), !select(vec3<bool>(true, arg_1.e, arg_2), vec3<bool>(false, false, false), global3.x), vec3<bool>(true && global3.x, arg_2, arg_2)), !vec3<bool>(false, arg_2, arg_2 & global3.x)), false);
    let var_1 = u_input.a;
    let var_2 = false;
    global0 = array<Struct_1, 25>();
    return _wgslsmith_f_op_f32(trunc(-334f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(true, global3.x, all(vec4<bool>(true, any(vec3<bool>(false, global3.x, false)), global3.x, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.d.xy, Struct_1(1i, u_input.d.xx, vec3<f32>(-1826f, 848f, 1000f), true, global3.x), false)) + _wgslsmith_f_op_f32(230f * 445f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(478f * -831f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(485f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1530f, 640f) + 1635f))));
    var var_3 = global0[_wgslsmith_index_u32(42842u, 25u)];
    var_1 = var_2.x;
    return global0[_wgslsmith_index_u32(reverseBits(arg_0) << (~arg_0 % 32u), 25u)];
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = func_1(59394u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1256f * _wgslsmith_f_op_f32(-157f + arg_0.c.x))));
    global1 = array<i32, 20>();
    var var_2 = Struct_1(2147483647i, firstTrailingBit(-func_1(~u_input.b.x).b), vec3<f32>(425f, var_0.c.x, arg_0.c.x), !all(!select(global3.xz, vec2<bool>(arg_0.d, false), true)), arg_0.e);
    var var_3 = func_1(_wgslsmith_clamp_u32(66029u >> (min(countOneBits(u_input.b.x), u_input.e) % 32u), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(18077u, 0u), ~(~u_input.b.xz))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_vec2_i32(func_4(func_1(~57188u)), vec2<i32>(_wgslsmith_dot_vec3_i32(max(u_input.d, vec3<i32>(54906i, -33180i, 3258i)), u_input.d & u_input.d), u_input.d.x));
    global3 = vec3<bool>(any(select(global3.zx, vec2<bool>(true, true), true)), true, true);
    var var_1 = countOneBits(~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b));
    var_1 = u_input.b;
    var var_2 = _wgslsmith_div_i32(i32(-1i) * -19008i, max(-firstLeadingBit(~global1[_wgslsmith_index_u32(u_input.e, 20u)]), ~_wgslsmith_mod_i32(var_0.x, _wgslsmith_div_i32(-23116i, 38548i))));
    let var_3 = u_input.a;
    let var_4 = Struct_1(u_input.c, -u_input.d.zz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), global3.x == true, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer((0u & _wgslsmith_add_u32(~var_1.x, ~25123u)) | ~min(u_input.b.x | 0u, ~var_3));
}

