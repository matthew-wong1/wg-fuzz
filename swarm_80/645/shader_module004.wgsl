struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-1000f, vec3<bool>(false, false, false)), Struct_1(744f, vec3<bool>(true, true, true)), Struct_1(306f, vec3<bool>(false, false, false)));

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 28>;

var<private> global3: u32 = 0u;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    global1 = vec4<u32>(global1.x, 1u, 0u, 1u);
    var var_0 = vec3<u32>(~(~_wgslsmith_sub_u32(28499u, u_input.b.x)), ~select(u_input.b.x | 53895u, 64805u, true || (arg_3.x || arg_3.x)), abs(max(1u, u_input.b.x | ~arg_0.x)));
    let var_1 = 2147483647i;
    let var_2 = false;
    global4 = vec2<u32>(4294967295u, (4881u | _wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(28904u, arg_0.x))) | 41102u);
    return _wgslsmith_f_op_f32(-967f - -1309f);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_mod_i32(0i, 2147483647i);
    var var_1 = -u_input.d.yzy;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(-2439f, 201f, true)), -575f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f - 541f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(224f, 1000f), _wgslsmith_f_op_f32(696f + -470f), -1144f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2958f, -1794f, 1031f) - vec3<f32>(-1660f, -313f, 1342f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, -526f, 1535f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -616f, -2169f) + vec3<f32>(-660f, -1461f, -1000f)))))), select(any(vec2<bool>(false, true)), any(vec2<bool>(false, true)) & false, any(vec4<bool>(true, true, true, true))) | all(vec2<bool>(true, true))));
    let var_3 = global1.x;
    var var_4 = ~var_1.xz;
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<f32>) -> vec4<bool> {
    global3 = global4.x;
    let var_0 = vec2<f32>(1567f, arg_3.x);
    global3 = global1.x;
    var var_1 = func_3(1u);
    global1 = ~(~vec4<u32>(u_input.b.x, 4294967295u, ~(~global4.x), global1.x));
    return vec4<bool>(arg_2, arg_1.x, false, select(all(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, arg_2, arg_2), arg_1.x)), true, arg_1.x));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-528f, -1000f))))))), !vec3<bool>(all(vec2<bool>(false, false)), true, false));
    var var_1 = global0[_wgslsmith_index_u32(21370u, 3u)];
    global2 = array<i32, 28>();
    let var_2 = !func_4(u_input.e, vec2<bool>(func_3(1u), true), !var_0.b.x & var_0.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, _wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(max(var_0.a, 1843f)), -486f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(153f, var_1.a, 463f, -183f), vec4<f32>(1249f, var_1.a, var_0.a, var_0.a), select(vec4<bool>(var_0.b.x, true, false, true), vec4<bool>(var_1.b.x, var_1.b.x, true, true), var_0.b.x)))));
    global1 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~select(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 122873u), 1u, true), global4.x, ~6426u), vec4<u32>(~global4.x, ~global4.x, 30083u, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, global1.x), _wgslsmith_div_u32(global4.x, 0u))) ^ ~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(global4.x, 7258u, u_input.b.x, 9983u), vec4<u32>(4294967295u, 0u, 1u, global4.x)), ~vec4<u32>(global4.x, global4.x, 0u, 1311u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, global1.x, global1.x), vec4<u32>(global1.x, 4294967295u, 23979u, global4.x))));
    return _wgslsmith_f_op_f32(min(-821f, 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = ~u_input.d;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_u32(global1.yyx, global1.xzw), _wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, -1020f, -1367f) * vec3<f32>(1246f, 670f, 616f)), -15723i, vec3<bool>(true, false, true))))), select(vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), false));
    var var_3 = var_2.b;
    var var_4 = u_input.b.x;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * 659f) + var_2.a);
    var var_6 = Struct_1(var_2.a, func_4(u_input.e, vec2<bool>(false, var_3.x), false & var_2.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_2.a + var_5), _wgslsmith_f_op_f32(var_2.a * 1586f), _wgslsmith_f_op_f32(f32(-1f) * -865f), -1983f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a, 647f, 134f, -1000f), vec4<f32>(934f, var_5, -973f, -243f))) + vec4<f32>(var_5, 730f, -1605f, var_2.a)), true))).wwy);
    var var_7 = max(~global2[_wgslsmith_index_u32(54221u, 28u)], -countOneBits(u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-209f)) * _wgslsmith_f_op_f32(exp2(var_5))))) * var_6.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-2044f * var_6.a), _wgslsmith_div_f32(var_5, var_2.a)))), vec3<f32>(1000f, var_6.a, -145f)));
}

