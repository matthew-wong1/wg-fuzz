struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(-573f, 99309u, vec2<u32>(80140u, 37488u), 307f), Struct_5(311f, 52989u, vec2<u32>(4294967295u, 75769u), 1153f), Struct_5(-1632f, 0u, vec2<u32>(98160u, 22336u), -972f), Struct_5(924f, 4294967295u, vec2<u32>(1u, 9319u), 302f), Struct_5(705f, 102u, vec2<u32>(2245u, 12261u), 493f), Struct_5(534f, 0u, vec2<u32>(69348u, 4294967295u), -135f), Struct_5(471f, 1u, vec2<u32>(2017u, 4294967295u), 1340f), Struct_5(204f, 49286u, vec2<u32>(63765u, 2817u), -402f), Struct_5(853f, 43592u, vec2<u32>(56824u, 20061u), -1499f), Struct_5(1729f, 1u, vec2<u32>(0u, 1u), -454f), Struct_5(757f, 0u, vec2<u32>(4294967295u, 55499u), 218f), Struct_5(-476f, 121966u, vec2<u32>(4294967295u, 0u), -672f), Struct_5(-1245f, 4294967295u, vec2<u32>(51864u, 9542u), -1050f), Struct_5(-177f, 4294967295u, vec2<u32>(6388u, 1u), -778f), Struct_5(-150f, 4294967295u, vec2<u32>(34164u, 1u), -460f), Struct_5(-1174f, 74723u, vec2<u32>(4294967295u, 1u), 950f), Struct_5(574f, 41788u, vec2<u32>(11820u, 80634u), 435f), Struct_5(129f, 11141u, vec2<u32>(93018u, 10954u), 162f), Struct_5(617f, 88234u, vec2<u32>(6313u, 4294967295u), -575f), Struct_5(-1290f, 64042u, vec2<u32>(24123u, 0u), -915f), Struct_5(2145f, 0u, vec2<u32>(4294967295u, 4294967295u), 418f), Struct_5(-1798f, 56769u, vec2<u32>(158125u, 1u), -811f), Struct_5(-1071f, 56646u, vec2<u32>(0u, 0u), 1351f), Struct_5(-366f, 1u, vec2<u32>(25485u, 4294967295u), 538f), Struct_5(576f, 0u, vec2<u32>(337u, 6113u), 1139f), Struct_5(149f, 0u, vec2<u32>(1u, 20030u), 695f), Struct_5(-265f, 0u, vec2<u32>(38541u, 10039u), 207f), Struct_5(-279f, 0u, vec2<u32>(46836u, 4294967295u), -788f), Struct_5(-1545f, 32936u, vec2<u32>(16341u, 4294967295u), 845f));

var<private> global1: Struct_5;

