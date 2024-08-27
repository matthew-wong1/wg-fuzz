struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<u32, 23>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-1i, -21694i), vec4<u32>(1u, 1u, 4294967295u, 1u), vec2<f32>(-1125f, 2413f));

var<private> global3: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = !select(vec2<bool>(true, _wgslsmith_add_i32(1i, u_input.d) > _wgslsmith_clamp_i32(global2.a.x, 2147483647i, arg_1.x)), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !vec2<bool>(true, 71172u == arg_0.b.x));
    global2 = Struct_1(vec2<i32>(arg_0.a.x >> ((u_input.a.x ^ 4294967295u) % 32u), -arg_0.a.x), firstTrailingBit(global2.b), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(var_0.c.x))), global2.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, global2.c.x) * vec2<f32>(arg_0.c.x, 488f)))))));
    global1 = array<u32, 23>();
    global0 = array<vec3<u32>, 1>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.c.x, arg_0.c.x, true)), -1762f))), _wgslsmith_f_op_f32(trunc(-687f)), 1231f) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.c.x)), _wgslsmith_f_op_f32(-839f + global2.c.x), _wgslsmith_f_op_f32(abs(-282f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1730f, 1297f, var_0.c.x), vec3<f32>(-475f, global2.c.x, var_0.c.x), var_1.x)))), vec3<f32>(225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), 1000f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.a, vec4<u32>(arg_2, 4294967295u, 0u, u_input.e), vec2<f32>(arg_3.c.x, 2026f)), ~vec4<i32>(arg_3.a.x, arg_1.a.x, arg_3.a.x, global2.a.x)))))));
    let var_1 = Struct_1(~vec2<i32>(arg_3.a.x, i32(-1i) * -45091i), global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1.c.x))))) - _wgslsmith_f_op_vec2_f32(min(arg_3.c, vec2<f32>(_wgslsmith_f_op_f32(sign(-496f)), arg_1.c.x)))));
    global3 = 4227u;
    global3 = ~(~(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(77877u, global2.b.x), global2.b.xw)) ^ global1[_wgslsmith_index_u32(global2.b.x, 23u)]));
    let var_2 = all(select(vec4<bool>(arg_0.x, arg_0.x, false, select(true, arg_3.b.x < arg_2, arg_0.x)), !select(!vec4<bool>(arg_0.x, false, false, true), !vec4<bool>(arg_0.x, true, arg_0.x, false), true), vec4<bool>(true, true, true, true)));
    return ~_wgslsmith_sub_vec4_u32(~(~arg_1.b), ~abs(_wgslsmith_mod_vec4_u32(arg_1.b, u_input.a)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = Struct_1(vec2<i32>(61394i, global2.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(23834u, 40096u, 31827u, global2.b.x)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b.x, 23u)], global2.b.x, arg_2.b.x, global2.b.x)), ~global2.b)), firstTrailingBit(~vec4<u32>(0u, global1[_wgslsmith_index_u32(14226u, 23u)], 33191u, arg_2.b.x)) & abs(vec4<u32>(u_input.a.x, u_input.e, global1[_wgslsmith_index_u32(19868u, 23u)], 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * arg_2.c.x))), global2.c.x)));
    global1 = array<u32, 23>();
    var var_0 = _wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(abs(vec3<i32>(-1i, -31972i, -2147483647i)))), vec3<i32>(-14242i, -global2.a.x, -3428i) & (-vec3<i32>(global2.a.x, 1i, u_input.b) ^ countOneBits(vec3<i32>(-2730i, global2.a.x, global2.a.x)))) ^ u_input.d;
    var var_1 = arg_2;
    let var_2 = -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, global2.a.x, -1i)), min(-vec4<i32>(-1i, 10541i, var_1.a.x, 1i), ~vec4<i32>(var_1.a.x, 58103i, 3660i, arg_2.a.x)));
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global3 = abs(~(~(~u_input.e)));
    let var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = func_4(arg_1.c.x, all(vec4<bool>(global2.a.x >= 36145i, false, select(select(true, var_0, var_0), var_0, !var_0), var_0)), Struct_1(select(vec2<i32>(0i, 22413i) ^ global2.a, abs(vec2<i32>(37547i, global2.a.x)), !vec2<bool>(var_0, true)) & _wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.x, u_input.d), _wgslsmith_mult_vec2_i32(arg_1.a, vec2<i32>(1i, -49866i))), select(~vec4<u32>(15857u, 11889u, global2.b.x, global2.b.x) ^ func_2(vec2<bool>(false, true), arg_1, global1[_wgslsmith_index_u32(global2.b.x, 23u)], Struct_1(arg_1.a, u_input.a, arg_1.c)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 1u, 9079u, arg_1.b.x), arg_1.b), all(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, true, true, var_0), true))), arg_0.xx));
    let var_2 = _wgslsmith_add_vec4_i32(select(~countOneBits(vec4<i32>(0i, var_1.a.x, 0i, var_1.a.x)), countOneBits(select(vec4<i32>(global2.a.x, arg_1.a.x, var_1.a.x, -82001i), vec4<i32>(16693i, global2.a.x, arg_1.a.x, 1i), false)), false), vec4<i32>(-2147483647i, ~(1874i << (0u % 32u)), ~global2.a.x, -10905i ^ _wgslsmith_sub_i32(global2.a.x, arg_1.a.x))) | (-(firstLeadingBit(vec4<i32>(var_1.a.x, 1i, arg_1.a.x, 30789i)) >> ((arg_1.b ^ vec4<u32>(global2.b.x, arg_1.b.x, 1u, global2.b.x)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-57145i, global2.a.x, 0i, global2.a.x), vec4<i32>(arg_1.a.x, 39922i, arg_1.a.x, 2147483647i)), abs(vec4<i32>(var_1.a.x, -2147483647i, arg_1.a.x, 2902i))), vec4<i32>(~(-2147483647i), -2147483647i, firstTrailingBit(1i), ~arg_1.a.x), vec4<i32>(~1i, ~u_input.d, ~31542i, select(var_1.a.x, var_1.a.x, var_0))));
    global3 = arg_1.b.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x), global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -423f))) * vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_div_f32(global2.c.x, 1413f), _wgslsmith_f_op_f32(-global2.c.x), 697f)), Struct_1(vec2<i32>(-1i, reverseBits(-1i)), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.x, 1306f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-739f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), -307f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-153f - global2.c.x), var_0.c.x))));
    global0 = array<vec3<u32>, 1>();
    var var_2 = 1907f;
    global0 = array<vec3<u32>, 1>();
    var var_3 = Struct_1(-func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -528f, var_1, 555f)), var_0).a, _wgslsmith_div_vec4_u32(func_4(-895f, true, func_4(_wgslsmith_div_f32(-273f, 909f), any(vec2<bool>(false, true)), func_4(var_1, false, var_0))).b, abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 21547u, global2.b.x), u_input.a) << ((u_input.a ^ var_0.b) % vec4<u32>(32u)))), vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_4 = vec2<i32>(u_input.d, global2.a.x >> (4294967295u % 32u));
    let var_5 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + var_3.c.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), Struct_1(-vec2<i32>(firstTrailingBit(31832i), var_4.x), _wgslsmith_add_vec4_u32(vec4<u32>(325u, global1[_wgslsmith_index_u32(1u, 23u)], 1u, global2.b.x) | vec4<u32>(4294967295u, 120904u, 5812u, 79296u), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), false), var_0, _wgslsmith_add_u32(global2.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 23u)]), func_1(vec4<f32>(var_3.c.x, -1000f, var_0.c.x, var_3.c.x), var_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_3.c.x)) - var_3.c), global2.c, all(vec2<bool>(true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1017f), vec3<f32>(var_5.c.x, _wgslsmith_f_op_f32(-1064f - _wgslsmith_div_f32(-928f, 705f)), _wgslsmith_f_op_vec3_f32(func_3(var_5, ~vec4<i32>(var_5.a.x, -1i, global2.a.x, global2.a.x))).x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, var_3.c.x, -1000f, -333f), vec4<f32>(var_1, var_1, var_3.c.x, 791f))), vec4<f32>(-138f, var_5.c.x, var_0.c.x, -205f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(265f, var_5.c.x, 1944f, -1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-363f, var_5.c.x, var_5.c.x, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, 646f, var_5.c.x, -760f) + vec4<f32>(943f, var_3.c.x, var_0.c.x, -797f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -272f, -1495f, -255f) - vec4<f32>(363f, var_3.c.x, 199f, var_5.c.x)))), all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)))), ~vec4<i32>(-22053i, -13540i, -44751i, -2147483647i));
}

