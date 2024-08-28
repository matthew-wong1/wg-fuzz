struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_4, 17>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(-2010f, 108f, -192f, 881f)), Struct_1(vec4<f32>(255f, -100f, -691f, -1000f)), Struct_1(vec4<f32>(914f, 1086f, 846f, 1000f)), Struct_1(vec4<f32>(2041f, -789f, 1000f, 1393f)), Struct_1(vec4<f32>(923f, 1300f, -1000f, 1069f)), Struct_1(vec4<f32>(461f, -1000f, 1054f, -1128f)), Struct_1(vec4<f32>(-1759f, -884f, -339f, 1180f)), Struct_1(vec4<f32>(-495f, 1530f, 652f, -1052f)), Struct_1(vec4<f32>(-209f, 1000f, 147f, 161f)), Struct_1(vec4<f32>(-1479f, -1011f, -868f, -966f)), Struct_1(vec4<f32>(-576f, -1784f, 1000f, 1000f)), Struct_1(vec4<f32>(-676f, -486f, 1000f, -1808f)), Struct_1(vec4<f32>(918f, 727f, 1124f, 2541f)), Struct_1(vec4<f32>(321f, 981f, -1216f, -390f)), Struct_1(vec4<f32>(-1000f, -119f, 642f, 663f)), Struct_1(vec4<f32>(908f, 444f, -205f, 224f)), Struct_1(vec4<f32>(472f, -399f, 1314f, -627f)), Struct_1(vec4<f32>(-627f, 1697f, 343f, 826f)), Struct_1(vec4<f32>(-1337f, -516f, 2017f, -277f)), Struct_1(vec4<f32>(1000f, 576f, -582f, 323f)), Struct_1(vec4<f32>(1283f, 561f, 291f, -1235f)), Struct_1(vec4<f32>(215f, -1000f, 419f, -631f)), Struct_1(vec4<f32>(438f, 587f, 466f, -156f)), Struct_1(vec4<f32>(1006f, 1756f, -1000f, 1514f)), Struct_1(vec4<f32>(-585f, -377f, -1000f, 336f)), Struct_1(vec4<f32>(-246f, 595f, -121f, -100f)), Struct_1(vec4<f32>(-1392f, -1187f, -1539f, -975f)), Struct_1(vec4<f32>(-635f, 1000f, -379f, -1274f)));

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-809f, 1151f), vec2<f32>(-450f, -884f), vec2<f32>(-937f, -229f), vec2<f32>(108f, -633f), vec2<f32>(1944f, -1328f), vec2<f32>(-317f, 764f), vec2<f32>(1023f, -1651f), vec2<f32>(695f, -1031f), vec2<f32>(211f, 448f), vec2<f32>(-507f, 166f), vec2<f32>(-1007f, 318f), vec2<f32>(-1964f, 1295f), vec2<f32>(-1346f, 2693f), vec2<f32>(542f, 1056f), vec2<f32>(705f, 602f), vec2<f32>(916f, -962f), vec2<f32>(1362f, 1531f), vec2<f32>(518f, 420f), vec2<f32>(-1608f, -1595f), vec2<f32>(-266f, 690f), vec2<f32>(-1152f, -114f), vec2<f32>(-2621f, 328f), vec2<f32>(-966f, -1240f), vec2<f32>(-687f, 485f), vec2<f32>(-196f, -833f), vec2<f32>(-1000f, 1017f), vec2<f32>(929f, -304f), vec2<f32>(1000f, 103f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = 2049f;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    global0 = array<Struct_4, 17>();
    var var_2 = false;
    var var_3 = var_1.e;
    return var_1.d;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = select(global2.c, -(vec3<i32>(global2.d, -21188i, arg_2.b.x) << (vec3<u32>(u_input.a, u_input.b, u_input.b) % vec3<u32>(32u))) >> (select(vec3<u32>(75159u, arg_2.d, arg_2.d), firstTrailingBit(arg_2.e), select(vec3<bool>(global2.a, var_0.a, true), vec3<bool>(true, false, true), arg_1.a)) % vec3<u32>(32u)), !(!select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, global2.a, global2.a), vec3<bool>(var_0.a, false, false)))) ^ _wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(-1i) * -vec3<i32>(5514i, -1i, arg_2.b.x), vec3<i32>(countOneBits(_wgslsmith_clamp_i32(global2.d, arg_2.b.x, -21369i)), 9146i, func_2(arg_2.b.x).d));
    global0 = array<Struct_4, 17>();
    global3 = array<vec2<f32>, 28>();
    return select(arg_2.e, vec3<u32>(_wgslsmith_dot_vec4_u32(~arg_2.c, firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 27336u, 4294967295u, arg_2.c.x), vec4<u32>(u_input.a, 1u, arg_2.e.x, 3664u)))), _wgslsmith_dot_vec3_u32(arg_2.c.yyy, arg_2.c.xyz), 40572u), vec3<bool>(global2.a, true || all(select(vec3<bool>(arg_1.a, false, false), vec3<bool>(true, false, false), global2.a)), func_2(_wgslsmith_mod_i32(~44200i, var_0.c.x)).a));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global2 = func_2(arg_1.c.x);
    let var_0 = -285f;
    global2 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, _wgslsmith_f_op_f32(-arg_0), arg_0, arg_1.b.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, var_0, -1336f, global2.b.a.x))), !vec4<bool>(false, false, arg_1.a, arg_1.a)))), global2.c, global2.c.x, global2.b);
    let var_1 = 43717u;
    let var_2 = ~min(func_3(-764f, func_2(0i), Struct_3(global3[_wgslsmith_index_u32(35242u, 28u)], select(vec2<i32>(arg_1.c.x, 7432i), vec2<i32>(arg_1.d, global2.d), vec2<bool>(true, arg_1.a)), firstTrailingBit(vec4<u32>(0u, var_1, 4294967295u, u_input.b)), var_1 >> (var_1 % 32u), reverseBits(vec3<u32>(34156u, var_1, 18114u)))), firstTrailingBit(~(vec3<u32>(0u, 1u, var_1) | vec3<u32>(4294967295u, u_input.a, var_1))));
    return func_2(global2.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>) -> i32 {
    global0 = array<Struct_4, 17>();
    global0 = array<Struct_4, 17>();
    global1 = array<Struct_1, 28>();
    global3 = array<vec2<f32>, 28>();
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    var var_1 = func_4(Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.a.x, global2.b.a.x)), global2.e.a.yz)), reverseBits(vec2<i32>(var_0.x, var_0.x)) ^ global2.c.yz, vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(10177u, u_input.a, u_input.a, 0u), vec4<u32>(82673u, u_input.b, u_input.a, u_input.a)), ~u_input.a), 71599u, firstTrailingBit(abs(vec3<u32>(u_input.a, u_input.a, 1u)))), countOneBits(1u), global2.b.a.zwy, func_1(global2.e.a.x, Struct_2(true, Struct_1(global2.e.a), abs(vec3<i32>(global2.c.x, 0i, global2.d)), ~(-43751i), global2.b)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, -1282f)) * global2.e.a.zx), _wgslsmith_add_vec2_i32(global2.c.yx, ~var_0.yz), ~(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a) >> (vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b) % vec4<u32>(32u))), u_input.a, _wgslsmith_add_vec3_u32(max(vec3<u32>(0u, u_input.b, 45479u), vec3<u32>(0u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 0u)))), vec4<bool>(select((global2.d >= 1i) && any(vec3<bool>(global2.a, false, true)), func_2(countOneBits(2774i)).a, global2.a), var_0.x == global2.c.x, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.e.a.x, 1000f))));
    var var_2 = -reverseBits(-select(vec2<i32>(-15601i, var_0.x), vec2<i32>(var_0.x, -31047i), global2.a)) << (reverseBits(vec2<u32>(u_input.b, 1u ^ ~u_input.b)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.e.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.b.a.x, -1533f)))))));
}

