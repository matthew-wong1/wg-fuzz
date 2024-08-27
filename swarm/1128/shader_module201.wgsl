struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_4,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = ~(~_wgslsmith_clamp_i32(-3119i, -15085i, 1i));
    var var_1 = !(!select(select(vec4<bool>(arg_1.x, false, true, arg_3), !vec4<bool>(arg_1.x, arg_3, true, true), false), vec4<bool>(false, -447f < arg_2.a.c.x, arg_2.a.b.x, any(vec4<bool>(false, true, arg_1.x, arg_3))), arg_1.x));
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c.x, arg_2.c.c.x, arg_2.c.c.x))))), _wgslsmith_mult_u32(21148u, 91396u), Struct_2(arg_2.a, arg_2.a, Struct_1(~u_input.c.x, arg_1.yz, _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.c.x, arg_2.a.c.x), arg_2.c.c))), !vec4<bool>(false, false, true, !arg_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-671f, -1054f), arg_2.c.c) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.a.c + vec2<f32>(arg_2.a.c.x, arg_2.a.c.x))))))), Struct_4(vec3<f32>(arg_2.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c.x * arg_2.a.c.x) - _wgslsmith_f_op_f32(round(-795f))), arg_2.c.c.x), u_input.d, arg_2, vec4<bool>(!(arg_0.x < 9558u), true, true, all(vec2<bool>(false, var_1.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.c.x + 275f), _wgslsmith_f_op_f32(f32(-1f) * -1300f), arg_2.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -266f))))), arg_2.b);
    var_1 = var_2.c.d;
    var var_3 = arg_0.x;
    return var_2.e.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = ~arg_0.x << (firstLeadingBit(min(select(u_input.d, func_3(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec3<bool>(arg_1.x, false, false), Struct_2(Struct_1(arg_0.x, vec2<bool>(arg_1.x, true), arg_2), Struct_1(arg_0.x, vec2<bool>(arg_1.x, arg_1.x), vec2<f32>(arg_2.x, -221f)), Struct_1(u_input.b.x, arg_1.zx, vec2<f32>(arg_2.x, 2329f))), false), !arg_1.x), 1u)) % 32u);
    var var_1 = u_input.a;
    var_1 = reverseBits(countOneBits(~countOneBits(max(u_input.a, u_input.a))));
    let var_2 = vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-596f, _wgslsmith_f_op_f32(-1f))), arg_2.x);
    var_1 = countOneBits(u_input.a);
    return Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(arg_2.x * var_2.x), arg_2.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.zyx)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1793f, 1222f, var_2.x)))), 12839u, Struct_2(Struct_1(76778u, select(arg_1.zx, arg_1.xy, arg_1.x), arg_2), Struct_1(~1u, arg_1.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -514f) - vec2<f32>(-1000f, -929f))), Struct_1(arg_0.x, arg_1.zx, var_2.yx)), !(!vec4<bool>(true, arg_1.x, true, true))), _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(-var_2.zx)), Struct_4(var_2.wwx, reverseBits(1u), Struct_2(Struct_1(~1u, vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-923f, 267f)))), Struct_1(var_0 | var_0, arg_1.yx, var_2.yy), Struct_1(0u, arg_1.yx, vec2<f32>(-1000f, -1000f))), select(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !(!vec4<bool>(false, false, arg_1.x, true)), !(!arg_1.x))), _wgslsmith_f_op_vec4_f32(trunc(var_2)), Struct_1(4294967295u, arg_1.xz, arg_2));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = -2147483647i;
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_2(u_input.c, arg_1.c.d.xzw, vec2<f32>(380f, -1469f), vec3<i32>(652i, -2147483647i, 8224i)).c.a, arg_1.c.a, all(vec3<bool>(false, arg_1.a.c.c.b.x, arg_1.c.c.c.b.x))))), arg_1.c.b, Struct_2(func_2(u_input.c, arg_1.c.d.xzz, arg_1.d.xy, vec3<i32>(var_0, var_0, var_0) & vec3<i32>(var_0, var_0, -2147483647i)).a.c.b, arg_1.c.c.a, arg_1.e), select(!arg_1.a.d, vec4<bool>(!arg_1.c.c.b.b.x, true, !arg_1.e.b.x, false), arg_1.a.d)), vec2<f32>(_wgslsmith_f_op_f32(step(-210f, _wgslsmith_div_f32(arg_0, arg_1.a.c.c.c.x))), _wgslsmith_f_op_f32(-2064f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + arg_0))), arg_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, -1074f, arg_0) + arg_1.d), func_2(u_input.a.yyw, select(select(vec3<bool>(arg_1.c.c.b.b.x, arg_1.a.c.c.b.x, true), select(arg_1.c.d.zzy, arg_1.a.d.yzx, true), vec3<bool>(false, false, arg_1.c.d.x)), arg_1.a.d.xwz, true), arg_1.b, select(-vec3<i32>(var_0, -62523i, var_0) & vec3<i32>(-41010i, -2147483647i, var_0), -vec3<i32>(var_0, -17104i, var_0), vec3<bool>(false, select(arg_1.e.b.x, true, arg_1.a.d.x), arg_1.e.b.x))).e);
    let var_2 = false;
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_1.d.ywx), 0u, Struct_2(Struct_1(0u, func_2(vec3<u32>(var_1.e.a, 0u, 55983u), !arg_1.a.d.xww, var_1.e.c, vec3<i32>(26099i, 107756i, -58622i) << (vec3<u32>(arg_1.c.b, 20539u, arg_1.a.c.a.a) % vec3<u32>(32u))).a.c.b.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a.x, arg_0) * vec2<f32>(-581f, -241f))))), Struct_1(_wgslsmith_sub_u32(arg_1.c.c.c.a, 35513u), vec2<bool>(var_0 == 0i, true == var_1.e.b.x), var_1.b), var_1.a.c.b), arg_1.c.d);
    let var_4 = arg_1.a.c.a;
    return vec4<f32>(arg_0, arg_1.b.x, _wgslsmith_f_op_f32(sign(-256f)), _wgslsmith_f_op_f32(-var_1.e.c.x));
}

