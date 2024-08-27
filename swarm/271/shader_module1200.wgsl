struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, !all(vec4<bool>(false, true, true, false))), !vec4<bool>(true && any(vec4<bool>(true, true, false, false)), false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), !(global1[_wgslsmith_index_u32(8946u, 20u)] <= global1[_wgslsmith_index_u32(4294967295u, 20u)])), !(!vec4<bool>(true, true, all(vec3<bool>(true, true, false)), false)));
    global1 = array<f32, 20>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1158f, global1[_wgslsmith_index_u32(63060u, 20u)], all(vec3<bool>(true, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f * -2509f)), true)), -1403f, global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], 2278f, global1[_wgslsmith_index_u32(120u, 20u)]) - vec3<f32>(-2953f, global1[_wgslsmith_index_u32(140735u, 20u)], 986f))))));
    global0 = -874f;
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(~0u, abs(4294967295u)), 0u)), abs(-(~u_input.b.zw) & ~(-vec2<i32>(u_input.a, u_input.a))), -33i, vec4<bool>(true, false, !all(var_0.xy), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 4071i, u_input.a, u_input.c.x), u_input.c)) != (i32(-1i) * -6381i)), select(!(!select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x)), select(vec4<bool>(true, select(true, true, var_0.x), true, true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(any(vec3<bool>(true, false, var_0.x)), any(var_0.wx), true, true)), select(vec4<bool>(true, true | var_0.x, all(var_0.wy), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, true, true, var_0.x)), any(var_0.xw))));
    return select(!select(select(var_2.d, vec4<bool>(false, var_0.x, var_2.e.x, false), select(var_0.x, true, false)), var_2.e, all(var_2.e.wx)), vec4<bool>(true, var_0.x, var_2.d.x, var_2.d.x), var_2.d);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f - global1[_wgslsmith_index_u32(1u, 20u)]) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_f32(trunc(883f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_f32(round(-1027f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], 1202f, global1[_wgslsmith_index_u32(67304u, 20u)], global1[_wgslsmith_index_u32(46549u, 20u)])))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(12523u, 20u)], 1610f, 529f, global1[_wgslsmith_index_u32(73731u, 20u)])) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 1828f, global1[_wgslsmith_index_u32(0u, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(68412u, 20u)], -1307f, -1309f, -605f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], 1318f, global1[_wgslsmith_index_u32(1u, 20u)], -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], 1137f, -662f, -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], 638f, -868f, global1[_wgslsmith_index_u32(106810u, 20u)])))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, true), true)))));
    var var_1 = 634f;
    var var_2 = Struct_1(1u, vec2<i32>(_wgslsmith_div_i32(-21804i, -1i), -(~(u_input.c.x | u_input.a))), ~(u_input.a >> (firstLeadingBit(13308u) % 32u)), func_3(), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), func_3().x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), !vec4<bool>(true, any(vec3<bool>(false, true, true)), false, true), select(func_3(), select(vec4<bool>(true, true, true, true), func_3(), func_3().x), true)));
    var var_3 = global1[_wgslsmith_index_u32(1u, 20u)];
    let var_4 = true && (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -23203i, 0i) | vec3<i32>(var_2.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec3_i32(u_input.c.xwy, ~u_input.c.zxy)) == _wgslsmith_add_i32(reverseBits(-u_input.b.x), countOneBits(u_input.b.x ^ -1i)));
    return 1000f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec3<bool> {
    global1 = array<f32, 20>();
    let var_0 = vec4<bool>(false, false, !any(func_3().xz) | (234f <= _wgslsmith_f_op_f32(arg_1.x * arg_0.x)), all(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(518u, u_input.c.yz, -_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x ^ u_input.b.x), select(min(0i, 70745i), 1i, arg_0.x == arg_1.x)), func_3(), var_0);
    var var_2 = Struct_1(var_1.a, -u_input.b.yy, -_wgslsmith_dot_vec4_i32(vec4<i32>(max(1i, u_input.a), _wgslsmith_mod_i32(-1i, var_1.c), 0i, _wgslsmith_mult_i32(u_input.c.x, -2147483647i)), vec4<i32>(var_1.c, _wgslsmith_sub_i32(14228i, u_input.b.x), ~(-2147483647i), -var_1.b.x)), vec4<bool>(false, (~20060u <= select(var_1.a, var_1.a, false)) & !(var_1.a < 34866u), false, true || func_3().x), select(func_3(), vec4<bool>(_wgslsmith_f_op_f32(1224f + arg_1.x) < 835f, var_0.x, select(any(vec2<bool>(var_1.d.x, var_0.x)), var_1.e.x, true), 1u <= ~var_1.a), vec4<bool>(!var_0.x, var_1.d.x, true, var_1.e.x)));
    return vec3<bool>(var_0.x, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1.a, 20u)], -1049f) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * -197f), 1485f) + 898f), !var_2.d.x);
}

