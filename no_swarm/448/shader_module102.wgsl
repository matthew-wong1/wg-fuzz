struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<f32, 9>();
    var var_0 = global0[_wgslsmith_index_u32(~((_wgslsmith_mod_u32(arg_2 & 55131u, ~arg_1.a.x) ^ arg_2) ^ _wgslsmith_mod_u32(abs(arg_1.a.x), 16462u)), 9u)];
    global0 = array<f32, 9>();
    let var_1 = vec2<i32>(arg_1.c, -25309i);
    var var_2 = Struct_1(~vec2<u32>(~6229u, 30642u), _wgslsmith_f_op_f32(f32(-1f) * -859f), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, arg_0.c, var_1.x, var_1.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.d, 1u, 59346u, 8322u), vec4<u32>(45179u, arg_2, 15442u, 17921u)) % vec4<u32>(32u)), vec4<i32>(-1i, _wgslsmith_mod_i32(0i, -21765i), u_input.d.x, 1i)), _wgslsmith_mod_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(arg_0.a.x, arg_3.a.x), _wgslsmith_clamp_u32(arg_3.d, 16369u, arg_2) >> (~71622u % 32u)), arg_3.a.x), 1f);
    return !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, ~1u > ~(~arg_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = arg_0;
    let var_1 = 517f;
    var var_2 = var_0;
    let var_3 = !(!(-399f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(2012f * var_0.b)))));
    global1 = firstTrailingBit(firstTrailingBit(arg_0.d)) << (1u % 32u);
    return _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) - var_1)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>) -> u32 {
    global0 = array<f32, 9>();
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(firstTrailingBit(~arg_0.a), _wgslsmith_f_op_f32(-959f * -205f), -1i, _wgslsmith_clamp_u32(reverseBits(arg_0.d), arg_0.a.x, 0u) ^ _wgslsmith_clamp_u32(~arg_0.a.x, ~arg_0.a.x, 20259u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2818f, global0[_wgslsmith_index_u32(arg_0.a.x, 9u)]))))), select(!func_3(arg_0, Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), -201f, arg_0.c, arg_0.a.x, -1102f), countOneBits(14059u), arg_0), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true)));
    let var_1 = select(!vec4<bool>(true, select(any(vec4<bool>(false, false, true, false)), arg_2.x >= -2162i, true), true, firstLeadingBit(61044u) < _wgslsmith_dot_vec4_u32(vec4<u32>(23445u, arg_0.a.x, 32633u, arg_0.a.x), vec4<u32>(33086u, arg_0.d, arg_0.a.x, arg_0.d))), select(vec4<bool>(any(func_3(arg_0, arg_0, 39801u, Struct_1(arg_0.a, global0[_wgslsmith_index_u32(1u, 9u)], arg_2.x, 1201u, global0[_wgslsmith_index_u32(11066u, 9u)]))), !select(true, false, true), true, _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x) != ~arg_0.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), !select(true, false, false)), false);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.d, 39012u, 1u), vec3<u32>(arg_0.a.x, 0u, arg_0.d)), vec3<u32>(arg_0.a.x, arg_0.a.x, 0u))), min(arg_0.a, vec2<u32>(1u, max(4294967295u, 12773u)))), 1025f, -_wgslsmith_div_i32(u_input.c.x, -(~arg_2.x)), 11023u, _wgslsmith_f_op_f32(-var_0));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(max(arg_0.d, _wgslsmith_add_u32(firstTrailingBit(var_2.d), ~36376u)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(14010u, var_2.d, 4294967295u)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(69338u, arg_0.d, 43862u)), vec3<u32>(0u, 102124u, 1u)))), _wgslsmith_div_u32(var_2.a.x, var_2.d));
    return ~var_3.x ^ min(28408u << ((_wgslsmith_mult_u32(0u, var_3.x) | 1u) % 32u), var_3.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = vec2<i32>(1i, -2655i) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~41967u, func_2(arg_0, vec4<i32>(u_input.d.x, u_input.b, -2147483647i, 276i), u_input.d)), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a), min(arg_0.a.x, arg_0.d))), arg_0.a, vec2<u32>(1u, arg_0.d)) % vec2<u32>(32u));
    var var_1 = arg_0;
    global0 = array<f32, 9>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~(arg_0.a.x | var_1.a.x)), ~58320u), ~(~(~arg_0.a.x >> (0u % 32u))));
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~1i), _wgslsmith_sub_i32(-var_1.c, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-37605i, u_input.b, var_0.x), vec3<i32>(-23074i, u_input.b, 0i)), -vec3<i32>(arg_1, var_0.x, var_0.x))), -2147483647i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, arg_0.c), vec2<i32>(-1i, arg_0.c)), ~0i), -57440i, _wgslsmith_div_i32(reverseBits(arg_1), -10524i) << (~(~arg_0.d) % 32u)));
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(10656i, -200i))), ~_wgslsmith_dot_vec2_i32(u_input.d, abs(u_input.d)) >> (30483u % 32u), 26887i);
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<u32>) -> vec3<bool> {
    global1 = ~_wgslsmith_mult_u32(7901u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.zy, vec2<u32>(45877u, arg_0.x)), abs(arg_2.xy)) % 32u), _wgslsmith_clamp_u32(1u, arg_2.x, arg_0.x));
    var var_0 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_2.x, _wgslsmith_add_u32(arg_2.x, arg_0.x), func_2(Struct_1(arg_2.xy, -1071f, arg_1, arg_2.x, global0[_wgslsmith_index_u32(12162u, 9u)]), vec4<i32>(-1i, -2147483647i, -13129i, -25956i), u_input.c)), arg_0.yyz, true), vec3<u32>(4294967295u, 30024u, arg_0.x << (arg_0.x % 32u)) >> (~abs(select(vec3<u32>(arg_2.x, 4294967295u, arg_0.x), vec3<u32>(80852u, arg_2.x, arg_0.x), vec3<bool>(true, false, true))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-442f, _wgslsmith_f_op_f32(1420f + _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.yz, global0[_wgslsmith_index_u32(arg_0.x, 9u)], arg_1, 2358u, -396f), vec3<bool>(false, false, true)))), -472f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(413f, -1667f, global0[_wgslsmith_index_u32(2645u, 9u)]), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(arg_2.x, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 9u)], global0[_wgslsmith_index_u32(48199u, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 9u)], global0[_wgslsmith_index_u32(arg_2.x, 9u)], -2486f), vec3<bool>(false, true, true))))) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 9u)] + global0[_wgslsmith_index_u32(arg_2.x, 9u)]), 1640f, -449f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, -1498f, global0[_wgslsmith_index_u32(73356u, 9u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], 142f, global0[_wgslsmith_index_u32(arg_2.x, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(11628u, 9u)], -978f, global0[_wgslsmith_index_u32(arg_2.x, 9u)])))))))));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = true;
    return vec3<bool>(var_2.x, !var_2.x, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_5(countOneBits(vec4<u32>(1u, 1u, 68712u, 4294967295u)), func_1(Struct_1(vec2<u32>(12877u, 2164u), global0[_wgslsmith_index_u32(22544u, 9u)], -2147483647i, 40210u, global0[_wgslsmith_index_u32(4452u, 9u)]), 20228i), vec3<u32>(60045u, 0u, 0u)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(func_3(Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(47045u, 9u)] * -897f), -u_input.c.x, ~0u, _wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(43518u, 9u)]))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(2202u, 27564u), vec2<u32>(1956u, 4294967295u), vec2<u32>(17220u, 19723u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(39014u, 9u)]), reverseBits(u_input.d.x), 1u, -311f), 1u, Struct_1(abs(vec2<u32>(1979u, 4294967295u)), -384f, -2147483647i, 1u, 725f)), func_5(~vec4<u32>(0u, 0u, 21850u, 0u), -31804i, ~_wgslsmith_add_vec3_u32(vec3<u32>(101077u, 1u, 0u), vec3<u32>(1u, 37149u, 14904u))), false), !vec3<bool>(all(vec3<bool>(true, true, true)), false, true));
    let var_1 = Struct_1(~reverseBits(vec2<u32>(~41467u, ~0u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]), abs(abs(u_input.b) & -1248i), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 9u)] * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(69396u, 9u)]))))));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, -701f, -1267f)))))))));
    var var_4 = var_1;
    var var_5 = var_0.yz;
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, -784f, var_1.b))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1025f, -1530f, 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(942f, var_1.b) + 2111f), _wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(f32(-1f) * -859f)), _wgslsmith_f_op_f32(step(-2028f, var_1.e)))));
}

