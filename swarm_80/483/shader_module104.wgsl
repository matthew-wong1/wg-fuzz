struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(34160u, 6836u, 4294967295u), vec3<u32>(26161u, 0u, 0u), vec3<u32>(1u, 4294967295u, 35348u), vec3<u32>(1u, 1992u, 4294967295u), vec3<u32>(2719u, 0u, 4294967295u), vec3<u32>(34252u, 1u, 39099u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 28086u), vec3<u32>(0u, 15935u, 1u), vec3<u32>(1u, 18549u, 65331u), vec3<u32>(55368u, 39441u, 5323u), vec3<u32>(52336u, 0u, 44934u), vec3<u32>(51118u, 1u, 0u), vec3<u32>(0u, 4294967295u, 3614u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 54637u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(5965u, 111250u, 46067u), vec3<u32>(0u, 120623u, 12530u), vec3<u32>(25582u, 18726u, 4294967295u), vec3<u32>(27042u, 25955u, 9529u), vec3<u32>(4294967295u, 16258u, 1u), vec3<u32>(4294967295u, 74231u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 28862u, 9518u), vec3<u32>(0u, 59847u, 41331u));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 8> = array<u32, 8>(4294967295u, 24554u, 0u, 5653u, 6006u, 4294967295u, 0u, 69536u);

var<private> global3: bool;

var<private> global4: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(487f, -582f, 356f), vec3<f32>(107f, -519f, 1872f), vec3<f32>(1000f, 3001f, -234f), vec3<f32>(383f, -662f, -475f), vec3<f32>(-498f, -260f, -689f), vec3<f32>(-2941f, -1744f, 115f), vec3<f32>(120f, 263f, 1233f), vec3<f32>(-419f, 355f, -787f), vec3<f32>(903f, -146f, -731f), vec3<f32>(701f, -815f, 3001f), vec3<f32>(272f, 816f, -631f), vec3<f32>(1143f, 817f, 212f), vec3<f32>(549f, -314f, 175f), vec3<f32>(-1304f, 200f, -1067f), vec3<f32>(2209f, 765f, 1573f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(global1.wz << (_wgslsmith_div_vec2_u32(global1.wy, vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b), ~u_input.b)) % vec2<u32>(32u)), ~abs(~_wgslsmith_add_vec2_u32(global1.wz, vec2<u32>(43275u, 0u))));
    var_0 = firstLeadingBit(global1.ww);
    let var_1 = ~2147483647i < u_input.a;
    global1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(28312u, select(4294967295u, var_0.x, var_1), true), ~abs(u_input.b), countOneBits(73894u) ^ _wgslsmith_sub_u32(global1.x, 63160u)), u_input.b), var_0.x, u_input.b, u_input.b);
    global3 = true;
    return (9821i == u_input.a) || false;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_3(arg_0.a);
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(21647u, 0u, 62185u, arg_0.a.d.x), vec4<u32>(0u, 5825u, 4294967295u, u_input.b)), ~vec4<u32>(global1.x, 0u, u_input.b, u_input.b)), vec4<u32>(_wgslsmith_sub_u32(u_input.b, global2[_wgslsmith_index_u32(max(arg_0.a.d.x, var_0.a.d.x), 8u)]), max(0u, 0u), min(69424u, global2[_wgslsmith_index_u32(1u, 8u)]) << (~1u % 32u), abs(u_input.b) >> (1u % 32u))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(arg_0.a.d.x, u_input.b, 1u, 1458u)), ~vec4<u32>(abs(30440u), _wgslsmith_add_u32(arg_0.a.d.x, var_0.a.d.x), u_input.b ^ 40143u, abs(16928u))));
    var var_2 = firstLeadingBit(~_wgslsmith_clamp_vec2_u32(~select(arg_0.a.d.yx, var_0.a.d.xz, var_0.a.c.x), ~var_0.a.d.yy, vec2<u32>(_wgslsmith_clamp_u32(42550u, 59786u, global2[_wgslsmith_index_u32(u_input.b, 8u)]), ~1u)));
    var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global1.xz, firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(42633u, 4294967295u), vec2<u32>(69842u, 54546u), vec2<u32>(var_0.a.d.x, 1u)))), ~(~(~var_0.a.d.yx))), ~global1.yz ^ select(vec2<u32>(u_input.b, global1.x), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(23876u, var_0.a.d.x), vec2<u32>(u_input.b, u_input.b))), select(select(arg_0.a.c, arg_0.a.c, false), var_0.a.c, var_0.a.c.x)));
    var_2 = var_0.a.d.zz;
    return !vec2<bool>(!(!arg_3.x), all(arg_3));
}

