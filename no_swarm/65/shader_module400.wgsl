struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    global1 = array<vec2<i32>, 23>();
    global0 = all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), vec2<bool>(true, all(vec3<bool>(true, true, true)))));
    global0 = true || (false || !any(vec2<bool>(true, true)));
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    return (u_input.a.x | 16622u) ^ abs(17498u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<vec2<i32>, 23>();
    global0 = !(!(_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.a.x)) < _wgslsmith_add_u32(u_input.a.x, func_3())));
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    var var_0 = Struct_1(!select(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))));
    return Struct_1(!select(var_0.a, vec3<bool>(!var_0.a.x, true, select(true, false, var_0.a.x)), any(select(var_0.a, vec3<bool>(false, var_0.a.x, false), var_0.a))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = !(firstTrailingBit(44429u) < _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, 12193u, u_input.a.x)), 4294967295u));
    let var_2 = func_2(_wgslsmith_add_vec2_u32(u_input.a.xx, _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a.x)) | (u_input.a.xy | u_input.a.xy), ~(vec2<u32>(74393u, u_input.a.x) & vec2<u32>(4294967295u, 6847u)))), u_input.b.yz);
    let var_3 = any(vec4<bool>(true, true, var_2.a.x | any(func_2(vec2<u32>(0u, 4294967295u), vec2<i32>(-63808i, -2147483647i)).a), arg_1.a.x));
    return func_2(~(_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.yy) | (u_input.a.yz << (vec2<u32>(1u, 6652u) % vec2<u32>(32u)))), -(~_wgslsmith_mult_vec2_i32(vec2<i32>(36056i, -19797i), u_input.b.xz) | u_input.b.yx));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = 1i;
    global0 = true;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -208f, arg_0), vec3<f32>(_wgslsmith_f_op_f32(round(2393f)), -1809f, _wgslsmith_f_op_f32(arg_0 + -592f))) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(ceil(arg_0))))), func_2(_wgslsmith_div_vec2_u32(u_input.a.xx, ~(u_input.a.yx >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~(~(global1[_wgslsmith_index_u32(23744u, 23u)] | u_input.b.xz))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 826f, _wgslsmith_f_op_f32(1112f - -2043f))));
    let var_3 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 5516u, 1u, 6801u), ~vec4<u32>(u_input.a.x, func_3(), ~4265u, _wgslsmith_clamp_u32(1u, 14850u, u_input.a.x)), any(var_1.a)), ~abs(vec4<u32>(4294967295u, 46861u, ~u_input.a.x, u_input.a.x | 1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(766f * _wgslsmith_f_op_f32(f32(-1f) * -1343f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-491f + var_2.x))), -528f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1732f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 31025i;
    let var_1 = vec4<i32>(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-51840i), 0i, ~var_0, _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(var_0, -13751i))), vec4<i32>(1i, abs(u_input.b.x), -18269i, u_input.b.x)), abs(firstTrailingBit(0i)), select(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(var_0, u_input.b.x, var_0)), _wgslsmith_mod_i32(~(-1i), var_0), !all(vec3<bool>(false, false, false)))) & ~vec4<i32>(-(-2147483647i ^ var_0), -63791i, _wgslsmith_sub_i32(50813i, 0i), -2147483647i);
    global0 = true;
    var var_2 = !vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) != ~(1u >> (u_input.a.x % 32u)), !(!(-19242i != u_input.b.x)), true);
    var var_3 = !(!any(var_2.yz) && var_2.x);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-818f, _wgslsmith_div_f32(-250f, 1087f), true)) - 1f), -179f)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(251f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -726f)))) * _wgslsmith_f_op_f32(func_1(-840f)));
    global0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1376f)))), _wgslsmith_f_op_f32(245f * _wgslsmith_f_op_f32(round(1000f))), -470f));
}