fn func_1(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(min(-920f, -1997f)), func_2(vec3<u32>(u_input.c.x, 4294967295u, 26314u), vec3<bool>(false, false, true), vec2<f32>(258f, -438f), vec3<i32>(1i, 5745i, -2147483647i)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, 105f, 554f, 896f))))));
    let var_1 = vec2<i32>(abs(countOneBits(-30691i) << (arg_0.x % 32u)), i32(-1i) * -(~(-1i))) | _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, 2147483647i), firstTrailingBit(vec2<i32>(1907i, 0i))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11565i, 15466i), vec2<i32>(-70781i, -1i), vec2<i32>(-41199i, 11838i)))), vec2<i32>(-51596i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 7582i)) | max(vec2<i32>(1i, 1i), vec2<i32>(56751i, -6906i)));
    let var_2 = select(~u_input.a, vec4<u32>(14489u, 19204u, 2531u, u_input.d), true);
    var var_3 = Struct_3(func_2(arg_0.ywz, !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(474f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f), var_0.x)), (vec3<i32>(var_1.x, var_1.x, var_1.x) >> (arg_0.wzz % vec3<u32>(32u))) << (vec3<u32>(arg_0.x, var_2.x, max(4294967295u, u_input.c.x)) % vec3<u32>(32u))).c.c.c, func_2(u_input.a.yww, !vec3<bool>(select(false, true, true), false, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-113f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_1.x, var_1.x), abs(var_1.x), var_1.x & var_1.x), -(~vec3<i32>(-1i, var_1.x, var_1.x)), -(~vec3<i32>(var_1.x, var_1.x, var_1.x)))).c.c, vec2<bool>(func_2(select(~vec3<u32>(var_2.x, var_2.x, var_2.x), _wgslsmith_clamp_vec3_u32(var_2.xwx, vec3<u32>(var_2.x, arg_0.x, arg_0.x), var_2.xyw), vec3<bool>(true, true, true)), func_2(~arg_0.wwx, vec3<bool>(true, true, true), vec2<f32>(-743f, 1000f), firstTrailingBit(vec3<i32>(-925i, var_1.x, 58333i))).c.d.yxz, var_0.xy, vec3<i32>(1i, var_1.x ^ var_1.x, var_1.x)).a.d.x, any(vec2<bool>(select(false, false, false), false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 1738f, -1726f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, var_0.x, 570f, var_0.x) - vec4<f32>(1000f, var_0.x, 227f, var_0.x)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    var var_4 = arg_0.x;
    return ~(~var_2.yz);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: bool) -> Struct_4 {
    let var_0 = func_2(abs(~(~vec3<u32>(arg_2.x, 6486u, arg_2.x)) | vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), u_input.a.xxy), 84361u)), select(!select(!vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, arg_3)), arg_2.x >= 15698u), vec3<bool>(all(vec4<bool>(false, arg_3, arg_0, false)), arg_2.x == countOneBits(u_input.b.x), all(func_2(u_input.a.zzz, vec3<bool>(true, arg_0, arg_0), vec2<f32>(-886f, 275f), vec3<i32>(-74522i, -1i, 9121i)).a.d)), select(vec3<bool>(arg_2.x > 93914u, true, arg_0), select(select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_3)), func_2(vec3<u32>(arg_2.x, 1u, arg_1.x), vec3<bool>(true, false, arg_0), vec2<f32>(-438f, -1070f), vec3<i32>(38963i, 0i, -36499i)).c.d.wzx, !vec3<bool>(false, false, arg_3)), vec3<bool>(true, any(vec2<bool>(false, true)), false != arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 505f) - vec2<f32>(-940f, 1737f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2174f, -797f))))))), max(~vec3<i32>(-2147483647i, 2147483647i, 0i), -_wgslsmith_div_vec3_i32(vec3<i32>(18068i, -2147483647i, 61528i), vec3<i32>(5869i, 2147483647i, 13636i)))).c.c;
    let var_1 = select(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-18755i, -17757i))), _wgslsmith_mult_vec2_i32(vec2<i32>(-31424i, -23013i) << (u_input.c.zx % vec2<u32>(32u)), vec2<i32>(0i, 2147483647i))), abs(_wgslsmith_add_i32(-20107i, ~(-51977i))), !func_2(vec3<u32>(arg_1.x, 29572u, 0u), !vec3<bool>(false, arg_3, true), var_0.a.c, abs(vec3<i32>(-2147483647i, 1i, -1563i))).c.d.x) < 1i;
    var var_2 = -_wgslsmith_mult_i32(-1i, 2147483647i);
    var_2 = min(_wgslsmith_mult_i32(45608i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(-4551i, -10746i), vec2<i32>(9115i, -21885i)), -21990i << (var_0.a.a % 32u)), _wgslsmith_sub_i32(1i, ~(-(i32(-1i) * -21611i))));
    var_2 = -62195i;
    return Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.c.x)), _wgslsmith_f_op_f32(trunc(-1000f)), -122f))))), abs(4294967295u), var_0, !vec4<bool>(true, true, arg_3, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(false, false)), false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), u_input.c.zx, func_1(_wgslsmith_sub_vec4_u32(~u_input.a, u_input.a)) | abs(~u_input.a.wz), (~min(u_input.d, u_input.b.x) ^ (u_input.a.x | (6795u >> (u_input.c.x % 32u)))) != func_3(~min(vec3<u32>(u_input.a.x, 16983u, u_input.a.x), vec3<u32>(u_input.b.x, 0u, 0u)), func_2(~u_input.a.xyz, vec3<bool>(true, true, true), vec2<f32>(271f, -1000f), vec3<i32>(-2147483647i, -1i, 2147483647i)).c.d.wyz, Struct_2(Struct_1(u_input.d, vec2<bool>(false, true), vec2<f32>(1431f, 339f)), Struct_1(u_input.d, vec2<bool>(false, false), vec2<f32>(-1481f, 580f)), func_2(vec3<u32>(u_input.d, u_input.d, 51484u), vec3<bool>(true, true, false), vec2<f32>(116f, 443f), vec3<i32>(-1i, 0i, 45365i)).a.c.c), u_input.a.x <= _wgslsmith_clamp_u32(u_input.d, 4294967295u, u_input.a.x)));
    let var_1 = Struct_5(Struct_4(var_0.a, u_input.b.x, func_2(~vec3<u32>(var_0.b, 48169u, u_input.d), !(!var_0.d.zzx), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.a.c.x, -525f)), _wgslsmith_f_op_f32(var_0.c.a.c.x - var_0.c.a.c.x)), -reverseBits(vec3<i32>(-1i, -26948i, 19342i))).a.c, vec4<bool>(4294967295u >= (var_0.c.c.a >> (921u % 32u)), select(any(var_0.d.wyx), true, any(var_0.d.yx)), any(vec4<bool>(false, false, var_0.d.x, var_0.d.x)) | !var_0.c.a.b.x, true)), var_0.a.zy, var_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -695f, var_0.a.x, -1287f) + vec4<f32>(1028f, -191f, 1003f, -1270f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.c.x, var_0.c.b.c.x, -629f, var_0.c.a.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1736f, var_0.a.x, -2637f) * vec4<f32>(-478f, 1004f, -1227f, var_0.c.b.c.x))))))), var_0.c.c);
    var var_2 = Struct_2(var_1.c.c.a, var_1.a.c.a, func_5(!(_wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-var_0.c.a.c.x)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_1.c.b, var_0.c.b.a)), u_input.a.yw), u_input.b), _wgslsmith_mult_vec2_u32(~min(vec2<u32>(var_0.c.b.a, var_0.b), u_input.a.yw), vec2<u32>(u_input.d, 1u)), select(false, false, !(false || var_1.c.d.x))).c.c);
    let var_3 = func_2(vec3<u32>(19709u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, var_0.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), vec3<u32>(18659u, 4294967295u, 37837u) ^ u_input.a.zzx), ~(~41940u)), ~max(1u, max(var_2.a.a, 69379u))), !vec3<bool>(all(var_0.d.yxz) != var_0.d.x, false, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, 1187f)))))), _wgslsmith_add_vec3_i32(vec3<i32>(~1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, -1950i), 1i, 1i), max(~2147483647i, abs(-14688i))), reverseBits(vec3<i32>(2147483647i, firstLeadingBit(25335i), 0i)))).c.c.b.b;
    let var_4 = var_1;
    let var_5 = _wgslsmith_mod_vec4_i32(-select(~(~vec4<i32>(-58734i, -2147483647i, 0i, -2147483647i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 1i, 34199i, -2147483647i)), -vec4<i32>(2147483647i, 1i, 15780i, -48818i)), true), firstTrailingBit(vec4<i32>(~1i, i32(-1i) * -1i, min(-11910i << (var_0.c.a.a % 32u), 1i), -2147483647i)));
    let var_6 = 21278i;
    let var_7 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.c.c) - vec2<f32>(func_5(!var_0.c.c.b.x, func_1(vec4<u32>(4294967295u, 0u, var_0.b, 50429u)), vec2<u32>(var_4.c.c.a.a, var_2.c.a), false).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.c.x), _wgslsmith_f_op_f32(888f - -1261f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(var_2.a.c.x, 1000f, var_1.a.c.c.b.x)), -342f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-236f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.c.x, var_0.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, var_7.x, true))) - 984f)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.d * var_1.d) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1490f), _wgslsmith_f_op_f32(floor(var_4.d.x)), _wgslsmith_f_op_f32(-var_7.x), -1208f)))));
}

