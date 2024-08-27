struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: vec2<f32> = vec2<f32>(2584f, 813f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> vec4<i32> {
    let var_0 = arg_1;
    return vec4<i32>(49794i, _wgslsmith_dot_vec2_i32(vec2<i32>(-26266i, arg_1.b.x & u_input.b.x) | (vec2<i32>(u_input.b.x, 0i) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~vec2<i32>(0i, abs(-37422i))), -27117i, 2147483647i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1065f, global0.x, global0.x, global0.x), vec4<f32>(-1414f, -139f, 120f, 1000f), vec4<bool>(true, false, false, true))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -828f, 1693f, 2252f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1132f, global0.x, 500f) + vec4<f32>(global0.x, global0.x, -532f, global0.x)))))), Struct_1(arg_0.yy & arg_0.wx, -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_1.x, -2147483647i) ^ vec4<i32>(arg_1.x, u_input.b.x, 16521i, u_input.b.x), func_3(vec3<f32>(-537f, global0.x, global0.x), Struct_3(global0.x, arg_1.yx, 262f), global0.x, vec3<f32>(644f, 713f, 833f)))));
    let var_1 = _wgslsmith_mult_u32(var_0.b.a.x, arg_0.x);
    var var_2 = var_0;
    var_2 = var_0;
    var_2 = var_0;
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec2<u32>(arg_3.b.a.x, ((arg_2.x & arg_3.b.a.x) & _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, u_input.a, arg_2.x), arg_2), ~vec3<u32>(arg_3.b.a.x, 48379u, 48940u))) << (25972u % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_3.a.zyz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(580f, 972f, true)), 248f, _wgslsmith_f_op_f32(round(561f)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1023f, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), true)), false)))), vec2<i32>(-1i) * -select(arg_3.b.b.ww, vec2<i32>(arg_3.b.b.x, arg_3.b.b.x), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1187f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(280f, arg_3.a.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.xz)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_div_f32(arg_3.a.x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f - -2130f)), var_2.c), vec4<f32>(_wgslsmith_f_op_f32(abs(553f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-257f * arg_3.a.x), _wgslsmith_div_f32(-470f, -1013f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.x, -767f)))))), Struct_1(firstTrailingBit(vec2<u32>(arg_3.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15669u, var_0.x, var_0.x, arg_2.x), vec4<u32>(42904u, arg_2.x, 29471u, 66652u)))), vec4<i32>(0i, arg_1.x, -25986i, 2147483647i)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -819f, arg_3.a.x, -1142f))))), var_3.a, false)), Struct_1(var_0, vec4<i32>(7409i, firstLeadingBit(~(-21427i)), _wgslsmith_sub_i32(abs(u_input.b.x), 12142i), _wgslsmith_div_i32(~1i, -3023i))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(arg_3.a.x + 269f), u_input.b, func_4(vec3<i32>(10268i, u_input.b.x, u_input.b.x), arg_3.b.b, reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.c), vec3<u32>(u_input.c, u_input.a, 47567u), vec3<u32>(1u, 1u, 0u))), func_4(vec3<i32>(arg_3.b.b.x, arg_2.x, u_input.b.x) | _wgslsmith_clamp_vec3_i32(arg_3.b.b.zxz, arg_3.b.b.yww, vec3<i32>(35854i, -2147483647i, 64524i)), arg_3.b.b, vec3<u32>(u_input.a, 1u, ~arg_3.b.a.x), func_4(func_3(arg_3.a.xzw, Struct_3(-234f, vec2<i32>(22668i, 10950i), 1061f), arg_3.a.x, vec3<f32>(arg_3.a.x, global0.x, -297f)).zxy, arg_3.b.b | arg_3.b.b, vec3<u32>(u_input.c, u_input.c, u_input.a) >> (vec3<u32>(u_input.c, 2280u, u_input.a) % vec3<u32>(32u)), arg_3))).a.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(994f)))))), -1777f);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), var_0.a))))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(func_5(true, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), ~(vec4<i32>(-u_input.b.x, _wgslsmith_add_i32(-35992i, 2073i), -2147483647i, u_input.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0.x, arg_0.x, 34439u), vec4<u32>(arg_0.x, u_input.c, 4294967295u, u_input.a)) % vec4<u32>(32u))), func_4(max(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i) ^ vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(11264i, u_input.b.x, -17363i)) & min(vec3<i32>(u_input.b.x, u_input.b.x, 0i) ^ vec3<i32>(u_input.b.x, -19692i, -24299i), select(vec3<i32>(31355i, 10553i, 1644i), vec3<i32>(u_input.b.x, u_input.b.x, -25140i), vec3<bool>(true, false, false))), vec4<i32>(firstLeadingBit(39734i), u_input.b.x << (func_2(vec4<u32>(u_input.a, u_input.a, 47537u, 22610u), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)) % 32u), _wgslsmith_add_i32(101994i, _wgslsmith_add_i32(u_input.b.x, -14345i)), -1i), ~firstLeadingBit(~vec3<u32>(u_input.c, arg_0.x, 22216u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 156f, global0.x, -1105f))), Struct_1(vec2<u32>(0u, 96676u), _wgslsmith_sub_vec4_i32(vec4<i32>(-14714i, 0i, u_input.b.x, -4980i), vec4<i32>(-2147483647i, -7470i, 32687i, 47027i)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))));
    let var_0 = arg_0.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + global0.x), vec2<i32>(-2147483647i, 12317i), _wgslsmith_f_op_f32(select(134f, _wgslsmith_f_op_f32(f32(-1f) * -698f), !(!all(vec3<bool>(true, true, true))))));
    let var_2 = ~var_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_5(false, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec4<i32>(~3612i, ~u_input.b.x, func_3(vec3<f32>(var_1.c, var_1.a, global0.x), Struct_3(429f, vec2<i32>(-842i, 1i), global0.x), -1924f, vec3<f32>(593f, -810f, global0.x)).x, abs(u_input.b.x)), func_4(vec3<i32>(u_input.b.x, var_1.b.x, 0i), vec4<i32>(u_input.b.x, 0i, var_1.b.x, u_input.b.x) >> (vec4<u32>(arg_0.x, 0u, var_0, var_0) % vec4<u32>(32u)), vec3<u32>(var_2, 55346u, 11966u), func_4(vec3<i32>(var_1.b.x, 0i, var_1.b.x), vec4<i32>(-22758i, 2147483647i, 7754i, u_input.b.x), vec3<u32>(var_0, 4294967295u, 4294967295u), Struct_2(vec4<f32>(global0.x, var_1.a, -513f, -1152f), Struct_1(arg_0.zx, vec4<i32>(u_input.b.x, var_1.b.x, u_input.b.x, 47474i))))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -402f))))) > _wgslsmith_f_op_f32(-var_1.a);
}

