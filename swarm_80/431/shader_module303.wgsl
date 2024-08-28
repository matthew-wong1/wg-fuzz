struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
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

var<private> global0: array<bool, 22>;

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1173u, 40328u, 4294967295u, 0u), vec4<u32>(49362u, 1u, 4294967295u, 17011u), vec4<u32>(86778u, 11212u, 13535u, 0u), vec4<u32>(16024u, 20276u, 56858u, 79087u), vec4<u32>(42211u, 10398u, 64281u, 15987u), vec4<u32>(4294967295u, 14071u, 1u, 0u), vec4<u32>(39315u, 4294967295u, 0u, 4294967295u), vec4<u32>(76386u, 4294967295u, 1u, 1143u), vec4<u32>(4294967295u, 34176u, 4294967295u, 31630u), vec4<u32>(0u, 1u, 26469u, 4294967295u), vec4<u32>(17341u, 1u, 59178u, 1u), vec4<u32>(4294967295u, 0u, 44984u, 47088u), vec4<u32>(22331u, 27015u, 46859u, 14821u), vec4<u32>(4294967295u, 64989u, 4294967295u, 5010u), vec4<u32>(536u, 0u, 68814u, 35482u), vec4<u32>(4294967295u, 28016u, 6371u, 4294967295u), vec4<u32>(4294967295u, 16339u, 4294967295u, 1u), vec4<u32>(0u, 0u, 32259u, 12986u), vec4<u32>(53222u, 56303u, 46327u, 8842u), vec4<u32>(64594u, 1u, 6688u, 4294967295u), vec4<u32>(1u, 0u, 1387u, 34876u), vec4<u32>(28403u, 4294967295u, 1u, 0u), vec4<u32>(18014u, 8787u, 0u, 45557u), vec4<u32>(0u, 4188u, 29848u, 0u), vec4<u32>(0u, 46308u, 70274u, 62086u), vec4<u32>(1u, 32884u, 0u, 47310u), vec4<u32>(1u, 64174u, 0u, 1u), vec4<u32>(1u, 486u, 4294967295u, 4294967295u), vec4<u32>(21506u, 14853u, 0u, 15016u), vec4<u32>(1u, 0u, 4294967295u, 10655u), vec4<u32>(1u, 1u, 31990u, 7077u), vec4<u32>(46982u, 70002u, 0u, 0u));

var<private> global2: vec3<i32> = vec3<i32>(-19283i, 1i, 5812i);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(i32(-2147483648), -21352i, 2147483647i), 1121f, 460f, 630f), Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), 497f, -1312f, -1099f), Struct_1(vec3<i32>(41466i, 0i, 0i), 1829f, -912f, 879f), Struct_1(vec3<i32>(i32(-2147483648), 0i, 8919i), -964f, -1618f, -172f), Struct_1(vec3<i32>(-9401i, 12705i, 6452i), -473f, 195f, 1160f), Struct_1(vec3<i32>(-4744i, 39593i, -36308i), -1345f, -913f, -162f), Struct_1(vec3<i32>(50970i, -46515i, -1i), -710f, 179f, 342f), Struct_1(vec3<i32>(29724i, 20220i, -1i), -1000f, 209f, -718f), Struct_1(vec3<i32>(4898i, -1i, 0i), -480f, -2256f, -423f), Struct_1(vec3<i32>(0i, -1i, -33502i), 765f, 1274f, -846f), Struct_1(vec3<i32>(8277i, 10865i, -1i), -1132f, -1063f, -826f), Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), -1446f, -1000f, -2398f), Struct_1(vec3<i32>(-36391i, -33632i, 0i), 526f, 833f, 1000f), Struct_1(vec3<i32>(0i, 19045i, -9640i), 124f, -938f, 1000f), Struct_1(vec3<i32>(3724i, -59062i, 17294i), -376f, 836f, 1040f), Struct_1(vec3<i32>(-37125i, 1i, -8492i), -1000f, -342f, -1352f), Struct_1(vec3<i32>(-1i, 19477i, -36103i), 164f, 1891f, 1520f), Struct_1(vec3<i32>(-16250i, 2147483647i, 2147483647i), 151f, 422f, -571f), Struct_1(vec3<i32>(2147483647i, 1i, 0i), 1554f, -251f, 1270f), Struct_1(vec3<i32>(0i, -6597i, 2147483647i), -1000f, 1000f, -2463f), Struct_1(vec3<i32>(62059i, -16881i, 2899i), -2073f, -745f, -1433f), Struct_1(vec3<i32>(0i, 20003i, 54074i), 718f, 1078f, -1000f), Struct_1(vec3<i32>(-1i, 1i, 32329i), 372f, -258f, 271f), Struct_1(vec3<i32>(2147483647i, 0i, -35423i), -419f, -768f, 793f), Struct_1(vec3<i32>(-30609i, -12088i, 61179i), 1000f, 268f, 567f), Struct_1(vec3<i32>(2147483647i, -1i, -10731i), -722f, 1320f, -334f), Struct_1(vec3<i32>(2147483647i, 1i, 0i), 1000f, -684f, -958f));

