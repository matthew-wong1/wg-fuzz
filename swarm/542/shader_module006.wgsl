struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.b.zxz;
    global0 = arg_2;
    let var_1 = vec3<bool>(!global0.a, false, true);
    return _wgslsmith_f_op_f32(sign(arg_0.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = arg_0;
    var var_1 = u_input.c.x | 2147483647i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(508f - 765f), _wgslsmith_div_f32(-440f, -574f), _wgslsmith_f_op_f32(min(1264f, 1176f))), !vec4<bool>(true, true, arg_0.a, global0.a), Struct_1(true))) <= 1885f);
    global0 = var_0;
    return Struct_1(any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, var_2.a)), !select(vec2<bool>(var_2.a, true), vec2<bool>(global0.a, arg_0.a), vec2<bool>(var_0.a, arg_0.a)), var_2.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(false);
    global0 = func_2(var_0);
    var var_1 = reverseBits(vec4<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.a), u_input.d)), ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, ~1u), u_input.d.x, ~(~(~15972u))));
    let var_2 = _wgslsmith_f_op_f32(-376f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 - arg_2.x))))));
    var_1 = max(vec4<u32>(86916u, _wgslsmith_div_u32(~4294967295u, 4294967295u), u_input.a, var_1.x), max(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 48188u, var_1.x) & vec4<u32>(var_1.x, 4294967295u, 32548u, u_input.d.x), u_input.d), vec4<u32>(~_wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(u_input.d.x, var_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_1.x, var_1.x), var_1.zzz), firstTrailingBit(countOneBits(78724u)), _wgslsmith_mult_u32(u_input.a, max(var_1.x, 1695u)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1210f, -1219f) + vec3<f32>(-882f, 294f, -346f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(283f, -879f, -273f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-690f, 1245f, -236f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 708f, 1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-486f, 369f, -1648f), vec3<f32>(1000f, 1011f, -221f))), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, true, false), global0.a)))))), select(!(!(!vec2<bool>(global0.a, global0.a))), !vec2<bool>(global0.a, global0.a), all(!vec3<bool>(false, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1312f, -434f, 252f, -388f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, -921f, 2764f, -1322f))))))), _wgslsmith_f_op_f32(f32(-1f) * -309f));
    let var_0 = 616f;
    var var_1 = var_0;
    var var_2 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) - _wgslsmith_f_op_f32(func_3(vec3<f32>(var_0, var_0, var_0), vec4<bool>(true, false, false, global0.a), Struct_1(false))))), var_0, _wgslsmith_f_op_f32(round(801f))), !vec2<bool>(all(vec3<bool>(false, true, global0.a)), u_input.c.x <= -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 291f, -763f, var_0), vec4<f32>(880f, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -801f, -710f, var_0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-939f, var_0, 454f, var_0), vec4<f32>(var_0, 1000f, -782f, var_0), global0.a)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0, var_0), var_0, _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(ceil(var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1268f, 976f, 336f)) - vec4<f32>(-1000f, 807f, var_0, var_0)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, 328f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 678f, -1103f)), true)), select(select(!vec4<bool>(false, false, global0.a, false), vec4<bool>(global0.a, true, global0.a, false), u_input.a <= 0u), !vec4<bool>(true, false, global0.a, true), !vec4<bool>(false, global0.a, false, global0.a)), Struct_1(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a, 58507u, u_input.a, 4294967295u)) == ~0u))));
    let var_3 = func_2(Struct_1(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -435f)), !(!vec2<bool>(var_2.a, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(var_0, -389f, var_0, 761f), false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-109f, var_0, var_0, var_0))), all(vec2<bool>(global0.a, true)))), var_0).a));
    let var_4 = Struct_1(any(!select(vec3<bool>(var_2.a, true, global0.a), !vec3<bool>(true, global0.a, false), func_1(vec3<f32>(var_0, -676f, var_0), vec2<bool>(false, global0.a), vec4<f32>(var_0, -818f, -1422f, var_0), 2229f).a)));
    var var_5 = Struct_1(!var_4.a);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 966f, var_0, -764f) * vec4<f32>(-225f, 139f, var_0, var_0))), vec4<f32>(_wgslsmith_f_op_f32(-1356f + var_0), -1647f, _wgslsmith_f_op_f32(-var_0), 234f))))) - vec4<f32>(var_0, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -620f)) * var_0), -1514f));
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, (73u ^ u_input.a) ^ 28732u, ~(~(~vec3<u32>(1u, 1u, u_input.a)) | u_input.d.zwx), u_input.c.zz, ~vec2<i32>(29633i | _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), max(_wgslsmith_div_i32(-13620i, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xy))));
}

