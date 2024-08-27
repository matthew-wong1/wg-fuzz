struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(2557u, 4294967295u), vec2<u32>(1896u, 1u), vec2<u32>(9643u, 1u), vec2<u32>(38609u, 34933u), vec2<u32>(39353u, 4294967295u), vec2<u32>(0u, 41083u), vec2<u32>(1u, 0u), vec2<u32>(1u, 68425u), vec2<u32>(0u, 43980u), vec2<u32>(24060u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(15483u, 51900u), vec2<u32>(58579u, 140878u), vec2<u32>(1u, 63672u), vec2<u32>(0u, 0u));

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: array<vec4<u32>, 19>;

var<private> global3: array<u32, 12>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~37247u, 12u)], 12u)], ~min(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2909u, 12u)], 12u)], 12u)], 12u)]), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)]));
    global4 = array<f32, 24>();
    global1 = array<vec2<bool>, 28>();
    global4 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_f32(-419f * arg_2.x);
    return countOneBits(~0u);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 24u)] + 1748f)))), global3[_wgslsmith_index_u32(reverseBits(func_3(select(true, false, any(vec3<bool>(false, false, false))), -233f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43453u, 12u)], 24u)], 636f) + vec2<f32>(global4[_wgslsmith_index_u32(71382u, 24u)], 922f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1016f, global4[_wgslsmith_index_u32(4294967295u, 24u)])))), Struct_1(vec2<bool>(true, true), select(vec4<i32>(-38569i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 1i), true)))), 12u)], global1[_wgslsmith_index_u32(abs(0u), 28u)]);
    global3 = array<u32, 12>();
    var var_1 = _wgslsmith_add_vec3_i32(u_input.b, -(_wgslsmith_mult_vec3_i32(-vec3<i32>(19515i, -1i, u_input.b.x), u_input.b | u_input.b) ^ _wgslsmith_add_vec3_i32(u_input.b, u_input.b)));
    global3 = array<u32, 12>();
    let var_2 = var_0;
    return Struct_4(vec4<bool>(global3[_wgslsmith_index_u32(~(~15969u), 12u)] <= 26821u, false, all(select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(true, var_2.c.x, false), vec3<bool>(true, false, true))) && all(vec4<bool>(true, var_2.c.x, false, var_0.c.x)), any(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(var_0.b, 12u)], 28u)], var_2.c))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(arg_3.a.zw, vec4<i32>(reverseBits(3920i), -arg_0, i32(-1i) * -2147483647i, ~u_input.a.x) | vec4<i32>(firstTrailingBit(u_input.b.x), -7694i, reverseBits(-1i), countOneBits(-1i))), Struct_2(vec2<f32>(arg_1, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2, ~global3[_wgslsmith_index_u32(4294967295u, 12u)]), 24u)]), ~arg_2, func_2().a.xw));
    var var_1 = !select(arg_3.a.zzw, vec3<bool>(true, !(arg_2 >= global3[_wgslsmith_index_u32(arg_2, 12u)]), 31225u <= ~arg_2), select(vec3<bool>(any(var_0.a.a), all(vec4<bool>(var_0.b.c.x, arg_3.a.x, arg_3.a.x, arg_3.a.x)), true), select(arg_3.a.xzx, vec3<bool>(arg_3.a.x, arg_3.a.x, var_0.b.c.x), !arg_3.a.wzx), any(vec4<bool>(var_0.a.a.x, false, true, arg_3.a.x))));
    global1 = array<vec2<bool>, 28>();
    var var_2 = 22066u;
    let var_3 = 2147483647i;
    return var_0.a.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global3 = array<u32, 12>();
    global4 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 24u)])), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(85791u, 12u)], 24u)], _wgslsmith_f_op_f32(floor(157f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(952f * global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8629u, 12u)], 24u)]) - _wgslsmith_f_op_f32(min(-1485f, 897f))), arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 24u)], -331f, global4[_wgslsmith_index_u32(4294967295u, 24u)], -788f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a.x, arg_1.a.x, global4[_wgslsmith_index_u32(0u, 24u)], -1391f)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 24u)], 1661f, 1461f, 756f) + vec4<f32>(arg_1.a.x, -693f, global4[_wgslsmith_index_u32(arg_1.b, 24u)], global4[_wgslsmith_index_u32(7424u, 24u)])))))));
    global2 = array<vec4<u32>, 19>();
    return Struct_1(!select(vec2<bool>(true, !var_0), !vec2<bool>(false, arg_1.c.x), arg_1.c), func_4(22595i, var_1.x, ~7754u, func_2()));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<bool> {
    global3 = array<u32, 12>();
    var var_0 = any(vec3<bool>(!(arg_1.a.x == false), false, true)) && arg_1.a.x;
    global3 = array<u32, 12>();
    let var_1 = Struct_3(func_1(true, Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1290f, -1943f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, global4[_wgslsmith_index_u32(1u, 24u)])))), 0u, vec2<bool>(!arg_1.a.x, arg_1.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 24u)], -1109f)))), min(40265u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(30372u, arg_0.x, global3[_wgslsmith_index_u32(60906u, 12u)])) % 32u), _wgslsmith_dot_vec2_u32(select(global0[_wgslsmith_index_u32(arg_0.x, 17u)], arg_0, arg_1.a.x), ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 12u)], 81352u))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 28u)]));
    var var_2 = 14925u << (abs(var_1.b.b) % 32u);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(global1[_wgslsmith_index_u32(17440u ^ max(88179u, global3[_wgslsmith_index_u32(63558u, 12u)]), 28u)], !global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)] | 1u, 28u)], func_5(min(min(global0[_wgslsmith_index_u32(42118u, 17u)], global0[_wgslsmith_index_u32(29256u, 17u)]), vec2<u32>(5882u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)]) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 7621u) % vec2<u32>(32u))), func_1(true, Struct_2(vec2<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15470u, 12u)], 24u)], -1718f), 1u, vec2<bool>(false, false))), ~vec2<i32>(u_input.b.x, u_input.b.x)));
    var var_1 = func_2();
    global0 = array<vec2<u32>, 17>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1222f, 549f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, global4[_wgslsmith_index_u32(22207u, 24u)])))));
    var_1 = Struct_4(vec4<bool>(any(vec3<bool>(all(var_1.a), -919f < global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33365u, 12u)], 12u)], 12u)], 24u)], var_0.x)), !var_0.x, var_0.x, select(!var_0.x, true, !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