fn func_6(arg_0: bool, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -189f), -(~u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f + 284f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-426f, global0.x), func_4(vec3<i32>(u_input.b.x, arg_1.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, -2147483647i, 2147483647i), vec3<u32>(u_input.c, u_input.c, 1u), Struct_2(vec4<f32>(1988f, global0.x, 916f, -1117f), Struct_1(vec2<u32>(22340u, 1u), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))).a.x)) * _wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1522f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(-406f)), -430f));
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 23637u, 19329u) | vec4<u32>(u_input.c, 60111u, u_input.a, 4294967295u), vec4<u32>(u_input.c, 12021u, 0u, 0u)) | _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, u_input.a, u_input.a)), select(vec4<u32>(u_input.c, u_input.a, u_input.c, 4294967295u), vec4<u32>(u_input.a, u_input.c, 0u, u_input.a) | vec4<u32>(u_input.a, 43307u, 1u, u_input.c), all(vec4<bool>(true, arg_0, arg_0, true)))));
    var var_3 = func_4(vec3<i32>(_wgslsmith_add_i32(~u_input.b.x, var_0.b.x), var_0.b.x << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(func_4(vec3<i32>(var_0.b.x, var_0.b.x, -92902i), abs(vec4<i32>(u_input.b.x, 1i, arg_1.x, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_2.x, 4294967295u), vec3<u32>(10399u, 0u, 1u)), Struct_2(vec4<f32>(-1417f, 1323f, -540f, global0.x), Struct_1(vec2<u32>(4294967295u, 28401u), vec4<i32>(-35471i, arg_1.x, arg_1.x, 1i)))).b.b.wy, _wgslsmith_add_vec2_i32(vec2<i32>(24431i, -2147483647i), var_0.b))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -1i, u_input.b.x, 9834i), vec4<i32>(-4569i, 1i, -24733i, var_0.b.x)) | vec4<i32>(arg_1.x, u_input.b.x, var_0.b.x, 64489i), vec4<i32>(~1i, _wgslsmith_sub_i32(var_0.b.x, -17215i), ~arg_1.x, var_0.b.x & arg_1.x)) & (-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_1.x, -15810i, -5564i), vec4<i32>(1255i, -2147483647i, 8345i, -8190i)) << (max(vec4<u32>(var_2.x, 4294967295u, u_input.a, 1u), countOneBits(vec4<u32>(u_input.a, var_2.x, u_input.c, 1u))) % vec4<u32>(32u))), ~select(abs(_wgslsmith_sub_vec3_u32(var_2.xwy, var_2.xwx)), var_2.wxz, arg_0), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_1.x), 1000f), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.zz, vec2<u32>(var_2.x, u_input.c), vec2<u32>(u_input.a, 71898u)), var_2.xy), firstLeadingBit(select(vec4<i32>(-30530i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(-1i, var_0.b.x, -21989i, arg_1.x), vec4<bool>(arg_0, arg_0, false, true))))));
    return !(!(!(!(!vec2<bool>(true, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_6(func_1(~vec3<u32>(0u, u_input.a, u_input.c)), vec2<i32>(1i, 1i)));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), 181f), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), 18905i), _wgslsmith_mult_vec2_i32(max(u_input.b, vec2<i32>(-1i, u_input.b.x)), vec2<i32>(-26357i, u_input.b.x)), select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, u_input.b.x), false))), global0.x);
    var var_2 = ~(vec4<i32>(-1i, -9942i, var_1.b.x, 4312i) ^ func_4(abs(abs(vec3<i32>(var_1.b.x, u_input.b.x, -16085i))), vec4<i32>(-u_input.b.x, firstTrailingBit(1i), 1i, _wgslsmith_dot_vec2_i32(var_1.b, var_1.b)), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 49363u), var_0.x), vec3<u32>(4294967295u, 33860u, u_input.a)), Struct_2(vec4<f32>(var_1.a, var_1.c, 448f, global0.x), func_4(vec3<i32>(var_1.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-4125i, -30410i, u_input.b.x, -13968i), vec3<u32>(u_input.c, u_input.a, u_input.a), Struct_2(vec4<f32>(227f, 945f, global0.x, 453f), Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<i32>(u_input.b.x, u_input.b.x, -39626i, -1i)))).b)).b.b);
    var var_3 = any(!(!var_0));
    let var_4 = Struct_2(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(ceil(420f)), _wgslsmith_f_op_vec2_f32(func_5(var_0.x, !vec3<bool>(var_0.x, false, false), vec4<i32>(countOneBits(2147483647i), min(var_2.x, -1i), _wgslsmith_clamp_i32(u_input.b.x, var_1.b.x, var_2.x), var_1.b.x), Struct_2(vec4<f32>(global0.x, 369f, -1568f, var_1.a), Struct_1(vec2<u32>(u_input.c, 34236u), vec4<i32>(u_input.b.x, var_1.b.x, var_1.b.x, var_1.b.x))))).x), func_4(vec3<i32>(~(-var_2.x), 1i, 1i), firstTrailingBit(vec4<i32>(select(var_2.x, u_input.b.x, true), ~u_input.b.x, 25570i, firstTrailingBit(2147483647i))), abs(~(~vec3<u32>(u_input.c, 43826u, 0u))), func_4(var_2.wyy, -vec4<i32>(1i, -2147483647i, 25217i, u_input.b.x), vec3<u32>(~12422u, u_input.c, u_input.a), func_4(-vec3<i32>(u_input.b.x, 0i, var_1.b.x), vec4<i32>(u_input.b.x, 26818i, 1i, var_1.b.x) >> (vec4<u32>(u_input.c, 3973u, 0u, 33171u) % vec4<u32>(32u)), vec3<u32>(u_input.a, u_input.c, u_input.c) & vec3<u32>(u_input.a, u_input.a, u_input.c), Struct_2(vec4<f32>(-1592f, global0.x, var_1.c, -603f), Struct_1(vec2<u32>(1u, u_input.c), vec4<i32>(var_2.x, u_input.b.x, 1i, 2147483647i)))))).b);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1941f - global0.x), _wgslsmith_f_op_f32(var_1.c - var_4.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_4.a.x - global0.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_4.a.zx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.a.xz + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * -640f), -270f)));
}

