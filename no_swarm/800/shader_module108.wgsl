struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: i32;

var<private> global2: i32 = 0i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, 727f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1080f, 1741f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-790f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(642f, 979f))))))));
    var var_1 = Struct_1(30295i, u_input.a.x ^ (~1u >> (~u_input.a.x % 32u)));
    let var_2 = max(_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(4294967295u, 1u)), firstLeadingBit(u_input.a.zz)) | u_input.a.yy, u_input.a.xz);
    let var_3 = _wgslsmith_clamp_i32(arg_0.a, -abs(countOneBits(-69858i) >> (u_input.a.x % 32u)), 1i);
    var var_4 = ~(~46146u);
    return var_1.a;
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    global1 = ~(func_3(Struct_2(abs(u_input.b.x)), Struct_2(abs(0i))) & u_input.b.x);
    global1 = -7915i;
    let var_0 = Struct_1(~abs((56225i | arg_0.x) >> (37055u % 32u)), u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-789f)) + _wgslsmith_f_op_f32(trunc(-570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1014f)) * _wgslsmith_f_op_f32(284f - -2639f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(sign(-1920f)), _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-448f * 774f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    global0 = array<vec4<u32>, 32>();
    var var_0 = all(select(vec2<bool>(arg_2.x >= arg_2.x, _wgslsmith_mod_u32(45837u, 1u) > arg_1.b), select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), false), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_2.x, 931f, arg_2.x))), _wgslsmith_f_op_vec4_f32(round(arg_2)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, 175f, arg_2.x, arg_0.x) - _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(-594f, arg_0.x, 1043f, -831f)))) * _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(140f, 360f, -441f, arg_0.x)))));
    let var_2 = Struct_2(2147483647i);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(arg_2)), arg_2));
    return false;
}

fn func_1(arg_0: u32) -> u32 {
    global2 = 2147483647i;
    var var_0 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), false), vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(4277i, 9096i, 2147483647i))), Struct_1(12686i, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(829f, -1601f, -1000f, 704f)), Struct_1(1i, 1u)), !(16586u > arg_0)), !all(vec4<bool>(true, true, true, true)));
    var var_1 = 67363u;
    var var_2 = Struct_2(firstTrailingBit(~(~(-2147483647i))));
    let var_3 = _wgslsmith_mod_u32(0u, 1u << (arg_0 % 32u));
    return 54734u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(u_input.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(16032i, u_input.b.x, 53500i, 23308i), vec4<i32>(u_input.b.x, -82514i, 326i, 0i)) << (_wgslsmith_mod_u32(93838u, u_input.a.x) % 32u))), func_1((61708u & u_input.a.x) ^ ~(0u | u_input.a.x)));
    global2 = -29522i;
    var var_1 = max(firstLeadingBit(~(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_0.b)))), ~(~(~abs(global0[_wgslsmith_index_u32(1u, 32u)]))));
    let var_2 = Struct_1(37490i, func_1(4294967295u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(123f, 544f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1857f) + vec2<f32>(639f, -969f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-585f, -1137f) - vec2<f32>(2558f, 1072f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-321f, -115f) - vec2<f32>(1000f, 648f))))));
    let var_4 = Struct_2(i32(-1i) * -2698i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f - _wgslsmith_f_op_f32(sign(-175f))) * var_3.x)), vec3<u32>(~(~22571u), min(var_2.b, firstLeadingBit(~var_2.b)), _wgslsmith_add_u32(18297u, 0u) & var_2.b), 2841i);
}

