struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(58873u, Struct_1(-1315f, -654f), vec3<u32>(3896u, 0u, 0u)), Struct_5(25776u, Struct_1(-237f, 1000f), vec3<u32>(25645u, 51048u, 4294967295u)), Struct_5(1u, Struct_1(-957f, 886f), vec3<u32>(4294967295u, 4294967295u, 1748u)), Struct_5(0u, Struct_1(541f, 1700f), vec3<u32>(1u, 4294967295u, 95199u)), Struct_5(44688u, Struct_1(1589f, -2111f), vec3<u32>(1u, 58878u, 4294967295u)), Struct_5(21190u, Struct_1(950f, -474f), vec3<u32>(0u, 0u, 4709u)), Struct_5(0u, Struct_1(446f, 1231f), vec3<u32>(1u, 1u, 131772u)), Struct_5(1u, Struct_1(-1587f, -1000f), vec3<u32>(1u, 1u, 1u)), Struct_5(1u, Struct_1(-1426f, 1605f), vec3<u32>(43235u, 0u, 1u)), Struct_5(28172u, Struct_1(-198f, 1223f), vec3<u32>(39875u, 7725u, 40905u)), Struct_5(0u, Struct_1(-1571f, -1168f), vec3<u32>(45535u, 13610u, 43086u)), Struct_5(34314u, Struct_1(-767f, 171f), vec3<u32>(1u, 0u, 0u)), Struct_5(1u, Struct_1(1348f, 1197f), vec3<u32>(0u, 0u, 24595u)), Struct_5(4294967295u, Struct_1(-856f, 1000f), vec3<u32>(1u, 32168u, 35580u)), Struct_5(76204u, Struct_1(293f, -405f), vec3<u32>(4294967295u, 88220u, 0u)), Struct_5(1u, Struct_1(-2738f, -1680f), vec3<u32>(614u, 77290u, 13681u)), Struct_5(4294967295u, Struct_1(-305f, 1207f), vec3<u32>(1u, 10747u, 1u)), Struct_5(11921u, Struct_1(383f, -852f), vec3<u32>(4294967295u, 1u, 68789u)), Struct_5(4492u, Struct_1(1000f, 1033f), vec3<u32>(49364u, 53320u, 48063u)), Struct_5(4294967295u, Struct_1(-2007f, 1558f), vec3<u32>(0u, 9409u, 0u)), Struct_5(0u, Struct_1(-289f, 460f), vec3<u32>(1u, 39235u, 0u)), Struct_5(0u, Struct_1(1105f, -234f), vec3<u32>(0u, 5743u, 32299u)), Struct_5(1u, Struct_1(1021f, 824f), vec3<u32>(0u, 27246u, 20006u)), Struct_5(46214u, Struct_1(1369f, -1383f), vec3<u32>(71416u, 1u, 4294967295u)), Struct_5(12807u, Struct_1(-138f, 1445f), vec3<u32>(36858u, 1u, 40472u)), Struct_5(219u, Struct_1(473f, 1510f), vec3<u32>(1u, 112755u, 4294967295u)), Struct_5(1u, Struct_1(-691f, 154f), vec3<u32>(34162u, 1u, 4294967295u)), Struct_5(55849u, Struct_1(608f, 1749f), vec3<u32>(33634u, 1u, 66355u)), Struct_5(8986u, Struct_1(-767f, -550f), vec3<u32>(116589u, 4294967295u, 1u)));

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: array<i32, 9> = array<i32, 9>(0i, -24930i, -42610i, 10941i, 1i, i32(-2147483648), 0i, 8588i, 0i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_5, 29>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(-728f, 1272f))), -1319f, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1209f, 677f)))), -338f);
    global1 = u_input.a;
    global1 = 0u >> (~(~abs(u_input.a)) % 32u);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(1u, 9u)]) | ~global3[_wgslsmith_index_u32(u_input.a, 9u)], i32(-1i) * -18721i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], -49318i, global3[_wgslsmith_index_u32(1u, 9u)], -13556i), vec4<i32>(-2368i, -1i, 2147483647i, 1i)) & min(-3238i, 330i)), _wgslsmith_div_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], -1i), vec3<i32>(global3[_wgslsmith_index_u32(0u, 9u)], 1i, 28501i)), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], -98226i), vec3<bool>(true, true, true)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-34817i, 0i, global3[_wgslsmith_index_u32(0u, 9u)]), vec3<i32>(global3[_wgslsmith_index_u32(32611u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)])))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(21297i, 25363i), 1i, global3[_wgslsmith_index_u32(countOneBits(u_input.a), 9u)]), -2147483647i) ^ ~(-2147483647i), -1i, global3[_wgslsmith_index_u32(u_input.a, 9u)]);
    return -reverseBits(vec4<i32>(min(global3[_wgslsmith_index_u32(0u, 9u)], var_1.x) << (~u_input.a % 32u), -var_1.x, -global3[_wgslsmith_index_u32(57328u, 9u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 9u)], 31902i), firstTrailingBit(vec3<i32>(9520i, 5935i, var_1.x)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(357f, func_3() >> (~(vec4<u32>(4294967295u, 48436u, u_input.a, 4294967295u) >> (~vec4<u32>(12805u, 57906u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1585f, _wgslsmith_f_op_f32(select(-2067f, arg_2.x, true)), _wgslsmith_f_op_f32(-arg_2.x), 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, 361f, arg_2.x, 104f), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))))));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2091f) * var_0.a)), ((18878u << (u_input.a % 32u)) >> ((u_input.a << (52083u % 32u)) % 32u)) == (37657u << (_wgslsmith_sub_u32(8349u, u_input.a) % 32u))))));
    global2 = -142f;
    let var_1 = Struct_3(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.c.x, -916f)))))), _wgslsmith_div_vec4_i32(vec4<i32>(-17729i, -2147483647i, reverseBits(-arg_0.x), arg_1), -arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, 637f, 786f, _wgslsmith_div_f32(var_0.c.x, arg_2.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(var_0.a, var_0.c.x, var_0.c.x, var_0.c.x), false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_0.c)))))));
    global1 = ~u_input.a;
    return Struct_2((true != any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))) || false);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = -743f;
    var var_1 = ~(_wgslsmith_sub_vec3_i32(vec3<i32>(-37644i, reverseBits(global3[_wgslsmith_index_u32(u_input.a, 9u)]), 0i), vec3<i32>(2147483647i << (u_input.a % 32u), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), vec3<i32>(2147483647i, -14728i, global3[_wgslsmith_index_u32(u_input.a, 9u)])))) ^ (countOneBits(min(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1i, 2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 0i, global3[_wgslsmith_index_u32(u_input.a, 9u)]))) << (max(~vec3<u32>(u_input.a, u_input.a, 0u), max(vec3<u32>(u_input.a, 68497u, 0u), vec3<u32>(1u, 0u, 18062u))) % vec3<u32>(32u))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1422f - -356f), 1000f))));
    let var_2 = arg_0;
    global3 = array<i32, 9>();
    return global0[_wgslsmith_index_u32(u_input.a | u_input.a, 29u)];
}

