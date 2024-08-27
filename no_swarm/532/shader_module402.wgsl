struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 4294967295u, 77916u, 32178u, 5291u, 113451u, 75398u, 1u, 93921u, 11647u, 1u, 18803u, 64658u, 1u, 4294967295u, 2408u, 0u, 0u, 23910u, 0u, 64858u, 4294967295u, 18530u, 1u, 4294967295u, 18215u, 1u, 0u);

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(10720i, vec4<i32>(2147483647i, -47870i, -1i, 0i))), Struct_2(Struct_1(-32244i, vec4<i32>(9841i, 45356i, i32(-2147483648), -11124i))), Struct_2(Struct_1(-29187i, vec4<i32>(-1i, 1i, 22659i, 1i))), Struct_2(Struct_1(18787i, vec4<i32>(-29967i, 24733i, 46189i, i32(-2147483648)))), Struct_2(Struct_1(-1i, vec4<i32>(20233i, 0i, -52590i, -29365i))), Struct_2(Struct_1(15397i, vec4<i32>(-46867i, 1i, 69819i, 23032i))), Struct_2(Struct_1(-16329i, vec4<i32>(-1i, 8720i, i32(-2147483648), 23910i))), Struct_2(Struct_1(0i, vec4<i32>(11601i, 5957i, -58417i, 5462i))), Struct_2(Struct_1(22578i, vec4<i32>(0i, -34664i, -21442i, -6384i))), Struct_2(Struct_1(0i, vec4<i32>(i32(-2147483648), -1i, 12120i, 1i))), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(1i, -8688i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), -8411i, -9032i, -39851i))), Struct_2(Struct_1(21148i, vec4<i32>(-1i, -27902i, -48942i, 14912i))), Struct_2(Struct_1(28699i, vec4<i32>(2147483647i, 28638i, -5317i, 22666i))), Struct_2(Struct_1(1i, vec4<i32>(-28627i, 325i, 61449i, i32(-2147483648)))), Struct_2(Struct_1(0i, vec4<i32>(-26844i, 1i, 25694i, -90418i))), Struct_2(Struct_1(-17783i, vec4<i32>(-1i, 1i, -1i, 0i))), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(1i, 96710i, 1i, -1i))), Struct_2(Struct_1(1i, vec4<i32>(1i, 2147483647i, 36325i, -39991i))), Struct_2(Struct_1(44408i, vec4<i32>(-25107i, -9414i, 0i, 45223i))), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(-1i, 2147483647i, -3139i, 0i))), Struct_2(Struct_1(0i, vec4<i32>(2147483647i, 14924i, 1i, -38602i))), Struct_2(Struct_1(-1i, vec4<i32>(i32(-2147483648), 19341i, -1i, -1i))), Struct_2(Struct_1(2147483647i, vec4<i32>(12043i, 1i, 0i, 1i))), Struct_2(Struct_1(2147483647i, vec4<i32>(1i, -1i, -11118i, i32(-2147483648)))), Struct_2(Struct_1(1i, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 0i))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global1 = array<vec3<i32>, 23>();
    global2 = array<u32, 29>();
    var var_0 = global3[_wgslsmith_index_u32(30158u, 26u)];
    return -2147483647i;
}

fn func_3() -> vec4<i32> {
    var var_0 = countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), abs(97089u)), 72538u) | (u_input.a ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(100508u, 29u)], 5037u), u_input.b)));
    global0 = array<vec2<f32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-437f, -608f) + 1f))));
    var_0 = ~firstLeadingBit(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 1u), u_input.a.xz)), u_input.a.x, ~(u_input.b.x & 66626u)));
    let var_2 = Struct_2(Struct_1(countOneBits(-42936i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), -vec4<i32>(u_input.c, -58296i, -29812i, u_input.c)))));
    return abs(vec4<i32>(var_2.a.a, ~_wgslsmith_div_i32(u_input.c, var_2.a.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-23363i, var_2.a.a, u_input.c), vec3<i32>(firstLeadingBit(-2147483647i), var_2.a.b.x, u_input.c)), -48985i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.c, func_3()));
    let var_1 = var_0.a;
    global0 = array<vec2<f32>, 30>();
    global3 = array<Struct_2, 26>();
    global2 = array<u32, 29>();
    return Struct_1(_wgslsmith_div_i32(abs(u_input.c), countOneBits(firstLeadingBit(var_1.a))) >> (4294967295u % 32u), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(40102i, -vec4<i32>(u_input.c, func_1(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(5565u, 29u)], 3857u, 1u)), _wgslsmith_mod_i32(-32362i, u_input.c), -4654i)));
    global2 = array<u32, 29>();
    let var_1 = ~u_input.a;
    var var_2 = func_2();
    global1 = array<vec3<i32>, 23>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(var_2.b.zxz, vec3<i32>(1i, var_0.a.b.x, -31959i)), var_2.b.zyw, vec3<bool>(false, false, false)), vec3<i32>(-1i) * -vec3<i32>(var_2.b.x, var_0.a.b.x, 1i)), vec4<i32>(-var_0.a.b.x, firstTrailingBit(_wgslsmith_mod_i32(u_input.c, 41609i)), countOneBits(~u_input.c), var_0.a.b.x)));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(215f, _wgslsmith_f_op_f32(round(-667f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1428f))));
}

