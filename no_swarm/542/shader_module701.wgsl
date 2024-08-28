struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1839f, true, 195f);

var<private> global1: array<bool, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = vec2<u32>(u_input.c, 35847u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a));
    var var_2 = Struct_1(-385f, true, _wgslsmith_f_op_f32(f32(-1f) * -293f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-753f, _wgslsmith_div_f32(624f, -861f))))), _wgslsmith_f_op_f32(496f - _wgslsmith_f_op_f32(round(var_1))))));
    let var_4 = select(!(!vec4<bool>(true, var_2.b, any(vec4<bool>(true, arg_2.b, true, true)), true)), select(select(vec4<bool>(false, var_2.b, global1[_wgslsmith_index_u32(var_0.x, 27u)] & var_2.b, global0.b), select(vec4<bool>(false, true, true, arg_2.b), !vec4<bool>(arg_1, false, global1[_wgslsmith_index_u32(u_input.c, 27u)], false), arg_1), select(select(vec4<bool>(var_2.b, arg_1, true, global0.b), vec4<bool>(false, false, true, global0.b), vec4<bool>(true, false, true, global0.b)), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], var_2.b, arg_1, arg_2.b), select(vec4<bool>(false, global0.b, global1[_wgslsmith_index_u32(u_input.c, 27u)], true), vec4<bool>(true, arg_1, false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.x, 27u)], global0.b)))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(72134u, 27u)], false, global1[_wgslsmith_index_u32(u_input.c, 27u)], arg_1), select(vec4<bool>(false, true, true, arg_2.b), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), global1[_wgslsmith_index_u32(118055u, 27u)]), !global1[_wgslsmith_index_u32(var_0.x, 27u)]), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], false, true, var_2.b), !vec4<bool>(arg_2.b, true, global0.b, true), true), vec4<bool>(true, !arg_2.b, !global1[_wgslsmith_index_u32(4294967295u, 27u)], all(vec4<bool>(arg_2.b, true, arg_2.b, true)))), false), !vec4<bool>(!(arg_1 || true), !arg_2.b && global1[_wgslsmith_index_u32(~u_input.a.x, 27u)], arg_2.b, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-652f + _wgslsmith_div_f32(var_1, global0.c)))), -1516f)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), false, _wgslsmith_f_op_f32(floor(global0.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-595f)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1141f + var_0.c) + _wgslsmith_f_op_f32(sign(global0.c))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c, var_0.c, global0.a), vec3<f32>(-159f, -3041f, var_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1247f, global0.c) + vec3<f32>(var_0.a, global0.a, 414f)), var_0.b)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(297f, -647f, global0.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, -598f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1114f, var_0.c) - vec3<f32>(-1437f, var_0.a, -109f))) + vec3<f32>(_wgslsmith_f_op_f32(-1462f - -1307f), 394f, 425f))));
    global0 = Struct_1(_wgslsmith_f_op_f32(func_3(vec2<f32>(-286f, 416f), false & any(!vec4<bool>(false, global0.b, global0.b, var_0.b)), Struct_1(var_0.a, var_0.b, var_0.c))), all(!(!vec3<bool>(true, global0.b, false))), 1145f);
    global0 = Struct_1(1325f, select(!(!(!global0.b)), !var_0.b, any(!vec4<bool>(global0.b, false, global0.b, global1[_wgslsmith_index_u32(arg_0.x, 27u)])) == any(select(vec4<bool>(true, global0.b, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.b), vec4<bool>(global1[_wgslsmith_index_u32(46380u, 27u)], var_0.b, false, true), vec4<bool>(global0.b, global1[_wgslsmith_index_u32(u_input.c, 27u)], false, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1019f, -392f)) + 337f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -629f)))) * var_0.a));
    return var_2.a;
}

