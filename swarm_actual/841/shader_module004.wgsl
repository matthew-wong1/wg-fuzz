struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33009u, 3647u, 73462u, 1u);

var<private> global1: Struct_4 = Struct_4(vec2<i32>(1i, 2147483647i));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<u32>(29983u, 4294967295u, 4294967295u, 21805u), 1i, 2147483647i, false, 1i)), Struct_2(Struct_1(vec4<u32>(5446u, 4294967295u, 29434u, 1u), -14743i, 2147483647i, false, -123990i)), Struct_2(Struct_1(vec4<u32>(6711u, 1u, 0u, 20608u), -89960i, 18847i, false, -90753i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 49447u), 7941i, -17349i, true, 2147483647i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 21699u, 1u, 85249u), 0i, -30467i, true, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(42787u, 0u, 4294967295u, 4294967295u), 24475i, 0i, true, 3383i)), Struct_2(Struct_1(vec4<u32>(0u, 21931u, 17850u, 84875u), 28323i, -1i, false, -18501i)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 80954u, 10907u), -52669i, 23851i, true, 1i)));

var<private> global3: array<f32, 18> = array<f32, 18>(750f, 401f, 990f, -1978f, -571f, 874f, -1000f, 227f, 1000f, -768f, -1638f, 548f, 1213f, 231f, 1000f, -1636f, -1000f, -911f);

