struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2147483647i, -1i, 1i, i32(-2147483648), 1i, 1i, 2147483647i, 2147483647i, 9048i, i32(-2147483648), 18624i, i32(-2147483648), 2147483647i);

var<private> global1: f32 = 1521f;

var<private> global2: array<bool, 32>;

var<private> global3: array<vec4<i32>, 25>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = 1u;
    var var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c.a)), _wgslsmith_div_vec3_f32(vec3<f32>(382f, 104f, -951f), arg_1.b.a)), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_1.b.a, var_1.c.a))))), !var_1.b.b, vec2<bool>(var_1.b.c.x, var_1.c.b.x), var_1.c.e, arg_1.b.d);
    var_1 = arg_1;
    let var_3 = var_1.c.e.b;
    return arg_0.b.a.x;
}

fn func_2() -> Struct_3 {
    global3 = array<vec4<i32>, 25>();
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(4294967295u, Struct_2(vec3<f32>(-706f, -173f, 483f), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true), Struct_1(vec3<i32>(1i, -19103i, -2147483647i), -980f, u_input.d.x, u_input.d.yz), Struct_1(vec3<i32>(2451i, global0[_wgslsmith_index_u32(6524u, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), 743f, 4294967295u, vec2<u32>(0u, u_input.d.x))), Struct_2(vec3<f32>(619f, -146f, -624f), vec2<bool>(true, true), vec2<bool>(true, global2[_wgslsmith_index_u32(10374u, 32u)]), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], -1i, u_input.b), 255f, 0u, vec2<u32>(50066u, 29728u)), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.e.x, u_input.c), 979f, 27027u, u_input.d.zz)), global0[_wgslsmith_index_u32(1u, 13u)], u_input.a.x), Struct_3(44766u, Struct_2(vec3<f32>(-259f, -595f, -2680f), vec2<bool>(global2[_wgslsmith_index_u32(58275u, 32u)], global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec2<bool>(true, true), Struct_1(vec3<i32>(u_input.c, u_input.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), -268f, u_input.d.x, u_input.d.xz), Struct_1(vec3<i32>(u_input.a.x, 0i, -7715i), -226f, 0u, vec2<u32>(u_input.d.x, 42156u))), Struct_2(vec3<f32>(1023f, 1563f, -453f), vec2<bool>(true, true), vec2<bool>(false, true), Struct_1(u_input.a, -985f, u_input.d.x, u_input.d.yy), Struct_1(u_input.a, 1000f, u_input.d.x, u_input.d.zz)), -2147483647i, -40124i), 23640u, u_input.d.x)))))), -1000f, true)), firstLeadingBit(~firstTrailingBit(u_input.d.x)), countOneBits(~(~vec2<u32>(0u, u_input.d.x))));
    let var_1 = vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1894f, 869f))));
    global3 = array<vec4<i32>, 25>();
    var var_2 = -((vec3<i32>(abs(-1i), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 13u)]), 0i) >> (u_input.d % vec3<u32>(32u))) << (firstLeadingBit(_wgslsmith_mod_vec3_u32(~u_input.d, u_input.d)) % vec3<u32>(32u)));
    return Struct_3(0u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 583f, -252f) + vec3<f32>(1000f, var_0.b, -468f)))), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 32u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c, 32u)])), vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], false), global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(22562u, 32u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 32u)], true), !vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(var_0.d.x, 32u)], true))), vec2<bool>(true, true), Struct_1(vec3<i32>(var_0.a.x, ~var_2.x, var_0.a.x), _wgslsmith_f_op_f32(var_0.b + -1713f), 16340u, u_input.d.zz), Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), 1u, vec2<u32>(var_0.c, var_0.c))), Struct_2(_wgslsmith_f_op_vec3_f32(var_1.xxx - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.xxy), _wgslsmith_f_op_vec3_f32(max(var_1.yzy, vec3<f32>(var_1.x, -1054f, var_0.b))), true))), !select(!vec2<bool>(global2[_wgslsmith_index_u32(275u, 32u)], global2[_wgslsmith_index_u32(12897u, 32u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 32u)], global2[_wgslsmith_index_u32(1u, 32u)])), global2[_wgslsmith_index_u32(4955u, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.d.x, 32u)], _wgslsmith_f_op_f32(-537f - var_1.x) < -1257f), Struct_1(~vec3<i32>(var_2.x, u_input.a.x, -28283i), _wgslsmith_f_op_f32(-849f + _wgslsmith_f_op_f32(-var_1.x)), ~37572u, min(~vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(4598u, 20247u))), Struct_1(vec3<i32>(1i, select(global0[_wgslsmith_index_u32(var_0.d.x, 13u)], var_0.a.x, global2[_wgslsmith_index_u32(4294967295u, 32u)]), var_2.x >> (22989u % 32u)), var_0.b, _wgslsmith_div_u32(var_0.d.x, u_input.d.x), var_0.d)), 0i, -39759i);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global1 = -2799f;
    let var_0 = -392f;
    global0 = array<i32, 13>();
    let var_1 = func_2();
    let var_2 = true;
    return var_1.c.d;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_1.d.x, u_input.d.x), vec4<u32>(u_input.d.x, arg_0, 0u, 17812u)) | ~vec4<u32>(arg_1.c, 1u, u_input.d.x, arg_0)), ~vec4<u32>(abs(1u), arg_1.d.x, ~arg_1.d.x, _wgslsmith_dot_vec2_u32(arg_1.d, vec2<u32>(arg_1.c, 32399u)))), 32u)], !func_2().b.c.x | global2[_wgslsmith_index_u32(select(abs(~arg_0), 4294967295u, !any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false))), 32u)]);
    let var_1 = _wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 13u)]);
    var var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(abs(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], u_input.e.x), -vec2<i32>(19122i, -1i)))), -vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(arg_0, 25u)], global3[_wgslsmith_index_u32(arg_0, 25u)]), vec4<i32>(0i, -9616i, 0i, arg_1.a.x)), var_1));
    var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -602f, -1348f) - vec3<f32>(arg_1.b, arg_1.b, -1000f))).a.x, _wgslsmith_mod_i32(-2147483647i, var_1 & 0i), -abs(1i)), arg_1.a ^ min(~u_input.a, ~u_input.a)), 45450i);
    var_2 = vec2<i32>(-1i, ~(i32(-1i) * -(~var_2.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    let var_0 = func_4(u_input.d.x, func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(425f, -265f, 1328f) - vec3<f32>(776f, 949f, -556f))), vec3<f32>(1f, 1f, 1f))));
    let var_1 = _wgslsmith_f_op_f32(2172f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)));
    let var_2 = func_2();
    global2 = array<bool, 32>();
    global1 = -1341f;
    var var_3 = Struct_2(var_2.b.a, func_2().b.c, !(!vec2<bool>(var_2.b.d.b >= -1125f, global2[_wgslsmith_index_u32(var_2.b.e.d.x, 32u)] && false)), var_0, var_2.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.d.c, ~(var_0.d.x & ~var_0.d.x)), _wgslsmith_mod_vec4_u32(~(~max(vec4<u32>(0u, var_0.c, 20211u, var_2.a), vec4<u32>(var_0.d.x, var_0.c, 1u, 30573u))), min(~vec4<u32>(0u, 4294967295u, u_input.d.x, 5104u), vec4<u32>(var_0.c, 0u, 4294967295u, var_0.c)) << ((~vec4<u32>(70821u, var_3.d.d.x, u_input.d.x, var_3.e.d.x) | (vec4<u32>(3322u, 27131u, var_3.e.c, 42562u) ^ vec4<u32>(var_2.b.d.d.x, var_2.c.d.c, u_input.d.x, 6444u))) % vec4<u32>(32u))), var_3.d.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(204f, var_1)), _wgslsmith_div_f32(var_3.e.b, var_0.b), var_3.d.b, var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(1167f - _wgslsmith_f_op_f32(var_2.c.a.x + -900f)), _wgslsmith_f_op_f32(-559f + -1000f), var_2.c.d.b, var_3.e.b)), _wgslsmith_div_vec3_i32(func_2().b.d.a, var_3.d.a));
}

