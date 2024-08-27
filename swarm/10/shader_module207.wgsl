struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(2147483647i, 44478i, vec3<f32>(419f, -759f, 1115f), -170f), Struct_1(i32(-2147483648), 0i, vec3<f32>(-874f, 1637f, 508f), -1366f), Struct_1(0i, 1i, vec3<f32>(-1000f, 2725f, -1622f), -291f), Struct_1(0i, 11408i, vec3<f32>(-133f, -1962f, -402f), -1188f), Struct_1(-824i, 11905i, vec3<f32>(-1000f, -303f, -1165f), 1090f), Struct_1(-21580i, 21042i, vec3<f32>(-1351f, 216f, 315f), 1186f), Struct_1(49943i, -1i, vec3<f32>(-2246f, 382f, -1199f), -469f), Struct_1(1i, 0i, vec3<f32>(-856f, -226f, -1961f), -287f), Struct_1(2147483647i, -1i, vec3<f32>(-1085f, -1843f, -1273f), 745f), Struct_1(0i, 0i, vec3<f32>(-1735f, 222f, 266f), 772f), Struct_1(22463i, 1i, vec3<f32>(555f, 1489f, 1000f), -1452f), Struct_1(-41683i, 2147483647i, vec3<f32>(597f, -1569f, -1247f), -526f));

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    global0 = array<Struct_1, 12>();
    let var_0 = vec2<i32>(arg_2.x, countOneBits(~arg_3.x));
    let var_1 = vec2<bool>(~u_input.a.x != _wgslsmith_dot_vec3_u32(vec3<u32>(14519u, 4294967295u, 4294967295u) & ~arg_0.b, _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0.b.x, u_input.a.x)), vec3<u32>(4294967295u, 4294967295u, 29670u))), ~abs(_wgslsmith_dot_vec2_u32(arg_0.b.zx, u_input.a.zz)) <= 1u);
    var var_2 = -28754i;
    global0 = array<Struct_1, 12>();
    return !var_1.x;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_2(vec4<u32>(~59899u, _wgslsmith_mult_u32(~0u, arg_0 & 53024u), 19175u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30546u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(8857u, 0u, 6473u, u_input.a.x)), _wgslsmith_clamp_u32(0u, 27990u, arg_0))) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(61861u, arg_0, u_input.a.x, u_input.a.x)) | vec4<u32>(u_input.a.x, ~u_input.a.x, 7399u, arg_0), ~max(reverseBits(vec4<u32>(67760u, 1u, arg_0, 0u)), vec4<u32>(u_input.a.x, 4294967295u, 61966u, 4294967295u))), _wgslsmith_sub_i32(1i, i32(-1i) * -reverseBits(2147483647i)), global0[_wgslsmith_index_u32(0u, 12u)]);
    global0 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-37337i, 20750i), vec2<i32>(-1i, var_0.e.b)), ~2147483647i & _wgslsmith_add_i32(var_0.d, var_0.e.a)), _wgslsmith_sub_i32(1i & var_0.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(11148i, 84262i), var_0.d))), min(~min(vec2<i32>(1i, -1i) ^ vec2<i32>(var_0.d, 24308i), vec2<i32>(var_0.d, 15877i)), select(min(select(vec2<i32>(-1i, 0i), vec2<i32>(-1i, var_0.e.a), vec2<bool>(true, true)), vec2<i32>(var_0.d, 38170i)), ~select(vec2<i32>(var_0.d, -1i), vec2<i32>(5350i, var_0.e.b), false), any(vec3<bool>(false, true, false)))));
    global0 = array<Struct_1, 12>();
    var var_2 = _wgslsmith_div_u32(reverseBits(~28248u), reverseBits(~abs(1u)));
    return abs(_wgslsmith_add_i32(-_wgslsmith_sub_i32(-8935i, -var_0.e.b), ~(-(~var_0.d))));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1000f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f * 220f) + arg_0.x));
    global0 = array<Struct_1, 12>();
    let var_0 = 0i == func_3(u_input.a.x);
    var var_1 = Struct_2(abs(~vec4<u32>(18029u, u_input.a.x, ~u_input.a.x, 42114u << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(sign(-943f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + _wgslsmith_f_op_f32(ceil(2345f)))))), _wgslsmith_mult_vec4_u32(select(~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) ^ vec4<u32>(85939u, 4294967295u, 30733u, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(124369u, u_input.a.x, 59442u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, 12695u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yz), 1u, 1u, u_input.a.x)), 1i, Struct_1(-max(~0i, 1i), 7273i, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) - _wgslsmith_f_op_f32(sign(1744f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f))))));
    var var_2 = var_1.a;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-2608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, -1212f))));
    var var_1 = !vec4<bool>(_wgslsmith_clamp_i32(i32(-1i) * -1i, abs(0i), ~(-2147483647i)) > _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14577i, -26229i, 26970i, 1137i), vec4<i32>(-51640i, -16668i, 1i, 2147483647i)), 0i, ~1i), func_1(Struct_3(var_0, u_input.a), vec3<f32>(var_0, -233f, var_0), reverseBits(vec2<i32>(11778i, -1i)), max(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(-38597i, -1i, 34871i))) | select(true, true, u_input.a.x != u_input.a.x), !(func_2(vec2<f32>(-851f, var_0)) > firstLeadingBit(u_input.a.x)), all(vec3<bool>(true, true, true)));
    global1 = any(!var_1.wyw);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-115f)))), _wgslsmith_f_op_f32(f32(-1f) * -323f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(-178f, _wgslsmith_f_op_f32(select(-720f, _wgslsmith_div_f32(var_0, 1000f), !var_1.x))))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) * _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(-1265f + var_0)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1024f - var_0), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-var_0))));
    let var_3 = Struct_3(var_0, min(u_input.a, u_input.a) & (countOneBits(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) >> (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 47058u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a) % vec3<u32>(32u))));
    var var_4 = ~vec2<i32>(1i, _wgslsmith_clamp_i32(func_3(4294967295u), ~(-1i), 1i)) << (vec2<u32>(min(_wgslsmith_div_u32(reverseBits(var_3.b.x), u_input.a.x), u_input.a.x), func_2(var_2.zw)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(max(1u ^ reverseBits(_wgslsmith_div_u32(u_input.a.x, var_3.b.x)), var_3.b.x), -_wgslsmith_sub_vec3_i32((vec3<i32>(var_4.x, -38733i, var_4.x) & vec3<i32>(35289i, 41110i, -34897i)) << (var_3.b % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(0i, var_4.x, var_4.x), abs(vec3<i32>(var_4.x, var_4.x, var_4.x)))));
}

