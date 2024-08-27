struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(13435i, -38918i, -2596i, -25294i), vec4<i32>(0i, 0i, -1i, 20228i), vec4<i32>(-4893i, 13356i, -7538i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -24985i, 2147483647i), vec4<i32>(1i, -33949i, -1i, 30907i), vec4<i32>(3600i, 0i, -1i, -14221i), vec4<i32>(23943i, 0i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -535i, 21145i, i32(-2147483648)), vec4<i32>(-54629i, -1i, 12291i, -55603i), vec4<i32>(1i, -36798i, -1i, 2147483647i), vec4<i32>(1i, 1i, 10353i, 0i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(28040i, 2147483647i, i32(-2147483648), 43563i), vec4<i32>(1i, 9358i, 31794i, 9483i), vec4<i32>(0i, 1i, 2147483647i, 1i), vec4<i32>(3452i, -31861i, 1i, 0i), vec4<i32>(43127i, -6126i, 9164i, 1i), vec4<i32>(0i, 19331i, 5828i, i32(-2147483648)), vec4<i32>(-8678i, 1i, -64722i, 10394i), vec4<i32>(i32(-2147483648), 1i, 1i, 13059i), vec4<i32>(i32(-2147483648), 7875i, 33370i, -1525i), vec4<i32>(2147483647i, -43857i, 0i, -19729i), vec4<i32>(-1i, 0i, 21908i, i32(-2147483648)), vec4<i32>(1i, -16391i, 1i, 1i), vec4<i32>(2147483647i, -1i, 0i, -61011i), vec4<i32>(2147483647i, 56124i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 39564i, i32(-2147483648), 1i), vec4<i32>(29219i, i32(-2147483648), 0i, 2147483647i));

