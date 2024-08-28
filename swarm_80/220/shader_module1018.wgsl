struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(79571u, 1000f, false, vec4<f32>(254f, -3546f, 1000f, 1000f), 945f), Struct_1(63752u, 2214f, true, vec4<f32>(-138f, -148f, 336f, -1416f), -1117f), Struct_1(57700u, 950f, true, vec4<f32>(-977f, -1197f, -118f, 1276f), -865f), Struct_1(38662u, 254f, false, vec4<f32>(153f, -108f, -233f, -420f), 240f), Struct_1(4294967295u, 3060f, false, vec4<f32>(-792f, 570f, 1716f, 958f), -661f), Struct_1(47304u, -895f, false, vec4<f32>(-755f, 1769f, -990f, 171f), -1173f), Struct_1(0u, 1737f, false, vec4<f32>(-910f, -1481f, -974f, -150f), -1000f), Struct_1(4294967295u, -150f, true, vec4<f32>(287f, 1000f, 1331f, -860f), -309f), Struct_1(27447u, 559f, false, vec4<f32>(-595f, 730f, 1379f, 116f), -713f), Struct_1(51598u, -1000f, false, vec4<f32>(1155f, 1254f, -272f, -876f), 937f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1756f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-209f + -452f), _wgslsmith_f_op_f32(-arg_2.x))), -374f)));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_1 = ~15288i;
    return Struct_2(1i, arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(7132i, arg_0.a), ~vec2<i32>(-4860i, 49186i)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.a, -2147483647i), vec2<i32>(arg_0.a, 7101i) >> (u_input.d.xz % vec2<u32>(32u))))), vec2<i32>(38655i, 2147483647i));
    global0 = array<Struct_1, 10>();
    var var_1 = ~4294967295u;
    var var_2 = Struct_2(arg_0.b, _wgslsmith_mult_i32(countOneBits(abs(var_0.x)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i) & var_0, -vec2<i32>(-1i, -16736i)))));
    let var_3 = ~(max(vec4<i32>(1i, u_input.b, arg_0.a, -1i), vec4<i32>(var_2.b, 17225i, u_input.b, var_0.x)) & vec4<i32>(~var_2.a, -var_2.a, u_input.b, _wgslsmith_clamp_i32(8140i, 2147483647i, var_2.b))) ^ vec4<i32>(0i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, var_2.b), abs(vec3<i32>(arg_0.a, var_2.a, 2147483647i))), _wgslsmith_dot_vec2_i32(var_0, var_0 | var_0)), ~(-8691i << (_wgslsmith_mult_u32(arg_1, 0u) % 32u)), u_input.b);
    return Struct_2(abs(~firstLeadingBit(-var_0.x)), -var_2.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec3<i32> {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-106f + _wgslsmith_f_op_f32(-1699f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - -869f), _wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(f32(-1f) * -1671f)), var_0))));
    var var_2 = vec3<bool>(var_0, true, any(!select(select(vec4<bool>(false, arg_3, true, var_0), vec4<bool>(var_0, var_0, arg_3, var_0), vec4<bool>(false, arg_3, var_0, true)), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(arg_3, var_0, false, false), false), true)));
    var var_3 = _wgslsmith_clamp_i32(-(_wgslsmith_dot_vec4_i32(max(arg_2, vec4<i32>(arg_0.x, -52868i, arg_2.x, -24262i)), arg_2 & arg_2) >> (_wgslsmith_clamp_u32(4294967295u, 0u, u_input.d.x) % 32u)), ~(~arg_1.b), _wgslsmith_mod_i32(-func_2(arg_1, !vec3<bool>(arg_3, var_2.x, var_2.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1201f, var_1), vec2<f32>(var_1, 212f)))).a, -_wgslsmith_dot_vec3_i32(arg_2.yyw, ~vec3<i32>(-2147483647i, u_input.b, u_input.b))));
    var var_4 = vec3<bool>(select(arg_3, false, !all(select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_0, var_2.x, true, false), vec4<bool>(false, true, arg_3, false)))), true, var_1 < _wgslsmith_f_op_f32(f32(-1f) * -1095f));
    return reverseBits(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(arg_2.yzx, _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, 50928i, -2304i), vec3<i32>(-43262i, 2147483647i, arg_0.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, 30067i, arg_1.a), arg_2.yzy)));
}

