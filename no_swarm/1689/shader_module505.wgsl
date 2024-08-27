struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = vec2<i32>(34826i, -2147483647i) ^ arg_2.zx;
    var var_1 = reverseBits(_wgslsmith_mult_u32(~arg_1.b.b.b ^ ~arg_3.c, _wgslsmith_mod_u32(~(arg_1.b.a & arg_1.c), reverseBits(0u))));
    var_0 = arg_2.xx;
    var_0 = -abs(vec2<i32>(select(-2147483647i, var_0.x, true) ^ 1i, _wgslsmith_mult_i32(i32(-1i) * -5006i, _wgslsmith_mod_i32(arg_2.x, arg_2.x))));
    let var_2 = _wgslsmith_sub_vec2_u32(reverseBits(arg_1.d.xw), arg_1.d.yw);
    return -select(~(~(vec4<i32>(12248i, arg_2.x, -3227i, var_0.x) ^ vec4<i32>(arg_2.x, u_input.c, var_0.x, arg_0))), firstTrailingBit(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, 13407i, -32683i, arg_0)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -26049i, arg_2.x, -38424i), vec4<i32>(-2147483647i, arg_0, 10379i, -11994i)))), false);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.a, u_input.c, 1i, 1i)), -vec4<i32>(-u_input.c, u_input.a ^ u_input.a, u_input.a, 30336i)), Struct_4(select(vec3<u32>(0u, u_input.b, 75098u), select(vec3<u32>(arg_0.b, arg_2.c, arg_1.b), vec3<u32>(11928u, 20719u, arg_1.b), false), vec3<bool>(true, true, true)) | (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c, 42964u, 44142u), vec3<u32>(arg_0.b, u_input.b, 21970u)) << (~vec3<u32>(39818u, arg_2.b, arg_0.c) % vec3<u32>(32u))), Struct_3(~0u, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_1.a.x, 238f) + arg_1.a), countOneBits(17862u), 26295u), arg_3, arg_1.a.x, Struct_2(arg_2.a, arg_0.b, ~1u)), 38950u, reverseBits(_wgslsmith_div_vec4_u32(max(vec4<u32>(53078u, 1u, 34549u, 29790u), vec4<u32>(arg_0.b, arg_2.c, arg_2.c, arg_1.b)), vec4<u32>(arg_2.c, arg_0.b, arg_2.c, arg_1.c) >> (vec4<u32>(arg_1.c, arg_1.c, 92619u, arg_1.b) % vec4<u32>(32u))))), reverseBits(_wgslsmith_mod_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.c, u_input.a, -40903i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-7901i, 18093i, 26863i), vec3<i32>(u_input.c, u_input.a, 12346i)), ~vec3<i32>(16703i, u_input.a, u_input.a)))), arg_0);
    var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, -14780i, _wgslsmith_sub_i32(-1i, var_0.x)), _wgslsmith_div_i32(~(-46735i), select(u_input.a, var_0.x, true)))), ~(-32698i), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, _wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(var_0.x, -1i))), -(~u_input.a)), var_0.x);
    var var_1 = Struct_4(~(~vec3<u32>(u_input.b, u_input.b, 1u) << (countOneBits(vec3<u32>(4294967295u, u_input.b, u_input.b)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 57247u, arg_0.c), ~vec4<u32>(1u, arg_1.b, u_input.b, 27314u)), ~arg_2.c, 1u) % vec3<u32>(32u)), Struct_3(46680u, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_0.a.x)), 12792u, _wgslsmith_mod_u32(arg_1.c, firstLeadingBit(u_input.b))), !(1i == -var_0.x), 2180f, Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.a))), ~_wgslsmith_mod_u32(arg_2.c, 0u), (u_input.b << (arg_1.c % 32u)) | 57404u)), ~27026u, ~max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_2.b), vec2<u32>(87828u, arg_0.b)), 4294967295u >> (arg_0.b % 32u), u_input.b, arg_1.c), vec4<u32>(~9311u, _wgslsmith_dot_vec3_u32(vec3<u32>(19489u, 4294967295u, 0u), vec3<u32>(u_input.b, arg_0.b, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, arg_1.c, arg_1.b, arg_2.c), vec4<u32>(arg_0.b, u_input.b, arg_2.b, arg_1.b)), countOneBits(arg_0.c))));
    let var_2 = vec3<bool>(all(!(!select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), false))), all(select(vec3<bool>(all(vec3<bool>(var_1.b.c, arg_3, var_1.b.c)), var_1.b.c && arg_3, any(vec4<bool>(true, var_1.b.c, false, var_1.b.c))), vec3<bool>(true, true, true), ~u_input.a <= _wgslsmith_div_i32(64797i, u_input.a))), arg_3);
    let var_3 = var_0.x;
    return Struct_1(~arg_2.b, var_1.b.b.c, all(select(vec4<bool>(false, var_2.x, var_1.b.c, false), !vec4<bool>(false, true, var_2.x, var_2.x), !vec4<bool>(true, false, var_1.b.c, arg_3))) | true, arg_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<bool>) -> i32 {
    let var_0 = firstLeadingBit(~(~abs(vec2<u32>(arg_0.b, u_input.b))));
    var var_1 = Struct_4(~countOneBits(~vec3<u32>(arg_1.b, u_input.b, 45760u)) & ~(vec3<u32>(u_input.b, 12235u, var_0.x) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), Struct_3(4294967295u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, -109f, -1121f), vec3<f32>(arg_1.d, arg_0.d, 450f))), _wgslsmith_mult_u32(~arg_0.b, arg_0.a), 1u), 1i != ~_wgslsmith_mult_i32(u_input.a, -81120i), _wgslsmith_f_op_f32(-func_2(Struct_2(vec3<f32>(arg_0.d, 1358f, 1914f), 47290u, arg_0.a), Struct_2(vec3<f32>(-426f, arg_1.d, arg_1.d), arg_0.b, arg_1.a), Struct_2(vec3<f32>(arg_0.d, arg_0.d, arg_0.d), 1u, 47267u), !arg_2.x).d), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), arg_1.d, _wgslsmith_f_op_f32(arg_0.d * arg_1.d)), u_input.b & ~1u, u_input.b)), arg_1.b, ~vec4<u32>(51534u, ~var_0.x, arg_1.b, arg_0.a));
    var var_2 = _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.d.yyx, var_1.d.zyx) >> (0u % 32u), select(53616u, _wgslsmith_dot_vec3_u32(var_1.d.yyx, var_1.d.ywz), false))), _wgslsmith_clamp_vec2_u32((vec2<u32>(27355u, arg_0.a) & var_1.a.zz) & vec2<u32>(4294967295u, 4634u), vec2<u32>(firstLeadingBit(0u), max(reverseBits(u_input.b), ~var_1.a.x)), vec2<u32>(u_input.b, var_0.x)));
    let var_3 = Struct_4(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_0.a, abs(13898u)), 136077u), ~_wgslsmith_mult_u32(12206u | u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, var_1.c, 3892u), vec3<u32>(0u, var_2.x, var_0.x))), 1u), var_1.b, _wgslsmith_clamp_u32(19595u, ~(1u | arg_0.a), 4294967295u), vec4<u32>(var_2.x, ~arg_1.b, reverseBits(67858u), _wgslsmith_add_u32(~1u, 0u)));
    var var_4 = var_1.a;
    return max(-(~(-24500i)) << (_wgslsmith_mod_u32(4294967295u, func_2(var_1.b.b, var_1.b.b, Struct_2(vec3<f32>(934f, 2074f, var_1.b.e.a.x), var_4.x, 0u), true).a) % 32u), ~(~u_input.c));
}

