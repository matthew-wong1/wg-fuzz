struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = !(_wgslsmith_f_op_f32(trunc(599f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f + -354f) * -440f))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(834f, -135f)), -708f, -474f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, -1000f, 593f)), vec3<f32>(-198f, -1394f, 254f), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), 1f, _wgslsmith_f_op_f32(select(647f, -580f, true))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(397f, 1000f)))), _wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_1 = Struct_2(Struct_1(vec4<bool>(true, true, !any(vec2<bool>(false, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(437f, 2223f, var_0.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, -1765f))))), u_input.c < arg_0, select((var_0.x >= 231f) || true, any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)))), Struct_1(select(vec4<bool>(arg_1 == arg_1, true, all(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, all(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -585f)))), true && (arg_2.x >= -u_input.e.x), true), true);
    var var_2 = ~27807i;
    global0 = var_1.a.d;
    return !var_1.b.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = arg_2.d;
    global0 = select(!all(select(arg_1.b.a, func_3(arg_3, 1i, vec4<i32>(-24016i, 2147483647i, -11159i, 2147483647i)), !arg_1.b.a)), true, !select(!arg_1.a.a.x, arg_1.b.c, false));
    return 15819u;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> bool {
    var var_0 = arg_3;
    var var_1 = arg_1 & all(!vec2<bool>(var_0.x <= 4294967295u, 13841u > var_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2324f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) - _wgslsmith_f_op_f32(524f * arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(505f * arg_0), _wgslsmith_f_op_f32(max(1073f, -1167f)), _wgslsmith_f_op_f32(arg_0 * -723f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(sign(arg_0)), any(vec3<bool>(true, true, false)))))), -1000f));
    var_1 = false;
    var var_3 = ~(~u_input.b);
    return !(false || (false || (var_3.x == 4294967295u))) | false;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> StorageBuffer {
    global0 = func_4(-516f, u_input.c > 5381u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(func_2(vec4<f32>(-1307f, 1025f, -196f, -1015f), Struct_2(Struct_1(vec4<bool>(true, false, false, arg_0), vec3<f32>(-687f, 1210f, 804f), arg_0, arg_0), Struct_1(vec4<bool>(arg_0, false, true, true), vec3<f32>(2168f, -1362f, -501f), arg_0, true), true), Struct_1(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec3<f32>(-817f, -1716f, -1196f), true, true), 67890u), u_input.b.x), ~vec2<u32>(arg_1.x, 0u)), u_input.b.xz), reverseBits(_wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 39167u), vec2<u32>(22128u, arg_1.x), vec2<bool>(arg_0, arg_0)) ^ ~u_input.b.zz, min(~vec2<u32>(1u, 57042u), vec2<u32>(0u, 1u)))));
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, false, any(vec2<bool>(true, arg_0)), true), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(827f)))), 337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f + -471f))), select(true, arg_1.x < 1u, any(vec3<bool>(false, arg_0, arg_0))) && (u_input.e.x <= abs(u_input.e.x)), true), Struct_1(!func_3(arg_1.x & 16625u, _wgslsmith_clamp_i32(-2147483647i, u_input.e.x, u_input.a), ~u_input.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-469f, 1000f), -726f, -923f))), arg_0, true), arg_0);
    var var_1 = var_0.b;
    global0 = arg_0 & any(var_0.a.a.xwy);
    return StorageBuffer(abs(-(7457i & ~u_input.e.x)), _wgslsmith_f_op_f32(floor(301f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let x = u_input.a;
    s_output = func_1(true, vec3<u32>(_wgslsmith_clamp_u32(~countOneBits(0u), ~u_input.b.x, 0u), firstTrailingBit(~_wgslsmith_div_u32(u_input.c, 22314u)), _wgslsmith_clamp_u32(26566u, u_input.b.x, ~_wgslsmith_sub_u32(u_input.c, 14603u))));
}

