struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-439f, 249f))))) * _wgslsmith_f_op_f32(max(-478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) - _wgslsmith_f_op_f32(abs(-1958f)))))), _wgslsmith_f_op_f32(1f * -1372f)));
    var var_1 = arg_1;
    let var_2 = Struct_1(-2147483647i);
    global0 = array<i32, 28>();
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + -989f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), var_0)));
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<u32> {
    return vec4<u32>(~u_input.a, ~_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(u_input.c, ~u_input.b)), func_3(!all(vec3<bool>(true, true, false)), Struct_2(Struct_1(arg_2.x)), false), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(9933u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 12595u), vec2<u32>(0u, 1u)), firstTrailingBit(vec2<u32>(u_input.c, u_input.a)))), vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(36413u, 54230u, 0u), abs(vec3<u32>(4294967295u, 4294967295u, u_input.c))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<i32, 28>();
    var var_0 = Struct_1(arg_2.x);
    let var_1 = -688f;
    var_0 = arg_3;
    var var_2 = Struct_1(firstLeadingBit(73332i));
    return vec2<bool>(select(false & (true | all(vec3<bool>(false, true, false))), true || any(vec3<bool>(true, true, true)), true), var_1 > _wgslsmith_f_op_f32(-var_1));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 28u)] | global0[_wgslsmith_index_u32(arg_2, 28u)], min(arg_1, arg_1), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(9859u, 28u)], arg_1)), vec3<i32>(arg_1, ~global0[_wgslsmith_index_u32(u_input.c, 28u)], 2147483647i))));
    global0 = array<i32, 28>();
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, arg_2, u_input.c), 28u)], arg_1, abs(reverseBits(_wgslsmith_div_i32(22931i, global0[_wgslsmith_index_u32(arg_3.x, 28u)]))), ~1i), -(vec4<i32>(_wgslsmith_div_i32(-44369i, arg_1), -11635i, 107850i, var_0.a.a) | -vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], arg_1, var_0.a.a, global0[_wgslsmith_index_u32(18337u, 28u)])));
    var var_2 = ~vec4<u32>(2397u, ~(~8588u >> (func_2(-1377f, vec3<f32>(-228f, 316f, 1908f), var_1.wz, Struct_1(36246i)).x % 32u)), _wgslsmith_dot_vec3_u32(~arg_3 ^ _wgslsmith_add_vec3_u32(vec3<u32>(24517u, 7441u, arg_2), vec3<u32>(14931u, u_input.c, 10257u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), ~vec3<u32>(0u, 4294967295u, 4294967295u))), 25636u);
    var_2 = countOneBits(_wgslsmith_add_vec4_u32(func_2(_wgslsmith_f_op_f32(max(-561f, 302f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1397f, -2502f, -1376f))), vec2<i32>(var_0.a.a, 0i) ^ var_1.wy, var_0.a), ~(~vec4<u32>(arg_2, var_2.x, var_2.x, var_2.x)))) | firstTrailingBit(~(vec4<u32>(u_input.c, arg_3.x, 4294967295u, u_input.b) & vec4<u32>(75288u, 26884u, arg_3.x, u_input.b)));
    return var_0;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_5(select(func_4(firstLeadingBit(func_2(620f, vec3<f32>(882f, 289f, 1267f), vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 28u)]), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)]))), Struct_1(1i), max(vec3<i32>(26266i, global0[_wgslsmith_index_u32(1u, 28u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], -47088i, global0[_wgslsmith_index_u32(0u, 28u)]) | vec3<i32>(global0[_wgslsmith_index_u32(7701u, 28u)], global0[_wgslsmith_index_u32(56920u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)])), Struct_1(global0[_wgslsmith_index_u32(0u, 28u)])), !(!func_4(vec4<u32>(arg_0.x, 48655u, arg_0.x, arg_0.x), Struct_1(10671i), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], 2147483647i), Struct_1(-34096i))), any(vec4<bool>(true, true, true, false)) | true), (global0[_wgslsmith_index_u32(arg_0.x, 28u)] >> (~24392u % 32u)) & (i32(-1i) * -18846i), 0u, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 24477u), vec2<u32>(49230u, u_input.a)), ~vec2<u32>(arg_0.x, u_input.c)) << (u_input.b % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 95401u), vec3<u32>(117215u, arg_0.x, 68218u)), _wgslsmith_add_u32(~u_input.b, _wgslsmith_sub_u32(u_input.c, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(17593u, u_input.a, 1u, u_input.c), vec4<u32>(u_input.c, 19948u, arg_0.x, 1497u) | vec4<u32>(arg_0.x, u_input.a, u_input.b, arg_0.x))), 32345u));
    var var_1 = func_5(vec2<bool>(true, true), reverseBits(var_0.a.a), _wgslsmith_mod_u32(95288u, u_input.b), reverseBits(min(~vec3<u32>(u_input.c, arg_0.x, 26088u), _wgslsmith_mult_vec3_u32(vec3<u32>(56839u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, u_input.b, 1u)) >> (~vec3<u32>(u_input.c, 27863u, arg_0.x) % vec3<u32>(32u)))));
    let var_2 = abs(countOneBits(min(max(vec2<i32>(52007i, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(11372u, 28u)], 25909i)), abs(vec2<i32>(var_0.a.a, var_0.a.a))) | select(vec2<i32>(var_1.a.a, 1i) & vec2<i32>(var_0.a.a, var_0.a.a), vec2<i32>(-4810i, -56741i) | vec2<i32>(var_0.a.a, -1i), vec2<bool>(false, true))));
    let var_3 = arg_0.x;
    let var_4 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 2147483647i, var_0.a.a) >> (~vec3<u32>(arg_0.x, 36249u, 1u) % vec3<u32>(32u)), ~countOneBits(vec3<i32>(29167i, 0i, var_0.a.a))) << (abs(min(vec3<u32>(var_3, 0u, 1u), vec3<u32>(0u, 388u, var_3))) % vec3<u32>(32u)));
    return func_5(select(!func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(125406u, 0u, var_3, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, var_3, arg_0.x)), func_5(vec2<bool>(false, true), var_1.a.a, arg_0.x, vec3<u32>(0u, arg_0.x, var_3)).a, max(vec3<i32>(var_0.a.a, var_0.a.a, 0i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 28u)], var_0.a.a)), Struct_1(var_4.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), false), select(select(func_4(vec4<u32>(22735u, 38475u, 0u, u_input.a), var_0.a, var_4, var_1.a), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)), !func_4(vec4<u32>(1u, 500u, 0u, arg_0.x), Struct_1(-1i), vec3<i32>(var_0.a.a, var_1.a.a, var_0.a.a), Struct_1(var_2.x)), select(73304u, 18357u, false) >= firstTrailingBit(arg_0.x))), var_1.a.a, ~var_3, vec3<u32>(u_input.b << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, u_input.c, var_3), vec3<u32>(arg_0.x, var_3, 0u) << (vec3<u32>(var_3, u_input.a, u_input.a) % vec3<u32>(32u))) % 32u), ~u_input.b, arg_0.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~firstTrailingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(1u, 26269u)), vec2<u32>(u_input.b, 0u) & vec2<u32>(7838u, u_input.c))));
    global0 = array<i32, 28>();
    let var_1 = vec4<bool>(false, !all(vec3<bool>(true, false, select(true, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), var_0.a >= 34685i, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))), false);
    var var_2 = _wgslsmith_sub_i32(max(func_1(_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, u_input.c) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)))).a, var_0.a), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(-124f, -225f, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2889f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1023f, 289f)))));
}

