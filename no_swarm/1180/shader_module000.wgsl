struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.b, 87538u, u_input.b, u_input.e) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.b, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 30908u, 8467u, u_input.e))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b), ~(~u_input.b), 1u, 0u)), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-116f, -946f) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -2004f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(528f)) + _wgslsmith_f_op_f32(f32(-1f) * -843f)) * -612f))), Struct_2(u_input.b, u_input.c.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, -1472f))))), 32749u, u_input.d.x));
    return 1832f;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(15428u, u_input.e, 47012u, u_input.e) >> (~vec4<u32>(0u, 0u, 0u, u_input.b) % vec4<u32>(32u)), ~(vec4<u32>(45909u, 85320u, 4294967295u, u_input.b) >> (vec4<u32>(arg_3, u_input.b, arg_3, arg_3) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(firstTrailingBit(max(vec4<u32>(u_input.b, arg_3, arg_3, 39414u), vec4<u32>(55589u, 4294967295u, 4294967295u, 20580u))), ~(~vec4<u32>(1u, 4294967295u, arg_3, arg_3)))), all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), Struct_2(32224u, u_input.c.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_1.x) - _wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(-1463f, -556f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-680f, -589f)), _wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(998f, 1674f)), true))), u_input.e, 2147483647i));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1363f)), _wgslsmith_f_op_f32(ceil(-185f)))));
    var var_2 = vec4<u32>(~_wgslsmith_add_u32(55852u, countOneBits(4294967295u)) & u_input.e, firstLeadingBit(var_1.a.x), 63104u >> (arg_3 % 32u), select(~(select(17186u, u_input.e, true) | 0u), 0u, select(var_1.b, select(false, true, var_1.b), (var_1.b & false) | true)));
    let var_3 = all(vec4<bool>(!all(!vec2<bool>(var_1.b, false)), var_1.b, var_1.b, var_1.b));
    return Struct_2(~u_input.b, -(~vec2<i32>(-27911i, ~26728i)), vec2<f32>(1f, 1f), ~arg_3, _wgslsmith_mod_i32(0i, -2147483647i));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var var_1 = Struct_3(firstLeadingBit(vec4<u32>(~(~u_input.e), arg_2.d, ~4294967295u, func_3(arg_2.b.x & arg_2.e, _wgslsmith_f_op_vec2_f32(arg_2.c + arg_2.c), -17285i, ~arg_0).a)), true, _wgslsmith_f_op_f32(f32(-1f) * -1437f), arg_2);
    var_1 = Struct_3(abs(var_1.a), true, _wgslsmith_f_op_f32(func_2()), func_3(~abs(_wgslsmith_dot_vec2_i32(arg_2.b, arg_2.b)), func_3(-1i, var_1.d.c, arg_2.b.x, ~u_input.e).c, _wgslsmith_dot_vec2_i32(var_1.d.b, arg_2.b), 0u));
    var_1 = Struct_3(var_1.a, _wgslsmith_add_u32(u_input.b, ~abs(0u)) <= countOneBits(var_1.d.a), arg_2.c.x, func_3(abs(countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-74245i, arg_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(507f)), _wgslsmith_f_op_f32(sign(1000f))), arg_2.b.x, _wgslsmith_add_u32(58484u, _wgslsmith_mod_u32(arg_0, 18697u))));
    var var_2 = u_input.a;
    return Struct_4(var_1.d, var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1625f, _wgslsmith_f_op_f32(func_2()))))), vec2<u32>(~arg_0, _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), abs(9550u), arg_0), _wgslsmith_clamp_u32(arg_0 | arg_2.a, _wgslsmith_add_u32(arg_0, arg_0), 74037u))), select(!vec3<bool>(var_1.b, true, select(false, true, var_1.b)), !select(!vec3<bool>(true, var_1.b, true), !vec3<bool>(false, var_1.b, var_1.b), all(vec2<bool>(var_1.b, true))), var_1.b));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    let var_0 = func_4(reverseBits(arg_0) << (17541u % 32u), u_input.d, func_3(u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_2())), 855f), arg_1.x, arg_0), ~u_input.c.x);
    let var_1 = !select(select(vec4<bool>(any(vec4<bool>(var_0.b, true, var_0.b, false)), true, !var_0.e.x, var_0.b), select(vec4<bool>(var_0.e.x, true, false, true), !vec4<bool>(false, true, var_0.e.x, var_0.e.x), select(vec4<bool>(true, var_0.b, true, true), vec4<bool>(false, false, false, var_0.b), var_0.b)), vec4<bool>(var_0.e.x, var_0.e.x, any(vec3<bool>(var_0.b, false, true)), !var_0.b)), !vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x & var_0.b, !var_0.e.x), vec4<bool>(true, any(!vec4<bool>(true, var_0.e.x, false, true)), true, any(var_0.e)));
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_1(_wgslsmith_sub_u32(4294967295u, abs(abs(u_input.e))), u_input.a), firstTrailingBit(0i), _wgslsmith_sub_i32(-19563i, _wgslsmith_dot_vec3_i32(u_input.d, -vec3<i32>(u_input.a.x, 2147483647i, 1i))));
    let var_1 = all(vec2<bool>(true, false || any(vec3<bool>(true, true, false))));
    let var_2 = !(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(97111i, countOneBits(var_0.x))) != _wgslsmith_add_i32(abs(~u_input.c.x), var_0.x ^ max(var_0.x, -1i)));
    let var_3 = ~firstTrailingBit(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1683f, 277f), vec4<i32>(25530i, _wgslsmith_mult_i32(i32(-1i) * -var_0.x, u_input.a.x), max(-6146i, u_input.c.x), _wgslsmith_div_i32(-27013i, -7543i)), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e, var_3), var_3) >> (func_3(max(-7865i, u_input.c.x), vec2<f32>(-678f, 1000f), u_input.a.x, 17276u).a % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-588f)) * _wgslsmith_f_op_f32(-582f - 656f)) + 901f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) * 340f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1414f, 520f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1625f, -453f))))), var_3);
}

