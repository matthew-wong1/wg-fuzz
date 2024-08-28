struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<u32, 20> = array<u32, 20>(94543u, 58052u, 1u, 0u, 52866u, 0u, 10109u, 1806u, 4294967295u, 1u, 58349u, 46799u, 4294967295u, 4294967295u, 0u, 0u, 29356u, 35926u, 0u, 4294967295u);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(1615f, Struct_1(43550u, 23801i, vec3<bool>(false, true, false), vec4<bool>(false, true, false, true)), 4294967295u), Struct_2(-139f, Struct_1(1u, 1i, vec3<bool>(false, false, false), vec4<bool>(true, true, false, true)), 60646u), Struct_2(3041f, Struct_1(5915u, -1i, vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), 0u), Struct_2(327f, Struct_1(56069u, 0i, vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), 0u), Struct_2(-862f, Struct_1(0u, 2147483647i, vec3<bool>(true, true, true), vec4<bool>(false, false, true, true)), 94294u), Struct_2(-1103f, Struct_1(2025u, 0i, vec3<bool>(false, false, false), vec4<bool>(false, false, false, false)), 1u), Struct_2(273f, Struct_1(4294967295u, -21156i, vec3<bool>(false, false, true), vec4<bool>(true, true, false, false)), 58024u), Struct_2(513f, Struct_1(70372u, 9068i, vec3<bool>(true, false, true), vec4<bool>(false, true, true, true)), 4294967295u), Struct_2(-464f, Struct_1(1u, -3802i, vec3<bool>(true, true, false), vec4<bool>(true, true, true, false)), 5685u), Struct_2(-1109f, Struct_1(107232u, 0i, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true)), 60172u), Struct_2(611f, Struct_1(52401u, i32(-2147483648), vec3<bool>(true, false, false), vec4<bool>(true, true, false, false)), 4294967295u), Struct_2(1216f, Struct_1(26492u, -17942i, vec3<bool>(true, true, true), vec4<bool>(true, false, true, true)), 73915u), Struct_2(329f, Struct_1(4294967295u, 36817i, vec3<bool>(false, true, true), vec4<bool>(true, false, false, false)), 4294967295u), Struct_2(-1616f, Struct_1(0u, 13758i, vec3<bool>(true, false, false), vec4<bool>(false, true, false, false)), 0u), Struct_2(249f, Struct_1(4294967295u, -44736i, vec3<bool>(true, true, false), vec4<bool>(true, false, false, true)), 24704u), Struct_2(845f, Struct_1(1u, 2147483647i, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), 1u), Struct_2(407f, Struct_1(27886u, -28542i, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true)), 4294967295u), Struct_2(965f, Struct_1(0u, -6612i, vec3<bool>(false, true, false), vec4<bool>(true, true, true, false)), 4294967295u), Struct_2(-497f, Struct_1(0u, -3929i, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), 0u), Struct_2(-1000f, Struct_1(14632u, i32(-2147483648), vec3<bool>(false, true, false), vec4<bool>(true, true, true, false)), 4294967295u), Struct_2(648f, Struct_1(7512u, -423i, vec3<bool>(true, true, false), vec4<bool>(true, true, true, true)), 0u), Struct_2(240f, Struct_1(0u, i32(-2147483648), vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), 55817u), Struct_2(-346f, Struct_1(24734u, 0i, vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), 28729u), Struct_2(1000f, Struct_1(0u, 2147483647i, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), 97030u), Struct_2(-473f, Struct_1(52323u, -8531i, vec3<bool>(true, false, true), vec4<bool>(true, false, false, true)), 56125u), Struct_2(-517f, Struct_1(29430u, i32(-2147483648), vec3<bool>(false, false, false), vec4<bool>(false, true, false, false)), 1u), Struct_2(453f, Struct_1(82318u, 104074i, vec3<bool>(true, true, false), vec4<bool>(true, true, false, false)), 63158u), Struct_2(449f, Struct_1(16299u, 1i, vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), 73763u), Struct_2(332f, Struct_1(70156u, -723i, vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), 0u));

