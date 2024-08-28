struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec3<i32> {
    global0 = ~_wgslsmith_mult_i32(-2147483647i, ~u_input.c ^ ~_wgslsmith_mult_i32(34636i, 22248i));
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(~u_input.b, arg_1, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1515f, global1[_wgslsmith_index_u32(85018u, 4u)]) + vec3<f32>(arg_0.x, 805f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 226f, arg_1) * vec3<f32>(1109f, -2893f, arg_0.x))))), vec4<u32>(0u, 46150u, 23684u, u_input.b), min(vec3<i32>(50897i, u_input.c, u_input.c) ^ ~vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, _wgslsmith_clamp_i32(2147483647i, u_input.c, 1981i), firstTrailingBit(-35919i)))), Struct_1(1u, _wgslsmith_f_op_f32(ceil(837f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(761u, 4u)], arg_0.x, -1410f))), vec3<f32>(arg_0.x, 960f, global1[_wgslsmith_index_u32(u_input.d, 4u)])))), vec4<u32>(u_input.a, u_input.d ^ 1u, u_input.d >> (~u_input.a % 32u), abs(u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.c, 4461i), -u_input.c, ~u_input.c), -vec3<i32>(u_input.c, 44115i, -32785i))), Struct_1(abs(firstTrailingBit(150u)), _wgslsmith_f_op_f32(-1384f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1086f, 320f)) - -787f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1095f, 577f, -1616f), vec3<f32>(-149f, global1[_wgslsmith_index_u32(u_input.a, 4u)], 259f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1120f, -585f, arg_1))), false | var_0)), vec3<f32>(-845f, _wgslsmith_f_op_f32(round(-195f)), _wgslsmith_f_op_f32(arg_0.x - 272f)), vec3<bool>(true, true, any(vec4<bool>(var_0, true, var_0, false))))), ~(~vec4<u32>(46337u, 4294967295u, u_input.d, u_input.d)), abs(vec3<i32>(0i, u_input.c, 1i) & ~vec3<i32>(u_input.c, u_input.c, 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(246f + -725f), -144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))));
    var var_3 = var_1.c;
    return ~vec3<i32>(u_input.c, ~(~(-55181i)), -9643i);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~firstTrailingBit(arg_0.a.a.a), ~arg_0.a.c.a), vec2<u32>(_wgslsmith_sub_u32(34066u, _wgslsmith_dot_vec3_u32(arg_2.b.a.d.xwz, vec3<u32>(34913u, 4294967295u, 4294967295u))), _wgslsmith_div_u32(firstTrailingBit(arg_0.b.c.a), ~u_input.d))) << ((firstTrailingBit(abs(0u)) | u_input.d) % 32u);
    global0 = 2147483647i;
    let var_1 = global1[_wgslsmith_index_u32(arg_0.a.c.d.x, 4u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_2.a.c.c - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2167f - -201f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 4u)]) - _wgslsmith_f_op_f32(ceil(-142f)))), -1855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_2.b.c.d.x, 4u)])) * arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-338f, -285f))))));
    var var_3 = arg_0.a.c;
    return arg_0.a.a.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_4(vec4<u32>(u_input.d, abs(~(~61510u)), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(arg_0.b.d.x), ~arg_1.x, 1u, 1u), vec4<u32>(0u << (1u % 32u), max(u_input.a, arg_1.x), _wgslsmith_dot_vec2_u32(arg_0.c.d.xy, vec2<u32>(2022u, 1u)), countOneBits(arg_0.c.d.x))), 0u), ~(-vec2<i32>(15800i << (u_input.d % 32u), -32286i ^ arg_0.a.e.x)), global1[_wgslsmith_index_u32(countOneBits(9050u), 4u)]);
    global0 = max(u_input.c, _wgslsmith_clamp_i32(abs(var_0.b.x), u_input.c, _wgslsmith_sub_i32(-6428i, _wgslsmith_mod_i32(arg_0.b.e.x, arg_0.c.e.x))));
    var var_1 = vec3<u32>(~_wgslsmith_mod_u32(~4294967295u, 38941u), ~func_4(Struct_3(Struct_2(Struct_1(29837u, arg_0.b.c.x, vec3<f32>(-552f, -737f, var_0.c), var_0.a, vec3<i32>(arg_0.c.e.x, -1i, -26201i)), arg_0.b, arg_0.b), arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 1i, arg_0.a.e.x), arg_0.c.e)), vec3<f32>(_wgslsmith_div_f32(-351f, -1666f), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -656f)), Struct_3(arg_0, Struct_2(Struct_1(20607u, 2029f, vec3<f32>(709f, 322f, 670f), arg_0.b.d, arg_0.c.e), arg_0.b, arg_0.b), func_3(arg_0.a.c.xy, var_0.c))), ~reverseBits(arg_1.x));
    let var_2 = true || arg_2;
    let var_3 = select(vec3<bool>(arg_2, arg_2, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.d.x, 17478u), vec2<u32>(u_input.d, 2086u)), 96594u & var_1.x) > 51610u), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_2, false), arg_2), vec3<bool>(true, var_2, true), !vec3<bool>(arg_2, false, false)), !vec3<bool>(var_2, true, arg_2), true), select(!(!vec3<bool>(arg_2, true, false)), !(!vec3<bool>(false, var_2, var_2)), vec3<bool>(true, var_2 & var_2, -1000f == global1[_wgslsmith_index_u32(4294967295u, 4u)])), !vec3<bool>(var_2, all(vec4<bool>(false, var_2, true, true)), true)), vec3<bool>(true, true, true));
    return ~0i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = ~u_input.a;
    let var_2 = Struct_4(abs(arg_1.a.a.d), vec2<i32>(~_wgslsmith_add_i32(func_2(arg_1.a, vec2<u32>(49228u, 27360u), false), ~(-2147483647i)), 0i), global1[_wgslsmith_index_u32(~max(var_1, _wgslsmith_mult_u32(27456u, 28263u)) | (~1u >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(27658u, arg_1.a.c.d.x, 0u, 4294967295u)), arg_1.a.a.d >> (arg_1.b.b.d % vec4<u32>(32u))) % 32u)), 4u)]);
    global1 = array<f32, 4>();
    var_0 = ~32770i;
    return Struct_4(~vec4<u32>(48203u, var_2.a.x, abs(~94095u), 63542u), vec2<i32>(1i, 1i >> ((u_input.a & var_2.a.x) % 32u)), -1209f);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = func_5(firstLeadingBit(vec3<i32>(u_input.c, max(u_input.c, u_input.c), ~func_2(Struct_2(Struct_1(arg_2.x, arg_0.x, vec3<f32>(-602f, global1[_wgslsmith_index_u32(39168u, 4u)], arg_0.x), vec4<u32>(1u, 4294967295u, arg_2.x, u_input.a), vec3<i32>(2147483647i, -2147483647i, u_input.c)), Struct_1(33126u, -259f, vec3<f32>(global1[_wgslsmith_index_u32(0u, 4u)], arg_0.x, -1341f), vec4<u32>(4294967295u, 60549u, arg_2.x, arg_2.x), vec3<i32>(0i, u_input.c, u_input.c)), Struct_1(30968u, arg_0.x, vec3<f32>(-695f, -1504f, -203f), vec4<u32>(84457u, u_input.a, arg_2.x, u_input.b), vec3<i32>(u_input.c, u_input.c, 1i))), vec2<u32>(arg_2.x, arg_2.x), true))), Struct_3(Struct_2(Struct_1(arg_2.x >> (26796u % 32u), 2503f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 678f, arg_0.x) - vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(arg_2.x, 4u)], -317f)), vec4<u32>(arg_2.x, arg_2.x, 9803u, u_input.b), -vec3<i32>(u_input.c, -2147483647i, -2147483647i)), Struct_1(arg_2.x, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1313f, arg_0.x))), vec4<u32>(arg_2.x, 18860u, 20799u, arg_2.x) ^ vec4<u32>(arg_2.x, arg_2.x, u_input.a, u_input.b), ~vec3<i32>(1i, u_input.c, u_input.c)), Struct_1(16684u, -936f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_2.x, 4u)], arg_0.x, 630f)), vec4<u32>(0u, u_input.b, 4294967295u, 21821u) >> (vec4<u32>(19656u, u_input.b, arg_2.x, 5421u) % vec4<u32>(32u)), vec3<i32>(56221i, u_input.c, 42932i))), Struct_2(Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(1779f, 497f, arg_0.x)), reverseBits(vec4<u32>(18895u, u_input.a, u_input.a, 4520u)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, -2147483647i, -24119i))), Struct_1(73763u, _wgslsmith_f_op_f32(1688f + arg_0.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-865f, 173f, global1[_wgslsmith_index_u32(arg_2.x, 4u)]))), ~vec4<u32>(arg_2.x, 1u, 4294967295u, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -1i, 30427i), vec3<i32>(983i, u_input.c, -68262i), vec3<i32>(27453i, u_input.c, -4322i))), Struct_1(u_input.b, _wgslsmith_f_op_f32(abs(138f)), vec3<f32>(-113f, -1003f, 136f), abs(vec4<u32>(29349u, 0u, 0u, u_input.d)), vec3<i32>(-1i, u_input.c, 15509i))), abs(abs(vec3<i32>(u_input.c, 1180i, 34074i)) << ((vec3<u32>(21483u, 1u, 0u) >> (vec3<u32>(u_input.d, 0u, arg_2.x) % vec3<u32>(32u))) % vec3<u32>(32u)))), u_input.c);
    global0 = _wgslsmith_add_i32(54634i, var_0.b.x);
    global0 = u_input.c | 0i;
    let var_1 = Struct_3(Struct_2(Struct_1(~109874u, arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, var_0.c) + vec3<f32>(1326f, -1215f, 1559f)) * vec3<f32>(arg_0.x, -1435f, 501f)), ~min(var_0.a, var_0.a), abs(firstTrailingBit(vec3<i32>(-1i, 0i, u_input.c)))), Struct_1(arg_2.x & max(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 4u)], 598f, var_0.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1028f, -935f, -305f)))), ~var_0.a >> (var_0.a % vec4<u32>(32u)), vec3<i32>(-42560i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b.x), vec2<i32>(u_input.c, 11599i)), countOneBits(var_0.b.x))), Struct_1(firstLeadingBit(4294967295u >> (var_0.a.x % 32u)), global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, -640f, -246f) - vec3<f32>(arg_0.x, 1000f, global1[_wgslsmith_index_u32(var_0.a.x, 4u)])), var_0.a, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, var_0.b.x, u_input.c), -vec3<i32>(u_input.c, var_0.b.x, -1i)))), Struct_2(Struct_1(~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 443f, 795f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1414f, global1[_wgslsmith_index_u32(21137u, 4u)], -630f))))), ~var_0.a << (abs(var_0.a) % vec4<u32>(32u)), vec3<i32>(var_0.b.x, min(var_0.b.x, -2147483647i), var_0.b.x)), Struct_1(u_input.d, -2671f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -672f)), vec4<u32>(countOneBits(4294967295u), u_input.b, 0u, ~u_input.d), vec3<i32>(-13303i, u_input.c, -13102i)), Struct_1(min(arg_2.x | 1u, u_input.b), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(0u), 4u)], 284f), vec3<f32>(var_0.c, 390f, _wgslsmith_f_op_f32(-var_0.c)), func_5(select(vec3<i32>(var_0.b.x, 0i, u_input.c), vec3<i32>(var_0.b.x, -24611i, u_input.c), arg_1), Struct_3(Struct_2(Struct_1(var_0.a.x, global1[_wgslsmith_index_u32(42134u, 4u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], var_0.c, arg_0.x), vec4<u32>(1u, 0u, arg_2.x, arg_2.x), vec3<i32>(0i, -39719i, var_0.b.x)), Struct_1(1u, var_0.c, vec3<f32>(539f, var_0.c, arg_0.x), vec4<u32>(0u, var_0.a.x, 35545u, var_0.a.x), vec3<i32>(2147483647i, -2147483647i, u_input.c)), Struct_1(u_input.a, 909f, vec3<f32>(241f, global1[_wgslsmith_index_u32(11701u, 4u)], -1207f), vec4<u32>(u_input.b, 34152u, 15190u, arg_2.x), vec3<i32>(1i, var_0.b.x, u_input.c))), Struct_2(Struct_1(67588u, 181f, vec3<f32>(var_0.c, -649f, global1[_wgslsmith_index_u32(1u, 4u)]), var_0.a, vec3<i32>(u_input.c, var_0.b.x, -47952i)), Struct_1(0u, arg_0.x, vec3<f32>(var_0.c, arg_0.x, global1[_wgslsmith_index_u32(var_0.a.x, 4u)]), vec4<u32>(var_0.a.x, 0u, var_0.a.x, var_0.a.x), vec3<i32>(3524i, 61857i, 29714i)), Struct_1(1u, var_0.c, vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 4u)], 589f), var_0.a, vec3<i32>(1i, 85594i, 1i))), vec3<i32>(var_0.b.x, 15733i, -65251i)), u_input.c).a, ~(vec3<i32>(-1i, u_input.c, -2147483647i) | vec3<i32>(u_input.c, 38580i, u_input.c)))), vec3<i32>(0i, u_input.c, -1i));
    let var_2 = var_0.a;
    return var_1;
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.b.c - arg_2.a.a.c) - vec3<f32>(global1[_wgslsmith_index_u32(57218u, 4u)], arg_3.c, arg_3.c)))))));
    var var_1 = _wgslsmith_sub_u32(4294967295u, ~101559u << (~(~func_4(arg_2, var_0, Struct_3(arg_2.a, Struct_2(arg_2.b.b, arg_2.b.c, arg_2.a.a), arg_2.c))) % 32u));
    let var_2 = 44535u;
    global0 = 25852i;
    let var_3 = -721f;
    return 61130i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    var var_0 = vec4<i32>(firstTrailingBit(29590i) ^ func_6(global1[_wgslsmith_index_u32(10342u, 4u)] != global1[_wgslsmith_index_u32(u_input.b, 4u)], vec4<bool>(false, false, false, false), func_1(vec2<f32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), false, vec2<u32>(4294967295u, u_input.a)), Struct_4(vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), vec2<i32>(u_input.c, u_input.c), global1[_wgslsmith_index_u32(u_input.d, 4u)])), u_input.c, u_input.c, max(func_2(func_1(vec2<f32>(-481f, 1043f), true, vec2<u32>(u_input.a, u_input.b)).a, vec2<u32>(0u, 4294967295u) ^ vec2<u32>(24030u, u_input.b), true), _wgslsmith_mult_i32(1i | u_input.c, -51548i))) & vec4<i32>(-47431i, 2147483647i, _wgslsmith_sub_i32(-u_input.c, 0i << (firstLeadingBit(71400u) % 32u)), max(u_input.c, u_input.c) ^ _wgslsmith_mod_i32(u_input.c & 0i, u_input.c));
    let var_1 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] + global1[_wgslsmith_index_u32(11779u, 4u)])))))), _wgslsmith_div_vec3_f32(vec3<f32>(336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1019f * global1[_wgslsmith_index_u32(1u, 4u)])))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 4u)] - -1419f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 4u)] - global1[_wgslsmith_index_u32(44651u, 4u)]))), global1[_wgslsmith_index_u32(select(abs(63308u), firstTrailingBit(56980u), true), 4u)])), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 51970u, u_input.a), ~vec4<u32>(4294967295u, u_input.a, 49144u, u_input.d)) ^ ~vec4<u32>(28919u, 1u, u_input.b, 95088u), _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_0.x, ~(-1i), u_input.c), _wgslsmith_add_vec3_i32(firstLeadingBit(countOneBits(var_0.wxz)), ~min(vec3<i32>(30102i, 0i, 17330i), var_0.wwx)), min(vec3<i32>(3416i, -2147483647i, _wgslsmith_div_i32(1i, u_input.c)), min(var_0.xzx, ~var_0.xwy))));
    var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, var_1.e.x, _wgslsmith_div_i32(31288i, -2387i), abs(-2147483647i))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, -42548i, var_1.e.x, 476i), vec4<i32>(11642i, var_0.x, 0i, var_0.x), false), min(vec4<i32>(-1i, -63i, var_1.e.x, u_input.c), vec4<i32>(var_1.e.x, 38949i, var_1.e.x, -1i))), var_0.x, 0i | firstTrailingBit(0i), -(i32(-1i) * -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.e.xz, _wgslsmith_sub_vec2_i32(var_0.zz, vec2<i32>(u_input.c, -2147483647i))), var_0.x, -func_5(vec3<i32>(2147483647i, -55671i, var_1.e.x), Struct_3(Struct_2(Struct_1(var_1.a, -1298f, vec3<f32>(var_1.b, var_1.b, 508f), vec4<u32>(23813u, 31248u, 1u, 0u), vec3<i32>(10690i, -1i, var_0.x)), var_1, var_1), Struct_2(Struct_1(4669u, -914f, var_1.c, vec4<u32>(u_input.b, var_1.a, u_input.d, var_1.a), var_1.e), Struct_1(49867u, global1[_wgslsmith_index_u32(32654u, 4u)], vec3<f32>(var_1.b, var_1.b, -1375f), var_1.d, var_1.e), var_1), vec3<i32>(-32147i, 1i, 1i)), var_1.e.x).b.x, ~var_1.e.x)));
    var var_2 = var_1.d.yy;
    let x = u_input.a;
    s_output = StorageBuffer(-239f, 31055u, _wgslsmith_f_op_vec2_f32(-var_1.c.yy));
}

