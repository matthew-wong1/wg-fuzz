struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(127f, -908f, -742f), vec3<f32>(647f, -1381f, 658f), vec3<f32>(-726f, -1232f, 2175f), vec3<f32>(-1000f, 836f, 337f));

var<private> global1: array<u32, 30>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_3(vec4<i32>(i32(-2147483648), -17796i, -29088i, 14112i), Struct_1(-541f)), vec2<i32>(2147483647i, 4652i), Struct_1(990f)), Struct_4(Struct_3(vec4<i32>(0i, 0i, -1i, 2147483647i), Struct_1(1027f)), vec2<i32>(1i, 26758i), Struct_1(-1000f)), Struct_4(Struct_3(vec4<i32>(-30568i, -13801i, 2147483647i, 0i), Struct_1(-114f)), vec2<i32>(-9928i, i32(-2147483648)), Struct_1(160f)), Struct_4(Struct_3(vec4<i32>(i32(-2147483648), 1i, 27124i, i32(-2147483648)), Struct_1(-1638f)), vec2<i32>(17035i, 0i), Struct_1(-442f)), Struct_4(Struct_3(vec4<i32>(-29260i, 0i, 56128i, 2535i), Struct_1(-319f)), vec2<i32>(-61576i, -12970i), Struct_1(-959f)), Struct_4(Struct_3(vec4<i32>(947i, -14785i, 15444i, 0i), Struct_1(558f)), vec2<i32>(-18384i, -14224i), Struct_1(-708f)), Struct_4(Struct_3(vec4<i32>(-57949i, 8399i, -1i, -25619i), Struct_1(-282f)), vec2<i32>(-53272i, 0i), Struct_1(405f)), Struct_4(Struct_3(vec4<i32>(2147483647i, 0i, 13462i, 20656i), Struct_1(-633f)), vec2<i32>(-24020i, 2088i), Struct_1(-649f)), Struct_4(Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, -31826i, -35813i), Struct_1(2298f)), vec2<i32>(29132i, 2147483647i), Struct_1(1000f)), Struct_4(Struct_3(vec4<i32>(-1i, 25876i, -15422i, 2147483647i), Struct_1(786f)), vec2<i32>(2147483647i, 2147483647i), Struct_1(-178f)), Struct_4(Struct_3(vec4<i32>(2147483647i, 62056i, 8687i, -58645i), Struct_1(-1098f)), vec2<i32>(15807i, -64499i), Struct_1(-476f)), Struct_4(Struct_3(vec4<i32>(0i, -24466i, -54651i, 41592i), Struct_1(1000f)), vec2<i32>(i32(-2147483648), 0i), Struct_1(-109f)), Struct_4(Struct_3(vec4<i32>(6470i, -33707i, i32(-2147483648), i32(-2147483648)), Struct_1(-871f)), vec2<i32>(3644i, -60833i), Struct_1(984f)), Struct_4(Struct_3(vec4<i32>(2147483647i, 1i, 0i, 2147483647i), Struct_1(-852f)), vec2<i32>(-11i, 14330i), Struct_1(1809f)), Struct_4(Struct_3(vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), Struct_1(-461f)), vec2<i32>(68326i, 2147483647i), Struct_1(-192f)), Struct_4(Struct_3(vec4<i32>(18402i, 0i, 31027i, 1i), Struct_1(-1035f)), vec2<i32>(2147483647i, 40363i), Struct_1(-1000f)), Struct_4(Struct_3(vec4<i32>(1i, i32(-2147483648), 0i, 0i), Struct_1(1178f)), vec2<i32>(8747i, 20401i), Struct_1(-383f)), Struct_4(Struct_3(vec4<i32>(2147483647i, -4626i, 38898i, 2147483647i), Struct_1(-1879f)), vec2<i32>(0i, -19147i), Struct_1(-1135f)));

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, true, false, true, true, false, true, false, true, true, true, true, true, false, false, true, false, false, false, false, true, true, true, true, true);

