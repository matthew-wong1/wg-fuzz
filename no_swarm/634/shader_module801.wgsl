struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 1u, 43583u));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(i32(-2147483648), 2147483647i, 53005i, i32(-2147483648)));

var<private> global3: bool;

var<private> global4: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(2147483647i, -4693i), vec2<i32>(2147483647i, -14943i), vec2<i32>(-13308i, -34198i), vec2<i32>(1i, 2147483647i), vec2<i32>(-33293i, 2147483647i), vec2<i32>(1i, 5445i), vec2<i32>(-27569i, -5211i), vec2<i32>(-1i, 0i), vec2<i32>(0i, -7121i), vec2<i32>(-1i, 1i), vec2<i32>(0i, 45118i), vec2<i32>(-1i, -14574i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -12756i), vec2<i32>(7249i, -24802i), vec2<i32>(2938i, -26091i), vec2<i32>(41224i, 2147483647i), vec2<i32>(-15728i, -30024i), vec2<i32>(2147483647i, 12456i), vec2<i32>(-20252i, 2423i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(21659i, 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(50688u, 27u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 472f) + arg_1), -669f);
    let var_2 = Struct_1(select(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(u_input.b.x, select(var_0.a.x, u_input.a, arg_2.x), ~0u, ~var_0.a.x)), vec4<u32>(var_0.a.x, u_input.d.x, global0.a.x, global0.a.x), vec4<bool>(arg_1 > _wgslsmith_f_op_f32(round(arg_1)), select(arg_2.x || arg_2.x, arg_2.x, u_input.d.x < u_input.b.x), arg_2.x, !any(arg_2.yz))));
    var var_3 = vec2<bool>(arg_2.x, all(vec4<bool>(false, (arg_1 == var_1.x) & !arg_2.x, !arg_2.x, !all(arg_2.xy))));
    var var_4 = global0.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1, 213f)), _wgslsmith_f_op_f32(max(arg_1, -892f)))), arg_1, (1u << (global0.a.x % 32u)) > _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(global0.a.x, var_2.a.x))))) + arg_1);
}

fn func_4(arg_0: bool) -> u32 {
    let var_0 = u_input.e.x;
    let var_1 = Struct_1(min(min(vec4<u32>(0u & var_0, 0u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 4294967295u, u_input.a), u_input.d)), max(select(global0.a, vec4<u32>(5081u, global0.a.x, u_input.d.x, 2298u), arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, var_0, global0.a.x, global0.a.x), global0.a))), _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(global0.a, global0.a), select(vec4<u32>(var_0, u_input.d.x, 56748u, 984u) | global0.a, min(vec4<u32>(4294967295u, 115u, 4804u, 4294967295u), vec4<u32>(u_input.b.x, var_0, var_0, 26628u)), select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0, false, true, arg_0), false)))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_3 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_2.a.x, var_2.a.x, 33263u) >> (vec4<u32>(4294967295u, u_input.b.x, var_2.a.x, var_1.a.x) % vec4<u32>(32u)), vec4<u32>(34298u, 4294967295u, u_input.b.x, 0u)), ~vec4<u32>(31152u, var_0, var_0, 4294967295u), abs(firstLeadingBit(vec4<u32>(var_2.a.x, 1u, var_2.a.x, 4294967295u)))));
    global0 = Struct_1(vec4<u32>(~u_input.b.x, abs(var_0), ~var_3.a.x >> (1u % 32u), max(0u, var_0)));
    return global0.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global2 = array<vec4<i32>, 1>();
    global4 = array<vec2<i32>, 22>();
    global4 = array<vec2<i32>, 22>();
    let var_0 = Struct_1(vec4<u32>(4294967295u, ~(~(~arg_0.a.x)), arg_0.a.x, ~1797u));
    var var_1 = select(vec2<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))))), vec2<bool>(true, 0i > ~u_input.c), !select(vec2<bool>(false, true), vec2<bool>(true, true), !any(vec4<bool>(false, true, true, true))));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global3 = false;
    let var_0 = global1[_wgslsmith_index_u32(max(arg_0.a.x, 1u), 27u)];
    var var_1 = func_5(Struct_1(var_0.a), global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_3(u_input.c, _wgslsmith_f_op_f32(-215f - 260f), vec3<bool>(true, true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), global4[_wgslsmith_index_u32(u_input.a, 22u)]))) <= 1f), 27u)], global1[_wgslsmith_index_u32(34375u, 27u)]);
    var_1 = firstTrailingBit(arg_0.a.x);
    global4 = array<vec2<i32>, 22>();
    return ~firstLeadingBit(_wgslsmith_dot_vec4_u32(~var_0.a, vec4<u32>(1u >> (1u % 32u), ~26973u, ~0u, reverseBits(global0.a.x))));
}

