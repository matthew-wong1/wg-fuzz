struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(0u, 4294967295u, 29858u, 66919u), vec4<u32>(0u, 1u, 5485u, 0u), vec4<u32>(40897u, 45373u, 1u, 1u), vec4<u32>(1u, 1u, 49746u, 1u), vec4<u32>(90795u, 32876u, 1u, 33939u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(3126u, 35471u, 0u, 12072u), vec4<u32>(1u, 30081u, 1u, 0u), vec4<u32>(0u, 38545u, 27289u, 4294967295u), vec4<u32>(470u, 46939u, 1140u, 40523u), vec4<u32>(8635u, 68547u, 1u, 4294967295u), vec4<u32>(92910u, 56101u, 1u, 4294967295u), vec4<u32>(70806u, 22443u, 0u, 43473u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(1u, 0u, 58870u, 1u), vec4<u32>(55300u, 4294967295u, 4294967295u, 1u), vec4<u32>(93763u, 4294967295u, 115574u, 8149u), vec4<u32>(35595u, 21022u, 53316u, 11414u), vec4<u32>(613u, 33064u, 0u, 0u), vec4<u32>(0u, 32636u, 27809u, 71138u), vec4<u32>(5790u, 1u, 25463u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 49472u), vec4<u32>(4294967295u, 0u, 52120u, 45816u), vec4<u32>(0u, 93300u, 0u, 2141u), vec4<u32>(17833u, 1u, 29089u, 6168u), vec4<u32>(1u, 0u, 4294967295u, 43438u), vec4<u32>(4294967295u, 1u, 0u, 50241u));

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(43901i, vec2<f32>(-1636f, -143f), Struct_1(vec3<bool>(false, false, false), 35853u, 250f)), Struct_2(13664i, vec2<f32>(-770f, -674f), Struct_1(vec3<bool>(true, false, false), 1u, 1000f)), Struct_2(1i, vec2<f32>(671f, 291f), Struct_1(vec3<bool>(false, true, true), 0u, 994f)), Struct_2(-1i, vec2<f32>(109f, 1154f), Struct_1(vec3<bool>(true, false, false), 26951u, 630f)), Struct_2(-25055i, vec2<f32>(-2755f, 1000f), Struct_1(vec3<bool>(false, true, false), 1u, 1587f)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(46876u, 0u, 0u), vec3<u32>(4294967295u, 14207u, 3923u), vec3<u32>(0u, 41403u, 84077u), vec3<u32>(4294967295u, 4294967295u, 78058u), vec3<u32>(11469u, 30141u, 74913u), vec3<u32>(0u, 4294967295u, 9393u), vec3<u32>(47998u, 62322u, 1u), vec3<u32>(4294967295u, 0u, 49571u), vec3<u32>(4810u, 0u, 0u), vec3<u32>(4294967295u, 50665u, 4743u), vec3<u32>(0u, 50543u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(33071u, 7130u, 4294967295u), vec3<u32>(27916u, 1u, 32197u), vec3<u32>(84328u, 0u, 4294967295u), vec3<u32>(18273u, 4294967295u, 27420u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(3170u, 4294967295u, 22443u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 26576u, 66198u), vec3<u32>(17914u, 4294967295u, 1u), vec3<u32>(0u, 1u, 70744u), vec3<u32>(9449u, 35787u, 10262u), vec3<u32>(1u, 22239u, 70404u), vec3<u32>(29254u, 50140u, 70682u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(34013u, 86767u, 19737u));

var<private> global4: array<i32, 7>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> i32 {
    var var_0 = 845f;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    var var_2 = ~countOneBits(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(16425u, 7u)], u_input.b.x, var_1.a), vec3<i32>(u_input.b.x, 1i, -1i))) | vec3<i32>(~u_input.b.x, global4[_wgslsmith_index_u32(countOneBits(u_input.a.x), 7u)], min(var_1.a, global4[_wgslsmith_index_u32(41816u, 7u)])));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.c.c))))));
    return var_1.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    global1 = array<Struct_2, 5>();
    let var_0 = abs(-_wgslsmith_mod_i32(-3621i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) ^ ~(~(global4[_wgslsmith_index_u32(1u, 7u)] >> (20985u % 32u))));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(u_input.b.x, var_0, -2147483647i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, global4[_wgslsmith_index_u32(79989u, 7u)]) ^ vec4<i32>(-7543i, var_0, u_input.b.x, var_0), select(vec4<i32>(6098i, var_0, 0i, global4[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<i32>(-25341i, global4[_wgslsmith_index_u32(0u, 7u)], 2147483647i, -10587i), vec4<bool>(arg_1.x, true, true, arg_1.x)))), ~abs(vec4<i32>(var_0, u_input.b.x, var_0, global4[_wgslsmith_index_u32(u_input.c.x, 7u)]))), vec4<i32>(-1i, 1i, -11823i, var_0));
    let var_2 = vec2<u32>(4294967295u, ~68863u);
    global0 = array<vec4<u32>, 27>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-316f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f) + 1401f), 1f))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = -745f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(2415f, arg_3, -370f), vec2<bool>(true, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))));
    global3 = array<vec3<u32>, 28>();
    let var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_3 = _wgslsmith_mult_i32(select(~arg_0, -1i, var_2.a.x) << (var_2.b % 32u), _wgslsmith_sub_i32(0i, abs(-18242i)));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(81085u, ~0u, 0u, min(14995u, arg_1.x)), vec4<u32>(4294967295u, ~43307u, u_input.c.x, 90098u))), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(arg_1.x, arg_1.x)), u_input.a.x, arg_2, 0u))), 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<u32>, 27>();
    let var_0 = ~select(16523u, ~_wgslsmith_clamp_u32(arg_1.x ^ arg_0.b, _wgslsmith_mod_u32(arg_0.b, u_input.a.x), arg_0.b), !all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)));
    var var_1 = arg_1.x;
    let var_2 = arg_0;
    var var_3 = countOneBits(~2147483647i);
    return func_2(reverseBits(abs(-31507i)), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 63880u, var_2.b), ~vec3<u32>(19428u, 27572u, arg_0.b))), var_0, _wgslsmith_f_op_f32(-1000f - 251f));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = true;
    let var_1 = 0u;
    let var_2 = arg_2.x;
    var var_3 = Struct_2(arg_0.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1010f, arg_1.c), vec2<f32>(arg_1.c, arg_1.c)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 597f) + vec2<f32>(arg_1.c, 864f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(623f, -318f)))))))), Struct_1(vec3<bool>(!arg_1.a.x, select(true, true, var_1 > u_input.a.x), var_0), countOneBits(abs(u_input.a.x)), -432f));
    var var_4 = global2[_wgslsmith_index_u32(var_3.c.b, 29u)];
    return global1[_wgslsmith_index_u32(~0u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-vec2<i32>(-min(global4[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x), -2147483647i), func_4(func_2(func_1(), u_input.a.xxy, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(366f, -403f, true)))), ~min(vec4<u32>(4294967295u, 30880u, u_input.a.x, 0u), ~vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 70442u))), vec3<bool>(true, all(vec2<bool>(u_input.c.x > 58136u, true)), select(true, func_2(2147483647i, vec3<u32>(u_input.c.x, 11630u, 0u), u_input.c.x, -355f).a.x, any(vec2<bool>(false, true))) & true));
    global3 = array<vec3<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(0u, 7u)], global4[_wgslsmith_index_u32(var_0.c.b, 7u)], 39664i), vec3<i32>(global4[_wgslsmith_index_u32(52487u, 7u)], var_0.a, global4[_wgslsmith_index_u32(4294967295u, 7u)])))), vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(u_input.b, abs(vec2<i32>(1i, u_input.b.x)))), 2147483647i));
}

