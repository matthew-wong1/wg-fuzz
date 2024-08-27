struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(4294967295u, 0u, 0u, 1u, 22363u);

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(1u, 26423u, 72145u), vec3<u32>(91015u, 20142u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(25765u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(59870u, 4294967295u, 0u), vec3<u32>(1u, 1u, 2797u), vec3<u32>(2146u, 0u, 0u), vec3<u32>(0u, 4294967295u, 39744u), vec3<u32>(85842u, 14378u, 1u), vec3<u32>(4294967295u, 27105u, 4294967295u), vec3<u32>(0u, 1u, 1u));

var<private> global2: array<vec4<bool>, 14>;

var<private> global3: vec4<i32> = vec4<i32>(2429i, i32(-2147483648), 2147483647i, -25568i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(!vec3<bool>(true, true, select(all(vec2<bool>(false, false)), false, true)), u_input.a.x < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~min(u_input.b.x, 1u), 5u)], 5u)]);
    global3 = firstLeadingBit(-vec4<i32>(global3.x, reverseBits(global3.x), firstLeadingBit(~global3.x), global3.x));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(473f, -833f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1154f, -303f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1810f, 884f)))), 1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 5u)], 89385u), global0[_wgslsmith_index_u32(min(~u_input.b.x, u_input.b.x), 5u)]), 4294967295u));
    global2 = array<vec4<bool>, 14>();
    var var_2 = Struct_2(select(var_0.a, vec3<bool>(!var_0.b, false, false), select(vec3<bool>(var_0.b, any(global2[_wgslsmith_index_u32(0u, 14u)]), any(var_0.a)), select(vec3<bool>(var_0.a.x, false, var_0.b), vec3<bool>(false, false, var_0.a.x), true || var_0.b), !var_0.a)), true);
    return select(var_2.a, !select(var_0.a, var_2.a, !select(var_0.a, vec3<bool>(false, var_2.a.x, var_2.b), var_2.a)), true);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> f32 {
    global3 = ~_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(global3.x, global3.x, global3.x, global3.x), -vec4<i32>(0i, global3.x, 0i, global3.x)), -firstLeadingBit(vec4<i32>(26022i, global3.x, global3.x, 2147483647i) ^ vec4<i32>(global3.x, -1i, -1i, global3.x)));
    global0 = array<u32, 5>();
    let var_0 = -425f;
    global0 = array<u32, 5>();
    var var_1 = Struct_2(func_3(), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-890f, _wgslsmith_f_op_f32(floor(1853f)), all(select(global2[_wgslsmith_index_u32(65239u, 14u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 5u)], 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)]))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-211f, -1000f)) * -1248f) + _wgslsmith_f_op_f32(f32(-1f) * -779f)), 1494f)));
    var_0 = _wgslsmith_f_op_f32(func_2(Struct_2(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), true), true), _wgslsmith_sub_u32(73074u, 44130u), any(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true))));
    global2 = array<vec4<bool>, 14>();
    global0 = array<u32, 5>();
    let var_1 = 40239u > _wgslsmith_mod_u32(~(~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 5u)], 5u)])), vec2<u32>(_wgslsmith_mult_u32(21884u, u_input.a.x), abs(1u))));
    return Struct_2(select(select(!(!vec3<bool>(var_1, false, true)), func_3(), any(select(vec2<bool>(true, var_1), vec2<bool>(var_1, false), vec2<bool>(true, var_1)))), vec3<bool>(true, true, true), !(!func_3().x)), any(vec2<bool>(all(vec3<bool>(true, var_1, false)) | (var_1 && false), true)));
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1026f, -1361f, -171f, 684f) + vec4<f32>(-1156f, 793f, -434f, -1432f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(249f, 207f, 590f, -564f), vec4<f32>(665f, -213f, -532f, 1027f), vec4<bool>(arg_0.b, arg_0.a.x, arg_0.b, arg_0.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, 392f, 1528f, 1184f))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-671f, -833f, 228f, 532f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, -923f, 889f, 875f) + vec4<f32>(1851f, 1000f, -944f, 765f))))))), u_input.b.x, max(_wgslsmith_div_u32(43714u, _wgslsmith_mod_u32(firstLeadingBit(11102u), global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 5u)])), 63478u & (32092u ^ ~global0[_wgslsmith_index_u32(4294967295u, 5u)])));
    global2 = array<vec4<bool>, 14>();
    var var_1 = Struct_1(var_0.a.x, arg_0.b, vec2<i32>(countOneBits(global3.x ^ -2147483647i), _wgslsmith_add_i32(1i, global3.x | global3.x)) >> (~u_input.b.yy % vec2<u32>(32u)), reverseBits(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.c, var_0.b))), 0u, ~var_0.c)), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~global3.wxy, vec3<i32>(-1i, global3.x, global3.x)), -13256i), 0i));
    global1 = array<vec3<u32>, 12>();
    var_1 = Struct_1(-1818f, true, var_1.c, vec3<u32>(global0[_wgslsmith_index_u32(max(~var_1.d.x, abs(global0[_wgslsmith_index_u32(36282u, 5u)])) ^ ~var_0.b, 5u)], min(global0[_wgslsmith_index_u32(1u | (var_0.b | 1u), 5u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(13508u, 72608u), vec2<u32>(var_1.d.x, 0u))), 4294967295u), -(_wgslsmith_mult_i32(-1i, var_1.c.x) | global3.x) ^ select(-46749i, global3.x, abs(-1i) > global3.x));
    return select(select(!select(vec3<bool>(false, var_1.b, arg_0.b), !arg_0.a, arg_0.a.x), vec3<bool>(arg_0.a.x, ~7638u == global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_0.c, 5u)], var_1.d.x), 5u)], false), arg_0.a), select(select(select(vec3<bool>(var_1.b, true, false), !arg_0.a, false), arg_0.a, true), select(vec3<bool>(true, any(vec2<bool>(true, true)), !var_1.b), select(arg_0.a, select(vec3<bool>(var_1.b, arg_0.b, false), arg_0.a, true), select(arg_0.a, arg_0.a, arg_0.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, global3.x, var_1.c.x, global3.x), vec4<i32>(-2147483647i, global3.x, -48972i, global3.x)) > -2147483647i), !(!var_1.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 353f;
    global1 = array<vec3<u32>, 12>();
    var var_1 = select(!vec3<bool>(all(vec2<bool>(true, true)), !select(false, true, false), !any(global2[_wgslsmith_index_u32(4294967295u, 14u)])), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, 2783i <= global3.x), func_4(func_1())), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1953u, 5u)] > 1815u, true)));
    var var_2 = vec4<bool>(false, var_1.x, true, false);
    var_1 = vec3<bool>(false, !var_2.x, all(vec4<bool>(any(func_3()), (-25138i << (0u % 32u)) == global3.x, false, !(u_input.b.x == 4294967295u))));
    var var_3 = global3.x & -2147483647i;
    global2 = array<vec4<bool>, 14>();
    var var_4 = u_input.b.x | 10837u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(global3.x, ~global3.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(global3.wz), global3.zx), firstLeadingBit(~1i))));
}

