struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-920f, -482f) - 1065f) + _wgslsmith_f_op_f32(f32(-1f) * -250f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-709f + -1104f))))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(vec3<u32>(arg_3.c.x, 0u, min(1u, arg_3.e.c.x)), vec4<i32>(-1i >> (firstLeadingBit(firstTrailingBit(4294967295u)) % 32u), -arg_3.b.a.x, -arg_3.a.a.x, u_input.a.x), u_input.a.zwz, !(true != (15250u != _wgslsmith_sub_u32(1u, arg_3.a.c.x))));
    let var_1 = true;
    var var_2 = !var_0.d;
    let var_3 = var_0;
    var var_4 = var_0;
    return _wgslsmith_dot_vec4_u32(~countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(29547u, arg_3.c.x, 4294967295u, var_0.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(7659u, 46737u, var_0.a.x, 81931u), vec4<u32>(4294967295u, var_3.a.x, 49219u, 84488u), vec4<u32>(1u, var_0.a.x, 4294967295u, arg_3.e.c.x)))), _wgslsmith_mult_vec4_u32(abs(~firstTrailingBit(vec4<u32>(25361u, 75527u, var_0.a.x, 100487u))), min(select(countOneBits(vec4<u32>(var_4.a.x, 0u, var_4.a.x, 9254u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 29961u, var_0.a.x, 16809u), vec4<u32>(var_0.a.x, var_0.a.x, var_4.a.x, 37715u)), select(vec4<bool>(false, arg_1.x, var_0.d, var_3.d), vec4<bool>(true, var_0.d, false, false), var_1)), select(min(vec4<u32>(var_3.a.x, 0u, 4294967295u, arg_3.e.c.x), vec4<u32>(var_3.a.x, arg_3.e.c.x, 50235u, arg_3.c.x)), vec4<u32>(18238u, var_3.a.x, var_0.a.x, var_3.a.x), var_3.d))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(63871u, 4294967295u, 5468u, arg_0) | vec4<u32>(arg_0, 0u, arg_0, 53830u), vec4<u32>(1u, 9535u, 2915u, arg_0)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_0, 1u), vec4<u32>(1u, 1u, 1u, 114694u)), countOneBits(57832u), arg_0, ~arg_0)));
    var var_1 = Struct_1(u_input.a, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, var_0.x), vec4<u32>(4294967295u, arg_0, var_0.x, var_0.x)), vec4<u32>(1u, var_0.x, 4294967295u, 42597u) | vec4<u32>(94900u, var_0.x, arg_0, 0u)) > func_4(u_input.c.x >= ~1i, !vec3<bool>(true, arg_2.x, false), vec2<f32>(_wgslsmith_f_op_f32(func_3(1u, Struct_2(Struct_1(vec4<i32>(u_input.c.x, u_input.a.x, 0i, -1i), arg_1.x, vec3<u32>(65166u, 0u, 4294967295u), u_input.c), Struct_1(u_input.a, arg_2.x, vec3<u32>(4294967295u, var_0.x, 46932u), u_input.c), var_0.wx, arg_2.zy, Struct_1(u_input.a, true, vec3<u32>(34263u, 0u, 4294967295u), u_input.c)), false)), -350f), Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.b, u_input.c.x, 11036i), arg_2.x, vec3<u32>(4294967295u, var_0.x, 175u), u_input.c), Struct_1(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), arg_2.x, var_0.zzw, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.yy), select(vec2<bool>(arg_2.x, true), vec2<bool>(true, true), arg_1.x), Struct_1(u_input.a, false, var_0.ywz, u_input.c))), vec3<u32>(~arg_0 >> (_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1050u, arg_0), var_0.zzx)) % 32u), 54296u, 0u), vec2<i32>(1i, -u_input.c.x));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, i32(-1i) * -_wgslsmith_add_i32(var_1.a.x, var_1.a.x), u_input.b, firstTrailingBit(1i)), abs(_wgslsmith_sub_vec4_i32(-max(var_1.a, u_input.a), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, -28912i, u_input.b, 1i), -vec4<i32>(u_input.a.x, u_input.b, 1i, 0i)))));
    var_0 = firstLeadingBit(vec4<u32>(~var_0.x, abs(_wgslsmith_div_u32(~arg_0, _wgslsmith_add_u32(var_1.c.x, 75431u))), abs(19796u), var_1.c.x));
    var_2 = abs(-_wgslsmith_mult_i32(-var_1.d.x, 0i));
    return Struct_1(var_1.a, true, abs(var_1.c), reverseBits(~countOneBits(-var_1.d)));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = 40882u;
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(func_2(var_0, vec2<bool>(!arg_1.e.b, false | arg_1.b.b), select(select(vec3<bool>(arg_1.a.b, arg_1.b.b, true), vec3<bool>(true, arg_1.e.b, arg_1.a.b), vec3<bool>(arg_1.b.b, arg_1.e.b, arg_1.b.b)), select(vec3<bool>(false, false, arg_1.d.x), vec3<bool>(true, true, true), arg_1.b.b), select(vec3<bool>(false, arg_1.d.x, false), vec3<bool>(false, true, arg_1.e.b), vec3<bool>(arg_1.d.x, true, true)))).a, arg_1.b.a), false, arg_1.e.c, vec2<i32>(-firstLeadingBit(-u_input.c.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -56117i, -1i, -14880i), u_input.a << (vec4<u32>(0u, var_0, 64102u, arg_1.e.c.x) % vec4<u32>(32u)))));
    var_1 = arg_1.a;
    let var_2 = vec2<u32>(~75189u, min(min(38361u, var_1.c.x) >> (6991u % 32u), ~1u)) >> (vec2<u32>(4294967295u, ~(~var_1.c.x | _wgslsmith_clamp_u32(var_0, var_0, 48840u))) % vec2<u32>(32u));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -815f), 1577f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - arg_0));
    return var_3.x;
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = 53779u;
    let var_1 = select(_wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.yy), abs(~vec2<i32>(~u_input.c.x, i32(-1i) * -62637i)), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var_0 = 35045u;
    let var_2 = -2147483647i;
    var_0 = arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -581f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-2077f + _wgslsmith_f_op_f32(-948f - -198f)), Struct_2(func_2(2188u, vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(u_input.a, true, vec3<u32>(arg_0, arg_0, 0u), var_1), func_2(1u, vec2<bool>(false, true), vec3<bool>(false, false, true)).c.yy, vec2<bool>(true, true), func_2(0u, vec2<bool>(false, true), vec3<bool>(false, true, false))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-696f)), 1163f)), 847f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f - -897f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_add_u32(abs(1u), 1u), vec2<bool>(true, true), vec3<bool>(true, true, false));
    var var_1 = vec2<bool>(!(arg_0.x != -520f), var_0.b);
    var_0 = Struct_1(firstLeadingBit(vec4<i32>(u_input.c.x, -59214i, 1i, abs(min(u_input.a.x, 1i)))), true, ~var_0.c, u_input.c);
    var_1 = select(vec2<bool>(var_1.x, true || all(select(vec4<bool>(false, true, var_0.b, true), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)))), !vec2<bool>(!(var_1.x | true), any(select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, false, var_0.b), vec3<bool>(true, false, var_1.x)))), true);
    var var_2 = vec4<u32>(~var_0.c.x, select(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c.x, 1u), firstLeadingBit(0u)), var_0.c.x, var_0.c.x > min(var_0.c.x, var_0.c.x)), var_0.c.x, 75870u) << (vec4<u32>(~(_wgslsmith_clamp_u32(46005u, 1u, 5624u) >> (func_2(var_0.c.x, vec2<bool>(var_1.x, var_0.b), vec3<bool>(var_0.b, false, var_0.b)).c.x % 32u)), select(_wgslsmith_clamp_u32(~77123u, 1u << (var_0.c.x % 32u), abs(23706u)), countOneBits(abs(var_0.c.x)), true), firstTrailingBit(select(~18623u, ~55232u, var_0.b)), ~func_2(var_0.c.x << (66805u % 32u), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec3<bool>(false, var_0.b, false)).c.x) % vec4<u32>(32u));
    return Struct_1(var_0.a, var_1.x, min(~var_0.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 6388u, 1u), vec3<u32>(var_2.x, 1u, 4976u), vec3<u32>(23448u, 0u, var_0.c.x)) ^ vec3<u32>(0u, 0u, 4294967295u)) ^ var_0.c, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.b | -84237i, ~(-2147483647i), -2147483647i), u_input.a), false, ~(~vec3<u32>(1u, 1u, 1u)), u_input.a.yw), Struct_1(select(u_input.a, -(vec4<i32>(u_input.c.x, -17518i, -62244i, u_input.a.x) & vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), any(vec2<bool>(false, false))), _wgslsmith_mod_i32(min(0i, 10256i), 1i) == u_input.c.x, ~firstTrailingBit(vec3<u32>(1u, 15181u, 38560u)) | vec3<u32>(~35667u, 19583u, ~4294967295u), vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.a.x), ~u_input.a.x) ^ (abs(u_input.c) >> (~vec2<u32>(1u, 0u) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(59754u) | firstLeadingBit(1u), 4294967295u), 1u), vec2<bool>(true, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), Struct_1(vec4<i32>((u_input.c.x << (4294967295u % 32u)) << (1u % 32u), _wgslsmith_add_i32(~u_input.c.x, -2147483647i), -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, 0i), u_input.a.x, ~u_input.b)), false, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(59887u, 1u), reverseBits(0u)), max(4294967295u, 14208u), _wgslsmith_mod_u32(0u, 33304u)), vec2<i32>(17855i, -1i) >> (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(~(4294967295u << (0u % 32u))))));
    var var_2 = Struct_3(select(max(~(~var_1.c), firstLeadingBit(max(vec3<u32>(var_0.c.x, var_0.b.c.x, var_1.c.x), vec3<u32>(8489u, 4294967295u, 0u)))), ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.e.c.x, var_1.c.x, 10592u), var_1.c, vec3<bool>(var_1.b, true, false)), var_1.c), !(var_0.c.x >= 5941u)), vec4<i32>(~(~var_1.d.x), ~var_0.e.d.x, select(abs(-14249i), var_0.b.d.x << (~14160u % 32u), all(vec4<bool>(false, var_0.a.b, true, true))), 57344i), vec3<i32>(firstLeadingBit(~0i), var_0.e.a.x, -4452i) << (var_0.b.c % vec3<u32>(32u)), var_0.a.b);
    let var_3 = ~select(var_1.c, _wgslsmith_sub_vec3_u32(var_0.a.c, var_2.a), !var_0.e.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-191f * -801f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, -1511f, -1093f)), vec3<f32>(-2104f, 325f, -132f), !vec3<bool>(false, var_1.b, var_0.d.x))) - vec3<f32>(_wgslsmith_f_op_f32(-2531f + -1573f), _wgslsmith_f_op_f32(337f * -161f), 765f)))));
    let var_5 = Struct_3(select(var_0.e.c, ~_wgslsmith_mod_vec3_u32(vec3<u32>(16344u, var_3.x, 78432u), ~var_2.a), ~_wgslsmith_mult_u32(var_0.c.x, 60392u) > var_1.c.x), var_1.a ^ vec4<i32>(u_input.c.x, var_1.a.x, -2147483647i, abs(1i)), select(vec3<i32>(-1i) * -abs(vec3<i32>(-2147483647i, 2147483647i, u_input.b)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, var_0.e.d.x, -1i), var_0.e.a.xzx) >> (var_1.c % vec3<u32>(32u)), true), !all(var_0.d));
    let var_6 = var_0;
    var_2 = Struct_3(_wgslsmith_add_vec3_u32(var_3 ^ abs(~var_0.a.c), ~(_wgslsmith_sub_vec3_u32(var_6.b.c, vec3<u32>(var_3.x, 0u, var_1.c.x)) >> (vec3<u32>(var_3.x, 1u, 0u) % vec3<u32>(32u)))), ~_wgslsmith_sub_vec4_i32(var_6.e.a, var_0.b.a), reverseBits(_wgslsmith_mult_vec3_i32(-(vec3<i32>(var_0.b.d.x, var_2.c.x, 19534i) & vec3<i32>(2147483647i, u_input.b, -2077i)), _wgslsmith_clamp_vec3_i32(~var_2.b.wzw, firstLeadingBit(vec3<i32>(var_0.b.a.x, 2147483647i, 1i)), vec3<i32>(u_input.b, -2147483647i, 1i)))), 1295f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.x * -559f))));
    let var_7 = 67232u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1355f, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(f32(-1f) * -975f))));
}

