struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0u, vec4<u32>(37945u, 1u, 51325u, 20493u), vec2<f32>(-629f, 1000f), 2314f, 76105i), Struct_1(0u, vec4<u32>(51153u, 682u, 0u, 45569u), vec2<f32>(-348f, 879f), -2676f, 33424i), Struct_1(73947u, vec4<u32>(101445u, 49791u, 19015u, 0u), vec2<f32>(1002f, 942f), -825f, -1i), Struct_1(31300u, vec4<u32>(60185u, 0u, 6827u, 28093u), vec2<f32>(-1009f, -728f), -201f, -54654i), Struct_1(0u, vec4<u32>(92024u, 95770u, 1u, 1u), vec2<f32>(-517f, -1908f), 1680f, 0i));

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: u32 = 0u;

var<private> global3: u32 = 0u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_1.x), vec4<u32>(29138u, 73399u, 0u, 70114u), vec4<u32>(0u, 4485u, 1u, arg_1.x)), countOneBits(vec4<u32>(arg_1.x, 19654u, arg_1.x, arg_1.x)), ~vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5452u, 19121u, arg_1.x), vec3<u32>(15466u, 4294967295u, 4294967295u)), firstLeadingBit(arg_1.x), ~arg_1.x, countOneBits(0u)))), 5u)];
    let var_1 = -max((-1i | (u_input.a | -9484i)) << (1u % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_0.e, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), firstTrailingBit(35575i) << (~0u % 32u)));
    let var_2 = ~select(var_0.b, var_0.b, vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    let var_3 = _wgslsmith_mult_u32(1322u, arg_1.x);
    let var_4 = ~8240u;
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = Struct_1(~(~(0u ^ arg_2.b.x)) << (~countOneBits(~arg_0.b.x) % 32u), vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 11334u, 4294967295u) | arg_0.b.x, firstLeadingBit(countOneBits(42656u)) & arg_2.b.x, ~arg_2.a, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), arg_2.d, reverseBits(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-7623i, u_input.c.x, 23284i), arg_0.e)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(422f, arg_3) + vec2<f32>(606f, -364f)))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3), arg_0.d));
    var_0 = Struct_1(29545u, ~vec4<u32>(~_wgslsmith_mult_u32(arg_2.b.x, arg_0.a), arg_2.b.x, abs(_wgslsmith_mult_u32(arg_2.a, 20364u)), arg_2.a), arg_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.c.x)))) - var_0.c.x))), -(firstTrailingBit(var_0.e) & -_wgslsmith_dot_vec2_i32(arg_1.zw, u_input.c.zy)));
    global3 = _wgslsmith_div_u32(~6349u, _wgslsmith_div_u32(4294967295u, ~4294967295u | arg_0.a));
    let var_2 = arg_1.x;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global3 = func_4(arg_1, u_input.d, Struct_1(~func_3(-26124i, arg_1.b.yz, 0i) ^ 1u, min(_wgslsmith_mod_vec4_u32(~arg_1.b, arg_0.b), _wgslsmith_mod_vec4_u32(~arg_0.b, vec4<u32>(arg_0.b.x, 4132u, arg_1.b.x, arg_1.a) >> (vec4<u32>(arg_0.a, arg_1.b.x, arg_1.b.x, 6126u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(arg_1.c.x, 1076f)) - arg_1.c), _wgslsmith_f_op_f32(-414f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d, -249f)))), arg_1.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.c.x)))));
    global3 = _wgslsmith_dot_vec2_u32(max(~(~arg_1.b.yy), min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), min(vec2<u32>(arg_0.b.x, 4294967295u), arg_0.b.xw)), vec2<u32>(arg_1.b.x ^ 1u, min(0u, arg_0.b.x)))), vec2<u32>(arg_0.a, countOneBits(~(~arg_0.a))));
    global3 = select(arg_0.a, ~arg_0.a, !(!(!all(vec2<bool>(true, true)))));
    var var_0 = arg_1;
    global2 = _wgslsmith_div_u32(_wgslsmith_add_u32(110322u, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(arg_1.b, arg_1.b), firstTrailingBit(min(vec4<u32>(var_0.b.x, 43332u, 45839u, 6807u), arg_0.b)))), arg_0.b.x);
    return !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, var_0.e <= arg_0.e, true, true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    global3 = _wgslsmith_mod_u32(1u, 1u);
    let var_0 = vec2<i32>(~u_input.a, _wgslsmith_mult_i32(74168i, ~(-1i))) ^ u_input.c.yz;
    global0 = array<Struct_1, 5>();
    global2 = 0u;
    global3 = ~(~abs(max(~1u, 1u)));
    return global0[_wgslsmith_index_u32(62024u, 5u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> vec2<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, arg_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(369f + -1000f), -471f)), vec2<f32>(_wgslsmith_f_op_f32(-636f - -1705f), -785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_mod_i32(~(-_wgslsmith_clamp_i32(var_0.e, u_input.d.x, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~6229i, u_input.d.x, 1i), vec3<i32>(_wgslsmith_div_i32(1i, 13990i), 0i, arg_0.e))));
    var_0 = func_5(select(!vec4<bool>(arg_1.x, true, all(vec2<bool>(arg_1.x, arg_2)), false), !select(!vec4<bool>(arg_1.x, arg_1.x, arg_2, true), func_2(arg_0, arg_0), func_2(Struct_1(arg_0.a, arg_0.b, vec2<f32>(arg_0.c.x, -781f), -1612f, var_0.e), global0[_wgslsmith_index_u32(arg_0.b.x, 5u)]).x), vec4<bool>(any(vec3<bool>(true, arg_1.x, arg_1.x)), true, all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(54907u, arg_0.b.x), 19u)]), var_0.a == (arg_0.a >> (var_0.b.x % 32u)))), u_input.c.x);
    global1 = array<vec2<bool>, 19>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_0.d))), var_0.d);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(759f, arg_0.d) + vec2<f32>(arg_0.c.x, arg_0.d)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(3577f, -1000f))) * arg_0.c)) - arg_0.c), arg_0.d, _wgslsmith_dot_vec2_i32(-arg_3, arg_3));
    global1 = array<vec2<bool>, 19>();
    var var_1 = func_5(select(!func_2(Struct_1(1u, vec4<u32>(arg_0.a, var_0.b.x, var_0.a, 1u), arg_0.c, arg_0.d, arg_0.e), Struct_1(arg_0.b.x, vec4<u32>(1u, var_0.a, 20997u, 0u), arg_0.c, 342f, u_input.a)), vec4<bool>(any(global1[_wgslsmith_index_u32(arg_0.b.x ^ 1u, 19u)]), any(vec3<bool>(false, false, false)), false, (-2147483647i == arg_3.x) & false), false), ~1i);
    let var_2 = arg_0.b.yx;
    let var_3 = -591f;
    return firstTrailingBit(func_4(Struct_1(func_3(-49173i, ~vec2<u32>(0u, 1u), abs(arg_0.e)), ~arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(arg_0.b.x, 5u)], vec3<bool>(arg_1.x, true, arg_2.x), arg_2.x, 285f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - 1000f), _wgslsmith_f_op_f32(var_0.c.x * var_1.c.x)), arg_3.x), _wgslsmith_mult_vec4_i32(max(~u_input.d, select(u_input.d, vec4<i32>(-35405i, var_1.e, var_0.e, u_input.c.x), true)), countOneBits(u_input.d) | firstLeadingBit(u_input.d)), func_5(!vec4<bool>(arg_2.x, arg_1.x, arg_2.x, arg_1.x), -2147483647i), _wgslsmith_f_op_f32(select(491f, var_0.d, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 19>();
    var var_0 = -2147483647i;
    global3 = 1u;
    var var_1 = _wgslsmith_mult_u32(1u, 4294967295u);
    global3 = _wgslsmith_mod_u32(~(1u >> (1u % 32u)), func_6(Struct_1(7176u, ~vec4<u32>(49823u, 1u, 61403u, 17975u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(30680u, vec4<u32>(1u, 4294967295u, 32425u, 46324u), vec2<f32>(2128f, 154f), 327f, u_input.b), vec3<bool>(true, false, true), true, 591f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-344f, 1994f), vec2<f32>(-432f, 535f), true)))), _wgslsmith_div_f32(456f, 336f), u_input.a), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), global1[_wgslsmith_index_u32(0u, 19u)], u_input.d.zy));
    global1 = array<vec2<bool>, 19>();
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-377f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(true, false, true, false), u_input.b).c.x - -185f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(f32(-1f) * -435f)))), vec3<f32>(1f, 1f, 1f));
    var var_3 = func_5(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), var_2.x >= 1674f)), max(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, 30632i, 10347i), u_input.b), countOneBits(u_input.a & -23872i)), 2147483647i));
    var var_4 = u_input.d.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(countOneBits(abs(var_3.e)), 1i), _wgslsmith_sub_u32(~(~71719u ^ ~var_3.a), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_3.b, var_3.b), ~vec4<u32>(44984u, var_3.a, var_3.b.x, 1u))), vec4<i32>(1i, var_4.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_3.e, 2147483647i)), var_4.yy), 44139i));
}

