struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 21> = array<bool, 21>(false, true, true, false, false, false, true, false, false, true, true, false, true, false, false, false, false, true, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    var var_0 = vec3<f32>(-623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-169f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-374f)) * _wgslsmith_f_op_f32(floor(1747f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1497f + -2273f), _wgslsmith_f_op_f32(abs(1393f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(544f)), -1930f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)) + _wgslsmith_f_op_f32(f32(-1f) * -639f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 324f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) + var_0.zz)))), 1i, ~(abs(u_input.c.zx) << (vec2<u32>(0u, 39891u) % vec2<u32>(32u))));
    let var_2 = u_input.c;
    global0 = true;
    global1 = array<bool, 21>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, 143f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(abs(860f)), _wgslsmith_f_op_f32(2232f + -1689f), 702f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, var_1.a.x, var_0.x, var_1.a.x))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    global0 = true;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_1.xx)), i32(-1i) * -_wgslsmith_sub_i32(~0i, ~(-2147483647i)), vec2<u32>(min(~1u, u_input.c.x), 1u));
    global0 = all(arg_0);
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    return Struct_2(~u_input.c, all(vec4<bool>(!all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(56772u, 21u)], true, false)), 631f <= _wgslsmith_f_op_f32(sign(arg_1.x)), false, true && !arg_0.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(~((vec4<u32>(u_input.a.x, arg_1.a.x, u_input.a.x, arg_1.a.x) >> (vec4<u32>(13055u, 0u, u_input.c.x, 1u) % vec4<u32>(32u))) | abs(vec4<u32>(20801u, 12358u, 1u, arg_1.a.x))), true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + 2565f)))), _wgslsmith_f_op_f32(f32(-1f) * -1605f));
    var var_2 = !(!(!select(!vec4<bool>(true, var_0.b, arg_1.b, arg_1.b), select(vec4<bool>(true, true, var_0.b, true), vec4<bool>(true, true, arg_1.b, true), arg_1.b), !vec4<bool>(global1[_wgslsmith_index_u32(61343u, 21u)], false, global1[_wgslsmith_index_u32(var_0.a.x, 21u)], arg_1.b))));
    var_0 = arg_1;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()).zx, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-59374i, arg_0.x), arg_0.zy, vec2<bool>(true, arg_1.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_0.zx, arg_0.xx)), arg_0.x), arg_0.yx), vec2<u32>(var_0.a.x, max(~4294967295u, 44432u)));
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * -578f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.a.x))), _wgslsmith_f_op_f32(abs(-334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 211f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(584f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_0.a.x))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), -1015f, _wgslsmith_f_op_f32(max(1340f, 916f)));
    var var_2 = vec2<u32>(u_input.b, firstTrailingBit(31450u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-496f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(vec3<i32>(arg_1.b, arg_1.b, var_0.b), func_2(vec3<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], false), vec3<f32>(390f, -898f, -718f))))))) - 1036f);
    return var_0.c.x <= 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global1 = array<bool, 21>();
    let var_0 = Struct_2(vec4<u32>(u_input.a.x, 1u, 16921u, ~1u), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-827f, 812f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, 350f)), ~0i, vec2<u32>(0u, u_input.a.x)), vec2<bool>(select(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], true, true), any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], false, false)))) && global1[_wgslsmith_index_u32(func_2(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b, 21u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], true, global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)])), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(-1177f * 1397f))).a.x, 21u)]);
    global1 = array<bool, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(159f, 266f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1212f, 1133f), vec2<f32>(-133f, 230f), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.a.x, 21u)])))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-286f)), _wgslsmith_f_op_f32(func_4(vec3<i32>(50497i, 0i, -55920i), var_0))))), -2147483647i, ~(~(vec2<u32>(var_0.a.x, 3158u) >> (firstLeadingBit(u_input.c.zw) % vec2<u32>(32u)))));
    var var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

