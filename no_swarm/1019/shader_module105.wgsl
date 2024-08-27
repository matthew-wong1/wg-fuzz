struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, true, true), vec3<i32>(4089i, 0i, 1i), Struct_1(true, 1u, vec4<f32>(932f, -2084f, 128f, -676f), vec3<bool>(false, true, true))), 4294967295u, false, vec4<i32>(50906i, 50876i, -40812i, -1i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, false, true), vec3<i32>(-87539i, -13178i, 21816i), Struct_1(false, 4294967295u, vec4<f32>(-763f, 100f, 727f, -417f), vec3<bool>(false, false, false))), 4294967295u, true, vec4<i32>(13351i, 6388i, 0i, 0i)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), -46030i, -75377i), Struct_1(true, 0u, vec4<f32>(-1002f, -357f, 1184f, -176f), vec3<bool>(false, false, false))), 1u, false, vec4<i32>(6304i, i32(-2147483648), -4871i, 0i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, false, false), vec3<i32>(16687i, 23938i, 43669i), Struct_1(false, 4294967295u, vec4<f32>(227f, 566f, 1070f, 155f), vec3<bool>(false, false, false))), 25634u, true, vec4<i32>(23442i, 2147483647i, 1i, 0i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, false, true), vec3<i32>(1i, i32(-2147483648), 21971i), Struct_1(true, 27285u, vec4<f32>(-2570f, -135f, 729f, -1000f), vec3<bool>(true, false, true))), 11740u, false, vec4<i32>(2284i, 50073i, -1i, -27562i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, false, false), vec3<i32>(2147483647i, 9005i, 37854i), Struct_1(false, 4294967295u, vec4<f32>(279f, 1174f, -700f, 791f), vec3<bool>(true, false, true))), 44409u, false, vec4<i32>(12194i, -1i, 14298i, i32(-2147483648))), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(true, true, true), vec3<i32>(25700i, -12905i, 0i), Struct_1(true, 51811u, vec4<f32>(-527f, 1390f, -591f, 1622f), vec3<bool>(false, true, true))), 4294967295u, false, vec4<i32>(-21810i, 2147483647i, i32(-2147483648), -48479i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, false, true), vec3<i32>(55383i, -1i, -1i), Struct_1(true, 24977u, vec4<f32>(-401f, -552f, 465f, 934f), vec3<bool>(true, true, true))), 59774u, true, vec4<i32>(37122i, 0i, 1i, -1i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, true, false), vec3<i32>(0i, 26189i, 1088i), Struct_1(true, 4294967295u, vec4<f32>(-264f, 782f, -304f, -1221f), vec3<bool>(true, true, false))), 22716u, true, vec4<i32>(1i, 43563i, -20625i, -29752i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(true, true, true), vec3<i32>(0i, 47496i, 24610i), Struct_1(true, 16805u, vec4<f32>(238f, 971f, -1000f, 249f), vec3<bool>(false, false, true))), 136166u, false, vec4<i32>(35724i, 24177i, 2147483647i, 0i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, false, true), vec3<i32>(9185i, 2147483647i, 14636i), Struct_1(true, 13254u, vec4<f32>(1084f, 312f, -562f, -1000f), vec3<bool>(true, true, true))), 11697u, false, vec4<i32>(-1643i, -42481i, 14436i, i32(-2147483648))), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_1(true, 35710u, vec4<f32>(985f, 1101f, -415f, -623f), vec3<bool>(true, false, false))), 9493u, false, vec4<i32>(-1i, 22556i, 1i, -1i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 58012i, -63621i), Struct_1(false, 0u, vec4<f32>(-350f, -1864f, -1421f, 733f), vec3<bool>(false, false, false))), 4294967295u, true, vec4<i32>(-22323i, -20470i, 12173i, 2147483647i)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, false, false), vec3<i32>(-1i, -10513i, 55480i), Struct_1(true, 0u, vec4<f32>(1433f, 263f, 335f, 666f), vec3<bool>(true, false, true))), 28814u, true, vec4<i32>(i32(-2147483648), 7326i, 2147483647i, 44126i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(true, false, false), vec3<i32>(18095i, 0i, 2147483647i), Struct_1(true, 68563u, vec4<f32>(-1000f, 419f, 252f, 163f), vec3<bool>(true, true, false))), 0u, true, vec4<i32>(-1i, 2147483647i, 0i, -21812i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), -3828i, 28645i), Struct_1(false, 91753u, vec4<f32>(-698f, 815f, -692f, -743f), vec3<bool>(true, false, false))), 28113u, true, vec4<i32>(48648i, 2147483647i, 0i, -115709i)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, false, false), vec3<i32>(1i, 0i, 20247i), Struct_1(false, 0u, vec4<f32>(-1014f, 909f, -438f, -618f), vec3<bool>(true, false, true))), 0u, false, vec4<i32>(0i, -3639i, 0i, 2147483647i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, true, true), vec3<i32>(1i, 2147483647i, 0i), Struct_1(true, 1u, vec4<f32>(-1447f, -1027f, 1366f, 167f), vec3<bool>(false, false, true))), 1u, true, vec4<i32>(0i, i32(-2147483648), 1i, 0i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-1i, i32(-2147483648), 0i), Struct_1(false, 0u, vec4<f32>(871f, -2230f, 570f, 1000f), vec3<bool>(false, true, false))), 65879u, false, vec4<i32>(-20993i, 27122i, 5182i, i32(-2147483648))), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, true, false), vec3<i32>(34041i, -40754i, 32362i), Struct_1(true, 4294967295u, vec4<f32>(864f, -587f, -429f, -1044f), vec3<bool>(true, false, false))), 39678u, false, vec4<i32>(-15066i, -1i, 24993i, -82026i)), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, false, false), vec3<i32>(-8646i, 0i, -3770i), Struct_1(false, 4294967295u, vec4<f32>(249f, -1638f, 430f, -900f), vec3<bool>(false, true, false))), 24550u, false, vec4<i32>(0i, 56386i, -2264i, 40905i)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, true, true), vec3<i32>(-21071i, -10712i, 0i), Struct_1(false, 57352u, vec4<f32>(551f, -605f, -520f, 117f), vec3<bool>(true, false, true))), 4294967295u, false, vec4<i32>(-69323i, 2147483647i, -3629i, -57902i)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, true), vec3<i32>(1i, 1083i, i32(-2147483648)), Struct_1(false, 43492u, vec4<f32>(978f, -158f, 316f, 1000f), vec3<bool>(false, false, false))), 25872u, true, vec4<i32>(34459i, 25760i, 8868i, 7i)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(true, false, true), vec3<i32>(-55574i, 11191i, 10288i), Struct_1(true, 1u, vec4<f32>(-249f, 818f, -1000f, 436f), vec3<bool>(false, true, false))), 4294967295u, false, vec4<i32>(0i, -1i, -8271i, 64481i)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, true), vec3<i32>(-27985i, 0i, 60281i), Struct_1(true, 5956u, vec4<f32>(111f, -651f, -119f, 661f), vec3<bool>(true, true, true))), 63854u, true, vec4<i32>(-1i, 1i, 1i, 1i)), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(true, false, true), vec3<i32>(19880i, 1i, 17064i), Struct_1(true, 0u, vec4<f32>(-398f, 270f, 131f, 419f), vec3<bool>(true, false, true))), 72219u, true, vec4<i32>(-25382i, 1i, 0i, i32(-2147483648))), Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-18842i, -1i, 2147483647i), Struct_1(true, 0u, vec4<f32>(192f, -429f, 1248f, 424f), vec3<bool>(false, false, false))), 72506u, false, vec4<i32>(1i, -18136i, -25525i, 2967i)), Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(false, false, true), vec3<i32>(-41664i, -1i, 2147483647i), Struct_1(false, 1u, vec4<f32>(1088f, 557f, 505f, -1976f), vec3<bool>(false, true, true))), 7307u, false, vec4<i32>(26135i, 7138i, i32(-2147483648), -27277i)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(true, false, false), vec3<i32>(31379i, -22640i, -2652i), Struct_1(false, 0u, vec4<f32>(-276f, 906f, -531f, 168f), vec3<bool>(true, false, true))), 16926u, false, vec4<i32>(-1i, i32(-2147483648), 1i, -16594i)), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, false, false), vec3<i32>(1i, -1i, i32(-2147483648)), Struct_1(true, 0u, vec4<f32>(-1000f, 947f, 473f, -850f), vec3<bool>(true, true, true))), 0u, true, vec4<i32>(1i, 2147483647i, -10523i, 23155i)));

