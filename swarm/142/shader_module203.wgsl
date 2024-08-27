struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<f32, 10> = array<f32, 10>(-170f, 694f, 1000f, 604f, 207f, 768f, -1024f, -1343f, -1273f, 1344f);

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<u32> {
    var var_0 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(true, false, false)), true != any(vec2<bool>(false, false)))), select(!vec3<bool>(true, global2.c < global2.e, select(false, true, true)), select(vec3<bool>(global2.e > global2.e, true, all(vec3<bool>(false, true, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, -450f <= global2.b), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true));
    let var_1 = Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(min(global2.e, 7491u) | _wgslsmith_add_u32(global2.e, global2.e), 10u)], global2.c, ~(~(-global2.d)), global2.e);
    let var_2 = global2.a ^ 2147483647i;
    global2 = Struct_1(59610i, _wgslsmith_f_op_f32(var_1.b + 739f), 0u, -10908i, ~_wgslsmith_clamp_u32(var_1.e, ~29546u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e, var_1.e, 1u), vec3<u32>(var_1.c, 0u, 40008u)) & _wgslsmith_mult_u32(1u, 0u)));
    var var_3 = global0[_wgslsmith_index_u32(~global2.e, 19u)];
    return ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global2.c << (0u % 32u), _wgslsmith_add_u32(var_1.c, var_3.e)), reverseBits(countOneBits(var_3.c))), max((vec2<u32>(global2.c, 72872u) | vec2<u32>(0u, var_1.c)) | ~vec2<u32>(var_3.e, global2.c), vec2<u32>(var_3.c, ~0u)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~func_3(), vec2<u32>(0u, 13380u)), 19u)];
    global0 = array<Struct_1, 19>();
    global2 = Struct_1(2147483647i, 114f, max(1u << (abs(global2.c & 3954u) % 32u), arg_2.x), -1i, arg_2.x);
    global0 = array<Struct_1, 19>();
    let var_0 = -(~arg_1) | _wgslsmith_dot_vec3_i32(select(~u_input.a, u_input.a, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), any(vec4<bool>(false, true, true, false)))), -(~(-u_input.a)));
    return Struct_1(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, 8590u), 10u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.e, global2.c), max(~(4294967295u & arg_2.x), ~arg_2.x)), 0i, select(func_3().x, ~arg_2.x & 22805u, true));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(75365u, 19u)];
    var var_1 = func_2(_wgslsmith_clamp_i32(global2.d ^ var_0.d, select(u_input.a.x, 0i, true & all(vec3<bool>(false, true, false))), global2.a), arg_0.d, _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, 70527u, arg_0.c, global2.c), vec4<u32>(global2.e, 19922u, var_0.e, arg_0.e)), _wgslsmith_add_u32(16221u, global2.c), ~var_0.e)), ~(~vec4<u32>(arg_0.e, 4294967295u, global2.e, arg_0.c))));
    var_1 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(select(2147483647i, -39909i << (var_1.c % 32u), true)), 6386i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f), 1f), 1u, func_2(arg_0.d, firstTrailingBit(10419i), vec4<u32>(4294967295u, var_1.e, func_3().x, _wgslsmith_clamp_u32(arg_0.e, global2.c, ~1u))).d, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(100127u, var_1.e, 6802u), abs(vec3<u32>(4294967295u, 4294967295u, var_0.e))), select(~1u, firstLeadingBit(var_1.e) << (~global2.c % 32u), any(vec2<bool>(true, true)) & true)));
    var var_2 = u_input.a;
    var var_3 = !select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), true)), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    return Struct_1(-_wgslsmith_clamp_i32(var_1.d, var_1.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4360i, arg_0.a, arg_0.a, var_0.d), vec4<i32>(var_0.d, global2.d, 0i, var_2.x)), var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -546f), 1u, _wgslsmith_mod_i32(u_input.a.x, ~firstLeadingBit(var_1.a)), var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_4(Struct_1(-2147483647i, global1[_wgslsmith_index_u32(global2.e, 10u)], _wgslsmith_add_u32((arg_0.c | 4294967295u) >> (func_2(arg_1.a, arg_1.d, vec4<u32>(1u, global2.c, 12173u, 4294967295u)).e % 32u), select(arg_1.c, global2.c, true)), -arg_1.d, 1u));
    let var_1 = Struct_1(-1303i, 418f, 0u, arg_1.d >> (_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(42768u, 4294967295u), vec2<u32>(1352u, 1u))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.e, var_0.c), vec2<u32>(1u, 1u)), ~vec2<u32>(arg_1.e, global2.c))) % 32u), func_3().x);
    var var_2 = 40079i;
    global1 = array<f32, 10>();
    let var_3 = arg_0;
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(func_5(func_4(func_2(arg_1.d, -17118i, vec4<u32>(0u, 45686u, arg_1.e, 24181u))), func_2(~(-2147483647i), _wgslsmith_sub_i32(global2.d, global2.a), vec4<u32>(global2.e, 0u, 1u, arg_1.e))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~0u, firstTrailingBit(arg_0.e), ~global2.e), max(arg_0.c, arg_0.e & 0u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.c, 73027u), abs(global2.e)) >> (global2.c % 32u)), ~(~(~(~vec3<u32>(86051u, arg_0.e, 61517u)))));
    global2 = arg_0;
    let var_1 = var_0.x;
    global1 = array<f32, 10>();
    var var_2 = all(vec3<bool>(false, select(false, false, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c, 10u)]) * func_4(global0[_wgslsmith_index_u32(0u, 19u)]).b) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f - -129f))));
    return _wgslsmith_mult_i32(-(max(arg_1.d, 2147483647i) << (~15890u % 32u)), global2.d);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(~abs(abs(1i)), global1[_wgslsmith_index_u32(arg_1.c, 10u)], arg_1.c, -(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zz)), ~4294967295u);
    global2 = Struct_1(func_2(arg_0.a, 0i, _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.c, 4294967295u, 23728u, var_0.c) >> (vec4<u32>(arg_0.c, 4294967295u, 122424u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(27459u, 6473u, arg_1.e, 28928u)) & vec4<u32>(arg_0.e, 28571u, 14249u, 5535u))).d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.e, 10u)], -218f))), 247f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(58620u, global2.e, global2.e), vec3<u32>(52872u, arg_2, 62260u), vec3<bool>(true, true, true)) | (~vec3<u32>(global2.e, 11579u, 4294967295u) >> (countOneBits(vec3<u32>(arg_1.c, arg_2, arg_2)) % vec3<u32>(32u))), ~select(vec3<u32>(arg_1.c, 143057u, arg_0.c), vec3<u32>(arg_0.e, 32005u, 1u), false) ^ vec3<u32>(6604u, ~4294967295u, ~4294967295u)), max(1i, abs(max(min(-54585i, 17425i), 1i))), arg_0.e);
    global2 = Struct_1(~(-32294i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - var_0.b) * _wgslsmith_f_op_f32(min(1544f, -677f))), arg_0.b)))), ~func_3().x | 0u, 28463i, 4294967295u);
    var var_1 = countOneBits(u_input.a.x | firstTrailingBit(0i));
    let var_2 = vec3<bool>(!all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), false)), true, !(_wgslsmith_div_i32(0i, min(-2147483647i, 0i)) <= _wgslsmith_add_i32(global2.d & -10289i, -15337i)));
    return func_4(func_4(Struct_1(-arg_1.a, 624f, 42625u, arg_0.a, global2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 10>();
    let var_0 = func_6(Struct_1(firstTrailingBit(select(_wgslsmith_mod_i32(global2.a, 2147483647i), func_1(global0[_wgslsmith_index_u32(1u, 19u)], Struct_1(u_input.a.x, -1511f, 1u, 62763i, global2.c)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)] + -1536f))), global2.e, func_2(abs(-1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.d, u_input.a.x, 1i), vec4<i32>(global2.a, u_input.a.x, u_input.a.x, -9975i)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-32817i, global2.d, u_input.a.x)), -1i), select(vec4<u32>(64681u, global2.c, global2.c, 34951u), ~vec4<u32>(0u, 9703u, global2.c, 0u), false)).d, _wgslsmith_div_u32(global2.c, ~105717u)), func_4(global0[_wgslsmith_index_u32(global2.e, 19u)]), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.c, 13073u), reverseBits(~vec3<u32>(global2.e, 1u, global2.e))), select(vec3<u32>(func_2(global2.d, global2.a, vec4<u32>(0u, global2.e, global2.e, global2.c)).c, select(global2.e, 4897u, true), 4294967295u), ~vec3<u32>(global2.c, 29011u, 75245u) | (vec3<u32>(50384u, global2.e, global2.e) & vec3<u32>(0u, global2.c, 0u)), vec3<bool>(false, true, global2.b != global2.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1642f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c, 10u)])))))));
    let var_1 = var_0;
    global2 = global0[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(282f)) * -1908f)))) * global2.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(587f, 569f))), 1656f, -1522f), vec3<f32>(591f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + -819f), global2.b), var_1.b))));
    let var_4 = ~1u;
    global2 = func_2(func_2(~(-43609i), -49133i, vec4<u32>(var_4, _wgslsmith_div_u32(~0u, ~global2.c), 1u, _wgslsmith_div_u32(func_4(Struct_1(22040i, -432f, var_0.c, 2147483647i, 4294967295u)).c, 1u))).a, -_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a) | -global2.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(global2.e, 37331u), 0u, var_1.e, var_4 | 4294967295u), firstLeadingBit(vec4<u32>(var_1.e, 4294967295u, func_4(Struct_1(-1i, -980f, 0u, -2147483647i, global2.c)).e, 62207u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -11638i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-33092i, 47394i), reverseBits(u_input.a.x))) << (select(vec2<u32>(_wgslsmith_add_u32(var_1.e, 4294967295u), _wgslsmith_mod_u32(var_1.e, 0u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(16993u, var_1.e), firstLeadingBit(vec2<u32>(1u, var_0.e))), true) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, -1375f, -1802f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-466f, 562f, -547f) + var_3))))));
}

