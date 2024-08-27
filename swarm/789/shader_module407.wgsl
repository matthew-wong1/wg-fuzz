struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, true, false, false, false, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(~arg_0.yxy, arg_1.a.a), firstTrailingBit(abs(~24759u)), false, ~(max(arg_0.x, arg_0.x) << (_wgslsmith_div_u32(14157u, 54431u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_2), -164f) - _wgslsmith_f_op_f32(min(-1000f, arg_1.a.e)))), firstLeadingBit(arg_1.a.a.yx));
    let var_1 = Struct_1(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, var_0.b.x, var_0.a.b), arg_0.yzy) ^ arg_1.a.a, vec3<u32>(arg_1.b.x, ~1u, abs(2798u)), false | all(vec2<bool>(var_0.a.c, var_0.a.c))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.b, arg_1.b), abs(arg_1.b)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(21853u, 4294967295u)), vec2<u32>(arg_0.x, 121687u))), !(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, -35280i)), firstTrailingBit(-2147483647i)) >= 0i), _wgslsmith_clamp_u32(min(arg_1.b.x & arg_3, _wgslsmith_mult_u32(arg_3, 0u)), ~(~arg_1.a.d), 15047u) ^ _wgslsmith_sub_u32(max(arg_3, arg_0.x) << (_wgslsmith_sub_u32(0u, arg_1.a.a.x) % 32u), ~abs(arg_0.x)), arg_2);
    global0 = array<bool, 7>();
    let var_2 = vec4<i32>(35855i, -1i, ~(u_input.b.x | -12961i), u_input.b.x);
    let var_3 = arg_1;
    return ~firstLeadingBit(27479u);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), func_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_2(Struct_1(vec3<u32>(30048u, 4294967295u, 16501u), 34039u, false, 32222u, arg_0.x), vec2<u32>(1u, 1u)), -481f, firstTrailingBit(_wgslsmith_add_u32(35556u, 18932u))), ~u_input.c.x != -6886i, ~4294967295u, -2039f), _wgslsmith_div_vec2_u32(min(vec2<u32>(~45975u, ~0u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(56292u, 1u))), countOneBits(vec2<u32>(~57310u, ~1u))));
    let var_1 = Struct_1(reverseBits(var_0.a.a), 0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) >= _wgslsmith_f_op_f32(ceil(arg_0.x)), ~select(_wgslsmith_sub_u32(~var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(22155u, var_0.b.x, var_0.a.a.x))), abs(_wgslsmith_mult_u32(1u, 3594u)), true || !var_0.a.c), -1262f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(224f, 244f, var_1.e, arg_0.x), vec4<f32>(830f, -286f, arg_0.x, -512f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.e - var_0.a.e), 1252f, -713f, arg_0.x)), select(vec4<bool>(all(vec4<bool>(var_1.c, true, var_1.c, false)), false, all(vec4<bool>(var_0.a.c, true, true, var_1.c)), true), !vec4<bool>(false, var_0.a.c, var_0.a.c, true), all(vec3<bool>(var_1.c, true, var_1.c))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, arg_0.x, var_1.e)));
    let var_3 = Struct_1(vec3<u32>(4294967295u, var_1.d, ~var_0.b.x), (_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_0.b.x, 78120u)) ^ var_1.a.x) ^ 0u, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-19987i, 1i, u_input.b.x, u_input.c.x)), ~select(u_input.a, vec4<i32>(9140i, -30782i, u_input.c.x, 31943i), vec4<bool>(var_1.c, var_1.c, true, var_0.a.c))) > ~u_input.b.x, ~(var_1.b >> (4294967295u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1619f * -1829f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.e)))));
    global0 = array<bool, 7>();
    return var_0.a;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1965f, -1672f))), _wgslsmith_div_vec2_f32(vec2<f32>(349f, 1002f), vec2<f32>(-1856f, -1016f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1512f, 1363f))))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(579f - var_0.e), var_0.e, false)) + var_0.e), var_0.e, -1487f, -1111f), vec4<f32>(_wgslsmith_f_op_f32(1015f - -1990f), _wgslsmith_f_op_f32(-var_0.e), -579f, _wgslsmith_f_op_f32(-var_0.e)));
    let var_2 = select(!select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], true), !vec2<bool>(var_0.c, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 7u)], false)), vec2<bool>(var_0.c, false), false), ~0u == _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.b, var_0.b, 0u), vec4<u32>(var_0.a.x, 14941u, var_0.a.x, var_0.a.x))), vec2<bool>(false, (_wgslsmith_f_op_f32(-1099f - var_1.x) > 1f) && true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], !var_0.c));
    let var_3 = 1u;
    let var_4 = vec3<u32>(~abs(_wgslsmith_mult_u32(~var_0.a.x, var_0.d)), 48017u, var_0.b);
    return StorageBuffer(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(floor(var_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))), -950f, -289f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~countOneBits(vec2<u32>(1u, 4294967295u))) & 1u;
    let var_1 = _wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0, var_0), var_0, ~61856u)), countOneBits(countOneBits(var_0)));
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_2 = -1524f;
    let x = u_input.a;
    s_output = func_1();
}

