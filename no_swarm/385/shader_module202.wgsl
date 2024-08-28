struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(34160u, vec4<bool>(false, true, false, true)), vec3<bool>(true, false, true), vec2<i32>(2147483647i, 2147483647i), vec2<u32>(24563u, 1u)), Struct_3(Struct_1(13264u, vec4<bool>(false, false, true, false)), vec3<bool>(false, false, false), vec2<i32>(1i, -1i), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(0u, vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(0u, 76397u)), Struct_3(Struct_1(24537u, vec4<bool>(true, true, false, false)), vec3<bool>(true, false, true), vec2<i32>(-52528i, i32(-2147483648)), vec2<u32>(1u, 15777u)), Struct_3(Struct_1(0u, vec4<bool>(true, false, true, false)), vec3<bool>(true, false, true), vec2<i32>(-17932i, i32(-2147483648)), vec2<u32>(0u, 0u)), Struct_3(Struct_1(48691u, vec4<bool>(true, true, false, false)), vec3<bool>(true, true, true), vec2<i32>(62913i, 4379i), vec2<u32>(72324u, 12741u)), Struct_3(Struct_1(4294967295u, vec4<bool>(false, false, true, true)), vec3<bool>(false, false, false), vec2<i32>(-17558i, 25344i), vec2<u32>(114799u, 1u)), Struct_3(Struct_1(6070u, vec4<bool>(true, true, false, true)), vec3<bool>(false, false, true), vec2<i32>(1i, i32(-2147483648)), vec2<u32>(4294967295u, 60041u)), Struct_3(Struct_1(1u, vec4<bool>(false, false, true, false)), vec3<bool>(true, false, false), vec2<i32>(-6i, 30551i), vec2<u32>(1240u, 0u)), Struct_3(Struct_1(3479u, vec4<bool>(true, true, true, true)), vec3<bool>(false, false, true), vec2<i32>(21411i, -1i), vec2<u32>(49438u, 5817u)), Struct_3(Struct_1(0u, vec4<bool>(false, false, false, true)), vec3<bool>(true, false, true), vec2<i32>(-17363i, 0i), vec2<u32>(84264u, 1787u)), Struct_3(Struct_1(20733u, vec4<bool>(false, false, false, true)), vec3<bool>(false, true, false), vec2<i32>(-38781i, 1i), vec2<u32>(16577u, 0u)), Struct_3(Struct_1(75289u, vec4<bool>(true, false, false, false)), vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), 0i), vec2<u32>(0u, 0u)), Struct_3(Struct_1(0u, vec4<bool>(true, false, true, false)), vec3<bool>(false, true, true), vec2<i32>(-35089i, 63470i), vec2<u32>(4294967295u, 110462u)), Struct_3(Struct_1(106751u, vec4<bool>(false, false, true, true)), vec3<bool>(false, false, false), vec2<i32>(-1i, 21215i), vec2<u32>(0u, 27464u)), Struct_3(Struct_1(1u, vec4<bool>(false, false, false, false)), vec3<bool>(true, true, true), vec2<i32>(1i, 1i), vec2<u32>(123823u, 1u)), Struct_3(Struct_1(1u, vec4<bool>(true, false, false, true)), vec3<bool>(false, true, false), vec2<i32>(-1i, -35533i), vec2<u32>(12212u, 43873u)), Struct_3(Struct_1(4294967295u, vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), vec2<i32>(66638i, 1i), vec2<u32>(4294967295u, 22927u)), Struct_3(Struct_1(42146u, vec4<bool>(true, true, false, false)), vec3<bool>(true, true, true), vec2<i32>(20218i, i32(-2147483648)), vec2<u32>(0u, 83394u)), Struct_3(Struct_1(0u, vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), 13220i), vec2<u32>(10413u, 4294967295u)), Struct_3(Struct_1(24200u, vec4<bool>(false, true, true, false)), vec3<bool>(false, true, true), vec2<i32>(-1i, 0i), vec2<u32>(13942u, 14145u)), Struct_3(Struct_1(1u, vec4<bool>(false, false, false, false)), vec3<bool>(false, false, true), vec2<i32>(-16320i, 17563i), vec2<u32>(16299u, 1u)), Struct_3(Struct_1(4294967295u, vec4<bool>(true, true, true, false)), vec3<bool>(false, false, true), vec2<i32>(-6111i, 1i), vec2<u32>(53271u, 4294967295u)), Struct_3(Struct_1(24163u, vec4<bool>(true, false, true, true)), vec3<bool>(false, false, false), vec2<i32>(2147483647i, 2147483647i), vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(48101u, vec4<bool>(false, false, false, true)), vec3<bool>(true, false, true), vec2<i32>(-1i, -17882i), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(4294967295u, vec4<bool>(true, false, true, false)), vec3<bool>(true, true, false), vec2<i32>(0i, 0i), vec2<u32>(53451u, 31089u)), Struct_3(Struct_1(20862u, vec4<bool>(true, false, false, true)), vec3<bool>(false, false, false), vec2<i32>(-1i, 2147483647i), vec2<u32>(55945u, 0u)));

