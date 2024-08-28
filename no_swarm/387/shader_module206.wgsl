struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: bool;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1799f, 1i, vec2<u32>(4294967295u, 26884u), vec3<i32>(-17070i, 1i, -5409i)), Struct_1(1000f, -49867i, vec2<u32>(1u, 4294967295u), vec3<i32>(-27721i, 0i, 15417i)), Struct_1(164f, i32(-2147483648), vec2<u32>(1u, 1u), vec3<i32>(0i, -47466i, -1i)), Struct_1(902f, 28123i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(30885i, -1i, -11872i)), Struct_1(-264f, 0i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, 73198i)), Struct_1(-560f, -4241i, vec2<u32>(1u, 56023u), vec3<i32>(35273i, 0i, 57785i)), Struct_1(557f, -13262i, vec2<u32>(1u, 707u), vec3<i32>(-34372i, -11533i, -8043i)), Struct_1(-608f, 1i, vec2<u32>(32512u, 34705u), vec3<i32>(0i, 2147483647i, -42794i)), Struct_1(1000f, 0i, vec2<u32>(0u, 61658u), vec3<i32>(-35024i, 31972i, -22007i)), Struct_1(-1436f, -1i, vec2<u32>(13434u, 0u), vec3<i32>(i32(-2147483648), -31415i, 17428i)), Struct_1(1000f, 0i, vec2<u32>(21497u, 58574u), vec3<i32>(i32(-2147483648), -1i, 5024i)), Struct_1(223f, 10374i, vec2<u32>(59988u, 22175u), vec3<i32>(1i, 767i, 13299i)), Struct_1(289f, 0i, vec2<u32>(55945u, 0u), vec3<i32>(1i, 7490i, 0i)), Struct_1(-1000f, 2147483647i, vec2<u32>(36822u, 0u), vec3<i32>(-4282i, i32(-2147483648), -26770i)), Struct_1(-1337f, 1i, vec2<u32>(39685u, 4294967295u), vec3<i32>(-1i, -25762i, -11705i)), Struct_1(625f, 2147483647i, vec2<u32>(62558u, 103235u), vec3<i32>(24972i, -380i, 2147483647i)), Struct_1(799f, 6978i, vec2<u32>(0u, 0u), vec3<i32>(22840i, 0i, 0i)), Struct_1(1482f, 25251i, vec2<u32>(0u, 4294967295u), vec3<i32>(1i, -62314i, i32(-2147483648))), Struct_1(-1224f, 5699i, vec2<u32>(0u, 0u), vec3<i32>(5859i, 17188i, -1i)), Struct_1(744f, i32(-2147483648), vec2<u32>(1u, 14682u), vec3<i32>(-38990i, i32(-2147483648), -5888i)), Struct_1(-1538f, 2147483647i, vec2<u32>(5571u, 63788u), vec3<i32>(1i, 1i, 0i)), Struct_1(1000f, 1i, vec2<u32>(7917u, 0u), vec3<i32>(-1i, -28333i, -68470i)), Struct_1(396f, 40158i, vec2<u32>(43069u, 0u), vec3<i32>(2147483647i, 1i, 1i)), Struct_1(-1295f, 2147483647i, vec2<u32>(15349u, 1u), vec3<i32>(-31597i, 0i, 2147483647i)), Struct_1(277f, -12352i, vec2<u32>(14366u, 57093u), vec3<i32>(-9334i, 37282i, -1i)), Struct_1(510f, -8334i, vec2<u32>(4294967295u, 19283u), vec3<i32>(16286i, -1i, 2147483647i)), Struct_1(650f, 35550i, vec2<u32>(0u, 0u), vec3<i32>(-30675i, 0i, -39800i)), Struct_1(-670f, 2147483647i, vec2<u32>(4294967295u, 27390u), vec3<i32>(1i, 2147483647i, 1i)), Struct_1(686f, 2147483647i, vec2<u32>(1u, 60968u), vec3<i32>(0i, -17653i, 18706i)), Struct_1(1479f, 30172i, vec2<u32>(29u, 4294967295u), vec3<i32>(-715i, 19388i, 65239i)), Struct_1(-727f, 1i, vec2<u32>(42065u, 1097u), vec3<i32>(0i, -6660i, i32(-2147483648))), Struct_1(2394f, 2147483647i, vec2<u32>(20262u, 1u), vec3<i32>(-38808i, 32951i, -18162i)));

var<private> global2: array<Struct_1, 27>;

var<private> global3: vec2<i32>;

