struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(249f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(575f, _wgslsmith_div_f32(-234f, -1452f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-821f, 332f), vec2<f32>(558f, -1121f)))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2081f + 533f))), _wgslsmith_f_op_f32(sign(2048f)))));
    var var_1 = countOneBits(~(~(-6355i)) ^ (~(~u_input.c.x) | _wgslsmith_mult_i32(-4324i, 1i)));
    global3 = array<vec2<bool>, 12>();
    let var_2 = 0u;
    global0 = array<vec2<bool>, 8>();
    return 11590u;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = vec2<bool>((_wgslsmith_mod_i32(i32(-1i) * -67354i, u_input.b.x) << (32977u % 32u)) <= 1i, true);
    let var_1 = global2[_wgslsmith_index_u32(1u, 1u)];
    let var_2 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(31087u, 82174u, _wgslsmith_mod_u32(u_input.d, arg_1), ~arg_1) ^ min(vec4<u32>(arg_1, arg_1, u_input.e, 4294967295u) << (vec4<u32>(14957u, 0u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, arg_1, u_input.d, 8796u)), ~(~(~vec4<u32>(8501u, 9921u, 11407u, u_input.e)))));
    global3 = array<vec2<bool>, 12>();
    return 644f;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = vec3<f32>(440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2406f * -1267f))))), _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * -1152f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, -1205f)), 980f, 374f), ~(~0u))));
    var var_1 = vec3<i32>(-19927i, firstTrailingBit(u_input.b.x), -arg_0);
    let var_2 = var_1.xx;
    let var_3 = true;
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 1u)];
    return Struct_2(var_1.yy, true);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~(~0u), select(u_input.d, 67128u, true)), 1656u);
    global1 = ~firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, var_0), select(u_input.d, ~u_input.d, arg_1.b), min(u_input.e, var_0) ^ ~u_input.e));
    var var_1 = ~((_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(7235u, 4294967295u, 52147u, 1u)), ~vec4<u32>(4294967295u, var_0, 18739u, 1u), vec4<u32>(0u, 1u, 19901u, var_0)) ^ ~vec4<u32>(96689u, 4294967295u, var_0, var_0)) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e, 0u, 62983u, 57641u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 620u, 42101u, var_0), vec4<u32>(u_input.e, 0u, 1u, var_0))));
    return !(~60299i >= u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f - -787f)), func_2(_wgslsmith_add_i32(0i, u_input.b.x), func_1(), ~4294967295u >= u_input.e)), true, (true & (all(vec4<bool>(false, false, false, false)) && true)) && true);
    let var_1 = -1i;
    global2 = array<Struct_2, 1>();
    var var_2 = select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(64918u & _wgslsmith_div_u32(~1u, u_input.e << (4294967295u % 32u)), u_input.d, ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(u_input.d, 1u)), ~u_input.e)), 12u)], var_0.xx, select(select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, u_input.d), 8u)], vec2<bool>(true, true), (u_input.d << (14215u % 32u)) >= ~u_input.d), !select(vec2<bool>(var_0.x, var_0.x), select(global3[_wgslsmith_index_u32(u_input.e, 12u)], global3[_wgslsmith_index_u32(u_input.e, 12u)], global0[_wgslsmith_index_u32(76237u, 8u)]), select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), false)), var_0.x));
    var var_3 = Struct_3(Struct_1(vec2<u32>(u_input.e << (28237u % 32u), u_input.d), true), Struct_1(select(firstTrailingBit(abs(vec2<u32>(u_input.e, u_input.d))), vec2<u32>(u_input.d | 4294967295u, u_input.e), vec2<bool>(!var_0.x, var_2.x)), var_0.x));
    var var_4 = Struct_2(~(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.c.x, 2147483647i), u_input.c, vec2<bool>(false, var_3.a.b)), vec2<i32>(var_1, 24490i)) | ~u_input.a), var_3.b.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1285f)), _wgslsmith_f_op_f32(766f - 423f), _wgslsmith_div_f32(1934f, -389f), _wgslsmith_f_op_f32(min(158f, -491f))), vec4<f32>(_wgslsmith_div_f32(-1649f, -1617f), -577f, -363f, _wgslsmith_f_op_f32(max(113f, 679f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1210f, 997f, -1877f, -966f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, 572f, 243f, 819f) - vec4<f32>(724f, -526f, 1053f, -184f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1440f, -191f, -1527f, 1831f) * vec4<f32>(855f, 607f, -382f, 189f)), vec4<f32>(589f, 1489f, 1000f, -840f))), var_4.b))));
    var_2 = !select(global3[_wgslsmith_index_u32(~(~4294967295u), 12u)], var_0.xz, global0[_wgslsmith_index_u32(0u, 8u)]);
    var var_6 = _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -62174i, var_1), ~u_input.b.wxz), var_1, 1i), _wgslsmith_div_vec3_i32(select(~vec3<i32>(var_4.a.x, var_4.a.x, var_4.a.x), abs(u_input.b.zww), !vec3<bool>(var_3.b.b, var_4.b, var_0.x)) ^ ((u_input.b.wwz | u_input.b.zyy) & _wgslsmith_sub_vec3_i32(u_input.b.xxy, u_input.b.xwx)), vec3<i32>(-1i, countOneBits(-var_4.a.x), ~var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, var_5.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(830f + 551f), 1181f))), (((vec3<u32>(u_input.e, 29583u, 4294967295u) & vec3<u32>(4294967295u, 33851u, var_3.b.a.x)) & select(vec3<u32>(u_input.e, u_input.d, 4294967295u), vec3<u32>(var_3.b.a.x, 0u, u_input.d), vec3<bool>(var_4.b, var_4.b, true))) & (_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.b.a.x, var_3.a.a.x, u_input.e), vec3<u32>(1u, 1u, 4294967295u)) << (~vec3<u32>(var_3.b.a.x, var_3.a.a.x, var_3.b.a.x) % vec3<u32>(32u)))) ^ _wgslsmith_mod_vec3_u32((vec3<u32>(var_3.a.a.x, 72314u, 20019u) << (vec3<u32>(1u, 4074u, u_input.e) % vec3<u32>(32u))) | (vec3<u32>(var_3.a.a.x, var_3.a.a.x, var_3.b.a.x) << (vec3<u32>(var_3.a.a.x, 4294967295u, var_3.b.a.x) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(u_input.e, var_3.b.a.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)));
}

