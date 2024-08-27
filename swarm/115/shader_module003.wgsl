struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = arg_2;
    let var_1 = 0i;
    var var_2 = arg_2;
    global0 = array<vec2<u32>, 11>();
    var var_3 = vec2<u32>(~reverseBits((var_2.d.x & 4294967295u) | 1u), arg_2.d.x);
    return var_2.b.x;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<vec2<u32>, 11>();
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 11>();
    var var_1 = select(vec4<u32>(35223u, 55921u, arg_0.a.x, select(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), 31295u, !arg_0.b.x)) | vec4<u32>(~arg_0.a.x & 4294967295u, 107335u, max(min(var_0.d.x, 0u), _wgslsmith_clamp_u32(1u, var_0.a.x, var_0.d.x)), _wgslsmith_sub_u32(1u, var_0.d.x)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, 2304u) ^ vec4<u32>(arg_0.a.x, 0u, 1u, 5673u), ~vec4<u32>(arg_0.d.x, var_0.a.x, 45788u, 1u)) << (vec4<u32>(firstTrailingBit(0u), ~1u, 1u, _wgslsmith_mult_u32(var_0.a.x, arg_0.d.x)) % vec4<u32>(32u))), arg_0.b);
    var var_2 = Struct_1(firstLeadingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.d.x), max(arg_0.a, vec3<u32>(70551u, arg_0.a.x, 58983u))))), !(!select(!var_0.b, arg_0.b, all(vec2<bool>(var_0.b.x, arg_0.b.x)))), -(~(-firstLeadingBit(vec2<i32>(var_0.c.x, var_0.c.x)))), vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, 0u), 1u, 1u));
    return !select(arg_0.b, !vec4<bool>(!arg_0.b.x, false, var_0.b.x && arg_0.b.x, any(vec3<bool>(true, true, false))), var_2.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(~min(firstTrailingBit(14535u), ~1u), arg_0, arg_0 | 14337u), func_4(Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(31414u, arg_0, 45539u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(99940u, arg_0, 5582u))), vec4<bool>(true, func_3(-1i, vec3<bool>(false, false, false), Struct_1(vec3<u32>(1u, 5231u, 4294967295u), vec4<bool>(true, false, true, false), vec2<i32>(13587i, u_input.b.x), vec3<u32>(arg_0, arg_0, arg_0)), arg_1.x), any(vec3<bool>(false, true, false)), true), countOneBits(vec2<i32>(0i, -2147483647i) ^ vec2<i32>(u_input.b.x, 1i)), select(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, arg_0, 1u), true) << (firstTrailingBit(vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u)))), vec2<i32>(u_input.b.x, -17432i), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0, 1u, arg_0), min(vec3<u32>(7221u, 1u, 78262u), ~vec3<u32>(0u, arg_0, arg_0))));
    let var_1 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-981f, _wgslsmith_f_op_f32(sign(arg_1.x))))))));
    let var_2 = var_0;
    global0 = array<vec2<u32>, 11>();
    var var_3 = all(var_0.b);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(43752u, _wgslsmith_mult_u32(~5047u, 4294967295u << (var_0.a.x % 32u)), ~var_2.d.x), vec3<u32>(_wgslsmith_mod_u32(63638u ^ arg_0, 0u), 59948u, ~_wgslsmith_mult_u32(var_2.d.x, arg_0)), vec3<u32>(abs(_wgslsmith_div_u32(arg_0, arg_0)), 43760u, 16201u)) | countOneBits(vec3<u32>(var_2.a.x, var_2.a.x, _wgslsmith_clamp_u32(min(var_2.d.x, var_0.d.x), 0u | var_0.d.x, 21452u << (arg_0 % 32u))));
}

