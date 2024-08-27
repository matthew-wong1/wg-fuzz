struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = arg_2;
    global0 = vec2<i32>(-16978i, -1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -517f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1495f, 617f), _wgslsmith_f_op_f32(round(139f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1034f * 1206f))), _wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(-1f)), var_0.c.x)));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_mult_u32(14429u, _wgslsmith_div_u32(reverseBits(0u | arg_1.a.x), select(var_2.b.x << (arg_1.b.x % 32u), var_2.b.x, arg_1.c.x))) >= 0u;
    return arg_2.a;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(~firstTrailingBit(arg_1.b.wy << (func_3(var_0.b.xz, Struct_1(arg_1.a, vec4<u32>(0u, 1u, var_0.b.x, var_0.a.x), var_0.c, -2147483647i, arg_1.e), arg_1, var_0.a) % vec2<u32>(32u))), abs(vec4<u32>(arg_0, ~1u, ~(~0u), 4294967295u)), select(!vec4<bool>(true, select(true, arg_1.c.x, false), any(vec4<bool>(arg_1.c.x, true, arg_1.c.x, var_0.c.x)), true), arg_1.c, vec4<bool>(true, any(!var_0.c), select(true, true, var_0.b.x == arg_1.a.x), true)), -u_input.a >> (_wgslsmith_sub_u32(0u, var_0.b.x) % 32u), firstLeadingBit(var_0.e >> (countOneBits(vec4<u32>(arg_1.a.x, 0u, 7415u, arg_1.b.x) | vec4<u32>(1u, arg_1.b.x, arg_0, 69747u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2589f, _wgslsmith_f_op_f32(step(-2109f, -234f)))))));
    var_0 = Struct_1(select(vec2<u32>(_wgslsmith_mult_u32(~0u, firstLeadingBit(4294967295u)), ~var_1.a.x), min(countOneBits(firstTrailingBit(var_1.a)), ~reverseBits(vec2<u32>(0u, 18024u))), true), var_1.b, vec4<bool>(all(vec4<bool>(!var_2, true, any(arg_1.c), true)), abs(_wgslsmith_dot_vec3_i32(var_1.e.zyw, vec3<i32>(-2147483647i, 2147483647i, global0.x))) <= 1555i, false, arg_1.c.x), ~(~79884i), var_1.e);
    global0 = var_0.e.zx;
    return select(_wgslsmith_mod_vec2_u32(select(abs(arg_1.a), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(0u, 35133u) << (var_1.b.wy % vec2<u32>(32u))), arg_1.c.xx), ~var_0.a >> (arg_1.b.zx % vec2<u32>(32u))), firstTrailingBit(~_wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, 0u), arg_1.b.xz), ~vec2<u32>(12640u, arg_0))), vec2<bool>(!var_1.c.x, true));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(arg_3.zy, func_2(~4018u ^ arg_2, Struct_1(arg_3.xz, vec4<u32>(28177u, arg_2, arg_2, arg_1), vec4<bool>(true, true, true, true), u_input.a, vec4<i32>(u_input.a, global0.x, u_input.a, u_input.a) >> (vec4<u32>(arg_2, arg_3.x, arg_1, arg_2) % vec4<u32>(32u))))), max(abs(~(~vec4<u32>(arg_2, arg_3.x, arg_2, 1u))), countOneBits(vec4<u32>(~4294967295u, 1u, ~arg_1, countOneBits(4294967295u)))), select(vec4<bool>(true & any(vec2<bool>(true, false)), true, true, true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, false)), false), _wgslsmith_dot_vec3_i32(firstTrailingBit(~(vec3<i32>(11070i, global0.x, u_input.a) ^ vec3<i32>(2147483647i, 2147483647i, -2147483647i))), vec3<i32>(~1i, -global0.x, -global0.x)), -vec4<i32>(global0.x, -21188i, global0.x & global0.x, max(1i, u_input.a)) >> (firstLeadingBit(~vec4<u32>(4294967295u, 26008u, 19253u, arg_1) & (vec4<u32>(arg_3.x, arg_1, arg_2, 2349u) ^ vec4<u32>(arg_2, arg_3.x, arg_1, arg_1))) % vec4<u32>(32u)));
    var var_1 = vec4<i32>(-select(11645i, 23083i, true), global0.x, var_0.d, -33715i);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, arg_0)) * vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-254f, 1068f), vec2<f32>(arg_0, -960f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    var var_3 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_3.zx, var_0.b.wz & var_0.b.yy), abs(~arg_2)), vec4<u32>(arg_1, _wgslsmith_div_u32(var_0.a.x, _wgslsmith_add_u32(arg_3.x, 1u)), 32335u, 4294967295u), select(!vec4<bool>(var_0.c.x, !var_0.c.x, false, var_0.c.x), select(vec4<bool>(any(vec2<bool>(var_0.c.x, var_0.c.x)), true, !var_0.c.x, true), !(!vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x)), !var_0.c), vec4<bool>(false, !var_0.c.x, var_0.c.x, (var_0.c.x & true) != !var_0.c.x)), ~679i, var_0.e);
    global0 = var_3.e.zx;
    return Struct_1(~select(var_0.b.yy, ~vec2<u32>(arg_2, arg_1) & var_3.b.zx, var_0.c.yx), _wgslsmith_mod_vec4_u32(var_3.b ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2, 31647u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, 10789u, arg_2), vec4<u32>(0u, 95544u, 4294967295u, var_3.b.x), var_0.b)), max(vec4<u32>(_wgslsmith_mult_u32(var_0.a.x, 13025u), var_0.a.x, 83899u, var_3.a.x), var_0.b)), select(select(!vec4<bool>(false, var_0.c.x, var_3.c.x, var_0.c.x), vec4<bool>(true, true, false, all(var_3.c)), vec4<bool>(true, var_0.c.x, var_0.c.x, false != var_3.c.x)), var_0.c, 2585f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + -256f), 1707f))), var_1.x, vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.e.x, 1i, 2147483647i), var_1.wxx) ^ -11526i, -31373i, ~(global0.x | u_input.a), ~33437i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(~global0.x, (countOneBits(countOneBits(u_input.a)) << (max(~5751u, 1u) % 32u)) | ~(-reverseBits(global0.x)));
    let var_0 = -402f;
    var var_1 = select(!vec4<bool>(_wgslsmith_f_op_f32(-var_0) < 913f, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, all(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false))));
    let var_2 = func_1(2257f, 0u, 1u, ~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(~35353u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1798u, 6293u), vec3<u32>(21165u, 16676u, 18537u)), ~29356u), true));
    var var_3 = var_2;
    var_1 = var_3.c;
    let var_4 = var_2;
    let var_5 = any(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1286f + var_0), _wgslsmith_f_op_f32(-var_0), all(vec4<bool>(var_2.c.x, var_3.c.x, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), 8376u, ~_wgslsmith_mod_u32(var_3.b.x, var_2.b.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, var_4.a.x), var_2.b.x), _wgslsmith_mult_u32(84152u, 20124u), ~20809u)).c.yxy);
    var var_6 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-229f, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~(2147483647i | _wgslsmith_div_i32(min(global0.x, var_4.e.x), global0.x >> (4294967295u % 32u))), var_4.e.yxy, abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(~global0.x, firstTrailingBit(23977i)), var_4.e.x)));
}

