struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 15995u, 0u);

var<private> global1: array<u32, 3>;

var<private> global2: array<u32, 6> = array<u32, 6>(33516u, 6511u, 4438u, 0u, 1u, 0u);

var<private> global3: array<vec4<i32>, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0.b.x));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_i32(arg_0.a, 1i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - var_1.b.x)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(var_1.b.x, -1000f)))) * _wgslsmith_f_op_f32(f32(-1f) * -2373f)) + arg_0.b.x);
    return max(vec3<u32>(1u, 51843u, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 3u)], global0.x, global1[_wgslsmith_index_u32(19479u, 3u)]), u_input.b)), 6u)]), ~(~u_input.b));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(func_2(arg_2, vec2<i32>(arg_2.a, 1i), ~vec3<u32>(16676u, global2[_wgslsmith_index_u32(0u, 6u)], 22943u), arg_0), abs(~vec3<u32>(69964u, 1u, global2[_wgslsmith_index_u32(0u, 6u)]))), 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_mult_vec3_u32(func_2(arg_2, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(3544i, arg_1.x), vec2<i32>(u_input.c.x, u_input.a), vec2<i32>(1i, arg_2.a)) ^ arg_1.xx), _wgslsmith_div_vec3_u32(u_input.b, reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], 3u)], global1[_wgslsmith_index_u32(global0.x, 3u)], 4294967295u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, global0.x), vec3<u32>(56578u, global0.x, 1u), vec3<u32>(16991u, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 1u)) % vec3<u32>(32u))), all(arg_3)), vec3<u32>(1u, 1u, u_input.b.x));
    global2 = array<u32, 6>();
    var var_0 = reverseBits(global3[_wgslsmith_index_u32(global0.x, 28u)]);
    var var_1 = vec2<u32>(global0.x, u_input.b.x);
    var var_2 = Struct_1(-31199i, arg_2.b);
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec3<f32>(1088f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.x))))), 378f);
    var var_1 = all(!select(vec2<bool>(false, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), arg_2.b.x <= _wgslsmith_div_f32(var_0.x, arg_2.b.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_3.b, _wgslsmith_f_op_vec3_f32(-arg_2.b))));
    global2 = array<u32, 6>();
    var_1 = select(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) | (true && all(vec4<bool>(true, true, true, true))), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, (global1[_wgslsmith_index_u32(6122u, 3u)] & arg_1.x) == ~12336u, false | (arg_1.x < 1u))));
    return -1650f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1381f, 129f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1628f)))), _wgslsmith_f_op_f32(f32(-1f) * -490f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-760f, -1429f, -184f)))), vec3<f32>(_wgslsmith_f_op_f32(step(-710f, 916f)), _wgslsmith_f_op_f32(abs(526f)), _wgslsmith_f_op_f32(650f * -535f))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(~u_input.c.x ^ max(12703i, u_input.a), ~u_input.b.xy, func_3(select(false, true, false), global3[_wgslsmith_index_u32(func_1(false, Struct_1(u_input.a, vec3<f32>(-1182f, -1000f, -414f)), Struct_1(-8872i, vec3<f32>(3024f, -631f, -476f))), 28u)], Struct_1(u_input.a, vec3<f32>(424f, -3512f, -2571f)), vec3<bool>(false, false, true)), func_3(all(vec3<bool>(true, false, true)), -vec4<i32>(-11265i, u_input.a, u_input.a, u_input.c.x), Struct_1(u_input.c.x, vec3<f32>(240f, 963f, -930f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)))), _wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_f_op_f32(f32(-1f) * -522f)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)))));
    global2 = array<u32, 6>();
    let var_1 = _wgslsmith_div_vec3_f32(func_3(all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, countOneBits(u_input.a))), Struct_1(1i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-539f, var_0.x, 1114f)))))), vec3<bool>(true, select(true, true, 15187i == u_input.a), true)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-950f - 693f))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(261f * -515f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-1313f * 748f)))));
    let var_2 = u_input.c.zz;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * -1000f) * _wgslsmith_f_op_f32(var_0.x * var_0.x)), -656f)), -2434f));
    let var_4 = Struct_1(u_input.a, vec3<f32>(-346f, 1440f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_4.a, 1i, ~(-1i), ~_wgslsmith_div_i32(u_input.a, 1i)));
}