fn func_1(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~abs(vec3<u32>(6698u, 4294967295u, 1u)), func_2(0u, vec4<f32>(1048f, arg_0, arg_0, -931f)) & vec3<u32>(1u, 1u, 1u)) << ((firstTrailingBit(func_2(4294967295u, vec4<f32>(arg_0, arg_0, 1432f, 1000f))) & ~(~vec3<u32>(32625u, 4294967295u, 0u))) % vec3<u32>(32u)), !(!vec4<bool>(false, true, all(vec2<bool>(true, false)), true)), ~(-(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -20408i), vec2<i32>(17135i, -2147483647i)))), ~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 8868u), false));
    var_0 = Struct_1(countOneBits(func_2(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(441f, -551f, arg_1, arg_1), vec4<f32>(624f, arg_0, -858f, arg_1), var_0.b)) - vec4<f32>(arg_0, arg_1, -990f, 767f)))), !var_0.b, _wgslsmith_div_vec2_i32(~var_0.c, u_input.a.yx), vec3<u32>(1u, _wgslsmith_div_u32(var_0.d.x, reverseBits(4294967295u)), var_0.d.x));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(~firstLeadingBit(~vec3<u32>(4294967295u, var_0.d.x, 8877u)), ~var_0.d), var_0.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, min(u_input.a.x, -9641i)), abs(_wgslsmith_mod_i32(1i, -1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, u_input.c, 1i), vec4<i32>(2147483647i, -2147483647i, 18154i, -1i), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.c)) << (vec4<u32>(4294967295u, var_0.a.x, 10349u, var_0.a.x) % vec4<u32>(32u)), ~select(vec4<i32>(var_0.c.x, 2147483647i, u_input.c, u_input.c), vec4<i32>(var_0.c.x, 2147483647i, 0i, 2147483647i), vec4<bool>(var_0.b.x, true, var_0.b.x, true)))), vec3<u32>(var_0.d.x, _wgslsmith_mult_u32(41688u, var_0.d.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x >> (var_0.a.x % 32u), abs(60645u)), _wgslsmith_mod_u32(23495u >> (var_0.a.x % 32u), 75576u | var_0.d.x))));
    var var_2 = min(max(1i, ~(-1i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.c.x, u_input.c, u_input.a.x, 2147483647i) & min(vec4<i32>(var_1.c.x, var_0.c.x, u_input.c, u_input.a.x), vec4<i32>(-17102i, u_input.c, 2147483647i, var_0.c.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_1.c.x, 13663i, var_1.c.x), vec4<i32>(-39013i, u_input.b.x, u_input.b.x, var_0.c.x))))));
    var_0 = Struct_1(~(var_1.d & var_1.a), vec4<bool>(false || all(vec3<bool>(var_1.b.x, var_0.b.x, var_1.b.x)), true, true, true), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-25658i, u_input.c) << (var_0.a.yy % vec2<u32>(32u)), vec2<i32>(-20925i, var_1.c.x)) ^ u_input.a.xx, var_1.d);
    return !(var_1.a.x != ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.yz, vec2<u32>(var_1.d.x, var_0.d.x), vec2<u32>(16423u, 4294967295u)), vec2<u32>(var_0.d.x, var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-776f - -1008f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1884f, 712f))))))));
    global0 = array<vec2<u32>, 11>();
    let var_2 = func_1(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 - var_1)) - _wgslsmith_f_op_f32(-var_1)), -1000f, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    global0 = array<vec2<u32>, 11>();
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(~13119u, 1u), ((4294967295u & var_0) & 1u) >> (~(~4294967295u) % 32u), var_0), vec4<bool>(var_2, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1125f, -1886f, var_2)) - _wgslsmith_f_op_f32(max(1192f, -378f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(850f)) * _wgslsmith_f_op_f32(exp2(var_1)))), func_1(_wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(-var_1)), var_2), _wgslsmith_clamp_vec2_i32(u_input.b.yx, u_input.a.xx, vec2<i32>(firstTrailingBit(u_input.b.x), -1i)) & max(u_input.a.yy, abs(vec2<i32>(0i, -28999i))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, 1u), ~vec3<u32>(var_0, 0u, 26593u)) >> (~(~vec3<u32>(1u, var_0, 0u)) % vec3<u32>(32u)), vec3<u32>(~var_0, countOneBits(countOneBits(83185u)), 1u), !(_wgslsmith_f_op_f32(sign(var_1)) > 940f)));
    var_3 = Struct_1(vec3<u32>(~1u, _wgslsmith_add_u32(0u, ~var_0), _wgslsmith_dot_vec3_u32(~var_3.d, var_3.a & var_3.d)) | ((_wgslsmith_sub_vec3_u32(var_3.a, var_3.d) | (vec3<u32>(80360u, 4294967295u, var_0) | vec3<u32>(var_0, 6850u, var_0))) ^ (~var_3.a ^ var_3.d)), vec4<bool>(!(~30709i > (u_input.c ^ u_input.a.x)), _wgslsmith_sub_i32(37759i, 45902i) >= var_3.c.x, !(_wgslsmith_f_op_f32(var_1 * -163f) < _wgslsmith_f_op_f32(sign(-1800f))), true), ~u_input.b.zy, vec3<u32>(_wgslsmith_mod_u32(27712u ^ var_3.d.x, var_3.d.x >> (1u % 32u)) << (~(~4294967295u) % 32u), ~(_wgslsmith_add_u32(var_3.d.x, var_3.a.x) << (reverseBits(31006u) % 32u)), var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(56273u, var_3.c.x, 4294967295u, -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -716f)));
}

