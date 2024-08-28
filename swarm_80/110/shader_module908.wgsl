struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_5(max(0i, ~1i));
    var var_1 = select(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 32699u)), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 85104u))), 40619u), u_input.a.x, !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))));
    var var_2 = abs(vec3<i32>(abs(7558i), max(var_0.a, var_0.a), ~0i) ^ abs(vec3<i32>(var_0.a, var_0.a, -12426i) << (vec3<u32>(22893u, 3450u, 50500u) % vec3<u32>(32u)))) >> (~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u));
    var var_3 = Struct_4(-reverseBits(max(vec3<i32>(14764i, -2147483647i, var_0.a), vec3<i32>(var_2.x, var_2.x, -2147483647i)) & -vec3<i32>(var_0.a, var_2.x, var_2.x)), 1i, 228f);
    var_2 = vec3<i32>(_wgslsmith_div_i32(var_2.x, _wgslsmith_mod_i32(select(var_3.b, 65974i, true), var_3.b)), _wgslsmith_clamp_i32(reverseBits(abs(var_2.x)), -var_3.a.x, _wgslsmith_clamp_i32(var_3.a.x, ~(var_2.x ^ 1i), 1i)), 18862i);
    return vec4<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(~u_input.a.x & 2421u, 12349u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 24067u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5162u)))), ~_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zz >> (vec2<u32>(0u, 25952u) % vec2<u32>(32u)), u_input.a.xz)), countOneBits(u_input.a.x));
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-570f)) + _wgslsmith_div_f32(-1153f, -634f)), -606f))));
    var var_1 = ~max(abs(vec3<i32>(-7170i, 1i, -1i)), firstTrailingBit(select(vec3<i32>(1i, -18394i, 1i), vec3<i32>(-1i, 0i, -1850i), arg_0.x)) | ~(vec3<i32>(-1i, -1i, -1i) << (u_input.a % vec3<u32>(32u))));
    var var_2 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 0u), ~1159u, u_input.a.x)), ~vec3<u32>(~_wgslsmith_div_u32(4294967295u, 23743u), 47663u, ~70615u));
    let var_3 = 9615u;
    let var_4 = select(vec4<u32>(_wgslsmith_add_u32(57576u, var_3), ~4294967295u, max(0u << (1u % 32u), 0u), 0u), ~min(select(countOneBits(vec4<u32>(u_input.a.x, var_3, 0u, u_input.a.x)), vec4<u32>(u_input.a.x, var_3, var_3, 1u), true), ~func_3(827f)), !select(vec4<bool>(select(arg_0.x, arg_0.x, arg_0.x), all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), false, select(arg_0.x, false, false)), vec4<bool>(-1571f >= var_0, arg_0.x, arg_0.x, true), var_1.x != -45722i));
    return vec4<i32>(max(var_1.x, -_wgslsmith_sub_i32(var_1.x, var_1.x) ^ ~_wgslsmith_add_i32(62644i, 0i)), ~reverseBits(var_1.x), -((var_1.x >> (~14719u % 32u)) ^ 0i), var_1.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_4(vec3<i32>(arg_0, firstLeadingBit(arg_0), _wgslsmith_div_i32(~arg_0, 1i)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.c + 781f);
    var var_2 = vec4<i32>(44808i, reverseBits(-4570i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0), 2147483647i, ~0i, var_0.b)), _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(-2147483647i, 17408i, -2869i, -5756i)), vec4<i32>(var_0.b, arg_0, -61693i, 32680i) & vec4<i32>(0i, -1i, var_0.a.x, 4154i))), -40422i);
    let var_3 = vec2<u32>(_wgslsmith_div_u32(~0u, 14203u), u_input.a.x);
    let var_4 = ~_wgslsmith_div_u32(4294967295u, max(_wgslsmith_dot_vec2_u32(~var_3, vec2<u32>(37185u, u_input.a.x)), ~firstLeadingBit(var_3.x)));
    return Struct_5(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) + _wgslsmith_f_op_f32(f32(-1f) * -1595f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1267f, 592f)), _wgslsmith_f_op_f32(f32(-1f) * -564f), false)))), 272f);
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, -377f, 766f, 620f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, -1420f, -1332f, 696f)))))), vec4<f32>(_wgslsmith_f_op_f32(select(-857f, _wgslsmith_f_op_f32(round(343f)), false)), -704f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(2059f, -1254f), true)), 551f)), u_input.a.x, ~_wgslsmith_add_i32(var_0.a, var_0.a), ~_wgslsmith_mult_i32(~var_0.a, _wgslsmith_mult_i32(var_0.a, var_0.a)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec3<bool>(true, true, true)), false, all(vec3<bool>(false, false, false)), true), vec4<bool>(select(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, false)), var_0.a < -1i), all(vec3<bool>(true, false, true)) || true, any(vec2<bool>(true, false)), any(vec2<bool>(true, true)))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_2(_wgslsmith_div_i32(abs(var_0.a), select(func_2(var_1.e.ww).x, ~var_0.a, any(vec2<bool>(var_1.e.x, true))) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz), var_1.b) % 32u)), Struct_1(vec4<f32>(-328f, var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + 900f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) - var_1.a.x)), ~firstTrailingBit(var_1.b) | var_1.b, select(-_wgslsmith_mod_i32(-2835i, var_1.c), _wgslsmith_clamp_i32(62809i, -1i, var_0.a) << (~49014u % 32u), var_1.e.x), 22416i, var_1.e), var_1);
    var var_4 = Struct_5(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(firstTrailingBit(var_1.b))));
}

