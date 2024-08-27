struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(45252u, 1u, 4294967295u);

var<private> global1: array<u32, 16>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<f32>(-882f, -1137f), vec4<i32>(-28675i, 460i, 15519i, -16225i), -67213i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<f32>(-912f, 754f), vec4<i32>(-17508i, 0i, 3153i, -20950i), 0i), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec2<f32>(1730f, 184f), vec4<i32>(0i, 0i, 2147483647i, i32(-2147483648)), 24266i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<f32>(-787f, 299f), vec4<i32>(-19477i, -1i, 1i, -66462i), i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec2<f32>(-471f, -1000f), vec4<i32>(-38446i, 2974i, 22343i, 1i), 40843i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<f32>(-1209f, 1000f), vec4<i32>(1i, 2147483647i, -24401i, -67169i), -1i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<f32>(-346f, -898f), vec4<i32>(0i, -21519i, -1i, -29349i), -50766i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec2<f32>(-1000f, -1254f), vec4<i32>(19462i, 16055i, 2147483647i, 2147483647i), -22580i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<f32>(1054f, -1000f), vec4<i32>(i32(-2147483648), 22312i, -45475i, 35394i), 2147483647i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec2<f32>(-1773f, 197f), vec4<i32>(-1i, 35218i, 2147483647i, -35041i), 55479i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<f32>(-1506f, 312f), vec4<i32>(-46863i, -310i, 0i, 1i), 8345i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<f32>(269f, -649f), vec4<i32>(30465i, -53387i, 28357i, -1i), 1i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<f32>(-1281f, -820f), vec4<i32>(26i, -90007i, 0i, i32(-2147483648)), 27218i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<f32>(1613f, 206f), vec4<i32>(-1i, -19858i, 5399i, -55095i), 16908i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<f32>(976f, -390f), vec4<i32>(-1i, -12464i, -6559i, 2147483647i), 2147483647i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<f32>(2399f, -1252f), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -14994i), 2147483647i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<f32>(-813f, -1016f), vec4<i32>(-48187i, 30104i, 0i, -1i), 49322i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<f32>(-307f, -632f), vec4<i32>(1i, -62683i, 2147483647i, -10418i), 2147483647i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<f32>(347f, -775f), vec4<i32>(i32(-2147483648), i32(-2147483648), 84946i, 0i), -1i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<f32>(-199f, -890f), vec4<i32>(-64178i, 2147483647i, 10353i, 1i), -32999i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec2<f32>(-1496f, -244f), vec4<i32>(-18656i, -6696i, -5513i, -56443i), -1i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec2<f32>(1024f, 860f), vec4<i32>(2147483647i, 1i, -1i, 0i), 44056i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec2<f32>(240f, 249f), vec4<i32>(0i, -18992i, -1i, -1i), 6202i), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec2<f32>(752f, 190f), vec4<i32>(0i, 27197i, 63106i, 16545i), 22517i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec2<f32>(-207f, -166f), vec4<i32>(-8029i, 4251i, -51784i, -1i), -33897i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<f32>(1606f, -1232f), vec4<i32>(i32(-2147483648), -1i, -23421i, 3223i), -17339i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<f32>(748f, -1000f), vec4<i32>(-1i, 6609i, -1i, -45132i), 0i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec2<f32>(285f, 1397f), vec4<i32>(9580i, 68584i, -50485i, 45991i), 1i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec2<f32>(2660f, 275f), vec4<i32>(-3049i, 2147483647i, 2147483647i, i32(-2147483648)), -17686i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<f32>(1234f, 2239f), vec4<i32>(5781i, 2147483647i, 0i, 0i), 49947i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec2<f32>(111f, 272f), vec4<i32>(42660i, 4665i, i32(-2147483648), 52445i), 1i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<f32>(312f, -651f), vec4<i32>(0i, -49809i, -1i, -15551i), -1i), vec4<bool>(true, true, true, true)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1159f - 648f) - _wgslsmith_f_op_f32(f32(-1f) * -447f)))))), 1000f);
    let var_1 = _wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), -abs(min(vec4<i32>(1i, -1i, 18216i, 14272i), vec4<i32>(-41009i, -2147483647i, 0i, 45879i)))), ~max(-max(vec4<i32>(-13614i, -1i, -26710i, 38557i), vec4<i32>(-8284i, -25209i, -1i, -36125i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -12184i, -16315i, -2147483647i), vec4<i32>(1i, 15333i, 1i, -2147483647i), vec4<i32>(-1i, 10148i, -6670i, -58377i)), max(vec4<i32>(18195i, 0i, 1i, 17062i), vec4<i32>(2147483647i, -1i, 1i, -1603i)))));
    global0 = u_input.c.xyz;
    global1 = array<u32, 16>();
    let var_2 = Struct_4(~22629u, ~(u_input.c & vec4<u32>(5578u, 1u, 1u, 79550u)));
    return vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -1461f)))));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_2, 32>();
    global1 = array<u32, 16>();
    global0 = vec3<u32>(~global0.x ^ 60954u, 42455u, ~select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), u_input.c), global1[_wgslsmith_index_u32(~abs(arg_0.c.x), 16u)], true));
    let var_0 = -1i;
    global2 = array<Struct_2, 32>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * arg_1.x), _wgslsmith_f_op_f32(arg_0.a.a.a.a.x * arg_0.a.d.a.x))), arg_0.a.d.b, arg_0.a.a.a.c);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_5 {
    global2 = array<Struct_2, 32>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-1058f, _wgslsmith_f_op_f32(ceil(arg_2.a.x)))), 1658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), arg_2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.x, var_0.a.x, arg_2.a.x, -1539f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 291f, arg_0, var_0.a.x)), any(vec2<bool>(false, false))))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, select(all(vec2<bool>(true, true)), false, any(vec3<bool>(false, false, true)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(250f, -549f) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -236f), 401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, var_0.a.x, -1231f, 1062f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0.a.x, var_0.a.x, var_0.a.x)))));
    let var_2 = _wgslsmith_clamp_u32(~(~(~(global0.x << (global0.x % 32u)))), 0u, _wgslsmith_mult_u32(1u, abs(0u) ^ global1[_wgslsmith_index_u32(~abs(1u), 16u)]));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(251f, func_2(Struct_5(Struct_3(global2[_wgslsmith_index_u32(61952u, 32u)], var_1.x, vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), Struct_1(var_1.xw, vec4<i32>(arg_2.b.x, var_0.c, 33730i, -33275i), 18292i)), u_input.b, vec2<u32>(var_2, u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(333f, -1000f, var_0.a.x, 1790f) + vec4<f32>(1077f, 421f, arg_2.a.x, -932f))).a.x, -1084f, -1531f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, 905f, var_1.x, arg_2.a.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_0.a.x, -841f, var_1.x)))))));
    return Struct_5(Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], var_0.a.x, arg_2.b.zzy, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -1000f))), arg_2.b, ~min(17000i, 7931i))), vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 16u)]), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.d), firstLeadingBit(vec2<u32>(1u, global0.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(var_2, 16u)]), u_input.b) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> i32 {
    global2 = array<Struct_2, 32>();
    global0 = ~(select(firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.c.yww, vec3<u32>(37399u, u_input.c.x, 1u), u_input.c.xwz)), firstLeadingBit(vec3<u32>(global0.x, 4294967295u, 4294967295u)), !arg_0.a.a.b.wxz) & u_input.c.wxz);
    global1 = array<u32, 16>();
    let var_0 = func_4(func_2(Struct_5(Struct_3(func_4(365f, global0.x, arg_0.a.a.a).a.a, _wgslsmith_f_op_f32(1764f - -676f), reverseBits(arg_2.b.wzy), arg_1.a.a.a), vec2<u32>(12667u, global1[_wgslsmith_index_u32(global0.x, 16u)]) & u_input.b, firstLeadingBit(~vec2<u32>(1u, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(920f, 399f, -484f, arg_2.a.x) + vec4<f32>(arg_2.a.x, arg_2.a.x, arg_1.a.d.a.x, arg_1.a.a.a.a.x)), vec4<f32>(1198f, 869f, 1974f, arg_0.a.b))))).a.x, arg_1.c.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.d.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(120f * 2073f)))), arg_1.a.a.a.b, ~(-1i)));
    global1 = array<u32, 16>();
    return _wgslsmith_sub_i32(17351i, arg_1.a.d.c) & _wgslsmith_div_i32(-_wgslsmith_sub_i32(0i, -991i), -2147483647i);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> i32 {
    return select(func_5(Struct_5(Struct_3(Struct_2(Struct_1(vec2<f32>(-590f, -544f), vec4<i32>(1i, -45007i, -38625i, 22996i), 61391i), vec4<bool>(true, false, true, true)), -819f, vec3<i32>(2147483647i, 44021i, 25498i), Struct_1(vec2<f32>(-2141f, 748f), vec4<i32>(1442i, 0i, 0i, -1i), -15274i)), vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(arg_1.b.x, 4294967295u), select(global0.zx, u_input.b, false)), func_4(-363f, arg_0.x, func_2(Struct_5(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 32u)], 1037f, vec3<i32>(37778i, -9428i, 8752i), Struct_1(vec2<f32>(-282f, 577f), vec4<i32>(1i, 5074i, 2147483647i, 2147483647i), 27614i)), arg_0.xz, global0.yx), vec4<f32>(386f, -1000f, -178f, 1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1501f)), vec4<i32>(1i, 1i, 1i, 1i), -40587i), false), -50245i, true) >> (~select(arg_1.a, global0.x, false) % 32u);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec4<bool> {
    global0 = _wgslsmith_clamp_vec3_u32(max(vec3<u32>(min(16019u, 0u >> (u_input.b.x % 32u)), ~(4294967295u >> (global0.x % 32u)), ~global0.x), _wgslsmith_mult_vec3_u32(abs(u_input.c.wyx), u_input.c.wyz)), vec3<u32>(~_wgslsmith_add_u32(1u >> (u_input.d % 32u), global1[_wgslsmith_index_u32(7869u, 16u)] ^ global1[_wgslsmith_index_u32(global0.x, 16u)]), _wgslsmith_div_u32(_wgslsmith_div_u32(min(u_input.a.x, 29673u), global0.x), 16069u), 1u), _wgslsmith_add_vec3_u32(u_input.c.zxw, u_input.c.wzw));
    let var_0 = arg_1.d.b.x;
    var var_1 = global0.x;
    let var_2 = 1i;
    var var_3 = arg_0;
    return arg_1.a.b;
}

