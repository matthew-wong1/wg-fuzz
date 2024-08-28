struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(171f, 19292i);

var<private> global1: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    global1 = global0.a;
    global1 = -754f;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), -4957i);
    global0 = var_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + var_0.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(51749i, 2147483647i | _wgslsmith_div_i32(var_0.b, u_input.b.x)), _wgslsmith_clamp_i32(arg_0.x, -1i, reverseBits(abs(-1083i)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global1 = global0.a;
    let var_0 = _wgslsmith_f_op_f32(func_3(~u_input.b.wx, select(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), true)), !(!(global0.b > u_input.b.x)), true && all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))));
    let var_1 = Struct_1(var_0, 0i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)))), 0i);
    global1 = var_1.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1255f)) + -2200f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_2(true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(214f - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a, arg_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 933f, global0.a) * vec3<f32>(global0.a, 332f, global0.a))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), -658f, global0.a))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1257f, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -378f))) <= _wgslsmith_f_op_f32(round(global0.a)))), _wgslsmith_dot_vec3_i32(reverseBits(min(vec3<i32>(1i, global0.b, u_input.b.x), vec3<i32>(global0.b, 40622i, u_input.b.x))) | _wgslsmith_mod_vec3_i32(~u_input.b.yww, -u_input.b.xwz), vec3<i32>(_wgslsmith_mod_i32(global0.b, _wgslsmith_clamp_i32(-30528i, -21565i, 2147483647i)), _wgslsmith_mod_i32(i32(-1i) * -1961i, -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(global0.b, -35314i)), _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zy)))));
    var var_3 = ~vec4<u32>(~_wgslsmith_sub_u32(u_input.a, u_input.a), 1u, u_input.a, ~u_input.a);
    let var_4 = Struct_2(!any(vec3<bool>(select(false, false, true), !var_0.a, true)));
    return StorageBuffer(~max(firstTrailingBit(select(1u, 79413u, var_0.a)), _wgslsmith_div_u32(~4294967295u, firstLeadingBit(arg_1))), vec4<u32>(arg_1, ~((124168u >> (arg_1 % 32u)) & _wgslsmith_mult_u32(4294967295u, 0u)), ~abs(_wgslsmith_div_u32(1u, u_input.a)), 0u), vec2<i32>(4817i, _wgslsmith_mod_i32(u_input.b.x << (1u % 32u), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(true, 0u, vec4<bool>(true, true, false, !all(vec3<bool>(true, true, false))));
}

