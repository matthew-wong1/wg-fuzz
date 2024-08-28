struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<i32>(1i, 6521i), 2229u, Struct_1(vec4<u32>(4294967295u, 7286u, 4294967295u, 0u), -1313f, true), -437f), Struct_3(vec2<i32>(1i, -24907i), 23162u, Struct_1(vec4<u32>(1u, 0u, 47436u, 4294967295u), -237f, true), 1000f), Struct_3(vec2<i32>(-1i, -27280i), 23876u, Struct_1(vec4<u32>(1u, 1u, 50696u, 9331u), -167f, false), -1422f), Struct_3(vec2<i32>(-35236i, i32(-2147483648)), 17888u, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 288f, false), -809f), Struct_3(vec2<i32>(1i, 8308i), 4294967295u, Struct_1(vec4<u32>(4294967295u, 43561u, 39964u, 75149u), -1000f, false), 137f), Struct_3(vec2<i32>(91755i, -67382i), 1u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), 176f, true), 1201f), Struct_3(vec2<i32>(2147483647i, 52976i), 4294967295u, Struct_1(vec4<u32>(7568u, 101896u, 1u, 1u), -805f, true), 1725f), Struct_3(vec2<i32>(14810i, 0i), 38632u, Struct_1(vec4<u32>(3458u, 12240u, 1u, 0u), 592f, true), 1474f), Struct_3(vec2<i32>(-497i, -1i), 41378u, Struct_1(vec4<u32>(29504u, 1u, 40928u, 56680u), 191f, true), 1428f), Struct_3(vec2<i32>(9217i, 1638i), 1u, Struct_1(vec4<u32>(30183u, 1u, 11979u, 17206u), -2214f, false), 1000f), Struct_3(vec2<i32>(-6744i, i32(-2147483648)), 23194u, Struct_1(vec4<u32>(4294967295u, 19723u, 0u, 54307u), -503f, true), 1332f), Struct_3(vec2<i32>(8027i, 2147483647i), 1u, Struct_1(vec4<u32>(1u, 1u, 1u, 1708u), -356f, false), 2499f), Struct_3(vec2<i32>(2396i, -1i), 1u, Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -2908f, false), 150f), Struct_3(vec2<i32>(-11048i, i32(-2147483648)), 0u, Struct_1(vec4<u32>(68655u, 4294967295u, 114685u, 1u), -270f, false), -1313f), Struct_3(vec2<i32>(-64783i, -2110i), 21771u, Struct_1(vec4<u32>(0u, 0u, 3735u, 0u), 3044f, false), 1000f), Struct_3(vec2<i32>(37905i, i32(-2147483648)), 34119u, Struct_1(vec4<u32>(4294967295u, 9872u, 0u, 1u), -877f, true), -1265f), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u, Struct_1(vec4<u32>(5971u, 1u, 4294967295u, 35617u), 1125f, false), 1037f), Struct_3(vec2<i32>(1i, 1i), 1u, Struct_1(vec4<u32>(1u, 28584u, 4294967295u, 1u), 1202f, true), -1611f), Struct_3(vec2<i32>(1i, 6378i), 0u, Struct_1(vec4<u32>(0u, 18636u, 59298u, 10355u), 1265f, false), 2769f), Struct_3(vec2<i32>(-27682i, -31669i), 4294967295u, Struct_1(vec4<u32>(16552u, 37057u, 1u, 1u), 1607f, true), -159f), Struct_3(vec2<i32>(i32(-2147483648), -4679i), 1u, Struct_1(vec4<u32>(4294967295u, 0u, 21527u, 49210u), 856f, false), 229f), Struct_3(vec2<i32>(i32(-2147483648), 0i), 83127u, Struct_1(vec4<u32>(25708u, 2608u, 4294967295u, 4294967295u), -1000f, true), -1292f), Struct_3(vec2<i32>(45056i, 1i), 1u, Struct_1(vec4<u32>(97922u, 34864u, 1u, 4294967295u), 343f, false), -147f), Struct_3(vec2<i32>(-68936i, 0i), 22660u, Struct_1(vec4<u32>(4294967295u, 95u, 31040u, 18558u), 1000f, true), 695f), Struct_3(vec2<i32>(2147483647i, 45926i), 4294967295u, Struct_1(vec4<u32>(19372u, 1110u, 4294967295u, 36431u), 1234f, false), 1000f), Struct_3(vec2<i32>(-94889i, i32(-2147483648)), 1u, Struct_1(vec4<u32>(4294967295u, 33576u, 95331u, 1u), -702f, true), 398f), Struct_3(vec2<i32>(0i, i32(-2147483648)), 45507u, Struct_1(vec4<u32>(0u, 1u, 123787u, 1u), 1399f, false), -1727f), Struct_3(vec2<i32>(0i, 25791i), 20411u, Struct_1(vec4<u32>(57047u, 53713u, 18630u, 4294967295u), 918f, false), -717f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec4<bool>(~arg_0.a.x == u_input.d, arg_0.c.c, !arg_0.c.c, false);
    let var_1 = vec4<f32>(685f, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.b)))))), -473f, _wgslsmith_f_op_f32(min(-809f, 167f)));
    let var_2 = var_0.x;
    var var_3 = arg_0.c;
    let var_4 = true;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-2308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -355f), _wgslsmith_f_op_f32(-arg_0)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(-48341i, 45226i), 48647u, Struct_1(vec4<u32>(u_input.e, 1u, 23590u, 9624u), arg_0, true), arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-arg_0)), u_input.d);
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(firstTrailingBit(abs(abs(vec3<i32>(u_input.d, var_0.c, u_input.d)))), -vec3<i32>(1541i, abs(var_0.c), -2147483647i), -countOneBits(-vec3<i32>(8788i, -1i, 22754i))), u_input.d & u_input.d, reverseBits(-(-vec3<i32>(-36540i, -2147483647i, -2147483647i) ^ (vec3<i32>(1i, u_input.d, 1i) >> (vec3<u32>(arg_1.a.x, 97973u, u_input.a) % vec3<u32>(32u))))), 395f);
    let var_2 = ~u_input.c;
    var var_3 = _wgslsmith_sub_i32(i32(-1i) * -1i, 15232i ^ var_0.c);
    var var_4 = _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.a, firstTrailingBit(10343u)), u_input.c.x, 4294967295u, min(1u >> (u_input.e % 32u), select(u_input.a, 34388u, arg_1.c))), ~vec4<u32>(~31210u, 0u & var_2.x, abs(u_input.b), var_2.x)), 28u)]));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = any(!global1[_wgslsmith_index_u32(0u, 22u)]);
    var var_1 = 52596u;
    global1 = array<vec2<bool>, 22>();
    global2 = array<Struct_3, 28>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(-153f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1131f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-764f, 547f))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, -(~(-1i))), _wgslsmith_div_i32(~1i, _wgslsmith_div_i32(0i, min(0i, arg_1)))));
    return func_2(1045f, Struct_1(abs(u_input.c), var_2.a, all(vec4<bool>(false, false, var_0, var_0)) && any(vec4<bool>(true, var_0, var_0, false))), 46602u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_div_f32(852f, -284f);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32((vec4<u32>(u_input.a, u_input.a, 1514u, u_input.c.x) << (vec4<u32>(27775u, u_input.c.x, u_input.b, u_input.a) % vec4<u32>(32u))) | u_input.c, u_input.c), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) + _wgslsmith_div_f32(var_0, -1254f)), true);
    var var_2 = func_1(var_0, ~(-59657i));
    global2 = array<Struct_3, 28>();
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, var_2.a.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, ~_wgslsmith_mod_u32(0u, 14736u), 0u), abs(select(abs(var_1.a.wwx), var_2.a.yxy | vec3<u32>(var_1.a.x, u_input.c.x, u_input.a), true)))), 23u)];
    let var_4 = global0[_wgslsmith_index_u32(~var_2.a.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(21924i, _wgslsmith_f_op_f32(-797f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + 413f) * _wgslsmith_div_f32(-1853f, _wgslsmith_f_op_f32(func_3(Struct_3(var_3.c.yx, 1u, Struct_1(vec4<u32>(21799u, 0u, 0u, 15050u), 2684f, true), var_0)))))));
}