var<private> global4: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, true, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> vec2<i32> {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-785f)) * _wgslsmith_f_op_f32(max(-611f, _wgslsmith_f_op_f32(-arg_0.x))))) > 201f;
    global4 = array<vec4<bool>, 1>();
    return (((max(global1.a, global1.a) & ~vec2<i32>(-1i, 49874i)) & vec2<i32>(2147483647i, min(-27709i, global1.a.x))) ^ vec2<i32>(global1.a.x, 1i)) | _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, abs(global1.a.x)), -2147483647i), min(firstTrailingBit(vec2<i32>(0i, global1.a.x) ^ vec2<i32>(-55246i, u_input.a)), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), vec3<i32>(2147483647i, global1.a.x, -17579i)))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = global1.a.x;
    global4 = array<vec4<bool>, 1>();
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-2147483647i, ~global1.a.x), countOneBits(1i)), func_3(vec4<f32>(504f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(624f * global3[_wgslsmith_index_u32(global0.x, 18u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(14949u, 18u)])), global0.x, ~(~50462u))) >> ((vec2<u32>(_wgslsmith_mult_u32(0u, global0.x), ~0u) | ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 70941u, global0.x), vec4<u32>(4986u, global0.x, 15816u, 1u)), 35593u)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(208f, global3[_wgslsmith_index_u32(global0.x, 18u)], 2170f, global3[_wgslsmith_index_u32(global0.x, 18u)]), vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 18u)], 1231f, 1562f, global3[_wgslsmith_index_u32(3013u, 18u)]))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, -2779f, global3[_wgslsmith_index_u32(global0.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 18u)], 1326f, global3[_wgslsmith_index_u32(global0.x, 18u)], 209f))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(global0.x & 120u, 18u)], -293f, _wgslsmith_f_op_f32(623f - -602f), _wgslsmith_f_op_f32(abs(979f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3[_wgslsmith_index_u32(48296u, 18u)], global3[_wgslsmith_index_u32(global0.x, 18u)], 327f)))))));
    let var_3 = reverseBits(global0.x);
    return Struct_1(~(~countOneBits(firstLeadingBit(vec4<u32>(5497u, var_3, global0.x, 0u)))), -24188i, ~(-var_1.x), any(!vec3<bool>(global0.x != 14769u, select(true, arg_0.x, false), !arg_0.x)), -(i32(-1i) * -13297i));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(vec2<bool>(!all(vec3<bool>(false, arg_1.d, true)), true), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-205f)), _wgslsmith_f_op_f32(round(573f)))) > global3[_wgslsmith_index_u32(~4294967295u, 18u)], false), vec2<bool>(!arg_1.d, arg_1.d));
    let var_1 = min(~firstLeadingBit(select(vec3<u32>(1u, 1u, 17620u), global0.yyx, !vec3<bool>(false, var_0.x, true))), func_2(select(select(global4[_wgslsmith_index_u32(22505u, 1u)], vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, true, false, true)), global4[_wgslsmith_index_u32(~global0.x, 1u)], global4[_wgslsmith_index_u32(~4294967295u, 1u)])).a.xxx);
    let var_2 = firstLeadingBit(~abs(vec2<u32>(_wgslsmith_add_u32(1u, 0u), ~4294967295u)));
    let var_3 = Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(global1.a), vec2<i32>(-1i) * -vec2<i32>(arg_1.c, arg_0), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, 0i), global1.a, var_0.x), ~vec2<i32>(0i, 38997i))), global1.a));
    var var_4 = firstTrailingBit(var_3.a) ^ select(select(var_3.a, vec2<i32>(66176i, 0i), any(vec3<bool>(arg_1.d, arg_1.d, var_0.x))), ~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, -2147483647i), var_3.a << (vec2<u32>(19059u, 1u) % vec2<u32>(32u))), vec2<bool>(true, true));
    return Struct_2(arg_1);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = func_4(1i, func_2(global4[_wgslsmith_index_u32(0u, 1u)]));
    var var_1 = vec4<i32>(~(-u_input.a), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.a.c, u_input.a, -1i), u_input.a ^ arg_1.x) | 27817i), -min(var_0.a.b, -6678i), -29011i);
    let var_2 = Struct_3(!vec3<bool>(all(select(global4[_wgslsmith_index_u32(var_0.a.a.x, 1u)], global4[_wgslsmith_index_u32(104886u, 1u)], true)), any(vec2<bool>(true, true)), !var_0.a.d), func_4(~(-18221i), Struct_1(vec4<u32>(0u, 83936u, _wgslsmith_mod_u32(arg_0.x, arg_0.x), func_4(-1i, var_0.a).a.a.x), 35037i, 1i, all(vec3<bool>(true, var_0.a.d, false)), ~1i)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(508f, 2395f, 778f, arg_2))) - vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 18u)], -344f, global3[_wgslsmith_index_u32(1u, 18u)], 747f))))));
    var_1 = -firstTrailingBit(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a, 38519i, 37915i, var_2.b.e)), ~vec4<i32>(-2147483647i, 2147483647i, u_input.a, -13796i) ^ (vec4<i32>(var_0.a.c, arg_1.x, arg_1.x, 22841i) >> (var_2.b.a % vec4<u32>(32u)))));
    var var_3 = Struct_4(_wgslsmith_mult_vec2_i32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, global3[_wgslsmith_index_u32(4294967295u, 18u)], -409f, global3[_wgslsmith_index_u32(1u, 18u)])), 75400u, max(var_0.a.a.x, arg_0.x)), arg_1) | global1.a);
    return _wgslsmith_add_u32(1u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~_wgslsmith_clamp_u32(16839u, 23591u, global0.x), global0.x, ~4294967295u, func_1(global0.wzx, vec2<i32>(global1.a.x, u_input.a), global3[_wgslsmith_index_u32(4294967295u, 18u)])), vec4<u32>(~_wgslsmith_add_u32(global0.x, global0.x), ~(~global0.x), 57119u, func_4(~max(global1.a.x, u_input.a), func_4(abs(2147483647i), func_2(global4[_wgslsmith_index_u32(global0.x, 1u)])).a).a.a.x));
    global0 = ~(~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(73798u, global0.x, global0.x, 105268u)), abs(vec4<u32>(global0.x, 90621u, global0.x, global0.x))) | ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.x, 38999u, global0.x), vec4<u32>(1u, 5827u, global0.x, 4294967295u)), vec4<u32>(global0.x, 0u, 1u, 1u)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0.x, 18u)], 1391f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1048f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 18u)])), global3[_wgslsmith_index_u32(global0.x, 18u)]))));
    global1 = Struct_4(select(_wgslsmith_add_vec2_i32(-(vec2<i32>(global1.a.x, 0i) | vec2<i32>(global1.a.x, u_input.a)), abs(vec2<i32>(2147483647i, u_input.a))), -min(vec2<i32>(u_input.a, global1.a.x) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), countOneBits(global1.a)), true));
    var var_1 = Struct_4(_wgslsmith_div_vec2_i32(max(global1.a, vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, global1.a), 1i)), vec2<i32>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 310f, 744f, var_0)), countOneBits(18335u), 16390u).x, ~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec3<u32>(global0.x, ~(global0.x & global0.x), global0.x) ^ global0.wxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1397f) - _wgslsmith_f_op_f32(max(var_0, global3[_wgslsmith_index_u32(63697u, 18u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -1422f)) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(var_0)), true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a), -1i, func_2(vec4<bool>(false, false, false, true)).b, _wgslsmith_mult_i32(0i, 0i)) << (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(17265u, global0.x, global0.x, global0.x)), max(vec4<u32>(global0.x, 43525u, 4294967295u, 38416u), vec4<u32>(global0.x, 14103u, global0.x, global0.x))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global1.a.x, global1.a.x, u_input.a), vec4<i32>(u_input.a, 1290i, u_input.a, global1.a.x)), ~reverseBits(vec4<i32>(var_1.a.x, u_input.a, 15177i, -2147483647i)))));
}

