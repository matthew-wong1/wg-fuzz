struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(70723u, -1854f), Struct_1(11224u, -564f), Struct_1(17636u, 329f), Struct_1(27721u, -1105f), Struct_1(60321u, 357f), Struct_1(4294967295u, 228f), Struct_1(1u, 577f), Struct_1(0u, 661f), Struct_1(2376u, -1321f), Struct_1(1u, 1596f), Struct_1(0u, -246f), Struct_1(31553u, 1000f), Struct_1(65412u, 348f), Struct_1(17324u, 1000f), Struct_1(8415u, 1210f), Struct_1(1u, 1732f), Struct_1(20005u, 772f), Struct_1(0u, -388f), Struct_1(88957u, -624f), Struct_1(22267u, -1064f), Struct_1(2132u, -315f), Struct_1(64236u, 966f), Struct_1(4294967295u, -403f), Struct_1(0u, -1000f), Struct_1(4294967295u, 1299f), Struct_1(6275u, 202f), Struct_1(40212u, -317f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<bool> {
    global1 = -269f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2485f)));
    global2 = vec2<bool>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 76657u, 6762u, 4294967295u), vec4<u32>(0u, 0u, 0u, 25058u)), select(vec4<u32>(4294967295u, 52085u, 17823u, 29919u), vec4<u32>(4294967295u, 27716u, 1u, 1488u), vec4<bool>(false, true, true, true))) == _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), global2.x);
    let var_0 = Struct_2((u_input.c.xyx << (vec3<u32>(~4294967295u, max(29125u, 1u), ~0u) % vec3<u32>(32u))) << (vec3<u32>(49766u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10132u, 30526u), vec2<u32>(35803u, 0u)), 1u, 1u), ~max(1u, 11008u)) % vec3<u32>(32u)), vec2<bool>(all(!select(vec2<bool>(true, global2.x), vec2<bool>(true, global2.x), global2.x)), true), Struct_1(_wgslsmith_dot_vec4_u32(min(select(vec4<u32>(41460u, 4294967295u, 0u, 1u), vec4<u32>(25380u, 1u, 0u, 62384u), vec4<bool>(global2.x, false, global2.x, true)), firstLeadingBit(vec4<u32>(95947u, 5089u, 5154u, 25739u))), _wgslsmith_add_vec4_u32(min(vec4<u32>(16129u, 73060u, 39106u, 1u), vec4<u32>(60404u, 0u, 0u, 4294967295u)), ~vec4<u32>(33960u, 4294967295u, 1u, 1u))), 1f), max(~u_input.c, u_input.c));
    global3 = array<Struct_1, 27>();
    return vec4<bool>(any(vec4<bool>(any(vec4<bool>(global2.x, false, var_0.b.x, true)) & var_0.b.x, true, true & any(vec3<bool>(true, true, global2.x)), all(select(vec2<bool>(false, global2.x), var_0.b, vec2<bool>(false, global2.x))))), select(true, all(!(!vec4<bool>(var_0.b.x, true, false, true))), true), all(!select(vec4<bool>(var_0.b.x, true, false, true), vec4<bool>(false, false, false, false), !vec4<bool>(global2.x, global2.x, false, true))), global2.x);
}

