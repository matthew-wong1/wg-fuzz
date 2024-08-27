struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1428f, 1765f) - vec2<f32>(-1435f, 1065f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -168f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(-667f + 299f)), var_0.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(237f, var_0.x, 1762f))));
    var var_2 = (countOneBits(u_input.c) ^ (~(~u_input.c) & min(reverseBits(58654u), u_input.e.x ^ u_input.e.x))) | u_input.c;
    var var_3 = Struct_2(-10822i, Struct_1(arg_2, true, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(56115u, u_input.d), u_input.d), abs(4294967295u)), 1u, _wgslsmith_mod_i32(-arg_1, -arg_0)));
    var var_4 = var_3.b;
    return ~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6306u, var_3.b.c.x), vec3<u32>(4294967295u, 0u, var_4.c.x)) ^ reverseBits(37562u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = ~1u;
    var_0 = u_input.c;
    let var_1 = Struct_2(42443i, Struct_1(true, any(vec4<bool>(u_input.a.x >= 2147483647i, true, true, any(vec2<bool>(false, false)))), u_input.e.yx, 0u, u_input.a.x));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(var_1.b.c.x, 4294967295u), func_3(u_input.b, -u_input.a.x, var_1.b.e < (_wgslsmith_sub_i32(var_1.a, var_1.b.e) << (var_1.b.d % 32u))), firstTrailingBit(_wgslsmith_mult_u32(1u, 79029u)) >> (firstTrailingBit(0u) % 32u));
    var var_3 = var_1;
    return _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-280f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(floor(1907f))), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2088f))) * _wgslsmith_f_op_f32(f32(-1f) * -368f))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1483f, 1f));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    var_0 = var_1.xw;
    var var_2 = Struct_2(_wgslsmith_add_i32((_wgslsmith_div_i32(u_input.b, 0i) << (_wgslsmith_div_u32(1u, 22279u) % 32u)) >> (u_input.e.x % 32u), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, -1i))) ^ abs(min(u_input.b, 41849i))), Struct_1(true, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(-1i, u_input.a.x, u_input.b))) >= u_input.b, vec2<u32>(abs(_wgslsmith_add_u32(u_input.e.x, u_input.e.x)), 52226u), ~func_3(max(3352i, -39790i), 2147483647i, all(vec3<bool>(false, true, true))), _wgslsmith_mult_i32(1i, ~34362i)));
    var var_3 = Struct_2(firstLeadingBit(-2147483647i), var_2.b);
    return _wgslsmith_f_op_vec4_f32(func_2()).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(u_input.d, u_input.d);
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    var var_3 = Struct_1(false, true, u_input.e.zz, max(u_input.c, ~4294967295u), u_input.b);
    var_3 = Struct_1(all(!vec2<bool>(true, select(false, true, true))), !var_3.a, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(var_1, var_3.c.x ^ u_input.e.x)), var_3.c), 1u, 1i);
    var_2 = _wgslsmith_f_op_f32(func_1());
    let var_4 = Struct_1(var_3.a, (var_3.b | var_3.a) | (u_input.d < var_1), reverseBits(u_input.e.zz), 0u, 1i);
    var var_5 = select(select(vec4<bool>(true, true, any(!vec3<bool>(false, var_4.b, true)), !var_4.a), select(vec4<bool>(var_3.b, all(vec2<bool>(var_3.a, true)), var_3.b || true, var_1 >= var_3.c.x), select(select(vec4<bool>(var_3.a, var_4.b, false, false), vec4<bool>(var_3.a, false, var_3.b, var_3.a), true), vec4<bool>(false, false, false, var_3.b), vec4<bool>(var_3.b, var_4.a, false, true)), true), vec4<bool>(var_3.a, true, var_3.b, any(vec2<bool>(true, true)))), select(vec4<bool>(false, all(vec3<bool>(var_3.a, false, true)), any(select(vec2<bool>(true, var_4.b), vec2<bool>(var_3.a, false), var_4.b)), any(vec2<bool>(var_4.a, false))), vec4<bool>(any(select(vec4<bool>(false, var_3.a, true, var_3.b), vec4<bool>(false, var_4.b, false, var_3.b), vec4<bool>(var_3.b, false, true, false))), all(vec2<bool>(var_4.b, var_4.a)) & all(vec2<bool>(var_3.b, var_4.a)), 2147483647i == var_4.e, var_4.a & any(vec3<bool>(false, var_3.a, true))), select(vec4<bool>(var_3.b, !var_3.b, false, true), !select(vec4<bool>(var_3.a, true, var_4.b, false), vec4<bool>(true, var_4.b, true, false), true), !vec4<bool>(var_4.a, true, var_4.a, true))), select(!(!vec4<bool>(var_4.b, false, var_3.a, var_3.a)), !(!select(vec4<bool>(false, var_4.a, true, var_4.b), vec4<bool>(var_3.b, true, var_4.a, var_4.b), vec4<bool>(false, var_3.b, true, var_3.b))), select(!(!vec4<bool>(var_3.b, var_3.b, var_4.b, var_3.b)), vec4<bool>(var_3.b, var_4.a, all(vec2<bool>(var_4.b, true)), all(vec2<bool>(true, true))), vec4<bool>(false, var_4.b, true, any(vec4<bool>(var_3.b, true, var_3.a, false))))));
    var_5 = !(!vec4<bool>(!(var_4.a | true), true, true, any(var_5.ww)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, 824f, -1412f, 1000f) - vec4<f32>(957f, 379f, 905f, -390f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -494f, -137f, _wgslsmith_f_op_f32(trunc(831f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, 996f, -832f, 216f))))))), _wgslsmith_add_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2852i, var_4.e), vec3<i32>(18757i, u_input.b, var_3.e), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.e, -2147483647i, u_input.a.x), vec3<i32>(1i, -18592i, -47210i)))), vec3<i32>(~var_3.e, 0i, var_3.e) ^ -firstLeadingBit(vec3<i32>(var_3.e, var_3.e, -29684i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec4_f32(func_2()).xwz)) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-418f))), _wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(step(772f, -953f))))), u_input.e);
}