fn func_1() -> i32 {
    let var_0 = 10615i;
    var var_1 = func_4(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0, global3[_wgslsmith_index_u32(~u_input.a, 9u)], countOneBits(var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(97176u, 9u)], var_0, 1258i, -14634i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 48010i, 33146i, var_0) & vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], 1i))), _wgslsmith_div_i32(-13106i, ~var_0 ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1557i, 16458i), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i, global3[_wgslsmith_index_u32(105447u, 9u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -698f))))), vec4<bool>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-20044i, 1i), vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(21120u, 9u)]))) <= -(global3[_wgslsmith_index_u32(u_input.a, 9u)] & global3[_wgslsmith_index_u32(4294967295u, 9u)]), !(true || any(vec3<bool>(false, false, false))), false, true));
    global2 = var_1.b.b;
    var var_2 = Struct_4(_wgslsmith_clamp_vec3_i32(countOneBits(abs(firstLeadingBit(vec3<i32>(2147483647i, -9272i, 0i)))), -(~(-vec3<i32>(global3[_wgslsmith_index_u32(var_1.c.x, 9u)], var_0, 6347i))), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, 2147483647i, -48024i), firstTrailingBit(vec3<i32>(1491i, var_0, 44520i))))));
    global1 = func_4(Struct_2(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))).c.x;
    return _wgslsmith_clamp_i32(select(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-24026i, 0i), ~vec2<i32>(40482i, 47203i)), _wgslsmith_add_vec2_i32(var_2.a.yz, countOneBits(var_2.a.yz))), 4294967295u != (4294967295u & _wgslsmith_clamp_u32(55630u, 4294967295u, var_1.c.x))), ~(-_wgslsmith_mod_i32(var_0, var_0)) ^ var_0, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(1u, u_input.a)) | 1u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-268f, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(16720u, 9u)], -34166i, -2147483647i, 14975i) | vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(59278u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(28037u, 9u)], -59570i)), -1i >> (u_input.a % 32u), -(~(-18051i)), func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(134f, 862f, -1950f, 949f), vec4<f32>(699f, 1830f, 458f, 1048f), true)))) * vec4<f32>(1184f, 288f, 626f, _wgslsmith_f_op_f32(round(-1192f))))));
    var var_1 = Struct_2(true | select(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), !(var_0.b.x > global3[_wgslsmith_index_u32(u_input.a, 9u)]), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0.c);
    let var_3 = vec2<u32>(u_input.a, _wgslsmith_sub_u32(~u_input.a, 7778u ^ _wgslsmith_add_u32(u_input.a, firstTrailingBit(u_input.a))));
    var var_4 = Struct_5(_wgslsmith_clamp_u32(~abs(var_3.x), _wgslsmith_mult_u32(reverseBits(1u) | ~var_3.x, ~4294967295u), ~(~firstTrailingBit(4294967295u))), func_4(Struct_2(var_1.a), select(!select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(var_1.a, false, true, true), false), select(select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(true, var_1.a, false, var_1.a)), select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, var_1.a, var_1.a), false), var_2.x < 1000f), vec4<bool>(var_1.a, var_1.a, var_2.x != var_0.a, var_1.a & true))).b, max(vec3<u32>(~var_3.x, func_4(Struct_2(true), vec4<bool>(false, false, true, var_1.a)).c.x ^ firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(67965u, u_input.a, var_3.x), vec3<u32>(var_3.x, var_3.x, var_3.x)) ^ _wgslsmith_div_u32(var_3.x, u_input.a)), ~reverseBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.b.x, ~(-1i)), global3[_wgslsmith_index_u32(reverseBits(var_4.c.x), 9u)]), -_wgslsmith_add_i32(max(reverseBits(-1i), firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a, 9u)])), select(global3[_wgslsmith_index_u32(~var_4.c.x, 9u)], 3955i, any(vec4<bool>(true, var_1.a, true, var_1.a)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, select(~var_4.a, ~4052u, var_1.a), ~var_3.x), firstTrailingBit(vec3<u32>(5896u, var_4.a, 1u))), ~(~var_4.a), var_0.b.ywx);
}

