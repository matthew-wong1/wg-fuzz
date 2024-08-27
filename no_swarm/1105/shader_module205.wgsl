struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<u32, 20>;

var<private> global3: Struct_1 = Struct_1(-13730i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-909f, 410f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-767f, _wgslsmith_f_op_f32(-921f * -571f)) + vec2<f32>(544f, _wgslsmith_f_op_f32(-1000f - -2511f)))), -1i, Struct_1(firstTrailingBit(44508i)), arg_0);
    global3 = var_0.c;
    global1 = Struct_1(~(-(~(~(-2147483647i)))));
    let var_1 = !(!vec3<bool>(any(vec4<bool>(false, true, true, true)), true, select(true, true, true)));
    let var_2 = _wgslsmith_div_i32(-firstLeadingBit(~var_0.b << (~54271u % 32u)), countOneBits(_wgslsmith_div_i32(2147483647i, -_wgslsmith_mult_i32(global1.a, 45489i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_3(~arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(547f, 274f), -528f)))), 0i, Struct_1(2147483647i), arg_0);
    var var_1 = vec2<u32>(_wgslsmith_div_u32(114736u, max(select(_wgslsmith_dot_vec4_u32(vec4<u32>(21343u, var_0.d.x, global2[_wgslsmith_index_u32(73030u, 20u)], global2[_wgslsmith_index_u32(arg_1, 20u)]), vec4<u32>(arg_1, 817u, arg_1, 4294967295u)), ~1u, true), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(~arg_0.x, 20u)], _wgslsmith_add_u32(0u, var_0.d.x), true), 20u)], 20u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_0.d.xx, vec2<u32>(abs(1u), max(_wgslsmith_mod_u32(39397u, 5077u), 13532u))), 20u)]);
    var var_2 = var_0.a;
    var var_3 = ~var_0.d.xxy;
    let var_4 = vec3<u32>(~arg_0.x, ~(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(43745u, var_1.x), vec2<u32>(global2[_wgslsmith_index_u32(var_3.x, 20u)], arg_1)), reverseBits(vec2<u32>(arg_1, arg_1))) | _wgslsmith_clamp_u32(77259u, var_1.x | 292u, var_0.d.x << (var_1.x % 32u))), firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(2453u, 20u)], 1u), vec3<u32>(0u, arg_0.x, var_1.x)), var_3.x, 4294967295u), 20u)] ^ global2[_wgslsmith_index_u32(var_3.x, 20u)]));
    return Struct_2(var_0.a, 2147483647i, var_0.c, _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(arg_0, arg_0)), select(select(arg_0, arg_0, !vec4<bool>(arg_2, true, false, true)), ~(~arg_0), vec4<bool>(true, arg_2, !arg_2, false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_2(arg_2, arg_2.x, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))));
    global0 = true;
    var_0 = func_2(func_2(vec4<u32>(54700u, arg_2.x, 31688u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(3883u, 20u)], arg_0.x) | firstTrailingBit(arg_0.x)), var_0.d.x, any(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, all(vec3<bool>(true, false, true))))).d, 1u, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.x >= global2[_wgslsmith_index_u32(arg_0.x, 20u)])));
    global1 = var_0.c;
    global0 = !any(vec2<bool>(true, true)) || true;
    return Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(var_0.c.a, u_input.a)), select(~vec2<i32>(1i, global1.a), min(vec2<i32>(-2147483647i, global1.a), vec2<i32>(var_0.b, var_0.c.a)), vec2<bool>(false, true)) >> (~(vec2<u32>(1u, arg_0.x) ^ vec2<u32>(global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)])) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = !vec2<bool>(false, !(_wgslsmith_f_op_f32(sign(1470f)) < _wgslsmith_f_op_f32(-736f * 863f)));
    global3 = func_1(~select(abs(~vec4<u32>(global2[_wgslsmith_index_u32(36156u, 20u)], 77798u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)])), vec4<u32>(global2[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_add_u32(0u, 0u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(78565u, 20u)], 1u, global2[_wgslsmith_index_u32(18683u, 20u)]), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43748u, 20u)], 20u)])), select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), vec4<bool>(true, var_1.x, false, false), true)), _wgslsmith_div_vec2_f32(vec2<f32>(-1070f, 203f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], 27457u), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(8331u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80967u, 20u)], 20u)], 4294967295u), vec4<u32>(59157u, global2[_wgslsmith_index_u32(4294967295u, 20u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)])), ~vec4<u32>(9081u, 0u, 16602u, global2[_wgslsmith_index_u32(1u, 20u)])) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19311u, 20u)], 20u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14368u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 0u), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2068u, 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 4294967295u))));
    global2 = array<u32, 20>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-797f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -2062f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-836f, _wgslsmith_f_op_f32(floor(309f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1649f * -195f) * _wgslsmith_f_op_f32(floor(1284f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(abs(1200f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2018f + 172f)))))));
    return Struct_1(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-803f)));
    let var_1 = -41669i;
    global1 = func_4(func_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 1u, 33252u, global2[_wgslsmith_index_u32(0u, 20u)]), firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(5904u, 20u)], 76128u, 38352u, 11517u) ^ vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52470u, 20u)], 20u)], 36641u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1992f)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 37178u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)]), vec4<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 59128u, global2[_wgslsmith_index_u32(1u, 20u)], 66329u) & vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(12015u, 20u)], 0u, global2[_wgslsmith_index_u32(50924u, 20u)]), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17617u, 20u)], 20u)], 1u, 37709u, 4294967295u))))));
    var var_2 = Struct_1(~(-16035i));
    let var_3 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43445u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22215u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(8407u, 20u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22685u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(1u, 20u)], 1u, global2[_wgslsmith_index_u32(1u, 20u)])) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)] | 4294967295u, 20u)] % 32u), ~firstTrailingBit(67209u)), _wgslsmith_add_vec2_u32(~vec2<u32>(73504u, 90350u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(49353u, 20u)], 1u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(11680u, global2[_wgslsmith_index_u32(0u, 20u)]) | vec2<u32>(4294967295u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59914u, 20u)], 20u)])))), true), _wgslsmith_add_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52748u, 20u)], 20u)] & (global2[_wgslsmith_index_u32(31750u, 20u)] ^ 0u), firstLeadingBit(0u) ^ global2[_wgslsmith_index_u32(66095u, 20u)]), vec2<u32>(6092u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)] ^ 0u, 20u)])), ~max(reverseBits(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(20059u, 20u)])), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26009u, 20u)], 20u)], 26389u)) | ~(~max(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43443u, 20u)], 20u)], 20u)], 52662u), vec2<u32>(49614u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), var_0), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -634f))))))));
}

