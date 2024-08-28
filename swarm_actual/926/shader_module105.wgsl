struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c.x, reverseBits(9750u), u_input.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), select(vec2<u32>(0u, u_input.c.x), u_input.c, vec2<bool>(false, false)))), ~(64337u & _wgslsmith_mult_u32(u_input.c.x, 4294967295u)), 1u, max(max(countOneBits(4294967295u), 73783u << (u_input.c.x % 32u)), min(countOneBits(4294967295u), 0u))) ^ vec4<u32>(u_input.c.x, ~20370u, 45519u, ~(u_input.c.x >> (~u_input.c.x % 32u)));
    var_0 = vec4<u32>(abs(0u), var_0.x | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x & 0u, ~var_0.x, max(1u, u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 37771u) << (var_0.zyz % vec3<u32>(32u)), countOneBits(vec3<u32>(var_0.x, 72180u, u_input.c.x)))), 0u, ~(~1u));
    return var_0.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(-1168f, u_input.b.x, Struct_2(Struct_1(func_3(140f, u_input.b.x) << (_wgslsmith_dot_vec2_u32(u_input.c, u_input.c) % 32u), ~(~55623u)), Struct_1(~u_input.c.x, ~(~87831u)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)), Struct_1(~0u, ~(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x))));
    var_0 = Struct_3(var_0.a, 1i, var_0.c, var_0.c.b);
    var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(max(-1195f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), -661f))), !all(vec2<bool>(var_0.c.c.x, true)) || true)), -27069i, Struct_2(var_0.d, var_0.d, !var_0.c.c), Struct_1(u_input.c.x, _wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b, u_input.a), u_input.b.ywy)), _wgslsmith_div_u32(~4294967295u, u_input.c.x << (0u % 32u)))));
    return -142f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(select(-511f, arg_3.x, arg_2))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-414f + arg_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_3.zx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, arg_0), arg_3.zx))))), !vec2<bool>(any(select(vec4<bool>(arg_2, arg_1.c.x, true, true), vec4<bool>(false, true, arg_1.c.x, arg_2), arg_2)), arg_2)));
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(~u_input.c, ~vec2<u32>(u_input.c.x, 10753u))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, arg_1.a.a) >> (u_input.c % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(u_input.c, countOneBits(u_input.c | u_input.c))));
    var var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1, 17274u, 81877u, var_1)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, arg_1.a.a, 0u), vec4<u32>(var_1, arg_1.b.a, var_1, arg_1.b.a), vec4<u32>(4294967295u, 1u, var_1, u_input.c.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 107296u, u_input.c.x), vec4<u32>(u_input.c.x, 17415u, 13297u, arg_1.b.b))), ~vec4<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a, var_1, arg_1.a.a), vec3<u32>(arg_1.a.a, u_input.c.x, var_1)), ~1u));
    let var_4 = false;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-662f, arg_0)) + var_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - arg_3.xz))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), arg_0)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(268f, 334f), var_0)))))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -508f)))), _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(-1f)), 1242f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-948f)) * arg_0.a))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(1234f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a)))), -1697f, arg_0.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - -555f), Struct_2(arg_0.c.a, arg_0.d, !vec2<bool>(arg_0.c.c.x, any(arg_0.c.c))), (arg_0.c.c.x | true) != arg_0.c.c.x, vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a - -1380f), _wgslsmith_f_op_f32(-240f * -754f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1184f)))), -266f)));
    var var_2 = Struct_1(u_input.c.x & arg_0.c.b.a, select(arg_0.d.b, 70473u, -34872i < _wgslsmith_mult_i32(_wgslsmith_add_i32(-24234i, -27257i), -arg_0.b)));
    let var_3 = ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(-11565i, u_input.a), arg_0.b & -2147483647i, _wgslsmith_div_i32(-17194i, u_input.a)), u_input.b.ywy | (u_input.b.zwy | u_input.b.yzw), vec3<bool>(arg_0.c.c.x, true, false)), abs(-abs(vec3<i32>(arg_0.b, u_input.b.x, 11297i))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.xy - vec2<f32>(867f, 1178f)))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -288f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = !vec4<bool>(true, true, any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), !all(vec4<bool>(true, true, true, true)));
    var_0 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-702f * -1005f), _wgslsmith_f_op_f32(func_1(Struct_3(-867f, u_input.b.x, Struct_2(Struct_1(u_input.c.x, u_input.c.x), Struct_1(u_input.c.x, 30804u), vec2<bool>(false, var_1.x)), Struct_1(u_input.c.x, u_input.c.x)))), -992f))), vec3<f32>(1717f, 1f, 1000f), var_1.zwy))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -913f, var_2.x), vec3<f32>(-161f, var_2.x, -885f))) * vec3<f32>(1518f, 915f, var_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(885f, 615f, -494f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1224f, var_2.x, 1000f)))))));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), ~689i), -2147483647i, abs(u_input.a << (u_input.c.x % 32u))) ^ u_input.b, u_input.b);
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_f32(func_2()), var_3.x, Struct_2(Struct_1(u_input.c.x, u_input.c.x), Struct_1(u_input.c.x, u_input.c.x), vec2<bool>(var_1.x, var_1.x)), Struct_1(u_input.c.x, 39815u)))) + _wgslsmith_f_op_f32(-316f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, min(max(~(-1i), select(var_3.x, 1i, var_2.x != var_2.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(57751i, var_3.x), ~(~u_input.b.x))), countOneBits(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(53845u, 32830u, u_input.c.x, 63609u)), u_input.c.x))), firstLeadingBit(countOneBits(u_input.c.x)), u_input.b);
}

