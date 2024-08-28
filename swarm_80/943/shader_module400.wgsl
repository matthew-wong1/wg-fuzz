struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32> = vec4<f32>(311f, -488f, -862f, -2296f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = u_input.a;
    var var_0 = global1.x;
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u << (u_input.b.x % 32u), u_input.b.x, 1u) << (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(1u, arg_0, arg_0), vec3<u32>(u_input.b.x, arg_0, 58274u), vec3<bool>(false, false, true)), min(vec3<u32>(u_input.b.x, 57739u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, arg_0), vec3<u32>(u_input.b.x, u_input.b.x, 72296u), vec3<u32>(64061u, arg_0, 4294967295u)))) % vec3<u32>(32u)), vec3<u32>(0u, ~arg_0, arg_0));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1009f))))));
    var var_3 = u_input.a;
    return ~(-5016i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.a.d;
    var var_1 = 786f;
    let var_2 = arg_0.a.a;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-324f * arg_0.b.x), -405f))), 582f, arg_0.b.x, arg_0.b.x));
    var var_3 = vec3<bool>(true, min(80070i, 0i) <= (firstLeadingBit(func_3(u_input.b.x)) | -2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2040f)))) != arg_2);
    return Struct_1(arg_1.c.a, ~41370u >> (_wgslsmith_sub_u32(var_2.b, ~abs(var_2.b)) % 32u), vec3<i32>(1i, _wgslsmith_clamp_i32(firstTrailingBit(-16074i), -(-1i | var_2.a), _wgslsmith_dot_vec3_i32(abs(arg_0.c.c), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 66336i, 44685i), vec3<i32>(var_2.a, var_2.a, -43273i)))), -max(abs(u_input.a), 0i >> (1u % 32u))), var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, _wgslsmith_f_op_f32(step(1449f, _wgslsmith_f_op_f32(arg_3 * global1.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.b);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(ceil(183f)), 1979f), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 803f), _wgslsmith_f_op_f32(-1228f + global1.x), 209f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -1639f, var_0.x, arg_3), vec4<f32>(global1.x, arg_2, arg_1.b.x, -1006f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(769f, -1221f, 742f, 404f), vec4<f32>(320f, -1238f, -617f, -321f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(abs(arg_3))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, 655f, -149f) * vec4<f32>(-1606f, global1.x, arg_3, 503f))))));
    global0 = -1i;
    var var_1 = arg_0.b;
    return ~(arg_0.e.c.x << (4294967295u % 32u));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = u_input.a;
    global0 = var_0 & _wgslsmith_clamp_i32(2147483647i, func_4(Struct_2(Struct_1(arg_3, u_input.b.x, arg_2.e.c, false), arg_2.e, Struct_1(var_0, u_input.b.x, arg_2.a.c, arg_1.x), u_input.b, arg_2.b), Struct_3(arg_2, global1.wx, func_2(Struct_3(arg_2, global1.yx, arg_2.c), arg_2, -1000f, Struct_2(Struct_1(arg_3, arg_2.d.x, arg_2.e.c, arg_1.x), arg_2.b, Struct_1(arg_3, arg_2.d.x, vec3<i32>(u_input.a, arg_3, -62233i), arg_0), u_input.b, Struct_1(arg_3, u_input.b.x, vec3<i32>(-1i, arg_3, arg_2.a.c.x), false)))), 1584f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -537f)))), u_input.a);
    var var_1 = arg_2.b;
    var var_2 = _wgslsmith_div_vec2_i32(-var_1.c.xz, -vec2<i32>(0i, -32024i));
    var var_3 = ~abs(vec3<u32>(~0u, 19035u, var_1.b));
    return Struct_3(Struct_2(Struct_1(u_input.a, _wgslsmith_mult_u32(countOneBits(u_input.b.x), var_3.x), vec3<i32>(_wgslsmith_clamp_i32(var_2.x, 2147483647i, 2147483647i), -1i >> (u_input.b.x % 32u), firstTrailingBit(var_2.x)), true), arg_2.a, func_2(Struct_3(Struct_2(arg_2.b, arg_2.a, arg_2.c, var_3.xx, Struct_1(7066i, arg_2.b.b, arg_2.e.c, true)), _wgslsmith_div_vec2_f32(global1.zy, vec2<f32>(226f, 267f)), Struct_1(arg_2.b.c.x, u_input.b.x, vec3<i32>(1i, -16330i, 26217i), true)), Struct_2(func_2(Struct_3(Struct_2(Struct_1(-22376i, 6775u, var_1.c, var_1.d), Struct_1(u_input.a, 58351u, var_1.c, false), arg_2.b, var_3.xy, arg_2.a), vec2<f32>(global1.x, 1235f), arg_2.e), arg_2, global1.x, Struct_2(Struct_1(-2588i, 1u, var_1.c, true), Struct_1(1i, 35377u, arg_2.a.c, arg_0), Struct_1(var_1.c.x, u_input.b.x, vec3<i32>(var_2.x, u_input.a, u_input.a), false), arg_2.d, Struct_1(-1562i, 4294967295u, var_1.c, var_1.d))), Struct_1(arg_2.c.c.x, u_input.b.x, vec3<i32>(0i, 2147483647i, var_1.a), true), Struct_1(1i, 45541u, vec3<i32>(17781i, u_input.a, arg_2.b.c.x), true), firstTrailingBit(var_3.zy), Struct_1(u_input.a, 6363u, vec3<i32>(var_2.x, 14476i, u_input.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1766f, -804f)), Struct_2(func_2(Struct_3(Struct_2(Struct_1(5193i, 0u, vec3<i32>(var_1.a, -2147483647i, var_1.c.x), var_1.d), arg_2.e, arg_2.a, u_input.b, Struct_1(var_1.a, arg_2.d.x, vec3<i32>(39777i, var_0, 20262i), arg_2.e.d)), global1.wz, Struct_1(2706i, 4294967295u, arg_2.b.c, arg_0)), Struct_2(arg_2.c, Struct_1(-2147483647i, 4294967295u, arg_2.c.c, arg_1.x), Struct_1(var_1.c.x, u_input.b.x, vec3<i32>(var_2.x, 0i, 1i), false), vec2<u32>(25462u, arg_2.e.b), arg_2.b), 511f, Struct_2(Struct_1(1712i, 4294967295u, var_1.c, true), Struct_1(-30568i, 40149u, var_1.c, true), arg_2.a, u_input.b, arg_2.b)), arg_2.a, func_2(Struct_3(arg_2, vec2<f32>(global1.x, 1160f), Struct_1(-11084i, arg_2.b.b, arg_2.c.c, arg_2.a.d)), Struct_2(Struct_1(-50157i, 13839u, var_1.c, var_1.d), arg_2.e, arg_2.a, vec2<u32>(48699u, 0u), Struct_1(var_2.x, arg_2.e.b, vec3<i32>(var_1.c.x, -1i, arg_3), arg_1.x)), global1.x, Struct_2(arg_2.c, arg_2.c, Struct_1(var_0, var_1.b, vec3<i32>(var_1.a, 1i, 3331i), arg_0), arg_2.d, arg_2.e)), _wgslsmith_clamp_vec2_u32(vec2<u32>(52169u, 1u), arg_2.d, vec2<u32>(34496u, var_1.b)), func_2(Struct_3(arg_2, global1.xw, arg_2.b), Struct_2(Struct_1(2147483647i, 33340u, var_1.c, arg_2.c.d), Struct_1(var_2.x, 43871u, arg_2.b.c, arg_0), arg_2.c, vec2<u32>(0u, 1532u), arg_2.a), 445f, arg_2))), var_3.yy & u_input.b, Struct_1(35583i, select(~4294967295u, u_input.b.x << (arg_2.e.b % 32u), any(arg_1.zy)), abs(arg_2.a.c), arg_1.x)), vec2<f32>(-1106f, global1.x), func_2(Struct_3(Struct_2(Struct_1(-1i, var_1.b, vec3<i32>(-1i, u_input.a, arg_3), true), arg_2.b, Struct_1(-9949i, var_3.x, vec3<i32>(arg_3, 58859i, -2147483647i), false), var_3.yx, Struct_1(1i, 54944u, vec3<i32>(-21201i, -975i, arg_3), arg_0)), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), arg_2.b), Struct_2(arg_2.a, Struct_1(var_1.a, var_1.b, ~vec3<i32>(13825i, 1i, -25604i), arg_0), func_2(Struct_3(Struct_2(arg_2.b, Struct_1(arg_3, u_input.b.x, vec3<i32>(30305i, u_input.a, 2147483647i), arg_0), arg_2.c, vec2<u32>(1u, 0u), Struct_1(-1i, 1u, var_1.c, arg_1.x)), global1.wz, arg_2.a), Struct_2(Struct_1(57863i, 1u, var_1.c, arg_0), arg_2.b, arg_2.b, vec2<u32>(1u, 1u), arg_2.c), _wgslsmith_f_op_f32(-944f + 842f), arg_2), ~(~var_3.yx), arg_2.b), _wgslsmith_f_op_f32(-global1.x), arg_2));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, -431f, arg_0, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, 830f, global1.x, 566f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, arg_3.b.x, arg_3.b.x, arg_3.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(102f, 1000f)), _wgslsmith_f_op_f32(-328f * arg_3.b.x), arg_3.b.x, _wgslsmith_f_op_f32(arg_3.b.x * global1.x)))));
    var var_0 = Struct_3(Struct_2(Struct_1(-arg_3.c.a << ((u_input.b.x >> (30899u % 32u)) % 32u), ~u_input.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(29560i, u_input.a, u_input.a), arg_3.a.a.c) | arg_3.a.e.c, true), func_1(true, !(!vec4<bool>(arg_3.a.a.d, true, arg_3.c.d, arg_3.a.c.d)), Struct_2(arg_3.a.e, func_1(arg_3.a.c.d, vec4<bool>(true, arg_3.c.d, true, true), arg_3.a, arg_3.c.a).c, Struct_1(1i, 52047u, vec3<i32>(arg_3.a.a.c.x, u_input.a, -26587i), arg_3.a.e.d), u_input.b, arg_3.c), 2147483647i).c, Struct_1(select(1i, -u_input.a, true), 16212u | arg_3.a.d.x, reverseBits(vec3<i32>(-1i, arg_1.x, -63171i)), false), ~vec2<u32>(24265u, 0u) << ((_wgslsmith_mod_vec2_u32(u_input.b, arg_3.a.d) | ~arg_3.a.d) % vec2<u32>(32u)), Struct_1(u_input.a, arg_2, func_2(func_1(arg_3.a.a.d, vec4<bool>(arg_3.a.c.d, arg_3.a.c.d, true, arg_3.a.a.d), arg_3.a, 5067i), arg_3.a, _wgslsmith_f_op_f32(min(global1.x, global1.x)), func_1(arg_3.a.c.d, vec4<bool>(arg_3.a.e.d, arg_3.a.c.d, true, true), Struct_2(arg_3.a.b, Struct_1(u_input.a, arg_2, arg_3.c.c, arg_3.c.d), Struct_1(7515i, 1u, arg_3.a.b.c, arg_3.c.d), vec2<u32>(u_input.b.x, arg_3.a.d.x), arg_3.c), arg_3.a.b.c.x).a).c, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -398f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 877f)), _wgslsmith_f_op_vec2_f32(global1.yy * vec2<f32>(arg_3.b.x, arg_0)))))), Struct_1(40895i, ~func_1(arg_3.a.c.d, vec4<bool>(false, arg_3.c.d, false, arg_3.a.a.d), arg_3.a, arg_1.x).c.b, _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, arg_3.c.c.x, arg_1.x), arg_3.a.e.c, arg_3.a.a.c ^ vec3<i32>(1i, arg_1.x, 33839i)) >> (vec3<u32>(arg_3.a.a.b, ~u_input.b.x, arg_2) % vec3<u32>(32u)), any(vec3<bool>(true, true, arg_3.c.d))));
    var var_1 = !select(vec3<bool>(arg_3.c.d, func_2(Struct_3(Struct_2(arg_3.c, Struct_1(u_input.a, var_0.a.d.x, arg_3.c.c, var_0.c.d), var_0.a.a, vec2<u32>(arg_3.c.b, 1u), Struct_1(var_0.c.a, 1u, var_0.a.c.c, false)), global1.wy, var_0.a.c), func_1(var_0.c.d, vec4<bool>(arg_3.a.c.d, arg_3.a.e.d, false, true), Struct_2(arg_3.a.a, var_0.c, arg_3.c, vec2<u32>(var_0.c.b, var_0.c.b), arg_3.c), u_input.a).a, _wgslsmith_f_op_f32(exp2(arg_3.b.x)), Struct_2(Struct_1(-1i, 4294967295u, arg_3.c.c, false), Struct_1(var_0.a.a.a, arg_3.c.b, vec3<i32>(67013i, arg_3.a.c.a, arg_1.x), arg_3.a.b.d), Struct_1(-27334i, u_input.b.x, vec3<i32>(arg_1.x, -8771i, arg_1.x), true), u_input.b, arg_3.a.e)).d, true), select(vec3<bool>(!arg_3.a.e.d, arg_3.c.d, var_0.c.d != var_0.c.d), select(select(vec3<bool>(false, var_0.c.d, arg_3.a.c.d), vec3<bool>(arg_3.c.d, true, true), vec3<bool>(true, var_0.a.a.d, var_0.c.d)), select(vec3<bool>(false, true, var_0.c.d), vec3<bool>(false, arg_3.a.a.d, arg_3.a.e.d), arg_3.a.e.d), true), select(select(vec3<bool>(var_0.a.b.d, false, arg_3.a.b.d), vec3<bool>(var_0.c.d, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, arg_3.a.b.d), vec3<bool>(true, false, false), vec3<bool>(true, false, var_0.c.d)), true)), arg_3.a.e.d);
    global0 = var_0.a.e.a;
    var var_2 = func_1(true, !vec4<bool>(func_2(arg_3, func_1(false, vec4<bool>(var_0.c.d, false, var_1.x, var_1.x), Struct_2(var_0.a.c, var_0.a.b, arg_3.a.a, u_input.b, var_0.a.e), -4658i).a, _wgslsmith_f_op_f32(-933f + -220f), arg_3.a).d, any(vec3<bool>(true, true, false)), !(0u >= var_0.c.b), !arg_3.a.b.d || all(var_1.xz)), var_0.a, _wgslsmith_sub_i32(firstLeadingBit(~65795i), -(i32(-1i) * -1i)));
    return func_1(!all(!select(vec4<bool>(false, false, true, var_2.a.a.d), vec4<bool>(var_1.x, var_2.a.b.d, false, true), false)), vec4<bool>(true, true, true, arg_3.a.c.d | !(19466u >= arg_2)), Struct_2(func_1((arg_3.a.b.b ^ 7001u) == abs(arg_3.c.b), select(select(vec4<bool>(false, var_2.c.d, false, true), vec4<bool>(arg_3.a.b.d, false, true, var_1.x), false), vec4<bool>(true, var_1.x, false, false), arg_2 == var_2.a.e.b), Struct_2(func_1(false, vec4<bool>(var_2.c.d, true, var_2.c.d, false), Struct_2(Struct_1(arg_3.a.c.c.x, var_0.c.b, var_0.a.a.c, false), Struct_1(2147483647i, arg_2, var_2.c.c, false), Struct_1(u_input.a, 4294967295u, vec3<i32>(var_2.c.c.x, -1i, arg_3.c.a), var_0.a.a.d), var_2.a.d, var_2.a.c), 22676i).a.b, Struct_1(u_input.a, arg_3.a.d.x, vec3<i32>(0i, arg_1.x, arg_1.x), false), func_1(var_0.a.b.d, vec4<bool>(false, arg_3.c.d, false, false), Struct_2(Struct_1(-1i, 0u, vec3<i32>(var_2.c.a, arg_3.a.e.a, u_input.a), var_1.x), Struct_1(arg_1.x, 4294967295u, vec3<i32>(30602i, 2147483647i, -2147483647i), false), var_0.a.c, vec2<u32>(arg_2, u_input.b.x), var_2.c), 2147483647i).c, max(vec2<u32>(arg_2, u_input.b.x), arg_3.a.d), var_2.a.a), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, -22656i, -3717i), 2147483647i)).c, func_2(Struct_3(Struct_2(Struct_1(2147483647i, 0u, arg_3.c.c, var_1.x), Struct_1(var_0.a.e.c.x, u_input.b.x, vec3<i32>(var_2.c.a, -51716i, arg_1.x), arg_3.a.c.d), var_2.c, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(73525i, arg_3.c.b, vec3<i32>(2147483647i, 24454i, 8354i), true)), _wgslsmith_div_vec2_f32(arg_3.b, vec2<f32>(arg_0, -240f)), Struct_1(var_2.c.c.x, arg_3.c.b, var_2.c.c, true)), Struct_2(Struct_1(var_2.a.e.a, 1u, arg_3.a.e.c, true), var_2.a.c, var_2.c, select(arg_3.a.d, var_0.a.d, vec2<bool>(var_1.x, arg_3.c.d)), var_2.a.c), _wgslsmith_f_op_f32(select(-177f, -526f, true)), Struct_2(Struct_1(arg_1.x, 1u, vec3<i32>(-1i, var_2.a.a.c.x, -22277i), false), Struct_1(var_0.c.a, arg_2, var_0.a.b.c, arg_3.c.d), func_1(var_2.a.a.d, vec4<bool>(false, true, var_1.x, var_2.c.d), var_2.a, -1i).c, ~vec2<u32>(var_2.c.b, 0u), Struct_1(-14981i, var_2.c.b, arg_3.a.b.c, var_2.c.d))), arg_3.a.c, (var_0.a.d & (vec2<u32>(u_input.b.x, arg_3.c.b) >> (vec2<u32>(arg_3.c.b, var_2.a.b.b) % vec2<u32>(32u)))) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3.a.e.b, 37688u), ~vec2<u32>(25144u, 18077u)) % vec2<u32>(32u)), func_1(!(var_2.c.c.x > -7856i), select(select(vec4<bool>(true, false, arg_3.c.d, true), vec4<bool>(false, var_0.c.d, var_0.a.b.d, true), var_0.c.d), !vec4<bool>(true, var_0.a.e.d, var_1.x, var_1.x), !vec4<bool>(true, var_2.a.e.d, false, var_0.c.d)), Struct_2(func_2(Struct_3(Struct_2(var_0.a.c, var_0.a.c, arg_3.a.c, var_2.a.d, Struct_1(-18366i, u_input.b.x, arg_3.c.c, arg_3.c.d)), global1.xz, var_2.a.a), arg_3.a, var_2.b.x, var_0.a), arg_3.a.b, var_2.c, var_2.a.d, var_0.c), arg_1.x).c), abs(u_input.a)).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global0 = (_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.b.c, arg_1.a.c), abs(arg_2.c.c | arg_2.c.c)) << (~arg_2.a.d.x % 32u)) | -arg_2.a.a.a;
    var var_0 = Struct_3(arg_2.a, _wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xx)))), arg_0.e);
    var var_1 = _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1206f)))));
    var var_2 = arg_1.e.c.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), -349f), global1.x, var_0.c.d)))), -323f);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~2147483647i), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 17402u, u_input.b.x) & ~vec4<u32>(49677u, 1u, 1u, u_input.b.x), abs(select(vec4<u32>(46132u, 77113u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 37288u, u_input.b.x, u_input.b.x), true))), 0u), vec3<i32>(0i, -11364i, (~u_input.a >> (4294967295u % 32u)) | _wgslsmith_mult_i32(-u_input.a, -26905i)), any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    global0 = firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a));
    var var_1 = u_input.a;
    var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, var_0.c.x, countOneBits(u_input.a)), firstLeadingBit(vec4<i32>(1i, u_input.a, -9093i, -20812i) & vec4<i32>(var_0.a, 4421i, -1i, 33831i)) & vec4<i32>(i32(-1i) * -1i, 44434i, var_0.c.x, -15355i));
    var var_2 = Struct_2(func_6(Struct_2(var_0, Struct_1(-1i, 1u, vec3<i32>(0i, var_0.c.x, -643i), any(vec4<bool>(false, true, var_0.d, var_0.d))), Struct_1(0i, var_0.b, vec3<i32>(u_input.a, var_0.c.x, 2147483647i) >> (vec3<u32>(u_input.b.x, var_0.b, u_input.b.x) % vec3<u32>(32u)), var_0.d), u_input.b, Struct_1(~u_input.a, 16637u, ~vec3<i32>(16215i, -2147483647i, u_input.a), true)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(global1.x * -1028f)), vec2<i32>(i32(-1i) * -2147483647i, 12368i), _wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, 4294967295u)), func_1(all(vec3<bool>(true, var_0.d, var_0.d)), vec4<bool>(false, var_0.d, false, var_0.d), Struct_2(Struct_1(u_input.a, 20121u, var_0.c, var_0.d), var_0, var_0, u_input.b, Struct_1(17285i, u_input.b.x, var_0.c, true)), var_0.c.x)), func_1(true, vec4<bool>(!var_0.d, false, true, var_0.d), func_1(false, vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), func_1(false, vec4<bool>(false, var_0.d, var_0.d, var_0.d), Struct_2(var_0, Struct_1(var_0.c.x, 1u, var_0.c, var_0.d), Struct_1(-1i, 1u, var_0.c, var_0.d), vec2<u32>(73581u, 17183u), var_0), -17998i).a, _wgslsmith_div_i32(u_input.a, var_0.c.x)).a, u_input.a)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -992f)))), vec2<i32>(var_0.a, _wgslsmith_div_i32(1i, select(1i, var_0.c.x, var_0.d))), 15998u, func_1(any(vec2<bool>(var_0.d, false)), select(select(vec4<bool>(false, var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d, true, true, false), true), !vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), select(vec4<bool>(var_0.d, false, true, var_0.d), vec4<bool>(false, false, var_0.d, var_0.d), true)), func_5(_wgslsmith_f_op_f32(abs(global1.x)), ~var_0.c.zy, ~15029u, func_1(var_0.d, vec4<bool>(var_0.d, var_0.d, false, false), Struct_2(var_0, Struct_1(14336i, 41400u, var_0.c, false), Struct_1(1i, u_input.b.x, var_0.c, false), u_input.b, var_0), 33023i)), -(i32(-1i) * -29101i))).a, var_0, ~vec2<u32>(var_0.b, firstLeadingBit(0u) & u_input.b.x), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_5(_wgslsmith_f_op_f32(global1.x - global1.x), ~var_0.c.yy, _wgslsmith_clamp_u32(0u, var_0.b, u_input.b.x), Struct_3(Struct_2(Struct_1(2147483647i, 0u, vec3<i32>(var_0.c.x, var_2.b.a, -16994i), var_2.b.d), Struct_1(u_input.a, 1u, var_2.e.c, false), var_0, u_input.b, var_2.c), vec2<f32>(1379f, global1.x), Struct_1(var_2.c.c.x, var_2.e.b, vec3<i32>(2147483647i, var_0.c.x, u_input.a), var_0.d))).d.x), var_0.c.yy);
}

