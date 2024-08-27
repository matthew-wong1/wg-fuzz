struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<i32>(33938i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 14346i, 6331i), false, i32(-2147483648), -2678f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<i32>(-92164i, 1i, 6047i, 1170i), true, -2405i, -2488f), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<i32>(-38063i, 24178i, -61942i, -21719i), true, -40768i, -360f), Struct_1(vec2<i32>(-66914i, 40747i), vec4<i32>(-35306i, 1i, i32(-2147483648), 1i), false, 1i, 1011f), Struct_1(vec2<i32>(2147483647i, 1i), vec4<i32>(-6012i, -24007i, 1i, 8296i), false, 55325i, 886f), Struct_1(vec2<i32>(3086i, -6670i), vec4<i32>(0i, 8322i, i32(-2147483648), 34394i), false, -1i, -1089f), Struct_1(vec2<i32>(i32(-2147483648), -5639i), vec4<i32>(-31674i, 3883i, 1i, 1i), true, -46277i, 281f), Struct_1(vec2<i32>(-31227i, 15179i), vec4<i32>(2147483647i, -27179i, -13912i, -65676i), false, -31743i, 2651f), Struct_1(vec2<i32>(-11172i, 0i), vec4<i32>(8335i, 2147483647i, 38469i, i32(-2147483648)), true, -2395i, -239f), Struct_1(vec2<i32>(1i, 22350i), vec4<i32>(0i, 1i, 2147483647i, -31389i), false, 819i, 508f), Struct_1(vec2<i32>(i32(-2147483648), -390i), vec4<i32>(-1i, 32969i, 1192i, 9631i), true, 0i, 200f));

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, true, false, false, false, false, true, false, false);

var<private> global2: array<u32, 2> = array<u32, 2>(1u, 1u);

