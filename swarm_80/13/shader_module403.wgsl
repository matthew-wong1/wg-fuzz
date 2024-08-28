struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(~1i | _wgslsmith_dot_vec3_i32(vec3<i32>(-19999i, 2147483647i, 1i), vec3<i32>(-2147483647i, 2709i, 1i)), 32532i >> ((arg_0 | 4294967295u) % 32u), ~34413i, -1i), max(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -24402i, -3902i, 1i), vec4<i32>(-12476i, -1391i, -1i, 18058i), vec4<i32>(-1i, 0i, 2147483647i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1300i, 3296i, -2147483647i, -26338i), vec4<i32>(53771i, 37487i, 70459i, -2147483647i)), vec4<bool>(arg_1.x, true, true, false)) >> (~u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(max(vec4<i32>(-1i, -15516i, 2522i, -7834i), ~vec4<i32>(3729i, -2147483647i, 33425i, 1i)), -vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = !select(select(!select(vec4<bool>(false, arg_2.x, false, arg_1.x), arg_1, true), !select(vec4<bool>(false, true, true, arg_1.x), arg_1, true), arg_1), vec4<bool>(true, select(all(arg_2), arg_2.x, true), true && arg_1.x, true), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 27960u, 35956u), u_input.a.wxx) == 0u));
    var var_2 = abs(vec2<u32>(3129u, arg_0));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(2209f))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(702f * _wgslsmith_f_op_f32(f32(-1f) * -472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-807f)) + _wgslsmith_f_op_f32(abs(-208f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-298f + -449f)))))), arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, -19275i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, 2147483647i, -1i, 0i)))), vec4<i32>(4088i, 8605i, -2147483647i, var_0.x)));
    let var_4 = vec4<bool>(any(arg_2.yy), ~var_3.d < 25122u, var_1.x, select(!arg_2.x, false, true));
    return max(_wgslsmith_mult_u32(~firstTrailingBit(_wgslsmith_add_u32(var_2.x, 21273u)), 76290u), _wgslsmith_dot_vec3_u32(max(~abs(u_input.a.zwy), u_input.a.xzz), vec3<u32>(var_2.x, _wgslsmith_clamp_u32(~20344u, firstLeadingBit(u_input.a.x), 31899u), var_3.d)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = vec3<u32>(~u_input.a.x, abs(~4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(22609u ^ u_input.a.x, ~u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 32186u)), ~vec4<u32>(0u, 18236u, 11429u, u_input.a.x)), 0u);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-907f))))), Struct_1(_wgslsmith_f_op_f32(ceil(-1195f))), _wgslsmith_f_op_f32(floor(2351f)), ~(~42806u), firstLeadingBit(-firstTrailingBit(vec4<i32>(-36234i, arg_0.x, 1i, arg_0.x)))));
    var var_2 = 57249u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1140f)), _wgslsmith_f_op_f32(-1041f + _wgslsmith_f_op_f32(-170f - -1191f))))));
    var var_4 = Struct_3(var_1.a);
    return Struct_2(Struct_1(-332f), var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.a) * _wgslsmith_f_op_f32(-var_3)), func_3(select(~51603u, u_input.a.x, true), !select(vec4<bool>(true, false, arg_1.x, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x)), vec3<bool>(arg_1.x, select(arg_1.x, false, arg_1.x) == false, false)), var_4.a.e);
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = func_2(arg_0.a.e.yxx, vec2<bool>(reverseBits(_wgslsmith_div_i32(arg_0.a.e.x, 0i)) >= firstLeadingBit(-1i), all(vec2<bool>(true, true)))).a;
    return all(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), select(false, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), vec3<bool>(!(0i > arg_0.a.e.x), all(vec2<bool>(true, true)), false)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = -select(abs(min(~vec3<i32>(1i, -72704i, 13625i), vec3<i32>(1i, 1i, 1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-569i, 2147483647i, 1i)), ~vec3<i32>(-22792i, 1i, -3107i)), _wgslsmith_add_i32(1i, -7259i), 27830i), func_4(Struct_3(func_2(vec3<i32>(1i, 20626i, -45592i), vec2<bool>(true, arg_0)))));
    let var_1 = Struct_3(Struct_2(func_2(vec3<i32>(19126i | var_0.x, 5323i, ~var_0.x), vec2<bool>(true, true)).a, Struct_1(-1532f), func_2(vec3<i32>(-var_0.x, 1i << (1u % 32u), 64034i), vec2<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), any(vec3<bool>(true, arg_0, arg_0)))).b.a, 0u << ((21799u ^ _wgslsmith_clamp_u32(57376u, 44548u, u_input.a.x)) % 32u), select(max(~vec4<i32>(var_0.x, -1i, 1i, 24120i), vec4<i32>(var_0.x, -24509i, var_0.x, 42776i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), ~(vec4<i32>(-2147483647i, 0i, var_0.x, 41601i) ^ vec4<i32>(-2147483647i, 1i, 8571i, -1i)), select(true, arg_0, false))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(707f, var_1.a.c, var_1.a.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, 323f, var_1.a.c) - vec3<f32>(1000f, 1967f, var_1.a.a.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.b.a, 253f, -911f), vec3<f32>(794f, var_1.a.c, var_1.a.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(524f, 206f), _wgslsmith_f_op_f32(trunc(-154f)), _wgslsmith_f_op_f32(f32(-1f) * -263f))))));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.a.a, var_2.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.x)), var_4)), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4), var_4)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = Struct_3(func_2(arg_3.a.e.wzz, vec2<bool>(false, true)));
    var_1 = Struct_3(Struct_2(arg_3.a.b, arg_3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a.a, -1022f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a.c)))), func_3(1u, vec4<bool>(true, false, !arg_0.x, arg_2.a.b.a >= -109f), select(select(arg_0.wxy, vec3<bool>(arg_0.x, arg_0.x, true), false), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.wzz, arg_0.yyy), select(arg_0.yyx, vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_clamp_vec4_i32(arg_3.a.e, vec4<i32>(~arg_3.a.e.x, abs(var_1.a.e.x), i32(-1i) * -2147483647i, -arg_2.a.e.x), arg_2.a.e)));
    var var_2 = select(select(!arg_0.wx, arg_0.zw, !(!select(arg_0.zx, arg_0.wx, arg_0.yw))), vec2<bool>(!arg_0.x, !(arg_3.a.d >= 16450u)), select(!select(vec2<bool>(true, false), !arg_0.zw, select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true))), vec2<bool>(!func_4(var_0), false & arg_0.x), ~_wgslsmith_clamp_u32(0u, var_1.a.d, var_0.a.d) >= _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.a.d, 1u), _wgslsmith_add_u32(u_input.a.x, var_0.a.d))));
    var var_3 = ~firstTrailingBit(vec2<u32>(~abs(1u), var_1.a.d));
    return func_2(reverseBits(vec3<i32>(_wgslsmith_mod_i32(arg_3.a.e.x, arg_3.a.e.x), _wgslsmith_clamp_i32(var_1.a.e.x, 2147483647i, var_0.a.e.x), 10528i)) & min(arg_3.a.e.wzx, var_1.a.e.yyw), arg_0.yz).b;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = !select(vec4<bool>(false, any(vec3<bool>(true, false, true)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), false, true)), any(vec3<bool>(true, true, true)));
    let var_1 = Struct_2(Struct_1(arg_1), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f * -1465f) - _wgslsmith_div_f32(1383f, arg_1)))), 59616u, vec4<i32>(countOneBits(1i << (1u % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-74320i, -2147483647i, 28207i), reverseBits(countOneBits(vec3<i32>(25976i, 63562i, 15089i)))), 1i, i32(-1i) * -2147483647i));
    var var_2 = u_input.a | (abs(firstLeadingBit(u_input.a)) & u_input.a);
    let var_3 = ~vec3<u32>(var_1.d, ~func_2(var_1.e.zzx, var_0.wx).d, select(_wgslsmith_add_u32(max(u_input.a.x, var_1.d), 45506u), ~(~var_2.x), select(all(var_0.yz), all(vec3<bool>(var_0.x, false, var_0.x)), true)));
    var_2 = vec4<u32>(62891u, _wgslsmith_mult_u32(select(~1u, var_3.x, true), ~_wgslsmith_clamp_u32(var_1.d, u_input.a.x, 1u)) | 33818u, var_2.x, 4745u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(func_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(func_1(true)), Struct_3(Struct_2(Struct_1(1000f), Struct_1(264f), 856f, u_input.a.x, vec4<i32>(2147483647i, -3787i, 2147483647i, -1i))), Struct_3(Struct_2(Struct_1(-834f), Struct_1(2101f), -848f, 4294967295u, vec4<i32>(-103677i, 65490i, 0i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(true)).x)));
    var_0 = Struct_3(Struct_2(var_0.a.b, func_5(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), func_4(Struct_3(Struct_2(Struct_1(var_0.a.b.a), var_0.a.b, var_0.a.a.a, var_0.a.d, var_0.a.e))), 1i == var_0.a.e.x), _wgslsmith_f_op_vec4_f32(func_1(any(vec3<bool>(false, true, false)))), Struct_3(var_0.a), Struct_3(func_2(vec3<i32>(var_0.a.e.x, var_0.a.e.x, -48869i), vec2<bool>(true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(func_5(vec4<bool>(true, false, true, false), vec4<f32>(var_0.a.a.a, var_0.a.c, var_0.a.b.a, -622f), Struct_3(var_0.a), Struct_3(var_0.a)).a)), _wgslsmith_f_op_f32(f32(-1f) * -853f)), var_0.a.d, -var_0.a.e));
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, 1i, 32236u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(402f, var_0.a.b.a), -1133f)), -388f))), u_input.a.xyw);
}

