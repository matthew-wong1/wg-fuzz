struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    global0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(abs(_wgslsmith_mod_i32(-12643i, -35021i)), abs(7828i))), abs(~((vec2<i32>(-41585i, arg_0.a) >> (u_input.a % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(arg_1, 0i)))));
    var var_0 = (u_input.a.x | ~1u) & ~_wgslsmith_add_u32(u_input.a.x, ~min(1u, 39849u));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 548f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-106f))), _wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_2 = vec3<u32>(abs(~(~0u)), 32054u, 0u) ^ _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b, 31800u, u_input.a.x)) << (~(~vec3<u32>(91211u, 1u, u_input.b)) % vec3<u32>(32u)), abs(vec3<u32>(~25248u, u_input.a.x, 0u)));
    var var_3 = Struct_2(9477u, _wgslsmith_f_op_f32(f32(-1f) * -586f) >= _wgslsmith_f_op_f32(min(-2744f, _wgslsmith_f_op_f32(ceil(-609f)))), vec2<f32>(_wgslsmith_f_op_f32(1488f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(select(-1000f, arg_0.b.x, true))));
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = 0u;
    global0 = -1i;
    var var_1 = 654f;
    var_0 = 4294967295u;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1874f));
    return Struct_2(19920u, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)) && false, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1138f, 299f), vec2<f32>(218f, 1146f), func_3(Struct_3(-1i, vec2<f32>(1961f, -1000f)), -2147483647i))))))));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0, ~firstTrailingBit(arg_0), max(u_input.a.x, arg_0)), vec3<u32>(4294967295u, arg_0 << (1u % 32u), arg_0) >> (~vec3<u32>(u_input.b, arg_2.a, arg_2.a) % vec3<u32>(32u))), ~arg_2.a ^ _wgslsmith_mod_u32(abs(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.b, arg_0), vec4<u32>(32487u, arg_2.a, 52015u, arg_0)))), select(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(86591u, arg_2.a, 3940u, arg_2.a)), select(vec4<u32>(arg_0, 0u, 1187u, 4294967295u) >> (vec4<u32>(51120u, 50058u, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(3802u, 36853u, 62591u, 26034u), vec4<u32>(arg_0, 1u, u_input.a.x, 1u)), vec4<bool>(true, true, true, arg_2.b))), arg_0, select(true, arg_2.b, _wgslsmith_f_op_f32(-arg_2.c.x) > -273f)), arg_2.a);
    var var_1 = arg_3.xzw;
    var_1 = select(arg_3.xyz, vec3<bool>(false, all(!vec4<bool>(false, arg_3.x, false, arg_1.x)), true), true);
    let var_2 = ~arg_2.a;
    var var_3 = vec3<u32>(~var_2, ~_wgslsmith_mod_u32(arg_2.a | arg_2.a, ~(arg_0 ^ u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(_wgslsmith_mult_u32(arg_0, 4294967295u), func_2().a)));
    return select(vec3<i32>(max(2147483647i, ~(~0i)), ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(26705i, -44398i), 1i), abs(1i)), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), arg_3.wxz);
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_1(true, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 0u, 50196u, 21105u), ~vec4<u32>(4294967295u, u_input.a.x, arg_0.x, arg_0.x) << (~vec4<u32>(arg_0.x, 66480u, arg_0.x, 27924u) % vec4<u32>(32u))), countOneBits(~(~vec4<u32>(13963u, arg_0.x, arg_0.x, arg_0.x)))), vec3<u32>(min(0u, arg_0.x >> (u_input.b % 32u)), 4294967295u, 4294967295u | ~u_input.b) >> (select(arg_0, vec3<u32>(u_input.b, firstTrailingBit(u_input.a.x), ~u_input.b), vec3<bool>(true, true, true)) % vec3<u32>(32u)), func_4(~max(u_input.a.x, 58493u), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), true), func_2(), vec4<bool>(true, true, true, true)) << ((_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.x, 0u, u_input.a.x), firstTrailingBit(vec3<u32>(arg_0.x, 24073u, 29690u))) | vec3<u32>(~34528u, ~38931u, 110658u)) % vec3<u32>(32u)), arg_0.xx);
    global0 = var_0.d.x;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -869f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_div_f32(1650f, -380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f * 520f)), all(select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, var_0.a, var_1.a), vec3<bool>(var_0.a, false, true)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 912f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1081f, 614f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1139f)) + 3072f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f - -1356f) - _wgslsmith_f_op_f32(f32(-1f) * -235f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f)))))));
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    global0 = -_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(reverseBits(7182i), 1i) >> (~4294967295u % 32u), _wgslsmith_mod_i32(abs(~1i), func_1(~vec3<u32>(1023u, u_input.a.x, 51865u))));
    let var_0 = Struct_1(_wgslsmith_mod_u32(36233u, 82712u) <= (16724u & (1u >> ((u_input.b | u_input.a.x) % 32u))), vec4<u32>(19146u, 13427u, _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(11143u, 9014u)), vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(1u, 51863u)), vec2<u32>(18167u | u_input.b, abs(u_input.b))), 1u), vec3<u32>(abs(~0u) >> (1u % 32u), firstTrailingBit(u_input.b << ((u_input.b | u_input.b) % 32u)), reverseBits(14302u)), vec3<i32>(i32(-1i) * -121509i, firstLeadingBit(-(i32(-1i) * -37098i)), 12281i), _wgslsmith_sub_vec2_u32(u_input.a, ~select(reverseBits(vec2<u32>(u_input.b, 0u)), ~vec2<u32>(u_input.b, u_input.a.x), func_2().b)));
    let var_1 = !select(select(vec4<bool>(all(vec2<bool>(var_0.a, var_0.a)), any(vec3<bool>(var_0.a, false, false)), var_0.a & false, all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, false, var_0.a), false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, true, var_0.a)), true), vec4<bool>(true, var_0.a, var_0.a, true), !func_2().b);
    var var_2 = var_1.zzx;
    global0 = -2147483647i;
    let var_3 = ~var_0.e.x;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(966f, -1000f) + vec2<f32>(-195f, 734f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, -880f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1044f, 823f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(112f, 920f)))))), 4294967295u);
}

