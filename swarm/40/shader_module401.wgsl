struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7482i;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = max(-1i, global1.c);
    var var_1 = ~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(2147483647i, u_input.d)), _wgslsmith_mod_i32(global1.c, u_input.d), u_input.d), vec4<i32>(-2147483647i, i32(-1i) * -21195i, u_input.d, u_input.d), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d, 26851i, 20653i, u_input.c), reverseBits(vec4<i32>(u_input.d, 4611i, u_input.c, -14746i)))), vec4<i32>(1i, _wgslsmith_div_i32(2147483647i, -21092i), 1i, _wgslsmith_sub_i32(-2147483647i, global1.c)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(111120u, u_input.b, u_input.b, 11809u), ~vec4<u32>(1u, u_input.a, global1.b, global1.b), ~vec4<u32>(global1.b, u_input.b, u_input.a, 7278u)) % vec4<u32>(32u)), true);
    var var_2 = -49982i;
    var_0 = -22949i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(global1.a, 333f, true)), ~select(abs(u_input.a << (global1.b % 32u)), 23792u, true), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, global1.c), -56624i), !(!global1.d));
    return var_3.a;
}

fn func_2() -> i32 {
    var var_0 = vec3<bool>(35198i >= _wgslsmith_add_i32(u_input.d, countOneBits(~global1.c)), global1.d | !(global1.a <= _wgslsmith_f_op_f32(abs(1578f))), global1.d && true);
    var var_1 = Struct_1(_wgslsmith_div_f32(global1.a, 2070f), 10427u, ~(-51997i), any(select(vec4<bool>(var_0.x, var_0.x || true, global1.d, global1.d), vec4<bool>(false, 345f >= global1.a, -808f < global1.a, false), vec4<bool>(false, true, var_0.x, var_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), select(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(100754u, global1.b, var_1.b, 4294967295u), vec4<u32>(72391u, u_input.b, 1u, 4294967295u), true) << (~vec4<u32>(global1.b, var_1.b, 53723u, 22442u) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(43718u, global1.b, 18103u, global1.b), vec4<u32>(80996u, 0u, 63609u, global1.b)), ~vec4<u32>(0u, var_1.b, 34574u, 1u), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))), var_0.x), countOneBits(~_wgslsmith_add_i32(0i, var_1.c)) << (u_input.b % 32u), global1.d);
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a + global1.a), max(0u, abs(~min(71980u, global1.b))), max(select(2147483647i, var_1.c, var_1.d) & (u_input.d >> (u_input.a % 32u)), firstTrailingBit(var_2.c)) | ~_wgslsmith_mult_i32(u_input.c, -5134i), false);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(119f, global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(ceil(global1.a))) - 1573f), 595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(var_2.a + var_2.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) + _wgslsmith_f_op_f32(f32(-1f) * -928f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, -411f, var_1.d)) - _wgslsmith_div_f32(var_2.a, var_2.a)) + var_1.a)));
    return u_input.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_1;
    let var_0 = -func_2();
    let var_1 = vec4<bool>(arg_2.d, false, true, all(vec2<bool>(any(select(vec3<bool>(false, global1.d, global1.d), vec3<bool>(global1.d, arg_2.d, false), vec3<bool>(global1.d, true, global1.d))), global1.d)));
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 6509u), vec2<u32>(1u, u_input.b)), vec2<u32>(~arg_2.b, arg_2.b)), vec2<u32>(~u_input.a, 66641u)), min(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.b, arg_2.b), vec2<u32>(global1.b, 13544u))), vec2<u32>(arg_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(39861u, arg_2.b), ~vec2<u32>(4294967295u, arg_2.b)))));
    global0 = 41863i;
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(true || (!global1.d | !arg_0.d)) && false;
    let var_1 = !select(true, true, (2147483647i | func_2()) >= global1.c);
    let var_2 = ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(38932u, u_input.b) ^ vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(58024u, 60489u), vec2<u32>(arg_0.b, 35123u)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))))), global1.b, global1.c, all(select(select(!vec3<bool>(var_1, arg_0.d, var_1), vec3<bool>(true, arg_0.d, true), true), !(!vec3<bool>(arg_0.d, var_1, false)), !select(vec3<bool>(var_1, false, false), vec3<bool>(global1.d, false, arg_0.d), var_1))));
    let var_3 = false || all(vec2<bool>(false, global1.d));
    return func_1(select(-(~firstTrailingBit(vec3<i32>(u_input.d, arg_0.c, arg_0.c))), ~firstLeadingBit(vec3<i32>(-1i, arg_0.c, 0i)), select(select(!vec3<bool>(false, arg_0.d, false), vec3<bool>(true, true, true), select(vec3<bool>(var_1, var_3, global1.d), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.d, var_1))), !(!vec3<bool>(false, var_3, var_3)), vec3<bool>(false, true, true))), -45292i, Struct_1(arg_0.a, 1u, ~(-firstTrailingBit(arg_0.c)), global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(~u_input.c);
    global1 = Struct_1(global1.a, 0u, 14825i, true);
    var var_0 = Struct_1(-1842f, countOneBits(0u), u_input.d, true);
    var var_1 = Struct_1(632f, reverseBits(35043u), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.c, u_input.c), -vec2<i32>(1i, u_input.d)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.c, var_0.c)), -vec2<i32>(1i, global1.c))), true);
    var var_2 = func_4(func_1(firstLeadingBit(-vec3<i32>(1i, -2147483647i, -1i)), 25153i, Struct_1(-296f, var_1.b >> ((global1.b | 1u) % 32u), var_0.c ^ u_input.d, !all(vec2<bool>(false, true)))));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~func_4(Struct_1(-1000f, var_1.b, var_0.c, false)).b) ^ (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, 33808u) & vec2<u32>(42279u, u_input.a), vec2<u32>(4294967295u, 11287u)) >> (vec2<u32>(global1.b, _wgslsmith_mod_u32(4767u, var_0.b)) % vec2<u32>(32u))), abs(_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, var_1.b), vec2<u32>(var_1.b, 1u))), vec2<u32>(4294967295u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(106f, var_0.a, var_0.a))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, var_2.a, var_1.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, var_2.a, var_0.a) * vec3<f32>(2066f, -918f, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a, var_2.a, -1465f), vec3<f32>(global1.a, var_2.a, 3003f)))), !(!vec3<bool>(var_2.d, true, global1.d))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(func_1(vec3<i32>(269i, -10147i, u_input.c), var_2.c, Struct_1(global1.a, 38619u, -1i, var_2.d)).c, func_4(Struct_1(-577f, 4294967295u, var_1.c, true)).c, _wgslsmith_add_i32(46680i, u_input.c), ~global1.c), reverseBits(max(vec4<i32>(var_1.c, 79279i, var_0.c, 5023i), vec4<i32>(var_1.c, -43303i, var_0.c, var_1.c)))), _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(7058i, -1i, var_0.c, global1.c), vec4<i32>(var_1.c, 4972i, var_2.c, var_2.c)), ~vec4<i32>(1i, 51491i, 0i, var_1.c), max(vec4<i32>(50583i, 2147483647i, var_1.c, -10635i), vec4<i32>(-42505i, 34644i, var_0.c, -2147483647i))), max(vec4<i32>(global1.c, _wgslsmith_add_i32(u_input.c, global1.c), u_input.d, countOneBits(var_2.c)), ~(~vec4<i32>(-45506i, u_input.c, -70084i, var_0.c)))));
}

