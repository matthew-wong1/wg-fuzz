struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(326f, 955f), Struct_1(-445f, 688f), Struct_1(-445f, 1756f), Struct_1(-132f, -1391f), Struct_1(-849f, 372f), Struct_1(-633f, -284f), Struct_1(-799f, -869f), Struct_1(-1808f, 725f), Struct_1(-1000f, -551f), Struct_1(417f, 921f), Struct_1(-1943f, -971f), Struct_1(-1465f, -232f));

var<private> global3: i32 = -34175i;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(min(global0[_wgslsmith_index_u32(u_input.a, 10u)], countOneBits(0u)), ~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 21945u))), 10u)] ^ max(~(~select(442u, 12256u, true)), ~(~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], 10u)]))), 12u)];
    global2 = array<Struct_1, 12>();
    global4 = array<Struct_1, 17>();
    global0 = array<u32, 10>();
    let var_1 = !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    return global4[_wgslsmith_index_u32(u_input.a, 17u)];
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = !select(!select(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), false), select(vec4<bool>(false, arg_0, true, false), select(!vec4<bool>(false, true, arg_0, false), select(vec4<bool>(false, false, arg_0, true), vec4<bool>(false, arg_0, arg_0, false), true), true), _wgslsmith_sub_u32(0u, u_input.a) != 0u), vec4<bool>(arg_0, arg_0, 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 52754u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], 10u)]), vec3<u32>(85456u, 5724u, global0[_wgslsmith_index_u32(1u, 10u)])), firstLeadingBit(global0[_wgslsmith_index_u32(68875u, 10u)]) <= (global0[_wgslsmith_index_u32(u_input.b, 10u)] << (u_input.d.x % 32u))));
    global2 = array<Struct_1, 12>();
    let var_1 = ~vec2<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 12666u, 4294967295u, 11185u), vec4<u32>(u_input.b, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])))), 10u)], ~global0[_wgslsmith_index_u32(30164u, 10u)]);
    let var_2 = Struct_1(-912f, _wgslsmith_div_f32(603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-607f, -696f))) * 1464f)));
    var var_3 = ~59354u;
    return -4906i;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<u32, 10>();
    let var_0 = func_2(global1.ww);
    let var_1 = vec4<i32>(abs(-10442i), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(u_input.c, ~(~0i))), 42097i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, global1.x, 10849i), vec4<i32>(u_input.c, u_input.c, 2147483647i, 0i)), abs(0i)), 1i), global1.xyw));
    global1 = vec4<i32>(abs(countOneBits(~var_1.x) | u_input.c), u_input.c, func_3(false), u_input.c & 23421i);
    var var_2 = 2147483647i;
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = all(vec3<bool>(!(!arg_0.x), !(any(arg_0) | (arg_0.x | false)), false));
    var var_1 = true;
    var_1 = any(select(vec2<bool>(arg_0.x || arg_0.x, true), select(!vec2<bool>(arg_0.x, arg_0.x), !arg_0.yx, select(true, var_0, any(arg_0))), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(443f, 267f)), func_2(vec2<i32>(1i, -66472i)).a, -408f, -850f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2427f, -472f, 1222f, 286f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1155f, -262f, -909f, -1290f)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + _wgslsmith_f_op_f32(step(var_2.x, var_2.x))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-118f * 933f))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-func_2(vec2<i32>(-2147483647i, -1i)).a), 778f)));
    return Struct_1(var_2.x, 503f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.wz;
    let var_1 = func_4(vec4<bool>(true, func_1(any(vec4<bool>(true, false, false, false)), Struct_1(2376f, 1000f), var_0.x < u_input.c) || (u_input.d.x != _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 10u)], 1u)), any(vec2<bool>(func_1(false, global4[_wgslsmith_index_u32(u_input.d.x, 17u)], false), false)), !func_1(true, Struct_1(1099f, -847f), select(false, false, false))), 78446u);
    global3 = global1.x | global1.x;
    var var_2 = u_input.d.xx ^ firstTrailingBit(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, 890u)), 0u));
    var var_3 = select(~vec2<u32>(27029u, global0[_wgslsmith_index_u32(~(4294967295u & u_input.d.x), 10u)]), ~u_input.d.zy, !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_3 = ~(~(~vec2<u32>(max(8833u, var_3.x), _wgslsmith_sub_u32(4294967295u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(57798u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(608f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(trunc(348f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.b)), false)), u_input.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, var_1.b))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), var_1.a)))), abs(u_input.c));
}

