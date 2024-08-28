struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec3_i32(-(u_input.a.xxx >> (~(~vec3<u32>(16898u, 57134u, 70576u)) % vec3<u32>(32u))), -select(countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(2147483647i ^ global0.x, global0.x, i32(-1i) * -2147483647i), arg_1));
    global0 = countOneBits(u_input.a.xyw);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -858f);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(714f, _wgslsmith_f_op_f32(247f * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1718f, 1000f), vec2<f32>(-1532f, -407f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1196f, -1000f))) * vec2<f32>(-512f, -757f))))), Struct_1(!select(arg_0, vec4<bool>(true, false, arg_0.x, arg_0.x), arg_1), arg_0.x, arg_1), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(418f, -1306f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1971f))))), _wgslsmith_f_op_f32(-457f * -1189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(216f))))));
    var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - -1228f), _wgslsmith_f_op_f32(sign(-885f))), var_2.b, var_2.c);
    return vec4<f32>(_wgslsmith_f_op_f32(-524f * var_2.a.x), var_2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-778f + -1867f), -120f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2049f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(998f * var_2.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3) -> bool {
    global0 = select(u_input.a.wzx, -(vec3<i32>(i32(-1i) * -74114i, _wgslsmith_mult_i32(global0.x, global0.x), global0.x) | reverseBits(vec3<i32>(0i, 10405i, global0.x))), false);
    global0 = -vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, global0.x, global0.x, -1i), ~u_input.a), ~u_input.a), -1i, -(~_wgslsmith_div_i32(u_input.a.x, -53194i)));
    var var_0 = ~vec3<u32>(~1u, 6502u, ~49463u);
    var_0 = max(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_0.x, 0u) << (abs(vec3<u32>(4294967295u, 18939u, 1u)) % vec3<u32>(32u)), vec3<u32>(31371u, countOneBits(var_0.x), _wgslsmith_mod_u32(1u, var_0.x))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.x), ~var_0.zy), _wgslsmith_dot_vec2_u32(abs(var_0.xz), ~vec2<u32>(var_0.x, var_0.x))), max(0u, 53326u), abs((var_0.x & var_0.x) & 9299u)));
    var_0 = reverseBits(vec3<u32>(var_0.x, ~(~var_0.x), ~var_0.x));
    return arg_2.a.a.x == (arg_1.x != -399f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = all(select(!arg_0.a.zwx, arg_3.b.b.a.zxy, func_4(Struct_1(arg_0.a, true, true), _wgslsmith_f_op_vec4_f32(func_3(select(arg_3.a.a, arg_3.a.a, arg_1.a), false)), arg_3)));
    var var_1 = _wgslsmith_dot_vec2_i32(global0.zx << (_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), u_input.a.xw);
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1190f + 1000f), arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + -1000f), -908f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_div_f32(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-349f, 178f))), vec2<f32>(-1767f, arg_1)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -694f), -1811f)))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, arg_0.c, arg_0.b), !arg_0.a.x)).wwz) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_1, 384f) - vec3<f32>(134f, arg_1, 358f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))))));
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(global0.xz, -vec2<i32>(0i, global0.x)), vec2<i32>(59503i, -2147483647i));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.xx) + vec2<f32>(-299f, 1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), arg_1), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 318f), _wgslsmith_f_op_vec2_f32(-var_1.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 1114f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
    return Struct_1(select(vec4<bool>(var_1.b.a.x, arg_0.b, !arg_0.a.x, true), func_2(var_1.b, var_1.b, -601f, Struct_3(var_1.b, var_1)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-337f + var_1.a.x)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.c.x))))), var_1.b.b, true);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(~12386i), 1i, u_input.a.x), ~vec3<i32>(reverseBits(global0.x), -global0.x, min(u_input.a.x, u_input.a.x)) << (vec3<u32>(~abs(arg_0.x), 1u, ~(1u | arg_0.x)) % vec3<u32>(32u)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, 402f))))), Struct_1(vec4<bool>(false, true, arg_1.a.x, arg_1.b), !(!arg_1.b && !arg_1.a.x), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-960f, _wgslsmith_f_op_f32(f32(-1f) * -498f), 977f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872f - -460f) + _wgslsmith_f_op_f32(658f - -1036f)), _wgslsmith_f_op_f32(trunc(221f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1581f, -689f)), _wgslsmith_f_op_f32(-437f - 684f)))));
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.x, abs(~48668u), 13547u | arg_0.x, 55002u & arg_0.x), ~vec4<u32>(arg_0.x, ~arg_0.x, arg_0.x & 30545u, arg_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(37764u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, 28863u) >> (vec4<u32>(14925u, 23249u, 1u, arg_0.x) % vec4<u32>(32u))) ^ (select(vec4<u32>(arg_0.x, 40908u, 60111u, arg_0.x), vec4<u32>(1u, 33570u, 33286u, arg_0.x), true) << (vec4<u32>(53799u, 27175u, arg_0.x, arg_0.x) % vec4<u32>(32u)))), vec4<u32>(max(arg_0.x, ~max(arg_0.x, 4294967295u)), 24014u, ~(~_wgslsmith_div_u32(arg_0.x, 0u)), arg_0.x));
    global0 = u_input.a.yxx;
    let var_2 = !var_0.b.a.x;
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    global0 = u_input.a.yzz;
    let var_0 = Struct_2(vec2<f32>(-1371f, -1629f), func_6(vec2<u32>(72114u, ~1u) >> (firstLeadingBit(~arg_0.zz) % vec2<u32>(32u)), func_5(Struct_1(func_2(Struct_1(vec4<bool>(false, false, false, false), true, arg_1.a.a.x), Struct_1(vec4<bool>(true, arg_1.b.b.b, true, arg_1.b.b.c), false, arg_1.b.b.a.x), arg_1.b.c.x, Struct_3(Struct_1(vec4<bool>(arg_1.b.b.b, arg_1.b.b.c, arg_1.a.b, true), true, false), Struct_2(vec2<f32>(-209f, arg_1.b.c.x), Struct_1(arg_1.a.a, arg_1.a.a.x, true), vec3<f32>(arg_1.b.a.x, -279f, arg_1.b.c.x)))), func_4(Struct_1(arg_1.a.a, arg_1.b.b.c, arg_1.a.b), vec4<f32>(arg_1.b.c.x, 691f, arg_1.b.c.x, arg_1.b.a.x), arg_1), func_2(Struct_1(vec4<bool>(true, arg_1.a.b, false, arg_1.b.b.b), arg_1.a.c, arg_1.a.c), Struct_1(vec4<bool>(arg_1.b.b.c, true, false, arg_1.a.a.x), arg_1.b.b.b, true), arg_1.b.a.x, Struct_3(arg_1.b.b, arg_1.b)).x), arg_1.b.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-610f, _wgslsmith_f_op_f32(-arg_1.b.a.x), arg_1.b.a.x), arg_1.b.c)))));
    var var_1 = var_0;
    var var_2 = 112f;
    let var_3 = func_6(~(~countOneBits(vec2<u32>(arg_0.x, 4294967295u))) & ~(~(arg_0.xz ^ vec2<u32>(37544u, 46892u))), Struct_1(var_0.b.a, true, true));
    return func_6(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.xz) & _wgslsmith_clamp_u32(69602u, arg_2, 45236u), 12871u), abs(vec2<u32>(arg_0.x, arg_0.x))), func_5(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-350f, 304f)))));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> bool {
    var var_0 = u_input.a.x;
    var_0 = reverseBits(_wgslsmith_clamp_i32(-1i, min(2147483647i, global0.x) >> (14536u % 32u), global0.x) ^ u_input.a.x);
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(~(~_wgslsmith_mult_u32(1u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u)))), firstTrailingBit(4294967295u) | _wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~25011u), 25931u), ~4294967295u, 1u);
    let var_2 = func_5(Struct_1(func_2(arg_0, Struct_1(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), arg_0.a.x, var_1.x == var_1.x), _wgslsmith_f_op_f32(-832f + 190f), Struct_3(func_6(var_1.xz, Struct_1(arg_0.a, arg_0.b, arg_0.a.x)), Struct_2(vec2<f32>(arg_2, arg_2), Struct_1(arg_0.a, arg_0.b, false), vec3<f32>(1000f, -882f, -982f)))), arg_0.b, arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)) + _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, arg_0.c, arg_0.b), false)).x), -442f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 449f, -917f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1654f, 1000f, 434f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(287f, 745f, -1106f), vec3<f32>(1000f, arg_2, arg_2)))))));
    return any(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_7(func_1(vec4<u32>(49652u, 4294967295u, 38992u, 24864u), Struct_3(Struct_1(vec4<bool>(false, true, true, true), true, false), Struct_2(vec2<f32>(-1283f, 799f), Struct_1(vec4<bool>(true, false, true, false), true, true), vec3<f32>(-3178f, 481f, -143f))), 43022u), -vec4<i32>(u_input.a.x, 2147483647i, global0.x, -1i), _wgslsmith_f_op_f32(round(-1000f))) & false) | !(true != all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -abs(-2147483647i)), _wgslsmith_sub_vec3_i32(select(firstLeadingBit(u_input.a.wwx), u_input.a.zxw, vec3<bool>(false, false, false)), reverseBits(u_input.a.wwz) ^ vec3<i32>(global0.x, global0.x, u_input.a.x))) << (reverseBits(firstLeadingBit(select(vec3<u32>(23964u, 74268u, 0u), ~vec3<u32>(40016u, 0u, 75206u), select(vec3<bool>(true, var_0, true), vec3<bool>(false, true, false), vec3<bool>(true, var_0, false))))) % vec3<u32>(32u));
    var var_1 = Struct_1(vec4<bool>(true || var_0, func_4(func_1(vec4<u32>(0u, 44034u, 0u, 0u), Struct_3(Struct_1(vec4<bool>(var_0, true, var_0, false), true, false), Struct_2(vec2<f32>(750f, -371f), Struct_1(vec4<bool>(var_0, true, var_0, true), var_0, var_0), vec3<f32>(-1000f, -2521f, -536f))), 71860u >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, -1019f, 989f, 1000f) + vec4<f32>(756f, 1153f, -190f, 873f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1608f, -591f, -593f, -198f)))), Struct_3(func_5(Struct_1(vec4<bool>(var_0, var_0, var_0, var_0), false, true), 909f), Struct_2(vec2<f32>(400f, -1041f), Struct_1(vec4<bool>(false, var_0, false, var_0), true, var_0), vec3<f32>(857f, 1064f, 102f)))), all(func_5(func_6(vec2<u32>(49691u, 1u), Struct_1(vec4<bool>(true, var_0, true, var_0), var_0, var_0)), _wgslsmith_f_op_f32(select(609f, 492f, var_0))).a.xxw), var_0), var_0, all(!select(func_1(vec4<u32>(4294967295u, 0u, 1u, 0u), Struct_3(Struct_1(vec4<bool>(var_0, false, var_0, false), false, var_0), Struct_2(vec2<f32>(-918f, 981f), Struct_1(vec4<bool>(var_0, var_0, var_0, var_0), var_0, var_0), vec3<f32>(1000f, -1000f, 1000f))), 5415u).a.zz, !vec2<bool>(false, var_0), func_2(Struct_1(vec4<bool>(true, true, var_0, true), true, true), Struct_1(vec4<bool>(var_0, var_0, false, var_0), var_0, false), -327f, Struct_3(Struct_1(vec4<bool>(false, var_0, var_0, true), var_0, false), Struct_2(vec2<f32>(-725f, 393f), Struct_1(vec4<bool>(var_0, var_0, false, true), var_0, var_0), vec3<f32>(-270f, -252f, 676f)))).ww)));
    global0 = vec3<i32>(1i, ~global0.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(min(-38653i >> (0u % 32u), -global0.x), ~_wgslsmith_div_i32(global0.x, 16906i)), 1i));
    global0 = _wgslsmith_clamp_vec3_i32(-u_input.a.xyz, u_input.a.wzw, _wgslsmith_mult_vec3_i32(u_input.a.yxx, _wgslsmith_mult_vec3_i32(u_input.a.ywz, u_input.a.xwz)));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yw);
}

