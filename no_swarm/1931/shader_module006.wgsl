struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global0 = arg_1;
    var var_0 = false;
    global0 = arg_1;
    global0 = arg_1;
    var_0 = global0.a.x;
    return global0.a.x;
}

fn func_2() -> bool {
    let var_0 = u_input.b;
    global0 = Struct_1(select(vec3<bool>(true, func_3(select(vec4<i32>(var_0, -24929i, -1i, u_input.a.x), vec4<i32>(u_input.b, 1i, u_input.a.x, u_input.b), global0.a.x), Struct_1(global0.a)), global0.a.x), global0.a, global0.a));
    var var_1 = _wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1713u, 30176u), ~vec3<u32>(748u, 36653u, 6630u)))), vec3<u32>(firstTrailingBit(32070u), abs(4294967295u), ~(~(~4294967295u))));
    global0 = Struct_1(global0.a);
    let var_2 = Struct_1(!select(vec3<bool>(7819i != u_input.b, global0.a.x, any(global0.a.xy)), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), global0.a.x || global0.a.x, all(global0.a))));
    return var_2.a.x;
}

fn func_4(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_1(arg_0);
    global0 = Struct_1(select(global0.a, vec3<bool>(any(select(vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(arg_0.x, var_0.a.x, true), true)), global0.a.x, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_0.a.x), arg_0))), true));
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, ~u_input.a.x, -18942i), vec4<i32>(firstLeadingBit(max(7150i, -1i)), u_input.a.x, 1i, abs(_wgslsmith_mult_i32(u_input.a.x, -1i)) | firstTrailingBit(i32(-1i) * -14916i)));
    var_2 = select(-vec4<i32>(2147483647i, u_input.a.x, reverseBits(-2147483647i), 5750i) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(22184u, 0u, 13339u, 5770u), select(vec4<u32>(24393u, 4294967295u, 41722u, 24154u), vec4<u32>(4294967295u, 20030u, 4294967295u, 22328u), vec4<bool>(true, var_1.a.x, arg_0.x, var_1.a.x))), vec4<u32>(0u, 1u, ~4294967295u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), _wgslsmith_div_i32(u_input.b, -1i), max(-2147483647i, u_input.a.x), -u_input.b), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 20001i, var_2.x, -1i), vec4<i32>(var_2.x, u_input.b, 0i, -12814i), vec4<bool>(false, var_1.a.x, true, false)), -vec4<i32>(1i, u_input.a.x, var_2.x, 0i)), vec4<i32>(0i, abs(-2147483647i), var_2.x, -var_2.x)), vec4<i32>(abs(1i), u_input.b, 1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(-50831i, -1i), min(50520i, 21717i)))), vec4<bool>(any(vec4<bool>(true, select(var_0.a.x, false, false), select(true, global0.a.x, false), true)), true, true, true));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-346f, -1223f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1430f + 690f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f), -199f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1611f, 444f, 613f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-977f, -156f, 708f)))) * vec3<f32>(_wgslsmith_f_op_f32(355f - -135f), 503f, _wgslsmith_f_op_f32(f32(-1f) * -1003f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, -1737f, -1400f)), vec3<f32>(_wgslsmith_f_op_f32(floor(-110f)), -634f, _wgslsmith_f_op_f32(f32(-1f) * -161f))), vec3<f32>(-669f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-968f * -339f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1235f)) * 1280f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(vec3<bool>(all(!(!vec4<bool>(arg_1.a.x, true, global0.a.x, arg_3))), all(select(!vec4<bool>(global0.a.x, arg_3, arg_3, true), select(vec4<bool>(false, arg_3, false, true), vec4<bool>(arg_3, arg_3, global0.a.x, true), vec4<bool>(arg_3, true, global0.a.x, arg_1.a.x)), global0.a.x || true)), true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -914f)), func_2())))));
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(1u, 8770u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(11898u, 4294967295u), vec2<u32>(83083u, 379u)))), ~(~(~1u)), 4294967295u);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(246f, arg_0.x, arg_3)))))), arg_0.x));
    var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(41479u >> (1u % 32u), 14846u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 32426u, 32854u), vec3<u32>(70065u, 0u, var_1.x)) ^ 1u), min(_wgslsmith_mod_u32(var_1.x, var_1.x), var_1.x), _wgslsmith_div_u32(36113u, firstLeadingBit(0u & var_1.x))) >> (vec3<u32>(var_1.x, _wgslsmith_mult_u32(max(4294967295u, 0u), max(4294967295u, var_1.x) & var_1.x), var_1.x) % vec3<u32>(32u));
    return Struct_1(!vec3<bool>(arg_3, _wgslsmith_f_op_f32(select(-1000f, arg_0.x, arg_3)) == -2396f, firstTrailingBit(0u) >= select(0u, var_1.x, global0.a.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(func_2(), arg_1.a.x, all(select(vec3<bool>(arg_1.a.x, arg_0, false), vec3<bool>(arg_1.a.x, true, true), arg_1.a.x))))), Struct_1(!(!(!vec3<bool>(false, arg_0, arg_1.a.x)))), u_input.a.x, !arg_0);
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1185f, arg_2.x, -746f), vec3<f32>(arg_2.x, -817f, 111f))) * vec3<f32>(_wgslsmith_div_f32(-748f, arg_2.x), -1149f, -1191f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, 1942f, -1327f)))) + vec3<f32>(-254f, _wgslsmith_div_f32(381f, arg_2.x), _wgslsmith_f_op_f32(arg_2.x - 317f)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, arg_2.x, arg_2.x))), arg_1, _wgslsmith_clamp_i32(-_wgslsmith_div_i32(u_input.b, u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(-1i, u_input.a.x, -2147483647i, -30450i)), 1i), !arg_0), u_input.a.x, !(!(true & !arg_1.a.x)));
    global0 = arg_1;
    let var_1 = Struct_1(vec3<bool>(arg_1.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(33390u, 91451u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23937u, 64882u))) > 1u, u_input.b < min(u_input.b, -u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(ceil(-1079f));
    return select(select(vec4<bool>(true, all(vec4<bool>(true, var_0.a.x, true, true)) || var_1.a.x, any(vec3<bool>(arg_0, arg_0, true)), false), vec4<bool>(arg_0, false, true, true), !vec4<bool>(false, true, true, var_0.a.x)), select(vec4<bool>(all(vec2<bool>(arg_0, true)), true, func_3(vec4<i32>(33005i, 48893i, 1i, 2147483647i), Struct_1(vec3<bool>(false, true, true))) && arg_0, var_1.a.x), select(vec4<bool>(arg_1.a.x, true || var_1.a.x, any(vec2<bool>(true, var_0.a.x)), true), !vec4<bool>(arg_1.a.x, false, global0.a.x, arg_0), !vec4<bool>(var_0.a.x, false, arg_0, arg_1.a.x)), false), select(all(vec4<bool>(!arg_1.a.x, arg_1.a.x, global0.a.x & true, arg_0 && false)), true, false));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -254f, -1026f)))))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -1000f, 1000f))))), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1037f, -294f, 1586f) * vec3<f32>(-1000f, 733f, -1739f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1870f, -479f, 1444f))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1227f, 1257f, -1030f) * vec3<f32>(-386f, 1815f, 888f)), func_5(vec3<f32>(299f, 583f, 951f), Struct_1(vec3<bool>(false, false, arg_1.x)), arg_0.x, false), firstTrailingBit(arg_0.x), arg_1.x | global0.a.x), _wgslsmith_clamp_i32(6692i, u_input.a.x, select(8951i, 33428i, arg_1.x)), false), (arg_0.x & arg_0.x) >> (26599u % 32u), all(vec4<bool>(arg_1.x, true, global0.a.x, true)) || true), ~1i, func_1(all(select(global0.a, vec3<bool>(global0.a.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), Struct_1(select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1.zyy, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1741f, 550f)))))).x && func_2());
    let var_1 = !(!(true & global0.a.x));
    global0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(143f, 349f, -382f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -972f, 1443f)), var_0.a)))), Struct_1(select(vec3<bool>(false, !var_1, var_0.a.x), global0.a, !func_1(var_1, Struct_1(vec3<bool>(var_0.a.x, true, var_1)), vec2<f32>(129f, -1004f)).yzx)), ~u_input.a.x, !arg_1.x);
    var_0 = Struct_1(vec3<bool>(false, func_3(~vec4<i32>(-7532i, 0i, arg_0.x, 67727i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1266f, -1000f, 1040f) * vec3<f32>(-435f, -923f, -1352f)), func_5(vec3<f32>(-943f, -350f, 173f), Struct_1(arg_1.wyx), u_input.a.x, false), 33704i, true)), !func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-270f, 485f, 260f))), func_5(vec3<f32>(1457f, -1034f, -177f), Struct_1(vec3<bool>(global0.a.x, false, global0.a.x)), 1i, false), ~arg_0.x, true).a.x));
    let var_2 = !func_5(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(false, all(vec4<bool>(global0.a.x, arg_1.x, true, false)), true || var_0.a.x))), func_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(min(-2292f, 460f)), _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(false, global0.a.x, true))).x), func_5(vec3<f32>(-126f, 228f, 898f), Struct_1(global0.a), -2147483647i, arg_0.x >= 0i), arg_0.x, false), select(_wgslsmith_mult_i32(-65004i, -22920i), ~(-20824i), all(var_0.a)) | arg_0.x, false).a.yy;
    return Struct_1(!func_5(vec3<f32>(201f, _wgslsmith_f_op_f32(abs(812f)), 173f), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-636f, 1320f, -1057f) - vec3<f32>(-653f, -1865f, -908f)), func_5(vec3<f32>(447f, -731f, 1000f), Struct_1(vec3<bool>(var_2.x, global0.a.x, false)), arg_0.x, false), 249i | u_input.a.x, all(vec2<bool>(false, global0.a.x))), arg_0.x, false).a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~vec2<i32>(-126i, 0i), !func_1(select(global0.a.x, any(global0.a), true), Struct_1(global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_0 = Struct_1(!vec3<bool>(global0.a.x, func_6(u_input.a.zx, select(vec4<bool>(false, false, true, global0.a.x), vec4<bool>(true, global0.a.x, false, global0.a.x), true)).a.x, all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true))));
    var var_1 = var_0.a.x & global0.a.x;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, -2147483647i), select(select(max(2147483647i, u_input.a.x), abs(0i), func_5(vec3<f32>(406f, -1012f, -1000f), var_0, u_input.b, global0.a.x).a.x), ~(~1i), func_6(u_input.a.zy >> (vec2<u32>(0u, 31914u) % vec2<u32>(32u)), select(vec4<bool>(var_0.a.x, true, global0.a.x, global0.a.x), vec4<bool>(var_0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, var_0.a.x, false))).a.x)) | (firstTrailingBit(-1i) << (78629u % 32u));
    global0 = Struct_1(vec3<bool>(!global0.a.x, false, var_0.a.x));
    var_1 = !global0.a.x;
    var var_3 = 0u;
    var_1 = (-1384f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(225f))))) && (global0.a.x & true);
    var var_4 = func_5(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(374f, 3106f)), 1916f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + -973f), global0.a.x)), 895f, _wgslsmith_f_op_f32(1350f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1585f), -242f)))), func_6(~((vec2<i32>(u_input.b, -25661i) & vec2<i32>(81944i, -34603i)) << (vec2<u32>(6255u, 4682u) % vec2<u32>(32u))), !select(func_1(false, var_0, vec2<f32>(-1000f, 1809f)), !vec4<bool>(true, var_0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, false, var_0.a.x, var_0.a.x))), firstTrailingBit(u_input.b), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(select(1u, ~108636u, true), _wgslsmith_mod_u32(_wgslsmith_add_u32(45584u, 1u), 1u), abs(0u)), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 13336u), ~vec3<u32>(1924u, 0u, 30548u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1015f, 1531f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1563f - -301f) + _wgslsmith_f_op_f32(ceil(1195f))))))), select(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -21119i, u_input.b, u_input.a.x), vec4<i32>(u_input.b, -1i, u_input.b, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -39653i, u_input.a.x, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)) ^ abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)), any(vec4<bool>(global0.a.x, false, var_0.a.x, global0.a.x)) || func_3(vec4<i32>(u_input.b, -18545i, u_input.a.x, -25326i), Struct_1(var_0.a))), ~(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 843f), 435f, !var_4.a.x)) == _wgslsmith_f_op_vec3_f32(func_4(global0.a)).x));
}