var<private> global2: vec4<u32> = vec4<u32>(76487u, 1u, 46689u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec2<i32> {
    let var_0 = true;
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(320f, arg_1.a), vec2<f32>(-1370f, global1.a))) + vec2<f32>(global1.d, -590f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-108f, arg_1.d))) - vec2<f32>(1f, 1f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d)) + _wgslsmith_f_op_f32(abs(global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))))));
    var var_3 = Struct_5(arg_1.a, _wgslsmith_add_u32(~16037u, _wgslsmith_sub_u32(1u, ~(~1u))), (global2.zz >> (global1.c % vec2<u32>(32u))) & abs(firstTrailingBit(select(vec2<u32>(global1.c.x, 8157u), arg_1.c, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(floor(-473f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -1000f))) + _wgslsmith_f_op_f32(abs(-452f))));
    var var_4 = arg_1;
    return u_input.d.yw;
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = firstTrailingBit(~func_3(-2389i, global0[_wgslsmith_index_u32(~0u, 29u)])) >> (_wgslsmith_add_vec2_u32(firstTrailingBit(~(~vec2<u32>(4294967295u, 22930u))), global2.zw) % vec2<u32>(32u));
    global2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(global1.b, global2.x), 27826u, 26822u, global2.x << (4294967295u % 32u)), (abs(vec4<u32>(global2.x, 101170u, global1.c.x, global2.x)) & vec4<u32>(159743u, 1u, global2.x, global2.x)) ^ vec4<u32>(31214u, global1.c.x, select(0u, 81294u, arg_0), ~55794u)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(53514u, ~global1.b, ~global1.b, 4294967295u), select(vec4<u32>(global1.c.x, 51539u, 6980u, global1.c.x) & vec4<u32>(global1.b, global2.x, global2.x, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, global2.x, global2.x), vec4<u32>(20028u, 0u, global1.c.x, global2.x)), all(vec4<bool>(true, arg_0, arg_0, false)))) << (_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(28511u), 0u, global1.b & global1.b, global1.c.x), ~(vec4<u32>(5036u, 0u, global2.x, 4294967295u) >> (vec4<u32>(33884u, global2.x, 1u, global1.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = array<Struct_5, 29>();
    var var_1 = Struct_1(vec4<u32>(firstTrailingBit(8345u), 6507u, ~(~global1.b), 7066u) ^ ~vec4<u32>(38541u, ~4294967295u, ~40975u, ~global2.x), ~(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global2.x, 1u, global2.x, 1u)), vec4<u32>(global1.c.x, 20812u, global2.x, global2.x)) | ~countOneBits(vec4<u32>(37500u, 1u, global1.b, global1.c.x))), any(vec2<bool>(arg_0, !arg_0)), -8151i, 53887u);
    let var_2 = any(vec2<bool>(select(var_1.c, !(!arg_0), false), any(select(select(vec4<bool>(true, var_1.c, var_1.c, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(true, true, false, arg_0)), vec4<bool>(var_1.c, true, false, var_1.c), !vec4<bool>(false, arg_0, false, var_1.c)))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d, global1.d, -1629f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d, -2187f, 428f), vec3<f32>(global1.d, global1.d, 318f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global1.a, 582f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, global1.a, global1.a) - vec3<f32>(global1.d, -511f, global1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 127f, 927f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global1.a, global1.d)))))))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_4 {
    global1 = global0[_wgslsmith_index_u32(firstLeadingBit(arg_0), 29u)];
    global0 = array<Struct_5, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.d) * -782f), global1.a, _wgslsmith_f_op_f32(sign(-523f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) * _wgslsmith_f_op_f32(abs(global1.a))), global1.d))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -1746f)) - _wgslsmith_f_op_f32(1029f + -423f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(min(var_0.x, 1958f)));
    global2 = ~vec4<u32>(4294967295u, ~(~1u), firstLeadingBit(_wgslsmith_div_u32(1u, global1.c.x)), ~(~0u) ^ max(_wgslsmith_add_u32(3375u, arg_0), ~global2.x));
    return Struct_4(vec4<bool>(arg_1, arg_1, all(!select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), any(select(!vec4<bool>(true, arg_1, arg_1, arg_1), !vec4<bool>(false, arg_1, arg_1, arg_1), true & arg_1))), Struct_3(vec2<bool>(all(!vec2<bool>(arg_1, false)), any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1)))), var_0.yz), Struct_2(15544u, vec3<bool>(any(vec2<bool>(arg_1, arg_1)), !arg_1, any(vec3<bool>(arg_1, arg_1, arg_1))), global1.d), Struct_2(firstLeadingBit(arg_0), vec3<bool>(arg_1, arg_1, false), var_0.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.b;
    global1 = Struct_5(arg_0.b.b.x, 36831u, max(~countOneBits(global2.wz), firstTrailingBit(global1.c) | arg_1.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.d)), 147f))) - func_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, arg_0.d.a), 1u), (u_input.b.x < -2147483647i) & (false & arg_3.c), _wgslsmith_mult_i32(-62057i, _wgslsmith_add_i32(arg_3.d, u_input.a))).b.b.x));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~19630u, 0u, 1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(77521u, 57019u, 7061u), arg_1.x)), arg_1), ~(~arg_1 | ~_wgslsmith_mult_vec4_u32(arg_3.a, vec4<u32>(0u, 4294967295u, arg_1.x, 0u))), var_0.a.x, _wgslsmith_clamp_i32(1i, arg_3.d, ~(~(30873i << (global1.b % 32u)))), 4294967295u);
    global2 = ~vec4<u32>(var_1.b.x, 0u, abs(~_wgslsmith_dot_vec3_u32(global2.wzy, arg_3.a.wzy)), countOneBits(firstLeadingBit(~0u)));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 22604u), global1.c), _wgslsmith_mult_u32(~1u, ~_wgslsmith_dot_vec3_u32(arg_3.a.zyy, arg_3.a.xxx)));
    return _wgslsmith_div_vec4_u32(firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_u32(~arg_1, vec4<u32>(57843u, 0u, 44070u, 53096u)))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.a, var_1.a & vec4<u32>(995u, 39688u, arg_0.c.a, 0u)), arg_3.b) << (vec4<u32>(var_1.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(94893u, 72498u), reverseBits(var_1.e)), var_1.a.x, ~54374u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.c.x, 4294967295u, global2.x, global1.b), vec4<u32>(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 1u, global2.x), global2.xwz), 0u, _wgslsmith_clamp_u32(49160u, global2.x, 0u)), vec4<u32>(abs(global1.b), firstLeadingBit(1u), ~global2.x, ~global1.c.x)));
    var_0 = ~func_4(func_1(~11313u, _wgslsmith_dot_vec2_i32(vec2<i32>(33742i, 35276i), u_input.b) == u_input.a, 31979i), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.c.x, 19917u, 0u, global1.b)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global2.x, global2.x, var_0.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 69685u), vec4<u32>(4294967295u, 8688u, global2.x, var_0.x), vec4<u32>(10805u, global2.x, global2.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, global1.d, global1.d)) - vec3<f32>(global1.a, global1.d, 923f))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, 41183u, global1.c.x), vec4<u32>(var_0.x, global1.c.x, var_0.x, 1u))), vec4<u32>(1u, global1.b, global1.c.x, 56884u), false, u_input.a, _wgslsmith_mult_u32(1u, var_0.x) << ((var_0.x | var_0.x) % 32u)));
    let var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, abs(max(u_input.a, u_input.a)), u_input.b.x, 1i), u_input.d);
    let var_2 = func_1(global2.x, true, reverseBits(var_1.x)).d;
    global1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1962f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d - global1.a))), !(!var_2.b.x))))), _wgslsmith_mod_u32(var_2.a, 52922u), global2.yz, _wgslsmith_f_op_f32(trunc(var_2.c)));
    var var_3 = !vec3<bool>(true, any(vec3<bool>(global1.c.x == var_2.a, var_2.b.x, true)), var_2.b.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(-528f - func_1(select(0u, 62761u, var_3.x), true, var_1.x).b.b.x)) - _wgslsmith_f_op_f32(132f - 1f));
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4)))))), ~1u, min(firstLeadingBit(global2.yz), global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, var_4)))), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, global2.zxw, ~max(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, var_0.x), global2.zy), ~global1.c), u_input.c.x);
}

