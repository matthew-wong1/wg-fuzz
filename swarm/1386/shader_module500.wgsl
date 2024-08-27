struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global0 = arg_0.ywz;
    let var_0 = -261f;
    let var_1 = countOneBits(vec2<u32>(~(~36468u), u_input.b)) | abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mult_u32(49493u, 0u)), vec2<u32>(28780u, u_input.b)));
    let var_2 = 8674u | (u_input.b << (~var_1.x % 32u));
    global0 = arg_0.wzy;
    return vec3<i32>(-2147483647i, reverseBits(1i) ^ _wgslsmith_clamp_i32(2147483647i | (-29709i << (u_input.b % 32u)), u_input.a, ~(-u_input.a)), -u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = (~firstTrailingBit(func_3(vec4<bool>(false, true, false, false))) & (~(~vec3<i32>(-2147483647i, u_input.a, -36025i)) & ~(-vec3<i32>(u_input.a, 6107i, u_input.a)))) | (-(~vec3<i32>(-32869i, -2147483647i, 0i) << (select(vec3<u32>(1u, u_input.b, u_input.c), vec3<u32>(4294967295u, arg_2, u_input.c), arg_1) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(1i), 1i, ~45537i), vec3<i32>(~2147483647i, -51997i, u_input.a)));
    let var_1 = arg_0;
    var_0 = ~abs(-select(-vec3<i32>(var_0.x, -8173i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 19206i, -36097i), vec3<i32>(u_input.a, -49337i, var_0.x)), u_input.c == 1u));
    global0 = !vec3<bool>(any(arg_1.zx), any(arg_1) || global0.x, false);
    var var_2 = arg_0;
    return _wgslsmith_div_u32(~1u << (u_input.c % 32u), arg_2);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), 1000f));
    var var_1 = select(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 31014u), u_input.c, func_2(Struct_1(var_0.a), vec3<bool>(global0.x, false, global0.x), 1u), arg_1), vec4<u32>(104460u, arg_1, reverseBits(arg_2.x), ~u_input.b))), _wgslsmith_div_vec4_u32(vec4<u32>(22505u, arg_1, arg_2.x, u_input.b), select(vec4<u32>(4294967295u, arg_2.x, ~1u, 4294967295u), vec4<u32>(u_input.c, 51143u, _wgslsmith_mult_u32(18754u, 36155u), arg_2.x), select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x)))), 1u <= (~firstLeadingBit(arg_1) | arg_1));
    let var_2 = var_0;
    global0 = !select(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), !vec3<bool>(false, global0.x, global0.x)), vec3<bool>(!any(global0.xz), true, any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)))), !vec3<bool>(var_0.a.x < 1437f, true, all(vec3<bool>(global0.x, true, global0.x))));
    let var_3 = reverseBits(arg_1);
    return Struct_1(var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = vec3<bool>(true, true, global0.x);
    global0 = select(vec3<bool>(~max(u_input.a, 2147483647i) <= -_wgslsmith_div_i32(u_input.a, u_input.a), false, -1135f >= arg_1.a.x), !vec3<bool>(any(vec3<bool>(global0.x, true, true)), u_input.a <= _wgslsmith_sub_i32(-28207i, u_input.a), global0.x), select(!vec3<bool>(true, u_input.c < 28895u, !global0.x), vec3<bool>(global0.x, false, false), false));
    var var_0 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(27392u, reverseBits(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 45956u), vec3<u32>(u_input.b, u_input.b, u_input.b))) ^ (~vec3<u32>(u_input.c, u_input.b, u_input.b) << (~vec3<u32>(u_input.b, 4294967295u, u_input.c) % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(u_input.c, u_input.b | u_input.b, ~u_input.b) << (vec3<u32>(u_input.c, 21813u, ~19930u) % vec3<u32>(32u))));
    var_0 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u, u_input.b, ~36514u), ~(~4294967295u)), abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 2212u, u_input.b), vec3<u32>(u_input.c, var_0.x, var_0.x))))));
    var var_1 = func_4(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) + _wgslsmith_div_f32(-230f, arg_0.a.x)), func_4(arg_1.a.x, 35779u ^ u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.c), vec4<u32>(var_0.x, var_0.x, var_0.x, 1u))).a.x)), firstTrailingBit(var_0.x), vec4<u32>(_wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_clamp_u32(9895u, u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_0.x, var_0.x), vec4<u32>(16535u, 1u, u_input.c, var_0.x)), ~u_input.b)), ~3034u, u_input.c));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(478f))))), 1000f)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = false;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 555f), vec2<f32>(-614f, -2635f))))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2117f - arg_0), _wgslsmith_f_op_f32(trunc(-155f)))), ~func_2(Struct_1(vec2<f32>(arg_0, arg_0)), vec3<bool>(false, false, false), 67599u), countOneBits(~vec4<u32>(u_input.c, 4294967295u, 0u, 4294967295u))))), -217f, 760f, arg_0);
    let var_2 = u_input.c;
    global0 = !(!vec3<bool>(arg_1.x >= _wgslsmith_dot_vec3_i32(arg_1.www, vec3<i32>(arg_1.x, arg_1.x, 1i)), arg_2, true));
    let var_3 = u_input.a;
    return Struct_1(vec2<f32>(1996f, _wgslsmith_f_op_f32(-arg_0)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    global0 = vec3<bool>(all(!select(vec2<bool>(false, false), global0.xz, global0.yx)), true, true);
    var var_0 = ~(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), abs(~vec4<i32>(u_input.a, -1i, 1i, u_input.a))) & vec4<i32>(u_input.a, select(-10299i, ~u_input.a, global0.x), -14716i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(23777i, -1i, u_input.a))));
    let var_1 = func_3(select(select(select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), vec4<bool>(true, true, global0.x, global0.x), all(vec4<bool>(false, true, global0.x, global0.x))), vec4<bool>(global0.x, false, all(vec4<bool>(false, global0.x, true, false)), all(vec3<bool>(global0.x, global0.x, true))), true), select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), !(!vec4<bool>(global0.x, true, global0.x, true)), any(!vec3<bool>(global0.x, false, true))), !select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(global0.x, false, false, global0.x), !vec4<bool>(global0.x, false, true, false)))).xz;
    var var_2 = _wgslsmith_f_op_f32(floor(func_4(-1045f, ~u_input.c, select(~(~vec4<u32>(arg_0.x, u_input.b, 0u, u_input.b)), reverseBits(~vec4<u32>(1u, 5022u, 42749u, u_input.b)), select(true, true, !global0.x))).a.x));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(arg_1, func_1(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 28000i, 20995i, -1i), vec4<i32>(u_input.a, var_1.x, var_0.x, 2147483647i) | vec4<i32>(var_1.x, 36179i, -5526i, u_input.a)), global0.x))) * arg_1.a.x);
    return any(vec4<bool>(global0.x, all(!global0.xx), all(select(select(vec4<bool>(false, true, false, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, true, global0.x)), !vec4<bool>(global0.x, global0.x, false, global0.x), all(vec4<bool>(true, global0.x, global0.x, true)))), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(global0.x, func_6(firstTrailingBit(vec2<u32>(1u, 1u)), func_1(_wgslsmith_f_op_f32(trunc(466f)), min(vec4<i32>(-3273i, u_input.a, 0i, u_input.a), vec4<i32>(-9504i, u_input.a, u_input.a, u_input.a)), false)), all(vec4<bool>(true, global0.x && global0.x, 2147483647i == u_input.a, -1i > u_input.a))), select(vec3<bool>(true, true, !(global0.x & global0.x)), vec3<bool>(select(select(global0.x, true, true), any(vec2<bool>(true, global0.x)), func_6(vec2<u32>(60568u, 1u), Struct_1(vec2<f32>(1496f, 560f)))), any(global0.yz), global0.x), vec3<bool>(global0.x, all(vec2<bool>(true, global0.x)), true)), !select(vec3<bool>(global0.x || global0.x, true, global0.x), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, true)), global0.x), select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, false), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, func_3(vec4<bool>(false, global0.x, false, true)).x, -29549i, u_input.a), reverseBits(firstLeadingBit(vec4<i32>(0i, u_input.a, u_input.a, u_input.a)))), ~(-39222i), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1550f), vec2<f32>(-1469f, -2303f), vec2<bool>(true, global0.x))))))), -10100i, u_input.a, _wgslsmith_f_op_f32(-1f));
}

