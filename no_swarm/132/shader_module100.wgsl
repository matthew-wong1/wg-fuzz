struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> bool {
    global0 = min(u_input.a.x, reverseBits(-9027i));
    var var_0 = (-41456i & arg_2.b) | arg_0.b;
    global0 = 1i;
    var_0 = 0i;
    global0 = u_input.c;
    return all(vec2<bool>(true, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_1.c;
    global0 = abs(~(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, -1i), u_input.a.xx) >> (~var_0.d % 32u)) << (~(~(~var_0.d)) % 32u));
    var var_1 = 10669u;
    let var_2 = _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_0.b, select(u_input.a, arg_1.e.b, arg_3.zww))), firstTrailingBit(arg_0.b));
    let var_3 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(f32(-1f) * -204f))), _wgslsmith_f_op_f32(arg_2 - -176f));
    return _wgslsmith_f_op_f32(sign(arg_1.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(true, arg_2.wzy, u_input.a, arg_0.e.d);
    global0 = ~(-(~arg_2.x)) ^ u_input.e;
    let var_1 = 1282f;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(func_3(arg_0, 1u, arg_0), var_0.c, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.e, var_0.c.x), var_0.b), var_0.d | var_0.d), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1063f, var_1)), arg_0.c.b.x, Struct_1(var_0.a, vec3<i32>(arg_0.e.b.x, arg_2.x, u_input.c), vec3<i32>(var_0.b.x, -5915i, var_0.b.x), arg_0.d.d), var_0, arg_0.c), -1320f, vec4<bool>(false, var_0.a, !var_0.a, var_0.a || var_0.a))), 1075f) + vec2<f32>(arg_0.a.x, _wgslsmith_div_f32(var_1, arg_3.x)));
    var_2 = arg_3.zz;
    return _wgslsmith_sub_u32(~_wgslsmith_div_u32(~12103u, 30222u), _wgslsmith_add_u32(52844u, var_0.d));
}

