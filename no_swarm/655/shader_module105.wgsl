struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    var var_0 = abs(firstLeadingBit(arg_0.d));
    global0 = array<Struct_2, 11>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), vec4<bool>(select(!any(arg_0.b.b.zxx), select(arg_0.c.c, false, true) != true, !(60573i < u_input.a)), arg_0.b.d.x, all(vec2<bool>(any(vec4<bool>(true, true, true, false)), all(arg_0.b.e.ywz))), all(arg_0.c.b)), arg_0.c.d.x, !(!select(vec2<bool>(arg_0.c.c, false), select(arg_0.b.b.yz, vec2<bool>(arg_0.b.c, true), arg_0.c.e.xy), !vec2<bool>(arg_0.c.d.x, false))), arg_0.b.b);
    var_0 = ~(~4294967295u);
    var var_2 = arg_0;
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_2.a.a;
    var var_1 = arg_2.a.c;
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(701f, -720f)) + -892f)), _wgslsmith_f_op_f32(sign(1550f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(arg_3, Struct_1(335f, vec4<bool>(false, arg_0.d.x, arg_2.a.e.x, arg_2.a.e.x), true, vec2<bool>(arg_2.a.c, arg_2.a.e.x), vec4<bool>(arg_0.c, true, arg_0.b.x, false)), Struct_1(arg_2.a.a, arg_0.b, arg_0.c, arg_0.e.zz, arg_2.a.b), 4646u), vec3<f32>(-343f, 717f, arg_2.a.a)))))), _wgslsmith_f_op_f32(select(-3297f, arg_0.a, !(!arg_2.a.c)))), arg_0, Struct_1(_wgslsmith_f_op_f32(step(-285f, 744f)), arg_0.b, arg_2.a.d.x, arg_2.a.d, arg_0.b), 4294967295u);
    let var_3 = true;
    var var_4 = arg_2;
    return _wgslsmith_mult_i32(reverseBits(select(-6076i, u_input.a, all(vec2<bool>(var_4.a.c, false)))), -u_input.a) << (firstTrailingBit(u_input.b) % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = ~min(-firstLeadingBit(vec3<i32>(u_input.a, 26860i, -1i) & vec3<i32>(u_input.a, -1i, -61227i)), vec3<i32>(~(-26009i) >> (arg_1.x % 32u), u_input.a, u_input.a ^ func_2(Struct_1(1083f, vec4<bool>(false, true, false, false), true, vec2<bool>(false, false), vec4<bool>(true, false, true, false)), arg_2, global0[_wgslsmith_index_u32(20486u, 11u)], vec4<f32>(arg_2, -375f, arg_2, arg_2))));
    let var_1 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), false), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), false, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(473f, -1066f, -997f, arg_2), vec4<f32>(arg_2, -240f, arg_2, -484f)), Struct_1(-110f, vec4<bool>(true, false, false, true), true, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), Struct_1(-1000f, vec4<bool>(false, false, true, false), true, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), ~76607u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)) - vec3<f32>(738f, arg_2, arg_2)))));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_2 = global0[_wgslsmith_index_u32(arg_0.x, 11u)];
    return global0[_wgslsmith_index_u32(~(28223u >> (arg_1.x % 32u)), 11u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    global0 = array<Struct_2, 11>();
    let var_0 = func_1(vec3<u32>(26589u, ~u_input.b, 24830u), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 28302u), vec2<u32>(0u, u_input.b)) << (u_input.b % 32u), 1u, 1u, firstTrailingBit(u_input.b)), arg_0.a.a).a;
    var var_1 = func_1(vec3<u32>(~55320u, ~(~u_input.b), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(23220u, u_input.b, u_input.b), vec3<u32>(3942u, u_input.b, u_input.b)), min(55629u, 1u) >> (u_input.b % 32u), firstLeadingBit(~u_input.b))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & max(vec4<u32>(0u, 25543u, u_input.b, 88240u), vec4<u32>(9564u, 4294967295u, 10710u, u_input.b)), select(vec4<u32>(u_input.b, u_input.b, 16595u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 27064u), vec4<u32>(21152u, u_input.b, u_input.b, u_input.b)), !vec4<bool>(var_0.d.x, true, arg_1.a.c, false)), vec4<bool>(true, var_0.c, var_0.c, arg_0.a.c)), ~vec4<u32>(~u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 36653u), vec3<u32>(1u, 4294967295u, 25758u)), abs(11018u))), _wgslsmith_f_op_f32(floor(var_0.a)));
    let var_2 = u_input.a == u_input.a;
    var var_3 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-17561i, u_input.a, u_input.a, -2527i) & vec4<i32>(u_input.a, u_input.a, u_input.a, 281i), -vec4<i32>(11606i, u_input.a, u_input.a, 2147483647i)), ~firstTrailingBit(vec4<i32>(-1i, u_input.a, 1i, 58532i)), -vec4<i32>(u_input.a, u_input.a, 21703i, -37579i)) & -(~(~(vec4<i32>(-22276i, -1i, -3029i, u_input.a) ^ vec4<i32>(1i, u_input.a, 0i, u_input.a))));
    return StorageBuffer(vec2<i32>(-2147483647i, _wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.a, 2147483647i), firstLeadingBit(var_3.x))), _wgslsmith_f_op_f32(abs(var_0.a)), 1278f, _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 45042u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u)), vec4<u32>(72755u, u_input.b, u_input.b, 50394u)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5685u, 1u, 0u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), select(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, 32984u, 4294967295u, u_input.b), var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, 325f) + vec2<f32>(arg_0.a.a, var_0.a)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -824f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b, countOneBits(firstTrailingBit((u_input.b & u_input.b) & (u_input.b ^ 29446u))), firstTrailingBit(~(~abs(u_input.b))), u_input.b);
    global0 = array<Struct_2, 11>();
    let var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(-reverseBits(-40837i), -(~u_input.a)), ~vec2<i32>(firstTrailingBit(16944i), u_input.a));
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(u_input.b), 1u), vec2<u32>(~u_input.b, _wgslsmith_div_u32(0u, 90720u))), firstTrailingBit(var_0.xy)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b, 55072u), countOneBits(vec2<u32>(83017u, var_0.x))), var_0.wz & (vec2<u32>(1u, 14499u) & vec2<u32>(36314u, u_input.b)), vec2<u32>(countOneBits(u_input.b), 105238u)) >> (_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(var_0.x, var_0.x) | vec2<u32>(u_input.b, 30879u)), firstTrailingBit(~var_0.wx)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1914f, -254f), vec2<f32>(795f, -2531f)))))));
    let x = u_input.a;
    s_output = func_4(func_1(var_0.zzx, vec4<u32>(~4294967295u, 0u, var_0.x, 4294967295u) & vec4<u32>(~0u, u_input.b, _wgslsmith_mult_u32(29405u, 0u), 1u), var_3.x), Struct_2(func_1(vec3<u32>(u_input.b, var_0.x, u_input.b) ^ vec3<u32>(var_0.x, 4294967295u, 0u), ~var_0 & min(var_0, var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x), -1010f)).a));
}