fn func_2() -> vec2<i32> {
    var var_0 = !(!(select(false, true, true) | true));
    let var_1 = Struct_2(1000f, func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(1673f - -1765f), u_input.a, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(45346u, u_input.b, 37384u), vec3<u32>(1u, 29173u, global1.x)), vec2<i32>(u_input.a, -19595i))), 8500i, vec4<f32>(-374f, -214f, _wgslsmith_f_op_f32(-1646f - _wgslsmith_f_op_f32(1118f * -1056f)), _wgslsmith_div_f32(-1000f, -797f)), vec4<bool>(false, !(u_input.a != u_input.a), func_3(), true)), Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1025f, -1181f)), _wgslsmith_f_op_f32(floor(694f))))), _wgslsmith_div_i32(firstLeadingBit(~(-35683i)), -28337i), !func_4(Struct_3(Struct_1(-1000f, 1i, vec2<bool>(false, false), vec3<u32>(0u, global1.x, global2[_wgslsmith_index_u32(1u, 8u)]), vec2<i32>(u_input.a, -1i))), 2147483647i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(113f, -551f, -1000f, -689f), vec4<f32>(116f, 297f, 448f, -921f))), vec4<bool>(true, true, true, true)), ~(~(global1.zyx << (global0[_wgslsmith_index_u32(2378u, 26u)] % vec3<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), max(abs(vec2<i32>(0i, -2147483647i)), vec2<i32>(8435i, u_input.a)))), func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-1000f - -725f), u_input.a, vec2<bool>(false, true), global1.xwz, vec2<i32>(2147483647i, 47206i))), -27954i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1559f, 1072f, -264f, -1467f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1133f, -3006f, -866f, 1243f) + vec4<f32>(931f, 1908f, 2423f, 1499f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, 402f, -2677f, -510f))))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), any(vec2<bool>(false, true)))).x);
    var var_2 = Struct_3(var_1.c);
    var var_3 = reverseBits((-_wgslsmith_add_vec4_i32(vec4<i32>(-5439i, 1i, -2147483647i, -25132i), vec4<i32>(-1602i, var_2.a.b, -33458i, 1i)) >> (vec4<u32>(u_input.b, max(var_2.a.d.x, u_input.b), ~4294967295u, ~var_1.c.d.x) % vec4<u32>(32u))) >> (vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(51082u, 4294967295u, 4294967295u) ^ vec3<u32>(var_1.c.d.x, 24994u, var_1.c.d.x), select(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.d.x, 8u)], 26u)], var_1.c.d, var_2.a.c.x)), ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 8u)], var_2.a.d.x), ~65168u) % vec4<u32>(32u)));
    global3 = any(!vec3<bool>(func_4(Struct_3(var_1.c), var_3.x ^ var_2.a.e.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.a, var_2.a.a, var_1.c.a, 485f))), !vec4<bool>(false, var_1.c.c.x, false, false)).x, _wgslsmith_f_op_f32(floor(var_1.a)) > 869f, true));
    return abs(-(var_3.xz | (var_2.a.e & var_1.c.e)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), arg_1.a, arg_1.a))));
    let var_1 = _wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(48252u, abs(arg_2.x), u_input.b, 4294967295u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1037f, 1927f)), 366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a)))) + _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.b), 15u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(exp2(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(677f)), arg_1.a))) - global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 21462u) << (arg_2.x % 32u), 15u)]));
    global4 = array<vec3<f32>, 15>();
    var var_3 = select(vec4<bool>(arg_3.x, func_4(Struct_3(Struct_1(143f, arg_1.e.x, arg_3.zx, vec3<u32>(arg_2.x, global1.x, 4294967295u), arg_1.e)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, 0i, arg_1.b, -35708i) | vec4<i32>(arg_1.b, 1i, 2147483647i, u_input.a), select(vec4<i32>(arg_1.b, u_input.a, -2147483647i, -2147483647i), vec4<i32>(u_input.a, arg_1.b, u_input.a, 38781i), arg_1.c.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2027f, arg_1.a, arg_1.a, var_0.x))), vec4<bool>(arg_1.c.x | true, arg_1.c.x, true, var_2.x <= 384f)).x, u_input.a >= _wgslsmith_sub_i32(countOneBits(64619i), max(2147483647i, 96075i)), arg_1.a < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(768f, arg_1.a))))), select(select(select(!vec4<bool>(true, arg_3.x, arg_3.x, true), select(vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x), vec4<bool>(true, arg_3.x, true, false), true), true), vec4<bool>(true, any(arg_3.xz), true, global2[_wgslsmith_index_u32(arg_0.x, 8u)] != global2[_wgslsmith_index_u32(57050u, 8u)]), vec4<bool>(true, !arg_1.c.x, true, arg_1.c.x)), vec4<bool>(true, true, true, true), func_2().x < select(u_input.a << (arg_2.x % 32u), firstTrailingBit(arg_1.b), arg_1.a < arg_1.a)), select(select(select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(false, false, arg_1.c.x, arg_1.c.x), arg_1.c.x), !vec4<bool>(true, arg_1.c.x, false, true), vec4<bool>(true, true, false, arg_1.c.x)), !(!vec4<bool>(arg_1.c.x, arg_3.x, false, arg_1.c.x)), arg_1.c.x), select(select(select(vec4<bool>(false, arg_3.x, arg_3.x, arg_1.c.x), vec4<bool>(false, false, arg_3.x, false), vec4<bool>(true, false, true, arg_1.c.x)), select(vec4<bool>(arg_1.c.x, true, true, false), vec4<bool>(arg_1.c.x, arg_3.x, true, true), true), !vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_3.x)), select(!vec4<bool>(false, arg_3.x, arg_1.c.x, false), vec4<bool>(true, true, arg_3.x, arg_1.c.x), vec4<bool>(false, true, true, true)), arg_1.c.x), vec4<bool>(true, true, any(select(vec3<bool>(true, true, arg_3.x), arg_3, arg_1.c.x)), true)));
    return !(!(!vec3<bool>(arg_3.x, func_3(), arg_3.x)));
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    global2 = array<u32, 8>();
    global2 = array<u32, 8>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)) * arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.b, 15u)]), global4[_wgslsmith_index_u32(5802u, 15u)], !select(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), true, arg_1.x) && ((~1u == (global1.x | u_input.b)) & select(true, all(arg_1.xy), !arg_1.x))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -445f)) * arg_0), i32(-1i) * -14345i, vec2<bool>(true, any(!vec2<bool>(false, arg_1.x))), ~global1.zzy, countOneBits(vec2<i32>(u_input.a & arg_3.x, abs(14118i)))));
    return var_2.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(func_6(-264f, func_5(vec3<u32>(abs(54299u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_2.a.d.x, 8u)], arg_2.a.d.x, 5818u), ~u_input.b), Struct_1(arg_2.a.a, u_input.a, arg_3.c, vec3<u32>(arg_0.x, arg_1.x, u_input.b), func_2()), ~max(arg_1, arg_1), select(!vec3<bool>(arg_2.a.c.x, false, false), vec3<bool>(true, false, arg_3.c.x), false & arg_2.a.c.x)), 402f, select(~(vec3<i32>(arg_2.a.e.x, -45474i, -15696i) >> (vec3<u32>(arg_3.d.x, global2[_wgslsmith_index_u32(arg_2.a.d.x, 8u)], 1u) % vec3<u32>(32u))), ~select(vec3<i32>(arg_3.e.x, arg_3.e.x, arg_2.a.e.x), vec3<i32>(u_input.a, 2147483647i, -45003i), arg_3.c.x), !vec3<bool>(arg_3.c.x, arg_2.a.c.x, arg_2.a.c.x))));
    global3 = true;
    global2 = array<u32, 8>();
    let var_1 = firstLeadingBit(i32(-1i) * -15408i);
    var var_2 = Struct_2(var_0.a.a, var_0.a.c, func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a))))), select(vec3<bool>(true, true, true), func_5(arg_3.d, var_0.a, firstLeadingBit(arg_1), select(vec3<bool>(true, arg_2.a.c.x, arg_3.c.x), vec3<bool>(arg_3.c.x, var_0.a.c.x, true), vec3<bool>(true, var_0.a.c.x, false))), select(!vec3<bool>(true, true, arg_3.c.x), vec3<bool>(false, true, arg_2.a.c.x), true)), 1f, abs(-countOneBits(vec3<i32>(arg_2.a.b, -1i, arg_2.a.e.x)))), arg_3.c.x);
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1527f), _wgslsmith_f_op_f32(sign(-1000f)), arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1633f)) * -944f));
}

