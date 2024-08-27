struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 258u, 89579u), vec3<u32>(0u, 0u, 13999u), vec3<u32>(4294967295u, 5392u, 39318u), vec3<u32>(4165u, 42295u, 1u), vec3<u32>(0u, 36231u, 11007u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = -abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 1i, 68887i, -36118i), vec4<i32>(44568i, 38112i, 10264i, -31166i)) << (max(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 116744u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-165f + 381f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-916f * -236f), -463f)))), all(vec3<bool>((var_0.x > var_0.x) || (15188u == u_input.a.x), true, select(true, true, false))), vec2<bool>(all(vec3<bool>(true, true, true)), true), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0.x), firstLeadingBit(var_0.zz)), -var_0.wz) >> (max(abs(u_input.a), (vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a) >> (~u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1297f), true, vec2<bool>(true, u_input.a.x < countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), var_0.xw);
    let var_2 = var_1.b;
    var var_3 = Struct_1(-335f, -1246f, true, !select(!(!vec2<bool>(var_1.d.x, var_1.c)), vec2<bool>(!var_1.c, true || var_1.c), all(var_1.d)), var_1.e);
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<f32> {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = vec3<i32>(2147483647i, -(-func_3() & 1i), 1i);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, 875f, -846f, arg_1.a), vec4<f32>(arg_1.a, arg_2.x, -886f, 598f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(574f, 1013f, arg_2.x, -1786f) - arg_2) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, -394f, arg_1.a, -1225f), vec4<f32>(-270f, 162f, arg_2.x, arg_2.x)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(arg_1.a * arg_1.a)))), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1297f), 1273f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(any(!vec2<bool>(arg_0.e.x < arg_0.e.x, true)), any(arg_1.d), true);
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_1 = select(vec3<bool>(all(!(!vec4<bool>(arg_1.c, var_0.x, false, var_0.x))), !arg_1.d.x, !(!all(vec3<bool>(true, arg_1.c, arg_0.c)))), select(!select(var_0, var_0, var_0.x & false), !(!vec3<bool>(true, arg_1.d.x, true)), !var_0.x), var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, 866f, arg_0.b, 278f) - vec4<f32>(arg_1.b, arg_0.a, arg_0.b, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(arg_1.e.x, 5237i, 0i, arg_1.e.x), arg_1, vec4<f32>(-309f, -199f, -538f, -250f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -372f, arg_1.a, arg_1.b)))))));
    return Struct_1(arg_1.b, arg_0.b, !any(select(vec2<bool>(false, false), !vec2<bool>(arg_1.d.x, arg_0.d.x), true)), vec2<bool>(true, true), vec2<i32>(_wgslsmith_clamp_i32(arg_1.e.x, arg_0.e.x, 1i), arg_0.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    var var_0 = true;
    let var_1 = arg_0.e;
    var var_2 = Struct_1(arg_2, arg_2, arg_0.d.x, arg_0.d, arg_1.yw);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - -323f);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1213f, -1212f))))), true, select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))), vec2<bool>(true, true), true), vec2<i32>(-2147483647i, -func_4(func_1(Struct_1(548f, -643f, false, vec2<bool>(false, false), vec2<i32>(59041i, 34202i)), Struct_1(367f, 1282f, false, vec2<bool>(true, false), vec2<i32>(1i, 0i))), firstTrailingBit(vec4<i32>(0i, 2147483647i, 2147483647i, 36090i)), -1000f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.a) - var_0.a))), var_0.b, true, !func_1(Struct_1(_wgslsmith_f_op_f32(-160f - var_0.b), _wgslsmith_f_op_f32(ceil(var_0.b)), all(vec3<bool>(false, var_0.c, var_0.c)), vec2<bool>(true, var_0.d.x), var_0.e), func_1(func_1(Struct_1(var_0.a, var_0.b, false, var_0.d, vec2<i32>(var_0.e.x, 0i)), Struct_1(-905f, var_0.b, false, vec2<bool>(false, true), var_0.e)), func_1(Struct_1(300f, -634f, var_0.c, var_0.d, var_0.e), Struct_1(var_0.a, var_0.b, var_0.d.x, var_0.d, var_0.e)))).d, min(vec2<i32>(var_0.e.x, _wgslsmith_add_i32(-23366i, -1i) >> (_wgslsmith_div_u32(12989u, u_input.a.x) % 32u)), var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(max(-_wgslsmith_div_vec4_i32(vec4<i32>(1867i, var_0.e.x, -1i, var_0.e.x), -vec4<i32>(1i, -48695i, var_0.e.x, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(54026i, -25830i, var_0.e.x), vec3<i32>(var_0.e.x, -2147483647i, var_1.e.x)), i32(-1i) * -1i, ~var_1.e.x), vec4<i32>(var_1.e.x, -35131i, 0i, 1i) | (vec4<i32>(-1i, var_0.e.x, -2147483647i, -36902i) ^ vec4<i32>(1i, var_1.e.x, var_1.e.x, -56115i)))), 1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, 1801f, !var_0.c))));
}