fn func_1() -> vec4<bool> {
    let var_0 = !vec2<bool>(true, 0i < func_4(Struct_1(0u, u_input.b, true, -176f), func_2(Struct_2(vec3<f32>(-1000f, 2578f, 229f), u_input.b, 4778u), Struct_2(vec3<f32>(-883f, -1314f, -1281f), 47758u, 33642u), Struct_2(vec3<f32>(905f, 714f, 113f), u_input.b, u_input.b), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return vec4<bool>(false || (func_2(Struct_2(vec3<f32>(-1764f, 1315f, 1269f), u_input.b, 56850u), Struct_2(vec3<f32>(-755f, 165f, 1000f), 21340u, 0u), Struct_2(vec3<f32>(-323f, -399f, 195f), u_input.b, u_input.b), true).c == any(vec2<bool>(var_0.x, var_0.x))), true, all(vec4<bool>(var_0.x, u_input.b <= u_input.b, var_0.x && true, any(!vec4<bool>(false, true, var_0.x, false)))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(select(u_input.c != -2147483647i, false, all(vec4<bool>(false, false, false, false))), all(func_1()), !any(vec3<bool>(true, true, false)), true));
    let var_1 = ~reverseBits(_wgslsmith_add_i32(abs(1i), ~min(u_input.c, u_input.c)));
    var var_2 = Struct_4(~_wgslsmith_div_vec3_u32(vec3<u32>(0u | u_input.b, 58827u, firstLeadingBit(u_input.b)), vec3<u32>(~33104u, min(u_input.b, u_input.b), 0u)), Struct_3(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(4294967295u, 56024u, 4294967295u)), vec3<u32>(func_2(Struct_2(vec3<f32>(1697f, -390f, -799f), 4294967295u, u_input.b), Struct_2(vec3<f32>(191f, -1906f, -1907f), u_input.b, 0u), Struct_2(vec3<f32>(1000f, -990f, 1210f), u_input.b, 67232u), var_0).a, _wgslsmith_mod_u32(u_input.b, 4294967295u), ~0u)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1166f, 342f, -1424f), vec3<f32>(1000f, -426f, -358f))), select(u_input.b, 36090u, !var_0), ~_wgslsmith_mod_u32(u_input.b, u_input.b)), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -503f))))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, -499f, 436f)))), u_input.b, u_input.b)), u_input.b, ~(countOneBits(~vec4<u32>(23648u, 4294967295u, u_input.b, u_input.b)) ^ ((vec4<u32>(u_input.b, 1u, 1u, u_input.b) & vec4<u32>(u_input.b, 30661u, u_input.b, 1u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(53548u, 1u, u_input.b, 34851u)) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.b.a.x, -183f, -2109f, var_2.b.d), vec4<f32>(1000f, var_2.b.b.a.x, var_2.b.e.a.x, var_2.b.d)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-970f, 1000f, -407f, -970f))), vec4<f32>(817f, -1810f, var_2.b.e.a.x, var_2.b.d), func_1()))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.b.a.x, 399f, var_2.b.b.a.x, var_2.b.d))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.b.a.x, var_2.b.e.a.x, 360f, 439f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2143f, var_2.b.e.a.x, -486f, var_2.b.b.a.x))))), true)), _wgslsmith_mod_vec2_u32(firstLeadingBit(var_2.d.yy & vec2<u32>(0u, var_2.c)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), ~vec2<u32>(var_2.b.e.b, u_input.b)))), _wgslsmith_f_op_f32(1395f - _wgslsmith_f_op_f32(-895f * _wgslsmith_f_op_f32(-1334f - var_2.b.e.a.x))), ~9896u ^ var_2.d.x, _wgslsmith_clamp_vec2_i32(firstLeadingBit(-(vec2<i32>(-34510i, u_input.a) ^ vec2<i32>(-1i, 2147483647i))), ~vec2<i32>(func_4(Struct_1(u_input.b, u_input.b, true, var_2.b.e.a.x), Struct_1(0u, 14186u, var_0, -747f), vec3<bool>(false, false, false), vec3<bool>(var_0, var_0, false)), -var_1), countOneBits(-vec2<i32>(u_input.a, var_1)) & func_3(var_1, Struct_4(var_2.d.yzz, Struct_3(1u, Struct_2(var_2.b.b.a, u_input.b, u_input.b), true, 159f, var_2.b.e), var_2.b.e.b, var_2.d), countOneBits(vec3<i32>(u_input.c, -1495i, u_input.c)), var_2.b.e).zz));
}

