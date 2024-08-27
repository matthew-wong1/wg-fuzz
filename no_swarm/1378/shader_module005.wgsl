struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-308f);

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true));

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: array<u32, 19> = array<u32, 19>(4294967295u, 40722u, 35010u, 4294967295u, 1u, 17476u, 0u, 4294967295u, 1u, 1u, 92502u, 4294967295u, 32169u, 15440u, 36073u, 6420u, 0u, 4294967295u, 4294967295u);

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global3 = array<u32, 19>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(7695u, ~4294967295u), vec4<u32>(4294967295u, 1u, u_input.a, global3[_wgslsmith_index_u32(select(4294967295u >> (global3[_wgslsmith_index_u32(1u, 19u)] % 32u), ~global3[_wgslsmith_index_u32(4294967295u, 19u)], true), 19u)]), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u >> (u_input.a % 32u), 0u), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    return var_0.a;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1319f * global0[_wgslsmith_index_u32(~4294967295u, 1u)]) - -951f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27365u, 1u)])))))));
    let var_2 = func_2(-1165f, _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ vec3<i32>(reverseBits(-32392i), _wgslsmith_mod_i32(-23956i, u_input.b), u_input.b), _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(u_input.b, u_input.b, u_input.b)), ~abs(vec3<i32>(-2147483647i, -637i, u_input.b)))));
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0.b, select(vec4<u32>(9856u, 4294967295u, 97033u, 4294967295u), reverseBits(vec4<u32>(96382u, global3[_wgslsmith_index_u32(51089u, 19u)], 14841u, var_2.b.x)), vec4<bool>(false, var_0.c.x, false, var_2.c.x))) << (var_0.d.x % 32u), _wgslsmith_div_u32(0u, func_2(_wgslsmith_f_op_f32(floor(-1026f)), _wgslsmith_add_i32(-2147483647i, u_input.b << (var_2.a % 32u))).b.x));
    global0 = array<f32, 1>();
    return Struct_1(~(~select(select(var_3.x, var_2.d.x, var_2.c.x), ~var_3.x, all(arg_0.c))), var_2.b, func_2(_wgslsmith_f_op_f32(round(-229f)), select(~(-u_input.b), ~(i32(-1i) * -21375i), all(select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(true, var_2.c.x, arg_0.c.x), vec3<bool>(true, arg_0.c.x, arg_0.c.x))))).c, vec2<u32>(0u, ~var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(1777f)), global0[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(55297u, 19u)]), 1u)]))));
    global4 = ~u_input.a;
    var var_1 = var_0.x;
    let var_2 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(52280u, 19u)], abs(~(~arg_0.b)), vec2<bool>((global0[_wgslsmith_index_u32(arg_0.a, 1u)] >= 1000f) & true, func_3(Struct_1(4294967295u, arg_0.b, vec2<bool>(arg_3.x, arg_0.c.x), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.a))).c.x), arg_0.b.wy));
    global4 = abs(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, var_2.a.b.x, 1u), vec3<u32>(1u, var_2.a.a, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.d.x, 49656u, u_input.a), vec3<u32>(30609u, u_input.a, 0u))), vec3<u32>(72755u, abs(u_input.a), min(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(var_2.a.b.x, 19u)], 0u), var_2.a.d), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]))));
    return !func_3(arg_0).c;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(0u, arg_2.b, !func_4(func_3(func_2(arg_0.x, 0i)), !select(vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<bool>(arg_2.c.x, true, false), vec3<bool>(false, arg_2.c.x, true)), Struct_3(arg_2.c.x), select(vec4<bool>(true, arg_2.c.x, arg_2.c.x, true), vec4<bool>(arg_2.c.x, arg_2.c.x, false, arg_2.c.x), !arg_2.c.x)), ~(~_wgslsmith_mod_vec2_u32(arg_2.d, vec2<u32>(40162u, 1u)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 17939u), arg_1), vec2<u32>(4294967295u, 40071u)) % vec2<u32>(32u))));
    global0 = array<f32, 1>();
    var var_1 = global2[_wgslsmith_index_u32(arg_2.b.x, 26u)];
    var_1 = max(reverseBits(-min(vec4<i32>(var_1.x, 12556i, u_input.b, -28512i) | global2[_wgslsmith_index_u32(var_0.a, 26u)], vec4<i32>(u_input.b, 8198i, u_input.b, u_input.b))), select(vec4<i32>(_wgslsmith_mult_i32(-6277i, countOneBits(u_input.b)), min(u_input.b << (arg_2.a % 32u), abs(0i)), 31578i, ~firstLeadingBit(45804i)), global2[_wgslsmith_index_u32(14894u, 26u)], true));
    let var_2 = !vec4<bool>(all(arg_2.c), func_2(arg_0.x, firstTrailingBit(_wgslsmith_mult_i32(-40909i, u_input.b))).c.x, !select(var_0.c.x, true, false) | func_4(var_0, vec3<bool>(var_0.c.x, false, var_0.c.x), Struct_3(arg_2.c.x), select(global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.c.x)).x, any(vec2<bool>(arg_2.c.x, true)));
    return firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 26u)]);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global4 = firstLeadingBit(u_input.a);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-202f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19305u, 1u)])), _wgslsmith_f_op_f32(-183f * -584f))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 26>();
    global3 = array<u32, 19>();
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~1u))), 1u)];
    var var_1 = (78916u | (_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.a, 19u)] & global3[_wgslsmith_index_u32(85565u, 19u)], global3[_wgslsmith_index_u32(u_input.a, 19u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9784u, 19u)], 19u)]) ^ abs(select(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], true)))) >= u_input.a;
    let var_2 = Struct_2(func_5(vec4<i32>(_wgslsmith_dot_vec4_i32(func_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1000f), vec2<u32>(4294967295u, u_input.a), Struct_1(u_input.a, vec4<u32>(41379u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36943u, 19u)], 19u)], 27286u), vec2<bool>(false, true), vec2<u32>(56080u, 0u))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 46855i, u_input.b, 9360i), vec4<i32>(u_input.b, u_input.b, -10806i, -2147483647i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(11057i, u_input.b, 70433i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), abs(firstTrailingBit(u_input.b)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 19u)], 1u)])), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11608u, 19u)], 19u)], 64956u), Struct_1(u_input.a, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec2<bool>(true, true), vec2<u32>(66104u, 31246u))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]))), Struct_2(Struct_1(4294967295u, vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], 49447u, global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)]), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(44135u, 15597u), vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28759u, 19u)], 19u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(-1i) * -vec3<i32>(-1i, 1i, u_input.b)), ~(~reverseBits(48235u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(37033u, 1u)], global0[_wgslsmith_index_u32(var_2.a.b.x, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, global0[_wgslsmith_index_u32(109908u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], 489f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31094u, 19u)], 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(70450u, 1u)], -1384f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 888f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.a, 19u)], 1u)], 545f), vec4<f32>(global0[_wgslsmith_index_u32(81910u, 1u)], 169f, -2815f, global0[_wgslsmith_index_u32(28645u, 1u)]), global1[_wgslsmith_index_u32(0u, 13u)])))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.a, 1u)], 1626f, 1353f, global0[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30174u, 19u)], 19u)], 1u)], -1675f, global0[_wgslsmith_index_u32(1u, 1u)]) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 1u)], -2458f))))));
}

