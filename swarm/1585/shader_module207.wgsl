struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(0i, 0i, 15389i, 56269i, -16911i, i32(-2147483648));

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-846f + -491f), _wgslsmith_f_op_f32(958f + 497f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(-1580f - -2344f)) + _wgslsmith_f_op_f32(f32(-1f) * -1154f)), _wgslsmith_f_op_f32(trunc(1f))));
    global0 = array<i32, 6>();
    let var_1 = any(select(vec2<bool>(false, false), select(vec2<bool>(arg_0.a.x, all(vec4<bool>(true, false, arg_0.a.x, false))), vec2<bool>(true, true), _wgslsmith_div_u32(u_input.a, 29521u) >= 1u), any(select(select(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), arg_0.a.x), vec4<bool>(false, false, true, false), arg_0.a.x))));
    var var_2 = arg_0;
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(29603u, arg_3.x, 20381u), vec3<u32>(arg_1, u_input.a, arg_1))), firstLeadingBit(vec3<u32>(0u, 0u, arg_3.x))) & ~4294967295u), 5u)];
    return select(!select(select(vec2<bool>(true, true), var_2.a, vec2<bool>(var_3.c.a.x, true)), select(vec2<bool>(true, var_2.a.x), vec2<bool>(true, false), u_input.e.x >= u_input.c), ~u_input.e.x != 1i), select(arg_0.a, vec2<bool>(!(var_2.a.x || false), var_3.e.a.x), vec2<bool>(arg_0.a.x, all(!vec3<bool>(var_3.a.a.x, false, true)))), all(vec3<bool>(arg_0.a.x, select(arg_0.a.x, !var_1, true), any(vec4<bool>(arg_0.a.x, false, true, arg_0.a.x)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> vec4<bool> {
    global1 = array<Struct_3, 5>();
    let var_0 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false))), any(vec2<bool>(false, false))), vec2<bool>(!all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(func_3(Struct_1(vec2<bool>(true, false)), 19812u, 20702u, vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(false, false, false)), select(false, true, true)))));
    var var_1 = Struct_1(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_0, var_0)), select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), select(false, var_0, var_0)), vec2<bool>(var_0, var_0), -1i != (_wgslsmith_dot_vec3_i32(vec3<i32>(17397i, 38593i, arg_0), vec3<i32>(8751i, arg_1.x, -1i)) & max(u_input.c, u_input.c))));
    var var_2 = global1[_wgslsmith_index_u32(min(9757u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, u_input.a)), 14642u), ~firstLeadingBit(u_input.d), 10809u)), 5u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b - _wgslsmith_f_op_vec2_f32(abs(var_2.b))))));
    return !(!(!vec4<bool>(true, all(vec4<bool>(false, var_1.a.x, false, var_2.c.a.x)), -1642f < var_2.b.x, true)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = -1i;
    global2 = array<vec3<i32>, 27>();
    let var_1 = !func_2(u_input.c, select(u_input.e.zy << ((vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(55878u, 4294967295u)) % vec2<u32>(32u)), -vec2<i32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 6u)]), select(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(false, true), arg_0.a), vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.x)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.e.x, u_input.c) | (vec3<i32>(-21956i, 28977i, -1i) ^ u_input.e), _wgslsmith_mult_vec3_i32(~global2[_wgslsmith_index_u32(0u, 27u)], -u_input.e) ^ _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 6u)], 42863i)), _wgslsmith_div_vec3_i32(u_input.e, u_input.e))), firstTrailingBit(2147483647i), 2147483647i);
    global0 = array<i32, 6>();
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 5>();
    let var_0 = -(~vec3<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~u_input.a, 6u)], ~global0[_wgslsmith_index_u32(u_input.b, 6u)], 2147483647i), global0[_wgslsmith_index_u32(1u, 6u)], u_input.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-262f - 339f), _wgslsmith_f_op_f32(-102f - -213f), _wgslsmith_f_op_f32(-1100f - -1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, 1000f, -1139f) - vec3<f32>(276f, -1373f, -1189f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-550f, -322f, 1036f), vec3<f32>(1054f, -1636f, -1298f), vec3<bool>(false, true, false))), all(vec4<bool>(false, true, true, true)))), vec3<bool>(false, true, func_1(Struct_1(vec2<bool>(false, true)))))) - vec3<f32>(-223f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(720f, 229f)), _wgslsmith_f_op_f32(ceil(-480f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(556f)) * -1601f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-472f, 662f, 898f), vec3<f32>(-1026f, 295f, 911f), vec3<bool>(false, true, false)))))))));
    let var_2 = !(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true)));
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-17698i, u_input.e.x, -12960i, u_input.e.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], 16205i, var_0.x) | vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], -1i, 2147483647i, -22636i)), max(vec4<i32>(78342i, -4871i, global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.e.x) | vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], -11245i, -1i, 28835i), ~vec4<i32>(var_0.x, -1i, u_input.c, 0i))), vec4<i32>(-1i) * -(~vec4<i32>(-34709i, -24082i, global0[_wgslsmith_index_u32(u_input.d, 6u)], var_0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, -18987i, global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<i32>(global0[_wgslsmith_index_u32(37397u, 6u)], 0i, global0[_wgslsmith_index_u32(0u, 6u)], u_input.e.x)), select(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(82815u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 0i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 6u)], 4336i, u_input.e.x), false)), vec4<i32>(-global0[_wgslsmith_index_u32(0u, 6u)], max(global0[_wgslsmith_index_u32(u_input.a, 6u)], u_input.c), _wgslsmith_mod_i32(var_0.x, 1i), -25017i), vec4<i32>(_wgslsmith_div_i32(u_input.e.x, global0[_wgslsmith_index_u32(u_input.a, 6u)]), var_0.x, u_input.e.x >> (40887u % 32u), -2147483647i >> (u_input.a % 32u)))));
    let var_4 = Struct_2(u_input.a, Struct_1(func_2(var_0.x & reverseBits(-28843i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 12518i), vec2<i32>(-2147483647i, 0i)), countOneBits(var_3.xy), u_input.e.yz)).xy), Struct_1(func_3(Struct_1(select(vec2<bool>(false, var_2), vec2<bool>(true, true), vec2<bool>(var_2, var_2))), max(min(9696u, 1u), u_input.d), u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(2162u, 74319u), vec2<u32>(u_input.a, u_input.d) & vec2<u32>(4294967295u, 28333u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(553f)), _wgslsmith_f_op_f32(round(var_1.x)))))))), _wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.d, u_input.a, var_2), u_input.a, u_input.b), vec3<u32>(max(23899u, 48149u), reverseBits(u_input.b), firstTrailingBit(28504u))) & u_input.a);
    global1 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(select(min(~vec2<u32>(4294967295u, 0u), firstTrailingBit(~vec2<u32>(14885u, 27121u))), ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(44792u, 1u), vec2<u32>(var_4.e, 75714u), true), vec2<u32>(4294967295u, u_input.a)), all(!vec3<bool>(true, var_4.c.a.x, false))));
}

