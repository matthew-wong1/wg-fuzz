struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<f32>(190f, -1115f), -2169f), Struct_1(vec2<f32>(-741f, -1000f), 465f), Struct_1(vec2<f32>(154f, 1892f), -870f), Struct_1(vec2<f32>(265f, -1051f), 1000f), Struct_1(vec2<f32>(-1000f, -831f), 533f), Struct_1(vec2<f32>(243f, 982f), -643f), Struct_1(vec2<f32>(-350f, -702f), -489f), Struct_1(vec2<f32>(243f, 1000f), -442f), Struct_1(vec2<f32>(-3195f, -518f), -1054f), Struct_1(vec2<f32>(1252f, -1043f), -263f), Struct_1(vec2<f32>(-996f, 1056f), 1091f), Struct_1(vec2<f32>(-326f, 728f), 118f), Struct_1(vec2<f32>(-494f, -1747f), -1158f), Struct_1(vec2<f32>(-482f, -1653f), 1032f), Struct_1(vec2<f32>(-1000f, 1000f), 1735f), Struct_1(vec2<f32>(-105f, -663f), -437f), Struct_1(vec2<f32>(569f, 1000f), -2139f), Struct_1(vec2<f32>(980f, -590f), -1345f), Struct_1(vec2<f32>(-1616f, 1687f), -2036f), Struct_1(vec2<f32>(-336f, 177f), 1451f), Struct_1(vec2<f32>(-684f, -1262f), 110f), Struct_1(vec2<f32>(-1000f, 816f), -982f), Struct_1(vec2<f32>(577f, -1780f), 1569f), Struct_1(vec2<f32>(-441f, 1048f), 1082f), Struct_1(vec2<f32>(596f, 870f), 788f), Struct_1(vec2<f32>(1000f, -455f), -681f), Struct_1(vec2<f32>(-103f, 1224f), 1000f), Struct_1(vec2<f32>(-1352f, -890f), -502f), Struct_1(vec2<f32>(-306f, -990f), 1527f), Struct_1(vec2<f32>(1230f, 1000f), -318f), Struct_1(vec2<f32>(-1000f, -250f), 1033f), Struct_1(vec2<f32>(212f, -423f), -1017f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 22>;

var<private> global4: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, i32(-2147483648), 69060i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(0i, 1i, 0i), vec3<i32>(11195i, 2147483647i, -1i), vec3<i32>(24512i, -33900i, 4569i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = !((-_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(89834u, 5u)], vec3<i32>(-52906i, 2147483647i, -26196i)) & -_wgslsmith_mod_i32(39782i, 11688i)) < _wgslsmith_mult_i32(-(~0i), _wgslsmith_sub_i32(-2728i, 1i)));
    let var_1 = true;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(922f - -449f) * _wgslsmith_div_f32(-1479f, -348f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(587f, 653f))))), _wgslsmith_f_op_f32(-475f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1953f, 789f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(441f, 656f)))), -496f)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(_wgslsmith_f_op_f32(-160f - -431f), -172f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(723f, var_2.b) - vec2<f32>(242f, var_2.a.x)))), true)), -1000f);
    global2 = array<Struct_1, 11>();
    return var_1;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(291f, -423f) * vec2<f32>(-454f, -430f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(870f, -349f) + vec2<f32>(-580f, 1335f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(-595f * 1613f))))), _wgslsmith_div_f32(-2456f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(496f, -1035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1477f)))))));
    let var_1 = global1.yw;
    var var_2 = global3[_wgslsmith_index_u32(46598u, 22u)];
    var var_3 = select(!select(vec3<bool>(arg_1, !global1.x, true), vec3<bool>(true, false, !global1.x), false), vec3<bool>(arg_0, var_0.b > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1889f, 686f, true))), true), true);
    return global3[_wgslsmith_index_u32(u_input.a.x, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~(~0u ^ u_input.a.x)));
    var var_1 = func_2((true || global1.x) != (u_input.a.x > _wgslsmith_dot_vec2_u32(~u_input.a.zy, countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)))), 177f < _wgslsmith_f_op_f32(select(677f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -1124f, false)))), all(global1.xw) && (u_input.a.x > 1594u))));
    let var_2 = global3[_wgslsmith_index_u32(~4294967295u, 22u)];
    global4 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-47004i), 4294967295u, firstLeadingBit(~(~vec4<u32>(1u, 57337u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 48314u, 0u) % vec4<u32>(32u)))));
}

