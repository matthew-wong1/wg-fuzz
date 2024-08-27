struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(4294967295u, 4294967295u, -393f, -16476i), Struct_1(20263u, 4294967295u, 1221f, -37683i), Struct_1(96606u, 4294967295u, -967f, i32(-2147483648)), Struct_1(30255u, 0u, -121f, 58886i), Struct_1(18302u, 8707u, 487f, i32(-2147483648)), Struct_1(49784u, 4294967295u, -456f, 2147483647i), Struct_1(4294967295u, 78297u, -310f, -15656i), Struct_1(0u, 48209u, -410f, 2147483647i), Struct_1(65643u, 51682u, 1231f, -1i), Struct_1(53825u, 51728u, -1055f, 0i), Struct_1(4294967295u, 0u, -725f, 2147483647i), Struct_1(18835u, 1u, -383f, -1i), Struct_1(4294967295u, 50330u, -1446f, 1i), Struct_1(661u, 304u, -390f, -21111i), Struct_1(13947u, 32246u, 888f, 1i), Struct_1(51425u, 4294967295u, 189f, 17737i), Struct_1(1u, 4294967295u, 241f, 0i));

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 3>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c + global1.c) - _wgslsmith_f_op_f32(f32(-1f) * -120f)), -1094f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, arg_2.c)) * -1966f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1093f, -1954f)))));
    let var_1 = Struct_1(0u, reverseBits(~_wgslsmith_div_u32(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(36171u, 33535u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2108f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + -1830f) * _wgslsmith_f_op_f32(global1.c + -591f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, -440f)))))), arg_1.x);
    global1 = Struct_1(89953u, _wgslsmith_add_u32(abs(var_1.a), _wgslsmith_mod_u32(~arg_2.a, var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-arg_2.c))))), 1435f)), ~(-16045i));
    var var_2 = -1000f;
    var var_3 = var_1;
    return vec4<i32>(-arg_2.d, -77933i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.d ^ arg_1.x, global1.d), arg_1.wz), countOneBits(22288i));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 17>();
    global2 = array<vec2<i32>, 3>();
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_2.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(-arg_2.c)))))));
    var var_0 = vec3<i32>(1i, max(arg_1, -10784i), -2147483647i);
    let var_1 = Struct_1(arg_2.a, 4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))), global1.c)), ~arg_1);
    return vec4<i32>(58640i, _wgslsmith_mod_i32(~(var_0.x ^ 7611i), abs(_wgslsmith_add_i32(-2147483647i, var_1.d))) | _wgslsmith_div_i32(var_1.d, -21095i), _wgslsmith_mod_i32(-2147483647i, u_input.a.x), -13167i);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = 2147483647i;
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(u_input.a & func_2(vec3<u32>(arg_1.x, 0u, 1u), vec4<i32>(global1.d, u_input.a.x, u_input.a.x, var_0), Struct_1(0u, 95693u, 1606f, 38626i)), func_3(vec4<bool>(false, arg_0, true, arg_0), -30180i, global0[_wgslsmith_index_u32(arg_1.x, 17u)]));
    let var_2 = ~u_input.a;
    var_1 = select(~(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-5398i, arg_2.d, 0i, -1i)), -var_2) & var_2), ~func_2(vec3<u32>(reverseBits(71003u), global1.b | arg_1.x, _wgslsmith_mod_u32(arg_2.a, arg_2.b)), vec4<i32>(2147483647i & var_2.x, func_3(vec4<bool>(arg_0, false, global3.x, false), 66370i, Struct_1(69356u, 1u, -1000f, -2147483647i)).x, reverseBits(0i), var_0 << (arg_1.x % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15986u, select(12107u, arg_2.b, true)), 17u)]), select(vec4<bool>(true, !arg_0 & any(vec3<bool>(false, arg_0, global3.x)), true, false), !vec4<bool>(select(arg_0, false, true), select(false, global3.x, true), false, true), any(global3.xz)));
    let var_3 = ~1i << (global1.a % 32u);
    return vec3<bool>(true, !any(vec2<bool>(true, true)), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.a.xxx;
    var var_1 = var_0.yz;
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(53678u, 13971u, 39078u) & vec3<u32>(arg_0.b, 4294967295u, 21716u), abs(vec3<u32>(arg_0.a, global1.b, arg_0.a))), select(vec3<u32>(arg_0.b, 0u, global1.a), vec3<u32>(global1.a, global1.a, 33628u), global3.x) << (min(vec3<u32>(arg_0.a, 4294967295u, 0u), vec3<u32>(arg_0.b, global1.b, 76461u)) % vec3<u32>(32u))) & global1.a, global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.x, 649f, arg_1)), _wgslsmith_f_op_f32(-1930f * global1.c)))))), _wgslsmith_add_i32(0i, i32(-1i) * -_wgslsmith_add_i32(arg_0.d, var_0.x)));
    var_2 = global0[_wgslsmith_index_u32(arg_0.a, 17u)];
    global0 = array<Struct_1, 17>();
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(max(global1.b ^ 45006u, _wgslsmith_div_u32(23409u, var_2.a)), 0u, ~(~arg_0.b), 23872u), abs(abs(abs(vec4<u32>(0u, arg_0.b, var_2.b, global1.a))))), ~(~_wgslsmith_add_u32(1u & arg_0.b, firstTrailingBit(var_2.b))), _wgslsmith_f_op_f32(trunc(global1.c)), ~_wgslsmith_dot_vec2_i32(u_input.a.xx | u_input.a.yx, _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, -8316i), vec2<i32>(global1.d, -10518i))) ^ var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0[_wgslsmith_index_u32(global1.b, 17u)], true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1272f * global1.c), global1.c, 748f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(948f, 855f, 748f), vec3<f32>(global1.c, 397f, global1.c)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, global1.c, false)), _wgslsmith_div_f32(global1.c, global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1162f - global1.c)), -1128f), func_1(399f > global1.c, _wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.b) << (vec2<u32>(4297u, 56528u) % vec2<u32>(32u)), ~vec2<u32>(0u, global1.a)), global0[_wgslsmith_index_u32(1u, 17u)]))));
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) * global1.c), 858f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f + var_0.c) * _wgslsmith_f_op_f32(var_0.c * -441f))))));
    var var_1 = var_0;
    let var_2 = 65389i;
    var_1 = var_0;
    var var_3 = vec2<u32>(max(~25554u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.a, 1u)), vec2<u32>(global1.b, var_0.b) & vec2<u32>(54502u, 67980u))), var_1.a) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b, var_1.b, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 33185u, 1u), vec3<u32>(var_0.b, 50343u, var_1.b))) & global1.b, abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.a, global1.b, 1u, global1.b)), vec4<u32>(var_1.a, var_1.b, var_0.a, var_1.a)))) % vec2<u32>(32u));
    let var_4 = _wgslsmith_dot_vec3_i32(max(u_input.a.xyw, -u_input.a.zyz), select(u_input.a.yzz, vec3<i32>(-24922i, countOneBits(-1i), func_4(Struct_1(1u, var_1.b, global1.c, 23506i), global3.x, vec3<f32>(var_1.c, 1309f, var_0.c)).d), false)) >> (global1.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(min(global1.a, 58949u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c, 1621f))))), vec2<f32>(_wgslsmith_f_op_f32(max(1065f, 432f)), 236f), global3.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -531f)) - _wgslsmith_div_f32(var_1.c, var_1.c)), 1087f, _wgslsmith_f_op_f32(floor(-628f)), 409f))), _wgslsmith_clamp_i32(var_1.d, ~(-(~1i)), var_0.d), ~global1.a ^ var_1.a);
}

