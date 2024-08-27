struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(30618i, 2147483647i, -16100i);

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: u32 = 39134u;

var<private> global3: u32 = 1u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(1468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1640f)) - _wgslsmith_f_op_f32(-arg_1.x)));
    return Struct_2(Struct_1(vec4<bool>(!arg_0.x, arg_0.x, all(arg_0), arg_0.x)), arg_1.xy);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: f32) -> vec4<i32> {
    global2 = max(u_input.b.x, reverseBits(firstTrailingBit(arg_1)));
    var var_0 = _wgslsmith_f_op_f32(abs(arg_3));
    let var_1 = arg_3;
    var var_2 = func_2(vec4<bool>(any(vec4<bool>(select(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.x, true, arg_0.a.x)), true, !arg_0.a.x, !(u_input.a.x > global0.x) & all(vec2<bool>(true, false))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1032f, 476f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, -842f)))))).a;
    var_2 = Struct_1(vec4<bool>(all(var_2.a), any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), all(!vec3<bool>(arg_0.a.x, false, false)), all(vec2<bool>(true, arg_0.a.x))));
    return ~select(-abs(countOneBits(vec4<i32>(global0.x, 2147483647i, global0.x, -1i))), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -2147483647i, -13057i, -1i), vec4<i32>(u_input.a.x, 1i, -14630i, u_input.e)), global0.x, global0.x, -u_input.e)), true);
}

fn func_1() -> vec4<i32> {
    var var_0 = vec3<u32>((~1u & u_input.d) ^ u_input.c, u_input.b.x, u_input.c);
    let var_1 = func_2(select(vec4<bool>(true, all(select(global1[_wgslsmith_index_u32(0u, 30u)], vec3<bool>(false, false, false), true)), true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(true, true, false)), !vec4<bool>(true, true, all(global1[_wgslsmith_index_u32(var_0.x, 30u)]), global0.x >= -2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * _wgslsmith_f_op_f32(abs(-1177f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) * _wgslsmith_f_op_f32(sign(-1109f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(796f + 391f), -2299f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(min(196f, 229f))), -1054f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-405f)))));
    let var_2 = _wgslsmith_clamp_vec4_i32(-func_3(var_1.a, ~70225u, 1u, _wgslsmith_f_op_f32(trunc(-469f))), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(global0.x), ~_wgslsmith_div_i32(-32123i, -53757i)), -31874i, i32(-1i) * -7023i, u_input.e), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 0i, global0.x, global0.x), vec4<i32>(global0.x, 1i, -6742i, 81884i)) >> (vec4<u32>(u_input.d, 52061u, var_0.x, 54736u) % vec4<u32>(32u))) << (vec4<u32>(1u, ~var_0.x, ~(~2178u), u_input.d) % vec4<u32>(32u)));
    global1 = array<vec3<bool>, 30>();
    global3 = 5191u;
    return _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~2147483647i >> (_wgslsmith_add_u32(u_input.c, u_input.d) % 32u), func_3(func_2(vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), vec4<f32>(var_1.b.x, var_1.b.x, 1448f, 1885f)).a, abs(var_0.x), u_input.b.x, _wgslsmith_div_f32(-1154f, -2307f)).x, -1i, _wgslsmith_mod_i32(u_input.a.x, ~u_input.e)), func_3(Struct_1(select(vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, false), var_1.a.a, false)), ~0u, ~u_input.b.x << ((u_input.b.x & 10698u) % 32u), -890f)), vec4<i32>(~u_input.a.x, ~1i | select(13656i, 0i, var_0.x >= u_input.c), 0i, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec2<bool>(all(!global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), true));
    let var_1 = Struct_1(vec4<bool>(((u_input.d & u_input.b.x) & u_input.b.x) < u_input.b.x, !(!any(vec3<bool>(var_0, true, var_0))), all(vec2<bool>(all(vec4<bool>(true, false, var_0, false)), true)), all(vec4<bool>(true, any(global1[_wgslsmith_index_u32(110898u, 30u)]), !var_0, !var_0))));
    let var_2 = Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1066f, _wgslsmith_div_f32(-1510f, -644f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(987f)), -1750f))));
    var var_3 = -reverseBits(~(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.e, -27605i, 66503i)));
    var_3 = _wgslsmith_mult_vec4_i32(func_1(), ~vec4<i32>(_wgslsmith_mod_i32(-29760i, u_input.a.x) ^ 1i, select(-21916i, -2147483647i, var_0), max(63229i | global0.x, var_3.x), ~1i));
    var var_4 = var_2.a;
    let var_5 = _wgslsmith_clamp_u32(0u, ~(51135u | _wgslsmith_sub_u32(abs(4294967295u), min(u_input.b.x, 54694u))), ~_wgslsmith_mult_u32(firstTrailingBit(~u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.d)), vec4<u32>(31089u, u_input.c, u_input.b.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, 4294967295u);
}

