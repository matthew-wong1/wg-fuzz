struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<bool> {
    var var_0 = abs(u_input.d);
    var var_1 = 1i;
    let var_2 = ~_wgslsmith_add_vec2_u32(reverseBits(u_input.d.zz << (vec2<u32>(u_input.a, u_input.d.x) % vec2<u32>(32u))) ^ var_0.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(43374u, var_0.x), u_input.d.yy));
    let var_3 = Struct_1(!((_wgslsmith_div_u32(var_2.x, var_2.x) < _wgslsmith_mult_u32(0u, 40980u)) || (var_2.x >= (368u >> (1u % 32u)))));
    var var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x << (0u % 32u), 0i, -2147483647i), ~select(-vec4<i32>(0i, u_input.c.x, -1i, 1i), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 10305i, u_input.b.x, u_input.c.x), vec4<i32>(27237i, u_input.c.x, 2147483647i, 38310i))), all(!vec4<bool>(var_3.a, true, var_3.a, true))));
    return select(vec4<bool>(arg_0, var_3.a, firstTrailingBit(~29906u) >= abs(u_input.a), !any(vec2<bool>(var_3.a, arg_0))), vec4<bool>(var_3.a & (countOneBits(u_input.a) != 1u), var_3.a, true, (_wgslsmith_f_op_f32(sign(-1187f)) != arg_1) || true), vec4<bool>(!all(vec4<bool>(var_3.a, false, arg_0, var_3.a)), (firstLeadingBit(var_0.x) | 51733u) < 35122u, !select(true, arg_0, arg_0), 29541i == abs(var_4.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: f32) -> vec4<i32> {
    var var_0 = vec4<u32>(~(~reverseBits(u_input.a)), u_input.a, u_input.d.x, 0u);
    var_0 = vec4<u32>(_wgslsmith_mult_u32(~(var_0.x << (4294967295u % 32u)) & var_0.x, 4294967295u), 0u, ~(~_wgslsmith_mod_u32(var_0.x, 0u)) & countOneBits(u_input.a), ~firstTrailingBit(u_input.d.x) | _wgslsmith_clamp_u32(~4294967295u, u_input.a, abs(~4294967295u)));
    let var_1 = -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, min(43662i, arg_1.x)), vec3<i32>(-2147483647i ^ arg_1.x, u_input.b.x, _wgslsmith_sub_i32(1i, arg_1.x))) << (~u_input.d % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -794f);
    let var_3 = select(countOneBits(-vec3<i32>(~(-2147483647i), -2147483647i, 1i)), -var_1, (~4294967295u == ~var_0.x) && all(vec4<bool>(arg_0.x, false & arg_0.x, true, u_input.d.x <= 4294967295u)));
    return firstTrailingBit(vec4<i32>(1i, u_input.c.x, -2147483647i, -56703i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_mod_u32(22383u, var_0);
    let var_2 = false & !(!(arg_1.x & any(vec3<bool>(true, false, arg_1.x))));
    var var_3 = ~_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, arg_0.x, arg_0.x)), ~vec4<i32>(-51029i, 2147483647i, -1i, 0i)), select(~firstTrailingBit(vec4<i32>(-23927i, 41605i, 34632i, -16704i)), select(-vec4<i32>(9860i, 2147483647i, -27662i, 1i), vec4<i32>(u_input.b.x, -29427i, u_input.c.x, -1i), var_2), true));
    var_3 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(54167i, 11368i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 3268i, var_3.x), vec4<i32>(-17040i, -42092i, arg_0.x, -1744i))), u_input.c.x)), -(~func_4(func_3(true, 2240f), select(vec4<i32>(var_3.x, u_input.c.x, var_3.x, var_3.x), vec4<i32>(2147483647i, arg_0.x, arg_0.x, -2147483647i), var_2), _wgslsmith_f_op_f32(605f + 1789f))));
    return Struct_1(false);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = 1135f;
    let var_1 = func_2(vec3<i32>((19197i >> (_wgslsmith_sub_u32(arg_1.x, 12850u) % 32u)) << (_wgslsmith_mod_u32(~arg_1.x, u_input.d.x) % 32u), firstTrailingBit(u_input.c.x), u_input.b.x), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), true & all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), true));
    var var_2 = u_input.c;
    var_2 = vec2<i32>(var_2.x, 2147483647i);
    var var_3 = vec3<i32>(u_input.c.x, 39085i, u_input.b.x);
    return abs(u_input.d.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.d.zx, func_1(~(~(~vec4<u32>(u_input.d.x, 29038u, u_input.d.x, u_input.a))), u_input.d.yz));
    var var_1 = 1i;
    var var_2 = !(!all(vec4<bool>(true, true, true, true)));
    var_2 = true;
    var_1 = select(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 19975i, 2147483647i), vec3<i32>(0i, u_input.b.x, 1i)), u_input.b.x)) >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 28155u, u_input.a, 4294967295u), vec4<u32>(1753u, var_0.x, 55606u, u_input.a)) ^ _wgslsmith_div_u32(u_input.d.x, var_0.x)) % 32u), u_input.b.x, !select(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true))));
    let var_3 = func_2(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, -11335i), vec3<i32>(0i, u_input.b.x, -2147483647i))) & vec3<i32>(min(_wgslsmith_add_i32(u_input.b.x, -24927i), 8463i), u_input.b.x, u_input.c.x >> (~62303u % 32u)), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(any(vec4<bool>(true, false, false, false)), 4294967295u < var_0.x, all(vec3<bool>(true, false, true)))), !any(vec2<bool>(true, true))));
    var var_4 = var_3;
    let var_5 = var_3;
    var_1 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