fn func_1() -> f32 {
    var var_0 = select(reverseBits(~(~vec4<i32>(u_input.d, -2147483647i, u_input.b.x, -8837i)) >> (vec4<u32>(_wgslsmith_div_u32(63239u, u_input.c), u_input.c, 0u, ~u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(u_input.b.x, -2147483647i, ~u_input.d, abs(~u_input.b.x)), global0.b);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -586f);
    let var_2 = ~(vec4<i32>(var_0.x, var_0.x, ~u_input.b.x, ~var_0.x) & countOneBits(vec4<i32>(0i ^ u_input.e.x, -1i, i32(-1i) * -27075i, ~(-24948i))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_2(u_input.a << (u_input.a % vec3<u32>(32u)))), false, -1490f);
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + var_3.c))), 166f, !any(!vec2<bool>(true, global0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<bool, 27>();
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = select(select(!select(vec4<bool>(arg_0.b, true, false, true), !vec4<bool>(global1[_wgslsmith_index_u32(10479u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], arg_0.b, arg_0.b), !global1[_wgslsmith_index_u32(1u, 27u)]), !vec4<bool>(all(vec2<bool>(arg_0.b, false)), !global1[_wgslsmith_index_u32(u_input.a.x, 27u)], any(vec2<bool>(false, true)), true), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 27u)], false, false, arg_0.b)), vec4<bool>(arg_0.b, true, true, true), !(!vec4<bool>(arg_0.b, arg_0.b, global0.b, global0.b)))), !vec4<bool>(true, true, global0.b, true), select(select(select(select(vec4<bool>(global0.b, global1[_wgslsmith_index_u32(u_input.c, 27u)], true, global0.b), vec4<bool>(true, true, global1[_wgslsmith_index_u32(94194u, 27u)], false), true), vec4<bool>(true, global0.b, true, false), vec4<bool>(global1[_wgslsmith_index_u32(38836u, 27u)], false, true, true)), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.a.x != 33753u, true), select(!vec4<bool>(false, arg_0.b, global1[_wgslsmith_index_u32(22707u, 27u)], false), vec4<bool>(global1[_wgslsmith_index_u32(11543u, 27u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], arg_0.b, global1[_wgslsmith_index_u32(0u, 27u)], false))), select(vec4<bool>(false, all(vec4<bool>(true, true, arg_0.b, global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), arg_0.b, true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0.b, false, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b, true, true, global1[_wgslsmith_index_u32(u_input.c, 27u)]), vec4<bool>(false, false, global0.b, false))), vec4<bool>(arg_0.b & global1[_wgslsmith_index_u32(u_input.c, 27u)], !arg_0.b, !global1[_wgslsmith_index_u32(u_input.c, 27u)], global0.b)), vec4<bool>(!global1[_wgslsmith_index_u32(~u_input.c, 27u)], true, any(vec4<bool>(true, false, global0.b, arg_0.b)), global0.b)));
    var var_1 = select(u_input.d, u_input.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(abs(u_input.a.xz)), u_input.a.xy), vec2<u32>(1u, u_input.a.x)), 27u)]);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-377f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c, global0.a)))))), _wgslsmith_f_op_f32(max(-397f, 1467f)));
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(sign(-1278f))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1476f), true)), -2393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * global0.c) + _wgslsmith_f_op_f32(-var_0.x))) - vec4<f32>(global0.a, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1276f + -1209f)), _wgslsmith_f_op_f32(-1381f - _wgslsmith_f_op_f32(858f * var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1232f + global0.a)), -568f, -471f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), global0.a), _wgslsmith_f_op_f32(func_2(~u_input.a)))));
    global0 = Struct_1(var_1.x, false, var_0.x);
    global1 = array<bool, 27>();
    global0 = func_4(func_4(func_4(func_4(Struct_1(global0.a, true, global0.c), _wgslsmith_div_f32(-1152f, 302f)), _wgslsmith_f_op_f32(-752f + -1000f)), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f * -291f) + func_4(Struct_1(452f, global1[_wgslsmith_index_u32(u_input.c, 27u)], global0.c), var_0.x).a), _wgslsmith_f_op_f32(func_3(var_0, true, Struct_1(-154f, false, var_1.x))), (global0.c == 1000f) && !global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), 1u), var_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_1.x, var_1.x, -1335f), vec4<f32>(-1294f, 837f, -514f, -707f)))), vec4<f32>(-200f, -168f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f), -614f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)))));
}

