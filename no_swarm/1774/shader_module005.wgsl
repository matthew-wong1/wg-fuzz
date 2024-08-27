struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: vec2<u32>;

var<private> global2: bool;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    global0 = array<vec3<f32>, 13>();
    global1 = u_input.b.xy;
    global2 = true;
    var var_0 = i32(-1i) * -1377i;
    let var_1 = firstTrailingBit(-1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 322f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) - -207f))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    return 3233u;
}

fn func_2(arg_0: bool, arg_1: u32) -> StorageBuffer {
    let var_0 = (~u_input.a & ~u_input.a) & vec4<u32>(~_wgslsmith_mult_u32(global1.x, global1.x) >> (_wgslsmith_div_u32(~4294967295u, arg_1) % 32u), u_input.b.x, func_3(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(0i, 2147483647i)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1269f)), Struct_1(~vec2<i32>(-28869i, 1i), ~1u)), ~35548u);
    var var_1 = 56882i;
    var var_2 = Struct_4(Struct_1(-vec2<i32>(~2147483647i, _wgslsmith_clamp_i32(-9130i, 2147483647i, -1i)), 40875u ^ var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-389f + -1972f))))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(650f, 777f) * vec2<f32>(-1553f, -1493f))))), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, -13321i), select(-2147483647i, 0i, true)), countOneBits(global1.x & 61969u)), Struct_1(select(-vec2<i32>(0i, -3252i), vec2<i32>(-7007i, -60060i), vec2<bool>(false, false)), 64175u)), Struct_1(~(-abs(vec2<i32>(0i, 1i))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(6416u, var_0.x)), firstLeadingBit(vec2<u32>(var_0.x, 0u)))), _wgslsmith_f_op_f32(1048f + 534f));
    let var_3 = Struct_4(var_2.c.c, _wgslsmith_f_op_f32(-var_2.c.a.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.a * vec2<f32>(var_2.e, var_2.b)), vec2<f32>(var_2.c.a.x, 1537f))), Struct_1(countOneBits(var_2.c.c.a) >> ((vec2<u32>(0u, 1u) ^ var_0.xx) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(var_0, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.x, 0u, 21579u, u_input.b.x)))), var_2.a), var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1184f)), 1800f)))));
    var_1 = select(var_2.a.a.x, firstLeadingBit(9459i), all(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0), true)) || any(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, false, arg_0)), !vec4<bool>(arg_0, false, true, arg_0))));
    return StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~var_2.c.c.a, var_3.a.a), abs(~_wgslsmith_mod_vec2_i32(var_3.d.a, vec2<i32>(1i, var_2.d.a.x)))), var_2.c.a, countOneBits(~vec4<u32>(var_0.x, 0u, 8590u, u_input.a.x)) << (~vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(arg_1, var_0.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.zx)) % vec4<u32>(32u)), var_3.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-20399i, -7188i), vec2<i32>(-42754i, 25393i)) | -1i) < -26532i;
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-794f, _wgslsmith_f_op_f32(step(-1931f, _wgslsmith_f_op_f32(min(-116f, -269f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(global1.x, u_input.b.x, 1u), Struct_3(390f), vec4<bool>(false, false, false, false))), _wgslsmith_div_f32(437f, 1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1665f, -1216f))))));
    var var_1 = vec4<i32>(i32(-1i) * -66756i, -(~(-(i32(-1i) * -1i))), -50856i, ~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(1i, 24700i)), vec2<i32>(-1i) * -vec2<i32>(1i, -1i)));
    let x = u_input.a;
    s_output = func_2(true, global1.x);
}

