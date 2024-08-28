struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.b.x, -2147483647i, -31660i), vec4<i32>(-u_input.b.x, -1i, u_input.c, _wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.b.xy)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, u_input.e.x, u_input.e.x), u_input.e), ~u_input.a.x, u_input.e.x), true);
    var_0 = reverseBits(1u);
    var var_2 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(885f, -104f)))))), _wgslsmith_f_op_f32(-arg_0), 1768f);
    var var_3 = -1000f;
    return !all(vec2<bool>(any(select(vec2<bool>(false, var_1.c), vec2<bool>(false, var_1.c), vec2<bool>(false, var_1.c))), all(!vec4<bool>(true, true, true, var_1.c))));
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(vec4<bool>(true & select(true, true, false), u_input.e.x > 1u, !any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(53430u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(15061u, 4294967295u, u_input.a.x, 1u)) != 10290u, !func_3(-457f), all(vec2<bool>(true, true)), true)), !vec4<bool>(any(vec2<bool>(true, true)) && true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true), !(!select(all(vec4<bool>(false, true, false, false)), true, true)));
    global0 = array<vec3<u32>, 24>();
    let var_1 = ~(~(u_input.e.x << (~(~37991u) % 32u)));
    var var_2 = -503f;
    let var_3 = any(vec2<bool>(!var_0.x, 1i <= ((i32(-1i) * -1i) >> (~var_1 % 32u))));
    return Struct_3(false);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec2<f32> {
    global0 = array<vec3<u32>, 24>();
    let var_0 = func_2();
    let var_1 = !select(!select(vec3<bool>(var_0.a, true, arg_0.x), !vec3<bool>(false, true, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, false, false), vec3<bool>(var_0.a, arg_0.x, false))), vec3<bool>((true && var_0.a) | !arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, var_0.a, false));
    global0 = array<vec3<u32>, 24>();
    let var_2 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(arg_1.zy, u_input.d.wx), arg_1.xy, select(!var_1.yz, !vec2<bool>(true, var_1.x), !var_1.yz)), vec2<i32>(select(arg_1.x, _wgslsmith_sub_i32(-arg_1.x, arg_1.x), u_input.b.x <= u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.b.xyw, vec3<i32>(arg_1.x, u_input.b.x, -15372i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-985f, 241f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, 1211f) - vec2<f32>(-1434f, -1367f)))) + vec2<f32>(-1121f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-247f, 425f)))));
}

fn func_4(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_4(u_input.d, ~select(_wgslsmith_sub_vec3_u32(u_input.e.zyw, vec3<u32>(u_input.e.x, u_input.e.x, 1u)), vec3<u32>(u_input.a.x, 4294967295u, u_input.e.x) << (vec3<u32>(33386u, u_input.a.x, u_input.e.x) % vec3<u32>(32u)), true) ^ (u_input.e.ywz << (global0[_wgslsmith_index_u32(select(~u_input.a.x, u_input.e.x, true), 24u)] % vec3<u32>(32u))), true);
    global0 = array<vec3<u32>, 24>();
    var var_1 = abs(vec4<i32>(1i, 0i, u_input.b.x, firstTrailingBit(min(3837i, u_input.b.x)))) & min(vec4<i32>(var_0.a.x, 1i >> (~u_input.e.x % 32u), 10111i ^ var_0.a.x, var_0.a.x ^ reverseBits(var_0.a.x)), u_input.d);
    let var_2 = Struct_1(var_0.c, all(!vec3<bool>(var_0.c, var_0.c, any(vec2<bool>(false, var_0.c)))), vec2<bool>(var_0.c, (_wgslsmith_f_op_f32(sign(-1285f)) <= _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) && var_0.c), var_1.x);
    var_1 = u_input.d;
    return select(vec3<bool>(all(!select(vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.c, var_0.c, false), false)), func_3(_wgslsmith_f_op_f32(-518f * _wgslsmith_f_op_f32(arg_0.x + -156f))), true), select(select(select(!vec3<bool>(var_0.c, true, true), !vec3<bool>(true, var_2.a, false), true), !select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.c, false, var_2.a), var_0.c), !vec3<bool>(false, var_0.c, false)), vec3<bool>(true, any(select(vec4<bool>(var_0.c, var_0.c, var_2.c.x, var_0.c), vec4<bool>(true, false, var_0.c, var_2.b), var_2.b)), var_0.c), vec3<bool>(func_2().a, true == !var_0.c, false)), !select(!vec3<bool>(false, true, var_2.c.x), vec3<bool>(true, false, var_0.c & false), select(!vec3<bool>(true, false, var_2.a), select(vec3<bool>(var_0.c, var_0.c, var_2.b), vec3<bool>(true, var_0.c, true), true), arg_0.x <= arg_0.x)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    let var_0 = ~u_input.d.yz;
    var var_1 = Struct_4(vec4<i32>(u_input.b.x, 0i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x, ~var_0.x), 1i), var_0.x), ~(~_wgslsmith_clamp_vec3_u32(~u_input.e.yxw, abs(global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_mult_vec3_u32(u_input.e.wwz, vec3<u32>(u_input.a.x, u_input.e.x, u_input.e.x)))), arg_0 & false);
    var var_2 = arg_2;
    return Struct_3(!(!any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    var var_0 = false;
    var var_1 = func_5(!any(func_4(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, true), vec4<i32>(1i, u_input.d.x, -1i, 25091i))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1039f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1675f)) + _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2102f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1348f, 246f, 1217f), vec3<f32>(-119f, -1000f, 847f), false)) * vec3<f32>(806f, -810f, -1419f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f + -403f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1438f, _wgslsmith_f_op_f32(min(1820f, 1200f)), _wgslsmith_div_f32(-496f, 804f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(525f, -189f, -183f) + vec3<f32>(-398f, -165f, -764f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 704f) - 274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1484f, 1815f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(328f, 1082f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 35099u), u_input.a)), ~vec2<u32>(1u, 61797u)), -vec3<i32>(-35345i, 1i, -53583i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 1903f, 1740f, 416f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-154f, -413f, -697f, -298f), vec4<f32>(1646f, 1000f, -1000f, -333f), var_1.a)))))), -2147483647i, 102980u);
}

