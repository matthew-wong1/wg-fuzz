struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 73192i;

var<private> global1: array<f32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    global0 = -1i;
    return Struct_2(1u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<f32, 11>();
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.yx, abs(arg_2.yy)), 11u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(48135u, 11u)], -767f), global1[_wgslsmith_index_u32(abs(1u), 11u)]))))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-293f, global1[_wgslsmith_index_u32(arg_2.x, 11u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(15200u, 11u)], 258f) * vec2<f32>(global1[_wgslsmith_index_u32(arg_1.a, 11u)], 315f))))), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_2.x, 11u)], 898f))), arg_1.a), ~(~firstTrailingBit(18416u ^ arg_2.x)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-391f - -528f), global1[_wgslsmith_index_u32(arg_2.x, 11u)]))), -reverseBits(u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, 1328f)), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.a, 11u)], 832f), vec2<f32>(2932f, -276f)), arg_0.xx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1503f, -1530f)))), ~u_input.a), -1i);
    var_0 = Struct_3(var_0.a, Struct_1(var_0.a, var_0.b.b, vec2<f32>(-924f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.c, 11u)], -574f)))), reverseBits(1u)), u_input.a, var_0.d, min(abs(min(10304i, ~17228i)), 1i));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-301f - global1[_wgslsmith_index_u32(arg_1.a, 11u)]))), vec2<f32>(_wgslsmith_div_f32(469f, 1f), 1566f))), var_0.b, _wgslsmith_sub_u32(~(_wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(4294967295u, u_input.b)) << (firstTrailingBit(0u) % 32u)), var_0.d.d), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.x, 694f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_2.x, 11u)], 2785f)))), i32(-1i) * -(~(-1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(966f, 784f))), _wgslsmith_f_op_vec2_f32(-var_0.d.a), !arg_0.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.a, 11u)], -130f))))), ~(~39927u)), var_0.b.b);
    global1 = array<f32, 11>();
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-431f - var_0.d.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 11u)]), _wgslsmith_div_f32(-928f, 541f))), var_0.a.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-13765i, u_input.c.x), u_input.c.x), -(~var_0.d.b)), var_0.e), var_0.d.a, 14939u & countOneBits(u_input.a));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = select(arg_2, !vec3<bool>(!arg_2.x, false | all(vec3<bool>(true, false, arg_2.x)), false), select(arg_2, arg_2, select(vec3<bool>(true, !arg_0, !arg_2.x), select(arg_2, arg_2, vec3<bool>(false, arg_2.x, arg_2.x)), arg_2.x)));
    var var_1 = u_input.b;
    global0 = 23486i;
    var var_2 = 62091u;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 1574f) + vec2<f32>(-1057f, global1[_wgslsmith_index_u32(arg_1, 11u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(130f, 124f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], 1315f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] + global1[_wgslsmith_index_u32(arg_1, 11u)]) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 11u)] * global1[_wgslsmith_index_u32(arg_1, 11u)])), 975f))), Struct_1(vec2<f32>(-213f, global1[_wgslsmith_index_u32(~(~0u), 11u)]), abs(u_input.c.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 11u)], 1744f), vec2<f32>(global1[_wgslsmith_index_u32(46687u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]), arg_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(540f - -1000f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(59374u, 11u)])))), u_input.b), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, firstTrailingBit(0u))), vec2<u32>(1u, 1u)), func_3(vec3<bool>(false, true, false), func_2(false, ~(vec2<u32>(arg_1, u_input.b) & vec2<u32>(4294967295u, u_input.b)), false, select(arg_2, select(vec3<bool>(true, false, true), arg_2, arg_0), arg_2)), ~(~abs(vec3<u32>(arg_1, 0u, arg_1)))), -2147483647i);
    return var_3.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 11u)] - _wgslsmith_f_op_f32(-432f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30801u, 11u)]))), global1[_wgslsmith_index_u32(51547u, 11u)]), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(select(false, true, true), 1u, select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec2_f32(-func_3(vec3<bool>(true, false, true), Struct_2(u_input.a), vec3<u32>(u_input.a, u_input.b, u_input.a)).c)), ~(-(u_input.c.x >> (1u % 32u))), func_3(vec3<bool>(true, true, true), func_2(false, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 50483u)), true, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), firstLeadingBit(vec3<u32>(u_input.b, 1u, u_input.b))).c, 8489u), 0u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 11u)]) * -128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))), ~max(u_input.c.x, 7391i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(30400u, 11u)]), vec2<f32>(global1[_wgslsmith_index_u32(17774u, 11u)], -258f))), vec2<f32>(1149f, -298f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], 1482f) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -1117f)))), _wgslsmith_clamp_u32(~(~u_input.a), countOneBits(~u_input.b), u_input.b)), min(0i, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.d.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(626f, var_0.d.a.x))) - _wgslsmith_f_op_vec2_f32(func_1(true, 4294967295u, vec3<bool>(true, true, true))))), 0u, var_0.e);
}

