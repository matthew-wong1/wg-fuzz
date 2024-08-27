struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), -26674i, 40612i, 10191i, 1i, 66818i, 37766i, 20256i, 0i, -38674i, -41339i, 2147483647i, 0i, 0i, -23967i, -54439i, -1i, -1i, 63149i, 2147483647i, 1i, -66716i, 21730i, 58572i, 73206i, -44501i, i32(-2147483648), 1i, -14340i);

var<private> global1: vec4<f32> = vec4<f32>(1138f, -2118f, 610f, 1600f);

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, false), vec4<f32>(1000f, -681f, 1216f, 667f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1686f, -1361f, -395f, -857f)), Struct_1(vec2<bool>(false, false), vec4<f32>(127f, -1135f, -1686f, 422f)), Struct_1(vec2<bool>(true, false), vec4<f32>(613f, 1652f, 1052f, 142f)), Struct_1(vec2<bool>(false, false), vec4<f32>(600f, -814f, -560f, -1115f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-394f, -670f, -180f, -506f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-309f, 585f, -1091f, -1693f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-1873f, 116f, 201f, 2219f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1000f, -896f, -272f, -468f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-1016f, 655f, 1263f, -557f)), Struct_1(vec2<bool>(false, false), vec4<f32>(2203f, -650f, -926f, -1000f)), Struct_1(vec2<bool>(true, true), vec4<f32>(1091f, 616f, 1252f, -1000f)), Struct_1(vec2<bool>(true, true), vec4<f32>(1105f, 758f, -1757f, 1162f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-648f, -613f, -1733f, -1236f)), Struct_1(vec2<bool>(false, false), vec4<f32>(1606f, 283f, 2303f, -449f)), Struct_1(vec2<bool>(false, false), vec4<f32>(605f, 373f, 681f, -1174f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1000f, 482f, -1779f, -327f)), Struct_1(vec2<bool>(false, true), vec4<f32>(879f, -784f, -998f, -631f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-591f, 477f, -851f, -723f)), Struct_1(vec2<bool>(false, false), vec4<f32>(164f, -1049f, -475f, 111f)), Struct_1(vec2<bool>(false, false), vec4<f32>(1148f, 679f, -270f, 1000f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(52369u, 10u)];
    var_0 = select(global2[_wgslsmith_index_u32(1u, 10u)], vec2<bool>(var_0.x, any(select(vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x)))), all(!select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), false), !vec3<bool>(false, var_0.x, var_0.x), global1.x >= 275f)));
    var var_1 = 35284i;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(1047f + 406f), _wgslsmith_f_op_f32(f32(-1f) * -1208f))) * global1.wyz), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global1.yww, global1.zzy, var_0.x)))))), vec3<f32>(global1.x, global1.x, 1000f))), false));
    global0 = array<i32, 29>();
    return -278f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1018f, arg_2.x), arg_0.x, _wgslsmith_f_op_f32(func_3()))));
    let var_1 = global3[_wgslsmith_index_u32(4129u, 21u)];
    var var_2 = _wgslsmith_sub_i32(arg_1.x, abs(arg_1.x) | arg_1.x);
    global1 = _wgslsmith_f_op_vec4_f32(min(var_1.b, var_1.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f * var_1.b.x)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f + 744f) - _wgslsmith_f_op_f32(abs(var_0.x))))));
    return vec4<bool>(!var_1.a.x, true, select(!(!(0u > u_input.a.x)), !(!var_1.a.x) | (all(global2[_wgslsmith_index_u32(54745u, 10u)]) | any(vec3<bool>(var_1.a.x, false, var_1.a.x))), false), var_1.a.x);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = !(!(!func_2(_wgslsmith_f_op_vec3_f32(-global1.zwz), -vec3<i32>(1i, 1i, 1i), vec3<f32>(global1.x, 1775f, global1.x))));
    global2 = array<vec2<bool>, 10>();
    let var_1 = true;
    let var_2 = arg_0.b.xxz;
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-4727i, ~21218i), 2147483647i, -1i), vec3<i32>(select(_wgslsmith_clamp_i32(0i, 29050i, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), _wgslsmith_dot_vec2_i32(var_2.zy, u_input.b.wy), true), _wgslsmith_div_i32(firstLeadingBit(arg_0.b.x), 49614i), u_input.b.x)));
    return !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1569f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(floor(498f)), global1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_f_op_f32(-global1.x)))), u_input.b, all(vec3<bool>(true, any(vec4<bool>(false, true, true, false)) || func_1(Struct_2(vec4<f32>(global1.x, 1000f, global1.x, -103f), u_input.b, true, Struct_1(vec2<bool>(false, true), vec4<f32>(global1.x, -2089f, -1596f, -1000f)), Struct_1(vec2<bool>(false, true), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), !(global1.x != global1.x))), Struct_1(vec2<bool>(true, select(func_1(Struct_2(vec4<f32>(global1.x, 794f, global1.x, global1.x), vec4<i32>(-2147483647i, u_input.b.x, -6076i, global0[_wgslsmith_index_u32(4294967295u, 29u)]), false, global3[_wgslsmith_index_u32(24781u, 21u)], global3[_wgslsmith_index_u32(47000u, 21u)])), 0u > u_input.c.x, 449f < global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -637f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(905f, global1.x, global1.x, 288f) * vec4<f32>(-500f, -1337f, global1.x, -1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, global1.x, -371f, -704f)))), global3[_wgslsmith_index_u32(u_input.a.x, 21u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.wy + vec2<f32>(var_0.d.b.x, 1074f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.b.x, 2806f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.b.xz + var_0.e.b.zw) * _wgslsmith_f_op_vec2_f32(-var_0.e.b.wz)))));
    global2 = array<vec2<bool>, 10>();
    let var_2 = var_0.d.b.wyx;
    global2 = array<vec2<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, var_0.d.b, _wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 31184u), min(_wgslsmith_div_u32(4294967295u, u_input.c.x), u_input.a.x))), var_2.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(-911f, -1569f, var_0.e.a.x)), _wgslsmith_f_op_f32(732f + var_0.a.x))) + global1.xwy));
}

