struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 15096i, 22562i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(1f, -662f)))), vec4<bool>(false, ~(~u_input.c.x) != (u_input.e | (0u >> (arg_0.x % 32u))), global0.c.x, true), global0.b.xz, select(!(!global0.b.xw), vec2<bool>(false, global0.d.x), vec2<bool>((1164f >= global0.a) != false, global0.c.x)), global0.e);
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * -364f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1568f, 950f)), arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_div_f32(-1277f, -1336f), global0.b.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-arg_2), 1599f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -1684f, arg_2) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) + vec3<f32>(1761f, -433f, arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1680f, global0.a) * vec3<f32>(1000f, 229f, -1083f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1490f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), arg_2))), global0.a, global0.d.x)), arg_2);
    let var_1 = Struct_2(!select(global0.b.wy, !vec2<bool>(false, global0.d.x), vec2<bool>(global0.d.x, true)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), vec4<bool>(true, arg_1.x <= reverseBits(arg_0.x), all(select(vec4<bool>(global0.d.x, false, false, true), vec4<bool>(true, true, false, global0.d.x), global0.b)), global0.c.x), vec2<bool>(true, true), global0.d, vec3<i32>(0i, -_wgslsmith_div_i32(0i, global1.x), 2147483647i | _wgslsmith_sub_i32(-47954i, u_input.a.x))), -1563f);
    var var_2 = Struct_1(var_0.x, select(!vec4<bool>(global0.c.x, true, !var_1.b.b.x, !var_1.a.x), !vec4<bool>(var_1.b.d.x || true, var_1.a.x, var_1.b.b.x, global0.b.x), !global0.c.x), select(select(var_1.b.d, select(select(var_1.a, global0.d, vec2<bool>(false, false)), var_1.b.d, select(vec2<bool>(var_1.b.d.x, true), vec2<bool>(global0.c.x, true), false)), !all(global0.c)), !vec2<bool>(true, all(var_1.a)), var_1.a), select(!global0.c, !select(vec2<bool>(true, true), vec2<bool>(true, true), global0.b.xy), true), ~(-var_1.b.e));
    return 1564f;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec2<bool>(true, (select(countOneBits(-20556i), select(0i, global0.e.x, arg_0.b.x), false) >> (u_input.e % 32u)) == -1i);
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.e.x, u_input.b, global0.e.x ^ ~countOneBits(u_input.a.x), ~(-1455i)), -abs(abs(vec4<i32>(global1.x, -1i, 91547i, u_input.b))) << (vec4<u32>(~u_input.e | ~u_input.d, ~u_input.e, ~4294967295u, _wgslsmith_dot_vec3_u32(~u_input.c.xxy, vec3<u32>(u_input.c.x, 0u, u_input.e) ^ u_input.c.xwy)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-1i, firstLeadingBit(2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_0.e.x, global0.e.x), _wgslsmith_dot_vec2_i32(u_input.a, global1.xy)), vec2<i32>(23408i, 2147483647i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(-arg_0.e.zx), u_input.a), _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(global1.x, 0i, global1.x))), arg_0.e)));
    var var_2 = Struct_2(global0.d, Struct_1(_wgslsmith_f_op_f32(sign(-920f)), vec4<bool>(select(all(arg_0.b.wyz), true, all(vec3<bool>(global0.c.x, global0.b.x, false))), true, false, true), vec2<bool>(true, arg_0.c.x), global0.c, vec3<i32>(global1.x, i32(-1i) * -arg_0.e.x, _wgslsmith_dot_vec2_i32(var_1.xw, vec2<i32>(var_1.x, -4803i)) | -58730i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1864f)), _wgslsmith_f_op_f32(round(global0.a)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(func_3(min(abs(u_input.c.xw), ~u_input.c.yx), vec2<u32>(4294967295u, u_input.c.x | u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))))))));
    global0 = arg_0;
    return vec4<bool>(true, arg_0.d.x, any(vec2<bool>(true, global0.d.x & false)), all(select(global0.d, !var_0, true)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = 10597u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a))), func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.d, 0u), u_input.c.yy, global0.a)), _wgslsmith_f_op_f32(1082f - global0.a))), global0.b, arg_1.xy, select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(arg_1.x, arg_1.x)), ~(~global0.e))), vec2<bool>(all(func_4(Struct_1(global0.a, global0.b, vec2<bool>(false, false), global0.c, vec3<i32>(-11628i, global1.x, arg_0)))), all(func_4(Struct_1(-641f, global0.b, global0.d, vec2<bool>(arg_1.x, true), vec3<i32>(global0.e.x, u_input.a.x, arg_0))).xzz)), vec2<bool>(u_input.d >= firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c.yyy, vec3<u32>(0u, 4002u, 4294967295u))), !(-1112f >= _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_mod_vec3_i32(global0.e, ~vec3<i32>(_wgslsmith_sub_i32(arg_0, global0.e.x), firstTrailingBit(u_input.a.x), u_input.a.x | global0.e.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, select(arg_0, u_input.a.x << (4294967295u % 32u), select(false, var_1.b.x | global0.b.x, arg_1.x)), select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-9714i, 42616i, global1.x, 1i), vec4<i32>(global1.x, -1i, u_input.b, 32377i)), ~1i, u_input.a.x), abs(u_input.a.x), true)), var_1.e);
    var var_3 = _wgslsmith_f_op_f32(global0.a * -701f);
    var var_4 = !global0.b;
    return Struct_2(vec2<bool>(true, !all(global0.b.zxx)), Struct_1(_wgslsmith_f_op_f32(-var_1.a), func_4(Struct_1(_wgslsmith_f_op_f32(sign(254f)), !vec4<bool>(false, arg_1.x, false, false), !vec2<bool>(false, global0.c.x), vec2<bool>(true, var_4.x), -global0.e)), !(!var_1.b.xy), arg_1.zx, abs(vec3<i32>(3426i, -2147483647i, arg_0)) & var_1.e), global0.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = min(func_2(-arg_2.b.e.x, select(arg_2.b.b.ywx, select(arg_3.b.wwx, vec3<bool>(true, true, true), global0.b.wyy), vec3<bool>(arg_2.b.d.x, arg_3.d.x, arg_3.b.x))).b.e, _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b.e.x >> (1u % 32u), 1i, 1i), ~global0.e)) & vec3<i32>(~arg_2.b.e.x, ~(16315i | _wgslsmith_clamp_i32(arg_3.e.x, arg_3.e.x, 2147483647i)), select(u_input.b, global0.e.x, !(701f < arg_0.x)));
    var var_1 = Struct_2(func_2(select(-18822i, global1.x << (abs(u_input.c.x) % 32u), arg_2.a.x), select(func_4(func_2(arg_3.e.x, vec3<bool>(arg_1.a.x, false, arg_1.b.c.x)).b).yxz, arg_3.b.xzz, _wgslsmith_sub_u32(4294967295u, 1u) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 63756u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u)))).a, arg_3, -275f);
    var var_2 = arg_1.b.c.x;
    var var_3 = vec4<bool>(!func_2(4472i, global0.b.yww).a.x, arg_2.a.x, any(vec3<bool>(false, u_input.d == 4294967295u, any(!global0.c))), ~arg_1.b.e.x < (abs(reverseBits(u_input.b)) ^ countOneBits(-arg_1.b.e.x)));
    var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2215f), _wgslsmith_f_op_f32(select(609f, _wgslsmith_f_op_f32(abs(arg_2.b.a)), arg_2.a.x)), func_4(arg_2.b).x)), func_4(arg_3), arg_3.d, select(arg_3.c, vec2<bool>(-17562i > var_0.x, true), all(func_4(arg_1.b).zz)), vec3<i32>(-select(global0.e.x, arg_1.b.e.x, var_1.b.d.x), -_wgslsmith_mult_i32(arg_2.b.e.x, arg_1.b.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-7518i, arg_3.e.x, global1.x, -1i), vec4<i32>(-52380i, -93402i, 10211i, 27827i)))));
    return global0.b;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(!arg_0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), 953f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1136f, -174f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -504f))), select(func_5(vec2<f32>(-1253f, 1000f), func_2(u_input.a.x, arg_0.b.b.xww), arg_0, Struct_1(global0.a, vec4<bool>(arg_0.a.x, global0.b.x, true, true), vec2<bool>(global0.c.x, arg_0.b.c.x), global0.b.yy, arg_0.b.e)), vec4<bool>(true, any(arg_0.b.b.zxz), global0.d.x, true), !vec4<bool>(global0.b.x, false, arg_0.b.d.x, false)), vec2<bool>(global0.d.x, !(-1272f <= global0.a)), vec2<bool>(false, arg_0.a.x), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(global1.x, global1.x, global1.x)), -39066i, countOneBits(28105i) | _wgslsmith_sub_i32(-1i, global0.e.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) + -587f))));
    global1 = -(~arg_0.b.e);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, arg_0.b.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 1515f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1118f, 1970f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, 667f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(769f + -243f), -165f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, -164f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c, 1857f), vec2<f32>(-1129f, 307f))), func_4(Struct_1(var_0.b.a, global0.b, var_0.a, arg_0.a, arg_0.b.e)).zy))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(1529f)), arg_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(func_2(~0i, select(var_0.b.b.ywx, var_0.b.b.wzx, global0.c.x)).c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, -1000f), -2507f))), _wgslsmith_f_op_f32(-var_0.c));
    return select(!func_4(Struct_1(-910f, func_2(33671i, vec3<bool>(true, global0.c.x, arg_0.a.x)).b.b, vec2<bool>(global0.d.x, arg_0.a.x), select(global0.c, var_0.a, global0.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.e.x, 36375i, arg_0.b.e.x), var_0.b.e))).x, all(select(var_0.b.b, !(!global0.b), global0.b)), true);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), global0.a);
    return Struct_1(_wgslsmith_f_op_f32(-988f + 1534f), func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c - -879f), var_0.x), !vec4<bool>(arg_1.a.x, arg_1.b.d.x, arg_1.b.c.x, global0.c.x), vec2<bool>(arg_1.b.c.x, global0.d.x), global0.c, -_wgslsmith_add_vec3_i32(arg_1.b.e, vec3<i32>(u_input.a.x, global0.e.x, global0.e.x)))), arg_1.b.d, vec2<bool>(false, false), ~(~vec3<i32>(-6114i, u_input.a.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - 607f))), _wgslsmith_f_op_f32(217f + _wgslsmith_f_op_f32(366f - -1260f)), 381f, 304f)), Struct_2(select(select(global0.b.wy, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(global0.b.x, global0.c.x)), vec2<bool>(func_1(Struct_2(vec2<bool>(false, false), Struct_1(global0.a, global0.b, vec2<bool>(global0.c.x, global0.c.x), global0.d, global0.e), 285f)), global0.c.x), !any(global0.b)), func_2(~global1.x, global0.b.zzz).b, _wgslsmith_f_op_f32(f32(-1f) * -1359f)));
    global1 = global0.e;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(453f)), -242f, global0.a);
    let var_2 = Struct_2(!(!func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 137f, var_1.x, 1613f) + vec4<f32>(1832f, 538f, global0.a, 139f)), func_2(2147483647i, vec3<bool>(true, true, true))).b.xx), func_2(global1.x >> (~_wgslsmith_add_u32(u_input.e, 36081u) % 32u), !vec3<bool>(global0.c.x, func_1(Struct_2(vec2<bool>(false, global0.c.x), Struct_1(global0.a, global0.b, vec2<bool>(false, global0.d.x), vec2<bool>(global0.d.x, false), global0.e), global0.a)), false | global0.d.x)).b, -495f);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_2.b.a), -1000f) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1514f)))))), -614f));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(max(-((vec4<i32>(var_4.b.e.x, var_2.b.e.x, 32600i, 1i) | vec4<i32>(var_2.b.e.x, -2147483647i, var_4.b.e.x, global0.e.x)) ^ min(vec4<i32>(-18034i, global1.x, 227i, u_input.b), vec4<i32>(global0.e.x, var_4.b.e.x, global1.x, -78632i))), ~(-(~vec4<i32>(global1.x, global0.e.x, 17466i, u_input.a.x)))), ~1u);
}

