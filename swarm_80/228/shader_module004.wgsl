struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2215f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -305f), -771f), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(sign(global0.a)), -1000f, global0.c)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a)), -220f, _wgslsmith_f_op_f32(f32(-1f) * -739f));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), -224f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - var_0.x))) + _wgslsmith_f_op_f32(-var_1.x)))), u_input.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-248f * -311f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, -1154f))))), ~global0.b, max(u_input.c.x, ~u_input.b.x & _wgslsmith_clamp_u32(arg_2.b, _wgslsmith_sub_u32(4294967295u, 60642u), u_input.b.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0.wxw, var_0.xzy, select(!(!arg_3.zwx), arg_3.wxz, arg_3.x)))));
    var var_2 = Struct_1(1284f, u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(417f, var_1.x) - 409f))))), ~_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(0i, u_input.d, 0i, -2147483647i), vec4<i32>(u_input.d, global0.b, -41006i, global0.b))), -vec4<i32>(2147483647i, u_input.a, -26431i, global0.d)), reverseBits(25096u));
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = false;
    let var_1 = reverseBits(~177i);
    var var_2 = vec3<i32>(min(1i, 48249i), arg_0.b, _wgslsmith_div_i32(~global0.d & -2147483647i, 23690i)) ^ _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(27391i, arg_0.b, 34135i), vec3<i32>(arg_0.d, -1i, -34404i))), max(vec3<i32>(arg_0.b, -2147483647i, var_1), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, arg_2.b, var_1), vec3<i32>(global0.b, var_1, var_1)))), select(vec3<i32>(arg_2.d, _wgslsmith_mod_i32(arg_0.d, global0.b), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, var_1), min(vec3<i32>(u_input.d, global0.d, arg_2.b), vec3<i32>(arg_0.b, var_1, arg_2.b))), vec3<bool>(select(arg_1, false, arg_1), arg_1, false || arg_1)));
    let var_3 = select(select(!select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), any(vec3<bool>(arg_1, arg_1, arg_1))), vec2<bool>(~u_input.c.x >= (arg_0.e ^ 4294967295u), true), select(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(false != arg_1, any(vec4<bool>(true, arg_1, arg_1, arg_1))), false)), vec2<bool>(all(vec3<bool>(arg_1, arg_1, arg_1)) == true, arg_1), !(!(!(!vec2<bool>(arg_1, true)))));
    var var_4 = Struct_2(~(u_input.b | (vec3<u32>(global0.e, 1u, arg_2.e) ^ (u_input.b & u_input.b))), 4294967295u);
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = -2147483647i;
    var var_1 = -1124f;
    var var_2 = Struct_2(~u_input.b, 0u);
    let var_3 = vec4<i32>(func_4(Struct_1(global0.a, abs(func_3(Struct_2(vec3<u32>(35356u, global0.e, u_input.c.x), u_input.b.x), var_2.a.x, Struct_2(vec3<u32>(1u, 2563u, var_2.a.x), 35836u), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2579f * arg_2) + arg_2), _wgslsmith_dot_vec2_i32(arg_3.yx, arg_3.xy), (global0.e ^ global0.e) & ~4099u), arg_0, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_2)))), 1i, global0.c, 1i, ~(~arg_1)), vec4<f32>(297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), -897f, -655f)), u_input.a, u_input.a, -(~_wgslsmith_add_i32(-arg_3.x, _wgslsmith_div_i32(arg_3.x, u_input.a))));
    var var_4 = ~(~(vec2<i32>(global0.b, var_3.x) >> (u_input.b.zy % vec2<u32>(32u))));
    return vec3<u32>(global0.e, 23475u, _wgslsmith_clamp_u32(abs(~(~global0.e)), _wgslsmith_sub_u32(1u, global0.e), ~21661u));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = arg_3;
    global0 = Struct_1(124f, _wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(arg_2.x), -2147483647i), (~(-31731i) >> (~arg_1.b % 32u)) & (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 16231i), vec2<i32>(-46532i, 0i)) & global0.b)), global0.c, select(u_input.d, ~arg_2.x, true || all(vec2<bool>(true, true))), select(1u, arg_3, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec3<bool>(true, false, true))))));
    var var_1 = Struct_1(arg_0, i32(-1i) * -u_input.a, _wgslsmith_f_op_f32(-global0.c), -(~20526i), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 36681u, u_input.b.x, global0.e), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_3, 85457u, global0.e), vec4<u32>(arg_1.b, 1u, 1u, arg_3)), ~vec4<u32>(global0.e, arg_3, 1u, global0.e)), vec4<u32>(~109904u, ~u_input.c.x, firstTrailingBit(25458u), ~55468u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, u_input.c.x), ~vec2<u32>(4294967295u, arg_3) >> ((arg_1.a.xz & arg_1.a.yz) % vec2<u32>(32u)))));
    var_0 = u_input.c.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(605f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(-255f))) - var_1.c)), var_1.d ^ -67816i, _wgslsmith_f_op_f32(f32(-1f) * -906f), -39697i, firstTrailingBit(_wgslsmith_sub_u32(var_1.e, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.a.x, arg_1.b), ~arg_3))));
    return Struct_2(arg_1.a, 4294967295u);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(215f * 1913f), select(abs(countOneBits(~u_input.a)), u_input.a, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-863f + 601f))))), 53913i, ~(global0.e << (arg_2.b % 32u)));
    let var_0 = Struct_2(~vec3<u32>(~global0.e, global0.e, u_input.b.x) & select(min(arg_2.a, vec3<u32>(global0.e, 20675u, 1u)), ~arg_2.a, vec3<bool>(true, true, true)), ~global0.e);
    var var_1 = all(vec4<bool>(true || !any(vec2<bool>(false, true)), !(_wgslsmith_f_op_f32(arg_3 * -804f) >= _wgslsmith_f_op_f32(arg_1.x - arg_0.x)), false, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(false, true, true)))));
    var var_2 = -global0.b;
    global0 = Struct_1(global0.c, u_input.d >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(trunc(global0.c)), global0.b, 46470u);
    return Struct_1(_wgslsmith_f_op_f32(sign(-252f)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), max(_wgslsmith_sub_i32(~func_3(Struct_2(vec3<u32>(arg_2.b, 54387u, global0.e), var_0.a.x), u_input.b.x, var_0, vec4<bool>(false, false, false, false)), i32(-1i) * -25884i), _wgslsmith_add_i32(func_3(var_0, countOneBits(var_0.b), Struct_2(u_input.b, 4294967295u), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), 7451i)), u_input.c.x);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 768f, global0.c)) - vec3<f32>(-806f, -1000f, global0.c)), vec3<f32>(-1532f, -352f, _wgslsmith_f_op_f32(global0.c + global0.a)))), vec4<f32>(-540f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1368f)), _wgslsmith_f_op_f32(-414f * global0.a)), global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f + global0.c) + _wgslsmith_f_op_f32(step(global0.c, -1113f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f - global0.c) - _wgslsmith_f_op_f32(global0.a - global0.a))), _wgslsmith_f_op_f32(-global0.c)), func_5(global0.c, Struct_2(func_2(true, ~20610u, global0.a, vec3<i32>(arg_0.x, u_input.d, u_input.a)), min(0u, 58853u)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-2992i, 1i, 18648i)), abs(arg_0.zxy)) | countOneBits(vec3<i32>(arg_0.x, -22344i, u_input.a) << (u_input.b % vec3<u32>(32u))), ~min(_wgslsmith_mod_u32(23817u, global0.e), _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_f_op_f32(min(global0.a, -1087f)));
    let var_0 = 4855u << (~u_input.b.x % 32u);
    var var_1 = -1i;
    var_1 = -29529i;
    return true;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~41246u ^ u_input.b.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global0.c)))))), -14445i, 1042f, _wgslsmith_mult_i32(select((global0.b ^ -21046i) >> (1u % 32u), func_6(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, global0.c), vec3<f32>(-1313f, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-478f, -414f, global0.a, global0.c))), Struct_2(vec3<u32>(1u, u_input.c.x, global0.e), 4294967295u), global0.a).d, all(arg_0)), _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.a, global0.b, global0.b, u_input.d)), ~vec4<i32>(global0.d, u_input.a, 0i, u_input.a))), _wgslsmith_mod_u32(u_input.c.x, max(56001u, arg_1.b)));
    var_0 = ~global0.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - vec2<f32>(1247f, global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 627f)), false))))));
    let var_2 = Struct_2(vec3<u32>(~(u_input.b.x & 61944u) ^ 1u, global0.e, global0.e), select(~countOneBits(1u), u_input.b.x, any(arg_0.xy)));
    return Struct_1(var_1.x, _wgslsmith_add_i32(global0.b, func_4(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1104f, var_1.x, 1064f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 289f, -1442f, global0.a), vec4<f32>(-700f, var_1.x, var_1.x, global0.a)), Struct_2(arg_1.a, 3136u), _wgslsmith_f_op_f32(select(838f, -632f, arg_0.x))), false, func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(-951f, -226f, 281f) * vec3<f32>(-1256f, global0.a, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_1.x, -1000f, var_1.x)), var_2, global0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, 351f, var_1.x, 770f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, global0.a, -790f, -347f))), 1u < u_input.c.x)))), -1311f, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-68853i, u_input.d), _wgslsmith_sub_i32(global0.d, -12997i)) << (vec2<u32>(~22942u, global0.e) % vec2<u32>(32u)), countOneBits(~(vec2<i32>(0i, u_input.d) & vec2<i32>(global0.d, 2147483647i)))), ~1u);
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.c)), 1i, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(14749i, 0i)), u_input.c.x);
    let var_1 = -2147483647i;
    var var_2 = abs(firstLeadingBit(~(-(global0.b | 0i))));
    var_0 = func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(190f)), 539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c)) - _wgslsmith_f_op_f32(f32(-1f) * -342f))) + vec3<f32>(var_0.a, _wgslsmith_f_op_f32(max(-1428f, _wgslsmith_f_op_f32(round(306f)))), func_6(vec3<f32>(1572f, arg_0.a, -1178f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(186f, var_0.a, var_0.c, 843f), vec4<f32>(1182f, -329f, -931f, -1671f), vec4<bool>(arg_1, false, true, arg_1))), Struct_2(arg_2.a, 0u), _wgslsmith_f_op_f32(round(-839f))).c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1445f, -328f, -2130f, global0.a), vec4<f32>(var_0.c, var_0.c, -2069f, 119f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -437f, global0.c, 511f) - vec4<f32>(var_0.a, var_0.a, 306f, 729f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, var_0.c, global0.a, arg_0.c) - vec4<f32>(arg_0.c, arg_0.a, -1637f, -611f))))), Struct_2(~(~u_input.b), arg_0.e), func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(568f, var_0.c, arg_0.a), vec3<f32>(1393f, global0.a, 859f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -2681f) - vec3<f32>(var_0.c, 166f, 287f))), vec4<f32>(global0.a, _wgslsmith_f_op_f32(sign(-1000f)), global0.c, 1427f), arg_2, -1000f).c);
    var_0 = func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), func_7(vec4<bool>(true, true, true, true), Struct_2(vec3<u32>(4294967295u, 0u, 1u), 49726u)).a, _wgslsmith_f_op_f32(trunc(global0.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, func_7(vec4<bool>(arg_1, false, arg_1, arg_1), arg_2).c, _wgslsmith_f_op_f32(var_0.c + global0.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, global0.c, arg_0.c) - vec3<f32>(var_0.c, arg_0.c, global0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(669f + 524f), arg_0.c)), global0.a, -544f)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f + 1999f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(func_7(select(vec4<bool>(true, func_1(vec4<i32>(19321i, 32690i, u_input.d, global0.d)), true, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)), Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(global0.e, global0.e, global0.e), u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, global0.e), vec3<u32>(global0.e, u_input.c.x, 1u)), ~u_input.b), global0.e)), false, Struct_2(u_input.b, 40372u));
    var var_0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1936f + global0.c))) != _wgslsmith_f_op_f32(f32(-1f) * -2132f)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(-1845f, func_8(Struct_1(global0.c, global0.d, -162f, _wgslsmith_sub_i32(-1i, -23070i), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.c.x, 0u, global0.e, 0u))), all(vec3<bool>(var_0.x, var_0.x, var_0.x)) && var_0.x, func_5(global0.a, Struct_2(u_input.b, 4294967295u), firstTrailingBit(vec3<i32>(global0.b, global0.d, 1i)), ~0u)).c)), select(-(firstTrailingBit(0i) & (global0.b >> (u_input.c.x % 32u))), 48538i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-15018i, 2147483647i, 1i, global0.d), countOneBits(vec4<i32>(-2147483647i, u_input.a, 25590i, -15606i))), !((u_input.b.x << (34583u % 32u)) == global0.e)), global0.a, global0.b >> (global0.e % 32u), u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(~min(u_input.a, u_input.d), -17712i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b, u_input.d, u_input.d, u_input.d), vec4<i32>(-10039i, 1i, -57050i, -1i)), -vec4<i32>(3297i, global0.d, 32509i, u_input.d)), global0.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -236f, -839f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.c, 882f, var_1.x)) * vec4<f32>(var_1.x, 1580f, var_1.x, -521f)))));
}