fn func_6(arg_0: u32, arg_1: f32) -> f32 {
    global1 = array<Struct_1, 27>();
    var var_0 = Struct_1(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(5015u, 58903u, 32899u, u_input.e.x), global0.a, firstLeadingBit(vec4<u32>(1u, 1u, 55537u, 4294967295u)))));
    global0 = Struct_1(abs(abs(vec4<u32>(75771u, 1891u, global0.a.x, var_0.a.x)) & min(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a.x, 4294967295u, 1564u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 44680u)), vec4<u32>(global0.a.x, global0.a.x, 0u, 4294967295u) & vec4<u32>(5106u, arg_0, arg_0, 1u))));
    var var_1 = 70633u ^ u_input.e.x;
    var var_2 = _wgslsmith_add_i32(~1480i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -15285i, _wgslsmith_div_i32(0i, u_input.c)), global4[_wgslsmith_index_u32(40582u, 22u)]), -1i));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -403f) + 226f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-600f, arg_1)), _wgslsmith_div_f32(arg_1, arg_1))))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global2 = array<vec4<i32>, 1>();
    global2 = array<vec4<i32>, 1>();
    var var_0 = _wgslsmith_div_f32(-629f, _wgslsmith_f_op_f32(func_6(_wgslsmith_mod_u32(~reverseBits(0u), 1u | func_2(arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-262f * _wgslsmith_f_op_f32(ceil(-1184f))))))));
    global2 = array<vec4<i32>, 1>();
    global3 = true;
    return vec2<bool>(any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, false))), true)), all(select(vec4<bool>(select(true, true, false), false, any(vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<i32>, 22>();
    var var_0 = func_1(Struct_1(~(vec4<u32>(u_input.b.x, 1u, 20059u, 96316u) ^ ~global0.a)));
    let var_1 = Struct_1(~vec4<u32>(func_5(global1[_wgslsmith_index_u32(58363u << (global0.a.x % 32u), 27u)], global1[_wgslsmith_index_u32(38392u, 27u)], global1[_wgslsmith_index_u32(128821u << (0u % 32u), 27u)]), ~global0.a.x >> (~29679u % 32u), firstTrailingBit(reverseBits(4294967295u)), func_5(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], Struct_1(vec4<u32>(35616u, u_input.d.x, global0.a.x, 47841u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0.a.x), 27u)])));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(abs(~(var_1.a ^ var_1.a)), var_1.a << (countOneBits(vec4<u32>(u_input.a, var_1.a.x, u_input.e.x, 4294967295u) | global0.a) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~1i, _wgslsmith_f_op_f32(f32(-1f) * -337f), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, true), !vec3<bool>(false, true, var_0.x)), ~global4[_wgslsmith_index_u32(u_input.d.x, 22u)] << (firstLeadingBit(vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)))))) + 109f);
    var var_4 = Struct_1(global0.a | abs(var_1.a));
    var_4 = Struct_1(abs(global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.c, 2147483647i));
}

