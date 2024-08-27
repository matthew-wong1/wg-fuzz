struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<u32> {
    global2 = Struct_1(select(vec2<bool>((global1.x != -640f) != global0.a.x, !global2.a.x), select(!select(global0.a, vec2<bool>(true, true), global0.a.x), select(vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(true, true), true), global2.a.x), global0.a));
    let var_0 = Struct_1(global2.a);
    global0 = Struct_1(select(!select(vec2<bool>(global0.a.x, global0.a.x), var_0.a, any(vec3<bool>(var_0.a.x, global2.a.x, global0.a.x))), select(select(vec2<bool>(true, true), select(vec2<bool>(global2.a.x, false), vec2<bool>(false, global0.a.x), vec2<bool>(var_0.a.x, false)), select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, false), global2.a)), !select(global0.a, vec2<bool>(global2.a.x, var_0.a.x), var_0.a.x), !global0.a.x), !global2.a.x));
    global3 = array<vec4<u32>, 28>();
    var var_1 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 9662u), _wgslsmith_div_vec2_u32(arg_1, vec2<u32>(1u, 92305u)))), 0u);
    return global3[_wgslsmith_index_u32(1u, 28u)];
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    global2 = arg_1;
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_vec4_u32(func_3(global1.x, vec2<u32>(1u, arg_3)), vec4<u32>(reverseBits(15694u), _wgslsmith_clamp_u32(arg_3, 19174u, arg_3), arg_3 >> (arg_3 % 32u), arg_3)) ^ select(global3[_wgslsmith_index_u32(0u, 28u)], vec4<u32>(~arg_3, ~arg_3, _wgslsmith_add_u32(arg_3, _wgslsmith_dot_vec4_u32(vec4<u32>(27274u, 10478u, arg_3, arg_3), global3[_wgslsmith_index_u32(58059u, 28u)])), ~_wgslsmith_clamp_u32(0u, 4294967295u, 16770u)), !vec4<bool>(var_0.a.x, true, true, global2.a.x));
    global2 = arg_1;
    var var_2 = Struct_1(select(var_0.a, !arg_1.a, var_0.a));
    return 105830u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_u32(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.xzx - global1.xzx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, global1.x, global1.x))), Struct_1(vec2<bool>(global2.a.x, arg_0.a.x)), 32161i, 40666u), _wgslsmith_mod_u32(1u, countOneBits(1u)));
    var var_1 = arg_0;
    let var_2 = any(!vec4<bool>(global2.a.x, !(1077f == global1.x), var_1.a.x, all(!vec3<bool>(global2.a.x, false, true))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - global1.x), -1515f))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec2<bool>(global2.a.x, global0.a.x)));
    global2 = Struct_1(select(select(var_0.a, func_1(func_1(Struct_1(var_0.a))).a, func_1(Struct_1(vec2<bool>(false, true))).a), vec2<bool>(_wgslsmith_f_op_f32(floor(-461f)) > _wgslsmith_f_op_f32(select(global1.x, -1159f, global0.a.x)), any(vec4<bool>(true, true, true, true))), (firstLeadingBit(4294967295u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(5757u, 23870u)) % 32u)) > _wgslsmith_sub_u32(func_2(vec3<f32>(-139f, global1.x, 307f), Struct_1(vec2<bool>(global2.a.x, global2.a.x)), u_input.a.x, 10933u), 15320u)));
    var var_1 = func_1(func_1(Struct_1(global0.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_div_f32(global1.x, 1748f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -477f, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 958f, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1448f, global1.x)))), vec4<f32>(2228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(647f, -1208f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.x)), 974f), global2.a.x));
    var var_3 = abs(func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(861f)), _wgslsmith_f_op_f32(-739f * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), global1.x), func_1(func_1(func_1(Struct_1(vec2<bool>(global0.a.x, global2.a.x))))), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.a.x, -41956i), u_input.b), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, countOneBits(96189u)), 1u)));
    var var_4 = func_1(Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), global0.a.x), var_0.a, vec2<bool>(var_0.a.x, all(vec3<bool>(global2.a.x, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-855f)) - 1202f) + _wgslsmith_f_op_f32(min(907f, _wgslsmith_f_op_f32(f32(-1f) * -897f)))), vec2<u32>(1u, _wgslsmith_sub_u32(~1u, select(1u, 1u, global2.a.x)))).zy, ~abs(-(i32(-1i) * -2147483647i)), firstLeadingBit(~vec4<u32>(func_3(var_2.x, vec2<u32>(37370u, 1u)).x, firstLeadingBit(4294967295u), 4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u))));
}