var<private> global4: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<i32> {
    global4 = _wgslsmith_mod_i32(arg_1.d.x, global3.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -904f), 2147483647i, ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, arg_1.a.c.x), ~vec2<u32>(arg_0.x, u_input.a))), (vec3<i32>(-global3.x, countOneBits(0i), arg_1.d.x >> (arg_1.c.c.x % 32u)) & vec3<i32>(~36453i, 1i, arg_1.c.d.x)) << (min(vec3<u32>(1u, 0u, arg_0.x), ~min(vec3<u32>(1u, 0u, arg_1.b.c.x), vec3<u32>(80144u, u_input.a, 69212u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(38336u), 7810u), ~_wgslsmith_sub_vec2_u32(select(~vec2<u32>(var_0.c.x, 52417u), arg_1.a.c, vec2<bool>(true, arg_2.x)), ~firstLeadingBit(vec2<u32>(var_0.c.x, 4294967295u))));
    let var_2 = ~(~_wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(_wgslsmith_sub_u32(arg_0.x, 20565u), arg_0.x)));
    global1 = array<Struct_1, 32>();
    return _wgslsmith_mod_vec3_i32(max(-max(vec3<i32>(var_0.d.x, 2147483647i, arg_1.c.b), ~vec3<i32>(global3.x, global3.x, -1i)), reverseBits(-vec3<i32>(var_0.b, 91164i, 43323i)) ^ select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d.x, -1994i, 1i), var_0.d), var_0.d, !vec3<bool>(true, false, arg_2.x))), ~(~vec3<i32>(var_0.d.x, var_0.b ^ arg_1.a.b, abs(arg_1.d.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1241f))))), 0i, vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(1u, 31138u ^ u_input.a))), firstTrailingBit(~_wgslsmith_sub_vec3_i32(~vec3<i32>(global3.x, 0i, -24441i), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(-7373i, -2147483647i, global3.x)))));
    let var_1 = Struct_2(Struct_1(var_0.a, var_0.d.x, vec2<u32>(u_input.c ^ var_0.c.x, u_input.c) >> (~(var_0.c & vec2<u32>(0u, 1u)) % vec2<u32>(32u)), func_3(u_input.b.xyw, Struct_2(Struct_1(-337f, -1i, u_input.b.xw, vec3<i32>(global3.x, global3.x, global3.x)), Struct_1(1247f, global3.x, vec2<u32>(4294967295u, 9992u), var_0.d), global2[_wgslsmith_index_u32(var_0.c.x, 27u)], vec4<i32>(var_0.b, 1i, var_0.b, 1i)), vec3<bool>(true, true, true)) & ~(var_0.d ^ vec3<i32>(var_0.b, -53674i, var_0.d.x))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(728f, -576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) - _wgslsmith_div_f32(var_0.a, var_0.a)), all(vec3<bool>(true, true, false)))), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.b, 3014i, 0i, 4441i), vec4<i32>(-63242i, var_0.b, var_0.d.x, var_0.d.x), true), max(vec4<i32>(-2147483647i, var_0.b, var_0.d.x, var_0.b), vec4<i32>(global3.x, 2147483647i, -25617i, -2147483647i))), vec2<u32>(var_0.c.x, _wgslsmith_mod_u32(u_input.b.x, var_0.c.x << (4294967295u % 32u))), vec3<i32>(_wgslsmith_mod_i32(3816i, -37355i), global3.x, global3.x) << (min(~vec3<u32>(1u, 0u, var_0.c.x), ~vec3<u32>(1u, 1u, 15315u)) % vec3<u32>(32u))), Struct_1(1000f, global3.x, ~vec2<u32>(var_0.c.x, 73405u) >> (_wgslsmith_mult_vec2_u32(u_input.b.xx, reverseBits(u_input.b.xw)) % vec2<u32>(32u)), ~(-var_0.d)), ~countOneBits(abs(~vec4<i32>(9074i, global3.x, global3.x, global3.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a * 405f) * -326f)), var_0.a)), -30552i, ~vec2<u32>(1u, var_0.c.x), var_1.b.d);
    var var_3 = var_1;
    var var_4 = var_1.d.zw;
    return Struct_1(-1487f, var_3.d.x, ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 25841u), var_0.c), ~vec2<u32>(4516u, var_1.a.c.x))), ~((func_3(vec3<u32>(u_input.b.x, 0u, 1u), var_1, vec3<bool>(true, false, true)) << (u_input.b.wzz % vec3<u32>(32u))) | ~_wgslsmith_mult_vec3_i32(vec3<i32>(38640i, -24858i, -24528i), var_0.d)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(func_2(), Struct_1(arg_1.a, arg_3.x, abs(_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, arg_0.x), vec2<u32>(arg_2, 11562u), vec2<bool>(true, false)), ~arg_1.c)), _wgslsmith_div_vec3_i32(-arg_3.yww, vec3<i32>(select(global3.x, -30701i, false), -arg_1.d.x, abs(2147483647i)))), func_2(), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, arg_1.b), ~arg_3.x), ~(~arg_3.x), -_wgslsmith_add_i32(arg_1.b, -2147483647i), firstTrailingBit(22839i) >> (_wgslsmith_add_u32(arg_1.c.x, 59728u) % 32u)), vec4<i32>(reverseBits(0i), arg_3.x, _wgslsmith_mod_i32(38536i, arg_3.x), arg_1.d.x)));
    global4 = i32(-1i) * -15759i;
    global0 = any(vec2<bool>(true, true)) | true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-839f)) * _wgslsmith_f_op_f32(-688f + _wgslsmith_f_op_f32(-arg_1.a))));
    global2 = array<Struct_1, 27>();
    return var_0;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global4 = -2147483647i;
    global4 = 1i;
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = func_4(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c.x, 1u), arg_0.c.c) >> (u_input.c % 32u), abs(~arg_0.c.c.x)), func_2(), 1u, -(~vec4<i32>(-31179i, 2147483647i, -6364i, abs(0i))));
    global0 = true;
    return Struct_1(var_1.a.a, _wgslsmith_sub_i32(global3.x, max(-2147483647i, var_1.d.x)), var_1.a.c & vec2<u32>(~(1u & var_1.b.c.x), 2032u), (_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 0i, var_1.a.b), -var_1.c.d, vec3<i32>(-34989i, var_1.b.d.x, global3.x)) ^ var_1.a.d) << (_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.b.xxw), ~u_input.b.wzw) % vec3<u32>(32u)));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 0u), 27u)];
    let var_1 = func_4(min(vec2<u32>(min(1u, u_input.b.x ^ u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_1.c.c.x), u_input.a ^ 4859u)), ~_wgslsmith_sub_vec2_u32(arg_1.a.c, arg_1.a.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a) - _wgslsmith_div_f32(-415f, 2173f))), _wgslsmith_add_i32(firstTrailingBit(70661i), 0i), select(max(var_0.c, vec2<u32>(u_input.b.x, 0u)), vec2<u32>(1u, 6746u) >> (arg_1.c.c % vec2<u32>(32u)), vec2<bool>(true, true)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 0u, 0u), vec3<u32>(26691u, arg_1.b.c.x, u_input.b.x)), var_0.c.x), vec3<i32>(-1i) * -(vec3<i32>(0i, -1i, arg_1.d.x) >> (u_input.b.yxx % vec3<u32>(32u)))), 0u, vec4<i32>(-1i) * -max(select(arg_1.d, vec4<i32>(-1i, -2147483647i, -19140i, arg_1.d.x), false), _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.b, var_0.d.x, -2147483647i), arg_1.d)));
    let var_2 = ~(u_input.b & (~u_input.b ^ (vec4<u32>(4294967295u, u_input.b.x, arg_1.a.c.x, arg_1.a.c.x) | vec4<u32>(0u, u_input.a, 1u, var_1.b.c.x)))) & firstTrailingBit(max(u_input.b, vec4<u32>(90003u, var_0.c.x, var_0.c.x, arg_1.b.c.x)) | ~max(vec4<u32>(49706u, var_1.a.c.x, 26801u, var_0.c.x), u_input.b));
    return global2[_wgslsmith_index_u32(var_0.c.x, 27u)];
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global4 = countOneBits(arg_1.c.d.x);
    var var_0 = func_4(arg_3.c, global1[_wgslsmith_index_u32(arg_1.b.c.x, 32u)], ~1u, func_4(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c.c.x, 0u), vec2<u32>(u_input.c, 0u)), func_1(Struct_2(global2[_wgslsmith_index_u32(arg_3.c.x, 27u)], Struct_1(1242f, -1i, arg_1.b.c, arg_1.b.d), Struct_1(arg_3.a, 0i, u_input.b.xx, vec3<i32>(-3241i, -1545i, -2147483647i)), vec4<i32>(arg_1.d.x, arg_3.b, arg_3.b, 7534i))), 50771u, vec4<i32>(global3.x, 17334i, -25016i, 1i) ^ arg_1.d).d & ((~vec4<i32>(global3.x, arg_3.d.x, arg_1.b.d.x, 49089i) | vec4<i32>(-2147483647i, arg_3.d.x, 0i, arg_1.c.b)) | _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, arg_1.a.d.x, 2147483647i, global3.x) << (u_input.b % vec4<u32>(32u)), ~vec4<i32>(arg_1.c.d.x, global3.x, global3.x, 36860i)))).a;
    global0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_2.yy - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)), _wgslsmith_f_op_f32(-func_5(-590f, arg_1).a)), _wgslsmith_f_op_vec2_f32(floor(arg_2.xy))));
    let var_2 = firstLeadingBit(arg_1.d.zy);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global4 = _wgslsmith_add_i32(firstTrailingBit(24558i), abs(countOneBits(5384i))) ^ abs(global3.x & global3.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f + -1095f)) * _wgslsmith_f_op_f32(1f - -2142f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2540f) + 777f)), ~(max(global3.x, -23265i) | ((i32(-1i) * -2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 12273i, global3.x, global3.x), vec4<i32>(2147483647i, -2147483647i, global3.x, 2147483647i)))), ~(~(~vec2<u32>(u_input.c, u_input.a))), abs(_wgslsmith_clamp_vec3_i32(firstTrailingBit(~vec3<i32>(23501i, 2147483647i, 1i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, 45300i, 0i), vec3<i32>(35593i, global3.x, global3.x))), vec3<i32>(countOneBits(global3.x), global3.x, global3.x))));
    let var_2 = vec3<bool>(false, any(vec2<bool>(false, true)) | false, false);
    let var_3 = func_6(select(vec3<bool>(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), true, any(var_2.xy)), vec3<bool>(var_2.x, var_2.x, !var_2.x), false), Struct_2(func_5(_wgslsmith_f_op_f32(select(402f, var_1.a, false)), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xwz, vec3<u32>(1u, 29459u, var_1.c.x)), 32u)], func_1(Struct_2(global2[_wgslsmith_index_u32(2908u, 27u)], global2[_wgslsmith_index_u32(13539u, 27u)], global2[_wgslsmith_index_u32(var_1.c.x, 27u)], vec4<i32>(var_1.b, -14220i, 30620i, 1i))), global1[_wgslsmith_index_u32(4294967295u, 32u)], -vec4<i32>(40340i, 7264i, 5996i, -57i))), Struct_1(var_1.a, i32(-1i) * -2147483647i, reverseBits(u_input.b.zx | u_input.b.xw), var_1.d), Struct_1(_wgslsmith_f_op_f32(var_1.a * var_1.a), -1i, ~(~vec2<u32>(4294967295u, 71u)), vec3<i32>(i32(-1i) * -26961i, firstTrailingBit(2147483647i), var_1.b)), firstTrailingBit(-abs(vec4<i32>(global3.x, 0i, global3.x, var_1.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), func_1(func_4(vec2<u32>(0u, 12251u), func_1(Struct_2(Struct_1(var_1.a, 2147483647i, u_input.b.wy, vec3<i32>(var_1.b, global3.x, -2147483647i)), var_1, var_1, vec4<i32>(global3.x, global3.x, global3.x, global3.x))), var_1.c.x >> (var_1.c.x % 32u), abs(vec4<i32>(80162i, -8284i, var_1.b, global3.x)))).a, var_1.a, 1084f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a), global3.x, u_input.b.yz, firstTrailingBit(var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-82988i, vec4<u32>(45316u, 1u, 15411u, u_input.a), func_5(-724f, Struct_2(func_2(), Struct_1(var_3.a, -2147483647i, max(vec2<u32>(66785u, var_1.c.x), vec2<u32>(1u, 61304u)), select(vec3<i32>(0i, var_1.d.x, 44956i), var_3.d, vec3<bool>(false, var_2.x, false))), func_1(func_4(var_3.c, global1[_wgslsmith_index_u32(var_3.c.x, 32u)], 25152u, vec4<i32>(-1i, -6200i, global3.x, 2147483647i))), _wgslsmith_div_vec4_i32(~vec4<i32>(10120i, 2147483647i, -1i, -8089i), vec4<i32>(-20757i, 0i, -1i, var_1.b) ^ vec4<i32>(0i, 61155i, 0i, var_1.d.x)))).c.x, vec4<f32>(-1017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-177f, var_1.a))) - 447f), 1000f, -2000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * 1164f));
}

