struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(61400u, 0u, 33372u, 9327u, 35060u, 4294967295u, 56651u, 1u, 10954u, 47007u, 2303u, 70081u, 43173u, 26955u, 0u, 32271u, 4294967295u, 1u, 4294967295u, 15858u);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<u32, 20>();
    global1 = vec2<bool>(any(select(!select(vec2<bool>(false, false), vec2<bool>(arg_1.e, arg_1.e), vec2<bool>(arg_1.e, global1.x)), select(vec2<bool>(true, true), !vec2<bool>(false, arg_1.e), arg_1.e && false), !arg_1.e || false)), global1.x);
    var var_0 = Struct_1(1u, (i32(-1i) * -u_input.b) | _wgslsmith_clamp_i32(u_input.b, 1i, -max(-11506i, u_input.b)), countOneBits(-_wgslsmith_clamp_i32(-46473i ^ arg_1.b, u_input.b, 1i)), arg_1.d, _wgslsmith_mult_i32(1i, u_input.b) <= _wgslsmith_mod_i32(~_wgslsmith_div_i32(2147483647i, 34336i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_1.c, -1i, 0i), vec4<i32>(arg_1.c, 6660i, u_input.b, u_input.b)), firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)))));
    let var_1 = arg_1;
    var var_2 = false;
    return Struct_1(5099u, firstTrailingBit(reverseBits(var_1.b)), -2147483647i, abs(-(~vec4<i32>(var_0.d.x, var_0.c, 1i, u_input.b))), all(vec3<bool>(true, select(var_0.e, true, true) | true, _wgslsmith_div_f32(arg_0.x, -1201f) == _wgslsmith_f_op_f32(1105f * -881f))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(!all(vec3<bool>(false, !arg_1.e, true)), arg_1.e);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy + vec2<f32>(1409f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1172f, -536f)))) + vec2<f32>(1520f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x * 756f))))), Struct_1(1u, 1i, ~3595i, -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_1.d.x, arg_1.c, arg_3.x), arg_1.d, vec4<i32>(arg_1.b, arg_1.d.x, -2705i, -1i))), true), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u & u_input.a.x, arg_1.a, ~1u), 0u), ~_wgslsmith_mult_u32(u_input.a.x >> (47976u % 32u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 20u)], u_input.a.x)), firstTrailingBit(~_wgslsmith_mod_u32(arg_1.a, 25327u))));
    global1 = !(!var_0);
    let var_2 = 30653i;
    global1 = select(vec2<bool>(!any(var_0), false), !var_0, !(-21236i < _wgslsmith_clamp_i32(var_2, -1i, _wgslsmith_add_i32(var_1.c, 56300i))));
    return func_2(vec2<f32>(121f, arg_2.x), Struct_1(~select(1u, select(19260u, 32681u, true), true), ~(~reverseBits(1i)), arg_3.x, _wgslsmith_mult_vec4_i32((arg_1.d ^ vec4<i32>(1i, 41478i, var_1.c, arg_1.b)) << (vec4<u32>(var_1.a, u_input.a.x, 0u, 36887u) % vec4<u32>(32u)), arg_1.d), !all(select(var_0, var_0, global1.x))), ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, global0[_wgslsmith_index_u32(32808u, 20u)], arg_1.a), ~vec3<u32>(35827u, var_1.a, arg_1.a))));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<u32, 20>();
    let var_0 = vec3<bool>(any(vec4<bool>(global1.x, true, true, global1.x)), !any(!select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, false, false, false), false)), false != arg_0.e);
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(arg_0.d.wy, ~select(vec2<i32>(-38933i, -2147483647i), arg_0.d.xw, any(vec2<bool>(true, false)))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, 451f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(688f, -859f) + vec2<f32>(-1587f, -779f))))), arg_0, select(~u_input.a.yyz >> (u_input.a.yzx % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_0.a, u_input.a.x, u_input.a.x) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.a) % vec3<u32>(32u))), arg_0.e)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -(~(arg_0.d.x >> (arg_0.a % 32u))), _wgslsmith_add_i32(39460i, reverseBits(u_input.b)) >> (abs(_wgslsmith_add_u32(2879u, u_input.a.x)) % 32u), ~vec4<i32>(_wgslsmith_sub_i32(-1i, -4624i), arg_0.d.x, arg_0.c, -5562i), global1.x));
    global0 = array<u32, 20>();
    var var_2 = arg_0.d.yz;
    return max(arg_0.d, -(~min(vec4<i32>(-2147483647i, 0i, 1i, arg_0.c), -arg_0.d)));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<u32, 20>();
    let var_0 = Struct_2(~u_input.b, Struct_1(4294967295u, 0i, u_input.b, func_4(func_3(vec4<f32>(arg_0, 741f, -227f, 480f), func_2(vec2<f32>(arg_0, arg_0), Struct_1(1u, -2147483647i, u_input.b, vec4<i32>(-1i, 2147483647i, u_input.b, 0i), false), vec3<u32>(global0[_wgslsmith_index_u32(47156u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(42847u, 20u)])), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-359f, arg_0, -434f, -375f), vec4<f32>(444f, 1064f, arg_0, 1497f))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -20163i), vec2<i32>(29259i, u_input.b)))), global1.x), func_3(vec4<f32>(113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) + _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1527f)), _wgslsmith_f_op_f32(1150f + arg_0)), arg_0), Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 20u)])), vec2<u32>(1u, 1u)), min(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), max(u_input.b, reverseBits(-1i)), vec4<i32>(-5982i, func_2(vec2<f32>(225f, 399f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], -12145i, u_input.b, vec4<i32>(39446i, -8150i, -34350i, -1i), false), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(57780u, 20u)], 45019u)).c, func_2(vec2<f32>(-998f, arg_0), Struct_1(43088u, -1i, 17015i, vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), false), u_input.a.xzx).d.x, _wgslsmith_div_i32(20780i, u_input.b)), !(arg_0 > -108f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, 311f, arg_0, 109f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, -736f, arg_0, arg_0)))), vec2<i32>(u_input.b, 1i)));
    let var_1 = !select(vec4<bool>(~u_input.b <= -17591i, true != global1.x, false, u_input.a.x != firstLeadingBit(global0[_wgslsmith_index_u32(14798u, 20u)])), select(!select(vec4<bool>(var_0.c.e, false, false, global1.x), vec4<bool>(var_0.b.e, var_0.b.e, true, var_0.c.e), vec4<bool>(true, false, var_0.b.e, global1.x)), vec4<bool>(false, all(vec2<bool>(true, global1.x)), global1.x, any(vec4<bool>(var_0.b.e, var_0.b.e, global1.x, false))), (u_input.b < 2147483647i) && true), all(select(vec2<bool>(var_0.b.e, global1.x), vec2<bool>(var_0.c.e, false), vec2<bool>(global1.x, false))));
    var var_2 = var_0.c.c;
    var var_3 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-540f, arg_0, arg_0, 1314f) - vec4<f32>(arg_0, arg_0, -1154f, -620f)), vec4<f32>(229f, arg_0, arg_0, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(1163f - arg_0)), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, arg_0, arg_0) * vec4<f32>(arg_0, -495f, 1000f, 479f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 458f, 507f, -485f)), true)))), Struct_1(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(1u, 4294967295u)), -13921i, abs(i32(-1i) * -9656i), var_0.b.d, func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, -382f) + vec2<f32>(294f, -115f)), func_3(vec4<f32>(arg_0, arg_0, arg_0, arg_0), Struct_1(var_0.c.a, -2147483647i, 51011i, var_0.b.d, var_1.x), vec4<f32>(arg_0, arg_0, arg_0, arg_0), var_0.b.d.ww), ~vec3<u32>(43058u, global0[_wgslsmith_index_u32(8716u, 20u)], 15700u)), vec3<u32>(~104707u, reverseBits(23902u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_0.c.a), vec3<u32>(4294967295u, 9812u, 44785u)))).e), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(-arg_0), 1f, arg_0), -(~select(vec2<i32>(u_input.b, -79755i), var_0.b.d.xy, var_1.wz)) ^ firstTrailingBit(firstLeadingBit(max(var_0.c.d.ww, vec2<i32>(u_input.b, 1i)))));
    return _wgslsmith_f_op_f32(894f * arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(min(-736f, 114f))))) <= -1530f);
    var var_1 = ~(~firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45030u, 20u)], 20u)], 1u, _wgslsmith_sub_u32(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48941u, 20u)], 20u)]))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2932f)), 1630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1109f, 407f)), _wgslsmith_f_op_f32(-448f - -283f))))));
    global0 = array<u32, 20>();
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2146f + _wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))) + var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * -234f)))));
    var var_3 = _wgslsmith_sub_u32(~(~(~5805u)), ~(global0[_wgslsmith_index_u32(countOneBits(0u), 20u)] >> (u_input.a.x % 32u)) | 0u);
    var var_4 = _wgslsmith_f_op_vec3_f32(var_2.wwx + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), -739f), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1693f, var_2.x)) + -396f)));
    let x = u_input.a;
    s_output = StorageBuffer((func_4(Struct_1(var_1.x, -5076i, 0i, vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), false)).wz | firstTrailingBit(-vec2<i32>(0i, 0i))) << (var_1.zz % vec2<u32>(32u)));
}