var<private> global1: u32;

var<private> global2: vec2<u32> = vec2<u32>(141565u, 1u);

var<private> global3: array<vec3<i32>, 6>;

var<private> global4: array<u32, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    global1 = ~26680u;
    var var_0 = Struct_2(arg_1.d, global3[_wgslsmith_index_u32(36614u, 6u)], arg_1);
    var var_1 = var_0.b.x;
    return _wgslsmith_f_op_vec2_f32(var_0.c.c.xw + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_0.c.c.wz)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 588f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.c.x, var_0.c.c.x)))))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.c.c.wx - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.c.c.yy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.c.c.wy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.c.x, arg_0.b.c.c.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1157f, _wgslsmith_f_op_f32(-720f * -1453f)) + _wgslsmith_f_op_vec2_f32(func_3(arg_0.a.x, arg_0.b.c)))));
    let var_1 = arg_1;
    var var_2 = 0u;
    global2 = u_input.a.yz ^ vec2<u32>(4294967295u | global2.x, global4[_wgslsmith_index_u32(26411u, 20u)]);
    var var_3 = arg_0.b.b;
    return global4[_wgslsmith_index_u32(firstLeadingBit(global4[_wgslsmith_index_u32(4294967295u, 20u)]), 20u)];
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    let var_0 = ~func_2(Struct_3(vec2<bool>(true, arg_0.b.c.a), arg_0.b, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), any(vec3<bool>(true, arg_0.b.a.x, false)), ~arg_1), !select(vec2<bool>(true, false), vec2<bool>(arg_0.b.c.a, false), vec2<bool>(arg_0.d, arg_0.b.c.d.x)), true) ^ ~global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(arg_0.b.c.b, 20u)], arg_0.c, arg_0.c), ~0u), 20u)];
    let var_1 = arg_0.b.c;
    let var_2 = _wgslsmith_clamp_vec3_i32(select(-abs(~global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), ~arg_1.zyz, true && any(vec3<bool>(false, var_1.a, var_1.d.x))), ~arg_1.xzy, ~_wgslsmith_clamp_vec3_i32(~global3[_wgslsmith_index_u32(0u, 6u)], ~arg_1.yzz, vec3<i32>(-10923i, min(-604i, arg_1.x), firstTrailingBit(-1i))));
    var var_3 = Struct_4(vec4<u32>(1u & global2.x, var_0, abs(~u_input.a.x), ~_wgslsmith_mod_u32(countOneBits(23542u), _wgslsmith_mod_u32(2064u, 4294967295u))), ~(~var_0), arg_0.b, _wgslsmith_div_f32(-245f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c.x + -1008f), _wgslsmith_f_op_f32(select(463f, 423f, var_1.a)), true)))));
    var_3 = Struct_4(~vec4<u32>(74562u, ~4294967295u, 0u, 121494u), _wgslsmith_mult_u32(8664u, var_3.b), var_3.c, arg_0.b.c.c.x);
    return !all(select(select(select(vec4<bool>(var_1.d.x, var_1.d.x, var_3.c.a.x, false), vec4<bool>(arg_0.a.x, true, true, false), false), !vec4<bool>(arg_0.d, true, var_1.a, arg_0.a.x), !vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), select(select(vec4<bool>(var_1.a, arg_0.d, true, var_1.d.x), vec4<bool>(false, var_3.c.c.d.x, var_3.c.c.d.x, var_1.d.x), vec4<bool>(var_1.d.x, false, true, arg_0.b.c.a)), vec4<bool>(false, true, false, false), any(arg_0.b.c.d)), !vec4<bool>(var_1.d.x, var_3.c.a.x, arg_0.d, var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(func_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16233u, 20u)] & 45143u, 30u)], abs(vec4<i32>(-1i, 3375i, 15013i, -14375i))), func_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 20u)], 30u)], vec4<i32>(-2147483647i, 43048i, -2147483647i, 1i) >> (vec4<u32>(0u, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), true);
    let var_1 = vec4<bool>(select(!var_0.x, false, false), (any(vec3<bool>(var_0.x, true, false)) && var_0.x) && (!var_0.x != false), var_0.x && !(!(global4[_wgslsmith_index_u32(global2.x, 20u)] != 73143u)), global2.x >= _wgslsmith_dot_vec3_u32(abs(u_input.a) >> (~vec3<u32>(global2.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), u_input.a));
    var var_2 = var_1.x;
    global4 = array<u32, 20>();
    global0 = array<Struct_3, 30>();
    var var_3 = ~(-vec2<i32>(abs(-1i), abs(1i)));
    let var_4 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    global4 = array<u32, 20>();
    let var_5 = Struct_4(vec4<u32>(1u, 1u, ~_wgslsmith_mod_u32(reverseBits(global2.x), global4[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_clamp_u32(~var_4.b.c.b << (4294967295u % 32u), ~countOneBits(global2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global2.x, 20u)], global4[_wgslsmith_index_u32(21883u, 20u)], 30146u), vec3<u32>(10888u, 0u, 4294967295u), vec3<u32>(14449u, 1u, global2.x)), vec3<u32>(0u, 1u, 4294967295u)))), ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~25117u)), Struct_2(select(select(select(var_0, var_1.xyw, false), vec3<bool>(var_1.x, true, true), any(vec4<bool>(var_1.x, true, true, true))), var_4.b.c.d, func_1(Struct_3(vec2<bool>(var_4.b.a.x, var_4.a.x), var_4.b, u_input.a.x, false, vec4<i32>(var_4.e.x, 1i, var_4.b.b.x, var_4.b.b.x)), ~vec4<i32>(41836i, var_4.e.x, -2147483647i, var_4.b.b.x))), ~var_4.b.b, Struct_1(!all(vec3<bool>(var_0.x, var_4.a.x, var_0.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(35008u, 20u)], global4[_wgslsmith_index_u32(29712u, 20u)]), u_input.a.zx), var_4.b.c.c, !(!var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-374f, 2449f)) * -772f)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-var_4.b.c.c.x) <= _wgslsmith_f_op_f32(round(1443f)), var_4.b.c)).x, any(!var_4.b.c.d.yx))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i | var_3.x, var_5.c.b.x, var_5.c.b.x), abs(~(~reverseBits(13811u))));
}

