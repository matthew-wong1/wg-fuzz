struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: array<Struct_2, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 24u)];
    global1 = array<Struct_2, 24>();
    let var_1 = -748f;
    var var_2 = var_0.d;
    global1 = array<Struct_2, 24>();
    return abs(~var_2.a.zyz);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    var var_0 = (~(~vec3<u32>(0u, 1u, 55202u)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(33382u, 1u, 52498u), select(firstLeadingBit(vec3<u32>(0u, 20846u, 64361u)), func_3(Struct_1(vec4<u32>(4294967295u, 43665u, 1u, 44174u), global0[_wgslsmith_index_u32(24690u, 18u)], vec4<bool>(true, true, true, true), -509f), 25923u), all(vec2<bool>(true, false))))) ^ _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 1u), firstTrailingBit(vec3<u32>(34175u, 53153u, 4294967295u))), countOneBits(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(52448u, 0u, 59255u), vec3<u32>(4472u, 65145u, 29123u)), ~1u)));
    let var_1 = Struct_1(firstLeadingBit(vec4<u32>(4219u, var_0.x, var_0.x, _wgslsmith_dot_vec2_u32(select(var_0.zy, vec2<u32>(1u, 0u), true), reverseBits(vec2<u32>(16052u, 4294967295u))))), firstTrailingBit(vec4<i32>(-1i, -2789i, u_input.a.x, u_input.a.x)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(~35964u << (var_0.x % 32u), ~1u), firstLeadingBit(1u) | firstTrailingBit(17372u), 4294967295u);
    return Struct_1(countOneBits(_wgslsmith_mod_vec4_u32(~var_1.a, vec4<u32>(var_1.a.x, ~0u, var_0.x, ~44431u))), _wgslsmith_mod_vec4_i32(vec4<i32>(min(countOneBits(51908i), -20969i), i32(-1i) * -2147483647i, -26759i, ~abs(0i)), -(~(-global0[_wgslsmith_index_u32(var_1.a.x, 18u)]))), select(!(!select(vec4<bool>(false, var_1.c.x, true, true), var_1.c, vec4<bool>(var_1.c.x, var_1.c.x, false, true))), vec4<bool>(all(var_1.c.yy), false, false, false), select(select(!var_1.c, var_1.c, !var_1.c), var_1.c, all(var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.d, 579f)))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 18>();
    let var_0 = select(vec3<bool>(false, arg_0.d.c.x, false), arg_0.a.c.yyz, select(vec3<bool>(!(arg_0.d.c.x || false), arg_0.d.c.x, true), select(select(arg_0.a.c.wzz, select(arg_0.a.c.zzz, arg_0.a.c.zyz, arg_0.a.c.wyy), any(vec3<bool>(false, false, arg_0.d.c.x))), !select(arg_0.a.c.xzy, arg_0.a.c.yyw, true), !func_2().c.xwz), false));
    let var_1 = 1f;
    global1 = array<Struct_2, 24>();
    var var_2 = vec2<i32>(u_input.a.x, 0i);
    return Struct_1(arg_0.a.a, _wgslsmith_mult_vec4_i32(arg_0.a.b, ~(~vec4<i32>(var_2.x, -57060i, var_2.x, -1i))), func_2().c, _wgslsmith_f_op_f32(-func_2().d));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global1 = array<Struct_2, 24>();
    let var_0 = global1[_wgslsmith_index_u32(~(max(4294967295u, 4294967295u & arg_1.a.x) & arg_1.a.x), 24u)];
    let var_1 = arg_1;
    global0 = array<vec4<i32>, 18>();
    global1 = array<Struct_2, 24>();
    return func_2().a.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_5(~(~firstTrailingBit(vec2<i32>(-2147483647i, -28890i))), func_4(Struct_2(func_2(), func_3(Struct_1(vec4<u32>(arg_2.x, arg_2.x, 10464u, 47714u), vec4<i32>(-31858i, 2147483647i, 1i, arg_0), vec4<bool>(true, true, false, false), -1529f), ~1u).x, vec4<i32>(arg_0, -3694i, u_input.a.x, ~u_input.a.x), func_2())));
    var var_1 = global1[_wgslsmith_index_u32(25221u, 24u)];
    var var_2 = vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(26607u, var_0, var_1.b, var_1.d.a.x), var_1.a.a), vec4<u32>(29275u, 77666u, 101817u, var_0)), ~(~var_1.a.a))), func_4(Struct_2(Struct_1(var_1.a.a, global0[_wgslsmith_index_u32(50243u, 18u)], vec4<bool>(true, var_1.a.c.x, var_1.a.c.x, true), var_1.d.d), ~4294967295u, ~vec4<i32>(15920i, -22146i, u_input.a.x, -27505i), var_1.a)).a.x << (var_0 % 32u), ~(~firstTrailingBit(1u)));
    let var_3 = 298f;
    global0 = array<vec4<i32>, 18>();
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.b, arg_2.x, 1u), var_1.a.a), reverseBits(24685u)), ~func_4(global1[_wgslsmith_index_u32(abs(var_2.x), 24u)]).a), abs(vec4<i32>(~(-50722i) & _wgslsmith_mult_i32(u_input.a.x, 1i), u_input.a.x, -14070i, countOneBits(-2147483647i))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.d, arg_1.x)) > _wgslsmith_f_op_f32(386f - _wgslsmith_f_op_f32(step(-828f, arg_1.x))), any(vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, false)) | !any(var_1.a.c), firstLeadingBit(~arg_0) != _wgslsmith_mod_i32(-2147483647i | var_1.a.b.x, -arg_0), false), -1299f);
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = u_input.a.x;
    var_0 = Struct_1(vec4<u32>(~(~var_0.a.x), ~(var_0.a.x << (var_0.a.x % 32u)) | 84129u, _wgslsmith_div_u32(var_0.a.x, var_0.a.x), 4294967295u), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-28993i, -17683i & arg_0.b.x), arg_0.b.x), var_0.b.x, _wgslsmith_dot_vec3_i32(var_0.b.zwx, arg_0.b.wzz), -45466i), arg_0.c, _wgslsmith_f_op_f32(max(arg_0.d, 313f)));
    let var_2 = !func_4(global1[_wgslsmith_index_u32(func_2().a.x, 24u)]).c;
    var var_3 = Struct_2(func_1(~(-countOneBits(u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, 1294f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -139f, 591f)))))), vec2<u32>(~(~arg_0.a.x), ~4294967295u)), ~(~(~_wgslsmith_clamp_u32(var_0.a.x, 18878u, arg_0.a.x))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(max(-833i, u_input.a.x), 1i | arg_0.b.x), select(select(var_0.b.x, -20072i, false), -arg_0.b.x, true)), var_0.b.x, arg_0.b.x, select(~(u_input.a.x << (var_0.a.x % 32u)), -1i, all(arg_0.c.xy))), Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x, 1u & arg_0.a.x), arg_0.a.x >> (firstTrailingBit(var_0.a.x) % 32u), 5438u, 1u), vec4<i32>(firstLeadingBit(var_0.b.x), arg_0.b.x | 2320i, 1i, 68256i) ^ vec4<i32>(-var_0.b.x, 1i, 1i, -40495i), !arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(step(357f, var_0.d))))));
    return arg_0;
}