var<private> global3: array<f32, 30> = array<f32, 30>(-2115f, -501f, 2996f, 742f, -511f, 849f, 549f, 183f, 169f, -2375f, 675f, 1170f, -517f, -923f, 415f, 921f, -1000f, -725f, -767f, 1222f, -318f, 937f, -339f, -551f, -1822f, 189f, -1318f, 235f, -920f, -592f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = ~(_wgslsmith_add_i32(0i, arg_0.x) & max(firstLeadingBit(_wgslsmith_mod_i32(arg_0.x, -1i)), firstLeadingBit(abs(-1i))));
    let var_1 = reverseBits(~_wgslsmith_mod_u32(u_input.a.x, ~4294967295u));
    global0 = array<vec3<u32>, 29>();
    global3 = array<f32, 30>();
    let var_2 = vec2<bool>(false, true);
    return global1[_wgslsmith_index_u32(arg_3.x, 23u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_1 = func_2(firstTrailingBit(-vec2<i32>(22031i, u_input.c.x)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.a, arg_1.a), ~u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~arg_0.e.a, 30u)] + _wgslsmith_f_op_f32(-arg_0.a.x)), 1f, u_input.a & vec2<u32>(4294967295u, arg_1.a)).e;
    global1 = array<Struct_2, 23>();
    let var_2 = vec3<bool>(var_1.b.x, !(-2147483647i == firstLeadingBit(max(-24043i, arg_0.d.x))), !all(func_2(u_input.c.yx ^ arg_0.d.xw, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_1.a, 30u)], -870f)), -1000f, vec2<u32>(1u, 1u)).e.b));
    var var_3 = global0[_wgslsmith_index_u32(var_1.a, 29u)] & vec3<u32>(abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), vec2<u32>(var_1.a, 62919u) >> (vec2<u32>(arg_1.a, 1u) % vec2<u32>(32u)))), _wgslsmith_sub_u32(~var_1.a, ~arg_0.e.a << (29832u % 32u)), ~_wgslsmith_mult_u32(~arg_0.e.a, var_1.a));
    return vec4<u32>(110795u, ~20149u, 1u, 4294967295u);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> vec4<f32> {
    global3 = array<f32, 30>();
    let var_0 = false;
    let var_1 = arg_2.x;
    var var_2 = var_1;
    let var_3 = firstTrailingBit(func_3(func_2(abs(-u_input.e.zx), 163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 30u)], 815f, true))), vec2<u32>(arg_0.d.x, 19760u) & (vec2<u32>(arg_0.d.x, 55096u) ^ vec2<u32>(u_input.a.x, 28298u))), Struct_1(~_wgslsmith_mult_u32(arg_0.a.a, 4294967295u), arg_0.a.b)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(88449u, 30u)], global3[_wgslsmith_index_u32(6689u, 30u)], 1307f, -151f) * vec4<f32>(-837f, global3[_wgslsmith_index_u32(arg_0.a.a, 30u)], 1458f, global3[_wgslsmith_index_u32(u_input.a.x, 30u)])))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(65327u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], -930f, 338f))), vec4<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(u_input.d, 30u)], global3[_wgslsmith_index_u32(6781u, 30u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.d, 30u)], global3[_wgslsmith_index_u32(var_3.x, 30u)], global3[_wgslsmith_index_u32(arg_0.a.a, 30u)], global3[_wgslsmith_index_u32(var_3.x, 30u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2108f, global3[_wgslsmith_index_u32(0u, 30u)], 629f, -1120f))) * func_2(u_input.c.zy | vec2<i32>(-28124i, 24872i), global3[_wgslsmith_index_u32(var_3.x, 30u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(20818u, 30u)], -602f), countOneBits(u_input.a)).a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(36944u, 27u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(var_0.a, vec3<bool>(var_0.b.x, false, var_0.a.b.x), u_input.e.yx, u_input.a), -20158i, var_0.a.b.yx)))), vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.d.x, 30u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(31738u, 30u)] * 236f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(23075u, 30u)]), 497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) - 1114f))))));
    var var_2 = var_0.c.x;
    var var_3 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_4 = var_3.d.yyz;
    var_0 = Struct_3(Struct_1(var_0.d.x, !(!select(vec4<bool>(false, var_0.b.x, var_3.b, true), vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, var_3.c)))), !vec3<bool>(true, true, var_3.c), -firstLeadingBit(~firstTrailingBit(var_3.d.zx)), vec2<u32>(countOneBits(18861u), 76818u));
    var var_5 = var_0.a;
    var var_6 = _wgslsmith_f_op_vec4_f32(-var_1);
    let var_7 = global2[_wgslsmith_index_u32(4294967295u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_5.a));
}

