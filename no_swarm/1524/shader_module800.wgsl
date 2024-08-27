struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1279f, vec4<f32>(-115f, -1201f, 1085f, 193f), vec2<f32>(631f, -1045f), vec3<i32>(2147483647i, -38224i, 1i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(-699f, -1929f, -2444f) + vec3<f32>(-1092f, -671f, 2297f))))), -2147483647i, !all(vec2<bool>(true, true)), arg_0.d);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(161f)), 778f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1738f, _wgslsmith_f_op_f32(-var_0.a.x), 179f, 822f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(-1566f, -913f, -1196f, global0.c.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -275f), arg_0.a.x, _wgslsmith_f_op_f32(-921f - var_0.a.x)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(-696f + -374f), _wgslsmith_f_op_f32(-703f - var_0.a.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, -832f)))))), -vec3<i32>(i32(-1i) * -arg_0.d, _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(global0.d.x, 6180i)), 1i));
    let var_2 = reverseBits(reverseBits(global0.d));
    var var_3 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, global0.b.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<f32>(803f, -591f, arg_0), 70319i, arg_1.c, -36813i))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.b * global0.b)))))), arg_1.a.yz, firstTrailingBit(~(firstTrailingBit(global0.d) & (vec3<i32>(arg_1.d, -2147483647i, 39078i) & global0.d))));
    var var_1 = arg_1;
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(var_0.d.x, _wgslsmith_div_i32(-(global0.d.x ^ var_0.d.x), ~304i)), abs(9880i), global0.d.x, _wgslsmith_mult_i32(firstLeadingBit(countOneBits(17478i)), global0.d.x) & -21075i);
    var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(var_0.d.x) | _wgslsmith_mult_i32(var_2.x, 1i), -var_1.d, 0i, global0.d.x), ~(-_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, -30826i, global0.d.x, 2147483647i)), vec4<i32>(var_0.d.x, var_1.b, 0i, -3631i))));
    global0 = var_0;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x)))) * arg_0), 1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1301f, 647f) - global0.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1140f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(379f, -140f)) - global0.c.x)))), vec4<f32>(-593f, -549f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_2.a, vec3<f32>(562f, global0.a, global0.a), true)), -21415i, arg_2.c, 1i))).x, 620f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.a.zy)), _wgslsmith_f_op_vec3_f32(func_2(arg_0.x, arg_2)).zz), _wgslsmith_mult_vec3_i32(countOneBits(~vec3<i32>(arg_1, -1i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(arg_1, 8956i), arg_1, -31562i), select(_wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(arg_3, arg_3, arg_3)), ~global0.d, arg_2.c && arg_2.c))));
    let var_0 = 1629f;
    global0 = Struct_2(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(min(-887f, global0.a)), 1837f, _wgslsmith_f_op_f32(global0.c.x * 659f)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(647f, Struct_1(arg_2.a, 2147483647i, arg_2.c, 0i))).x, _wgslsmith_f_op_f32(select(542f, 389f, true)), _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-global0.c.x))) * vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(var_0, arg_2)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f + 345f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<f32>(arg_0.x, 1000f, -322f), arg_3, false, global0.d.x))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b.yy, vec2<f32>(global0.b.x, global0.b.x)) - _wgslsmith_f_op_vec2_f32(-arg_2.a.yz))))), vec3<i32>(2147483647i, firstTrailingBit(~54400i), 0i));
    global0 = Struct_2(604f, arg_0, vec2<f32>(587f, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a)), arg_2.a.x), Struct_1(vec3<f32>(514f, arg_2.a.x, arg_2.a.x), _wgslsmith_mult_i32(arg_1, global0.d.x), any(vec2<bool>(arg_2.c, arg_2.c)), min(arg_2.b, global0.d.x)))).x), _wgslsmith_mult_vec3_i32(firstLeadingBit(global0.d), _wgslsmith_div_vec3_i32(abs(global0.d), abs(~vec3<i32>(37816i, -45671i, -5964i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wxw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(arg_2.a.x + arg_0.x), _wgslsmith_f_op_f32(global0.c.x + -334f)))), (_wgslsmith_add_i32(firstTrailingBit(13365i), -arg_3) & _wgslsmith_mult_i32(arg_2.b, _wgslsmith_clamp_i32(arg_1, 1i, arg_2.b))) << (~select(u_input.a.x, ~u_input.a.x, any(vec3<bool>(arg_2.c, arg_2.c, arg_2.c))) % 32u), false, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -global0.d.zz, global0.d.xy));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(844f, 126f), _wgslsmith_div_f32(-577f, -529f)), var_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global0.b, arg_0))))))), _wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(arg_2.a.zx - global0.b.xz)), -abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_3, arg_1), global0.d)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    global0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.c.x)), 1382f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-618f, global0.b.x, true)), 133f, any(vec4<bool>(true, true, false, false))))), _wgslsmith_div_f32(-331f, 354f)), _wgslsmith_dot_vec2_i32(~(~select(global0.d.zy, global0.d.xy, vec2<bool>(true, false))), countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(global0.d, global0.d), ~global0.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(global0.c.x, Struct_1(vec3<f32>(-672f, -390f, global0.b.x), global0.d.x, false, global0.d.x))), _wgslsmith_f_op_vec3_f32(func_2(-399f, Struct_1(global0.b.ywz, arg_0, false, global0.d.x)))))), ~(-(~arg_1)), false, firstTrailingBit(_wgslsmith_dot_vec3_i32(global0.d, firstTrailingBit(vec3<i32>(global0.d.x, 1i, 2147483647i))))), _wgslsmith_add_i32(arg_0, arg_1) << (_wgslsmith_add_u32(u_input.a.x, ~(u_input.a.x ^ 4294967295u)) % 32u));
    var var_0 = vec4<u32>(~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mult_u32(1u & ((u_input.a.x ^ u_input.a.x) & firstLeadingBit(u_input.a.x)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a.x, 29732u), u_input.a.wx, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), ~u_input.a.zy)), ~(~(~0u)), 1u);
    var var_1 = Struct_2(global0.c.x, vec4<f32>(global0.c.x, global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(func_4(vec4<f32>(global0.a, 368f, -1824f, -989f), arg_1, Struct_1(global0.b.www, -1i, true, -39370i), -7723i).a)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0.b.yxw, -62095i, true, _wgslsmith_add_i32(arg_0, -1i)))).x), global0.c, global0.d & -global0.d);
    var var_2 = Struct_2(302f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -832f, global0.c.x, var_1.b.x), global0.b), vec4<bool>(true, true, select(false, false, false), any(vec4<bool>(true, true, false, false)))))), _wgslsmith_f_op_vec2_f32(-var_1.b.zy), max(_wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_1, arg_1, arg_0), select(global0.d, var_1.d, true), true), vec3<i32>(var_1.d.x, arg_1, 0i)), firstLeadingBit(global0.d)));
    let var_3 = Struct_1(var_1.b.yyx, ~(-1i), false, countOneBits(max(arg_1 >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(21756i, global0.d.x, 25014i))) & 19986i);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-_wgslsmith_mult_i32(~(-global0.d.x), ~global0.d.x), -47241i);
    var var_1 = 4294967295u;
    global0 = Struct_2(_wgslsmith_f_op_f32(var_0.a.x + 593f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-115f, -463f)) - _wgslsmith_f_op_f32(round(global0.c.x))), func_4(vec4<f32>(-1145f, -134f, -1000f, global0.c.x), ~48555i, Struct_1(vec3<f32>(global0.a, 213f, global0.a), -2147483647i, var_0.c, -2147483647i), -2134i).c.x))), var_0.a.xz, ~global0.d);
    var_1 = 1u;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-var_0.a.x), func_4(global0.b, 2147483647i, Struct_1(global0.b.xxy, -1i, false, 0i), var_0.d).a, _wgslsmith_f_op_f32(global0.a - -1028f)), _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, global0.b.x, 164f, -282f) * vec4<f32>(global0.c.x, global0.a, -502f, global0.c.x))), !select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, false, var_0.c, false), vec4<bool>(var_0.c, false, var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<f32>(var_0.a.x, global0.a, var_0.a.x), var_0.b, var_0.c, var_0.d))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.a, -1348f, var_0.a.x)), global0.b)), !(!select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(false, var_0.c, var_0.c, var_0.c))))), i32(-1i) * -(~(var_0.d & var_0.b)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a), global0.b.wzz, var_0.c)), -25450i, false, global0.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) % 32u)), 1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(488f, 474f, var_2.b.x), global0.b.wxz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2483f, 282f, -187f)))))), global0.d.x, false, i32(-1i) * -3878i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x));
}