fn func_7(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~global1.yz & ~vec2<u32>(u_input.b, 100501u), ~global1.yy << (global1.zz % vec2<u32>(32u))), ~global1.zx), global1.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(global1.x), _wgslsmith_dot_vec2_u32(global1.zw, vec2<u32>(0u, global1.x) ^ vec2<u32>(global1.x, 12501u)), _wgslsmith_mult_u32(global1.x, global2[_wgslsmith_index_u32(global1.x, 8u)]) & global1.x) | global2[_wgslsmith_index_u32(~(~u_input.b), 8u)], 8u)]);
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-384f, 837f)), 14190i, func_5(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), vec3<u32>(var_0.x, 0u, 0u)), Struct_1(arg_0.x, -2147483647i >> (1u % 32u), vec2<bool>(true, true), abs(~vec3<u32>(18645u, 4294967295u, u_input.b)), reverseBits(firstTrailingBit(vec2<i32>(-1i, -2147483647i)))), _wgslsmith_mult_vec4_u32(~min(vec4<u32>(1u, u_input.b, global2[_wgslsmith_index_u32(6833u, 8u)], 4831u), vec4<u32>(38810u, global2[_wgslsmith_index_u32(87038u, 8u)], 34683u, u_input.b)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.b, 4294967295u), vec4<u32>(39266u, global2[_wgslsmith_index_u32(41737u, 8u)], var_0.x, var_0.x)))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), func_5(global1.xxw, Struct_1(arg_0.x, u_input.a, vec2<bool>(false, false), global0[_wgslsmith_index_u32(81788u, 26u)], vec2<i32>(u_input.a, -1i)), ~vec4<u32>(global1.x, 46482u, 19449u, global2[_wgslsmith_index_u32(17921u, 8u)]), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))).yy, firstLeadingBit(func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), false), arg_0.x, _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, -20682i, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a))).d), firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-42519i, u_input.a)), vec2<i32>(u_input.a, 34799i))) << (global1.zw % vec2<u32>(32u)));
    global0 = array<vec3<u32>, 26>();
    return func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - arg_0.x))), select(select(!(!vec3<bool>(var_1.c.x, var_1.c.x, true)), select(vec3<bool>(var_1.c.x, false, false), !vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(var_1.c.x, true, var_1.c.x)), !var_1.c.x == (4294967295u < global1.x)), !(!vec3<bool>(var_1.c.x, false, var_1.c.x)), var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(1157f * var_1.a)))), vec3<i32>(var_1.b, -644i, -abs(var_1.e.x)));
}

