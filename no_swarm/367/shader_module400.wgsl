struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-16913i, 1i, 40935i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)) | select(~vec3<u32>(87196u, 10849u, 15676u), select(vec3<u32>(13570u, 117u, 4294967295u), vec3<u32>(42143u, 0u, 4294967295u), false), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(41947u, 106747u, 20110u), ~vec3<u32>(30179u, 1u, 14224u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 3183u), vec3<u32>(1u, 19911u, 1755u))));
    var_0 = vec3<u32>(1u, _wgslsmith_mod_u32(select(~(~var_0.x), countOneBits(max(var_0.x, var_0.x)), true), 0u), abs(_wgslsmith_div_u32(~_wgslsmith_div_u32(0u, var_0.x), 4294967295u)));
    let var_1 = Struct_3(Struct_1(29126u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, 481f, -1000f, -572f)))) - vec4<f32>(_wgslsmith_f_op_f32(-1638f + 563f), _wgslsmith_f_op_f32(abs(-1080f)), _wgslsmith_div_f32(1000f, 1159f), -942f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, _wgslsmith_f_op_f32(1000f * 821f), _wgslsmith_f_op_f32(abs(381f)), _wgslsmith_f_op_f32(round(549f))))), _wgslsmith_clamp_i32(10054i, arg_0.x, global0.x) ^ arg_0.x, Struct_2(Struct_1(1u)));
    let var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(22274u, var_0.x, 0u) ^ ~var_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24301u, var_0.x, var_1.d.a.a), vec3<u32>(1u, var_0.x, var_1.a.a)), var_0.x), ~59532u), ~reverseBits(vec4<u32>(4294967295u, 1811u, var_0.x, var_1.d.a.a) << (vec4<u32>(1u, 1u, 0u, var_0.x) % vec4<u32>(32u))));
    var var_3 = var_1.b.xxx;
    return var_1.c;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = firstTrailingBit(-select(abs(-u_input.e), u_input.e, arg_1));
    var var_1 = Struct_2(Struct_1(arg_0));
    global0 = _wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(func_3(u_input.e), _wgslsmith_mult_i32(-1i, 45693i), u_input.a)), _wgslsmith_mod_vec3_i32(min(firstLeadingBit(vec3<i32>(u_input.e.x, u_input.c, -1i)), (vec3<i32>(global0.x, -84582i, 4158i) << (vec3<u32>(var_1.a.a, arg_0, var_1.a.a) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 2147483647i, global0.x), vec3<i32>(global0.x, u_input.b, 0i))), vec3<i32>(_wgslsmith_mod_i32(func_3(vec3<i32>(u_input.d.x, -1i, var_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 2147483647i, var_0.x), vec3<i32>(global0.x, var_0.x, global0.x))), min(1i, u_input.e.x), -(u_input.a & 2147483647i))));
    global0 = vec3<i32>(_wgslsmith_mod_i32(~(~u_input.d.x) & 0i, 1i), _wgslsmith_add_i32(var_0.x, var_0.x), 2147483647i);
    var_1 = Struct_2(Struct_1(45987u));
    return 1i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = (~vec3<i32>(~(-16082i), -1i, 24511i) ^ (vec3<i32>(_wgslsmith_clamp_i32(global0.x, arg_0.x, 46431i), _wgslsmith_add_i32(u_input.e.x, 2147483647i), -54915i) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, 4294967295u), ~vec3<u32>(30414u, 48835u, 4294967295u), abs(vec3<u32>(66014u, 0u, 1u))) % vec3<u32>(32u)))) >> (~(~vec3<u32>(~4294967295u, countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3814u), vec2<u32>(4294967295u, 63608u)))) % vec3<u32>(32u));
    global0 = vec3<i32>(~(-func_2(firstLeadingBit(17712u), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, firstTrailingBit(_wgslsmith_clamp_i32(arg_0.x, -15063i, 34943i))), arg_0.x), u_input.a);
    let var_0 = select(max(-_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, global0.x, global0.x, -1i), select(vec4<i32>(1i, 0i, 1i, -13525i), vec4<i32>(1i, 49783i, u_input.b, 2147483647i), vec4<bool>(false, true, false, false))), abs(vec4<i32>(global0.x, u_input.d.x ^ -23124i, global0.x, _wgslsmith_div_i32(u_input.e.x, 2147483647i)))), -min(select(vec4<i32>(-3165i, 39376i, 1i, arg_0.x) & vec4<i32>(u_input.b, u_input.e.x, global0.x, u_input.d.x), vec4<i32>(global0.x, -57362i, u_input.e.x, 0i), false), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, arg_0.x, 1i, global0.x), vec4<i32>(arg_0.x, u_input.a, -34684i, -21640i)) & firstTrailingBit(vec4<i32>(-106484i, 30893i, -31880i, -2147483647i))), vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f * 1000f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1588f)), 1180f)), true));
    global0 = select(_wgslsmith_add_vec3_i32(var_0.zwz, vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.wxy, firstTrailingBit(vec3<i32>(u_input.d.x, 0i, 1i))), _wgslsmith_mult_i32(u_input.e.x, abs(arg_0.x)), 2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(30763i, 1i, max(global0.x, -2147483647i)), _wgslsmith_dot_vec4_i32(var_0, select(var_0, select(var_0, vec4<i32>(2147483647i, u_input.c, -42978i, 16772i), false), true)), -31702i), select(vec3<bool>(true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), func_3(var_0.wzx) <= _wgslsmith_mod_i32(-51138i, -67324i)), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), true));
    var var_1 = Struct_3(Struct_1(select(_wgslsmith_div_u32(~4294967295u, ~46357u), select(1u, ~8976u, true), true)), vec4<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -724f), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(550f, _wgslsmith_f_op_f32(trunc(1112f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1191f, 1153f), 931f))), -1443f), 1i, Struct_2(Struct_1(1u)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_div_i32(u_input.b, global0.x ^ 0i), Struct_3(func_1(vec2<i32>(global0.x, ~2147483647i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(192f, -1080f)), _wgslsmith_f_op_f32(-1000f * -558f), 1241f, _wgslsmith_f_op_f32(max(426f, 548f))))), u_input.b, Struct_2(Struct_1(1u))), -435f, _wgslsmith_clamp_u32(arg_0.a, _wgslsmith_mult_u32(min(arg_0.a, 0u), 40842u), arg_0.a));
    global0 = u_input.e;
    let var_2 = vec3<u32>(~var_1.d, countOneBits(var_1.b.a.a), arg_0.a);
    let var_3 = Struct_5(-1i | _wgslsmith_mult_i32(~(global0.x >> (62869u % 32u)), -_wgslsmith_div_i32(-30605i, 1i)), var_1.b, 287f, _wgslsmith_sub_u32(39446u, abs(1u >> (arg_0.a % 32u))) ^ reverseBits(countOneBits(abs(0u))));
    return Struct_1(_wgslsmith_mult_u32(~abs(0u), ~firstLeadingBit(var_3.b.d.a.a)) >> (((_wgslsmith_div_u32(var_2.x, 4294967295u) ^ var_2.x) << (min(~var_3.d, firstTrailingBit(var_1.b.d.a.a)) % 32u)) % 32u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> Struct_5 {
    global0 = vec3<i32>(1i, abs(select(-arg_0.c, -global0.x, true)), arg_0.c | u_input.b) & vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(10711i, -arg_0.c), -global0.x << (1u % 32u)), abs(arg_0.c));
    var var_0 = Struct_3(func_1(u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b))))), 20856i, arg_0.d);
    var var_1 = reverseBits(global0.yx);
    let var_2 = func_1(firstTrailingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(-7072i, 2147483647i) << (~vec2<u32>(arg_2.a, arg_0.d.a.a) % vec2<u32>(32u)), u_input.e.zx)));
    var_1 = global0.yx;
    return Struct_5(max(~(~arg_0.c), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.c & arg_0.c, select(2147483647i, var_1.x, false)), 48891i, arg_0.c)), Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), select(_wgslsmith_sub_i32(~(-4944i), -46314i), 0i, true), Struct_2(func_4(var_2))), 383f, abs(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(36422u, 53133u, var_2.a, 1u), vec4<u32>(4294967295u, 78400u, 4294967295u, arg_1.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(Struct_1(~0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~(~(-1i & u_input.a)), Struct_2(func_4(func_1(global0.xz)))), Struct_3(func_4(func_1(vec2<i32>(u_input.c, global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, 209f, -262f, 2427f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1194f, -1000f, 204f, -429f), vec4<f32>(-152f, 236f, 277f, -915f))))), -1i, Struct_2(Struct_1(46082u))), Struct_1(49968u), Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1507f - 1577f), 918f))));
    let var_1 = func_5(Struct_3(func_5(Struct_3(Struct_1(var_0.d), vec4<f32>(var_0.c, 1256f, 1268f, -1294f), -53261i, var_0.b.d), var_0.b, var_0.b.d.a, Struct_4(_wgslsmith_f_op_f32(-var_0.c))).b.d.a, var_0.b.b, _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(2147483647i | var_0.b.c, ~global0.x)), Struct_2(var_0.b.d.a)), var_0.b, Struct_1(_wgslsmith_mult_u32(var_0.b.d.a.a, min(4294967295u, var_0.b.d.a.a))), Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c, var_0.b.b.x), -1101f)))))).b;
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(15644i, firstTrailingBit(var_1.c), 1i), -(min(u_input.e, countOneBits(u_input.e)) | _wgslsmith_clamp_vec3_i32(-u_input.e, _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(19287i, 41844i, -2147483647i)), vec3<i32>(var_1.c, var_0.b.c, global0.x) & u_input.e)));
    let var_2 = vec2<i32>(0i, u_input.d.x);
    let var_3 = countOneBits(select(min(vec2<u32>(var_1.a.a, var_1.a.a), abs(vec2<u32>(8271u, 4294967295u))) << (abs(vec2<u32>(var_1.a.a, var_0.b.a.a)) % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.a, 77233u), vec2<u32>(98396u, 0u)), vec2<u32>(4294967295u, 30518u), all(vec4<bool>(true, false, true, false))) | ~(~vec2<u32>(var_0.d, var_1.a.a)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 52737i), vec2<i32>(1i, var_0.b.c)), min(var_2.x, var_2.x)), -7929i, var_0.a, abs(var_0.b.c))));
}

