struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = true;
    global0 = array<vec2<bool>, 3>();
    global0 = array<vec2<bool>, 3>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -811f)), _wgslsmith_f_op_vec2_f32(sign(global1.a)))))), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, global1.b.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(18950i, global1.b.x), global1.c.wx), u_input.b.x, global1.b.x)) & _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(global1.b, u_input.c.yx) & vec2<i32>(-1i, u_input.c.x), -vec2<i32>(u_input.b.x, u_input.d)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, -41430i, u_input.b.x) | vec4<i32>(26611i, 7350i, global1.c.x, 17820i), vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.d), var_0), -reverseBits(vec4<i32>(-19913i, u_input.b.x, u_input.c.x, -1i))) ^ _wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(-96716i, -28506i, u_input.d, global1.b.x))), _wgslsmith_mod_vec4_i32(global1.c, global1.c)));
    let var_2 = !var_0 && !(!any(select(global0[_wgslsmith_index_u32(38352u, 3u)], vec2<bool>(var_0, false), global0[_wgslsmith_index_u32(39543u, 3u)])));
    return var_0;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(u_input.a, Struct_2(func_3(u_input.a), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-957f)), _wgslsmith_f_op_f32(global1.a.x * -465f)), vec3<bool>(false, u_input.c.x == -1i, true), (u_input.a <= u_input.a) || true, vec2<bool>(true, true)), Struct_1(global1.a.x, vec3<bool>(true, true, true), true, !global0[_wgslsmith_index_u32(~1u, 3u)]), Struct_1(558f, vec3<bool>(true, true, true), false, vec2<bool>(true, true)), firstLeadingBit(min(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 11576u) ^ vec3<u32>(u_input.a, 5899u, u_input.a)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global1.a.x)));
    let var_1 = ~(~(vec4<i32>(-1i) * -vec4<i32>(10517i, -2147483647i, u_input.b.x, 21063i)) | global1.c);
    var var_2 = !select(vec2<bool>(all(select(vec4<bool>(var_0.b.c.b.x, var_0.b.b.b.x, var_0.b.a, var_0.b.a), vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.b.d.d.x, false, var_0.b.d.c))), !(u_input.a >= 87917u)), select(!vec2<bool>(var_0.b.a, true), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(u_input.a, 3u)]), global0[_wgslsmith_index_u32(u_input.a, 3u)]);
    var var_3 = Struct_5(u_input.a, Struct_2(!(var_2.x && var_2.x) && var_0.b.a, var_0.b.c, var_0.b.b, Struct_1(global1.a.x, !var_0.b.b.b, var_2.x && true, vec2<bool>(true, any(vec3<bool>(false, var_0.b.c.c, false)))), firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(u_input.a, 41542u), min(u_input.a, 43189u), u_input.a))), global1.a.x);
    var_2 = vec2<bool>(true, true);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-616f))) < -235f, var_3.b.d, var_0.b.d, Struct_1(global1.a.x, var_3.b.c.b, all(vec2<bool>(false, false)), var_0.b.d.b.xy), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~u_input.a), u_input.a, u_input.a), ~abs(vec3<u32>(35933u, 31930u, 7692u) << (vec3<u32>(u_input.a, var_3.b.e.x, var_3.a) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1421f)), var_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))))))));
    var_0 = Struct_2(true, var_0.b, func_2().d, Struct_1(1000f, vec3<bool>(all(!vec4<bool>(true, var_0.b.c, var_0.a, var_0.c.d.x)), var_0.c.b.x, var_0.d.b.x), var_0.d.b.x & true, !select(var_0.d.b.xx, vec2<bool>(var_0.d.c, true), func_2().c.d)), vec3<u32>(~((83230u ^ u_input.a) & 1u), arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, abs(arg_0 | vec4<u32>(1u, 4294967295u, arg_0.x, 69705u)))));
    var var_2 = -352f;
    var var_3 = Struct_5(_wgslsmith_div_u32(arg_0.x, ~max(_wgslsmith_add_u32(1u, arg_0.x), ~4294967295u)), func_2(), -265f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, -733f) * global1.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_3.b.c.a), global1.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, -1785f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(global1.a.x, var_0.d.a)), _wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(var_3.b.d.a, var_0.b.a)), true))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(global1.a * global1.a))))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f * arg_0.a.x) + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1728f)))));
    let var_1 = u_input.c.x;
    global1 = Struct_3(arg_0.a, vec2<i32>(0i, _wgslsmith_div_i32(var_1, ~(u_input.b.x << (1u % 32u)))), abs(vec4<i32>(reverseBits(var_1 >> (u_input.a % 32u)), _wgslsmith_sub_i32(~(-1i), global1.b.x), -7767i, u_input.d)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-239f, global1.a.x, -737f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global1.a.x), var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) - 1690f))), true));
    let var_3 = vec4<bool>(func_3(func_2().e.x), true, false, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(max(global1.a, global1.a)), vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, ~(-global1.b.x)), u_input.b.x), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 3>();
    global1 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7041u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 29625u, u_input.a, 0u)), vec4<u32>(u_input.a, 4435u, 1u, u_input.a)))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u | u_input.a, 1u))));
    var var_0 = func_2();
    let var_1 = vec4<u32>(~u_input.a, 1u, select(var_0.e.x, var_0.e.x, func_2().d.d.x), _wgslsmith_div_u32(63787u, countOneBits(var_0.e.x)));
    global0 = array<vec2<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_u32(~firstLeadingBit(var_0.e.x), ~func_2().e.x), ~max(4294967295u & var_1.x, 53996u >> (0u % 32u))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.x, _wgslsmith_mod_u32(var_0.e.x, 58102u)), reverseBits(_wgslsmith_add_vec3_u32(var_1.zwz, var_1.xyx) | var_1.yyw)), _wgslsmith_f_op_vec2_f32(floor(global1.a)), vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec4_u32(var_1, vec4<u32>(13699u, 1u, var_1.x, var_0.e.x)))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(trunc(755f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2128f + global1.a.x)))), _wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(96192u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a) << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), select(vec2<u32>(var_0.e.x, 1u), vec2<u32>(0u, var_0.e.x), vec2<bool>(true, false))), ~var_1.x, ~_wgslsmith_add_u32(u_input.a, 4294967295u)))).x);
}