fn func_7(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = reverseBits(arg_2.a.x);
    var var_1 = ~arg_2.a.x < _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(2436u, arg_2.a.x), _wgslsmith_mod_u32(0u, func_3(Struct_1(arg_2.a, vec4<i32>(1670i, arg_0, 2147483647i, 2147483647i), arg_2.c, 1879f), 21946u).x), arg_2.a.x), func_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(-arg_3.yzx), arg_2.a.zx).a.x);
    let var_2 = arg_2.c.wx;
    var var_3 = global1[_wgslsmith_index_u32(48117u, 24u)];
    let var_4 = global1[_wgslsmith_index_u32(var_3.a.a.x ^ var_3.d.a.x, 24u)];
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 18>();
    let var_0 = 22575i;
    var var_1 = Struct_1(~(~(~vec4<u32>(35284u, 4294967295u, 25552u, 66599u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(41250u, 1u, 0u, 1u), vec4<u32>(~2842u, _wgslsmith_clamp_u32(40489u, 14958u, 8290u), 4294967295u, 4294967295u)), firstLeadingBit(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 35608u, 4294967295u), vec3<u32>(1u, 4294967295u, 93218u)), ~0u), 18u)]), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(686f * 1083f));
    let var_2 = func_7(_wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 34922i), min(vec2<i32>(var_0, var_0), var_1.b.zy)), -2147483647i), ~(-_wgslsmith_div_i32(var_1.b.x, 47449i))), -1192f, func_6(func_1(_wgslsmith_sub_i32(max(u_input.a.x, var_1.b.x), -37478i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, 2187f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.a.zy, vec2<u32>(var_1.a.x, 66788u)), min(54631u, 63450u))), !all(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), 915f, var_1.d) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 275f)), 291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1092f, 2050f)), _wgslsmith_f_op_f32(func_2().d - -1074f))));
    let var_3 = u_input.a.x;
    global1 = array<Struct_2, 24>();
    let var_4 = _wgslsmith_f_op_f32(ceil(var_1.d));
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(723f)) - -100f), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_div_f32(1668f, var_2.d), _wgslsmith_f_op_f32(f32(-1f) * -275f))));
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(756f, -324f, -101f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.x, -331f, -1714f, var_2.d), vec4<f32>(-143f, 558f, var_5.x, -475f), vec4<bool>(var_2.c.x, true, var_2.c.x, var_1.c.x)))))))));
}