fn func_1() -> u32 {
    let var_0 = !func_4(vec4<f32>(-1364f, 1680f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 298f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(24933u, 20u)], _wgslsmith_f_op_f32(-1742f - global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(49625u, 20u)], 641f), vec2<f32>(1331f, -728f), vec2<bool>(false, true))), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(5692u, 20u)], 182f), vec2<f32>(-1394f, 1421f)))))));
    var var_1 = Struct_1(50708u, u_input.b.zz, -3905i, vec4<bool>(!var_0.x, !(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), true, false), !vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)) && !var_0.x, var_0.x, !func_3().x, func_3().x));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_1.a, 20u)], global1[_wgslsmith_index_u32(var_1.a, 20u)]) - vec2<f32>(global1[_wgslsmith_index_u32(var_1.a, 20u)], 1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1653f, global1[_wgslsmith_index_u32(var_1.a, 20u)]) + vec2<f32>(global1[_wgslsmith_index_u32(var_1.a, 20u)], -557f)) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1472f, global1[_wgslsmith_index_u32(var_1.a, 20u)]) + vec2<f32>(758f, global1[_wgslsmith_index_u32(var_1.a, 20u)])))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(var_1.a, 20u)], global1[_wgslsmith_index_u32(8594u, 20u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(468f, -1275f) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -682f))))))));
    var var_3 = ~(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a)), (vec4<u32>(0u, var_1.a, var_1.a, 0u) >> (vec4<u32>(38403u, 73570u, var_1.a, var_1.a) % vec4<u32>(32u))) << ((vec4<u32>(var_1.a, 1u, 4294967295u, 0u) & vec4<u32>(4294967295u, var_1.a, 61464u, 24091u)) % vec4<u32>(32u))) << (vec4<u32>(56713u, var_1.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.a, var_1.a), 1u), var_1.a) % vec4<u32>(32u)));
    let var_4 = -677f;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 0u, var_1.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_3.x, var_3.x, 129270u), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 7880u, var_3.x, var_1.a), vec4<u32>(var_1.a, var_3.x, var_1.a, 62538u)))), abs(~vec4<u32>(~var_3.x, 4294967295u, 0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(func_1(), 20u)];
    let var_0 = Struct_1(select(_wgslsmith_mod_u32(~0u, 1u), _wgslsmith_add_u32(1u, 1u) >> (firstLeadingBit(11609u) % 32u), false) >> (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(15919u, 4294967295u, 68494u), vec3<u32>(4294967295u, 1u, 3503u)), 112u, false) % 32u), abs(min(~(-vec2<i32>(u_input.c.x, u_input.b.x)), firstTrailingBit(u_input.b.wx))), -5793i, vec4<bool>(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-404f, global1[_wgslsmith_index_u32(9766u, 20u)], -1176f, global1[_wgslsmith_index_u32(39803u, 20u)]))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(27746u, 20u)], global1[_wgslsmith_index_u32(10433u, 20u)], -1592f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -240f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(177f, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<f32>(global1[_wgslsmith_index_u32(36195u, 20u)], 856f))))).x, !select(false, true, any(vec3<bool>(false, true, false))), !any(vec2<bool>(true, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a, 46020u) << (1u % 32u), 128364u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(func_1(), 28292u, ~0u), vec3<u32>(var_0.a & var_0.a, firstTrailingBit(var_0.a), _wgslsmith_clamp_u32(var_0.a, var_0.a, var_0.a))) % 32u), ~_wgslsmith_div_vec2_i32(select(u_input.c.wx, u_input.c.zz, var_0.e.x), -vec2<i32>(1i, u_input.b.x)), var_0.c, select(vec4<bool>(var_0.a >= ~var_0.a, ~var_0.a != 0u, true, true), vec4<bool>(true, any(vec2<bool>(false, var_0.d.x)), -7734i >= abs(u_input.a), (true & var_0.e.x) && var_0.e.x), false), select(!select(!vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.d.x), !var_0.e, var_0.d), var_0.d, !any(var_0.d)));
    var var_2 = var_0;
    var var_3 = 1u;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(var_1.a, var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2316f * global1[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_f32(max(-1000f, 682f)))) - -1012f), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b.zwy, u_input.b.yyz), 1i, -countOneBits(0i)) | var_2.c, ~1u);
}