var<private> global4: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(1154f), 17474u, 25367u), Struct_2(Struct_1(-600f), 51787u, 1u), Struct_2(Struct_1(918f), 1u, 50130u), Struct_2(Struct_1(-694f), 1u, 0u), Struct_2(Struct_1(-1000f), 4294967295u, 53143u), Struct_2(Struct_1(-836f), 4294967295u, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: f32) -> u32 {
    global3 = array<bool, 26>();
    let var_0 = Struct_2(Struct_1(981f), 1u, arg_0);
    let var_1 = true;
    let var_2 = Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), firstLeadingBit(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 0u, arg_0, global1[_wgslsmith_index_u32(var_0.c, 30u)])))) ^ 91622u, ~(~(~global1[_wgslsmith_index_u32(0u, 30u)])) ^ _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(17928u, u_input.a), ~4294967295u)));
    global3 = array<bool, 26>();
    return arg_0;
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(abs(22690u), func_3(global1[_wgslsmith_index_u32(4898u, 30u)], 44470i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20547u, 30u)], 26u)], 1405f), 104500u), ~vec3<u32>(1924u, 6290u, 1u)), max(~(vec3<u32>(62117u, 0u, 20167u) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(u_input.a, 6894u, 4294967295u) >> (vec3<u32>(21619u, 48598u, global1[_wgslsmith_index_u32(u_input.a, 30u)]) % vec3<u32>(32u)))));
    global0 = array<vec3<f32>, 4>();
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 4u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - 1914f) * _wgslsmith_div_f32(105f, 638f));
    var var_3 = Struct_4(Struct_3((vec4<i32>(-14049i, u_input.b, arg_0.x, arg_0.x) ^ vec4<i32>(13307i, arg_0.x, arg_0.x, 1i)) ^ _wgslsmith_mod_vec4_i32(min(vec4<i32>(16334i, -7625i, u_input.b, -12332i), vec4<i32>(2147483647i, 1i, u_input.b, arg_0.x)), vec4<i32>(2147483647i, arg_0.x, 1i, -39251i) & vec4<i32>(arg_0.x, 19248i, -2147483647i, -13373i)), Struct_1(_wgslsmith_f_op_f32(-var_1.x))), ~_wgslsmith_clamp_vec2_i32(select(arg_0, select(vec2<i32>(-24237i, arg_0.x), arg_0, false), !global3[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_mult_vec2_i32(arg_0, arg_0), -arg_0 & vec2<i32>(25226i, 2147483647i)), Struct_1(-1000f));
    return select(!select(!select(vec3<bool>(global3[_wgslsmith_index_u32(45511u, 26u)], global3[_wgslsmith_index_u32(25765u, 26u)], true), vec3<bool>(global3[_wgslsmith_index_u32(6668u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], false), vec3<bool>(global3[_wgslsmith_index_u32(48360u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<bool>(false, true, !global3[_wgslsmith_index_u32(var_0.x, 26u)]), !(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 30u)], 26u)]))), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(240u, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)], global3[_wgslsmith_index_u32(69628u, 26u)])), !(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(55799u, 26u)], false), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], true, false), true)), any(select(!vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], false), true))), _wgslsmith_dot_vec2_u32(max(var_0.yy, ~var_0.xz), ~_wgslsmith_mod_vec2_u32(var_0.zy, var_0.yx)) <= ~(~0u));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> Struct_5 {
    global4 = array<Struct_2, 6>();
    var var_0 = reverseBits(-37013i) << (~(~u_input.a) % 32u);
    var var_1 = 2147483647i;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_2, ~(~132954u)), ~u_input.a), vec2<u32>(~(~countOneBits(1u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 1u, u_input.a), vec4<u32>(1u, 10073u, 0u, arg_2)), ~vec4<u32>(1u, 40253u, global1[_wgslsmith_index_u32(arg_2, 30u)], arg_2) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2, 151154u, 0u), vec4<u32>(51962u, 0u, 0u, 4294967295u), vec4<u32>(42736u, 14606u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 103313u)) % vec4<u32>(32u))), 30u)])), 18u)];
    global3 = array<bool, 26>();
    return Struct_5(var_2.c);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(-104f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -295f)))));
    let var_1 = func_4(true, !select(func_2(abs(vec2<i32>(u_input.b, u_input.b))), vec3<bool>(true, !global3[_wgslsmith_index_u32(0u, 26u)], true), (global3[_wgslsmith_index_u32(1u, 26u)] & false) == global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(1u, 30u)]), arg_0), 30u)], 30u)], 26u)]), firstLeadingBit(u_input.a));
    let var_2 = Struct_5(Struct_1(var_1.a.a));
    let var_3 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, _wgslsmith_mult_u32(7853u, u_input.a) | global1[_wgslsmith_index_u32(arg_0.x, 30u)], abs(~984u), ~global1[_wgslsmith_index_u32(35575u, 30u)])), vec4<u32>(global1[_wgslsmith_index_u32(~(~(~u_input.a)), 30u)], arg_0.x, 4294967295u, func_3(~reverseBits(global1[_wgslsmith_index_u32(13897u, 30u)]), u_input.b, global3[_wgslsmith_index_u32(arg_0.x, 26u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(665f)))))));
    global2 = array<Struct_4, 18>();
    return _wgslsmith_sub_u32(u_input.a, arg_0.x);
}

