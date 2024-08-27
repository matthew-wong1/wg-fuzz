struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<f32, 27>;

var<private> global3: vec3<u32> = vec3<u32>(75629u, 0u, 1u);

var<private> global4: array<vec2<i32>, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_3.a, reverseBits(abs(~arg_2.b.x)));
    var var_1 = Struct_3(~arg_2.c, 1f, arg_3);
    var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(104241u, 50969u >> (u_input.a.x % 32u)) >= 1u, vec2<u32>(35198u, var_1.a.x), _wgslsmith_sub_vec4_u32(var_1.a >> (~vec4<u32>(var_1.a.x, 0u, arg_3.b, 14372u) % vec4<u32>(32u)), var_0.a.c), var_0.a.d), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_2.c.xz >> (arg_2.c.wz % vec2<u32>(32u)), ~arg_2.b), abs(4294967295u))));
    let var_2 = firstLeadingBit(vec2<i32>(var_1.c.a.d.x, _wgslsmith_dot_vec2_i32(arg_3.a.d.yx, ~(arg_3.a.d.xy ^ vec2<i32>(var_1.c.a.d.x, -4093i)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, 1025f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, arg_0, -1000f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(85346u, 27u)], var_1.b, 291f, -115f), vec4<f32>(-948f, -879f, arg_0, arg_0)))), vec4<bool>(false, true, true, any(vec3<bool>(var_1.c.a.a, false, var_1.c.a.a))))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(~select(arg_3.a.b.x, arg_1.c.x, arg_2.a), 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-216f + -1372f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(~var_1.c.a.c.x, 27u)])), var_1.b)))));
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> bool {
    global2 = array<f32, 27>();
    global4 = array<vec2<i32>, 10>();
    let var_0 = Struct_1(true, max(vec2<u32>(~arg_2.x >> (reverseBits(0u) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 119765u, 33838u), u_input.a), 6025u)), ~(~u_input.a.yz)), arg_2, vec4<i32>(-(~(-1i)), arg_0, 39783i, -_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(~21141u, 10u)], global4[_wgslsmith_index_u32(func_3(1174f, Struct_1(false, u_input.a.yx, vec4<u32>(4294967295u, global3.x, global3.x, 41256u), vec4<i32>(arg_0, -1i, arg_0, arg_0)), Struct_1(false, global3.xx, arg_2, vec4<i32>(-1i, arg_0, arg_0, arg_0)), Struct_2(Struct_1(true, vec2<u32>(u_input.a.x, global3.x), vec4<u32>(0u, arg_2.x, u_input.a.x, global3.x), vec4<i32>(arg_0, arg_0, 0i, arg_0)), u_input.a.x)), 10u)])));
    let var_1 = !var_0.a;
    global4 = array<vec2<i32>, 10>();
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    global2 = array<f32, 27>();
    var var_0 = global2[_wgslsmith_index_u32(arg_1.x, 27u)];
    var var_1 = !vec2<bool>(!all(!vec2<bool>(false, arg_0)), !(!any(vec4<bool>(true, arg_0, arg_0, true))));
    var var_2 = global4[_wgslsmith_index_u32(arg_1.x, 10u)] ^ global4[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(~arg_1 << (~vec4<u32>(0u, 0u, 20967u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(26069u, 0u, u_input.a.x, 4294967295u))), ~arg_1.x), 10u)];
    var var_3 = vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~firstTrailingBit(7910u) ^ (~global3.x << (arg_1.x % 32u)), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, -1148f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(660f, _wgslsmith_f_op_f32(-620f + -148f))))));
    return select(-var_2.x, _wgslsmith_mult_i32(~var_2.x, -var_2.x), ((false == any(vec2<bool>(var_1.x, arg_0))) || func_2(7006i << (global3.x % 32u), _wgslsmith_div_f32(-412f, var_3.x), ~arg_1)) && var_1.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    global0 = true;
    var var_0 = any(!select(vec3<bool>(all(vec2<bool>(arg_1.c.a.a, arg_1.c.a.a)), all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(72293u, 27u)] == arg_1.b), !select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1.c.a.a, arg_1.c.a.a), arg_1.c.a.a), arg_1.c.a.a));
    global4 = array<vec2<i32>, 10>();
    global0 = any(!select(vec2<bool>(true, true), vec2<bool>(arg_1.c.a.a, true), vec2<bool>(true, true)));
    let var_1 = Struct_3(vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~arg_1.c.a.b.x, abs(select(36512u, ~41711u, arg_1.c.a.a | arg_1.c.a.a)), arg_1.a.x), _wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(ceil(-750f))))), Struct_2(arg_1.c.a, ~(~_wgslsmith_clamp_u32(u_input.a.x, 24823u, 39403u))));
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 27>();
    let var_0 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), i32(-1i) * -8676i), 2147483647i, ~(~1i), ~(~2147483647i)), ~vec4<i32>(1i, func_1(false, vec4<u32>(0u, u_input.a.x, 4294967295u, 0u), -713f), 1i, _wgslsmith_mod_i32(-38388i, 2147483647i))), Struct_3(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(58268u, u_input.a.x, global3.x, global3.x), vec4<u32>(1u, 24148u, global3.x, 1u), vec4<u32>(34516u, 17210u, u_input.a.x, global3.x))), -680f, Struct_2(Struct_1(true, vec2<u32>(u_input.a.x, global3.x), vec4<u32>(u_input.a.x, 27044u, 26795u, 9167u) & vec4<u32>(4294967295u, global3.x, u_input.a.x, 47468u), vec4<i32>(2147483647i, 2147483647i, -5174i, 12526i)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(6008u, u_input.a.x, global3.x)), u_input.a & u_input.a))), _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 28735u, u_input.a.x, u_input.a.x)), ~(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 84985u)))));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, ~94540u, var_0.c.x, ~global3.x), var_0.c), var_0.c), -411f, Struct_2(Struct_1(false, vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_0.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.c.x), var_0.b)), var_0.c, (vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, 0i) | var_0.d) & vec4<i32>(var_0.d.x, 2147483647i, -1i, -5305i)), global3.x));
    var var_2 = Struct_1(var_1.c.a.a, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~u_input.a.x, 38396u), global3.x), ~(~abs(var_1.a.yz))), vec4<u32>(1u, global3.x, global3.x, firstLeadingBit(~_wgslsmith_add_u32(42132u, var_0.b.x))), vec4<i32>(abs(_wgslsmith_mult_i32(var_0.d.x & -2672i, abs(0i))), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -33152i), -1i), i32(-1i) * -70730i, var_0.d.x));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f) - _wgslsmith_f_op_f32(floor(1321f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * 1000f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-688f, global2[_wgslsmith_index_u32(var_0.c.x, 27u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(58526u, 27u)], 378f) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 248f)), func_4(2147483647i, Struct_3(var_3.c.a.c, global2[_wgslsmith_index_u32(1u, 27u)], var_3.c), vec4<u32>(13199u, 27744u, 1u, 2765u)).a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.b, 678f), vec2<f32>(-429f, 157f))))))), vec4<u32>(firstTrailingBit(20727u), _wgslsmith_mod_u32(var_2.b.x, min(firstTrailingBit(0u), ~1u)), var_2.c.x, 31388u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) + _wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-608f)))))), _wgslsmith_f_op_f32(ceil(1000f)), vec4<i32>(-(_wgslsmith_sub_i32(-1i, -1i) | ~var_3.c.a.d.x), (_wgslsmith_add_i32(var_1.c.a.d.x, var_0.d.x) >> (~var_1.c.a.b.x % 32u)) << (51650u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.a.d.x, -1i, var_2.d.x) | var_3.c.a.d.wxz, countOneBits(vec3<i32>(var_0.d.x, 46464i, var_3.c.a.d.x))), _wgslsmith_add_i32(func_4(var_0.d.x, var_1, min(vec4<u32>(41187u, global3.x, 0u, var_1.c.b), vec4<u32>(89942u, 375u, 812u, 5912u))).d.x, ~_wgslsmith_add_i32(-7818i, var_1.c.a.d.x))));
}

