struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2147483647i, 2147483647i, 3453i, 2147483647i, -24444i, 1i, -53177i, i32(-2147483648), -41475i, -6669i, i32(-2147483648), 49809i, i32(-2147483648));

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(2147483647i, -9381i, 24186i), vec3<i32>(0i, 0i, 87116i), vec3<i32>(1870i, 2147483647i, -15693i), vec3<i32>(43269i, 16288i, 38156i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-337i, -14309i, 0i), vec3<i32>(-5658i, -72594i, 23502i), vec3<i32>(-31931i, 0i, -131i), vec3<i32>(-1i, -10159i, 2046i), vec3<i32>(0i, -20862i, -1i), vec3<i32>(23309i, -1i, -43431i), vec3<i32>(-66695i, i32(-2147483648), 46228i), vec3<i32>(1i, 2147483647i, 51218i), vec3<i32>(14583i, -3634i, -50148i), vec3<i32>(-1i, 2147483647i, -2520i), vec3<i32>(1i, 2147483647i, 39528i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-34669i, 28651i, 2147483647i), vec3<i32>(2147483647i, 0i, 7668i), vec3<i32>(-7556i, -10035i, -1i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-24561i, 0i, 0i), vec3<i32>(45392i, 1i, -42045i), vec3<i32>(0i, -24237i, 0i));

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, vec3<f32>(-2259f, -963f, -1008f)), Struct_1(true, vec3<f32>(295f, 662f, -1541f)), Struct_1(true, vec3<f32>(-1000f, -676f, -1547f)), Struct_1(false, vec3<f32>(-755f, -1084f, -2516f)), Struct_1(true, vec3<f32>(167f, 152f, -972f)), Struct_1(true, vec3<f32>(1000f, 469f, -1321f)), Struct_1(true, vec3<f32>(-350f, -1115f, -1144f)), Struct_1(false, vec3<f32>(-895f, -347f, -1257f)), Struct_1(true, vec3<f32>(-865f, -477f, -1000f)), Struct_1(false, vec3<f32>(1687f, 634f, -1000f)), Struct_1(true, vec3<f32>(1235f, -1353f, 1000f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.b, 4294967295u), 13u)]);
    let var_1 = Struct_2(select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(any(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a)), all(!vec4<bool>(arg_0.a, false, arg_0.a, false)), true, arg_0.a), vec4<bool>(all(select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, true))), arg_0.a, arg_0.a, 0u <= _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, u_input.b, u_input.d), vec3<u32>(4294967295u, global2.b, u_input.d)))), vec2<bool>(!(global0[_wgslsmith_index_u32(abs(u_input.b), 13u)] >= min(var_0, var_0)), true), arg_1, true, u_input.d);
    let var_2 = _wgslsmith_dot_vec3_i32(max(reverseBits(global1[_wgslsmith_index_u32(~var_1.e, 25u)]) | -vec3<i32>(u_input.c, var_0, u_input.c), select(_wgslsmith_div_vec3_i32(vec3<i32>(39977i, global0[_wgslsmith_index_u32(global2.b, 13u)], global0[_wgslsmith_index_u32(6435u, 13u)]), countOneBits(global1[_wgslsmith_index_u32(1u, 25u)])), max(min(vec3<i32>(-27442i, u_input.c, -2147483647i), global1[_wgslsmith_index_u32(u_input.d, 25u)]), global1[_wgslsmith_index_u32(reverseBits(global2.b), 25u)]), vec3<bool>(var_1.a.x & arg_0.a, var_1.a.x, !var_1.a.x))), vec3<i32>(~(~abs(u_input.a.x)), ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, abs(-17103i), ~u_input.c), vec3<i32>(_wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(global2.b, 13u)]), var_0, _wgslsmith_add_i32(u_input.c, global0[_wgslsmith_index_u32(global2.b, 13u)])))));
    global2 = Struct_3(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), global2.b, arg_0.b.x);
    var var_3 = Struct_3(arg_0.b.x, reverseBits(abs(~min(77889u, 58326u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-394f, 870f, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2.c, arg_0.b.x)), 1146f, true)))));
    return _wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1599f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(77840u, arg_3, arg_3), vec3<u32>(u_input.d, 1u, 55963u)), abs(vec3<u32>(u_input.b, global2.b, 12407u)))), 13u)]), select(reverseBits(_wgslsmith_mod_vec3_i32(arg_2.xxx, _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(28185u, 25u)], vec3<i32>(arg_2.x, u_input.c, -12801i)))), firstLeadingBit(vec3<i32>(-2147483647i, arg_2.x, 30813i)) << (vec3<u32>(arg_3, 44776u, _wgslsmith_clamp_u32(arg_3, arg_3, 1u)) % vec3<u32>(32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, -401f)) - 906f), global2.c, _wgslsmith_div_f32(global2.a, global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(996f)) - 467f)) - global2.a));
    global3 = array<Struct_1, 11>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a, global2.c, -821f, -571f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, var_1.x, global2.a) + vec4<f32>(var_1.x, global2.c, global2.a, 250f))), -11086i <= arg_0.x)))));
    var var_3 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.x) - _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_2.x), _wgslsmith_f_op_f32(min(-1222f, -2051f))), var_2.x)), _wgslsmith_f_op_f32(func_3(Struct_1(true, _wgslsmith_f_op_vec3_f32(var_2.wzx * vec3<f32>(-1000f, 1000f, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_2.x)) * var_2)))));
    return Struct_3(var_3.b.x, ~1u, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.c, _wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1711f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = Struct_1(true, vec3<f32>(316f, -759f, -815f));
    var var_1 = all(vec2<bool>(true, all(arg_0.a) || any(arg_0.a)));
    let var_2 = !(!vec3<bool>(arg_1.x & (true && arg_1.x), !select(arg_0.b.x, false, true), arg_0.a.x));
    var var_3 = false;
    global1 = array<vec3<i32>, 25>();
    return vec2<u32>(_wgslsmith_add_u32(u_input.b, 1u >> (~(global2.b >> (global2.b % 32u)) % 32u)), 73216u);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    global2 = func_2(-vec2<i32>(u_input.a.x ^ countOneBits(-9100i), global0[_wgslsmith_index_u32(global2.b, 13u)]), -abs(vec4<i32>(2147483647i, u_input.c, 17536i, -53859i)) & -min(vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 13u)], -9613i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(arg_0.e, 13u)]), u_input.a.x, global0[_wgslsmith_index_u32(1u, 13u)], u_input.a.x), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], -1i, -108407i, 0i) | vec4<i32>(-26602i, 36201i, 1i, 0i))), arg_0.e);
    let var_0 = arg_3.a;
    let var_1 = select(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global2.b, arg_1.x) | firstLeadingBit(vec3<u32>(u_input.b, 1u, arg_1.x)), ~reverseBits(vec3<u32>(0u, arg_1.x, 84039u))), vec3<u32>(global2.b, 1u, ~max(arg_0.e, 17603u))), ~_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(global2.b, u_input.d, 41898u), vec3<u32>(u_input.b, u_input.d, 7732u), false), select(~vec3<u32>(global2.b, u_input.b, 1u), abs(vec3<u32>(24384u, 4294967295u, 0u)), false), ~_wgslsmith_mult_vec3_u32(vec3<u32>(7439u, global2.b, 4294967295u), vec3<u32>(u_input.d, 63927u, 36227u))), arg_2.yyx);
    var var_2 = _wgslsmith_mult_u32(reverseBits(21820u), arg_0.e);
    var var_3 = _wgslsmith_f_op_f32(trunc(arg_0.c.x));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.x))) - _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(select(global2.a, global2.c, true))))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-545f))))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(!vec4<bool>(false, 4294967295u > global2.b, any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0.x), arg_0.zx, vec4<f32>(1204f, -383f, _wgslsmith_f_op_f32(arg_1.c + arg_1.a), 713f), !all(vec2<bool>(any(vec4<bool>(true, arg_0.x, true, arg_0.x)), arg_0.x | true)), ~min(u_input.b & 42641u, ~u_input.d) << (13846u % 32u));
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = func_6(!arg_0.a.xxx, func_5(arg_0, abs(func_4(Struct_2(arg_0.a, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.c, false, arg_0.e), select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(arg_0.a.x, false, false), vec3<bool>(true, false, false)), abs(u_input.a.x), func_2(vec2<i32>(u_input.a.x, 1i), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global2.b, 13u)], global0[_wgslsmith_index_u32(14063u, 13u)]), vec4<i32>(u_input.a.x, u_input.c, 14062i, 24036i), global2.b))), select(vec4<bool>(true, false, arg_0.b.x || arg_0.b.x, !arg_0.a.x), select(!arg_0.a, vec4<bool>(arg_0.b.x, arg_0.d, false, true), arg_0.b.x & false), all(arg_0.a.xy)), global3[_wgslsmith_index_u32(7642u, 11u)]));
    var var_1 = true && any(arg_0.a.zwy);
    global3 = array<Struct_1, 11>();
    var var_2 = Struct_1(!select(arg_0.a.x, !all(vec2<bool>(var_0.b.x, var_0.d)), any(vec3<bool>(true, arg_0.a.x, false))), _wgslsmith_f_op_vec3_f32(-var_0.c.zzz));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_5(func_6(vec3<bool>(var_2.a, true, true), Struct_3(-694f, global2.b, 2636f)), countOneBits(vec2<u32>(0u, global2.b)), arg_0.a, global3[_wgslsmith_index_u32(~u_input.b, 11u)]).a, -1276f)))));
    return u_input.d;
}

