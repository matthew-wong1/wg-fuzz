struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: f32;

var<private> global2: array<f32, 7> = array<f32, 7>(-165f, 441f, 2652f, -1000f, 3074f, 128f, 1445f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec3<f32> {
    let var_0 = arg_1.b;
    global0 = array<vec4<u32>, 19>();
    var var_1 = var_0;
    let var_2 = arg_1;
    global2 = array<f32, 7>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1661f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1605f, arg_1.a.a.x) - _wgslsmith_f_op_f32(sign(1336f)))), _wgslsmith_f_op_f32(var_1.e.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.a.x * var_0.b.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, -896f, -470f)), var_1.e.a))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(29765u, 7u)]) * -1695f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(30044u, 7u)] * global2[_wgslsmith_index_u32(u_input.a, 7u)]) + -519f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~17381u, Struct_5(Struct_1(vec3<f32>(-1218f, global2[_wgslsmith_index_u32(u_input.a, 7u)], -1616f), vec3<i32>(36999i, u_input.b.x, 2147483647i)), Struct_2(-54275i, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(4221u, 7u)], global2[_wgslsmith_index_u32(96713u, 7u)]), vec3<i32>(31233i, u_input.b.x, u_input.b.x)), u_input.b.zzy, u_input.b.x, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(28075u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], 218f), u_input.b.zzw)))))))), _wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.b.x, max(u_input.b.x, u_input.b.x)), firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, 51521i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.xzy)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -37668i), _wgslsmith_add_vec2_i32(u_input.b.xw, vec2<i32>(56200i, -2147483647i))), u_input.b.x ^ 32594i)));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(u_input.a, 19u)]);
    var_0 = Struct_1(vec3<f32>(363f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 7u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(343f)) + _wgslsmith_f_op_f32(870f * 275f))), var_0.a.x), ~(-u_input.b.wxx));
    var_1 = Struct_3(abs(global0[_wgslsmith_index_u32(1u, 19u)]));
    var_0 = Struct_1(var_0.a, vec3<i32>(u_input.b.x, -1i, -459i));
    return select(vec4<bool>(18593u < _wgslsmith_clamp_u32(_wgslsmith_mod_u32(51672u, 33340u), ~var_1.a.x, var_1.a.x & u_input.a), abs(max(1i, u_input.b.x)) == ((var_0.b.x >> (u_input.a % 32u)) >> (abs(15115u) % 32u)), !(-47479i >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zy)), true), vec4<bool>(false, true, select(!(u_input.b.x >= 1i), true, false), false), vec4<bool>(true, true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), true)), !(!all(vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    global2 = array<f32, 7>();
    global0 = array<vec4<u32>, 19>();
    var var_0 = !(!vec3<bool>(all(vec2<bool>(true, true)), true, true));
    let var_1 = !select(func_2(), func_2(), any(select(func_2().wx, select(var_0.zy, vec2<bool>(false, var_0.x), var_0.x), func_2().xx)));
    var var_2 = vec2<f32>(897f, arg_1.a.x);
    return _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 15862u, u_input.a, ~1u), vec4<u32>(u_input.a, u_input.a, 3080u & u_input.a, u_input.a), vec4<u32>(~105952u, 1u, ~u_input.a, 0u)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a, 5896u, u_input.a, u_input.a) ^ global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<u32>(15990u, 0u, 1u, ~u_input.a))), vec4<u32>(~reverseBits(~1u), 0u, u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(min((10433u << (u_input.a % 32u)) ^ u_input.a, u_input.a), 19u)]), ((min(vec4<u32>(u_input.a, 12140u, 15549u, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u)) | firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) ^ func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), Struct_1(vec3<f32>(1911f, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<i32>(-60286i, 51152i, -8047i)))) & ~min(vec4<u32>(u_input.a, 1u, 10012u, 25201u), func_1(vec2<f32>(global2[_wgslsmith_index_u32(31360u, 7u)], global2[_wgslsmith_index_u32(80084u, 7u)]), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(21765u, 7u)], -1240f, global2[_wgslsmith_index_u32(22225u, 7u)]), u_input.b.xwz))));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~12223u, 7u)])) - _wgslsmith_div_f32(2330f, 580f)) >= global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a & u_input.a, firstLeadingBit(u_input.a)), 7u)], false);
    var var_3 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u << (1u % 32u), countOneBits(85538u)), ~_wgslsmith_sub_u32(u_input.a, 50877u)), 1u);
    var var_4 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 7u)], 1150f, global2[_wgslsmith_index_u32(27379u, 7u)])))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b.x, 45783i), u_input.b.wxz), _wgslsmith_add_vec3_i32(u_input.b.zww, vec3<i32>(-9174i, u_input.b.x, u_input.b.x)))), Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(457f, 695f, global2[_wgslsmith_index_u32(u_input.a, 7u)]))), firstLeadingBit(u_input.b.wyy)), u_input.b.zww, _wgslsmith_add_i32(u_input.b.x & u_input.b.x, 0i) >> (0u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 7u)], 1019f, global2[_wgslsmith_index_u32(81656u, 7u)]) * vec3<f32>(-2081f, global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(34266u, 7u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, -858f, global2[_wgslsmith_index_u32(4294967295u, 7u)]))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 19417i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)) << (~vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)))));
    var var_5 = select(var_2.x != true, any(!func_2().zw), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(31950u);
}

