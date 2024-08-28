struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1695f * global0.x), _wgslsmith_f_op_f32(floor(-1640f)), _wgslsmith_f_op_f32(661f - 1071f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), -967f, _wgslsmith_f_op_f32(ceil(arg_0.c))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1877f, global0.x, 802f)))) - vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - arg_0.c))))));
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-130f)) * _wgslsmith_f_op_f32(min(arg_0.a.x, -1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(432f + -534f)))), -543f, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1500f)), arg_0.c))));
    let var_0 = vec3<bool>(~(select(1322u, 1u, true) & _wgslsmith_clamp_u32(0u, 4294967295u, 1u)) != firstLeadingBit(~(~1u)), true, any(vec3<bool>(true, true, true)) | all(vec4<bool>(true, true, all(vec2<bool>(false, false)), true)));
    let var_1 = vec4<bool>(var_0.x, !(true || var_0.x), any(select(var_0, select(!vec3<bool>(false, var_0.x, true), var_0, true), false)), !var_0.x);
    global0 = vec3<f32>(arg_0.a.x, -939f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.x + -520f))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(656f))));
}

fn func_4(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(global0.zz, _wgslsmith_f_op_vec2_f32(-global0.xx)), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a.x, -u_input.a.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 492i, -2147483647i), vec4<i32>(44121i, -4561i, 24705i, -1i))), u_input.a.x), -firstTrailingBit(-vec4<i32>(-2147483647i, u_input.a.x, 20739i, u_input.a.x))), _wgslsmith_div_f32(140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))) - -3231f)), ~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(min(u_input.a, vec2<i32>(u_input.a.x, -84061i)), -vec2<i32>(-2147483647i, -1i)), u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(17944i, -614i, _wgslsmith_mod_i32(-1i, -32073i), 1i)), countOneBits(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), vec4<i32>(1i, u_input.a.x, 4585i, min(~60187i, _wgslsmith_mod_i32(48906i, u_input.a.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.x, -2299f), _wgslsmith_f_op_f32(step(global0.x, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(2722f, 1871f)) * _wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(select(var_0.c, global0.x, arg_0)))), _wgslsmith_f_op_f32(var_0.c * var_0.c)));
    var var_1 = -vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_0.e.x, u_input.a.x, 2147483647i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (~27225u % 32u)), u_input.a.x, 1i);
    var var_2 = !(!select(vec4<bool>(var_0.a.x >= 1000f, true, arg_0 || arg_0, var_0.c <= global0.x), !vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(select(arg_0, arg_0, true), false, true & arg_0, !arg_0)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(436f, 329f) * _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.a.x, -306f))), _wgslsmith_f_op_vec2_f32(exp2(global0.zy)))), ~(-firstTrailingBit(var_0.b >> (vec4<u32>(4294967295u, 2107u, 4294967295u, 57807u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * -448f)), vec4<i32>(-max(_wgslsmith_sub_i32(26587i, var_0.e.x), -2147483647i), abs(reverseBits(abs(12578i))), -_wgslsmith_add_i32(-var_0.d.x, _wgslsmith_mult_i32(-32085i, var_0.b.x)), var_0.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(var_0.e), ~(~var_0.e)), (countOneBits(var_0.e) & (vec4<i32>(36044i, 2147483647i, var_1.x, var_0.e.x) | var_0.e)) | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(48858i, var_1.x, 4878i, 0i)), firstLeadingBit(var_0.e))));
    return select(select(var_2.zyx, vec3<bool>(var_2.x, false, all(select(var_2.yz, vec2<bool>(true, arg_0), var_2.x))), select(vec3<bool>(true, false, var_2.x), vec3<bool>(global0.x >= var_0.a.x, true, true), select(select(var_2.xzw, var_2.zyz, var_2.zww), var_2.wyx, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))))), !select(select(vec3<bool>(var_2.x, arg_0, var_2.x), select(var_2.wxx, vec3<bool>(arg_0, false, true), var_2.x), any(vec3<bool>(false, arg_0, var_2.x))), select(vec3<bool>(arg_0, true, false), var_2.yxy, !var_2.wxx), var_2.wxy), !(!vec3<bool>(all(vec4<bool>(var_2.x, false, false, false)), var_2.x || true, global0.x <= global0.x)));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(335f, global0.x, -1020f) * vec3<f32>(global0.x, 1098f, -1677f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 594f, 1419f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -296f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -1000f, global0.x))), vec3<bool>(false, false, false)))), func_4(global0.x < _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(689f, global0.x), vec4<i32>(-14402i, 1426i, 2147483647i, u_input.a.x), 3592f, vec4<i32>(u_input.a.x, 1i, 22750i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -20886i, Struct_1(vec2<f32>(global0.x, global0.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 7952i), -1572f, vec4<i32>(-8879i, -48567i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 0i, 0i))))))));
    let var_0 = countOneBits(1u);
    let var_1 = ((min(1u, 43995u) | abs(var_0 << (51427u % 32u))) >> (1u % 32u)) > ~select(abs(max(var_0, var_0)), 0u ^ (var_0 & 1u), func_4(true).x && all(vec3<bool>(false, false, false)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 440f) - 260f)), vec2<f32>(405f, global0.x), !all(vec2<bool>(true, true)))), firstLeadingBit(reverseBits(vec4<i32>(-63316i, -2147483647i, u_input.a.x, 2147483647i) << (vec4<u32>(var_0, var_0, var_0, var_0) % vec4<u32>(32u))) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, var_0, 4294967295u), vec4<u32>(1u, var_0, 122276u, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(ceil(global0.x)), true)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, -2147483647i, u_input.a.x ^ u_input.a.x, firstTrailingBit(u_input.a.x)), -(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(-1i, -2147483647i, 48649i, u_input.a.x)), ~vec4<i32>(-2147483647i, u_input.a.x, 17850i, -1i))), vec4<i32>(~(~reverseBits(2147483647i)), _wgslsmith_clamp_i32(17351i, 0i, select(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), u_input.a.x, true)), ~(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.a.x, -u_input.a.x), -1i, u_input.a.x)));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, global0.x, global0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 870f, 472f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, 496f), vec3<f32>(-179f, global0.x, -809f)))) + vec3<f32>(_wgslsmith_div_f32(global0.x, 609f), _wgslsmith_f_op_f32(func_3(Struct_1(var_2.a, var_2.e, 1335f, var_2.b, vec4<i32>(u_input.a.x, -41778i, 0i, -1i)), -1i, Struct_1(vec2<f32>(-749f, global0.x), var_2.e, global0.x, var_2.d, vec4<i32>(0i, -562i, var_2.d.x, u_input.a.x)))), _wgslsmith_f_op_f32(floor(-1169f)))))));
    return Struct_1(global0.zx, _wgslsmith_mult_vec4_i32(~(~(var_2.d & var_2.b)), vec4<i32>(var_2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.b.x), var_2.d.xz) >> (~var_0 % 32u), u_input.a.x, (var_2.b.x ^ -9631i) ^ abs(var_2.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -416f), var_2.d, var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, arg_2)) * _wgslsmith_f_op_f32(-arg_2)), arg_1.a.x)))));
    global0 = var_0;
    let var_1 = func_2();
    let var_2 = -vec3<i32>(_wgslsmith_add_i32(932i, -1i), i32(-1i) * -arg_0.b.x, _wgslsmith_mult_i32(~max(arg_1.d.x, var_1.d.x), i32(-1i) * -2147483647i));
    var var_3 = vec4<bool>(true, arg_3, arg_3, arg_3);
    return var_0;
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, 1222f, global0.x) - vec3<f32>(global0.x, 123f, global0.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-906f, _wgslsmith_f_op_f32(step(-2448f, 1606f)), global0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, global0.x, global0.x)), vec3<f32>(398f, global0.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(func_2(), func_2(), 163f, any(vec3<bool>(true, true, true))))))), all(vec3<bool>(false, func_4(true).x, select(true, any(vec2<bool>(true, true)), true)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = ~(~_wgslsmith_add_u32(10967u, ~abs(66598u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0, _wgslsmith_sub_i32(var_0, -7087i), _wgslsmith_div_i32(0i, -2147483647i), ~u_input.a.x), vec4<i32>(var_0 << (101786u % 32u), ~u_input.a.x, max(var_0, u_input.a.x), u_input.a.x & var_0)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -404f))))), select(vec4<i32>(~var_0, u_input.a.x, select(firstLeadingBit(43276i), _wgslsmith_sub_i32(u_input.a.x, -1i), all(vec2<bool>(false, false))), var_0), -(~(-vec4<i32>(var_0, 3092i, u_input.a.x, 0i))), any(vec3<bool>(true, true, true)) != ((1u < var_1) || func_1())), ~(-vec4<i32>(~u_input.a.x, -2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2654i, 9878i, 51403i, u_input.a.x), vec4<i32>(0i, u_input.a.x, var_0, var_0)))));
    let var_3 = _wgslsmith_f_op_f32(abs(func_2().a.x));
    let var_4 = vec4<bool>(true, !(any(vec3<bool>(true, true, true)) || false), all(!vec3<bool>(all(vec2<bool>(false, true)), true, true)), true);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -310f)) * global0.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(countOneBits(var_1)) ^ min(var_1, var_1), 41745u, all(select(select(var_4, var_4, true), select(var_4, vec4<bool>(true, var_4.x, var_4.x, var_4.x), var_4.x), var_4.x == true))), var_2.b, -1000f, ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 6194u, var_1, var_1), ~vec4<u32>(93849u, 17714u, 0u, var_1)), var_1, firstTrailingBit(~49096u), var_1), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-884f + func_2().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-1577f * func_2().a.x)));
}

