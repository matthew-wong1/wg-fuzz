struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = abs(countOneBits(vec2<u32>(arg_0.a, min(arg_0.a, 4294967295u))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(998f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_0.d.x)), _wgslsmith_div_f32(-735f, _wgslsmith_f_op_f32(floor(arg_2.x))), all(arg_0.c))))));
    var var_1 = vec3<u32>(~var_0.x, var_0.x, var_0.x);
    var_0 = vec2<u32>(firstLeadingBit(~var_1.x), _wgslsmith_sub_u32(var_0.x & 69741u, var_0.x) & arg_0.a);
    var var_2 = -1659f;
    return arg_0.d.x;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-636f * _wgslsmith_f_op_f32(f32(-1f) * -489f));
    var var_0 = (0i <= ~_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -2147483647i), u_input.a.x)) && true;
    let var_1 = global1[_wgslsmith_index_u32(arg_3.x, 18u)];
    let var_2 = Struct_1(~arg_3.x, -1i, vec3<bool>(4294967295u >= arg_3.x, _wgslsmith_clamp_i32(~2147483647i, var_1.b, 0i) != u_input.a.x, true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)))))));
    return vec3<bool>(_wgslsmith_f_op_f32(var_1.d.x + var_2.d.x) <= _wgslsmith_f_op_f32(f32(-1f) * -693f), any(select(!select(arg_1.yx, vec2<bool>(arg_1.x, false), arg_1.xy), var_2.c.xy, arg_1.zz)), arg_1.x);
}

fn func_2(arg_0: i32) -> bool {
    global1 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, firstLeadingBit(-u_input.a)), reverseBits(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, u_input.a.x), vec2<i32>(24700i, -1i))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f))));
    var var_1 = Struct_2(-626f);
    let var_2 = select(vec3<bool>(true, true, true), select(func_4(var_1.a, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(Struct_1(4294967295u, -1123i, vec3<bool>(false, false, false), vec3<f32>(var_1.a, 1064f, 766f)), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -1257f)))), ~(~vec3<u32>(0u, 67785u, 24548u))), vec3<bool>(!(u_input.a.x <= -3854i), true, true), any(vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true))), true);
    return false;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    var var_0 = arg_2 & arg_2;
    var var_1 = !(all(arg_1.yyz) | select(!func_2(1i), any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)) & (arg_2 == 57586u), arg_1.x));
    return StorageBuffer(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(arg_2, 0u, arg_2, arg_2)), firstLeadingBit(vec4<u32>(arg_2, 1u, arg_2, arg_2))), -_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-10068i, u_input.a.x, 2147483647i)), -vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), arg_3.a), 1u, -1641i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~abs(abs(vec2<u32>(4294967295u, 1u)))), _wgslsmith_div_i32(max(~(-1i), max(u_input.a.x, 1i)) | u_input.a.x, u_input.a.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f * -1133f) + _wgslsmith_f_op_f32(-580f - -1701f)), -501f))));
    let x = u_input.a;
    s_output = func_1(1095f, !(!vec4<bool>(false, false, var_0.c.x, true)), 0u, Struct_2(_wgslsmith_f_op_f32(max(-358f, -1313f))));
}

