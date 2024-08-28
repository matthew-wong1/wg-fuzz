struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(true, true, true, false), Struct_2(374f, vec2<bool>(true, true)));

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(856f, 1028f, -583f, 1102f), vec4<f32>(655f, -450f, 1293f, 106f), vec4<f32>(141f, -1134f, 418f, 1023f), vec4<f32>(551f, -698f, 187f, -449f), vec4<f32>(-710f, 1532f, 188f, 564f), vec4<f32>(-902f, 493f, -1637f, 1059f), vec4<f32>(-161f, 552f, 1401f, 1139f), vec4<f32>(-1432f, -1295f, -173f, -1000f), vec4<f32>(-245f, 777f, -924f, -1269f), vec4<f32>(-616f, 614f, -952f, 612f), vec4<f32>(1154f, -827f, 1000f, -872f), vec4<f32>(249f, -392f, -357f, 1304f), vec4<f32>(2242f, 333f, 753f, 401f), vec4<f32>(186f, 1000f, -581f, -440f), vec4<f32>(307f, -357f, 128f, 917f));

var<private> global2: array<vec3<bool>, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    global3 = Struct_1(global1[_wgslsmith_index_u32(~(~arg_1), 15u)], vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.x * global0.b.a))))), global3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * global0.b.a), global0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-188f, global3.b.x), _wgslsmith_f_op_f32(step(855f, -256f))) - global0.b.a)), -(~_wgslsmith_mod_i32(-global3.c, 16350i)), vec2<f32>(global3.d.x, global3.a.x));
    global2 = array<vec3<bool>, 2>();
    var var_0 = Struct_4(select(vec4<bool>(!(!global0.b.b.x), any(select(vec3<bool>(global0.b.b.x, false, false), global0.a.wzy, global0.a.x)), true, false), global0.a, global0.a), global0.b);
    var var_1 = Struct_3(min(abs(countOneBits(arg_0.x)), u_input.a), var_0.b, _wgslsmith_clamp_i32(u_input.a, countOneBits(1i), -37224i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1355f + global0.b.a), var_0.b.a))));
    global1 = array<vec4<f32>, 15>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.a)) * 849f), vec2<bool>(true, !(var_0.b.a <= -312f)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_3(-2147483647i, Struct_2(arg_0, global0.b.b), 5927i, global3.a.zz);
    var var_1 = ~1u;
    var var_2 = firstTrailingBit(2925i);
    var var_3 = ~countOneBits(vec4<u32>(1u, 0u, 1u, 4294967295u));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.x, min(reverseBits(countOneBits(var_3.x)), var_3.x) | abs(_wgslsmith_mod_u32(abs(var_3.x), ~4294967295u))), 15u)];
    return vec2<bool>(true, !any(vec2<bool>(true, var_0.b.b.x)) && true);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec4<bool> {
    global2 = array<vec3<bool>, 2>();
    global2 = array<vec3<bool>, 2>();
    var var_0 = ~abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(124045u, 27572u)), ~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    global2 = array<vec3<bool>, 2>();
    let var_1 = Struct_3(20782i, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * _wgslsmith_f_op_f32(-arg_0)), !vec2<bool>(all(vec4<bool>(arg_2.x, global0.b.b.x, true, true)), false)), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1000f) * _wgslsmith_f_op_f32(1167f + global0.b.a)), global0.b.a)));
    return global0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_5) -> i32 {
    let var_0 = func_2(select(min(vec3<i32>(u_input.a, global3.c, global3.c) << (vec3<u32>(0u, 78795u, 0u) % vec3<u32>(32u)), -vec3<i32>(-1i, 0i, u_input.a)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~min(-vec3<i32>(-1i, u_input.a, -9264i), vec3<i32>(-41692i, -11524i, global3.c)), true), 14799u);
    let var_1 = Struct_3(reverseBits(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global3.c, u_input.a)), reverseBits(vec2<i32>(38691i, u_input.a)))), func_2(countOneBits(min(max(vec3<i32>(-37897i, 1i, 17991i), vec3<i32>(global3.c, u_input.a, -50488i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global3.c, global3.c), vec3<i32>(u_input.a, u_input.a, -2147483647i)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u)) << (firstLeadingBit(_wgslsmith_clamp_u32(48980u, 42734u, 32630u)) % 32u)), 996i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0) - _wgslsmith_f_op_vec2_f32(abs(global3.b.ww))));
    global0 = Struct_4(select(!(!global0.a), func_4(_wgslsmith_f_op_f32(f32(-1f) * -981f), func_2(-vec3<i32>(global3.c, 2147483647i, -32343i), 0u).b, func_3(-151f)), any(func_4(var_1.d.x, vec2<bool>(false, var_0.b.x), vec2<bool>(global0.a.x, var_1.b.b.x)).zzy)), Struct_2(928f, select(vec2<bool>(var_0.a < -771f, true | var_1.b.b.x), select(func_4(-833f, vec2<bool>(true, var_0.b.x), global0.b.b).wx, func_4(-1000f, vec2<bool>(var_0.b.x, true), vec2<bool>(true, false)).yw, global3.c > 0i), var_1.b.b)));
    let var_2 = firstTrailingBit(-(~(~(vec3<i32>(49407i, u_input.a, -1i) >> (vec3<u32>(4294967295u, 2163u, 47389u) % vec3<u32>(32u))))));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, global0.b.a, 549f, -2171f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(11861u, 15u)]))), true)), _wgslsmith_f_op_vec4_f32(-global3.b), u_input.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a, 974f))), select(var_1.b.b.x, global0.b.b.x, false))) + arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d) - _wgslsmith_f_op_vec2_f32(ceil(global3.d))), vec2<f32>(458f, _wgslsmith_f_op_f32(-514f * global3.b.x))))));
    return -18312i;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>) -> StorageBuffer {
    var var_0 = Struct_5(294f);
    var var_1 = !(!(!select(vec3<bool>(false, global0.a.x, global0.b.b.x), global2[_wgslsmith_index_u32(~28284u, 2u)], global3.d.x == var_0.a)));
    var_0 = Struct_5(-321f);
    let var_2 = global0.a;
    let var_3 = 1u;
    return StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-50034i, 2147483647i), 1i, global3.c, u_input.a), select(-vec4<i32>(arg_1.x, 55428i, -2147483647i, u_input.a), vec4<i32>(-22630i, 63562i, -1i, 12911i), any(global0.a))) << (vec4<u32>(var_3, ~4294967295u | max(var_3, var_3), var_3, abs(0u)) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(arg_1, max(~_wgslsmith_clamp_vec3_i32(arg_1, arg_1, arg_1), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 21387i, arg_1.x), abs(vec3<i32>(arg_1.x, 21483i, 34087i))))), _wgslsmith_add_vec4_i32(firstTrailingBit(abs(vec4<i32>(-2147483647i, -1i, 1i, 2147483647i)) << (firstLeadingBit(vec4<u32>(var_3, 0u, var_3, var_3)) % vec4<u32>(32u))), -max(vec4<i32>(u_input.a, global3.c, -1i, global3.c) & vec4<i32>(1i, arg_1.x, u_input.a, -10620i), vec4<i32>(24162i, arg_1.x, 0i, u_input.a))), 76864u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.a.wwx))) - global3.b.yww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.yz;
    var var_1 = global3.c;
    let x = u_input.a;
    s_output = func_5(global3.d, vec3<i32>(_wgslsmith_mult_i32(max(u_input.a, -2147483647i), firstLeadingBit(select(u_input.a, -1i, false))), _wgslsmith_clamp_i32(46944i, -19373i, func_1(vec2<f32>(-425f, var_0.x), Struct_5(global0.b.a))), _wgslsmith_mod_i32(select(global3.c, -31798i, any(global0.b.b)), 2147483647i)));
}