fn func_7(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a.a, ~arg_0.a.b, reverseBits(arg_0.a.c));
    global0 = vec3<u32>(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~7878u, 16u)], 16u)], 1u);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.b.yx, ~reverseBits(var_0.b.yy)), -firstLeadingBit(~select(-24787i, 2147483647i, true)), arg_0.a.c);
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(448f)) * -113f) * _wgslsmith_f_op_f32(-var_0.a.x)) * arg_0.a.a.x), u_input.c.x, Struct_1(arg_0.a.a, vec4<i32>(func_1(u_input.c.zwz, Struct_4(global1[_wgslsmith_index_u32(4294967295u, 16u)], vec4<u32>(40938u, 23093u, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global0.x))), var_1.x, 1i, 16499i), -2147483647i)).a.a;
    let var_3 = arg_0;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 16>();
    var var_0 = -2005f;
    var var_1 = func_7(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-248f, -551f))), _wgslsmith_div_vec2_f32(vec2<f32>(1340f, 1629f), vec2<f32>(-353f, 172f))), vec4<i32>(-1i, 5316i, 0i, 7305i) >> (~u_input.c % vec4<u32>(32u)), 1i), select(func_6(Struct_3(Struct_2(Struct_1(vec2<f32>(1658f, 1804f), vec4<i32>(-2147483647i, 0i, 2147483647i, 1i), -2147483647i), vec4<bool>(true, true, false, false)), 259f, vec3<i32>(2147483647i, -37011i, 21227i), Struct_1(vec2<f32>(680f, -599f), vec4<i32>(0i, -2147483647i, 0i, 1i), -1i)), Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], -319f, vec3<i32>(19326i, 1i, 500i), Struct_1(vec2<f32>(-744f, 914f), vec4<i32>(67886i, -25936i, 0i, -47047i), -1i)), func_1(u_input.c.www, Struct_4(38801u, u_input.c)), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true)) & all(vec2<bool>(false, true)))), true);
    let var_2 = !select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 51718u, Struct_1(vec2<f32>(var_1.a.x, -210f), vec4<i32>(-34087i, -27664i, -2147483647i, 45794i), var_1.b.x)).a.a.b, !func_6(Struct_3(Struct_2(Struct_1(vec2<f32>(-399f, -250f), var_1.b, -1i), vec4<bool>(true, false, false, false)), 973f, var_1.b.yyz, Struct_1(vec2<f32>(553f, -507f), var_1.b, var_1.c)), Struct_3(Struct_2(Struct_1(vec2<f32>(-422f, 2286f), vec4<i32>(var_1.c, 1i, var_1.b.x, 2147483647i), var_1.b.x), vec4<bool>(true, false, true, false)), 927f, vec3<i32>(-2147483647i, var_1.c, 35706i), Struct_1(vec2<f32>(1718f, -1024f), vec4<i32>(2147483647i, -32349i, var_1.b.x, 784i), var_1.c)), var_1.b.x, 0u >= global0.x), all(func_6(func_4(var_1.a.x, 2359u, Struct_1(vec2<f32>(var_1.a.x, 374f), var_1.b, var_1.b.x)).a, func_4(-677f, 6143u, Struct_1(vec2<f32>(1000f, var_1.a.x), vec4<i32>(var_1.c, var_1.b.x, -2147483647i, -1i), var_1.b.x)).a, -5030i << (global1[_wgslsmith_index_u32(47295u, 16u)] % 32u), true).zwx));
    var var_3 = ~(~u_input.d) | ~73488u;
    global0 = vec3<u32>(1u, max(4294967295u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 16u)] ^ 3418u, _wgslsmith_mod_u32(global0.x, 38550u)) & ~4294967295u), 1u);
    var var_4 = 19041u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_1.c, -1i >> (global0.x % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f + -145f)) * -1000f), 592f)), vec4<u32>(69272u, 1u, ~86633u, firstTrailingBit(44337u ^ (7564u ^ global1[_wgslsmith_index_u32(global0.x, 16u)]))));
}

