struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(false, Struct_1(501f, 1i, -12841i, vec2<u32>(0u, 47819u), -24517i), vec3<u32>(1u, 74303u, 56746u)), Struct_2(true, Struct_1(-1229f, 5313i, 1995i, vec2<u32>(16135u, 4294967295u), i32(-2147483648)), vec3<u32>(30379u, 67806u, 60681u)), Struct_2(true, Struct_1(915f, 2147483647i, 0i, vec2<u32>(1u, 1u), 25464i), vec3<u32>(39228u, 0u, 32272u)), Struct_2(true, Struct_1(-1000f, 50048i, 2147483647i, vec2<u32>(72679u, 4294967295u), i32(-2147483648)), vec3<u32>(12969u, 1u, 58615u)), Struct_2(false, Struct_1(-351f, 2147483647i, 2147483647i, vec2<u32>(0u, 1u), -28752i), vec3<u32>(33553u, 22320u, 18089u)), Struct_2(false, Struct_1(1000f, -36065i, -1i, vec2<u32>(4294967295u, 1u), 0i), vec3<u32>(36403u, 97446u, 4294967295u)), Struct_2(false, Struct_1(651f, -1i, 0i, vec2<u32>(1u, 4294967295u), -45072i), vec3<u32>(4687u, 30235u, 55025u)), Struct_2(false, Struct_1(-1754f, 2147483647i, -39388i, vec2<u32>(4294967295u, 1u), -12746i), vec3<u32>(40696u, 4294967295u, 1u)), Struct_2(false, Struct_1(169f, 1i, -50868i, vec2<u32>(78974u, 0u), 2147483647i), vec3<u32>(56867u, 1u, 1u)), Struct_2(false, Struct_1(1000f, i32(-2147483648), -43875i, vec2<u32>(0u, 25896u), i32(-2147483648)), vec3<u32>(1u, 61142u, 4294967295u)), Struct_2(true, Struct_1(557f, -1i, -47186i, vec2<u32>(53970u, 1u), -15622i), vec3<u32>(0u, 0u, 37131u)), Struct_2(false, Struct_1(233f, i32(-2147483648), -33729i, vec2<u32>(30646u, 11700u), -32862i), vec3<u32>(11652u, 30429u, 4294967295u)));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 11891u, 1u, 8305u);

