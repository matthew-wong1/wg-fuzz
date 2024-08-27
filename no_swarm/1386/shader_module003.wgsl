struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: Struct_4,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(51446u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 80211u), vec2<u32>(17603u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 50848u), vec2<u32>(4294967295u, 31547u), vec2<u32>(10784u, 59516u), vec2<u32>(29436u, 94253u), vec2<u32>(5865u, 62308u), vec2<u32>(4294967295u, 56957u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 19581u), vec2<u32>(1u, 46048u), vec2<u32>(63090u, 1u), vec2<u32>(1u, 17507u), vec2<u32>(4294967295u, 1u), vec2<u32>(55901u, 1u), vec2<u32>(26069u, 45245u));

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 26>;

var<private> global3: Struct_4 = Struct_4(1i);

var<private> global4: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = 780f;
    let var_1 = -((~vec2<i32>(global3.a, global3.a) ^ firstLeadingBit(-vec2<i32>(-1i, global3.a))) & _wgslsmith_mod_vec2_i32(vec2<i32>(global3.a, ~global3.a), _wgslsmith_add_vec2_i32(vec2<i32>(global3.a, -2147483647i), vec2<i32>(global3.a, -2147483647i))));
    var var_2 = -686f;
    global1 = -2147483647i;
    global2 = array<vec3<bool>, 26>();
    return false && arg_0;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>(true, true), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(164f - _wgslsmith_f_op_f32(round(-413f))), 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, -775f))))), !select(select(vec4<bool>(true, true, false, true), select(global4[_wgslsmith_index_u32(u_input.a, 24u)], vec4<bool>(true, false, true, true), global4[_wgslsmith_index_u32(u_input.a, 24u)]), select(global4[_wgslsmith_index_u32(34933u, 24u)], global4[_wgslsmith_index_u32(35569u, 24u)], global4[_wgslsmith_index_u32(31604u, 24u)])), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, false), global4[_wgslsmith_index_u32(23276u, 24u)], true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true))), !vec2<bool>(func_1(true), true)));
    global4 = array<vec4<bool>, 24>();
    var var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(global3.a, global3.a, arg_0)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.a, -2147483647i, 33419i), vec3<i32>(-27805i, 19267i, global3.a))))));
    let var_2 = max(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), ~vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u)), countOneBits(vec4<u32>(1u, _wgslsmith_sub_u32(26881u, u_input.a), u_input.a, ~u_input.a))), 43725u);
    let var_3 = Struct_2(!any(select(vec2<bool>(true, false), !vec2<bool>(true, var_0.d.x), var_0.d.zy)), var_0.c.x, Struct_1(!vec2<bool>(!var_0.d.x, true), !(global3.a >= ~arg_0), var_0.c, !select(vec4<bool>(false, var_0.d.x, var_0.b, true), !vec4<bool>(true, var_0.d.x, false, var_0.e.x), !vec4<bool>(false, var_0.b, var_0.e.x, var_0.d.x)), vec2<bool>(var_0.d.x, all(!vec4<bool>(true, true, var_0.e.x, var_0.d.x)))));
    return reverseBits(vec4<u32>(12306u, u_input.a, 1u, u_input.a));
}

