struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(23894i, -869i, -1i, 2147483647i, -23044i, -29951i, 1i, -5866i, 19316i, i32(-2147483648), 1i, -1i, i32(-2147483648), -1i, 89i, -1i, -103965i, -27602i, 1i, 31156i, 14539i, 46427i, -13709i, -1767i, 2147483647i, -18767i, -49203i, -5242i);

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-808f, -562f, -460f)), 6187u, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-552f, -298f, 378f)), false, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(443f, 444f, 578f)));

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec4<i32>(1i, -36981i, 42929i, -80485i), vec3<u32>(1u, 23645u, 1u), vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-436f, 1000f, 1145f)), 15737u, Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-868f, 892f, 337f)), false, Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(299f, 821f, 105f))), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-900f, -104f, -1528f))), Struct_3(vec4<i32>(2147483647i, -1i, -2233i, 0i), vec3<u32>(4294967295u, 25439u, 17052u), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-876f, 875f, -1151f)), 4294967295u, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-426f, -124f, -199f)), false, Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(892f, -310f, 1896f))), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-667f, -481f, -1000f))), Struct_3(vec4<i32>(-3861i, 26063i, -21448i, 0i), vec3<u32>(5679u, 40804u, 4294967295u), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(424f, 462f, -464f)), 12938u, Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1984f, -196f, 1245f)), true, Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(149f, 1178f, -1270f))), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-498f, -609f, -688f))), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 22125i, -1i), vec3<u32>(11012u, 0u, 4294967295u), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(637f, 532f, 1000f)), 1u, Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1363f, -1561f, -2181f)), false, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(682f, -115f, -396f))), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(1049f, -1770f, -411f))), Struct_3(vec4<i32>(-50221i, i32(-2147483648), -32070i, 0i), vec3<u32>(4294967295u, 0u, 1038u), vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(1483f, 966f, 695f)), 21738u, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-702f, -120f, 799f)), false, Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(528f, 919f, -602f))), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(159f, 921f, -275f))), Struct_3(vec4<i32>(1526i, 1i, -17385i, 2147483647i), vec3<u32>(69298u, 1u, 72944u), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(263f, 696f, -806f)), 0u, Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(807f, 212f, -578f)), true, Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(623f, 1326f, 1898f))), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(928f, 726f, 348f))), Struct_3(vec4<i32>(-19329i, -1i, -40294i, 14600i), vec3<u32>(102330u, 73661u, 0u), vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(263f, 1396f, -193f)), 22246u, Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(1794f, -1000f, -1288f)), false, Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-521f, -378f, -447f))), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(627f, -475f, -1966f))), Struct_3(vec4<i32>(6346i, -3774i, 17858i, 9426i), vec3<u32>(4294967295u, 109838u, 53104u), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(333f, 1032f, 1074f)), 35962u, Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-2205f, -212f, 597f)), false, Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1345f, -338f, 290f))), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(2136f, -1680f, -637f))), Struct_3(vec4<i32>(-1042i, 31996i, -40566i, 1636i), vec3<u32>(10074u, 1u, 70750u), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-961f, -1000f, -933f)), 1u, Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-1155f, 486f, -777f)), true, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(2609f, 1709f, -953f))), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1218f, 478f, -1000f))), Struct_3(vec4<i32>(44378i, 36520i, 2147483647i, -32302i), vec3<u32>(4294967295u, 4294967295u, 15251u), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-239f, -1026f, -465f)), 0u, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-533f, 1000f, -351f)), false, Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(701f, 332f, 314f))), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(103f, 1013f, -252f))));

var<private> global4: vec3<u32> = vec3<u32>(6846u, 1u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = -71496i;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 28u)]), select(global0[_wgslsmith_index_u32(arg_0, 28u)], -2147483647i, global2.e.a.x), firstTrailingBit(41053i)) << ((min(vec3<u32>(u_input.a.x, 0u, 31786u), vec3<u32>(arg_0, 0u, u_input.a.x)) >> (firstLeadingBit(vec3<u32>(0u, 1u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 28u)], 1i))), -(~(-global0[_wgslsmith_index_u32(4294967295u, 28u)])), -var_0);
    let var_2 = Struct_2(Struct_1(!global2.e.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 593f), vec3<f32>(-1706f, 177f, 714f)))))), u_input.a.x & _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x << (arg_0 % 32u)), abs(_wgslsmith_mod_u32(arg_0, 2412u))), global2.e, global2.c.a.x, Struct_1(global2.e.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + 202f), _wgslsmith_f_op_f32(floor(-607f)), _wgslsmith_f_op_f32(trunc(global2.a.b.x))))));
    let var_3 = max(~vec4<u32>(1u, _wgslsmith_mult_u32(123057u, global2.b) & var_2.b, global2.b, _wgslsmith_div_u32(67816u, ~var_2.b)), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.b, 49338u, global4.x) ^ vec4<u32>(arg_0, 34464u, arg_0, 79461u), ~vec4<u32>(arg_0, u_input.a.x, u_input.a.x, global2.b)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, 3046u, var_2.b), vec4<u32>(global4.x, u_input.a.x, 16740u, 0u)), reverseBits(vec4<u32>(global2.b, arg_0, 0u, global2.b))))));
    global3 = array<Struct_3, 10>();
    return Struct_1(var_2.a.a, var_2.c.b);
}

