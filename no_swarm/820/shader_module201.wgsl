struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(107057u, 37103u, 42286u, 4294967295u), vec4<u32>(55684u, 4294967295u, 23376u, 4294967295u), vec4<u32>(0u, 29646u, 114393u, 4294967295u), vec4<u32>(52141u, 80186u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 50284u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 90582u), vec4<u32>(65372u, 1u, 50895u, 4294967295u));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1185f, vec2<f32>(990f, 1000f), Struct_1(vec2<f32>(1303f, -550f), -321f, -1093f, true, vec3<u32>(29261u, 19391u, 1u)), vec4<u32>(36244u, 42874u, 12857u, 5034u), -1847i), Struct_2(-1996f, vec2<f32>(-135f, 341f), Struct_1(vec2<f32>(-390f, -362f), 897f, 156f, true, vec3<u32>(0u, 5808u, 4294967295u)), vec4<u32>(4294967295u, 1u, 56681u, 1u), i32(-2147483648)), Struct_2(219f, vec2<f32>(663f, -163f), Struct_1(vec2<f32>(-559f, -586f), -541f, -1304f, false, vec3<u32>(25450u, 0u, 1u)), vec4<u32>(58480u, 4294967295u, 4464u, 153u), 1i), Struct_2(724f, vec2<f32>(119f, -736f), Struct_1(vec2<f32>(1378f, 620f), -1000f, 1994f, false, vec3<u32>(4294967295u, 4294967295u, 26154u)), vec4<u32>(40586u, 4294967295u, 4294967295u, 17236u), 0i), Struct_2(-2617f, vec2<f32>(254f, -285f), Struct_1(vec2<f32>(289f, -554f), -2297f, -457f, true, vec3<u32>(37784u, 16647u, 42498u)), vec4<u32>(1u, 1u, 4294967295u, 27580u), -1i), Struct_2(-131f, vec2<f32>(-624f, 115f), Struct_1(vec2<f32>(173f, -473f), -238f, 940f, true, vec3<u32>(75884u, 4294967295u, 14484u)), vec4<u32>(47404u, 41443u, 18009u, 38851u), 1i), Struct_2(-1966f, vec2<f32>(-439f, 410f), Struct_1(vec2<f32>(907f, 805f), -838f, 2148f, true, vec3<u32>(1u, 1u, 26081u)), vec4<u32>(1u, 21855u, 4294967295u, 22392u), 1i));

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = vec3<bool>(true, false, any(vec2<bool>(global0.d, any(vec4<bool>(false, global0.d, false, false)) & global0.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1275f * global0.c))), -1000f)), _wgslsmith_f_op_f32(1111f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f + global0.a.x))), 168f));
    var var_2 = global0.d && any(var_0);
    var_2 = !((((u_input.a.x >> (1u % 32u)) & _wgslsmith_clamp_i32(-2147483647i, arg_0, 2147483647i)) < ~(arg_0 ^ u_input.e.x)) == all(!var_0));
    let var_3 = ~(-2147483647i);
    return vec3<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(global0.e, vec3<u32>(global0.e.x, global0.e.x, 41548u))), ~global0.e.x) <= 22416u, all(!(!select(vec4<bool>(false, var_0.x, global0.d, global0.d), vec4<bool>(global0.d, global0.d, true, global0.d), vec4<bool>(global0.d, var_0.x, false, true)))), true);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = !vec2<bool>(true, global0.d);
    let var_2 = arg_0 > 1006f;
    var_0 = global2[_wgslsmith_index_u32(abs(~(~firstLeadingBit(11556u))), 7u)];
    var_1 = select(vec2<bool>(all(func_3(firstLeadingBit(0i))), all(select(func_3(var_0.e).zz, !vec2<bool>(true, var_0.c.d), func_3(var_0.e).x))), func_3(var_0.e).yx, !vec2<bool>(true, var_2));
    return var_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1961f + _wgslsmith_f_op_f32(sign(-1185f))), arg_3.x);
    global2 = array<Struct_2, 7>();
    let var_1 = Struct_2(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x)), vec2<f32>(818f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1823f)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.b, -449f, arg_0.d)))))), min(vec4<u32>(firstTrailingBit(1u), 66366u, max(~arg_0.e.x, reverseBits(24423u)), firstLeadingBit(4294967295u ^ u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(25422u, 0u, ~16076u, global0.e.x & arg_0.e.x), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], vec4<u32>(12165u, arg_0.e.x, 4294967295u, u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(arg_0.e.x, arg_2, false), _wgslsmith_dot_vec2_u32(vec2<u32>(3535u, 69880u), global0.e.yy)), 7u)])), u_input.d.x);
    var var_2 = vec3<i32>(abs(abs(0i)), min(-2147483647i, 0i), ~_wgslsmith_clamp_i32(-1i, 11304i, var_1.e));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, arg_0.a.x, global0.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), -1014f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(659f * -1319f)))))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_vec3_i32(vec3<i32>(~0i, func_1(Struct_1(vec2<f32>(1883f, global0.c), 344f, 2080f, true, vec3<u32>(global0.e.x, u_input.b.x, global0.e.x)), global0.d, 1u, vec4<f32>(global0.a.x, -1000f, global0.c, 185f)), 634i), firstTrailingBit(max(vec3<i32>(-21637i, 27803i, -2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)))) & u_input.e.xxy) & -vec3<i32>(-u_input.e.x, ~1i, 2147483647i >> (~u_input.c % 32u));
    let var_1 = u_input.e.x;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f - global0.b)) + 1732f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f * -401f)))), _wgslsmith_f_op_f32(-global0.b), !(-470f == global0.b), abs(~countOneBits(vec3<u32>(u_input.c, u_input.b.x, u_input.c))));
    let var_2 = var_0.x;
    global1 = array<vec4<u32>, 7>();
    global0 = func_2(_wgslsmith_f_op_f32(floor(global0.b)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))));
    let var_3 = !select(vec2<bool>(any(select(vec4<bool>(global0.d, global0.d, global0.d, true), vec4<bool>(global0.d, true, global0.d, true), vec4<bool>(global0.d, false, false, global0.d))), (global0.e.x <= 0u) && global0.d), vec2<bool>(~1i == _wgslsmith_div_i32(var_0.x, 29228i), true && any(vec2<bool>(global0.d, false))), vec2<bool>(!(global0.a.x > global0.b), global0.d));
    var var_4 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(reverseBits(~16652u), _wgslsmith_add_u32(reverseBits(u_input.c), _wgslsmith_sub_u32(var_4.x, 4294967295u)))));
}