fn func_8(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(-1646f, _wgslsmith_f_op_f32(-arg_0.a))), u_input.a, arg_0.c, arg_0.d, ~vec2<i32>(func_6(_wgslsmith_f_op_f32(max(arg_0.a, 1334f)), vec3<bool>(arg_0.c.x, false, true), 1277f, abs(vec3<i32>(-29982i, arg_0.e.x, arg_0.e.x))).b, -2147483647i & arg_0.e.x));
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))))), 39820i, !arg_0.c, _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32774u, 0u), var_0.d), ~u_input.b, _wgslsmith_mod_u32(u_input.b, 6756u)), firstLeadingBit(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(57157u, 8u)], global1.x, global1.x))), select(global1.yzw, global1.xyz, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), vec2<i32>(3143i, -40995i));
    global1 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~8281u, var_1, u_input.b ^ ~(~var_2.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, ~24317u, func_7(vec4<f32>(var_0.a, var_0.a, 399f, -1870f)).d.x, _wgslsmith_mod_u32(arg_1, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(31317u, 4294967295u, 1u, u_input.b) >> (vec4<u32>(1u, 4294967295u, var_2.d.x, arg_0.d.x) % vec4<u32>(32u)), vec4<u32>(24303u, 4294967295u, global2[_wgslsmith_index_u32(37822u, 8u)], 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(func_7(vec4<f32>(arg_0.a, -1437f, -666f, 1733f)).d.zx, ~vec2<u32>(var_1, arg_1)), var_0.d.x, func_6(819f, vec3<bool>(var_2.c.x, false, var_0.c.x), var_2.a, vec3<i32>(19186i, 0i, -74648i)).d.x >> (1u % 32u), _wgslsmith_sub_u32(4294967295u, func_6(717f, vec3<bool>(var_0.c.x, var_0.c.x, arg_0.c.x), -446f, vec3<i32>(-6830i, -40854i, 1i)).d.x))));
    let var_3 = max(~countOneBits(vec4<u32>(27286u, _wgslsmith_dot_vec3_u32(var_2.d, vec3<u32>(0u, 4294967295u, 0u)), 4294967295u, 1u)), vec4<u32>(~_wgslsmith_mod_u32(39416u, global2[_wgslsmith_index_u32(1u, 8u)]), var_1, var_2.d.x, ~firstTrailingBit(0u)) << (vec4<u32>(arg_1, arg_1, 78314u, global1.x) % vec4<u32>(32u)));
    return StorageBuffer(-546f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(abs(vec3<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61988u, 8u)], 8u)], global2[_wgslsmith_index_u32(6654u, 8u)])), _wgslsmith_div_vec4_u32(vec4<u32>(76458u, 4881u, 42631u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 1u, global2[_wgslsmith_index_u32(3713u, 8u)], u_input.b)), Struct_3(Struct_1(2082f, 0i, vec2<bool>(true, false), vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(0u, 8u)], u_input.b), vec2<i32>(u_input.a, -26791i))), Struct_1(204f, u_input.a, vec2<bool>(true, true), global0[_wgslsmith_index_u32(global1.x, 26u)], vec2<i32>(-1i, -48610i)))))), ~select(u_input.b, 4294967295u, select(select(false, false, true), true, u_input.a >= u_input.a)));
}

