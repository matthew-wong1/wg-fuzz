struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, 15668i, 9869i, 22200i, 0i, 16332i, -16006i, -1i, -23594i, 2147483647i, 9331i, 1i, -1i, 7417i, 18597i, -51491i, 53745i, -20518i, -54150i, -15010i, -19495i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    return _wgslsmith_dot_vec2_u32(min(vec2<u32>(firstLeadingBit(select(arg_0, 1u, arg_1.x)), _wgslsmith_mod_u32(arg_0, 0u)), ~select(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(1u, 29061u)), arg_1.xz)), (vec2<u32>(u_input.a, min(0u, 4294967295u)) & _wgslsmith_add_vec2_u32(select(vec2<u32>(arg_0, u_input.a), vec2<u32>(arg_0, 0u), arg_1.yx), vec2<u32>(4294967295u, arg_0) & vec2<u32>(arg_0, u_input.a))) ^ _wgslsmith_add_vec2_u32(max(~vec2<u32>(21807u, 36380u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_0, 18582u))), vec2<u32>(0u, arg_0)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> bool {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 817u), true), ~select(vec2<u32>(23037u, 32750u), _wgslsmith_add_vec2_u32(vec2<u32>(11279u, 54733u), vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true)), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<i32>(global0[_wgslsmith_index_u32(func_3(u_input.a, vec3<bool>(true, true, true)), 21u)], global0[_wgslsmith_index_u32(u_input.a << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 34085u, u_input.a, u_input.a), vec4<u32>(u_input.a, 64050u, u_input.a, 28740u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 22740u)) % 32u), 21u)]), vec4<i32>(0i, 0i, 34211i, 0i), vec2<f32>(arg_1, arg_0.x));
    var var_1 = vec3<u32>(4294967295u, ~1u, var_0.a.x);
    let var_2 = _wgslsmith_mod_vec2_u32(min(var_0.a, vec2<u32>(var_1.x, 4294967295u)), ~firstTrailingBit(vec2<u32>(78599u, u_input.a) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.x), vec2<u32>(u_input.a, var_0.a.x))));
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global0 = array<i32, 21>();
    var var_0 = Struct_2(!vec3<bool>(all(!vec3<bool>(arg_0.b, arg_2.b, false)), select(-1000f <= arg_2.a, false, arg_0.b), !(!arg_2.b)), arg_3);
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_mod_vec2_u32(abs(var_0.b.a), ~var_0.b.a), vec2<i32>(~0i, -1i), min(vec4<i32>(var_0.b.c.x, ~var_0.b.b.x, var_0.b.b.x, var_0.b.c.x), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -4528i, 2147483647i, 2147483647i), var_0.b.c))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-368f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) - _wgslsmith_f_op_f32(-arg_0.a)))));
    global0 = array<i32, 21>();
    var var_1 = ~reverseBits((var_0.b.a >> (arg_3.a % vec2<u32>(32u))) << (vec2<u32>(abs(u_input.a), 76419u & arg_3.a.x) % vec2<u32>(32u)));
    return arg_2.b;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(-1248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2410f) + -346f))));
    let var_1 = vec4<bool>(select(true, any(vec3<bool>(false, true, false)), func_4(Struct_3(_wgslsmith_div_f32(var_0.x, -1101f), func_2(vec3<f32>(-1290f, var_0.x, var_0.x), -1098f)), vec2<bool>(select(true, true, false), true), Struct_3(_wgslsmith_f_op_f32(-var_0.x), all(vec2<bool>(false, true))), Struct_1(vec2<u32>(6893u, u_input.a) << (vec2<u32>(u_input.a, 47940u) % vec2<u32>(32u)), -vec2<i32>(-53445i, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], -5066i), vec2<f32>(-239f, var_0.x)))), true, func_4(Struct_3(_wgslsmith_f_op_f32(floor(-1180f)), 0i == firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 21u)])), vec2<bool>(!(var_0.x >= var_0.x), all(vec3<bool>(true, true, true))), Struct_3(var_0.x, true), Struct_1(select(vec2<u32>(u_input.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(62769u, u_input.a), vec2<u32>(u_input.a, 119961u)), vec2<bool>(true, true)), -select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 21u)], 15057i), true), vec4<i32>(12856i, _wgslsmith_dot_vec3_i32(vec3<i32>(19957i, global0[_wgslsmith_index_u32(1043u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 0i, 37079i)), ~70599i, -23525i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(max(-1592f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(511f)) - _wgslsmith_f_op_f32(-var_0.x)))) >= 449f);
    var var_2 = Struct_3(1000f, any(var_1.xzz) && var_1.x);
    var var_3 = Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 6429u, u_input.a, u_input.a)) << (select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 0u), var_2.b) % vec4<u32>(32u)), vec4<u32>(45757u, u_input.a, u_input.a, u_input.a))), firstTrailingBit(vec2<i32>(16815i, ~min(1i, global0[_wgslsmith_index_u32(9467u, 21u)]))), _wgslsmith_sub_vec4_i32(max(-_wgslsmith_sub_vec4_i32(vec4<i32>(-26299i, global0[_wgslsmith_index_u32(69263u, 21u)], -1i, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -40638i, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])), vec4<i32>(-1i) * -vec4<i32>(32815i, global0[_wgslsmith_index_u32(24310u, 21u)], -11179i, -1i)), -vec4<i32>(~5556i, global0[_wgslsmith_index_u32(0u, 21u)] & 2147483647i, ~global0[_wgslsmith_index_u32(65451u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 6160u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 21u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(158f, -1839f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1068f, var_2.a) + var_0)) - var_0) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_2.a) + var_0)))));
    global0 = array<i32, 21>();
    return Struct_1(~(~(vec2<u32>(u_input.a, 72494u) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 17906u), vec2<u32>(8934u, 1u)))), vec2<i32>(var_3.c.x, ~(_wgslsmith_sub_i32(-55988i, var_3.b.x) ^ _wgslsmith_sub_i32(var_3.c.x, 11546i))), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(98636i, -2147483647i), countOneBits(var_3.c.wz)), -(var_3.c.x & -10997i), -var_3.c.x ^ select(var_3.b.x, -61275i, false), var_3.b.x) << ((~countOneBits(vec4<u32>(var_3.a.x, u_input.a, 72741u, 23186u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(53553u, 127108u, u_input.a, var_3.a.x), ~vec4<u32>(u_input.a, 4294967295u, 27506u, u_input.a))) % vec4<u32>(32u)), vec2<f32>(-1875f, _wgslsmith_div_f32(1642f, _wgslsmith_f_op_f32(max(-1000f, 2316f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec3<bool>(all(vec3<bool>(false, false, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true), func_1());
    global0 = array<i32, 21>();
    var var_1 = all(select(!var_0.a, select(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a, var_0.a.x), all(vec4<bool>(true, false, var_0.a.x, true))));
    var_1 = var_0.a.x;
    let var_2 = ~0u;
    var var_3 = Struct_2(!(!(!var_0.a)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(17363u, 21u)], 2147483647i), vec3<i32>(0i, global0[_wgslsmith_index_u32(16320u, 21u)], 56889i)), vec3<i32>(1i, var_0.b.c.x, global0[_wgslsmith_index_u32(1u, 21u)]) << (vec3<u32>(85861u, 88209u, var_0.b.a.x) % vec3<u32>(32u)))), 1908f, vec3<i32>(countOneBits(var_0.b.c.x), i32(-1i) * -14973i, select(0i, max(-2147483647i, countOneBits(var_3.b.c.x)), true)), _wgslsmith_add_vec2_u32(vec2<u32>(18336u, var_2) ^ ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(abs(24789u), 10327u)) << (_wgslsmith_sub_vec2_u32(~(var_3.b.a & vec2<u32>(73232u, 3429u)), ~var_3.b.a) % vec2<u32>(32u)), var_0.b.c.wz);
}