fn func_7(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3;
    global0 = array<i32, 13>();
    let var_1 = true;
    global2 = func_5(func_6(!vec3<bool>(arg_3.a, true, true), Struct_3(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(var_0.b.x, 131f)), min(1u, func_1(Struct_2(vec4<bool>(false, false, var_0.a, false), vec2<bool>(true, false), vec4<f32>(var_0.b.x, arg_1, 1311f, arg_2.c), var_0.a, global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) * arg_1))), ~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2.b), vec2<u32>(31370u, 85420u)) >> (select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.d, arg_2.b), vec2<bool>(true, var_0.a)) % vec2<u32>(32u)))), vec4<bool>(true, any(!vec4<bool>(false, var_1, arg_3.a, false)), false, false), global3[_wgslsmith_index_u32(0u | func_4(Struct_2(vec4<bool>(true, var_1, true, false), vec2<bool>(var_1, var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(1579f, global2.c, var_0.b.x, 1000f), vec4<f32>(535f, arg_2.a, arg_2.a, 216f)), true, 0u), select(!vec3<bool>(var_0.a, arg_3.a, true), vec3<bool>(arg_3.a, var_0.a, false), !vec3<bool>(arg_3.a, false, false)), -2147483647i, arg_2).x, 11u)]);
    let var_2 = u_input.c;
    return Struct_3(_wgslsmith_f_op_f32(func_6(select(func_6(vec3<bool>(true, true, var_1), Struct_3(713f, 48146u, arg_2.c)).a.xxz, vec3<bool>(var_1, arg_3.a, var_0.a), true), Struct_3(_wgslsmith_f_op_f32(var_0.b.x * arg_3.b.x), arg_2.b, arg_1)).c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_3.b.x), var_0.b.x)), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * 878f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(~(vec3<i32>(0i ^ u_input.a.x, -u_input.c, 1i) & min(vec3<i32>(1i, 1i, -12425i), ~global1[_wgslsmith_index_u32(u_input.b, 25u)])), _wgslsmith_f_op_f32(max(404f, global2.c)), Struct_3(global2.a, ~func_1(Struct_2(vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec4<f32>(1894f, global2.c, 1104f, 1000f), true, u_input.d)), global2.c), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -235f, 1587f) + vec3<f32>(global2.c, global2.c, 1309f))))));
    let var_0 = vec4<f32>(1649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-431f))))) - 376f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f - -1349f)), func_7((global1[_wgslsmith_index_u32(global2.b, 25u)] << (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global2.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.d, global2.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(-1000f)), Struct_3(_wgslsmith_div_f32(-377f, global2.c), global2.b, _wgslsmith_f_op_f32(select(global2.c, 653f, false))), global3[_wgslsmith_index_u32(~u_input.b, 11u)]).a), func_5(func_6(vec3<bool>(true, true, select(true, true, false)), func_7(vec3<i32>(u_input.a.x, 0i, -2147483647i), _wgslsmith_f_op_f32(-global2.a), Struct_3(global2.a, 4294967295u, global2.a), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b, global2.b), 11u)])), ~func_4(Struct_2(vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec4<f32>(221f, -591f, global2.a, -1000f), true, 4001u), vec3<bool>(true, true, true), -1i, Struct_3(global2.c, 94204u, global2.c)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), func_6(func_6(vec3<bool>(false, false, false), Struct_3(global2.c, u_input.b, 790f)).a.zxy, func_7(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], 0i, 2147483647i), 1000f, Struct_3(1000f, 21323u, 201f), Struct_1(true, vec3<f32>(-353f, global2.a, global2.c)))).a, true), global3[_wgslsmith_index_u32(global2.b, 11u)]).c);
    let var_1 = global3[_wgslsmith_index_u32(func_5(Struct_2(vec4<bool>(_wgslsmith_f_op_f32(global2.c - 809f) < 698f, true, all(vec3<bool>(false, false, false)), true), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0) + var_0)), any(vec3<bool>(true, true, true)), ~func_1(Struct_2(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec4<f32>(705f, -416f, 388f, var_0.x), true, 94307u)) ^ _wgslsmith_add_u32(global2.b << (global2.b % 32u), ~0u)), abs(~vec2<u32>(~u_input.d, func_2(u_input.a, vec4<i32>(-67122i, global0[_wgslsmith_index_u32(global2.b, 13u)], -36627i, global0[_wgslsmith_index_u32(9936u, 13u)]), vec4<i32>(-35073i, 28128i, -48246i, global0[_wgslsmith_index_u32(u_input.d, 13u)]), global2.b).b)), !vec4<bool>(!any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)) || true, -147f > _wgslsmith_f_op_f32(round(var_0.x)), true), global3[_wgslsmith_index_u32(u_input.b, 11u)]).b, 11u)];
    global0 = array<i32, 13>();
    var var_2 = vec4<i32>(-48371i, -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b & 5642u)), 13u)], _wgslsmith_add_i32(~u_input.c, ~select(global0[_wgslsmith_index_u32(~u_input.d, 13u)], 1i, func_6(vec3<bool>(true, true, true), Struct_3(var_0.x, global2.b, global2.a)).d)), ~_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, global0[_wgslsmith_index_u32(global2.b, 13u)]), 20859i));
    let var_3 = min(~(~vec3<u32>(u_input.b, u_input.d, u_input.b)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, global2.b), func_6(vec3<bool>(true, true, true), Struct_3(var_1.b.x, 0u, var_0.x)).e), 39406u & global2.b), (u_input.d >> (firstLeadingBit(1u) % 32u)) & u_input.b, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(~19705i, 2147483647i) ^ ((1i | u_input.c) >> (36940u % 32u)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~var_3.x), 13u)], 64936i), _wgslsmith_add_i32(-u_input.c, abs(reverseBits(0i))), -(~var_2.x) | 55995i), _wgslsmith_add_u32(var_3.x, ~(~4294967295u)) >> (0u % 32u), abs(abs(vec2<u32>(global2.b, 77884u)) & ~func_4(Struct_2(vec4<bool>(true, var_1.a, var_1.a, true), vec2<bool>(true, false), vec4<f32>(var_1.b.x, var_0.x, var_1.b.x, -785f), true, 1u), vec3<bool>(var_1.a, var_1.a, var_1.a), global0[_wgslsmith_index_u32(1u, 13u)], Struct_3(-767f, 20428u, 1510f))));
}