var<private> global4: Struct_1 = Struct_1(4294967295u, -4957i, vec3<bool>(true, true, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = arg_0;
    global1 = array<Struct_1, 17>();
    let var_1 = ~select(-vec4<i32>(global4.b, _wgslsmith_div_i32(-42025i, var_0.b), arg_0.b >> (4294967295u % 32u), ~global4.b), -vec4<i32>(28728i, var_0.b, _wgslsmith_add_i32(arg_2.b.b, 11227i), u_input.a), select(global4.d, arg_0.d, true));
    let var_2 = var_0.b;
    let var_3 = -var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-236f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(select(0u, min(0u, 115476u), false), 17u)], any(vec2<bool>(true, true)), global3[_wgslsmith_index_u32(global4.a, 29u)], -50989i)))));
    global4 = Struct_1(15231u, max(-7840i, select(firstTrailingBit(0i), ~global4.b, false)), !global4.c, !select(vec4<bool>(global4.c.x, global4.c.x, select(global4.c.x, false, arg_0.x), !arg_1.x), arg_0, global4.d));
    var var_1 = -vec2<i32>(reverseBits(0i), 2147483647i);
    let var_2 = Struct_1(select(1u, ~4294967295u, global4.c.x), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, u_input.a, 19015i) >> (vec3<u32>(0u, 525u, global2[_wgslsmith_index_u32(1u, 20u)]) % vec3<u32>(32u))) << (min(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], global4.a, global4.a), ~vec3<u32>(global4.a, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 20u)])) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~(~vec3<i32>(var_1.x, global4.b, var_1.x)), vec3<i32>(-22632i, global4.b, var_1.x))), !(!(!arg_0.yzz)), !vec4<bool>(all(!arg_1), arg_1.x, false, all(select(arg_0.wz, vec2<bool>(arg_0.x, arg_0.x), true))));
    return global0[_wgslsmith_index_u32(global4.a, 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.a, 17u)];
    var var_1 = vec2<i32>(-1i) * -(~reverseBits(vec2<i32>(21048i, u_input.a)) << (reverseBits(reverseBits(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    let var_2 = 14571i;
    var var_3 = arg_0.b;
    let var_4 = _wgslsmith_mult_vec2_i32(-(vec2<i32>(-1i) * -abs(vec2<i32>(var_0.b, u_input.a))), firstLeadingBit(vec2<i32>(abs(var_0.b | var_0.b), _wgslsmith_mult_i32(var_0.b & 1i, _wgslsmith_add_i32(-4164i, global4.b)))));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1316f, -1919f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(17319u, var_2, vec3<bool>(true, false, true), global4.d), false, Struct_2(1678f, Struct_1(arg_0.a, global4.b, vec3<bool>(arg_1.a.x, arg_0.c.x, global4.d.x), vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.c.x)), var_0.a), 55017i)))))))), Struct_1(~22866u, _wgslsmith_mult_i32(arg_0.b, 26961i), !(!arg_0.c), var_0.d), 29489u);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> vec3<f32> {
    global2 = array<u32, 20>();
    var var_0 = vec3<i32>(-20920i, 0i, u_input.b);
    var var_1 = vec3<f32>(791f, -1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-801f + -2595f), _wgslsmith_f_op_f32(abs(-476f)), _wgslsmith_f_op_f32(arg_0.a * arg_0.a) >= -1009f))));
    global0 = array<Struct_3, 21>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2308f, 652f, 432f) * vec3<f32>(var_1.x, arg_0.a, var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - arg_0.a), func_4(arg_0.b, arg_2).a, _wgslsmith_f_op_f32(-arg_0.a)))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2032f + 1000f), _wgslsmith_f_op_f32(1000f - 1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 618f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f + -1333f) * _wgslsmith_f_op_f32(floor(465f)))) - _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_1(4294967295u, u_input.a, global4.c, global4.d), func_2(global4.d, global4.d.yx)), true && all(vec4<bool>(global4.c.x, false, false, false)), Struct_3(func_2(global4.d, global4.c.yz).a), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, 923f, -627f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1197f, 321f, -226f))) * vec3<f32>(150f, -156f, -535f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-449f, -521f), _wgslsmith_f_op_f32(-182f * 310f), _wgslsmith_f_op_f32(min(811f, -774f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, -801f, 1000f)))));
    let var_1 = func_4(Struct_1(_wgslsmith_mult_u32(max(_wgslsmith_div_u32(global4.a, global2[_wgslsmith_index_u32(34912u, 20u)]), _wgslsmith_add_u32(0u, 0u)), _wgslsmith_mod_u32(func_4(Struct_1(23947u, global4.b, vec3<bool>(false, true, false), global4.d), global0[_wgslsmith_index_u32(52011u, 21u)]).c, _wgslsmith_mult_u32(0u, 1u))), i32(-1i) * -7750i, !global4.c, !vec4<bool>(true, global4.c.x, global4.c.x, global4.c.x)), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 20u)], 21u)]).b;
    var var_2 = vec4<u32>(reverseBits(14857u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global4.a, 37114u), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(0u, var_1.a)), firstLeadingBit(_wgslsmith_div_u32(global4.a, 18341u))) ^ reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 28675u, global4.a), ~vec4<u32>(4294967295u, 41227u, var_1.a, global4.a))), max(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 30536u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 42938u), var_1.c.yy), max(vec2<u32>(4294967295u, global4.a), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(9658u, 20u)]))), 3954u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(9458u, global4.a), vec2<u32>(10877u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global4.a, 63025u), abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5609u, 20u)], 20u)], 4294967295u)))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43013u, 1u, global2[_wgslsmith_index_u32(global4.a, 20u)], global2[_wgslsmith_index_u32(var_1.a, 20u)]), vec4<u32>(global4.a, var_1.a, var_1.a, global2[_wgslsmith_index_u32(global4.a, 20u)])), ~1u))));
    var var_3 = func_2(select(select(select(!vec4<bool>(false, var_1.c.x, var_1.c.x, false), vec4<bool>(var_1.c.x, true, false, global4.c.x), vec4<bool>(false, var_1.d.x, var_1.d.x, global4.c.x)), func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, var_2.x), 17u)], func_2(vec4<bool>(true, global4.d.x, var_1.d.x, false), var_1.c.zx)).b.d, true), select(!(!global4.d), select(var_1.d, select(var_1.d, vec4<bool>(var_1.d.x, global4.c.x, false, true), var_1.d.x), var_1.d.x & true), !global4.d), vec4<bool>(!select(global4.d.x, false, var_1.d.x), false, true, !all(vec2<bool>(false, false)))), var_1.c.xy);
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstLeadingBit(-_wgslsmith_mult_i32(var_1.b, var_1.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 26088i) | -vec2<i32>(-12263i, u_input.b), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.b, 2147483647i), vec2<i32>(var_1.b, 53371i)))), var_1.b);
    return func_2(func_4(func_4(Struct_1(~global4.a, countOneBits(var_1.b), !var_1.d.yxz, var_1.d), global0[_wgslsmith_index_u32(var_2.x, 21u)]).b, func_2(global4.d, var_1.d.ww)).b.d, !func_4(Struct_1(4294967295u, u_input.a, vec3<bool>(global4.d.x, var_3.a.x, true), vec4<bool>(global4.c.x, true, false, true)), global0[_wgslsmith_index_u32(22645u, 21u)]).b.d.yw);
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(0u ^ ~arg_2, 20u)] & 1u;
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_2, 23112u), 1u, global2[_wgslsmith_index_u32(1u, 20u)], ~23466u), ~vec4<u32>(var_0, 1u, global4.a, var_0)), reverseBits(_wgslsmith_mod_u32(var_0, min(global2[_wgslsmith_index_u32(~arg_2, 20u)], 4294967295u))));
    var_1 = ~var_0;
    global4 = Struct_1(~_wgslsmith_div_u32(arg_2, arg_2), global4.b, select(!(!global4.c), !vec3<bool>(arg_1 > arg_0.x, true, true), global4.d.x), !(!vec4<bool>(global4.d.x && global4.d.x, global2[_wgslsmith_index_u32(var_0, 20u)] != 41253u, true, !arg_3.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, -379f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(700f, 1000f), vec2<f32>(441f, -1458f), vec2<bool>(global4.d.x, arg_3.a.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(994f, -1367f), vec2<f32>(-676f, 1391f))), false || arg_3.a.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_5(global3[_wgslsmith_index_u32(var_0, 29u)], u_input.a > global4.b, func_1(), true)).yz, _wgslsmith_div_vec2_f32(vec2<f32>(-587f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, 1007f) - vec2<f32>(-1071f, 411f)))))));
    return ~vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u, global2[_wgslsmith_index_u32(arg_2, 20u)]), 1u, abs(33488u)), 20u)], min(global4.a, _wgslsmith_mult_u32(14831u, 1u) >> (var_0 % 32u)), func_4(func_4(global1[_wgslsmith_index_u32(global4.a >> (1u % 32u), 17u)], func_1()).b, func_2(!vec4<bool>(global4.d.x, arg_3.a.x, arg_3.a.x, global4.c.x), vec2<bool>(true, arg_3.a.x))).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(max(vec2<i32>(i32(-1i) * -global4.b, -(~2147483647i)), -select(vec2<i32>(-2147483647i, -13766i), ~vec2<i32>(10945i, 26009i), false && global4.c.x)), 3413i, _wgslsmith_mod_u32(abs(25624u), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(global4.a, 20u)], global4.a), ~vec4<u32>(1u, 29665u, 27023u, 1u)))), func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i, global4.d.wxw, vec4<bool>(false, false, global4.c.x, true)), global4.d.x, global3[_wgslsmith_index_u32(4294967295u, 29u)], global4.b)), _wgslsmith_f_op_f32(select(-1294f, -110f, true)), _wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(abs(-275f)))))))));
    let var_2 = func_1();
    var var_3 = -729f;
    let var_4 = firstLeadingBit(countOneBits(reverseBits(vec3<i32>(~global4.b, -48619i, _wgslsmith_div_i32(u_input.b, global4.b)))));
    var var_5 = u_input.b;
    var var_6 = Struct_1(var_0.x, _wgslsmith_div_i32(~_wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(global4.b, u_input.b)), global4.b), global4.d.ywy, global4.d);
    let var_7 = func_1();
    var_3 = -178f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(-16390i, -20909i, global4.b, -1i), firstLeadingBit(vec4<i32>(428i, 2147483647i, var_4.x, 51017i)))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-55248i, -2147483647i)), vec2<i32>(-60857i, global4.b)), ~(~vec2<i32>(var_4.x, 3848i)), min(abs(var_4.xy), vec2<i32>(global4.b >> (var_6.a % 32u), -19129i))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.b, u_input.b, 0i, global4.b), vec4<i32>(u_input.a, global4.b, 21482i, -1i)), ~1i), reverseBits(var_6.b | var_4.x)), vec2<i32>(~var_4.x, -2147483647i)), ~global2[_wgslsmith_index_u32(func_6(var_4.zx, global4.b ^ var_4.x, 90263u, Struct_3(vec2<bool>(true, var_6.d.x))).x, 20u)] ^ reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_6.a, 1u), 20u)] ^ ~63671u));
}

