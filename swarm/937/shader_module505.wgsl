struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 14709u), vec2<u32>(1u, 1u), vec2<u32>(1u, 51457u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(90844u, 10657u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(29767u, 0u), vec2<u32>(0u, 37188u), vec2<u32>(42497u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(96389u, 20249u), vec2<u32>(21412u, 38043u), vec2<u32>(90677u, 497u), vec2<u32>(16818u, 0u), vec2<u32>(0u, 21123u), vec2<u32>(1u, 36449u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(54136u, 27798u), vec2<u32>(4811u, 1u), vec2<u32>(22509u, 0u), vec2<u32>(59194u, 1u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = -1547f;
    let var_1 = Struct_4(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, all(vec2<bool>(false, false)), true, true), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))))), Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-799f, -1056f) - vec2<f32>(1421f, -347f)) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(940f, -421f), vec2<f32>(578f, -1444f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-591f, -1951f)), -2147483647i, -firstLeadingBit(477i), vec2<f32>(_wgslsmith_f_op_f32(-1182f - 347f), _wgslsmith_div_f32(-268f, 1930f)))));
    global0 = array<vec2<u32>, 24>();
    var var_2 = vec4<u32>(_wgslsmith_div_u32(u_input.a.x, ~(~u_input.a.x)), u_input.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec2<u32>(u_input.a.x, 21363u) << (~vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), 2844u);
    var var_3 = -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.b.b, 30556i, -1i, var_1.b.b.c), vec4<i32>(-59650i, var_1.b.b.b, 2147483647i, -64739i)), -18077i, var_1.a.x), i32(-1i) * -var_1.b.b.c), vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(var_1.b.b.c, var_1.b.b.c)), ~var_1.b.b.c, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, var_1.b.b.c, 21253i), select(var_1.b.b.b, 46490i, false)), 1i));
    return var_1.a.x;
}

fn func_4(arg_0: bool, arg_1: f32) -> vec2<f32> {
    let var_0 = Struct_2(func_3(), any(!select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, true))), select(!(!select(vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, false, false, false))), select(vec4<bool>(true, true, true, arg_1 < arg_1), !vec4<bool>(false, arg_0, true, false), true), !(!vec4<bool>(true, arg_0, arg_0, arg_0))), countOneBits(13389i));
    let var_1 = var_0.c.yww;
    var var_2 = !any(var_0.c.yw);
    let var_3 = ~(~reverseBits(vec3<i32>(-1i, var_0.d >> (21551u % 32u), -var_0.d)));
    var_2 = !(!any(var_0.c.zww));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-518f, arg_1)) - _wgslsmith_f_op_f32(arg_1 - -876f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-287f, 1092f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 409f), vec2<f32>(1262f, 206f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2148f, arg_1)))), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(1266f * -770f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(arg_1)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 717f))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_3(), 1f))), vec2<f32>(_wgslsmith_f_op_f32(-892f - 1f), -1000f), vec2<bool>(~5773u < u_input.a.x, any(vec2<bool>(false, true)) & true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(369f, -1961f, true))), _wgslsmith_f_op_f32(f32(-1f) * -186f)), -3373i, _wgslsmith_div_i32(firstLeadingBit(1i), countOneBits(~1i)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(471f, -1146f)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1813f);
    return _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 82223u), global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), global0[_wgslsmith_index_u32(max(firstTrailingBit(10436u), 4294967295u), 24u)]), abs(_wgslsmith_sub_u32(u_input.a.x, 70230u)), _wgslsmith_add_u32(~u_input.a.x, u_input.a.x), firstLeadingBit(~(u_input.a.x & 68206u))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5960u), ~u_input.a)) & (countOneBits(u_input.a) & vec4<u32>(u_input.a.x ^ u_input.a.x, ~u_input.a.x, 22361u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> bool {
    var var_0 = func_2();
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, var_0.x, 95911u, 4294967295u) & _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 41470u, u_input.a.x)), vec4<u32>(select(u_input.a.x, var_0.x, arg_1), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 56030u, ~u_input.a.x) & vec4<u32>(~u_input.a.x, 57227u, 1u, u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.a >> (u_input.a % vec4<u32>(32u))), func_2()), ~(abs(u_input.a.x) | _wgslsmith_mult_u32(u_input.a.x, 23895u)), _wgslsmith_div_u32(~(u_input.a.x & var_0.x), _wgslsmith_clamp_u32(var_0.x, min(u_input.a.x, 0u), u_input.a.x | var_0.x)), 29727u ^ ~_wgslsmith_mult_u32(0u, u_input.a.x)));
    let var_1 = Struct_2(!(!(!select(arg_1, true, true))), any(vec2<bool>(arg_1, any(vec4<bool>(false, false, arg_1, arg_1)) && all(vec4<bool>(arg_1, false, false, false)))), select(select(vec4<bool>(false, false, true, !arg_1), vec4<bool>(false, arg_1, all(vec4<bool>(true, arg_1, arg_1, true)), false), func_3()), select(!select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, arg_1, arg_1)), vec4<bool>(false, all(vec4<bool>(true, false, false, false)), true || arg_1, any(vec4<bool>(true, false, arg_1, true))), vec4<bool>(!arg_1, arg_1, all(vec2<bool>(false, false)), true)), arg_1), 0i);
    let var_2 = arg_2 >> (var_0.zz % vec2<u32>(32u));
    global0 = array<vec2<u32>, 24>();
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wyz;
    var var_1 = func_1(6864i, select(true, false, (true & any(vec4<bool>(false, false, true, true))) || (any(vec3<bool>(false, false, false)) != true)), max(vec2<i32>(_wgslsmith_sub_i32(-46303i, ~(-1i)), ~(~(-18166i))), vec2<i32>(-(i32(-1i) * -24386i), min(~0i, abs(-23167i)))), 1i);
    var var_2 = countOneBits(-1i) << (_wgslsmith_clamp_u32(~0u, 49529u, _wgslsmith_div_u32(firstLeadingBit(u_input.a.x) | var_0.x, u_input.a.x)) % 32u);
    global0 = array<vec2<u32>, 24>();
    var_2 = ~(~(-(~(-1i)))) << (u_input.a.x % 32u);
    let var_3 = 2147483647i;
    var var_4 = firstLeadingBit(_wgslsmith_add_vec4_i32(-select(vec4<i32>(var_3, var_3, 2147483647i, var_3), vec4<i32>(var_3, var_3, var_3, 0i), false) << (_wgslsmith_div_vec4_u32(~u_input.a, u_input.a) % vec4<u32>(32u)), -abs(firstTrailingBit(vec4<i32>(var_3, -1i, var_3, -8280i)))));
    let var_5 = any(vec3<bool>(true, u_input.a.x >= _wgslsmith_sub_u32(u_input.a.x, var_0.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~36739u), ~var_0.x), vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_3, var_3), var_4.xz), _wgslsmith_sub_vec2_i32(vec2<i32>(var_4.x, var_4.x), reverseBits(var_4.xy))), 20248i, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(56029i, -1i, -2147483647i) >> (~var_0.x % 32u), var_4.x), 7405i));
}