fn func_1() -> vec4<i32> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 72544u, 0u, 0u)), select(~vec4<u32>(1u, 1u, 34256u, 10407u), vec4<u32>(4294967295u, 5376u, 0u, 1597u), vec4<bool>(true, true, true, false))), vec4<u32>(1u, max(31370u, 4294967295u), _wgslsmith_add_u32(countOneBits(86107u), func_2(Struct_2(vec2<f32>(-289f, 617f), 0i, Struct_1(true, vec3<i32>(0i, 1935i, 1i), vec3<i32>(u_input.a.x, 8640i, 17949i), 1u), Struct_1(false, vec3<i32>(u_input.e, u_input.b.x, -25072i), vec3<i32>(-1i, -4193i, 987i), 0u), Struct_1(false, vec3<i32>(u_input.a.x, u_input.c, -2147483647i), vec3<i32>(-1i, u_input.b.x, 2147483647i), 32100u)), -393f, vec4<i32>(u_input.c, u_input.b.x, u_input.d, u_input.a.x), vec3<f32>(-1561f, -1045f, 441f))), 0u), vec4<u32>(1u, 1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(65417u, 1u, 53838u), vec3<u32>(4294967295u, 1u, 0u)), 1u), 4294967295u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, 984f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, -618f)), vec2<f32>(-374f, -250f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(218f, -1000f)))) == 1f)), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, 1i), u_input.a.xy), vec2<i32>(3938i, 2147483647i))), -(_wgslsmith_mod_i32(u_input.d, u_input.e) | reverseBits(u_input.e))), Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), u_input.a & countOneBits(-u_input.a), u_input.a, var_0.x), Struct_1(!(!all(vec2<bool>(true, true))), ~(_wgslsmith_div_vec3_i32(u_input.a, u_input.a) << (var_0.wyw % vec3<u32>(32u))), u_input.a, _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), abs(vec4<u32>(var_0.x, var_0.x, 56476u, 4294967295u))))), Struct_1(any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true)), reverseBits(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.a), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.b.x, 41995i, -2147483647i)), vec3<i32>(15450i, u_input.c, 1i))), min(~vec3<i32>(2147483647i, u_input.c, 0i) << (vec3<u32>(var_0.x, 1u, var_0.x) % vec3<u32>(32u)), u_input.a), reverseBits(var_0.x)));
    global0 = var_1.e.c.x;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * vec2<f32>(var_1.a.x, var_1.a.x)), var_1.b, var_1.c, Struct_1(false, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_1.e.c.x) & var_1.c.c.xy, vec2<i32>(u_input.b.x, var_1.c.c.x)), 4712i, u_input.d), vec3<i32>(var_1.e.c.x << (0u % 32u), ~(~2147483647i), u_input.a.x), 72368u), var_1.d);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - var_1.a)))), abs(-2147483647i), var_1.d, var_1.c, Struct_1(!func_3(Struct_2(vec2<f32>(var_1.a.x, var_1.a.x), 14961i, Struct_1(var_1.d.a, var_1.e.b, vec3<i32>(u_input.d, -11371i, var_1.b), 0u), var_1.d, var_1.e), ~var_0.x, Struct_2(vec2<f32>(-2064f, -301f), -32962i, var_1.c, Struct_1(true, u_input.a, vec3<i32>(u_input.a.x, var_1.d.b.x, -639i), 4294967295u), var_1.c)), ~vec3<i32>(countOneBits(7915i), var_1.d.c.x, _wgslsmith_clamp_i32(u_input.b.x, var_1.b, var_1.e.c.x)), abs(vec3<i32>(u_input.b.x, u_input.a.x, 0i)), 27634u));
    return firstLeadingBit(vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 0i) & -var_1.e.c.x, firstTrailingBit(21049i), _wgslsmith_div_i32(28742i, firstLeadingBit(30182i)))) << (~vec4<u32>(var_0.x, var_2.e.d, var_1.c.d, 4294967295u) % vec4<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-arg_2.ww, ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.c, 1i))), ~u_input.a.zz));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.wy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, arg_0)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, 154f)))))), -1i, Struct_1(49263i > ~_wgslsmith_mod_i32(arg_2.x, -13249i), vec3<i32>(-select(-9202i, arg_2.x, false), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.x, -1i, -1i, arg_2.x), -vec4<i32>(u_input.c, u_input.b.x, var_0.x, -2147483647i)), i32(-1i) * -5021i), arg_2.xyw, ~_wgslsmith_clamp_u32(1u, func_2(Struct_2(vec2<f32>(arg_1.x, -1657f), -2147483647i, Struct_1(true, arg_2.yyx, vec3<i32>(-8774i, 57966i, 2147483647i), 4388u), Struct_1(true, vec3<i32>(-7001i, -18056i, 17428i), u_input.a, 1u), Struct_1(false, vec3<i32>(1i, arg_2.x, u_input.e), vec3<i32>(13390i, arg_2.x, -1i), 1u)), 141f, arg_2, vec3<f32>(-1001f, arg_1.x, arg_1.x)), 1u)), Struct_1(all(vec3<bool>(true, func_3(Struct_2(vec2<f32>(1441f, 397f), -29665i, Struct_1(false, u_input.a, arg_2.xzx, 7260u), Struct_1(false, vec3<i32>(-2434i, arg_2.x, 1i), vec3<i32>(u_input.c, 8292i, u_input.b.x), 4294967295u), Struct_1(true, vec3<i32>(u_input.d, u_input.d, -17383i), arg_2.wxx, 1u)), 15269u, Struct_2(arg_1.xy, 31322i, Struct_1(true, arg_2.wwx, arg_2.xyw, 9432u), Struct_1(true, u_input.a, u_input.a, 0u), Struct_1(true, u_input.a, u_input.a, 40915u))), func_3(Struct_2(arg_1.zw, var_0.x, Struct_1(false, arg_2.wwx, vec3<i32>(var_0.x, 28875i, u_input.c), 4294967295u), Struct_1(true, vec3<i32>(u_input.b.x, -2147483647i, u_input.c), vec3<i32>(arg_2.x, var_0.x, -16958i), 4294967295u), Struct_1(false, vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), vec3<i32>(2147483647i, u_input.a.x, 0i), 17550u)), 33514u, Struct_2(vec2<f32>(1514f, -430f), -2858i, Struct_1(true, arg_2.zww, vec3<i32>(21381i, u_input.a.x, arg_2.x), 4294967295u), Struct_1(true, arg_2.ywz, vec3<i32>(arg_2.x, arg_2.x, -1i), 24789u), Struct_1(true, vec3<i32>(arg_2.x, 0i, var_0.x), arg_2.xww, 1u))))), firstLeadingBit(_wgslsmith_div_vec3_i32(arg_2.wxz, arg_2.wwx) << (vec3<u32>(23029u, 1u, 1u) % vec3<u32>(32u))), ~arg_2.xzz, ~(~_wgslsmith_sub_u32(1u, 0u))), Struct_1(func_3(Struct_2(vec2<f32>(arg_0, -1283f), ~0i, Struct_1(false, u_input.a, arg_2.xxy, 0u), Struct_1(true, arg_2.zyz, vec3<i32>(var_0.x, 1i, arg_2.x), 4294967295u), Struct_1(false, vec3<i32>(var_0.x, arg_2.x, u_input.b.x), arg_2.zzy, 0u)), 0u, Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.yw * vec2<f32>(arg_1.x, arg_0)), arg_2.x << (27786u % 32u), Struct_1(false, arg_2.yzw, u_input.a, 4294967295u), Struct_1(true, arg_2.zyz, arg_2.yyx, 88715u), Struct_1(true, u_input.a, vec3<i32>(-10338i, -2147483647i, var_0.x), 28944u))), abs(firstTrailingBit(abs(u_input.a))), vec3<i32>(arg_2.x, u_input.e, -11386i), 1u));
    var var_2 = var_1.e.a;
    let var_3 = true;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-397f, vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(sign(-247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1542f)) - _wgslsmith_f_op_f32(-983f * -379f)))), func_1());
    var var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, -2147483647i, -32234i) ^ -(~(-vec3<i32>(var_0, u_input.c, -2147483647i))), u_input.a);
    global0 = var_0;
    global0 = 12253i & (u_input.d ^ -18326i);
    var_1 = u_input.a << (_wgslsmith_div_vec3_u32(select(~reverseBits(vec3<u32>(1u, 0u, 1u)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    var var_2 = Struct_1(4294967295u > _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 67950u), ~61132u << (firstTrailingBit(60369u) % 32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -34921i, var_1.x), vec3<i32>(-16737i, u_input.c, 0i)), -vec3<i32>(-35045i, -22877i, var_0)) & abs(-vec3<i32>(31236i, var_0, 2147483647i)), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-25187i, -30271i, ~(-45206i)))), -countOneBits(~vec3<i32>(u_input.a.x, 86378i, 2147483647i)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

