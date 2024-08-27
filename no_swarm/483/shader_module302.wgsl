struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: f32;

var<private> global2: vec3<i32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1158f, -1308f, -510f, 1183f) + vec4<f32>(-1000f, -201f, -607f, 324f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-560f, 932f, -822f, 1063f), vec4<f32>(-254f, -511f, -1000f, -1294f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(ceil(-287f)), 415f))))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, ~10192u, u_input.c.x & u_input.c.x), ~(~vec4<u32>(u_input.d.x, 77874u, u_input.a, 54532u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, 43093u), vec4<u32>(1u, u_input.c.x, u_input.a, u_input.b.x)) % vec4<u32>(32u)))), abs(~u_input.c.x ^ (~u_input.b.x & 1u)), u_input.b, true);
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_2(arg_0: bool) -> u32 {
    global1 = _wgslsmith_f_op_f32(floor(782f));
    global2 = ~(~(-vec3<i32>(global2.x, global2.x, 1i) & ~vec3<i32>(global2.x, 0i, global2.x)) ^ (vec3<i32>(~global2.x, -16803i, -global2.x) >> (u_input.c % vec3<u32>(32u))));
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(func_3()), -895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), ~countOneBits(firstTrailingBit(vec4<u32>(u_input.d.x, 24428u, 27489u, u_input.b.x))) >> (~vec4<u32>(1u, u_input.d.x, ~28231u, ~0u) % vec4<u32>(32u)), countOneBits(u_input.c.x), ~u_input.d, true);
    global3 = select(select(select(!(!vec3<bool>(false, arg_0, true)), vec3<bool>(!global3.x, false, false), !(!vec3<bool>(var_0.e, global3.x, global3.x))), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(global3.x, true, global3.x), var_0.e)), any(vec4<bool>(global3.x, var_0.e, var_0.e, global3.x)), (var_0.a.x <= 1147f) & (global2.x >= 1i)), true), !vec3<bool>(any(!vec2<bool>(arg_0, global3.x)), true, all(vec4<bool>(false, false, false, true))), var_0.a.x >= _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(-var_0.a.x))));
    global0 = array<vec2<bool>, 7>();
    return _wgslsmith_sub_u32(var_0.b.x, ~29232u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_u32(~(select(0u, u_input.d.x, true) & func_2(arg_2)) ^ min(11110u, u_input.a), ~(~_wgslsmith_dot_vec3_u32(select(u_input.c, u_input.c, false), vec3<u32>(arg_0.b.x, 22971u, 18713u) >> (u_input.c % vec3<u32>(32u)))), ~(11717u ^ ~_wgslsmith_add_u32(arg_0.d.x, u_input.b.x)));
    global2 = vec3<i32>(arg_1.x | global2.x, arg_1.x, -16813i) >> ((arg_0.b.yzx & ~u_input.c) % vec3<u32>(32u));
    var var_1 = true || global3.x;
    let var_2 = arg_1;
    var var_3 = ~(-vec3<i32>(select(firstLeadingBit(arg_1.x), global2.x, arg_0.e), _wgslsmith_mult_i32(arg_1.x, 2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, arg_1.x), _wgslsmith_add_i32(14783i, var_2.x))));
    return !select(vec3<bool>(true, true, false), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, arg_2, false), vec3<bool>(arg_0.e, true, arg_2)), select(select(vec3<bool>(global3.x, arg_2, false), vec3<bool>(false, true, true), arg_0.e), select(vec3<bool>(arg_2, global3.x, global3.x), vec3<bool>(true, true, true), global3.x), global3.x), select(select(vec3<bool>(arg_0.e, arg_2, true), vec3<bool>(arg_2, true, true), vec3<bool>(true, false, true)), !vec3<bool>(false, true, arg_2), false)), !(!(!vec3<bool>(false, arg_0.e, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -countOneBits(~abs(~vec3<i32>(0i, global2.x, global2.x)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -779f);
    var var_0 = ~max(global2.yx, reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(global2.x, 1i) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), vec2<i32>(-1i, global2.x))));
    var var_1 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true))), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-695f, -1090f, 1207f, -1210f), vec4<f32>(432f, 395f, -453f, -686f), vec4<bool>(false, global3.x, global3.x, true))), ~vec4<u32>(0u, 17526u, 1929u, 4294967295u), 4294967295u, u_input.b, true), reverseBits(vec4<i32>(global2.x, 2147483647i, -29165i, var_0.x)) ^ -vec4<i32>(-3917i, var_0.x, 1i, 1i), global3.x), func_1(Struct_2(vec4<f32>(797f, 1000f, 574f, -1386f), vec4<u32>(4294967295u, 4294967295u, 79158u, 44414u), u_input.c.x, vec2<u32>(152017u, 26639u), global3.x), vec4<i32>(global2.x, global2.x, var_0.x, var_0.x), true).x != func_1(Struct_2(vec4<f32>(-1757f, -177f, -387f, 1361f), vec4<u32>(u_input.c.x, 1045u, 20053u, u_input.d.x), u_input.a, vec2<u32>(u_input.a, u_input.c.x), global3.x), vec4<i32>(global2.x, var_0.x, global2.x, global2.x) | vec4<i32>(-25220i, global2.x, 57407i, global2.x), !global3.x).x), !select(select(!vec3<bool>(global3.x, global3.x, true), select(vec3<bool>(true, false, global3.x), vec3<bool>(global3.x, true, true), true), global3.x), func_1(Struct_2(vec4<f32>(-1000f, 338f, -840f, -1355f), vec4<u32>(28430u, u_input.b.x, 51297u, u_input.d.x), u_input.b.x, vec2<u32>(4294967295u, 0u), global3.x), vec4<i32>(30731i, var_0.x, 59360i, global2.x), true), vec3<bool>(true, false, all(vec3<bool>(true, global3.x, global3.x)))), vec3<bool>(~_wgslsmith_clamp_u32(4294967295u, 4918u, u_input.b.x) >= u_input.b.x, global3.x, global3.x));
    var_1 = func_1(Struct_2(vec4<f32>(-540f, _wgslsmith_f_op_f32(max(-411f, 378f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1208f * -776f)), 1620f), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 20381u), ~vec4<u32>(4294967295u, 100174u, u_input.c.x, 4294967295u), select(vec4<u32>(1u, 33633u, 27335u, 21490u), vec4<u32>(78500u, 12705u, u_input.a, 1u), global3.x))), u_input.a, vec2<u32>(786u, 4294967295u & u_input.b.x) | (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.d.x), u_input.d) >> ((vec2<u32>(u_input.d.x, u_input.c.x) ^ vec2<u32>(38197u, 28796u)) % vec2<u32>(32u))), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 1580f, 1044f, 1000f)), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.b.x)), u_input.d.x, vec2<u32>(4294967295u, 34056u), select(global3.x, var_1.x, true)), -vec4<i32>(-51608i, -95298i, 1i, 45208i), true).x), _wgslsmith_div_vec4_i32(select(firstTrailingBit(vec4<i32>(2147483647i, -22106i, var_0.x, 1i)), vec4<i32>(global2.x, global2.x, -2147483647i, 1i) >> (vec4<u32>(0u, u_input.d.x, 1u, u_input.b.x) % vec4<u32>(32u)), -2147483647i <= global2.x) ^ (vec4<i32>(36219i, var_0.x, global2.x, global2.x) | ~vec4<i32>(-9773i, -39835i, -1i, 5563i)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, global2.x, 1i), _wgslsmith_add_i32(global2.x, -1i)), 0i & (var_0.x | -2147483647i), (global2.x & global2.x) & 58654i, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-275f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-3074f, -1139f)) * -187f)));
    let var_2 = 0i < var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global2.x, var_0.x) << (~u_input.d.x % 32u));
}

