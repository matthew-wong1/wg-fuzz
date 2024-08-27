struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(i32(-2147483648), -42162i), vec2<i32>(-9428i, 43356i), vec2<i32>(-3063i, i32(-2147483648)), vec2<i32>(-24669i, 60852i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -9397i), vec2<i32>(1i, 31411i), vec2<i32>(8318i, -1i), vec2<i32>(7566i, 1i), vec2<i32>(-2978i, 24567i), vec2<i32>(-1i, -31773i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-22064i, -25707i), vec2<i32>(-11844i, 2147483647i), vec2<i32>(-8113i, -1i), vec2<i32>(1i, 12452i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -4972i), vec2<i32>(-18629i, 0i), vec2<i32>(i32(-2147483648), -10538i), vec2<i32>(1i, -21601i), vec2<i32>(26841i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -26577i), vec2<i32>(-36380i, 2147483647i), vec2<i32>(-1i, -45379i));

var<private> global2: u32 = 2892u;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(true, true, false), -383f, vec2<f32>(-627f, -382f), vec2<i32>(-48900i, 44520i), vec3<u32>(0u, 52697u, 0u)), Struct_1(vec3<bool>(true, false, false), 287f, vec2<f32>(-795f, -705f), vec2<i32>(11041i, -71366i), vec3<u32>(67069u, 74307u, 1u)), Struct_1(vec3<bool>(true, false, false), -954f, vec2<f32>(-485f, 1000f), vec2<i32>(1i, -1i), vec3<u32>(35007u, 0u, 8006u)), Struct_1(vec3<bool>(false, false, true), 402f, vec2<f32>(1096f, -237f), vec2<i32>(1i, -1i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<bool>(false, false, true), -2799f, vec2<f32>(1052f, 410f), vec2<i32>(1i, 2147483647i), vec3<u32>(25663u, 4294967295u, 0u)), Struct_1(vec3<bool>(false, false, false), 684f, vec2<f32>(-588f, 732f), vec2<i32>(-1i, -58638i), vec3<u32>(0u, 36298u, 58836u)), Struct_1(vec3<bool>(false, true, false), -518f, vec2<f32>(-856f, 754f), vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<bool>(true, true, false), -464f, vec2<f32>(1000f, 302f), vec2<i32>(29814i, 35040i), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, false, true), 942f, vec2<f32>(-1000f, -150f), vec2<i32>(68214i, 1i), vec3<u32>(57370u, 51626u, 1u)), Struct_1(vec3<bool>(false, true, true), -1501f, vec2<f32>(496f, 1585f), vec2<i32>(2147483647i, 3946i), vec3<u32>(4294967295u, 4294967295u, 29808u)), Struct_1(vec3<bool>(true, false, true), -576f, vec2<f32>(-1179f, 767f), vec2<i32>(79101i, 1i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<bool>(false, true, true), 602f, vec2<f32>(-712f, -1123f), vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), -1216f, vec2<f32>(533f, 1000f), vec2<i32>(i32(-2147483648), 0i), vec3<u32>(119851u, 21347u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), -142f, vec2<f32>(-1766f, -766f), vec2<i32>(-22822i, 2147483647i), vec3<u32>(30915u, 1u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), -1829f, vec2<f32>(-146f, 430f), vec2<i32>(0i, 57283i), vec3<u32>(68601u, 6650u, 81526u)), Struct_1(vec3<bool>(true, true, false), -931f, vec2<f32>(1334f, 2075f), vec2<i32>(0i, -32843i), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), 853f, vec2<f32>(862f, -325f), vec2<i32>(30981i, -37124i), vec3<u32>(3797u, 66592u, 1u)), Struct_1(vec3<bool>(false, true, true), 732f, vec2<f32>(-510f, -515f), vec2<i32>(0i, -13196i), vec3<u32>(1u, 27152u, 48659u)), Struct_1(vec3<bool>(false, true, false), 384f, vec2<f32>(-364f, -855f), vec2<i32>(-22363i, i32(-2147483648)), vec3<u32>(22248u, 2618u, 1u)), Struct_1(vec3<bool>(true, false, true), 1881f, vec2<f32>(-481f, -862f), vec2<i32>(-49332i, -19092i), vec3<u32>(3380u, 4294967295u, 34679u)), Struct_1(vec3<bool>(false, false, true), 118f, vec2<f32>(-1171f, 1263f), vec2<i32>(9837i, -1i), vec3<u32>(63280u, 25506u, 0u)), Struct_1(vec3<bool>(false, true, false), 474f, vec2<f32>(-780f, -257f), vec2<i32>(38804i, 1i), vec3<u32>(45056u, 11494u, 30937u)), Struct_1(vec3<bool>(false, false, true), 594f, vec2<f32>(736f, 402f), vec2<i32>(-1i, -22609i), vec3<u32>(0u, 6492u, 24482u)), Struct_1(vec3<bool>(true, true, true), 811f, vec2<f32>(700f, 417f), vec2<i32>(-28848i, -5153i), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), -251f, vec2<f32>(292f, -1559f), vec2<i32>(6870i, -40875i), vec3<u32>(110338u, 0u, 1u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    global0 = array<f32, 22>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_1 = 873f;
    let var_2 = _wgslsmith_mult_u32(57343u, arg_2.e.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(333f * arg_2.b), 1381f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(max(4294967295u, var_2), 4294967295u), var_0.e.x), 22u)]));
    return select(arg_2.e, vec3<u32>(1u, 5701u >> (arg_2.e.x % 32u), ~_wgslsmith_mod_u32(countOneBits(var_2), 13372u)), select(vec3<bool>(true, any(vec2<bool>(true, arg_0.x)) || any(vec2<bool>(var_0.a.x, arg_2.a.x)), all(vec4<bool>(true, false, var_0.a.x, false))), arg_0.xzx, false));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = ~func_3(select(select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0), false), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0)), vec4<bool>(false, false, arg_0, true)), !select(vec4<bool>(true, false, arg_0, false), vec4<bool>(true, true, true, arg_0), arg_0), arg_0 | all(vec2<bool>(true, arg_0))), -select(vec3<i32>(-26228i, 0i, 0i), vec3<i32>(0i, 2147483647i, -9194i), !vec3<bool>(arg_0, arg_0, true)), global3[_wgslsmith_index_u32(~u_input.a.x, 25u)], select((-1i << (u_input.a.x % 32u)) >> (countOneBits(4294967295u) % 32u), 69150i, true));
    var var_1 = firstLeadingBit(var_0) & var_0;
    var var_2 = Struct_1(!vec3<bool>(arg_0, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1672f), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(ceil(-2498f)))), global0[_wgslsmith_index_u32(1u, 22u)]), ~reverseBits(global1[_wgslsmith_index_u32(4294967295u, 27u)]), var_0);
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~68843u, 9217u), 25u)];
    global0 = array<f32, 22>();
    return !select(!vec4<bool>(true, true, 18538u < var_2.e.x, !var_3.a.x), vec4<bool>(true, true & any(vec4<bool>(true, false, var_2.a.x, false)), var_2.a.x, false), true);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 22>();
    let var_0 = Struct_1(vec3<bool>(all(!func_2(true)), !((arg_0.b != arg_0.c.x) && arg_0.a.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) - _wgslsmith_f_op_f32(ceil(894f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] + -2187f))) * 1434f), vec2<f32>(arg_0.c.x, arg_0.c.x), vec2<i32>(firstLeadingBit(-805i), 0i) ^ select(vec2<i32>(arg_0.d.x, ~2147483647i), abs(vec2<i32>(arg_0.d.x, arg_0.d.x)) | global1[_wgslsmith_index_u32(1u, 27u)], vec2<bool>(true, true)), arg_0.e);
    var var_1 = arg_0.e.x;
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    return func_3(!vec4<bool>(all(var_0.a.yz), all(func_2(false).wxy), _wgslsmith_sub_i32(36373i, -1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 20201i, -2400i, -2147483647i), vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, var_0.d.x)), var_0.a.x), ~reverseBits(countOneBits(reverseBits(vec3<i32>(-2147483647i, -44958i, 8028i)))), Struct_1(vec3<bool>(_wgslsmith_mod_u32(var_0.e.x, 1u) < u_input.a.x, var_0.a.x, any(vec2<bool>(true, arg_0.a.x))), -662f, vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 22u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + arg_0.c.x)))), ~abs(var_0.d) ^ _wgslsmith_mod_vec2_i32(min(vec2<i32>(var_0.d.x, var_0.d.x), var_0.d), vec2<i32>(arg_0.d.x, arg_0.d.x) << (vec2<u32>(6039u, 3792u) % vec2<u32>(32u))), var_0.e), _wgslsmith_clamp_i32(~(-2147483647i), arg_0.d.x, arg_0.d.x)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, func_1(global3[_wgslsmith_index_u32(u_input.a.x, 25u)]) < 14630u, any(select(vec4<bool>(false, true, false, true), func_2(false), vec4<bool>(true, false, true, false))) | all(select(vec4<bool>(false, false, true, true), func_2(false), any(vec4<bool>(true, false, false, false)))));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(81863u, 25u)], select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x ^ 4294967295u, ~u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~vec3<u32>(u_input.a.x, 45612u, u_input.a.x))), vec3<u32>(1u, countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 33935u, u_input.a.x, u_input.a.x)))), (_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(16151u, 22u)], -1551f, false)) >= _wgslsmith_f_op_f32(673f + -499f)) || (var_0.x && true)), reverseBits(min(reverseBits(-vec4<i32>(2147483647i, -50717i, -27705i, -2147483647i)), vec4<i32>(-10185i, 2147483647i, 1i, -2147483647i))));
    var_1 = Struct_2(Struct_1(var_1.a.a, global0[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 22u)], -272f), var_1.a.c, var_0.yx)), _wgslsmith_f_op_vec2_f32(var_1.a.c * var_1.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, var_1.a.c.x) * vec2<f32>(-441f, 1697f)))), _wgslsmith_div_vec2_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 27u)] | var_1.a.d, abs(vec2<i32>(var_1.a.d.x, var_1.c.x))), ~var_1.b), ~(var_1.b >> ((vec3<u32>(var_1.b.x, 22750u, var_1.b.x) ^ (var_1.b & vec3<u32>(u_input.a.x, var_1.b.x, u_input.a.x))) % vec3<u32>(32u))), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(var_1.c.x, var_1.c.x, var_1.a.d.x, var_1.a.d.x), ~var_1.c, false), var_1.c));
    var var_2 = !(!(!(!var_0.x)));
    global2 = 79831u;
    var var_3 = Struct_2(Struct_1(vec3<bool>(var_1.b.x <= var_1.b.x, false, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b.x, u_input.a.x, 1u), vec4<u32>(var_1.a.e.x, u_input.a.x, u_input.a.x, var_1.a.e.x)) >= ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) - 1114f)), vec2<f32>(_wgslsmith_f_op_f32(round(1195f)), -1161f), (min(vec2<i32>(-41225i, var_1.c.x), vec2<i32>(var_1.c.x, var_1.c.x)) >> (countOneBits(var_1.a.e.zx) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), firstTrailingBit(select(var_1.b, _wgslsmith_div_vec3_u32(var_1.b, vec3<u32>(u_input.a.x, var_1.b.x, 0u)), select(vec3<bool>(var_1.a.a.x, true, true), vec3<bool>(var_1.a.a.x, var_0.x, false), var_1.a.a.x)))), var_1.b, var_1.c);
    global1 = array<vec2<i32>, 27>();
    var_3 = Struct_2(var_1.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.e, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_3.b, vec3<u32>(var_1.b.x, var_3.b.x, u_input.a.x)), ~vec3<u32>(8039u, var_3.a.e.x, 21075u))), vec3<u32>(u_input.a.x, ~func_3(vec4<bool>(var_3.a.a.x, var_0.x, var_3.a.a.x, false), vec3<i32>(var_3.c.x, var_1.a.d.x, var_3.a.d.x), Struct_1(vec3<bool>(var_1.a.a.x, false, false), global0[_wgslsmith_index_u32(var_3.a.e.x, 22u)], vec2<f32>(-1000f, 1181f), var_3.a.d, vec3<u32>(23940u, var_3.a.e.x, u_input.a.x)), var_3.c.x).x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_3.a.e.x, var_3.b.x, 8564u), ~vec4<u32>(13187u, 40837u, u_input.a.x, 40970u))), ~vec3<u32>(u_input.a.x, var_1.b.x, var_1.b.x) << (func_3(select(vec4<bool>(var_3.a.a.x, true, false, false), vec4<bool>(var_3.a.a.x, var_0.x, false, true), var_3.a.a.x), var_1.c.yyx, var_3.a, _wgslsmith_add_i32(var_3.a.d.x, 17399i)) % vec3<u32>(32u))), var_1.c);
    var_1 = Struct_2(Struct_1(var_1.a.a, var_3.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-472f, -1000f)) - var_3.a.c), global1[_wgslsmith_index_u32(select(8500u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 1u), 34061u), any(select(vec3<bool>(true, true, false), var_1.a.a, false))), 27u)], func_3(func_2(any(var_3.a.a)), var_3.c.wzw, var_1.a, i32(-1i) * -var_3.c.x)), vec3<u32>(~_wgslsmith_dot_vec2_u32(abs(var_3.b.yz), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.b.x, 1u), var_3.b.yy)), var_3.a.e.x, 4294967295u), firstTrailingBit((vec4<i32>(-5446i, var_3.c.x, -6052i, -68873i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 79440u, 4294967295u), vec4<u32>(0u, 0u, var_3.a.e.x, var_1.a.e.x), vec4<u32>(var_1.b.x, var_3.b.x, u_input.a.x, var_3.b.x)) % vec4<u32>(32u))) ^ var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -2671f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(353f, -297f)))), -333f, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_1.a.e), vec3<u32>(var_1.b.x, var_1.b.x, 0u)), ~(~var_3.a.e.x))), -732f);
}