fn func_3() -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-global2.c.b.x), global3[_wgslsmith_index_u32(4294967295u, 10u)]);
    let var_1 = var_0.b.e.a.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global2.c.b.x), global2.a.b.x, -2495f);
    var var_3 = func_2(0u, var_2.x);
    global3 = array<Struct_3, 10>();
    return true;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> vec3<u32> {
    var var_0 = func_2(~abs(~(~0u)), arg_1);
    global1 = array<vec2<f32>, 20>();
    var var_1 = true;
    var_1 = func_3();
    var var_2 = 1u;
    return ~(~vec3<u32>(arg_2.x, select(4294967295u, 1u, true) ^ (u_input.a.x ^ 43228u), ~(~18830u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-1000f, Struct_3(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1i, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global4.x, 28u)]), vec4<i32>(global0[_wgslsmith_index_u32(19190u, 28u)], -22913i, global0[_wgslsmith_index_u32(global2.b, 28u)], 2147483647i)), vec4<i32>(1i, global0[_wgslsmith_index_u32(70491u, 28u)], global0[_wgslsmith_index_u32(global4.x, 28u)], 1i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(699u, 28u)], -10585i, global0[_wgslsmith_index_u32(80945u, 28u)])), ~func_1(_wgslsmith_f_op_f32(min(global2.a.b.x, global2.e.b.x)), _wgslsmith_f_op_f32(max(global2.c.b.x, -520f)), vec4<u32>(u_input.a.x, u_input.a.x, global2.b, global2.b), _wgslsmith_f_op_f32(f32(-1f) * -2081f)), global2.c.a, Struct_2(func_2(_wgslsmith_sub_u32(global2.b, global4.x), _wgslsmith_f_op_f32(ceil(392f))), _wgslsmith_mult_u32(~1131u, 1u), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, global2.b, global2.b), vec3<u32>(8630u, u_input.a.x, 1u)), _wgslsmith_f_op_f32(trunc(global2.c.b.x))), true, func_2(1u, _wgslsmith_f_op_f32(trunc(-921f)))), func_2(countOneBits(func_1(784f, global2.a.b.x, vec4<u32>(10425u, 1u, 0u, 1u), global2.e.b.x).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.e.b.x, global2.c.b.x))))));
    global1 = array<vec2<f32>, 20>();
    global1 = array<vec2<f32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, var_0.a, global2.e.b.x) * vec3<f32>(-1000f, 549f, -852f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(149f, global2.e.b.x, var_0.b.e.b.x)))) - func_2(global4.x ^ u_input.a.x, _wgslsmith_f_op_f32(ceil(-895f))).b)));
    global1 = array<vec2<f32>, 20>();
    var var_2 = select(vec2<bool>(var_0.b.c.x, var_0.b.d.c.a.x), select(select(vec2<bool>(global2.c.a.x, func_2(u_input.a.x, var_0.a).a.x), !global2.c.a.zz, select(var_0.b.c.wz, global2.a.a.zz, func_2(1u, 317f).a.xy)), global2.a.a.wx, func_2(min(~0u, 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.b.e.b.x))))).a.wy), !func_2(firstLeadingBit(0u) >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global2.e.b.x)))).a.ww);
    global2 = var_0.b.d;
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.a.x, ~(~(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] ^ global0[_wgslsmith_index_u32(1458u, 28u)]))), var_0.b.a.ww);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b.b.x, _wgslsmith_add_u32((var_0.b.b.x ^ 36596u) ^ (var_0.b.d.b << (1u % 32u)), u_input.a.x), firstLeadingBit(var_0.b.b.x) ^ 15686u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(abs(-336f)))), _wgslsmith_f_op_f32(min(global2.e.b.x, -158f))));
}

