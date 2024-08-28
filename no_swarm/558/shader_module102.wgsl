struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_add_u32(u_input.a, ~_wgslsmith_sub_u32(~1u, u_input.d));
    var_0 = ~u_input.a;
    let var_1 = Struct_2(min(abs(min(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(59623u, 8661u, u_input.b, 1u)), _wgslsmith_mod_vec4_u32(arg_0, arg_0))), arg_0), Struct_1(arg_1.x, arg_1.x));
    let var_2 = Struct_2(min(vec4<u32>(0u, ~u_input.b, ~(~var_1.a.x), ~u_input.b), vec4<u32>(1u, var_1.a.x, 4294967295u, var_1.a.x)), Struct_1(true, false));
    var_0 = _wgslsmith_div_u32(var_2.a.x, ~abs(~_wgslsmith_add_u32(0u, 4294967295u)));
    return ~(~select(_wgslsmith_dot_vec4_i32(vec4<i32>(-35390i, 0i, u_input.c.x, u_input.c.x), u_input.e), 1593i ^ u_input.e.x, any(vec4<bool>(true, true, var_2.b.a, arg_1.x))) & _wgslsmith_sub_i32(~abs(u_input.c.x), ~abs(u_input.e.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(true, true);
    let var_1 = 749f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1663f))));
    var var_2 = arg_2;
    var var_3 = arg_2.b;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1926f)), -1576f);
    return (vec2<u32>(abs(43411u), 19143u) | vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.x), vec2<u32>(u_input.a, 13069u))), var_2.a.x)) >> (vec2<u32>(~abs(0u), var_2.a.x) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.d, 76750u) ^ vec2<u32>(38023u, 0u)) | _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.d)), ~vec2<u32>(47772u, 4294967295u)), func_4(vec2<i32>(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, u_input.d), vec4<u32>(43270u, 4294967295u, 37578u, 36343u), vec4<u32>(1859u, u_input.d, u_input.a, u_input.a)), vec2<bool>(true, false)), _wgslsmith_sub_i32(1i, u_input.e.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, 823f, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, -309f, -1127f, -2063f))))), Struct_2(~_wgslsmith_div_vec4_u32(vec4<u32>(41786u, 0u, u_input.b, 0u), vec4<u32>(u_input.d, 201u, 7522u, 1u)), Struct_1(true, true))));
    var_0 = 1i;
    var var_2 = Struct_1(any(vec4<bool>(any(vec3<bool>(false, true, false)), -1966f >= arg_0.x, false, any(vec2<bool>(true, false)))) || false, -(~(~(-14039i))) >= (_wgslsmith_mult_i32(u_input.e.x, 0i) >> (var_1.x % 32u)));
    var_0 = u_input.c.x;
    return var_2.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(637f, -602f, 1000f), vec3<f32>(-529f, -411f, 832f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-518f, -182f, 339f)))))) && !(_wgslsmith_dot_vec3_u32(arg_3.a.yxw, vec3<u32>(u_input.d, 1u, 4294967295u)) < arg_3.a.x);
    var var_1 = arg_3;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-993f))), _wgslsmith_f_op_f32(1463f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(271f, -1319f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-874f, _wgslsmith_f_op_f32(-494f * -374f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(min(441f, 299f)))))), _wgslsmith_f_op_f32(-737f + -1154f));
    let var_3 = !(!(!select(select(vec3<bool>(arg_2, true, false), vec3<bool>(true, false, arg_3.b.a), arg_2), select(vec3<bool>(false, false, false), vec3<bool>(arg_3.b.b, true, var_1.b.b), false), vec3<bool>(false, var_1.b.a, true))));
    let var_4 = -abs(2147483647i);
    return vec3<i32>(u_input.c.x, -73492i, 52i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(func_1(u_input.e.zyy | u_input.c.wyw, -u_input.c.x, false, Struct_2(vec4<u32>(u_input.a, 0u, u_input.a, 36690u), Struct_1(true, true)))) & u_input.e.wxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(1729f, 1427f)), _wgslsmith_f_op_f32(floor(354f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1505f, -2113f), vec2<f32>(-1019f, -427f), true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1138f, -672f))))), _wgslsmith_add_u32(11322u, u_input.a) <= 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(322f + 339f), _wgslsmith_f_op_f32(260f * -1421f)))), -7224i, 63683i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f * _wgslsmith_f_op_f32(-1659f - -389f)))), abs(abs(-(var_0 << (vec3<u32>(77320u, u_input.b, u_input.b) % vec3<u32>(32u))))));
}

