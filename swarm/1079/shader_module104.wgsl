struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(809f, 1623f, 197f, -285f, 268f, 241f, -1825f, 404f, 722f);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(255f, 685f, 613f, -674f), vec2<f32>(720f, -212f), true, true);

var<private> global2: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -471f))))));
    var var_1 = select(select(select(select(select(vec4<bool>(false, false, true, arg_3.a), vec4<bool>(arg_3.a, arg_2.e.d, arg_3.a, arg_3.a), false), select(vec4<bool>(global1.d, arg_3.a, false, arg_0.a), vec4<bool>(global1.d, true, true, false), arg_0.a), any(vec3<bool>(true, arg_0.a, global1.d))), select(!vec4<bool>(false, arg_2.e.c, true, arg_3.a), !vec4<bool>(arg_3.a, true, true, true), true), global1.c), select(!vec4<bool>(true, arg_2.e.d, true, true), !select(vec4<bool>(arg_3.a, false, arg_0.a, arg_3.a), vec4<bool>(arg_0.a, false, arg_3.a, true), false), vec4<bool>(false, any(vec4<bool>(true, true, true, false)), false, true)), false), !(!(!select(vec4<bool>(true, true, arg_0.a, global1.d), vec4<bool>(arg_3.a, true, arg_3.a, global1.c), vec4<bool>(arg_2.e.c, false, false, arg_0.a)))), select(!(!select(vec4<bool>(global1.d, global1.c, false, global1.c), vec4<bool>(true, false, false, false), true)), !vec4<bool>(any(vec3<bool>(true, false, arg_2.e.d)), true, !arg_0.a, !arg_2.e.d), vec4<bool>(true, any(vec3<bool>(false, arg_3.a, arg_0.a)), false || (arg_2.a.a == arg_2.d.x), true)));
    global2 = array<vec2<bool>, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.e.wxx * vec3<f32>(237f, _wgslsmith_div_f32(global1.a.x, arg_2.a.e.x), var_0)));
    var var_3 = vec3<u32>(4294967295u, ~arg_2.d.x, arg_2.a.a);
    return _wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(global1.b.x * -210f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    global0 = array<f32, 9>();
    var var_0 = vec3<i32>(39045i, 32908i, u_input.a.x >> (~select(1u, 1977u, true) % 32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -554f)), -1539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(var_0.x >= u_input.a.x), u_input.a.x, Struct_3(Struct_2(1u, 1i, var_0.x, vec3<i32>(28931i, var_0.x, 9218i), global1.a), Struct_2(79170u, 0i, var_0.x, vec3<i32>(var_0.x, 0i, 2147483647i), global1.a), _wgslsmith_mod_vec3_i32(u_input.a.yyy, u_input.a.xyz), vec2<u32>(1593u, 1u), Struct_1(global1.a, vec2<f32>(global0[_wgslsmith_index_u32(28704u, 9u)], 521f), false, arg_1.x)), Struct_4(global1.c)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-arg_0)));
    let var_3 = Struct_2(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(11772u, 1u, 4294967295u), _wgslsmith_clamp_u32(7259u, 37777u, 13418u)), ~vec2<u32>(1u, 1u))), u_input.a.x, -2147483647i, firstTrailingBit(min(~u_input.a.xxx, max(u_input.a.wxw, ~u_input.a.zzy))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, global0[_wgslsmith_index_u32(21722u, 9u)], 469f, 841f)) - _wgslsmith_f_op_vec4_f32(ceil(global1.a))))));
    return Struct_2(var_3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, var_0.x), u_input.a.yzx, u_input.a.zyw)), select(vec3<i32>(var_0.x, var_3.b, var_0.x), u_input.a.xzx, !global1.c), _wgslsmith_mult_vec3_i32(reverseBits(u_input.a.yzx), -u_input.a.wxz)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.a.x), -32602i >> (var_3.a % 32u), 1i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, var_3.b), vec3<i32>(u_input.a.x, var_0.x, -25463i)), ~var_0.x), 33207i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_3.d.x, -15251i), vec2<i32>(0i, var_0.x)), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-925f, -123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-754f))), _wgslsmith_f_op_f32(func_3(Struct_4(global1.c), _wgslsmith_clamp_i32(u_input.a.x, -1i, var_3.d.x), Struct_3(var_3, Struct_2(21702u, -47676i, -24901i, var_3.d, var_3.e), u_input.a.zzw, vec2<u32>(var_3.a, 27865u), Struct_1(var_3.e, vec2<f32>(global1.a.x, -1473f), global1.d, false)), Struct_4(false))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = Struct_4(global1.c);
    global0 = array<f32, 9>();
    var var_1 = select(!vec3<bool>(true, false, !any(global2[_wgslsmith_index_u32(arg_2, 23u)])), vec3<bool>(all(!(!global2[_wgslsmith_index_u32(24171u, 23u)])), global1.d != global1.d, any(vec2<bool>(true, true))), global1.c);
    var var_2 = ~firstTrailingBit(~vec2<i32>(_wgslsmith_mod_i32(-1i, u_input.a.x), u_input.a.x >> (55964u % 32u)));
    global0 = array<f32, 9>();
    return 1u << (arg_2 % 32u);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    return max(_wgslsmith_add_u32(~_wgslsmith_mod_u32(~55794u, _wgslsmith_div_u32(4294967295u, 4294967295u)), select(1u, _wgslsmith_clamp_u32(4509u, 35084u, 72388u) >> (countOneBits(38768u) % 32u), arg_0.x)), max(~func_4(u_input.a.x >> (1u % 32u), func_2(global0[_wgslsmith_index_u32(1u, 9u)], vec4<bool>(false, arg_0.x, global1.d, arg_0.x)), abs(4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(8088u, 14188u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(false, global1.d, global1.c, global1.d), vec4<bool>(false, true, global1.c, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(109928u, func_1(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(59008u, 9u)])), vec2<u32>(abs(1u), ~4753u))), 23230u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(-1042f, global0[_wgslsmith_index_u32(2484u, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))), vec2<f32>(global1.b.x, -918f), global1.c, true);
    let var_2 = Struct_2(0u, u_input.a.x, 35724i << (_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(39223u, var_0.x, 19635u, var_0.x)), ~(~var_0.x)) % 32u), max(vec3<i32>(0i, ~u_input.a.x, 1i), vec3<i32>(0i, 28231i, u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_div_vec4_f32(global1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.a)))));
    let var_3 = firstTrailingBit(~vec4<u32>(var_2.a, var_0.x, ~4294967295u, var_0.x));
    let var_4 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(var_2.a, 0u))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(global1.a)), _wgslsmith_f_op_vec2_f32(-var_2.e.yz), var_1.d, true);
    global0 = array<f32, 9>();
    var var_5 = Struct_4(select(all(select(global2[_wgslsmith_index_u32(2853u, 23u)], global2[_wgslsmith_index_u32(73479u, 23u)], vec2<bool>(true, var_1.c))) && true, var_1.c, global1.d));
    let var_6 = vec4<bool>(true, countOneBits(u_input.a.x) < var_2.b, var_5.a, any(select(!vec4<bool>(global1.c, true, global1.c, false), vec4<bool>(false, global1.d, all(vec3<bool>(var_5.a, false, var_5.a)), true), vec4<bool>(select(false, true, var_1.c), var_1.c, true, global1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_2.a, 9u)], _wgslsmith_dot_vec4_u32(~max(abs(var_3), ~vec4<u32>(var_3.x, var_3.x, var_2.a, 0u)), ~abs(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(87865u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -1931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_mult_vec2_i32(var_2.d.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.b, 51176i), vec2<i32>(1i, -48206i))));
}

