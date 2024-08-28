struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(2995u, 4294967295u, 19762u, 0u, 1u, 1u, 0u, 44817u, 20735u, 0u, 1u, 0u, 3843u, 77679u, 4294967295u, 4294967295u, 0u, 4294967295u, 26245u, 21303u, 48915u, 1u, 1u, 2311u, 0u, 75526u, 8804u, 0u, 29992u, 4294967295u, 116442u);

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<u32, 14> = array<u32, 14>(0u, 1u, 0u, 0u, 0u, 0u, 4294967295u, 21742u, 23152u, 4294967295u, 74205u, 1u, 1u, 6263u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> vec3<f32> {
    var var_0 = u_input.a.x;
    global1 = array<vec2<i32>, 26>();
    var var_1 = 4294967295u;
    global1 = array<vec2<i32>, 26>();
    global2 = array<u32, 14>();
    return vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-486f, -698f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), arg_2.b));
    let var_1 = Struct_4(vec2<i32>(~0i, _wgslsmith_dot_vec2_i32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 26u)], vec2<i32>(1i, 1i)) | _wgslsmith_div_i32(arg_0.x, arg_0.x)), vec2<bool>(!arg_1.a.e.x, arg_1.c.x));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(any(vec2<bool>(false, var_1.b.x)), ~vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(14244u, 31u)]), arg_1.d << (global2[_wgslsmith_index_u32(1u, 14u)] % 32u))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b, -613f, arg_1.b)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-881f, 1144f, 1188f)))))));
    global1 = array<vec2<i32>, 26>();
    return arg_2.a.e.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec4<f32> {
    global0 = array<u32, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-536f, 722f, arg_3.x, arg_3.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-386f, -1054f, arg_3.x, arg_3.x), vec4<f32>(arg_3.x, 1566f, -946f, arg_3.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, _wgslsmith_f_op_f32(538f * arg_3.x), arg_3.x, _wgslsmith_f_op_f32(362f + arg_3.x)))), vec4<f32>(arg_3.x, 752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1671f + arg_3.x) - _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1417f, -163f, var_0.x, -1000f)) + vec4<f32>(_wgslsmith_div_f32(-1221f, var_0.x), var_0.x, -420f, arg_3.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f * -1364f) * _wgslsmith_f_op_f32(trunc(-1517f))), arg_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * 544f), _wgslsmith_f_op_f32(arg_3.x + 433f))), var_0.x))));
    var var_1 = -(reverseBits(_wgslsmith_div_i32(-2147483647i, abs(arg_1))) ^ -select(_wgslsmith_mod_i32(u_input.a.x, arg_1), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 26u)], vec2<i32>(-1i, -2147483647i)), !arg_0));
    global2 = array<u32, 14>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(-arg_3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1014f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(arg_3.x * -332f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec2<i32> {
    return ~(~vec2<i32>(-1i, _wgslsmith_add_i32(countOneBits(u_input.a.x), -2147483647i)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    var var_0 = -func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(global1[_wgslsmith_index_u32(arg_2, 26u)], Struct_3(Struct_1(u_input.b.x, u_input.a.x, vec2<f32>(arg_0, 404f), u_input.b.x, arg_1.b.e), -1814f, vec2<bool>(false, arg_1.b.e.x), arg_1.b.d), Struct_3(Struct_1(u_input.b.x, 21936i, vec2<f32>(arg_1.b.c.x, arg_1.b.c.x), arg_1.b.d, vec4<bool>(false, false, false, arg_1.c.x)), -413f, arg_1.b.e.wx, 42256i)), arg_1.b.b, select(arg_1.b.e.wxy, arg_1.b.e.zww, vec3<bool>(arg_1.b.e.x, true, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, 932f, arg_0) - vec3<f32>(-1000f, arg_0, 1299f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 688f) - vec4<f32>(arg_1.b.c.x, arg_1.b.c.x, 267f, arg_1.b.c.x)))), Struct_3(Struct_1(~u_input.a.x, -1i >> (0u % 32u), _wgslsmith_div_vec2_f32(arg_1.b.c, vec2<f32>(arg_0, 915f)), max(2147483647i, -1349i), !arg_1.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)), arg_1.c, _wgslsmith_mult_i32(2147483647i, ~(-1i))), true, ~reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(117040u, 31u)])));
    var var_1 = arg_1.b.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.c.x, _wgslsmith_f_op_vec3_f32(func_3(arg_1.b.e.x, vec3<u32>(57849u, global0[_wgslsmith_index_u32(48435u, 31u)], arg_2), arg_1.b.d)).x, _wgslsmith_f_op_f32(min(-967f, -1116f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) * vec3<f32>(-1889f, var_1.x, -1560f))))));
    let var_3 = Struct_4(u_input.a << (arg_1.a.xx % vec2<u32>(32u)), arg_1.c);
    global1 = array<vec2<i32>, 26>();
    return _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, reverseBits(-2147483647i), _wgslsmith_div_i32(u_input.a.x, arg_1.b.b), u_input.a.x)), -(~(vec4<i32>(1i, 73562i, u_input.b.x, var_0.x) << (vec4<u32>(arg_1.d.x, 89648u, arg_1.d.x, arg_1.a.x) % vec4<u32>(32u))) ^ -(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x) >> (vec4<u32>(59620u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.d.x, 31u)], 14u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30583u, 14u)], 31u)], 4294967295u) % vec4<u32>(32u)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1884f, 447f), vec2<f32>(1234f, 517f))))), _wgslsmith_f_op_vec3_f32(func_3(any(vec2<bool>(true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(60939u, 14u)], 1u, 30368u), vec3<u32>(1688u, 0u, 4294967295u) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10886u, 31u)], 31u)], global0[_wgslsmith_index_u32(83261u, 31u)], 50821u)), -30384i)).xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, -690f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1545f, 548f)))))) - vec2<f32>(_wgslsmith_f_op_vec4_f32(func_4(all(vec3<bool>(false, true, false)), -29405i, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1112f, -787f, -235f))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f - -770f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(814f)), _wgslsmith_f_op_f32(418f - -394f));
    let var_2 = !select(select(vec4<bool>(var_1 <= var_0.x, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 31u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1641f, 261f, _wgslsmith_f_op_f32(-var_0.x)));
    return ~min(2147483647i, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-837f, var_1, var_0.x, -2514f)), Struct_3(Struct_1(arg_0.x, u_input.a.x, var_0, arg_0.x, vec4<bool>(var_2.x, var_2.x, true, var_2.x)), var_4.x, vec2<bool>(var_2.x, false), -37314i), !var_2.x, 1u).x) == -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(func_6(vec2<i32>(2147483647i, 1881i), func_1(315f, Struct_2(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24792u, 31u)], 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]), Struct_1(u_input.a.x, -2147483647i, vec2<f32>(1341f, -229f), u_input.a.x, vec4<bool>(false, false, false, true)), vec2<bool>(true, true), vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(78257u, 14u)], 14u)])), 4294967295u)), true));
    var var_1 = -788f;
    let var_2 = Struct_5(vec4<bool>(var_0.x && !func_6(vec2<i32>(1i, -13735i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, -7244i)), !(firstTrailingBit(u_input.b.x) < u_input.a.x), var_0.x, select(-u_input.a.x <= 54229i, true, var_0.x)), -17142i, 3043f);
    global1 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, -(i32(-1i) * -1i), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, 308f, var_2.c))), Struct_3(Struct_1(1403i, u_input.a.x, vec2<f32>(-1000f, -189f), 63477i, vec4<bool>(false, var_2.a.x, true, var_0.x)), _wgslsmith_div_f32(-277f, var_2.c), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_2.a.x, false)), 0i), true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 31u)], 31u)] | _wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 14u)], 0u)).x, firstTrailingBit(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, -139f, var_2.c)) - _wgslsmith_f_op_vec4_f32(func_4(var_2.a.x, -14189i, var_2.a.yww, vec3<f32>(var_2.c, -1000f, var_2.c))).xwy), _wgslsmith_f_op_vec3_f32(func_3(var_2.a.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(33379u, 36748u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(53941u, 14u)], 11740u, 70200u), vec3<u32>(0u, 1u, 36809u)), _wgslsmith_mult_i32(var_2.b, -20066i)))))), abs(~(~vec3<u32>(0u, 22499u, global0[_wgslsmith_index_u32(4294967295u, 31u)]))) ^ vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 14u)], 0u), 14u)]), global0[_wgslsmith_index_u32(1u, 31u)] >> (~47026u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 27533u), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<u32>(global2[_wgslsmith_index_u32(69464u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 14u)], 14u)], 14u)])), 31u)], 14u)]), 14u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-376f * var_2.c), _wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_f_op_f32(-var_2.c), 1380f)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~abs(vec3<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 31u)], 14u)], global0[_wgslsmith_index_u32(0u, 31u)], 1u)), vec3<u32>(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 14u)]), 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 31u)]), vec2<u32>(global0[_wgslsmith_index_u32(74u, 31u)], global2[_wgslsmith_index_u32(27259u, 14u)])), firstLeadingBit(39543u))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66147u, 31u)], 14u)], 31u)], 31u)], 1u), vec3<u32>(24077u, global2[_wgslsmith_index_u32(32065u, 14u)], 19487u)), ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 15230u, 1u), var_2.a.x) & ~max(vec3<u32>(50681u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 31u)], 14u)], 14u)], 20177u), vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 14u)], 48335u))));
}

