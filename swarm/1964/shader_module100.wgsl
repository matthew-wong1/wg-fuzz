struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(506f, 979f, 397f, -531f));

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, arg_0.a.x, -452f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1097f, arg_0.a.x, -724f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-204f + 1205f), _wgslsmith_div_f32(-301f, -541f), _wgslsmith_f_op_f32(ceil(var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(arg_0.a, global1.a, true)))) + global1.a)));
    let var_2 = _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-616f + var_0.a.x)))) >= var_0.a.x;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a));
    return ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(9835u, 1u, 16046u), vec3<u32>(0u, 1u, 0u)), vec3<u32>(65988u, 2936u, 0u)), 13873u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), _wgslsmith_clamp_vec2_i32(select(select(vec2<i32>(-12874i, u_input.a), vec2<i32>(0i, u_input.a), vec2<bool>(false, true)), ~vec2<i32>(u_input.a, u_input.a), true), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-37060i, 2147483647i), vec2<i32>(-2147483647i, 0i)), ~vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), -vec2<i32>(-1i, 41480i), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, 1i)))) ^ vec2<i32>(1i, abs(u_input.a)));
    let var_0 = ~firstTrailingBit(arg_0.wz);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.a.wzw))));
    global1 = Struct_1(global1.a);
    var var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = !(!all(vec3<bool>(true, arg_0, arg_0))) || arg_0;
    let var_1 = u_input.a;
    global1 = func_3(vec4<u32>(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 252u), vec2<u32>(0u, 25345u))), ~1u, ~(~func_2(Struct_1(vec4<f32>(global1.a.x, -938f, 595f, global1.a.x)))), 1u & _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u))), global0[_wgslsmith_index_u32(~abs(~1u), 27u)]);
    global2 = -_wgslsmith_sub_i32(var_1, u_input.a);
    global2 = -_wgslsmith_clamp_i32(1i, -22387i, select(~(-56254i), -2147483647i, !(!arg_0)));
    return _wgslsmith_div_u32(29981u, _wgslsmith_div_u32(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(1u, ~(~(~1u)));
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(~32817u, var_0) | func_1(6157i == u_input.a), firstLeadingBit(_wgslsmith_mult_u32(0u, var_0)), 12519u);
    var var_2 = _wgslsmith_f_op_f32(-global1.a.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.a.x)))))), _wgslsmith_f_op_f32(-314f * global1.a.x));
    var var_4 = func_3(_wgslsmith_add_vec4_u32(vec4<u32>(~63577u, (0u ^ var_1.x) ^ 0u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.x, var_1.x), var_1.xy, vec2<bool>(true, false)), var_1.xx), ~_wgslsmith_sub_u32(11423u, var_0)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, 19704u, var_0), vec4<u32>(var_1.x, 1u, 52671u, 42663u)))), global0[_wgslsmith_index_u32(firstTrailingBit(~min(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, var_1.x, var_1.x), vec4<u32>(var_0, var_0, 7220u, var_0)))), 27u)]);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - var_4.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f * -1687f)))), 1079f));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * var_4.a.x), _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1287f));
    let var_6 = vec2<u32>(82364u, min(1u, ~64963u));
    let var_7 = countOneBits(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec3<i32>(u_input.a, ~u_input.a, countOneBits(u_input.a))), ~vec3<i32>(u_input.a & u_input.a, u_input.a << (var_7 % 32u), _wgslsmith_div_i32(1i, u_input.a)), all(vec3<bool>(var_6.x >= 0u, any(vec3<bool>(true, true, true)), true))), _wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(2147483647i), ~select(u_input.a, u_input.a, false), -u_input.a, min(u_input.a, 2147483647i) | reverseBits(u_input.a)), -(~vec4<i32>(0i, -1i, u_input.a, -7513i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1409f)) * -820f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1096f, global1.a.x)))) + vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_div_f32(-1076f, _wgslsmith_f_op_f32(round(global1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-var_4.a.x)))), u_input.a, reverseBits(0i));
}