fn func_1() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-613f * -1553f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 146f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 217f)))))), -2556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1700f)))));
    global0 = array<Struct_1, 10>();
    let var_1 = max(abs(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b) >> (select(u_input.d, vec3<u32>(u_input.c, 13076u, 37255u), true) % vec3<u32>(32u)))), ~func_4(vec2<i32>(u_input.b, u_input.b) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b)), func_3(func_2(Struct_2(3641i, 0i), vec3<bool>(true, true, true), var_0.yy), reverseBits(21205u)), min(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)))));
    global0 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_1.x, 2147483647i << (u_input.d.x % 32u), min(u_input.b, u_input.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-19842i, u_input.b, var_1.x, u_input.b), vec4<i32>(u_input.b, u_input.b, -43079i, -12840i)))), vec4<i32>(28517i & var_1.x, abs(~(-75697i)), func_3(Struct_2(11064i, select(16286i, u_input.b, false)), _wgslsmith_sub_u32(u_input.d.x ^ 9334u, u_input.c)).a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-53582i, u_input.b, -39708i, u_input.b), vec4<i32>(50360i, _wgslsmith_sub_i32(-21007i, 30409i), func_3(Struct_2(-9457i, var_1.x), u_input.a.x).b, 1i))));
    return var_0.x;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = func_3(func_2(func_2(Struct_2(~1i, u_input.b & u_input.b), vec3<bool>(true, true, true), vec2<f32>(arg_2.d.x, _wgslsmith_div_f32(-603f, 225f))), !select(!vec3<bool>(arg_2.c, true, arg_1.x), select(vec3<bool>(true, arg_2.c, arg_2.c), vec3<bool>(false, true, arg_2.c), vec3<bool>(true, true, false)), select(vec3<bool>(arg_2.c, false, arg_2.c), vec3<bool>(true, true, false), vec3<bool>(arg_2.c, arg_2.c, false))), arg_2.d.zx), ~u_input.c);
    global0 = array<Struct_1, 10>();
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, _wgslsmith_mod_i32(u_input.b, var_0.a), u_input.b, _wgslsmith_clamp_i32(1i, u_input.b, 9478i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -19081i, -12116i, -1525i)), firstLeadingBit(vec4<i32>(2147483647i, u_input.b, var_0.a, var_0.a)))), ~vec4<i32>(2147483647i, _wgslsmith_div_i32(var_0.b, 0i), ~(-3981i), -6844i)), var_0.b);
    global0 = array<Struct_1, 10>();
    let var_2 = select(select(!vec3<bool>(true, any(arg_1), arg_1.x), !vec3<bool>(any(vec3<bool>(arg_2.c, false, false)), true, true), !select(!vec3<bool>(false, true, arg_1.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(true, false, arg_1.x), arg_1.x), true)), select(select(vec3<bool>(true, true, arg_1.x), select(!vec3<bool>(arg_1.x, true, true), select(vec3<bool>(arg_1.x, arg_2.c, arg_2.c), vec3<bool>(arg_1.x, true, false), false), !arg_1.x), select(select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, false, false), true), select(vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_2.c, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, true)), true)), !(!(!vec3<bool>(arg_1.x, true, arg_1.x))), select(vec3<bool>(arg_2.c, !arg_1.x, arg_1.x), !(!vec3<bool>(arg_1.x, true, true)), !vec3<bool>(false, arg_2.c, arg_2.c))), vec3<bool>(arg_1.x, false, arg_1.x));
    return select(u_input.d.x, _wgslsmith_clamp_u32(1u, 50468u, max(61055u, ~89753u)) ^ reverseBits(firstTrailingBit(arg_2.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x | 17902u, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1942f, -588f) + 286f)), vec2<bool>(true, true), Struct_1(u_input.d.x, _wgslsmith_f_op_f32(func_1()), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1400f, -659f, -823f, -1342f), vec4<f32>(-165f, 1181f, 1000f, -458f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(635f, 638f, -1144f, -1265f), vec4<f32>(-1465f, 892f, 833f, -219f))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_f32(-223f - -1000f)))), 10u)];
    let var_1 = -676f;
    let var_2 = _wgslsmith_div_vec2_i32(-select(~(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(var_0.a, u_input.d.x) % vec2<u32>(32u))), -(~vec2<i32>(2147483647i, 0i)), vec2<bool>(!var_0.c, true & var_0.c)), -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, firstTrailingBit(u_input.b)), ~vec2<i32>(-43635i, u_input.b) >> (u_input.d.zx % vec2<u32>(32u))));
    var var_3 = var_0.c;
    let var_4 = func_3(func_2(func_2(func_2(func_2(Struct_2(var_2.x, -4735i), vec3<bool>(var_0.c, var_0.c, false), vec2<f32>(var_0.d.x, var_1)), !vec3<bool>(false, var_0.c, var_0.c), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1694f, 538f)))), !(!vec3<bool>(false, var_0.c, var_0.c)), var_0.d.yy), !vec3<bool>(any(vec3<bool>(false, var_0.c, false)), var_0.b > var_0.e, var_0.c), var_0.d.zw), u_input.d.x);
    var var_5 = func_3(func_2(Struct_2(_wgslsmith_add_i32(~var_2.x, ~var_4.b), u_input.b), select(vec3<bool>(all(vec3<bool>(true, var_0.c, var_0.c)), var_0.c, var_0.c & true), select(vec3<bool>(var_0.c, var_0.c, var_0.c), select(vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, false, var_0.c)), vec3<bool>(var_0.c, true, true)), all(select(vec3<bool>(true, true, var_0.c), vec3<bool>(true, var_0.c, var_0.c), true))), var_0.d.yy), ~(~func_5(_wgslsmith_f_op_f32(exp2(var_0.b)), select(vec2<bool>(false, false), vec2<bool>(true, var_0.c), var_0.c), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a, 1u), 10u)])));
    var_5 = Struct_2(0i, 2147483647i);
    let var_6 = -_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-8539i, 23631i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -21901i, 47945i, u_input.b), vec4<i32>(u_input.b, -1i, -2147483647i, 27416i)))), select(~vec3<i32>(var_4.a, 80659i, -1i), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(13544i, var_2.x, var_2.x), vec3<i32>(var_2.x, u_input.b, var_2.x)), vec3<i32>(1i, var_4.b, 1i)), select(all(vec3<bool>(var_0.c, true, var_0.c)), var_0.c, all(vec2<bool>(false, var_0.c)))), _wgslsmith_add_vec3_i32(vec3<i32>(-var_2.x, 1i, ~u_input.b), -max(vec3<i32>(var_4.a, 2147483647i, 2147483647i), vec3<i32>(-390i, var_4.a, -1i))));
    var var_7 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_5(var_0.d.x, vec2<bool>(var_0.c, true), global0[_wgslsmith_index_u32(var_0.a, 10u)]), 1u), ~u_input.d.xx) ^ vec2<u32>(~_wgslsmith_mod_u32(0u, var_0.a), 7284u), u_input.d.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a ^ 4294967295u, u_input.c, u_input.a.x & var_0.a, _wgslsmith_clamp_u32(u_input.c, ~select(4294967295u, 0u, var_0.c), 30311u)), firstTrailingBit(min(~(~u_input.a), vec2<u32>(17606u, ~1u))), _wgslsmith_f_op_f32(198f * _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(51363u, 37860u, ~var_0.a, 0u)), reverseBits((vec4<u32>(var_0.a, u_input.c, 4294967295u, 0u) | vec4<u32>(var_0.a, var_0.a, var_0.a, u_input.a.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 13976u, u_input.d.x, var_0.a), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 44509u), vec4<u32>(var_0.a, 70470u, 1u, 1u)))), u_input.a);
}

