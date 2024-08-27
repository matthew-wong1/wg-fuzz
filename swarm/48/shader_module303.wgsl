struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), -4466i, vec3<bool>(false, false, false), 95843u, -27642i);

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 28976u, 0u, 4294967295u), vec4<u32>(0u, 1u, 51478u, 4294967295u), vec4<u32>(31315u, 1u, 64043u, 4294967295u), vec4<u32>(66404u, 9524u, 0u, 29580u), vec4<u32>(4294967295u, 4294967295u, 8033u, 3841u), vec4<u32>(38517u, 42784u, 0u, 4294967295u), vec4<u32>(20545u, 1u, 1u, 77289u), vec4<u32>(41498u, 1u, 1u, 20666u), vec4<u32>(30438u, 1u, 50712u, 0u), vec4<u32>(0u, 1u, 47720u, 1u), vec4<u32>(72309u, 0u, 4294967295u, 37432u), vec4<u32>(44065u, 0u, 21359u, 5594u), vec4<u32>(8880u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 51850u, 48222u, 0u), vec4<u32>(20385u, 9005u, 63861u, 44677u), vec4<u32>(4294967295u, 30829u, 1u, 3744u), vec4<u32>(14000u, 0u, 0u, 1u), vec4<u32>(12738u, 1u, 13079u, 31586u), vec4<u32>(1u, 28867u, 65888u, 19840u), vec4<u32>(0u, 7184u, 0u, 1u), vec4<u32>(82863u, 64715u, 4294967295u, 2u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = !vec2<bool>(!global1.a.x, global1.a.x);
    var var_1 = -(~_wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 22568i), vec3<i32>(-2147483647i, global1.e, 15281i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global1.e, global1.e) ^ vec3<i32>(-9218i, global1.e, u_input.a.x), ~vec3<i32>(1i, u_input.a.x, global1.b)), vec3<i32>(global1.e << (global1.d % 32u), 2147483647i, u_input.a.x)));
    var var_2 = u_input.b == u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -442f)))))));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -566f);
    return 1u;
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<bool> {
    var var_0 = vec3<f32>(-636f, arg_1, 1000f);
    global1 = Struct_1(select(select(select(!vec3<bool>(true, global1.c.x, global1.c.x), global1.c, global1.c.x), vec3<bool>(any(vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x)), any(vec2<bool>(false, true)), !global1.a.x), select(vec3<bool>(true, true, false), select(global1.c, global1.a, global1.a), false == global1.c.x)), global1.a, select(select(!vec3<bool>(true, global1.c.x, true), vec3<bool>(global1.a.x, true, global1.a.x), !global1.a), select(!global1.c, vec3<bool>(true, global1.c.x, false), !global1.a.x), !global1.c.x & global1.c.x)), u_input.a.x, select(!vec3<bool>(global1.a.x || global1.a.x, !global1.c.x, global1.a.x), global1.c, select(select(select(global1.c, global1.a, true), global1.a, vec3<bool>(global1.a.x, global1.c.x, global1.c.x)), select(select(global1.a, vec3<bool>(true, global1.c.x, false), false), global1.a, global1.c), select(select(vec3<bool>(true, true, global1.c.x), vec3<bool>(false, global1.c.x, global1.c.x), true), !global1.c, global1.a))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, select(22669u, global1.d, false)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 23455u), vec2<u32>(arg_0, arg_0)), ~vec2<u32>(arg_0, 4294967295u))), _wgslsmith_mult_i32(u_input.a.x, select(2147483647i, -2147483647i, !any(vec4<bool>(global1.a.x, global1.a.x, true, global1.c.x)))));
    let var_1 = Struct_1(select(vec3<bool>(!all(global1.c), true, (u_input.b != arg_0) || global1.c.x), global1.a, !(!vec3<bool>(global1.a.x, true, false))), u_input.a.x, select(vec3<bool>(false, all(!global1.c), global1.c.x), global1.c, vec3<bool>((true | global1.c.x) || !global1.a.x, true, 15041i >= (global1.b | 4252i))), 17792u, i32(-1i) * -1i);
    var var_2 = var_0.xz;
    let var_3 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(min(arg_0, 4294967295u), u_input.b), vec2<u32>(~(~6796u), u_input.b));
    return !(!select(select(select(vec3<bool>(var_1.a.x, true, var_1.c.x), vec3<bool>(false, false, false), global1.c.x), !vec3<bool>(false, var_1.c.x, false), all(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, var_1.a.x), all(var_1.c)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1372f + -1136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(3169f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1018f * -998f), _wgslsmith_f_op_f32(f32(-1f) * -1008f))))));
    global0 = firstTrailingBit(u_input.a.x);
    let var_1 = arg_1;
    var_0 = vec4<f32>(-1355f, -455f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - -390f))));
    var var_2 = Struct_1(vec3<bool>(global1.a.x, var_1.c.x, false), 15492i, global1.a, global1.d, arg_1.e);
    return Struct_1(arg_1.c, countOneBits(global1.b), select(arg_2, !vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(var_1.c.x, arg_1.c.x, false))), select(func_3(~arg_1.d, var_0.x), !(!vec3<bool>(true, arg_1.c.x, true)), global1.c.x)), select(~min(1u, 18984u) >> (0u % 32u), ~arg_0, true), reverseBits(~arg_1.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(global1.a.x, any(arg_0.c.xx), arg_0.c.x), -global1.e, !global1.c, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, arg_0.d), vec2<u32>(global1.d, arg_0.d))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.d, arg_0.d), vec2<u32>(global1.d, 4294967295u)), firstTrailingBit(vec2<u32>(u_input.b, arg_0.d)))), 2147483647i);
    var var_1 = u_input.b;
    global2 = array<vec4<u32>, 21>();
    global1 = func_2(var_0.d, Struct_1(func_3(~(~17292u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2029f - -150f), _wgslsmith_f_op_f32(abs(154f)), !global1.a.x))), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(firstTrailingBit(0i), max(arg_0.e, 0i))), vec3<bool>(arg_0.c.x, all(!vec4<bool>(false, true, false, arg_0.a.x)), var_0.c.x), 36451u, -1i), !(!arg_0.c));
    let var_2 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(7730u, ~arg_0.d) >> (min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, arg_0.d)), vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(arg_0.d, 48549u)) % vec2<u32>(32u))), ~(~vec2<u32>(_wgslsmith_add_u32(global1.d, var_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, 4294967295u, u_input.b), vec3<u32>(global1.d, arg_0.d, 0u)))));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    global2 = array<vec4<u32>, 21>();
    var var_0 = _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global1.d, 0u), vec3<u32>(global1.d, u_input.b, u_input.b), vec3<u32>(u_input.b, 47287u, 4294967295u)), vec3<u32>(u_input.b, arg_1.d, arg_1.d)), ~firstTrailingBit(vec3<u32>(12071u, global1.d, arg_1.d)), vec3<bool>(global1.c.x, arg_1.a.x, true)) >> ((~vec3<u32>(u_input.b, 60034u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.d, global1.d), 21u)], vec4<u32>(arg_1.d, 90476u, 43360u, 36063u)), arg_1.d ^ (u_input.b | 0u), ~func_1(!global1.c.x, u_input.b)), ~vec3<u32>(~(u_input.b & global1.d), global1.d, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(6878u, 3041u, 4294967295u, u_input.b), global2[_wgslsmith_index_u32(115037u, 21u)], vec4<u32>(89673u, u_input.b, global1.d, 4524u)), vec4<u32>(arg_1.d, arg_1.d, arg_1.d, 42436u))));
    var_0 = select(_wgslsmith_clamp_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d, arg_1.d, u_input.b), vec3<u32>(u_input.b, var_0.x, 0u)) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, 18202u, global1.d), vec3<u32>(28543u, 4294967295u, u_input.b))), vec3<u32>(~1u, arg_1.d, ~25756u ^ _wgslsmith_div_u32(1u, global1.d)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global1.d, u_input.b, u_input.b), vec3<u32>(44176u, 4294967295u, var_0.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d, global1.d, var_0.x) & vec3<u32>(arg_1.d, arg_1.d, u_input.b), ~firstLeadingBit(vec3<u32>(global1.d, u_input.b, u_input.b))) | vec3<u32>(firstLeadingBit(~25158u), ~1u ^ global1.d, select(67051u, 0u, any(global1.c.yy))), true | (global1.a.x && any(vec2<bool>(true, global1.a.x))));
    global1 = Struct_1(func_4(func_2(8678u, Struct_1(!vec3<bool>(true, false, global1.a.x), func_2(4294967295u, Struct_1(arg_1.c, arg_1.b, vec3<bool>(false, global1.c.x, arg_1.a.x), 27489u, 0i), arg_1.a).b, vec3<bool>(false, global1.a.x, arg_1.a.x), _wgslsmith_add_u32(0u, 70692u), max(global1.b, global1.b)), vec3<bool>(func_3(var_0.x, 535f).x, true, all(arg_1.c)))).a, -2147483647i, vec3<bool>(true, arg_1.c.x, all(vec3<bool>(false, false, !arg_1.a.x))), ~global1.d, countOneBits(_wgslsmith_div_i32(abs(arg_1.b), ~(-arg_1.b))));
    global2 = array<vec4<u32>, 21>();
    return vec2<u32>(var_0.x, _wgslsmith_add_u32(~func_2(39913u, Struct_1(vec3<bool>(arg_1.a.x, false, arg_1.a.x), global1.b, vec3<bool>(arg_1.a.x, true, true), 0u, -38430i), arg_1.c).d, arg_1.d)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.d, ~8979u), firstTrailingBit(vec2<u32>(18566u, 65062u))), var_0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(global1.e, i32(-1i) * -min(-global1.e, -1i), all(select(vec3<bool>(global1.c.x, false, true), vec3<bool>(global1.c.x, global1.c.x, false), all(vec4<bool>(true, true, global1.c.x, global1.c.x)))) | !global1.a.x);
    let var_0 = ~func_5(-2147483647i, func_4(func_2(func_1(true, u_input.b), Struct_1(global1.a, -2147483647i, vec3<bool>(global1.c.x, global1.c.x, global1.a.x), global1.d, u_input.a.x), select(vec3<bool>(global1.a.x, false, true), vec3<bool>(global1.a.x, false, global1.c.x), global1.a))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(firstLeadingBit(global1.d), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~global2[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(27795u, 21u)], vec4<u32>(u_input.b, u_input.b, var_0.x, 0u))), _wgslsmith_clamp_u32(~80524u, _wgslsmith_add_u32(18594u, 16671u), var_0.x))), global1.d << (1u % 32u));
    let var_2 = min(firstLeadingBit(vec3<u32>(var_0.x, 0u, 1u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, 45909u), ~global1.d, firstTrailingBit(15131u)), global1.d ^ reverseBits(1u), ~0u)) & vec3<u32>(abs(abs(global1.d & 15990u)), _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(var_0.x, 53520u)), firstLeadingBit(29543u)), 62833u);
    var var_3 = Struct_1(global1.c, -2147483647i, vec3<bool>(all(!select(vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(global1.a.x, false, global1.a.x, global1.c.x), global1.c.x)), false, global1.a.x), global1.d, _wgslsmith_sub_i32(func_2(countOneBits(0u), Struct_1(!vec3<bool>(false, true, global1.a.x), 20836i, global1.a, 84689u, u_input.a.x | global1.e), global1.c).b, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(483f - -2114f), -6240i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(582f - -925f), _wgslsmith_f_op_f32(ceil(452f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(426f, -975f)) * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(754f, -774f), vec2<f32>(1000f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), -757f))));
}

