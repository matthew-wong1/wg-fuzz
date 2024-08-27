struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(vec2<f32>(315f, -2365f)), vec4<u32>(42072u, 0u, 6971u, 4294967295u), Struct_1(1u), Struct_2(vec2<f32>(-1060f, -234f)), false), Struct_3(Struct_2(vec2<f32>(132f, 362f)), vec4<u32>(1u, 35807u, 55991u, 24381u), Struct_1(4294967295u), Struct_2(vec2<f32>(-673f, -2220f)), true), Struct_3(Struct_2(vec2<f32>(2067f, -1288f)), vec4<u32>(4493u, 12913u, 1u, 64642u), Struct_1(76737u), Struct_2(vec2<f32>(434f, -1181f)), false), Struct_3(Struct_2(vec2<f32>(-647f, 472f)), vec4<u32>(37912u, 93428u, 0u, 57090u), Struct_1(17160u), Struct_2(vec2<f32>(211f, -273f)), false), Struct_3(Struct_2(vec2<f32>(953f, 1008f)), vec4<u32>(10366u, 7132u, 47704u, 59583u), Struct_1(4294967295u), Struct_2(vec2<f32>(398f, -234f)), true), Struct_3(Struct_2(vec2<f32>(-279f, -193f)), vec4<u32>(8933u, 2304u, 4294967295u, 4294967295u), Struct_1(4294967295u), Struct_2(vec2<f32>(-1818f, -888f)), true), Struct_3(Struct_2(vec2<f32>(-958f, -2057f)), vec4<u32>(34845u, 1u, 43366u, 104857u), Struct_1(1u), Struct_2(vec2<f32>(-1000f, -769f)), false), Struct_3(Struct_2(vec2<f32>(-656f, -1737f)), vec4<u32>(950u, 34093u, 1u, 41353u), Struct_1(4294967295u), Struct_2(vec2<f32>(2045f, -1475f)), true), Struct_3(Struct_2(vec2<f32>(-1278f, 984f)), vec4<u32>(1u, 104601u, 1485u, 35737u), Struct_1(1856u), Struct_2(vec2<f32>(-904f, 1076f)), false), Struct_3(Struct_2(vec2<f32>(119f, -114f)), vec4<u32>(2437u, 25949u, 63853u, 4294967295u), Struct_1(0u), Struct_2(vec2<f32>(1346f, -143f)), false), Struct_3(Struct_2(vec2<f32>(-1999f, -185f)), vec4<u32>(10856u, 0u, 1u, 1u), Struct_1(4294967295u), Struct_2(vec2<f32>(442f, -540f)), false), Struct_3(Struct_2(vec2<f32>(734f, -144f)), vec4<u32>(20478u, 0u, 7248u, 1u), Struct_1(4294967295u), Struct_2(vec2<f32>(-1370f, 399f)), false), Struct_3(Struct_2(vec2<f32>(-357f, -618f)), vec4<u32>(0u, 0u, 4294967295u, 41097u), Struct_1(2355u), Struct_2(vec2<f32>(2117f, -1649f)), false), Struct_3(Struct_2(vec2<f32>(-707f, -669f)), vec4<u32>(1u, 0u, 1u, 0u), Struct_1(44499u), Struct_2(vec2<f32>(-1659f, 1191f)), true), Struct_3(Struct_2(vec2<f32>(399f, 940f)), vec4<u32>(1u, 25946u, 97936u, 67620u), Struct_1(0u), Struct_2(vec2<f32>(-642f, -592f)), false), Struct_3(Struct_2(vec2<f32>(112f, 835f)), vec4<u32>(436u, 79762u, 0u, 4294967295u), Struct_1(0u), Struct_2(vec2<f32>(538f, -353f)), false), Struct_3(Struct_2(vec2<f32>(1000f, -391f)), vec4<u32>(1u, 1u, 1u, 4294967295u), Struct_1(1u), Struct_2(vec2<f32>(544f, 1000f)), false));

var<private> global2: array<bool, 27> = array<bool, 27>(true, true, true, false, true, false, true, false, true, true, false, true, true, false, false, false, true, true, true, false, false, true, true, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global0 = array<bool, 20>();
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    var var_0 = 147108u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 487f) * vec2<f32>(304f, -1207f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1078f, -812f) + vec2<f32>(-2283f, -294f)))))));
    return ~((firstTrailingBit(vec4<u32>(8972u, 72500u, u_input.a.x, 4294967295u)) ^ vec4<u32>(u_input.b.x, ~u_input.a.x, ~u_input.d, 68872u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.d, 26206u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, u_input.a.x), vec3<u32>(0u, 8474u, 19063u))), countOneBits(firstLeadingBit(u_input.a.x)), select(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.b.x, 23643u)), u_input.b.x, true), ~u_input.b.x) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = ~select(max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 59297u, 93799u), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.a.x)) ^ (vec4<u32>(arg_2.a, 67417u, arg_2.a, arg_2.a) & vec4<u32>(u_input.d, u_input.b.x, u_input.a.x, u_input.a.x)), func_3()), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.b.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, arg_2.a) << (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a.x, 1u, arg_2.a, u_input.d))), !(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(18048u, 20u)], false, global0[_wgslsmith_index_u32(67041u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false, false), global2[_wgslsmith_index_u32(arg_2.a, 27u)])));
    global2 = array<bool, 27>();
    let var_1 = Struct_3(Struct_2(vec2<f32>(arg_0, arg_0)), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(~var_0.x, ~1u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, 3403u), vec3<u32>(arg_2.a, 84070u, 4294967295u)), 1u, max(u_input.b.x, ~4294967295u))), arg_2, Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_0, 1038f))), vec2<f32>(1630f, arg_0)))), false);
    global1 = array<Struct_3, 17>();
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(round(var_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 1000f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))))));
    return _wgslsmith_div_vec2_u32(~var_1.b.ww, u_input.a.xz);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    global0 = array<bool, 20>();
    global1 = array<Struct_3, 17>();
    return Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1996f + -331f)), _wgslsmith_f_op_f32(f32(-1f) * -745f)), vec2<f32>(_wgslsmith_f_op_f32(select(155f, -2349f, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), -631f)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = func_4(u_input.a, _wgslsmith_div_vec2_u32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-925f, -168f)), -580f), -_wgslsmith_div_i32(-2255i, -39653i), Struct_1(38414u)), ~(~(~vec2<u32>(57480u, u_input.b.x)))), reverseBits(func_3().x), firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, 0u, 51587u), vec4<u32>(u_input.d, u_input.d, 4294967295u, 20925u), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.d)))));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global1 = array<Struct_3, 17>();
    var var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~0u, 92984u, u_input.a.x), countOneBits(u_input.d)), func_2(-1000f, u_input.c.x, Struct_1(~(10055u << (1u % 32u)))).x), 20u)];
    return StorageBuffer(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x * -1298f), _wgslsmith_f_op_f32(-var_0.a.x), !global0[_wgslsmith_index_u32(0u, 20u)])) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_1(true);
}

