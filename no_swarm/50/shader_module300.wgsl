struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(select(vec3<u32>(~4294967295u, select(1u, arg_0.b >> (0u % 32u), true), arg_0.b), vec3<u32>(min(~arg_0.a.x, _wgslsmith_add_u32(arg_0.a.x, arg_0.b)), ~arg_0.a.x >> (_wgslsmith_dot_vec2_u32(arg_0.a.xz, vec2<u32>(arg_0.b, arg_0.a.x)) % 32u), _wgslsmith_div_u32(arg_0.b ^ 26062u, ~1u)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), 31936u, -109f);
    let var_1 = vec2<u32>(firstLeadingBit(var_0.a.x), _wgslsmith_mult_u32(~firstTrailingBit(4294967295u), 4294967295u)) >> (~arg_0.a.yz % vec2<u32>(32u));
    let var_2 = true;
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(~func_3(Struct_1(vec3<u32>(0u, 94096u, 62175u), 1u, 697f))), reverseBits(41265u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f), 203f))));
    let var_1 = Struct_1(vec3<u32>(~4294967295u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.a.x), var_0.a.xy), var_0.a.yz), firstLeadingBit(_wgslsmith_sub_u32(var_0.b, var_0.a.x))), ~1u, _wgslsmith_f_op_f32(-var_0.c));
    var var_2 = Struct_1(var_1.a, 71875u, var_1.c);
    var var_3 = Struct_1(min(vec3<u32>(_wgslsmith_add_u32(47705u, ~var_2.b), 1u, var_1.a.x), reverseBits(_wgslsmith_clamp_vec3_u32(~var_1.a, vec3<u32>(12461u, 0u, 4294967295u), vec3<u32>(19315u, 1u, var_0.a.x)))), 49905u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) * _wgslsmith_f_op_f32(-var_0.c))))));
    var_3 = Struct_1(~vec3<u32>(_wgslsmith_mod_u32(21450u, var_0.b), var_2.b, (var_0.a.x >> (var_0.b % 32u)) & abs(var_3.b)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(344f + var_2.c))))));
    return Struct_1(var_3.a, var_3.b, _wgslsmith_f_op_f32(-1421f + var_0.c));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_div_u32(5695u, abs(_wgslsmith_sub_u32(arg_0, arg_1.b))), arg_1.c);
    var_0 = Struct_1(vec3<u32>(~1u, 84787u, _wgslsmith_sub_u32(~0u, ~_wgslsmith_mod_u32(arg_0, var_0.b))), 28666u, _wgslsmith_f_op_f32(-arg_1.c));
    var var_1 = false;
    var var_2 = func_2();
    var_2 = arg_1;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = any(vec4<bool>(func_4(_wgslsmith_div_u32(var_0.b, countOneBits(arg_0.b)), func_2()), all(vec2<bool>(true, true)), false, any(vec4<bool>(true, true, true, true))));
    var_0 = func_2();
    let var_2 = select(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x), var_1);
    var_0 = Struct_1(vec3<u32>(~var_0.b, max(~(~4294967295u), min(~53194u, 0u)), ~abs(4294967295u)), ~var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = func_1(Struct_1(vec3<u32>(firstTrailingBit(1u), 95787u, ~arg_2.b << (4294967295u % 32u)), arg_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(288f, -993f)))))));
    let var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    let var_2 = _wgslsmith_mod_u32(arg_2.a.x, _wgslsmith_add_u32(~(56523u >> (_wgslsmith_sub_u32(arg_2.a.x, 17636u) % 32u)), 34428u));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(max(u_input.a.x, ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.b.x), _wgslsmith_mult_i32(firstTrailingBit(reverseBits(4610i)), (i32(-1i) * -9015i) & abs(u_input.b.x)) & select(~(~u_input.b.x), u_input.a.x, (arg_1.b | arg_2.a.x) >= 4294967295u), u_input.a.x);
    let var_4 = select(_wgslsmith_clamp_i32(~6087i, -(min(7905i, -2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, var_3.x), vec3<i32>(-51109i, var_3.x, -35001i))), -_wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(var_3.x, var_3.x, 2147483647i, -2147483647i))), max(53675i, _wgslsmith_add_i32(19023i, select(_wgslsmith_div_i32(-55260i, 2147483647i), var_3.x, !var_1.x))), any(vec2<bool>(var_1.x, true)));
    return func_1(arg_2, vec2<f32>(_wgslsmith_div_f32(arg_1.c, arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - -2066f)), -988f)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(838f * -1000f), func_1(func_1(Struct_1(vec3<u32>(0u, 73205u, arg_0.b), 4294967295u, -1289f), vec2<f32>(-296f, -675f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(578f, 443f), vec2<f32>(-234f, arg_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-670f, 961f) + vec2<f32>(arg_1.c, arg_0.c))))).c, -747f)));
    let var_2 = ~vec3<i32>(~countOneBits(_wgslsmith_div_i32(u_input.a.x, 24021i)), u_input.b.x, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(-2147483647i, u_input.a.x)) | -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2365i), u_input.b.yw));
    let var_3 = !(!(!vec4<bool>(arg_2.x, true, !arg_3.x, true)));
    var var_4 = func_2();
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_4.a, ~vec3<u32>(1u ^ arg_1.a.x, 44542u, arg_1.a.x)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (func_6(Struct_1(firstTrailingBit(vec3<u32>(49525u, 40929u, 37099u)), countOneBits(1u), _wgslsmith_f_op_f32(180f - 1000f)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, 765f)), func_1(Struct_1(vec3<u32>(21461u, 1u, 0u), 4294967295u, -413f), vec2<f32>(-438f, 385f)), Struct_1(vec3<u32>(31040u, 4294967295u, 84815u), 29293u, -614f), 1f), vec3<bool>(true, true, true), vec3<bool>(true, true, true)) << (vec3<u32>(1u, ~(~69479u), 0u) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(44711u, 0u, 26086u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 40469u, 1u)), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 25230u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(false, false, false)))) % vec3<u32>(32u));
    var var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), func_4(10946u, Struct_1(var_0, 1u, 1551f)))), vec4<bool>(false, true, u_input.b.x <= -18273i, true), !(true & func_4(var_0.x, Struct_1(vec3<u32>(1u, var_0.x, var_0.x), 35476u, -576f)))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), var_0.x <= var_0.x), vec4<bool>(false, (u_input.a.x <= u_input.b.x) | select(true, true, true), true, false), true), ~var_0.x > 4294967295u);
    let var_2 = func_1(Struct_1(_wgslsmith_clamp_vec3_u32(func_3(func_5(vec2<f32>(525f, -1000f), Struct_1(var_0, var_0.x, -2018f), Struct_1(vec3<u32>(15854u, var_0.x, var_0.x), var_0.x, 1261f), -819f)), vec3<u32>(63556u, 51089u, var_0.x) ^ vec3<u32>(0u, 1u, 66089u), var_0), ~func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2704f, 1150f)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 2392u, 561f), func_2(), _wgslsmith_f_op_f32(-1438f + 846f)).a.x, _wgslsmith_f_op_f32(step(-884f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(453f)) + _wgslsmith_f_op_f32(floor(104f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-959f, _wgslsmith_f_op_f32(f32(-1f) * -532f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f - -1273f)), -339f)));
    let var_3 = var_2;
    var var_4 = Struct_1(countOneBits(var_3.a | (var_2.a ^ func_1(Struct_1(var_3.a, var_2.b, var_2.c), vec2<f32>(802f, var_3.c)).a)), var_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(698f, _wgslsmith_div_f32(2038f, -1130f)) * var_3.c))));
    var var_5 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(49242i);
}