var<private> global4: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(10331u, 32u)], vec4<u32>(0u, u_input.b.x, u_input.b.x, 24375u), u_input.b) & abs(u_input.b), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(121449u, 18067u), 27u)];
    var var_2 = !select(!vec2<bool>(global0[_wgslsmith_index_u32(~5222u, 22u)], !global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec2<bool>(!(arg_0.x == var_1.a.x), false), !vec2<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 22u)])), any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 22u)], false))));
    global3 = array<Struct_1, 27>();
    var var_3 = select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 22u)], false))), vec2<bool>(true, true), vec2<bool>(global2.x > _wgslsmith_dot_vec2_i32(abs(global2.zz), _wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.a.x), var_1.a.zy)), true));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-566f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 1391f)))), _wgslsmith_f_op_f32(sign(876f)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.a, -517f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * 821f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1335f, _wgslsmith_f_op_f32(-arg_2.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f - -758f) + _wgslsmith_f_op_f32(step(-944f, arg_1.b)))), arg_2.d));
    var var_1 = ~(~0u);
    let var_2 = -countOneBits(_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a.x, 522i)));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(sign(-300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-163f - arg_1.b), select(true, global0[_wgslsmith_index_u32(1u, 22u)], false)))), _wgslsmith_f_op_f32(f32(-1f) * -412f)), vec4<f32>(arg_2.d, 1586f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1494f))), -436f));
    var var_4 = var_0;
    return 0u;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(-vec4<i32>(-24489i, global2.x, global2.x, 10971i))))))));
    let var_2 = global3[_wgslsmith_index_u32(23501u, 27u)];
    global1 = array<vec4<u32>, 32>();
    let var_3 = global3[_wgslsmith_index_u32(~4294967295u, 27u)];
    return true & !(80376u >= (u_input.b.x & func_3(19911u, global3[_wgslsmith_index_u32(u_input.b.x, 27u)], Struct_1(vec3<i32>(var_2.a.x, -13200i, -1i), 1485f, -1703f, 189f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-30767i, -2147483647i, ~u_input.a.x), ~_wgslsmith_sub_vec3_i32(u_input.a | vec3<i32>(-16687i, u_input.a.x, global2.x), vec3<i32>(global2.x, -2147483647i, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1287f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1395f, -1000f) + 1015f))), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<bool, 22>();
    var var_1 = select(vec4<bool>(-global2.x <= -10636i, (i32(-1i) * -global2.x) > u_input.a.x, true, false), !(!vec4<bool>(func_1(true), true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], false, false, false)), global0[_wgslsmith_index_u32(~41019u, 22u)])), all(!(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), global0[_wgslsmith_index_u32(u_input.b.x, 22u)]))));
    global0 = array<bool, 22>();
    var var_2 = var_0.d;
    var_0 = Struct_1(select(var_0.a, u_input.a, var_1.x), var_0.c, var_0.c, var_0.d);
    let var_3 = global0[_wgslsmith_index_u32(~(4294967295u & _wgslsmith_clamp_u32(firstLeadingBit(1702u), abs(u_input.b.x), _wgslsmith_div_u32(50269u, 4294967295u))) << (_wgslsmith_sub_u32(0u, select(~1u, ~(~u_input.b.x), true)) % 32u), 22u)];
    var var_4 = ~(~vec2<u32>(u_input.b.x << (~u_input.b.x % 32u), u_input.b.x));
    global2 = vec3<i32>(~(~(-(~var_0.a.x))), global2.x, reverseBits(-2147483647i) << (u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, -1343f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-224f, 846f), vec2<f32>(650f, var_0.b), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.b) - vec2<f32>(357f, var_0.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1929f, var_0.b), vec2<f32>(var_0.c, 1247f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, var_0.b))))));
}