fn func_2() -> Struct_1 {
    global2 = array<vec3<bool>, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(907f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2634f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1191f, -1131f)), _wgslsmith_f_op_f32(max(-1614f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 736f), -524f)))));
    var var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(3012u, u_input.a) & vec2<u32>(40171u, u_input.a), ~vec2<u32>(94941u, u_input.a), select(global0[_wgslsmith_index_u32(18113u, 19u)], global0[_wgslsmith_index_u32(13745u, 19u)], vec2<bool>(true, true)))), reverseBits(~select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec2<u32>(4294967295u, u_input.a)), vec2<bool>(false, true))));
    let var_2 = !select(!vec2<bool>(all(vec2<bool>(true, true)), true), !vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true));
    var var_3 = abs(func_3(global3.a));
    return Struct_1(select(var_2, vec2<bool>(var_2.x, !func_1(false)), var_2.x == any(global4[_wgslsmith_index_u32(select(var_3.x, var_3.x, var_2.x), 24u)])), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + 380f))) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), !global4[_wgslsmith_index_u32(1u, 24u)], select(select(vec2<bool>(all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), true), select(select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, var_2.x), true), vec2<bool>(true, false)), vec2<bool>(var_2.x || !var_2.x, var_2.x), !func_1(all(vec4<bool>(true, var_2.x, var_2.x, true)))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_0.e.x, _wgslsmith_f_op_f32(-728f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2301f, arg_0.c.x))))), func_2());
    global4 = array<vec4<bool>, 24>();
    global0 = array<vec2<u32>, 19>();
    var var_1 = vec3<bool>(any(arg_0.e), !(!((false && var_0.c.a.x) || (true & var_0.c.a.x))), arg_0.b);
    let var_2 = !select(global4[_wgslsmith_index_u32(0u, 24u)], select(arg_0.d, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)), ~vec4<u32>(0u, 0u, 83045u, u_input.a)), 24u)], false), !select(var_0.c.d.x, any(var_0.c.d), 7598i < global3.a));
    return ~_wgslsmith_add_u32(u_input.a, 2654u);
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: bool, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -224f), func_2().e, Struct_4(arg_3.c.a), arg_1.d, 53327u);
    var var_1 = 1i;
    global0 = array<vec2<u32>, 19>();
    let var_2 = func_2();
    var var_3 = ~(-_wgslsmith_clamp_i32(-38621i, _wgslsmith_mult_i32(-2147483647i, min(arg_1.c.a, 12360i)), _wgslsmith_dot_vec2_i32(vec2<i32>(41431i, arg_1.d.x) | var_0.d.yz, _wgslsmith_mod_vec2_i32(arg_3.d.wy, vec2<i32>(2147483647i, -25278i)))));
    return Struct_1(!(!vec2<bool>(arg_3.b.x == true, all(var_2.d.zxx))), var_2.e.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1239f, _wgslsmith_f_op_f32(select(393f, arg_1.a, true))) * var_2.c))), !global4[_wgslsmith_index_u32(var_0.e, 24u)], !var_0.b);
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), -1260f, -186f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + arg_0.c.x), _wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), true)), _wgslsmith_f_op_f32(round(arg_0.c.x))))), ~firstLeadingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 6044i, -54145i), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a, global3.a, global3.a), vec3<i32>(global3.a, global3.a, 2147483647i)))), vec3<f32>(1016f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x) - _wgslsmith_f_op_f32(arg_0.c.x * -1792f))), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, select(false, arg_1, false))))), select(vec4<bool>(arg_0.b, select(true, arg_0.e.x, true) && true, arg_1, !arg_1), func_2().d, vec4<bool>(true, all(arg_0.e), arg_1, !any(vec4<bool>(false, arg_1, true, false)))));
    let var_1 = arg_1;
    var var_2 = var_0.d.x;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(807f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f + arg_0.c.x) - var_0.c.x))), _wgslsmith_mod_u32(u_input.a | 0u, _wgslsmith_clamp_u32(~abs(u_input.a), 16823u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 19>();
    let var_0 = u_input.a;
    var var_1 = !func_1((true && any(vec4<bool>(true, true, false, true))) && (true & (global3.a != 2147483647i)));
    global1 = _wgslsmith_clamp_i32(global3.a, -(~abs(abs(global3.a))), global3.a);
    global1 = firstLeadingBit(-16722i);
    let x = u_input.a;
    s_output = func_6(func_5(func_4(func_2()), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * 2128f)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2().a.x), Struct_4(firstLeadingBit(-1i)), vec4<i32>(~(-38929i), -48599i, global3.a, -global3.a), _wgslsmith_clamp_u32(_wgslsmith_div_u32(2285u, 9541u), ~0u, var_0)), true, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -592f), vec2<bool>(4294967295u >= u_input.a, true), Struct_4(max(global3.a, 0i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 40016i, -1i), vec4<i32>(-27480i, global3.a, -4416i, 1i))), _wgslsmith_add_u32(u_input.a, reverseBits(u_input.a)))), true);
}

