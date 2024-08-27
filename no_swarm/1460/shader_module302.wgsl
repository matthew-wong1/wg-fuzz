struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: u32;

var<private> global3: vec2<f32>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 52042u, 11808u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    global2 = 19886u;
    global1 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_f32(round(-945f));
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(~_wgslsmith_add_i32(-5809i, 0i), select(1i, ~61013i, arg_2.b)), firstTrailingBit(-2147483647i));
    global1 = array<Struct_1, 4>();
    return arg_2.a ^ min(_wgslsmith_div_vec4_u32(arg_2.a, arg_2.a), _wgslsmith_mult_vec4_u32(arg_2.a, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 70479u, 4294967295u, 0u), vec4<u32>(global4.x, global4.x, 4294967295u, 2454u))));
}

fn func_2() -> vec4<bool> {
    let var_0 = -12617i;
    let var_1 = (_wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(global4.x, 0u, u_input.a, global4.x), vec4<u32>(global4.x, 4294967295u, 0u, global4.x), vec4<bool>(true, true, false, true))), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, 77752u), vec4<u32>(4294967295u, 28367u, 1u, 9721u) << (vec4<u32>(23169u, global4.x, 9600u, 6385u) % vec4<u32>(32u)))) >> (func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, global3.x, global3.x, 1271f))), ~global4.x, Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global4.x, u_input.a, 17660u), vec4<u32>(0u, 56154u, 75418u, 1u)), select(true, true, false))) % vec4<u32>(32u))) & ~(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, global4.x, global4.x), vec4<u32>(u_input.a, 26547u, 19848u, global4.x))));
    global4 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~var_1.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, global4.x), vec4<u32>(4294967295u, 4294967295u, global4.x, var_1.x)), ~1u)) | ~var_1.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~u_input.a, ~var_1.x, global4.x)), var_1.zyz), ~(~34304u));
    global0 = array<vec4<i32>, 21>();
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(global4.x, 4u)]);
    return !(!(!vec4<bool>(true, false, false, var_2.a.b.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1764f, -840f, global3.x, -1000f), vec4<f32>(global3.x, -2007f, global3.x, -748f)) + vec4<f32>(-887f, -868f, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2767f, -612f, global3.x, -1200f) * vec4<f32>(-1030f, 2052f, -320f, -1899f))))) + vec4<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-1498f + -1244f)), 848f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1054f))))));
    let var_1 = func_2();
    let var_2 = Struct_4(Struct_1(var_1.xzz, select(var_1.zxx, !vec3<bool>(var_1.x, var_1.x, false), var_1.yyx), vec3<f32>(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global3.x)))), -1059f)));
    var var_3 = Struct_3(-vec3<i32>(33538i, reverseBits(_wgslsmith_add_i32(22572i, 6545i)), abs(5192i << (global4.x % 32u))), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(50181i, 0i, 9922i), vec3<i32>(17541i, -8751i, 0i)), vec3<i32>(1i, 1i, 1i), u_input.a > u_input.a), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -9897i, 23014i), vec3<i32>(6661i, 83569i, -8037i)))), Struct_1(var_1.zzw, vec3<bool>(var_1.x, var_1.x, !var_2.a.a.x), var_0.wxz), all(var_2.a.a.yz));
    var var_4 = Struct_1(select(!vec3<bool>(true, !var_1.x, false), select(func_2().zww, vec3<bool>(var_2.a.a.x, true, all(vec4<bool>(var_2.a.a.x, var_3.d, false, true))), var_3.b == var_3.b), all(!var_1.zyx)), select(var_2.a.b, var_1.xwx, select(select(select(vec3<bool>(false, false, var_3.c.b.x), var_2.a.a, var_2.a.a), !var_1.zzw, true), var_2.a.a, var_1.wyy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.wzx)) + var_2.a.c));
    return Struct_3(~max(var_3.a, var_3.a), ~var_3.b, Struct_1(var_2.a.b, vec3<bool>(true, true, !any(var_1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, -1000f, -1336f))))), (global4.x < _wgslsmith_add_u32(u_input.a, u_input.a)) | (global4.x != 4294967295u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<i32>) -> u32 {
    return _wgslsmith_clamp_u32(61544u, 47944u, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1550f, arg_1.c.c.x, global3.x, global3.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.c.x, arg_1.c.c.x, 337f, arg_1.c.c.x), vec4<f32>(-1089f, -132f, 437f, 278f)))), arg_2.x & ~global4.x, Struct_2(arg_2, -415f > arg_1.c.c.x)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(global4.x, func_4(true, func_1(), ~vec4<u32>(1u, global4.x, 26930u, global4.x), vec3<i32>(-5420i, ~1i, func_1().b))) ^ global4.x;
    var_0 = 4294967295u << ((max(_wgslsmith_clamp_u32(u_input.a, global4.x, ~1u), ~firstLeadingBit(1u)) ^ u_input.a) % 32u);
    let var_1 = any(func_2().yy);
    let var_2 = Struct_2(countOneBits(vec4<u32>(countOneBits(~u_input.a), max(4294967295u, global4.x) | 13798u, global4.x, 0u)), func_2().x);
    var var_3 = 4294967295u;
    global0 = array<vec4<i32>, 21>();
    var var_4 = Struct_4(Struct_1(vec3<bool>((-1000f == global3.x) == true, true, func_2().x), !vec3<bool>(true, false, any(vec4<bool>(var_1, true, false, false))), vec3<f32>(-430f, global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * -108f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(-38031i, -29353i), ~0i, _wgslsmith_mult_i32(reverseBits(-1i), -24542i), -36964i), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(global4.x, 21u)], global0[_wgslsmith_index_u32(~(~1u), 21u)])));
}

