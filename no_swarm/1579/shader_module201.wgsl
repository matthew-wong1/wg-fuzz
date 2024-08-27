struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: u32) -> bool {
    var var_0 = select(select(!vec4<bool>(arg_0.b.c.x, any(vec4<bool>(true, true, true, true)), true, any(arg_0.d.c)), select(!select(vec4<bool>(true, true, arg_0.c, arg_0.d.c.x), vec4<bool>(arg_0.c, arg_0.c, arg_0.b.c.x, arg_0.d.c.x), arg_0.c), vec4<bool>(all(vec4<bool>(arg_0.d.c.x, arg_0.e, arg_0.d.c.x, false)), true, any(vec3<bool>(arg_0.d.c.x, arg_0.b.c.x, false)), any(vec4<bool>(true, false, false, arg_0.b.c.x))), vec4<bool>(true, arg_0.b.d > 637f, any(vec4<bool>(arg_0.c, false, false, arg_0.b.c.x)), true)), (arg_0.d.c.x == all(vec3<bool>(arg_0.e, arg_0.b.c.x, false))) && true), select(select(!vec4<bool>(true, arg_0.d.c.x, arg_0.e, arg_0.b.c.x), !select(vec4<bool>(arg_0.c, arg_0.b.c.x, arg_0.b.c.x, arg_0.d.c.x), vec4<bool>(arg_0.e, arg_0.d.c.x, true, false), vec4<bool>(false, arg_0.d.c.x, arg_0.e, false)), !(arg_0.d.d >= 1000f)), select(select(select(vec4<bool>(false, arg_0.b.c.x, arg_0.e, true), vec4<bool>(false, false, arg_0.b.c.x, true), vec4<bool>(arg_0.c, false, false, false)), select(vec4<bool>(arg_0.b.c.x, arg_0.c, arg_0.e, true), vec4<bool>(true, arg_0.c, arg_0.c, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false & arg_0.e, any(vec3<bool>(arg_0.b.c.x, arg_0.c, false)), arg_0.b.c.x), !(!vec4<bool>(arg_0.c, false, true, arg_0.b.c.x))), !arg_0.e), !(!select(vec4<bool>(false, arg_0.b.c.x, arg_0.d.c.x, arg_0.e), select(vec4<bool>(true, arg_0.d.c.x, arg_0.d.c.x, arg_0.c), vec4<bool>(false, arg_0.d.c.x, false, false), arg_0.e), vec4<bool>(arg_0.b.c.x, true, true, true))));
    let var_1 = Struct_3(vec2<bool>(true, any(vec4<bool>(any(vec4<bool>(arg_0.b.c.x, true, false, var_0.x)), arg_0.d.c.x && arg_0.c, var_0.x, true || arg_0.b.c.x))), Struct_1(arg_0.d.a, -36462i, !arg_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1430f, 1417f)) - 2426f))), ~0u <= ~u_input.a.x);
    var var_2 = ~(~(~vec2<u32>(arg_3, 6228u)) ^ vec2<u32>(1705u ^ arg_0.d.a.x, _wgslsmith_add_u32(0u, 145302u)));
    let var_3 = var_0.x;
    var var_4 = ~vec3<u32>(_wgslsmith_div_u32(~(4294967295u << (var_2.x % 32u)), 1u), max(u_input.a.x, 1u) << (_wgslsmith_dot_vec4_u32(var_1.b.a | vec4<u32>(4294967295u, arg_3, u_input.a.x, 14400u), arg_0.b.a) % 32u), 4294967295u);
    return true != !var_0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<i32, 21>();
    global1 = arg_2.d;
    global1 = -923f;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d.d, arg_1.d.d), -1181f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.d.d)) * _wgslsmith_f_op_f32(-arg_2.d))))));
    let var_1 = Struct_3(arg_1.b.c, Struct_1(~reverseBits(~arg_1.d.a), ~firstLeadingBit(2147483647i), vec2<bool>(arg_1.b.a.x == ~1u, func_3(arg_1, ~u_input.c.wzx, _wgslsmith_f_op_vec3_f32(min(var_0, var_0)), 43455u)), arg_1.b.d), select(!(_wgslsmith_clamp_u32(33053u, arg_2.a.x, u_input.a.x) > _wgslsmith_dot_vec2_u32(arg_2.a.yy, vec2<u32>(0u, 1u))), -u_input.d >= 1i, true));
    return !vec4<bool>((var_1.b.c.x || var_1.b.c.x) & any(vec2<bool>(var_1.a.x, false)), false, true, -738f >= arg_1.d.d);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = vec2<bool>(arg_2.c.x || !(_wgslsmith_f_op_f32(step(322f, -255f)) >= _wgslsmith_f_op_f32(f32(-1f) * -234f)), arg_2.d == arg_2.d);
    global1 = arg_2.d;
    let var_1 = _wgslsmith_sub_i32(5401i, 0i);
    let var_2 = Struct_3(select(var_0, var_0, any(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.c.x, var_0.x, false), vec3<bool>(false, arg_2.c.x, arg_2.c.x), arg_2.c.x), select(vec3<bool>(arg_2.c.x, true, false), vec3<bool>(arg_2.c.x, true, arg_2.c.x), vec3<bool>(false, true, false))))), arg_2, any(select(var_0, arg_2.c, any(func_2(18115u, Struct_2(-53959i, Struct_1(arg_2.a, global0[_wgslsmith_index_u32(arg_0, 21u)], vec2<bool>(false, true), arg_2.d), true, arg_2, true), Struct_1(vec4<u32>(4294967295u, arg_0, arg_1, arg_2.a.x), u_input.b.x, var_0, -567f))))));
    global2 = _wgslsmith_add_u32(countOneBits(reverseBits(~1u)), ~arg_2.a.x << ((max(arg_2.a.x, 4294967295u) & 1u) % 32u)) << (_wgslsmith_dot_vec4_u32(select(~var_2.b.a & vec4<u32>(1u, var_2.b.a.x, 6731u, 43914u), ~vec4<u32>(0u, arg_2.a.x, 26368u, 4294967295u), !(!vec4<bool>(false, false, arg_2.c.x, var_0.x))), arg_2.a) % 32u);
    return vec3<i32>(-firstTrailingBit(~(-2147483647i)), ~0i, ~abs(-33256i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = -vec4<i32>(_wgslsmith_mod_i32(select(_wgslsmith_mult_i32(arg_3.x, arg_3.x), arg_0.x, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.b.a & vec4<u32>(82461u, 4294967295u, 4294967295u, 40099u), vec4<u32>(arg_1.b.a.x, u_input.a.x, 10065u, u_input.a.x)), 21u)]), ~_wgslsmith_clamp_i32(~arg_3.x, countOneBits(-4345i), _wgslsmith_div_i32(arg_1.b.b, -2147483647i)), ~firstLeadingBit(~47255i), _wgslsmith_div_i32(u_input.e.x, _wgslsmith_add_i32(arg_1.b.b, arg_3.x) >> (arg_1.b.a.x % 32u)));
    var_0 = -u_input.c;
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.d, -1000f, 586f, 245f), vec4<f32>(1265f, 474f, 236f, 320f)) - vec4<f32>(-2067f, 400f, arg_1.b.d, -402f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.d, arg_1.b.d, 425f, -144f), vec4<f32>(arg_1.b.d, arg_1.b.d, -1168f, arg_1.b.d))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(-231f)), arg_1.b.d, _wgslsmith_f_op_f32(sign(arg_1.b.d)), _wgslsmith_f_op_f32(f32(-1f) * -1417f)), vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.b.d, arg_1.b.d)), _wgslsmith_f_op_f32(arg_1.b.d * -1482f), -215f, _wgslsmith_f_op_f32(-arg_1.b.d))))));
    return arg_2.x;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.d, arg_2.d.d)))), -541f)));
    global2 = ~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec2_u32(arg_2.d.a.zw, arg_2.b.a.zx)), ~min(63948u, arg_1.b.a.x), u_input.a.x) & ~abs(17988u << (arg_1.b.a.x % 32u)));
    let var_0 = _wgslsmith_div_u32(reverseBits(~(~u_input.a.x)), arg_1.b.a.x);
    let var_1 = arg_1;
    var var_2 = ~(~arg_1.b.a);
    return Struct_2(2147483647i, var_1.b, arg_2.b.c.x, Struct_1(var_1.b.a, u_input.d, func_2(~_wgslsmith_clamp_u32(arg_1.b.a.x, var_2.x, u_input.a.x), arg_2, arg_2.d).zw, _wgslsmith_f_op_f32(arg_2.b.d - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-908f + arg_1.b.d))))), all(func_2(~abs(0u), arg_2, Struct_1(firstTrailingBit(vec4<u32>(var_1.b.a.x, var_1.b.a.x, 0u, 71013u)), abs(-1i), !arg_1.a, _wgslsmith_f_op_f32(arg_2.d.d * arg_1.b.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(reverseBits(func_1(4294967295u, 4294967295u, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 47079u), -26090i, vec2<bool>(true, true), 517f), u_input.c.zw) ^ vec3<i32>(28972i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(27622u, 21u)])), Struct_3(vec2<bool>(true, true), Struct_1(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(26017u, 21u)], -35196i), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -484f)), (4578u <= u_input.a.x) || true), vec3<bool>(false, true | all(vec3<bool>(true, false, false)), true), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(~u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], u_input.c.x, u_input.b.x >> (30534u % 32u)))), Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), func_2(~0u, Struct_2(-38112i, Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 47241u, u_input.a.x), global0[_wgslsmith_index_u32(41286u, 21u)], vec2<bool>(false, true), -1277f), false, Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), global0[_wgslsmith_index_u32(81457u, 21u)], vec2<bool>(true, false), 2160f), true), Struct_1(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), 0i, vec2<bool>(false, true), 1595f)).yz, true), Struct_1(abs(reverseBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 145u))), _wgslsmith_dot_vec2_i32(u_input.b.zw, min(vec2<i32>(u_input.b.x, u_input.e.x), vec2<i32>(-73012i, global0[_wgslsmith_index_u32(69589u, 21u)]))), select(vec2<bool>(true, true), func_2(u_input.a.x, Struct_2(u_input.c.x, Struct_1(vec4<u32>(u_input.a.x, 20744u, u_input.a.x, 41723u), u_input.e.x, vec2<bool>(true, false), -164f), true, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), -1i, vec2<bool>(false, true), -420f), true), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), u_input.b.x, vec2<bool>(false, true), -880f)).yx, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1569f)), _wgslsmith_f_op_f32(trunc(436f)), false))), false), Struct_2(-52623i, Struct_1(~firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 30510u, u_input.a.x)), -26576i, func_2(~1u, Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), u_input.e.x, vec2<bool>(true, false), 1501f), true, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 10112u), -2147483647i, vec2<bool>(false, true), 148f), false), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), u_input.d, vec2<bool>(false, false), -362f)).xz, -782f), (global0[_wgslsmith_index_u32(~u_input.a.x, 21u)] == global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 21u)]) || func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_1(vec4<u32>(1u, 52446u, u_input.a.x, u_input.a.x), u_input.c.x, vec2<bool>(false, true), 2911f), false, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), u_input.d, vec2<bool>(false, true), -1016f), true), ~vec3<i32>(u_input.e.x, -10939i, -1i), vec3<f32>(-460f, 174f, -1317f), ~u_input.a.x), Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.a.x, 0u), _wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_mult_i32(-9605i, u_input.e.x)), vec2<bool>(true, false), -245f), all(vec4<bool>(true, true, true, true)) & true));
    var var_1 = func_5(!var_0.e, Struct_3(!(!func_2(var_0.b.a.x, var_0, var_0.b).zz), var_0.b, 1u > ~var_0.b.a.x), Struct_2(-14680i, Struct_1(vec4<u32>(u_input.a.x, ~0u, 0u >> (var_0.b.a.x % 32u), ~u_input.a.x), 21509i, vec2<bool>(func_3(var_0, vec3<i32>(9255i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), vec3<f32>(var_0.d.d, -1000f, 1434f), var_0.b.a.x), var_0.e), _wgslsmith_f_op_f32(sign(2693f))), any(vec3<bool>(any(vec3<bool>(true, true, var_0.e)), true || var_0.b.c.x, var_0.d.d >= 199f)), Struct_1(_wgslsmith_div_vec4_u32(var_0.d.a, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 38388u, var_0.b.a.x, u_input.a.x), vec4<u32>(var_0.d.a.x, var_0.b.a.x, var_0.d.a.x, u_input.a.x))), i32(-1i) * -1i, var_0.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1413f - var_0.b.d)))), any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2251f, -894f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.d, -555f) + vec2<f32>(var_1.d.d, var_1.b.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, 1704f)), !var_1.e)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 189f))))), true));
    var var_3 = _wgslsmith_f_op_f32(var_1.b.d + var_1.d.d);
    var var_4 = Struct_3(var_1.b.c, func_5((_wgslsmith_add_i32(var_0.b.b, var_0.d.b) | ~var_0.d.b) > u_input.d, Struct_3(func_2(_wgslsmith_sub_u32(1u, var_1.d.a.x), Struct_2(u_input.e.x, var_0.b, false, var_0.d, false), var_1.b).xy, Struct_1(_wgslsmith_mod_vec4_u32(var_0.d.a, var_0.d.a), global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 21u)], func_2(var_1.b.a.x, var_0, var_1.d).zz, _wgslsmith_f_op_f32(-1000f - -188f)), true), func_5(func_4(-u_input.b.zxw, Struct_3(var_1.d.c, var_1.b, true), !vec3<bool>(false, var_1.c, var_1.c), u_input.b), Struct_3(!var_1.b.c, var_0.b, any(var_0.b.c)), Struct_2(~(-44485i), Struct_1(var_1.b.a, var_0.b.b, var_0.b.c, var_2.x), all(vec4<bool>(false, var_1.c, var_0.b.c.x, false)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, var_1.b.a.x, 1u), var_1.b.b, vec2<bool>(true, true), 285f), func_2(12427u, var_0, Struct_1(var_0.d.a, global0[_wgslsmith_index_u32(var_0.b.a.x, 21u)], var_1.d.c, -871f)).x))).b, all(!var_1.d.c));
    var var_5 = Struct_3(!var_0.b.c, Struct_1(~var_1.d.a, u_input.c.x, vec2<bool>(true, !any(var_1.b.c)), _wgslsmith_f_op_f32(982f + 1137f)), all(vec4<bool>(true, true, true, var_0.b.c.x)));
    var_4 = Struct_3(var_0.d.c, func_5(true, Struct_3(var_4.a, Struct_1(var_1.b.a >> (vec4<u32>(var_1.d.a.x, 63269u, 2909u, u_input.a.x) % vec4<u32>(32u)), 1i, !vec2<bool>(var_5.b.c.x, true), var_1.b.d), true), Struct_2(var_1.a, var_4.b, false, var_5.b, true)).b, func_2(var_4.b.a.x, var_0, func_5(func_2(1u | var_1.b.a.x, var_0, var_1.b).x, Struct_3(var_0.d.c, func_5(var_4.c, Struct_3(vec2<bool>(false, var_5.b.c.x), var_0.d, false), Struct_2(0i, Struct_1(var_1.d.a, var_4.b.b, var_4.b.c, var_5.b.d), var_4.b.c.x, var_1.d, var_0.b.c.x)).b, false), var_0).d).x);
    var var_6 = var_0;
    var var_7 = ~_wgslsmith_dot_vec3_u32(countOneBits(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_5.b.a.x, 4294967295u, 1u), u_input.a))), vec3<u32>(var_0.d.a.x, ~var_6.b.a.x, _wgslsmith_add_u32(0u | var_5.b.a.x, var_6.d.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1684f, ~var_6.b.a.x, u_input.b);
}