fn func_5(arg_0: u32, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = vec4<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(abs(global1[_wgslsmith_index_u32(35722u, 30u)]), _wgslsmith_mod_u32(1u, 1u), _wgslsmith_div_u32(9394u, u_input.a))), 26u)] && global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 30u)] & func_1(arg_1.wxy), 26u)], false, true, !global3[_wgslsmith_index_u32(1u, 26u)] || (_wgslsmith_f_op_f32(sign(870f)) != _wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(-1000f + 172f))));
    var_0 = vec4<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(arg_0), 26u)], var_0.x, select(!var_0.x, any(!select(vec4<bool>(false, false, var_0.x, global3[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(true, var_0.x, false, false), var_0.x)), global3[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1218f, -393f)) * -2380f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -109f) + _wgslsmith_div_f32(-1749f, 557f))) >= 1f);
    var var_1 = Struct_3(countOneBits(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(0i, 0i, 2147483647i, 22775i), vec4<i32>(28386i, 4421i, -22143i, u_input.b)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(1914i, u_input.b, -1i, -12963i)))), Struct_1(_wgslsmith_f_op_f32(1587f - _wgslsmith_f_op_f32(341f * 634f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.a))));
    var var_3 = func_4(global3[_wgslsmith_index_u32(~abs(80428u), 26u)], var_0.wwx, u_input.a);
    return select(min(~_wgslsmith_clamp_vec4_i32(var_1.a, select(vec4<i32>(var_1.a.x, var_1.a.x, 31379i, u_input.b), var_1.a, vec4<bool>(true, global3[_wgslsmith_index_u32(32855u, 26u)], global3[_wgslsmith_index_u32(arg_1.x, 26u)], global3[_wgslsmith_index_u32(arg_0, 26u)])), -vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, var_1.a.x)), ~countOneBits(firstLeadingBit(var_1.a))), vec4<i32>(-1i) * -select(-var_1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -11945i, 15970i, -33686i), vec4<i32>(-2147483647i, u_input.b, -1i, u_input.b)), false), ~115196u <= countOneBits(arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    let var_1 = Struct_3(-func_5(~0u, vec4<u32>(func_1(vec3<u32>(1u, 88672u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)])), _wgslsmith_mult_u32(u_input.a, u_input.a), 0u, 1u)), Struct_1(_wgslsmith_f_op_f32(var_0.x - var_0.x)));
    let var_2 = -vec4<i32>(-var_1.a.x, u_input.b, ~(-28337i), _wgslsmith_dot_vec3_i32(abs(var_1.a.wyz), ~vec3<i32>(var_1.a.x, 21335i, 1i))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(max(1u, 0u), 1u, u_input.a & global1[_wgslsmith_index_u32(1u, 30u)], 16719u), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(73932u, 30u)], u_input.a, 70851u), vec4<u32>(u_input.a, 47108u, 38204u, global1[_wgslsmith_index_u32(4294967295u, 30u)])))) & _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 1u, 0u, global1[_wgslsmith_index_u32(0u, 30u)])), ~(vec4<u32>(global1[_wgslsmith_index_u32(0u, 30u)], 0u, global1[_wgslsmith_index_u32(20103u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)]) | vec4<u32>(u_input.a, u_input.a, 48871u, global1[_wgslsmith_index_u32(0u, 30u)])))) % vec4<u32>(32u));
    global4 = array<Struct_2, 6>();
    global1 = array<u32, 30>();
    let var_3 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(6378u, 1u, global1[_wgslsmith_index_u32(1u, 30u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20609u, 30u)], 30u)], 4294967295u))) >> (vec3<u32>(select(max(33744u, 66202u), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(3528u, 30u)], 3509u), 30u)], true), 1u, _wgslsmith_sub_u32(abs(0u), ~global1[_wgslsmith_index_u32(93169u, 30u)])) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(18729u, 1u, 57068u)), _wgslsmith_mod_vec3_u32(vec3<u32>(34238u, 47863u, 5724u) & vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(1u, 26169u, 4294967295u), vec3<u32>(u_input.a, 0u, 4294967295u), vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 26u)])))), ~select(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a), vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(0u, 10871u, 0u), global1[_wgslsmith_index_u32(0u, 30u)] == u_input.a), abs(vec3<u32>(_wgslsmith_mod_u32(53887u, u_input.a), u_input.a, 1u))), ~(~vec3<u32>(54054u, min(47549u, u_input.a), abs(global1[_wgslsmith_index_u32(u_input.a, 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(~var_2, ~vec4<i32>(2147483647i, u_input.b, -2958i, var_2.x))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, 1i), u_input.b), 1i, -2147483647i, reverseBits(firstTrailingBit(-2147483647i)))), u_input.b, vec4<i32>(-84349i, min(var_2.x, firstTrailingBit(-var_1.a.x)), select(min(-2147483647i, -23580i), var_1.a.x, global3[_wgslsmith_index_u32(74620u & var_3.x, 26u)]) & -45841i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_1.a.x, -1i)), firstTrailingBit(vec2<i32>(-1i, 2147483647i))), var_1.a.xx)), firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 34632u, 4294967295u, 26055u), _wgslsmith_div_vec4_u32(vec4<u32>(31537u, 1u, 1u, 22063u), vec4<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a))))));
}

