struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    var var_0 = arg_0;
    var_0 = select(select(!vec4<bool>(!arg_0.x, all(arg_0.xzw), all(arg_0), true), !arg_0, !(!(!vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(39551u, 31u)], global0[_wgslsmith_index_u32(arg_1, 31u)])))), arg_0, !select(!select(arg_0, arg_0, var_0.x), arg_0, arg_0));
    let var_1 = Struct_1(all(arg_0.yx), _wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(arg_1), _wgslsmith_div_u32(arg_1, 128860u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 77370u), max(vec2<u32>(1u, arg_1), vec2<u32>(1u, arg_1))), arg_1), vec4<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(785f, 1174f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-326f)) - -329f), true, false), ~vec2<u32>(abs(arg_1), min(30266u, arg_1)));
    var var_2 = Struct_1(!(true & all(vec4<bool>(false, false, var_1.a, true))), abs(~25954u), vec4<bool>(true, true, !var_1.c.x, any(!var_0.xzz) || (0u <= ~arg_1)), countOneBits(var_1.d));
    var var_3 = var_1.d.x;
    return _wgslsmith_clamp_u32(4294967295u, ~var_1.b, _wgslsmith_add_u32(~(var_1.d.x | 15356u), ~(~_wgslsmith_mult_u32(var_2.b, var_2.b))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1((((u_input.a.x == 2147483647i) || true) && select(false, global0[_wgslsmith_index_u32(~0u, 31u)], true)) != true, 48434u, !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(16468u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, global0[_wgslsmith_index_u32(15546u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(24344u, 31u)], global0[_wgslsmith_index_u32(20622u, 31u)], global0[_wgslsmith_index_u32(7386u, 31u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false)), any(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(96098u, 0u), vec2<u32>(1u, 1u))), ~vec2<u32>(12232u, reverseBits(0u))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, -19021i));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1308f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(floor(arg_0))), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))))));
    global0 = array<bool, 31>();
    return ~(~vec2<u32>(var_0.d.x, ~func_3(vec4<bool>(true, false, global0[_wgslsmith_index_u32(19230u, 31u)], global0[_wgslsmith_index_u32(15469u, 31u)]), 77853u)));
}

fn func_1() -> vec2<f32> {
    let var_0 = 1211f;
    let var_1 = func_2(var_0);
    let var_2 = 2487f;
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(780f, -2049f))))), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true, false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), -134f), vec2<bool>(true, all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - 2507f) - _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(f32(-1f) * -781f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2076f, 366f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    global0 = array<bool, 31>();
    let var_2 = Struct_1(select(!(!global0[_wgslsmith_index_u32(107201u, 31u)]) | false, _wgslsmith_f_op_f32(f32(-1f) * -667f) <= _wgslsmith_f_op_f32(-559f - _wgslsmith_div_f32(var_1.x, 254f)), false), abs(reverseBits(0u)), !vec4<bool>(global0[_wgslsmith_index_u32(29361u, 31u)], false, true, !any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false, false))), vec2<u32>(_wgslsmith_mult_u32(~62570u, func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false, false), 0u)) | ~(~0u), 15995u));
    var var_3 = var_2;
    var var_4 = u_input.a.x & u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -786f), var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(func_1()))));
}

