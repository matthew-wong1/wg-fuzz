struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: u32 = 20657u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    global0 = reverseBits(abs(1u << (~u_input.b.x % 32u)));
    let var_0 = Struct_1(~firstTrailingBit(vec3<u32>(47759u, ~16846u, 0u)), max(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(u_input.c.x, 46869i, -33705i, 2147483647i) | _wgslsmith_mod_vec4_i32(arg_0, arg_0)), vec4<i32>(u_input.c.x << (6940u % 32u), countOneBits(u_input.c.x), 0i, 39689i) & ~(-arg_0)), _wgslsmith_mult_i32(29323i, -1i), reverseBits(~max(u_input.b.x, abs(0u))), !(!select(vec2<bool>(true, true), !vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1))));
    var var_1 = max(reverseBits(firstTrailingBit(firstTrailingBit(var_0.b))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-22669i, u_input.a.x, 25937i, var_0.b.x) | arg_0, vec4<i32>(var_0.b.x, var_0.c, u_input.a.x, 6961i)), abs(select(vec4<i32>(-14781i, -2147483647i, var_0.c, 1i), var_0.b, vec4<bool>(true, var_0.e.x, var_0.e.x, arg_1))), vec4<i32>(u_input.c.x, i32(-1i) * -4685i, u_input.a.x, arg_0.x)));
    let var_2 = Struct_2(var_0, var_0, var_0.e);
    let var_3 = Struct_1(min(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_2.b.a.yz, vec2<u32>(17105u, 16444u)), ~u_input.e.x, 0u & u_input.d), abs(73867u), 11391u), min(u_input.b.zzz, vec3<u32>(55646u, var_2.b.a.x, var_2.b.d) << (vec3<u32>(3269u, 0u, 36345u) % vec3<u32>(32u))) | ~(vec3<u32>(var_2.b.d, var_2.a.a.x, var_0.d) | u_input.b.xzx)), arg_0, ~_wgslsmith_sub_i32(var_1.x, ~firstLeadingBit(arg_0.x)), 25425u, var_0.e);
    return _wgslsmith_mod_i32(2147483647i, var_3.c);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_div_vec3_u32(u_input.b.xyw, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(u_input.e.x, u_input.e.x, u_input.b.x), vec3<u32>(u_input.e.x, u_input.b.x, u_input.e.x)))), ~vec3<u32>(u_input.e.x, 0u, u_input.d) & _wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, u_input.e.x, 4294967295u), u_input.b.yyx), u_input.b.yyy)), min(vec4<i32>(-38054i, -19704i, -14512i, u_input.c.x), vec4<i32>(33302i, -29740i, select(u_input.c.x, u_input.a.x, true), func_3(vec4<i32>(u_input.a.x, u_input.a.x, -34268i, 68621i), true, vec4<f32>(-1000f, -1000f, -1515f, 1433f)))) ^ -firstLeadingBit(abs(vec4<i32>(u_input.a.x, u_input.c.x, 1i, 6115i))), u_input.c.x, u_input.e.x, vec2<bool>(true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    let var_1 = -3003i;
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(abs(~firstLeadingBit(vec3<u32>(9107u, u_input.b.x, var_0.a.x))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(53359u, var_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 58122u, 32437u), vec3<u32>(var_0.d, var_0.d, 25104u))), reverseBits(var_0.d), 1u)), ~((var_0.b & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, -28207i, u_input.c.x, -2147483647i), var_0.b, var_0.b)) & _wgslsmith_div_vec4_i32(var_0.b, _wgslsmith_mult_vec4_i32(var_0.b, vec4<i32>(var_0.c, var_0.b.x, var_0.b.x, 14374i)))), ~(-(i32(-1i) * -8509i)) << (~var_0.a.x % 32u), 1u, var_0.e);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(735f, -603f) - _wgslsmith_f_op_f32(sign(-1434f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-386f - -1000f))))))));
    global0 = ~(~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a.x, 0u, 1u), firstLeadingBit(6368u))));
    return min(reverseBits(u_input.e.x), _wgslsmith_sub_u32(0u, abs(_wgslsmith_mult_u32(0u, 80851u))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    let var_0 = vec2<u32>(~0u, _wgslsmith_mod_u32(~func_2(), max(26628u, arg_1))) | (~vec2<u32>(abs(arg_0.a.d), select(arg_1, 0u, false)) & vec2<u32>(~1u, reverseBits(select(0u, 0u, false))));
    let var_1 = arg_0.c.x;
    global0 = _wgslsmith_mod_u32(abs(4294967295u), abs(~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d, 0u), func_2())));
    global0 = ~(~arg_1);
    global0 = _wgslsmith_sub_u32(arg_0.b.d, _wgslsmith_div_u32(u_input.d, ~(~_wgslsmith_add_u32(arg_0.a.a.x, var_0.x))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    let var_0 = vec4<i32>(-64363i, -2147483647i, ~(-(func_1(Struct_2(Struct_1(u_input.b.yxw, vec4<i32>(-2400i, 0i, 0i, u_input.a.x), 0i, 1u, vec2<bool>(true, false)), Struct_1(vec3<u32>(u_input.e.x, u_input.b.x, 1u), vec4<i32>(-1i, 29928i, u_input.c.x, u_input.a.x), u_input.c.x, u_input.b.x, vec2<bool>(true, false)), vec2<bool>(false, true)), 1u, vec3<f32>(1043f, -1522f, 615f)) | ~u_input.c.x)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(f32(-1f) * -1262f)))));
    global0 = 104186u;
    let var_2 = Struct_2(Struct_1(u_input.b.xxx, countOneBits(~var_0 & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 7576i, var_0.x), var_0)), -(~func_1(Struct_2(Struct_1(u_input.b.wwz, vec4<i32>(-2147483647i, -29295i, var_0.x, -21435i), u_input.a.x, u_input.e.x, vec2<bool>(false, true)), Struct_1(u_input.b.xxz, var_0, var_0.x, 20728u, vec2<bool>(true, false)), vec2<bool>(true, true)), 4294967295u, vec3<f32>(var_1, -398f, var_1))), select(5225u, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(1u, u_input.b.x) >> (vec2<u32>(1u, u_input.e.x) % vec2<u32>(32u))), -1255f <= _wgslsmith_f_op_f32(round(var_1))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.wxz, reverseBits(vec3<u32>(u_input.e.x, 53230u, 1u)), ~u_input.b.zxx), ~(~vec3<u32>(4294967295u, u_input.e.x, u_input.d))), var_0, ~u_input.a.x >> ((~u_input.b.x ^ ~42283u) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(61596u, 45333u), vec2<u32>(1u, u_input.d)), vec2<bool>(!any(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)) && true)), vec2<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(~(vec3<u32>(var_2.a.d, 0u, 1u) & vec3<u32>(28149u, 0u, 1u))), _wgslsmith_mult_vec4_i32(var_0, select(vec4<i32>(var_0.x, u_input.a.x, 50385i, u_input.a.x), vec4<i32>(8800i, u_input.c.x, var_0.x, u_input.a.x), !vec4<bool>(var_2.b.e.x, false, false, false))), -var_0.x, 63820u, select(select(select(var_2.c, vec2<bool>(var_2.a.e.x, false), vec2<bool>(var_2.a.e.x, false)), !var_2.b.e, var_2.b.e.x), select(select(vec2<bool>(true, true), vec2<bool>(var_2.b.e.x, false), true), var_2.a.e, !var_2.a.e.x), !select(vec2<bool>(false, var_2.b.e.x), vec2<bool>(true, false), vec2<bool>(true, var_2.b.e.x)))), Struct_1(u_input.b.yxw, firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, 15623i, var_0.x)) | reverseBits(var_0 << (vec4<u32>(5561u, var_2.b.a.x, var_2.b.a.x, var_2.a.d) % vec4<u32>(32u))), -33322i, 23278u, !(!var_2.b.e)), select(select(vec2<bool>(var_2.c.x, all(vec4<bool>(var_2.a.e.x, var_2.b.e.x, var_2.c.x, false))), !vec2<bool>(var_2.b.e.x, true), all(select(vec4<bool>(true, var_2.b.e.x, false, false), vec4<bool>(var_2.b.e.x, false, var_2.a.e.x, var_2.b.e.x), vec4<bool>(false, true, var_2.a.e.x, true)))), var_2.a.e, _wgslsmith_div_i32(var_2.a.c, ~var_0.x) > -_wgslsmith_sub_i32(u_input.c.x, var_2.a.c)));
    var var_4 = ~var_0.x;
    var var_5 = _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(abs(var_1))));
    let var_6 = ~(u_input.b.ww & var_2.a.a.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(countOneBits(var_2.a.b), vec4<i32>(u_input.a.x, -max(12635i, 2147483647i), var_2.a.b.x, ~(-1i))));
}

