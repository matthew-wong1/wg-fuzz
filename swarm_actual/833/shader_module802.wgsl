struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<u32>(36904u, 1u)), Struct_1(vec2<u32>(54821u, 38153u)), vec4<i32>(5007i, -29495i, 1i, 16543i)), Struct_2(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(55345u, 70341u)), vec4<i32>(0i, -269i, 32283i, 26484i)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u)), vec4<i32>(i32(-2147483648), 1i, 1i, 4875i)), Struct_2(Struct_1(vec2<u32>(7240u, 1u)), Struct_1(vec2<u32>(1u, 25206u)), vec4<i32>(i32(-2147483648), 71921i, -3477i, 16997i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 41033u)), vec4<i32>(i32(-2147483648), -2043i, -40995i, 1i)), Struct_2(Struct_1(vec2<u32>(12016u, 3476u)), Struct_1(vec2<u32>(0u, 1u)), vec4<i32>(5687i, 51051i, -33501i, -24852i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 58438u)), Struct_1(vec2<u32>(17163u, 50174u)), vec4<i32>(17231i, 27869i, -25458i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(4294967295u, 22980u)), Struct_1(vec2<u32>(1u, 0u)), vec4<i32>(-45099i, -1i, -13888i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(55642u, 67896u)), Struct_1(vec2<u32>(18862u, 75467u)), vec4<i32>(0i, 92731i, 7347i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(28489u, 15461u)), vec4<i32>(12002i, -29408i, 2147483647i, 0i)), Struct_2(Struct_1(vec2<u32>(15951u, 49090u)), Struct_1(vec2<u32>(1u, 12619u)), vec4<i32>(-1i, -1i, 24451i, -52439i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 38986u)), Struct_1(vec2<u32>(0u, 33831u)), vec4<i32>(-79113i, 2147483647i, -16197i, -37489i)), Struct_2(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1u, 55074u)), vec4<i32>(29746i, 5304i, 73013i, 32473i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 73560u)), Struct_1(vec2<u32>(16405u, 4294967295u)), vec4<i32>(0i, 12466i, -8880i, 1i)), Struct_2(Struct_1(vec2<u32>(1u, 14780u)), Struct_1(vec2<u32>(4294967295u, 63610u)), vec4<i32>(-406i, -16531i, -4049i, 1i)), Struct_2(Struct_1(vec2<u32>(109168u, 1u)), Struct_1(vec2<u32>(15239u, 64289u)), vec4<i32>(74003i, i32(-2147483648), 4960i, -1i)), Struct_2(Struct_1(vec2<u32>(41224u, 15772u)), Struct_1(vec2<u32>(32677u, 50280u)), vec4<i32>(-18364i, -1i, 20101i, 25516i)), Struct_2(Struct_1(vec2<u32>(0u, 44761u)), Struct_1(vec2<u32>(1u, 80526u)), vec4<i32>(2147483647i, 2147483647i, 41576i, 28897i)), Struct_2(Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(4294967295u, 42461u)), vec4<i32>(4558i, 1i, 0i, -30527i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 38629u)), Struct_1(vec2<u32>(1u, 5540u)), vec4<i32>(-40896i, 2147483647i, -1i, -36227i)), Struct_2(Struct_1(vec2<u32>(87534u, 42770u)), Struct_1(vec2<u32>(38166u, 0u)), vec4<i32>(i32(-2147483648), -26456i, -3409i, -16409i)), Struct_2(Struct_1(vec2<u32>(21830u, 58685u)), Struct_1(vec2<u32>(0u, 1u)), vec4<i32>(i32(-2147483648), i32(-2147483648), 8320i, -1i)), Struct_2(Struct_1(vec2<u32>(14516u, 4294967295u)), Struct_1(vec2<u32>(42341u, 35113u)), vec4<i32>(-22625i, 39479i, 36998i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(5587u, 1003u)), Struct_1(vec2<u32>(43267u, 80319u)), vec4<i32>(-18877i, -39053i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 95168u)), Struct_1(vec2<u32>(1u, 1u)), vec4<i32>(3978i, i32(-2147483648), 1i, 18165i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 23426u)), Struct_1(vec2<u32>(43684u, 42651u)), vec4<i32>(23424i, i32(-2147483648), -31460i, 1i)), Struct_2(Struct_1(vec2<u32>(38702u, 31943u)), Struct_1(vec2<u32>(12325u, 28213u)), vec4<i32>(-14809i, 9491i, 6366i, 0i)), Struct_2(Struct_1(vec2<u32>(18819u, 1u)), Struct_1(vec2<u32>(1u, 61938u)), vec4<i32>(25403i, -369i, 19719i, -1i)));