var<private> global3: array<i32, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(select(!(!vec3<bool>(arg_0.a, arg_0.a, false)), select(select(vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, true, true)), !vec3<bool>(false, false, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a)), true), select(!(!vec3<bool>(true, arg_0.a, arg_0.a)), vec3<bool>(arg_0.b.c >= global3[_wgslsmith_index_u32(global2.x, 26u)], all(vec2<bool>(arg_0.a, arg_0.a)), false), false), arg_0.a != true), any(vec3<bool>(false, !(!arg_0.a), _wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(global2.x, arg_0.c.x)) < ~global2.x)));
    let var_1 = select(vec2<bool>((_wgslsmith_mult_u32(1u, 33200u) >> ((global2.x ^ u_input.a.x) % 32u)) > global2.x, false), !(!select(var_0.xz, vec2<bool>(arg_0.a, var_0.x), vec2<bool>(arg_0.a, arg_0.a))), !(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.d.x, 0u), u_input.a.yz ^ global2.ww) > ~(~global2.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.b.a, _wgslsmith_f_op_f32(423f + arg_0.b.a))))), 649f));
    global1 = array<Struct_2, 12>();
    global3 = array<i32, 26>();
    return select(var_0.zz, !select(select(var_0.xx, var_1, any(var_1)), !(!var_1), vec2<bool>(var_0.x, !var_1.x)), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = false;
    var var_1 = firstLeadingBit(vec2<i32>(arg_1.x ^ 23587i, ~countOneBits(_wgslsmith_mult_i32(2147483647i, global3[_wgslsmith_index_u32(55982u, 26u)]))));
    var_1 = vec2<i32>(countOneBits(-20871i), 0i);
    var var_2 = u_input.a.x > global2.x;
    var_2 = any(select(select(vec4<bool>(arg_2.x, global2.x < 55509u, all(vec3<bool>(arg_2.x, true, true)), any(arg_2)), !vec4<bool>(arg_2.x, true, arg_2.x, true), vec4<bool>(true, arg_2.x == arg_2.x, arg_2.x && arg_2.x, true)), vec4<bool>(!(-156f != arg_0.x), func_3(Struct_2(true, Struct_1(arg_0.x, var_1.x, -6496i, u_input.a.zy, var_1.x), vec3<u32>(global2.x, global2.x, global2.x))).x && false, (global3[_wgslsmith_index_u32(0u, 26u)] <= 2147483647i) & (global2.x == u_input.a.x), var_1.x >= 1i), all(select(vec3<bool>(arg_2.x, false, arg_2.x), select(vec3<bool>(true, false, false), vec3<bool>(arg_2.x, false, true), arg_2.x), global3[_wgslsmith_index_u32(4294967295u, 26u)] == -2147483647i))));
    return ~select(u_input.a, u_input.a, select(!(!vec4<bool>(arg_2.x, true, arg_2.x, true)), vec4<bool>(arg_2.x, !arg_2.x, true, true), -26649i != _wgslsmith_mod_i32(-62412i, var_1.x)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(309f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, ~abs(u_input.a.x)), vec2<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(1947u, 12253u >> (global2.x % 32u)))), 26u)], -1i, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global2.x, ~4935u, ~arg_0.x), func_4(vec2<f32>(1204f, -192f), max(vec2<i32>(global0[_wgslsmith_index_u32(global2.x, 32u)], 1i), vec2<i32>(global3[_wgslsmith_index_u32(59134u, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)])), func_3(Struct_2(false, Struct_1(383f, global0[_wgslsmith_index_u32(arg_0.x, 32u)], 2147483647i, arg_0.xx, global3[_wgslsmith_index_u32(4294967295u, 26u)]), arg_0.wzw)))), u_input.a.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(~u_input.a.x, 32u)]), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(41031i, global3[_wgslsmith_index_u32(arg_0.x, 26u)])), -vec2<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]))));
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.a.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 49927u), ~var_0.d), true), countOneBits(u_input.a.zy)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, 1359f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(-318f, var_0.a)))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), countOneBits(vec2<i32>(var_0.b, -2147483647i)))), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, true, false)), true), any(vec4<bool>(false, true, false, true)) || false)).x, ~var_0.d.x, 2981u);
    var var_1 = select(select(vec4<bool>(any(vec2<bool>(false, false)) & all(vec4<bool>(true, false, false, true)), !all(vec3<bool>(false, false, true)), true, ~4294967295u >= ~var_0.d.x), select(vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true))), select(vec4<bool>(!all(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, select(true, false, true), true), vec4<bool>(any(vec3<bool>(true, true, false)), func_3(Struct_2(true, Struct_1(1448f, global0[_wgslsmith_index_u32(arg_0.x, 32u)], var_0.b, vec2<u32>(4294967295u, 1u), var_0.e), u_input.a.zwz)).x, all(vec3<bool>(true, true, true)), true)), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), true, false, true)), vec4<bool>(true, select(true, true, false), false, !all(vec2<bool>(true, true))));
    return ~(~64163u | firstTrailingBit(reverseBits(var_0.d.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec4<u32>(func_2(reverseBits(u_input.a)), 61260u, _wgslsmith_add_u32(76060u, countOneBits(24329u)) << (~arg_0.b.d.x % 32u), global2.x) << ((reverseBits(~u_input.a) | abs(~u_input.a ^ u_input.a)) % vec4<u32>(32u));
    global1 = array<Struct_2, 12>();
    global2 = vec4<u32>(~var_0.x, u_input.a.x, ~abs(_wgslsmith_sub_u32(~arg_0.b.d.x, 4294967295u)), ~(~_wgslsmith_mult_u32(var_0.x, 56063u) << (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.a + _wgslsmith_f_op_f32(abs(-1042f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2529f)) - _wgslsmith_f_op_f32(arg_0.b.a - 389f))), 2745f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1319f), _wgslsmith_f_op_f32(ceil(arg_0.b.a)), arg_0.b.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(826f, 301f, arg_0.b.a) + vec3<f32>(-839f, arg_0.b.a, arg_0.b.a)), vec3<f32>(arg_0.b.a, -1478f, arg_0.b.a))))));
    global3 = array<i32, 26>();
    return Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.a + var_1.x), _wgslsmith_f_op_f32(floor(755f)), arg_0.a))), max(min(_wgslsmith_mult_i32(arg_0.b.b, global0[_wgslsmith_index_u32(var_0.x, 32u)]), arg_0.b.c), 14193i), global3[_wgslsmith_index_u32(min(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.x, 68488u, u_input.a.x, 1u), var_0, vec4<u32>(24312u, 23844u, arg_0.b.d.x, 68017u))), 4294967295u), 26u)], vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, global2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(762u, arg_0.b.d.x, u_input.a.x), arg_0.c)), 0u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-9521i, ~arg_0.b.b), 2147483647i)), arg_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_2(arg_2.x, func_1(arg_0).b, ~(~(~vec3<u32>(4294967295u, global2.x, arg_1.d.x)) & ~global2.xzw));
    var_0 = Struct_2(false, Struct_1(arg_1.a, reverseBits(-11750i), _wgslsmith_div_i32((global0[_wgslsmith_index_u32(arg_0.b.d.x, 32u)] ^ 0i) >> (u_input.a.x % 32u), 9069i | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b, global0[_wgslsmith_index_u32(arg_1.d.x, 32u)], 1i, -2588i), vec4<i32>(global3[_wgslsmith_index_u32(66376u, 26u)], -2147483647i, global3[_wgslsmith_index_u32(0u, 26u)], 0i))), global2.zx, -2147483647i), vec3<u32>(_wgslsmith_mult_u32(arg_1.d.x, u_input.a.x), select(~31039u, 24185u, true) ^ ~1u, u_input.a.x));
    let var_1 = 34285i;
    let var_2 = Struct_2(any(vec3<bool>(select(arg_2.x, arg_3.x, true), true, true)) | select(true, select(all(arg_2), var_0.a, arg_1.e < var_0.b.e), true), Struct_1(1f, max(-_wgslsmith_mod_i32(56112i, arg_0.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -2333i, global3[_wgslsmith_index_u32(1u, 26u)]), vec4<i32>(4507i, -58279i, var_0.b.b, arg_1.e) ^ vec4<i32>(25964i, var_1, -2147483647i, var_0.b.c))), countOneBits(countOneBits(~arg_0.b.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(~32701u, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.x, 61106u), select(var_0.b.d, arg_1.d, vec2<bool>(var_0.a, arg_3.x)))), _wgslsmith_clamp_i32(60697i, -24045i, _wgslsmith_sub_i32(arg_1.e, -2147483647i))), ~u_input.a.yww);
    global3 = array<i32, 26>();
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) * _wgslsmith_f_op_f32(func_5(func_1(Struct_2(false, Struct_1(-770f, -20824i, 12773i, vec2<u32>(global2.x, 46120u), global0[_wgslsmith_index_u32(1u, 32u)]), u_input.a.wzw)), Struct_1(294f, 23518i, global3[_wgslsmith_index_u32(global2.x, 26u)], global2.yw, global0[_wgslsmith_index_u32(1937u, 32u)]), vec4<bool>(true, true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(-1000f)), true))))) * 1f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0), ~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 33688i), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(global2.x, 26u)], 3609i) ^ vec3<i32>(1i, global0[_wgslsmith_index_u32(global2.x, 32u)], 1i))), global0[_wgslsmith_index_u32(func_4(vec2<f32>(_wgslsmith_f_op_f32(step(553f, -106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -(_wgslsmith_add_vec2_i32(vec2<i32>(93067i, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<i32>(-26770i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])) << (vec2<u32>(global2.x, 14832u) % vec2<u32>(32u))), vec2<bool>(any(vec2<bool>(true, true)) || true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)))).x, 32u)], vec2<u32>(~global2.x, ~(4294967295u >> (1u % 32u))), min(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-11453i, global0[_wgslsmith_index_u32(global2.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<i32>(reverseBits(-1i), max(1i, -12892i), 440i))));
    let var_2 = -var_1.c;
    let var_3 = ~firstTrailingBit(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(27998u, 7860u, u_input.a.x, var_1.d.x), u_input.a), global2.x, (4294967295u & var_1.d.x) == 1u));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-vec2<i32>(var_1.b, global0[_wgslsmith_index_u32(var_3, 32u)])) & (_wgslsmith_sub_vec2_i32(vec2<i32>(-66739i, -11923i), vec2<i32>(global3[_wgslsmith_index_u32(85439u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)])) | (vec2<i32>(30958i, global3[_wgslsmith_index_u32(var_3, 26u)]) ^ vec2<i32>(-1i, -5704i))), -(~select(vec2<i32>(global0[_wgslsmith_index_u32(0u, 32u)], 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(16193u, 26u)], global3[_wgslsmith_index_u32(var_1.d.x, 26u)]), vec2<bool>(false, false)))), select(vec2<i32>(24695i, abs(2147483647i)), -(~(-vec2<i32>(17621i, global3[_wgslsmith_index_u32(145008u, 26u)]))), select(select(vec2<bool>(true, true), func_3(Struct_2(true, Struct_1(var_1.a, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(var_1.d.x, 26u)], vec2<u32>(4294967295u, u_input.a.x), var_1.c), vec3<u32>(var_3, 0u, 1u))), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, var_1.b >= global0[_wgslsmith_index_u32(var_1.d.x, 32u)]))));
}

