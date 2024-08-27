struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(87992u, 0u, 19126u, 39366u, 4294967295u, 20557u, 0u, 4294967295u, 0u, 63581u, 28990u, 0u, 4294967295u, 37004u, 1953u, 0u, 6761u, 35544u, 17168u, 31279u, 0u, 45015u, 123204u);

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: u32 = 66205u;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -310f, _wgslsmith_f_op_f32(f32(-1f) * -865f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-474f, -1227f, -1285f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1826f, -1000f, -685f), vec3<f32>(-1000f, -729f, -1397f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1507f, -1693f)), -102f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1050f, 326f)))), select(select(select(vec3<bool>(global3.a, global1.a, true), vec3<bool>(true, global3.a, true), vec3<bool>(false, false, false)), !vec3<bool>(global1.a, global3.a, global3.a), true), select(select(vec3<bool>(global1.a, true, true), vec3<bool>(global1.a, false, global1.a), vec3<bool>(false, global1.a, false)), vec3<bool>(global3.a, global1.a, global3.a), true), !global1.a & false)))));
    var var_1 = Struct_1(true);
    global3 = Struct_1(global1.a);
    var var_2 = Struct_1(global3.a);
    let var_3 = Struct_1(var_2.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1838f - 1000f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 920f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-762f, arg_0.x, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(271f, -654f, -259f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    var var_1 = 231f;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(73639u, 4294967295u, 2315u), vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)]), vec3<u32>(1u, 0u, 8357u)))), _wgslsmith_div_vec3_u32(countOneBits(~countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]))), ~firstTrailingBit(vec3<u32>(0u, 0u, 6747u)))), 23u)];
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<i32>(u_input.b.x, 1i, u_input.b.x, -22251i))), _wgslsmith_f_op_f32(-354f + 481f)))), select(!vec4<bool>(false | global1.a, false, global1.a || global3.a, global1.a), vec4<bool>(!global3.a && global1.a, !(global1.a != true), any(select(vec4<bool>(true, global3.a, true, true), vec4<bool>(global3.a, global1.a, global3.a, global3.a), vec4<bool>(true, true, true, global3.a))), all(vec2<bool>(true, true))), vec4<bool>(false, select(global3.a, !global3.a, any(vec3<bool>(false, false, false))), false || any(vec3<bool>(true, global1.a, global3.a)), global3.a)));
    let var_1 = !(!(!vec2<bool>(global3.a | global1.a, false)));
    global0 = array<u32, 23>();
    global3 = Struct_1(true);
    let var_2 = true;
    return Struct_1(-328f != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1188f, 430f)) + _wgslsmith_div_f32(-1000f, -550f)), -324f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = func_2();
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = !select(var_0.a, true, true);
    var var_3 = !(!(!(!select(vec4<bool>(arg_2.a, var_2, false, false), vec4<bool>(true, true, false, global3.a), false))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, 938f, -122f, 322f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -869f), 283f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2401f)) * -216f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2476f, -607f, -1000f, 674f))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-184f))), 455f, 1591f)));
    var var_1 = arg_0;
    let var_2 = vec3<i32>(u_input.b.x, 25843i, 40730i);
    var var_3 = -vec2<i32>(-var_2.x, -u_input.b.x);
    var var_4 = select(select(!select(vec3<bool>(arg_0.a, false, global1.a), select(vec3<bool>(global3.a, false, true), vec3<bool>(arg_1.a, global3.a, false), vec3<bool>(true, arg_0.a, true)), vec3<bool>(true, false, var_1.a)), vec3<bool>(global3.a, var_1.a, false), func_2().a), vec3<bool>(!(var_2.x == max(var_3.x, var_3.x)), true, select(true, global1.a, false) & !(var_2.x >= -30424i)), all(select(!vec4<bool>(true, true, global3.a, global1.a), select(select(vec4<bool>(global1.a, arg_0.a, arg_0.a, false), vec4<bool>(global1.a, false, true, true), vec4<bool>(global3.a, true, true, false)), vec4<bool>(false, true, false, global1.a), select(vec4<bool>(var_1.a, global3.a, false, true), vec4<bool>(false, global3.a, arg_1.a, true), vec4<bool>(global1.a, var_1.a, false, true))), vec4<bool>(true, var_1.a, true, true))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(var_0.x * -403f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 810f) - -424f), var_0.x), vec4<f32>(-1807f, -288f, _wgslsmith_f_op_f32(f32(-1f) * -765f), -547f), var_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(-1370f, 592f, _wgslsmith_div_f32(505f, 160f), _wgslsmith_f_op_f32(-var_0.x)), global3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x & (select(49702i, u_input.b.x, global3.a) << (_wgslsmith_clamp_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50561u, 23u)], 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(9286u, 23u)], u_input.a, global0[_wgslsmith_index_u32(14092u, 23u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 23u)], 1u)) % 32u), global0[_wgslsmith_index_u32(min(26904u, firstLeadingBit(0u)), 23u)], 4294967295u) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(443f, 1991f), -148f, global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))), _wgslsmith_div_f32(-643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1309f + 1837f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(701f, 422f, 1217f, -326f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1802f, -1299f, 863f, 511f), vec4<f32>(424f, 1000f, -194f, -2109f), vec4<bool>(true, global3.a, global1.a, global1.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, 1000f, -1211f, -453f)), _wgslsmith_f_op_vec4_f32(func_5(Struct_1(global3.a), func_1(vec3<f32>(282f, 1000f, -713f), vec4<f32>(-572f, -173f, 568f, 233f), Struct_1(global1.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.xyz);
    let var_3 = Struct_1(!all(!select(vec2<bool>(false, true), vec2<bool>(true, false), global1.a)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(-485f, 347f), func_2().a))) > -247f);
    var var_5 = select(~vec4<u32>(abs(u_input.a), _wgslsmith_sub_u32(~26862u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 46013u)), _wgslsmith_add_u32(~4294967295u, u_input.a & global0[_wgslsmith_index_u32(0u, 23u)]), 4294967295u), ~vec4<u32>(~0u, 38433u, _wgslsmith_div_u32(u_input.a, ~u_input.a), ~35287u), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-249f);
}