var<private> global1: array<f32, 26>;

var<private> global2: array<u32, 13>;

var<private> global3: bool = true;

var<private> global4: Struct_1 = Struct_1(vec2<u32>(1u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = Struct_1(vec2<u32>(abs(~(~global4.a.x)), ~(~0u)));
    var var_1 = -93012i;
    global1 = array<f32, 26>();
    let var_2 = -4435i;
    let var_3 = vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(13122u, reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(20189u, 13u)], 29783u), max(u_input.a.x, 1u))), countOneBits(_wgslsmith_div_u32(~22726u, arg_1.x))), 1u);
    return !all(!vec3<bool>(!arg_2, arg_2, arg_2 || arg_2));
}

fn func_3() -> i32 {
    var var_0 = Struct_5(Struct_3(~min(0u, global4.a.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, -1439f, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 26u)], 607f, global1[_wgslsmith_index_u32(1u, 26u)])))), firstLeadingBit(abs(vec3<i32>(1i, -18655i, 4463i) << (vec3<u32>(25257u, u_input.a.x, global4.a.x) % vec3<u32>(32u)))), ~(u_input.a.x | 53560u)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), Struct_2(Struct_1(select(vec2<u32>(0u, 4294967295u), countOneBits(global4.a), any(vec3<bool>(false, false, false)))), Struct_1(select(global4.a, vec2<u32>(1u, global4.a.x), false)), select(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -35830i, -1i, 0i), vec4<i32>(-1i, -435i, -2147483647i, -6124i)) << ((vec4<u32>(u_input.a.x, 1u, 1u, 67342u) | vec4<u32>(0u, 12503u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), true)), !(!any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-1406f - -953f));
    let var_1 = -1000f;
    let var_2 = Struct_5(var_0.a, select(var_0.b, select(!select(var_0.b, var_0.b, vec2<bool>(var_0.a.b, true)), var_0.b, var_0.b), true), Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(global4.a, vec2<u32>(var_0.a.e, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), Struct_1(countOneBits(u_input.a)), ~vec4<i32>(var_0.a.d.x, -var_0.c.c.x, var_0.c.c.x, 35007i | var_0.c.c.x)), false, var_0.e);
    var var_3 = select(select(vec3<bool>(false, true, var_0.a.b || !var_2.d), !(!select(vec3<bool>(true, true, var_0.b.x), vec3<bool>(false, var_0.a.b, var_2.a.b), vec3<bool>(var_2.a.b, var_2.b.x, true))), vec3<bool>(var_2.b.x, true & (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12177u, 13u)], 26u)] >= -1149f), var_0.d)), select(vec3<bool>(true, true, var_2.b.x), select(!(!vec3<bool>(var_0.a.b, var_2.a.b, var_0.b.x)), select(!vec3<bool>(var_0.d, var_2.d, false), vec3<bool>(var_0.b.x, var_0.d, var_0.a.b), var_0.d), false), !select(select(vec3<bool>(false, var_2.a.b, true), vec3<bool>(true, var_0.a.b, false), var_0.d), !vec3<bool>(var_0.a.b, var_0.b.x, var_2.a.b), true)), all(!(!vec3<bool>(var_2.b.x, var_2.a.b, true))) || var_0.a.b);
    var var_4 = Struct_1(~min(~_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global4.a.x, 13u)], 4294967295u), vec2<u32>(var_2.c.a.a.x, 34458u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a, var_2.c.a.a))));
    return var_2.a.d.x;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global3 = !(arg_0.x <= (_wgslsmith_mult_i32(36448i, arg_0.x ^ arg_0.x) >> (global4.a.x % 32u)));
    var var_0 = Struct_5(Struct_3(_wgslsmith_sub_u32(global4.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u) << ((u_input.a.x & 1u) % 32u)), true, vec3<f32>(global1[_wgslsmith_index_u32(global4.a.x, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1826f, global1[_wgslsmith_index_u32(33872u, 26u)], false))))), vec3<i32>(arg_0.x, 1i, arg_0.x) >> ((min(vec3<u32>(10636u, 40427u, u_input.a.x), vec3<u32>(8545u, 1u, 0u)) << (countOneBits(vec3<u32>(19894u, global2[_wgslsmith_index_u32(global4.a.x, 13u)], global4.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(4294967295u ^ firstLeadingBit(global4.a.x))), vec2<bool>(any(vec4<bool>(any(vec2<bool>(true, false)), true, false, true)), func_2(~vec2<u32>(8540u, 4294967295u), vec2<u32>(global4.a.x, 34449u), false, min(global4.a.x, 0u)) != any(vec2<bool>(false, false))), global0[_wgslsmith_index_u32(global4.a.x, 28u)], arg_0.x < arg_0.x, -834f);
    let var_1 = Struct_5(var_0.a, vec2<bool>(true, all(!vec4<bool>(false, var_0.d, true, var_0.b.x))), Struct_2(Struct_1(abs(var_0.c.b.a)), var_0.c.a, -(vec4<i32>(-11731i, var_0.a.d.x, -1i, 2147483647i) ^ vec4<i32>(-2147483647i, var_0.a.d.x, arg_0.x, arg_0.x))), !any(vec2<bool>(true, true)), -439f);
    var var_2 = ~6198u;
    let var_3 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.c.x, -2147483647i, var_0.a.d.x), var_1.c.c.yyy) & _wgslsmith_div_vec3_i32(vec3<i32>(26531i, var_1.c.c.x, var_0.c.c.x), vec3<i32>(-10133i, 1i, -160i) & arg_0.xyy), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.d.x, -7513i, _wgslsmith_div_i32(var_1.c.c.x, var_1.a.d.x)), vec3<i32>(func_3(), _wgslsmith_dot_vec2_i32(var_1.a.d.xx, vec2<i32>(26787i, -160i)), 1i))) >= _wgslsmith_add_i32(var_1.a.d.x, arg_0.x);
    return -var_1.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 313f;
    let var_1 = countOneBits(vec4<i32>(0i, -(~func_1(vec4<i32>(2118i, 2147483647i, -8689i, -56846i))), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 10990i, -4210i), vec3<i32>(-17593i, -2147483647i, 1i))), reverseBits(-1i << (0u % 32u)), 1i), -1i >> (~global4.a.x % 32u)));
    global1 = array<f32, 26>();
    let var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(countOneBits(var_1.x)), (var_1.x << (global2[_wgslsmith_index_u32(global4.a.x, 13u)] % 32u)) >> ((0u & global2[_wgslsmith_index_u32(1u, 13u)]) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.ww, var_1.wy), ~(~var_1.xy))), firstLeadingBit(var_1.x));
    let var_3 = vec2<i32>(-var_1.x, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(min(var_1.xxx, var_1.wyz), var_1.yzy), 15775i >> (global4.a.x % 32u)));
    var var_4 = Struct_5(Struct_3(~(abs(35805u) & select(0u, 1u, false)), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-308f, 166f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 823f)), -1387f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, -938f, global1[_wgslsmith_index_u32(global4.a.x, 26u)]) - vec3<f32>(var_0, var_0, global1[_wgslsmith_index_u32(1u, 26u)]))), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))))), min(var_1.wyx, var_1.wxz), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18528u, 50387u, u_input.a.x, 13444u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(67934u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x)) ^ _wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(global4.a.x, 13u)]), 0u)), !vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32((4294967295u >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(countOneBits(30851u), 13u)], 42177u) % 32u)) ^ _wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, global2[_wgslsmith_index_u32(~1179u >> (global2[_wgslsmith_index_u32(~u_input.a.x, 13u)] % 32u), 13u)]), 13u)], 28u)], all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), !(-43203i == var_3.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + _wgslsmith_f_op_f32(-var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_4.c.b.a.x, 0u), vec4<u32>(4294967295u, global4.a.x, u_input.a.x, 1u)), u_input.a.x, 1u ^ var_4.c.a.a.x), 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.e * var_0) - _wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.e, _wgslsmith_f_op_f32(378f + -1548f))) * var_0))), global4.a, abs(var_4.c.a.a));
}