var<private> global2: array<vec3<i32>, 29>;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global3 = array<bool, 6>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(arg_0.d * 1650f);
    var var_2 = var_0.a.yw;
    global1 = array<vec4<i32>, 28>();
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global3 = array<bool, 6>();
    let var_0 = func_2(func_2(func_2(func_2(Struct_1(vec4<f32>(537f, arg_0.x, -340f, -1844f), arg_3.b, vec2<i32>(arg_2.c.x, 1i), arg_2.d)))));
    global1 = array<vec4<i32>, 28>();
    let var_1 = arg_3.a.zyz;
    var var_2 = _wgslsmith_dot_vec3_u32(var_0.b.xzz, arg_3.b.xyz);
    return firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(min(global1[_wgslsmith_index_u32(arg_2.b.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), vec4<i32>(~arg_2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, arg_2.c.x), vec3<i32>(91681i, arg_3.c.x, -1503i)), _wgslsmith_sub_i32(-2417i, -2110i), _wgslsmith_div_i32(u_input.c, 0i))), max(~vec4<i32>(u_input.a, arg_3.c.x, var_0.c.x, 1i), vec4<i32>(_wgslsmith_clamp_i32(u_input.c, var_0.c.x, -1i), -16610i, arg_2.c.x | arg_3.c.x, var_0.c.x | 2147483647i))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = func_4(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(arg_2.x, arg_2.x, arg_0, 1437f), vec4<u32>(40451u, 33149u, 4294967295u, u_input.b.x), vec2<i32>(arg_1, arg_1), arg_0), func_2(Struct_1(vec4<f32>(arg_2.x, 529f, arg_0, 457f), vec4<u32>(4294967295u, u_input.b.x, u_input.d, 1u), vec2<i32>(2147483647i, arg_1), arg_2.x)))), _wgslsmith_div_f32(489f, -1671f)))), !(!select(!vec2<bool>(global3[_wgslsmith_index_u32(62905u, 6u)], global3[_wgslsmith_index_u32(49824u, 6u)]), vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(u_input.d, 6u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, 1784f), _wgslsmith_f_op_f32(sign(arg_0)), arg_0, _wgslsmith_f_op_f32(arg_2.x - arg_0))), ~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 4294967295u) ^ vec4<u32>(8221u, u_input.d, u_input.b.x, u_input.d)), vec2<i32>(u_input.a, reverseBits(min(u_input.a, arg_1))), _wgslsmith_f_op_f32(sign(arg_0))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -678f, arg_0)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_0, arg_0, arg_2.x) + vec4<f32>(-677f, 1083f, arg_0, 859f))))), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(u_input.d, u_input.b.x, 0u, u_input.d)), ~min(vec4<u32>(41955u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.d))), ~max(-vec2<i32>(arg_1, 10115i), func_2(Struct_1(vec4<f32>(-1393f, arg_0, arg_2.x, arg_0), vec4<u32>(u_input.d, u_input.d, u_input.b.x, u_input.d), vec2<i32>(4875i, -15502i), -801f)).c), -818f));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_0, 1066f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, arg_0, arg_2.x, 723f) + vec4<f32>(548f, arg_2.x, arg_0, 310f)))), min(select(vec4<u32>(u_input.d, u_input.d, 4294967295u, 1u), countOneBits(vec4<u32>(u_input.d, u_input.d, u_input.d, 44924u)), !global3[_wgslsmith_index_u32(u_input.d, 6u)]), ~vec4<u32>(u_input.d, u_input.d, 3166u, u_input.b.x)), var_0.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(arg_2.x, 477f), arg_2.x <= 1121f)) * 123f)));
    var_0 = -vec4<i32>(i32(-1i) * -(var_0.x & var_1.c.x), -_wgslsmith_mult_i32(12652i, var_0.x | var_1.c.x), -u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.wyy, var_0.yyy), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, -19207i, u_input.c), ~global2[_wgslsmith_index_u32(u_input.d, 29u)], ~global2[_wgslsmith_index_u32(1u, 29u)])));
    global2 = array<vec3<i32>, 29>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, var_1.a.x, 1332f, var_1.d))))))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(var_1.b), select(var_1.b, vec4<u32>(4294967295u, var_1.b.x, u_input.b.x, var_1.b.x), global0[_wgslsmith_index_u32(var_1.b.x, 32u)])), _wgslsmith_sub_vec4_u32(abs(var_1.b), select(vec4<u32>(5015u, var_1.b.x, 1u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 10077u, u_input.b.x), true))), vec4<u32>(~_wgslsmith_sub_u32(u_input.d, 4294967295u), ~u_input.b.x, func_2(Struct_1(vec4<f32>(arg_2.x, var_1.d, -488f, arg_0), var_1.b, vec2<i32>(109724i, -929i), arg_0)).b.x & var_1.b.x, 0u)), ~var_0.zz, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, -122f) + -1212f))));
    return _wgslsmith_f_op_f32(ceil(-291f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 29>();
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(655f, u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(1144f, -392f, 1277f) * vec3<f32>(745f, -572f, -313f))))), _wgslsmith_f_op_f32(func_3(func_2(Struct_1(vec4<f32>(-513f, 973f, -825f, 543f), vec4<u32>(14733u, u_input.b.x, 12318u, 10731u), vec2<i32>(u_input.c, 2147483647i), -642f)), func_2(Struct_1(vec4<f32>(-801f, -504f, -504f, -1310f), vec4<u32>(u_input.d, u_input.d, 20979u, u_input.d), vec2<i32>(u_input.c, u_input.a), 1564f)))), -932f, _wgslsmith_f_op_f32(max(-681f, -1026f))), _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(127771u, 7557u, 45873u, 52239u) ^ vec4<u32>(0u, 1u, u_input.b.x, 10549u)), _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(Struct_1(vec4<f32>(-871f, -1032f, 1730f, 1802f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21502u), vec2<i32>(-18024i, -2147483647i), -398f)).b.x, 4294967295u, ~54246u, 33875u), vec4<u32>(countOneBits(u_input.b.x), firstLeadingBit(u_input.d), ~0u, 4294967295u)), ~(abs(vec4<u32>(69684u, 8507u, 113913u, u_input.b.x)) | abs(vec4<u32>(u_input.d, 0u, 0u, 18873u)))), -select(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 13530i), ~(~vec2<i32>(u_input.c, 25108i)), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 6u)]), vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], true))), _wgslsmith_f_op_f32(f32(-1f) * -1005f));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a)), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 32u)])), var_0.b, -var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(var_0).d)))));
    let var_2 = func_2(Struct_1(var_0.a, vec4<u32>(abs(u_input.b.x), ~_wgslsmith_add_u32(var_0.b.x, 63270u), u_input.d, _wgslsmith_clamp_u32(~var_0.b.x, min(4294967295u, 4294967295u), 4294967295u)), ~var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(272f, var_1.a.x)))));
    global1 = array<vec4<i32>, 28>();
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(~(~(-30274i)), u_input.a, u_input.a), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yz))), !(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 6u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_2.b.x, 6u)], false), true)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-590f, -596f, var_0.d, -565f), var_0.a, global0[_wgslsmith_index_u32(4294967295u, 32u)])))), _wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(18017u, 0u, 4294967295u, 4294967295u)), ~var_2.c, -1884f), var_0).x, (firstLeadingBit(0i << (var_0.b.x % 32u)) << (14204u % 32u)) ^ -_wgslsmith_mod_i32(i32(-1i) * -30641i, _wgslsmith_mod_i32(var_1.c.x, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~var_2.b.wzz, select(var_2.b.wxy, var_0.b.wxw, global3[_wgslsmith_index_u32(2144u, 6u)])), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(263f * var_2.a.x))) - _wgslsmith_div_f32(2740f, var_2.a.x)) * var_2.d), u_input.b.x, _wgslsmith_f_op_vec4_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -978f) - var_2.d));
}