fn func_2() -> Struct_2 {
    var var_0 = 0u;
    var var_1 = func_3();
    global1 = _wgslsmith_f_op_f32(sign(-320f));
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(min(-2147483647i, u_input.a.x) | -2147483647i, u_input.b.x, 558i), vec3<i32>(13700i, _wgslsmith_sub_i32(8554i, 57311i), abs(0i)) ^ u_input.b), vec2<bool>(global2.x, false), global3[_wgslsmith_index_u32(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(53882u, countOneBits(4294967295u)), min(~vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4601u))) % 32u), 27u)], -vec4<i32>(~(i32(-1i) * -2147483647i), 1i, 2147483647i, abs(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c))));
    var var_3 = u_input.b.x;
    return Struct_2(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, min(_wgslsmith_clamp_i32(6631i, var_2.d.x, u_input.b.x), ~(-1i))), var_2.a.x, ~_wgslsmith_div_i32(1i, -var_2.a.x)), vec2<bool>(4294967295u >= var_2.c.a, select(true, true, 0u >= var_2.c.a)), Struct_1(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_2.c.a, var_2.c.a), firstLeadingBit(vec2<u32>(1u, 4713u)), var_2.c.b > 1893f), firstTrailingBit(vec2<u32>(0u, var_2.c.a))), var_2.c.b), vec4<i32>(34679i, ~(-2147483647i), 0i, u_input.b.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_2(~(-_wgslsmith_div_vec3_i32(u_input.c.zyw, u_input.c.xwy) << (~firstTrailingBit(vec3<u32>(78611u, 4294967295u, arg_2.c.a)) % vec3<u32>(32u))), !(!func_2().b), Struct_1(_wgslsmith_mult_u32(~firstLeadingBit(28751u), reverseBits(arg_2.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(186f, 138f)))) - _wgslsmith_div_f32(-942f, _wgslsmith_f_op_f32(f32(-1f) * -1636f)))), ~(~firstLeadingBit(u_input.c)));
    let var_1 = func_2().c;
    let var_2 = arg_2;
    let var_3 = arg_2;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b)), _wgslsmith_f_op_f32(-arg_2.c.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 1058f) * arg_0)));
    return select(var_0.b, var_0.b, var_0.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.c.x)), vec2<i32>(u_input.c.x, arg_0.d.x)), u_input.a.x)) >> (vec2<u32>(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(71336u, 1u), vec2<u32>(arg_0.c.a, arg_2)), _wgslsmith_mult_u32(arg_1, _wgslsmith_add_u32(4294967295u, arg_0.c.a))), firstTrailingBit(firstLeadingBit(28168u ^ arg_2))) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(194f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(-1027f * arg_0.c.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-664f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) + _wgslsmith_f_op_f32(select(-296f, _wgslsmith_f_op_f32(round(arg_0.c.b)), arg_2 > arg_0.c.a)))));
    global1 = _wgslsmith_f_op_f32(-480f - arg_0.c.b);
    var var_1 = _wgslsmith_f_op_f32(arg_0.c.b * 1389f);
    var_0 = arg_0.a.zz;
    return Struct_2(u_input.c.zzw, !vec2<bool>(func_2().b.x, global2.x), global3[_wgslsmith_index_u32(abs(~arg_0.c.a ^ arg_2) & ~(~132u), 27u)], _wgslsmith_add_vec4_i32(u_input.c, reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-19909i, 50751i, arg_0.a.x, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-18417i, var_0.x, 0i, u_input.b.x), vec4<i32>(u_input.a.x, -41185i, arg_0.a.x, 0i))))));
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f))));
    var var_0 = func_5(Struct_2(vec3<i32>(u_input.c.x, u_input.a.x, firstLeadingBit(26556i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), func_4(-2136f, 367f, func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 468f)) * vec2<f32>(-1285f, -1482f))), global3[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_div_vec4_i32(u_input.c, ~vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x))), ~(~1u), ~(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(41221u, 28185u)) >> ((_wgslsmith_clamp_u32(1u, 31383u, 1u) | abs(57278u)) % 32u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)), true)) + -976f);
    let var_1 = 34209i;
    return Struct_2(vec3<i32>(-u_input.c.x, _wgslsmith_add_i32(u_input.b.x, 5731i), ~(~min(var_1, var_0.d.x))), vec2<bool>(global2.x, false), global3[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, 4294967295u, var_0.c.a), vec3<u32>(var_0.c.a, 73036u, 1u)))), 27u)], -var_0.d);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_2().c;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, func_1().c.b, arg_0.c.b))));
    var var_3 = func_1().c;
    var_1 = global3[_wgslsmith_index_u32(reverseBits(abs(abs(~var_1.a))), 27u)];
    return func_5(Struct_2(vec3<i32>(-func_1().d.x, (2147483647i << (var_1.a % 32u)) ^ -12731i, -(~0i)), vec2<bool>(!(!arg_0.b.x), var_0.b.x || false), func_5(arg_0, 1u, ~7114u).c, -reverseBits(vec4<i32>(arg_0.a.x, -1i, var_0.a.x, 1i))), var_1.a, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, arg_0.c.a), ~118697u), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2706u, arg_1, 25695u), vec4<u32>(arg_1, 0u, 1u, 1u))), 38218u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 27>();
    var var_0 = func_6(func_1(), ~(10517u << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23741u, 1u, 6227u, 37932u), vec4<u32>(1u, 0u, 0u, 4294967295u)), 4294967295u) % 32u)));
    global2 = vec2<bool>(func_5(func_1(), ~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, var_0.c.a), ~var_0.c.a), ~(~1u))).b.x, global2.x);
    global0 = _wgslsmith_f_op_f32(-var_0.c.b);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(func_5(Struct_2(vec3<i32>(-1i, u_input.b.x, var_0.d.x) | vec3<i32>(0i, 2147483647i, -17264i), var_0.b, func_6(Struct_2(vec3<i32>(-2147483647i, -42119i, u_input.b.x), vec2<bool>(true, global2.x), global3[_wgslsmith_index_u32(var_0.c.a, 27u)], var_0.d), 61181u).c, vec4<i32>(u_input.b.x, 89860i, -19950i, -11743i) << (vec4<u32>(0u, var_0.c.a, 30714u, 34588u) % vec4<u32>(32u))), ~25738u >> (var_0.c.a % 32u), _wgslsmith_mod_u32(~1643u, _wgslsmith_mod_u32(var_0.c.a, 1u))).d.x, (var_0.d.x >> (var_0.c.a % 32u)) << (~51871u % 32u), var_0.d.x), _wgslsmith_add_vec3_i32(~func_5(Struct_2(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), vec2<bool>(false, var_0.b.x), global3[_wgslsmith_index_u32(21220u, 27u)], vec4<i32>(-2147483647i, -6287i, -1i, -18748i)), 1u, 1u).a, max(var_0.d.xwz, var_0.d.xzx)));
    var var_2 = global3[_wgslsmith_index_u32(~abs(0u), 27u)];
    var var_3 = Struct_2(_wgslsmith_add_vec3_i32(func_2().a, max(var_0.d.wzy, vec3<i32>(var_1, 1360i << (1u % 32u), u_input.a.x))), var_0.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(40476u, 33359u), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(14817u, 0u), vec2<u32>(var_2.a, 106494u)))), 27u)], vec4<i32>(func_5(func_6(func_1(), var_0.c.a << (0u % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(62143u, var_2.a), 0u), 14093u).d.x, -_wgslsmith_mod_i32(var_1, -var_1), _wgslsmith_dot_vec3_i32(var_0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, -18444i, var_0.d.x), firstLeadingBit(vec3<i32>(u_input.b.x, var_0.d.x, 1i)))), min(var_1, ~max(-2400i, 0i))));
    var var_4 = abs(~(~(vec4<u32>(var_0.c.a, 1u, 4294967295u, 3061u) << (~vec4<u32>(var_3.c.a, var_2.a, var_2.a, 22867u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xx);
}