var<private> global3: array<vec2<i32>, 6>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(select(-u_input.b, global3[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(u_input.c, 2u)]), 6u)] & u_input.b, all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(46839u, 10u)], true, global1[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(29178u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(42179u, 10u)]), true)) | false), _wgslsmith_mod_vec4_i32(vec4<i32>(-30519i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.d, 0i, 15950i, u_input.d), vec4<i32>(15896i, 0i, -2147483647i, u_input.b.x)), vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.d)), -26978i, ~2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, reverseBits(0i), u_input.b.x, 2147483647i), abs(select(vec4<i32>(u_input.d, 64172i, u_input.d, u_input.e), vec4<i32>(u_input.b.x, -2147483647i, -2147483647i, 2147483647i), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 2u)], 10u)]))))), global1[_wgslsmith_index_u32(~(~(~firstLeadingBit(39579u))), 10u)], _wgslsmith_clamp_i32(u_input.b.x, countOneBits(countOneBits(-u_input.e)), 1i), _wgslsmith_f_op_f32(-1f));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_1 = !select(vec3<bool>(!(true & global1[_wgslsmith_index_u32(u_input.a, 10u)]), global1[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 2u)]), 10u)], false), !select(select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 10u)], true), true), !vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], false), true), !vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 10u)], any(vec3<bool>(var_0.c, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43405u, 2u)], 10u)])), !global1[_wgslsmith_index_u32(4294967295u, 10u)]));
    var var_2 = !select(vec3<bool>(4294967295u >= u_input.a, var_0.c, var_0.c & (var_1.x && global1[_wgslsmith_index_u32(26334u, 10u)])), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(25503u, 10u)]);
    return u_input.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(reverseBits(u_input.b) >> (vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50012u, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.a)), 2u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11044u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 2u)], u_input.c))) % vec2<u32>(32u)), arg_0.b, global1[_wgslsmith_index_u32(reverseBits(13979u << (global2[_wgslsmith_index_u32(~4294967295u, 2u)] % 32u)), 10u)], u_input.e, arg_0.e), vec3<u32>(_wgslsmith_mult_u32(38409u, 83296u), ~global2[_wgslsmith_index_u32(func_3(), 2u)], 28783u));
    global3 = array<vec2<i32>, 6>();
    var var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -8238i) | _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.b.x, arg_0.d), var_0.a.a), abs(_wgslsmith_mod_vec2_i32(u_input.b, var_0.a.b.zz)), min(u_input.b, vec2<i32>(2147483647i, -45351i) & var_0.a.b.zy)), _wgslsmith_sub_vec2_i32(select(u_input.b, var_0.a.b.xx << (var_0.b.zz % vec2<u32>(32u)), true), var_0.a.b.xw));
    global2 = array<u32, 2>();
    global3 = array<vec2<i32>, 6>();
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> bool {
    global0 = array<Struct_1, 11>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -185f))), _wgslsmith_f_op_f32(min(arg_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(arg_2.x + -695f)))))), _wgslsmith_f_op_f32(ceil(arg_0.a.e)));
    var var_1 = vec2<bool>((_wgslsmith_add_u32(13924u, _wgslsmith_sub_u32(arg_0.b.x, 0u)) | 68110u) > _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, arg_0.b.x), 4294967295u), arg_1.c);
    var var_2 = func_2(arg_1);
    var var_3 = vec3<u32>(arg_0.b.x, 27152u, firstLeadingBit(0u));
    return false;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(~(~1u)) >> (u_input.a % 32u);
    var var_1 = ~(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 1u), ~vec2<u32>(u_input.c, u_input.a)), 2u)] & ~31268u);
    global3 = array<vec2<i32>, 6>();
    var var_2 = !(!select(select(vec3<bool>(false, false, arg_2.c), select(vec3<bool>(arg_3.c, arg_2.c, true), vec3<bool>(false, arg_2.c, arg_0), arg_0), any(vec4<bool>(true, arg_0, arg_0, false))), select(select(vec3<bool>(arg_1, false, arg_2.c), vec3<bool>(arg_0, false, true), arg_3.c), select(vec3<bool>(false, true, false), vec3<bool>(arg_3.c, false, false), arg_1), arg_3.c), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 10u)]), vec2<bool>(false, arg_0), arg_2.c))));
    return func_2(global0[_wgslsmith_index_u32(u_input.a, 11u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = -24945i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(min(select(vec2<i32>(0i, var_0), vec2<i32>(2816i, -659i), arg_0.c), -vec2<i32>(-2147483647i, -64241i)), vec2<i32>(-1i, 2372i)), _wgslsmith_clamp_vec4_i32(arg_0.b, vec4<i32>(var_0, u_input.e, max(-1i, 40629i), 0i), arg_0.b), 7529u > (1u ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), 1i, 1066f), ~(~(~max(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(1u, 2u)], u_input.a)))));
    global2 = array<u32, 2>();
    let var_2 = u_input.c & max(~0u, ~16305u);
    global3 = array<vec2<i32>, 6>();
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1135f, 2759f, true)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -648f)) * arg_1.x), ~(~(~var_1.b.x)) == 1u);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(abs(1i), _wgslsmith_mod_i32(arg_1.a.x, 25416i)), func_2(func_4(arg_1.c, false, Struct_1(vec2<i32>(u_input.d, -1i), arg_1.b, false, u_input.b.x, arg_1.e), global0[_wgslsmith_index_u32(u_input.c, 11u)])).d), _wgslsmith_clamp_vec4_i32(arg_1.b, arg_1.b, -reverseBits(vec4<i32>(8053i, arg_1.a.x, u_input.b.x, u_input.b.x))), ~_wgslsmith_add_u32(67813u, global2[_wgslsmith_index_u32(u_input.a, 2u)]) < ~_wgslsmith_sub_u32(u_input.a, global2[_wgslsmith_index_u32(20088u, 2u)]), func_4(true | select(false, arg_2.x, global1[_wgslsmith_index_u32(u_input.a, 10u)]), true, arg_1, arg_1).b.x, _wgslsmith_div_f32(-1541f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.e, arg_0)), -992f)))), vec3<u32>(1u, 0u, reverseBits(_wgslsmith_div_u32(firstLeadingBit(u_input.c), 4294967295u))));
    var var_1 = Struct_2(func_4(var_0.a.c, !arg_2.x, func_4(any(func_5(var_0.a, vec2<f32>(arg_0, arg_0))), global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_1, Struct_1(firstTrailingBit(vec2<i32>(1i, 14901i)), vec4<i32>(34328i, var_0.a.a.x, var_0.a.b.x, arg_1.b.x), false, ~var_0.a.b.x, _wgslsmith_f_op_f32(var_0.a.e * arg_0))), func_4(arg_1.c, arg_0 >= _wgslsmith_f_op_f32(-1000f * arg_1.e), Struct_1(vec2<i32>(arg_1.d, arg_1.d) | vec2<i32>(u_input.d, u_input.e), min(vec4<i32>(43211i, -21214i, 0i, -32826i), vec4<i32>(var_0.a.d, -1i, arg_1.b.x, var_0.a.b.x)), false, u_input.e, -293f), func_2(var_0.a))), ~(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(11143u, var_0.b.x, 1u), vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)), _wgslsmith_add_u32(46622u, 1u), var_0.b.x) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 37293u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74506u, 2u)], 2u)], u_input.a), vec4<u32>(65929u, 74681u, 16418u, 8044u)), u_input.c, ~22234u)));
    var var_2 = Struct_1(func_4((18208i < u_input.b.x) == !global1[_wgslsmith_index_u32(~2446u, 10u)], var_1.a.c, var_1.a, func_4(!(var_0.b.x != 36128u), all(select(vec4<bool>(global1[_wgslsmith_index_u32(75618u, 10u)], false, true, arg_2.x), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52994u, 2u)], 10u)])), arg_1, Struct_1(u_input.b << (var_0.b.yz % vec2<u32>(32u)), abs(arg_1.b), 432f > arg_1.e, _wgslsmith_sub_i32(2147483647i, u_input.d), var_1.a.e))).a, var_1.a.b, true, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)));
    let var_3 = ~_wgslsmith_sub_i32(i32(-1i) * -16766i, -1i);
    var_1 = var_0;
    return Struct_1(arg_1.a, reverseBits(arg_1.b), var_0.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, reverseBits(i32(-1i) * -2147483647i), ~u_input.d, -1i), abs(var_0.a.b)), _wgslsmith_div_f32(var_1.a.e, _wgslsmith_f_op_f32(select(1300f, var_0.a.e, arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-2245f, Struct_1(vec2<i32>(-u_input.b.x, 2147483647i | ~u_input.b.x), (-vec4<i32>(u_input.b.x, -1i, 1i, u_input.d) & (vec4<i32>(-12468i, 4244i, -2147483647i, -2147483647i) >> (vec4<u32>(4294967295u, 14051u, u_input.a, u_input.c) % vec4<u32>(32u)))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(40481u, global2[_wgslsmith_index_u32(u_input.c, 2u)], 17055u, 5860u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], 43531u, u_input.a)), ~vec4<u32>(23846u, 7434u, global2[_wgslsmith_index_u32(u_input.c, 2u)], u_input.c)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(23371u, 10u)] && (u_input.b.x >= _wgslsmith_div_i32(u_input.b.x, 18698i)), -10324i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1626f, 1055f)) * -1000f)), select(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43745u, 2u)], 2u)], 10u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], false), true)), func_5(func_4(true, func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 11u)], vec3<u32>(u_input.a, u_input.a, 45640u)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 11u)], vec4<f32>(875f, -926f, 1616f, -1834f), u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1830f)))), select(vec2<bool>(u_input.c == global2[_wgslsmith_index_u32(u_input.a, 2u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u | global2[_wgslsmith_index_u32(u_input.c, 2u)], 10u)], func_2(Struct_1(vec2<i32>(u_input.d, u_input.b.x), vec4<i32>(u_input.b.x, u_input.e, u_input.d, 31062i), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80099u, 2u)], 10u)], 2147483647i, 1118f)).c), true)));
    var_0 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(14499u & max(global2[_wgslsmith_index_u32(16397u, 2u)], u_input.c), 17652u) & abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 34617u), vec2<u32>(4294967295u, u_input.a)) & u_input.c)), 2u)], 11u)];
    var var_1 = Struct_2(func_6(var_0.e, global0[_wgslsmith_index_u32(0u, 11u)], select(!func_5(Struct_1(u_input.b, var_0.b, false, u_input.b.x, var_0.e), vec2<f32>(var_0.e, var_0.e)), vec2<bool>(all(vec2<bool>(var_0.c, false)), func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.c, 11u)], vec3<u32>(0u, u_input.a, 0u)), global0[_wgslsmith_index_u32(u_input.a, 11u)], vec4<f32>(-1000f, -295f, var_0.e, -997f), 14233i)), select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], var_0.c), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], var_0.c), vec2<bool>(true, true)))), vec3<u32>(u_input.a, min(68821u, ~global2[_wgslsmith_index_u32(u_input.c, 2u)] ^ global2[_wgslsmith_index_u32(u_input.a, 2u)]), ~select(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 2u)], 2u)], global1[_wgslsmith_index_u32(~39846u, 10u)])));
    var var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~_wgslsmith_div_u32(u_input.a, global2[_wgslsmith_index_u32(9595u, 2u)]), abs(~75806u), var_1.b.x, 4294967295u), select(~(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(15043u, 2u)], global2[_wgslsmith_index_u32(16670u, 2u)], var_1.b.x) | vec4<u32>(0u, var_1.b.x, 4294967295u, 81658u)) << (abs(~vec4<u32>(var_1.b.x, var_1.b.x, 0u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~max(vec4<u32>(53845u, u_input.a, global2[_wgslsmith_index_u32(var_1.b.x, 2u)], 0u), vec4<u32>(0u, u_input.c, 0u, global2[_wgslsmith_index_u32(4294967295u, 2u)])), ~(vec4<u32>(44778u, 128512u, u_input.a, 4294967295u) | vec4<u32>(global2[_wgslsmith_index_u32(5375u, 2u)], u_input.c, var_1.b.x, var_1.b.x))), !vec4<bool>(!var_0.c, true, true, select(false, false, var_1.a.c))), firstLeadingBit(~(~vec4<u32>(var_1.b.x, u_input.c, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4966u, 2u)], 2u)], 2u)]))));
    let var_3 = vec3<f32>(503f, var_0.e, 1056f);
    var_2 = ~(~(~vec4<u32>(44513u, max(u_input.c, u_input.c), ~60805u, var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(61707u, ~select(27261i, _wgslsmith_sub_i32(u_input.e, 2147483647i), all(vec4<bool>(false, false, false, true))) << (4294967295u % 32u), -236f, _wgslsmith_clamp_vec4_u32(firstTrailingBit((vec4<u32>(4294967295u, 0u, u_input.c, 0u) | vec4<u32>(17995u, 1u, 1u, var_2.x)) << (select(vec4<u32>(var_2.x, 6645u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 2u)], global2[_wgslsmith_index_u32(71557u, 2u)]), vec4<u32>(u_input.a, var_2.x, 45159u, 0u), true) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 2u)], 52530u, var_2.x) | countOneBits(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 2u)], 2u)], 4294967295u, 1u)), abs(~(vec4<u32>(28306u, 5829u, 4294967295u, var_1.b.x) & vec4<u32>(5720u, 62643u, u_input.c, var_2.x)))), 6850i);
}

