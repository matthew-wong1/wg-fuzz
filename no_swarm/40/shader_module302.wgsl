struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_5(Struct_4(Struct_3(u_input.c.x, arg_0.b, Struct_1(arg_0.c.a >> (arg_0.c.a % vec2<u32>(32u)), false, -1781f, arg_0.c.a.x, ~vec2<u32>(arg_0.c.d, u_input.b.x)), true), vec2<u32>(~1u, ~arg_0.c.d) & u_input.b.wz, -(~select(vec3<i32>(1i, arg_0.a, u_input.a), vec3<i32>(-1i, arg_0.a, -1i), arg_0.b.yzz)), ~_wgslsmith_clamp_i32(min(arg_0.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 0i, -26552i, -18126i), vec4<i32>(u_input.d.x, 52825i, 1i, -1i)), reverseBits(1i))), Struct_3(_wgslsmith_mod_i32(2147483647i, -27671i ^ arg_0.a) & -u_input.d.x, !(!arg_0.b), arg_0.c, arg_0.d), 1u);
    let var_1 = var_0.a;
    let var_2 = Struct_4(var_0.b, ~var_0.a.b, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, var_0.b.a, select(-12446i, _wgslsmith_sub_i32(var_1.d, -2147483647i), all(arg_0.b.xy))), abs(-(var_1.c >> (u_input.b.zxy % vec3<u32>(32u))))), ~u_input.a);
    var var_3 = ~abs(u_input.b.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1390f, -2549f, _wgslsmith_f_op_f32(round(var_0.a.a.c.c))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(783f)), _wgslsmith_f_op_f32(select(-1000f, 2646f, var_2.a.b.x)), _wgslsmith_div_f32(-297f, -255f))))));
    return -23794i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(min(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(-1i, 102907i, -14307i)), u_input.d.x), 2147483647i), -reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-45747i, u_input.d.x), vec2<i32>(var_0.x, var_0.x))));
    let var_1 = u_input.d.x;
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(4077i, var_1), ~(-19959i), abs(2147483647i), select(2147483647i, 1i, arg_1.x)), vec4<i32>(-10408i, u_input.c.x, min(func_3(Struct_3(79326i, vec4<bool>(arg_1.x, false, true, false), arg_0, arg_1.x)), 0i), -var_1)), var_1);
    var var_2 = Struct_2(!(!vec3<bool>(false, arg_1.x, !arg_0.b)), arg_2.x, arg_0.c);
    return u_input.c.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(max(_wgslsmith_add_i32(2282i, 31604i), arg_0.x >> (~u_input.b.x % 32u)), vec4<bool>(_wgslsmith_add_u32(u_input.b.x, 1u) != 1u, func_2(Struct_1(vec2<u32>(35083u, 23954u), true, 635f, 1u, vec2<u32>(u_input.e, 0u)), vec2<bool>(false, true), vec4<f32>(210f, -442f, -235f, 909f), vec3<f32>(131f, -800f, 1294f)) != -arg_0.x, true & all(vec4<bool>(true, false, false, false)), false), Struct_1(~firstLeadingBit(u_input.b.xw), true, -576f, ~0u, _wgslsmith_clamp_vec2_u32(arg_1.wx, vec2<u32>(arg_1.x, u_input.e), arg_1.yw) << (vec2<u32>(arg_1.x, u_input.b.x) % vec2<u32>(32u))), !(-u_input.a <= -65240i)), vec2<u32>(0u, 8606u), vec3<i32>(_wgslsmith_mod_i32(abs(arg_0.x), -2147483647i), u_input.d.x, _wgslsmith_add_i32(u_input.c.x << (4294967295u % 32u), -arg_0.x) << (u_input.b.x % 32u)), 1i);
    var_0 = Struct_4(Struct_3(-2147483647i >> (abs(0u) % 32u), var_0.a.b, Struct_1(~vec2<u32>(arg_1.x, 4294967295u), true, _wgslsmith_f_op_f32(floor(990f)), firstLeadingBit(~var_0.a.c.d), select(var_0.b, u_input.b.zx, vec2<bool>(var_0.a.c.b, var_0.a.b.x))), false), abs(var_0.b) >> (u_input.b.yz % vec2<u32>(32u)), vec3<i32>(~2147483647i, 4159i, -countOneBits(~2147483647i)), var_0.c.x);
    let var_1 = Struct_4(Struct_3(~func_3(Struct_3(1i, vec4<bool>(false, false, var_0.a.d, false), var_0.a.c, true)), !(!select(vec4<bool>(var_0.a.d, var_0.a.b.x, false, var_0.a.d), vec4<bool>(false, true, false, var_0.a.b.x), true)), Struct_1(firstLeadingBit(vec2<u32>(u_input.e, 1u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.b.x), u_input.b.xx) % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(f32(-1f) * -649f), var_0.b.x, var_0.a.c.a), var_0.a.b.x), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(var_0.a.c.a.x, arg_1.x)), vec2<u32>(8788u & u_input.b.x, _wgslsmith_clamp_u32(arg_1.x, u_input.b.x, var_0.a.c.e.x))), vec2<u32>(arg_1.x, 1u)), _wgslsmith_mult_vec3_i32(-(_wgslsmith_sub_vec3_i32(u_input.d, var_0.c) << (countOneBits(vec3<u32>(0u, 75439u, 11637u)) % vec3<u32>(32u))), -(arg_0.wwx ^ vec3<i32>(-9974i, -17457i, 52182i))), ~min(var_0.d, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, 12625i)), countOneBits(vec2<i32>(arg_0.x, var_0.c.x)))));
    var var_2 = var_1;
    var_2 = Struct_4(Struct_3(-1i, vec4<bool>(any(vec2<bool>(var_1.a.c.b, false)), any(!vec3<bool>(var_0.a.c.b, false, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 28042u, u_input.b.x, var_2.b.x), arg_1) != 0u, var_2.a.d), Struct_1(max(_wgslsmith_mod_vec2_u32(var_2.b, var_2.a.c.e), ~var_2.b), var_1.a.c.b, _wgslsmith_f_op_f32(-1283f * 119f), ~var_0.a.c.e.x >> (4294967295u % 32u), ~(~var_2.a.c.a)), select(all(select(vec3<bool>(var_2.a.d, false, false), vec3<bool>(var_1.a.c.b, false, var_0.a.b.x), var_2.a.b.x)), false, var_1.a.b.x | false)), var_0.b, vec3<i32>(var_2.d, ~(-1i), ~1i), -25397i);
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> vec2<u32> {
    let var_0 = !arg_1.a.d;
    var var_1 = func_1(vec4<i32>(select(2147483647i, ~u_input.a >> (~arg_1.b.x % 32u), true), ~_wgslsmith_add_i32(1i, 0i), u_input.a, 0i), vec4<u32>(firstTrailingBit(arg_2), abs(max(_wgslsmith_add_u32(42423u, 0u), 1u)), reverseBits(arg_2) ^ reverseBits(~arg_2), 1u & abs(arg_1.b.x))).a;
    var_1 = func_1(vec4<i32>(-(~countOneBits(u_input.d.x)), -(~arg_1.a.a), arg_1.c.x, _wgslsmith_mult_i32(3440i, u_input.c.x)), ~vec4<u32>(~arg_2, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(9917u, var_1.c.a.x, u_input.b.x, 4294967295u) << (vec4<u32>(arg_2, var_1.c.a.x, 0u, arg_2) % vec4<u32>(32u))), arg_1.b.x)).a;
    var_1 = Struct_3(_wgslsmith_add_i32(~arg_1.c.x, select(abs(min(u_input.d.x, 1i)), ~(~arg_1.a.a), _wgslsmith_div_f32(-964f, arg_1.a.c.c) == var_1.c.c)), func_1(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_1.d, -1i, u_input.a) << (u_input.b % vec4<u32>(32u)), ~vec4<i32>(18805i, 2147483647i, 17972i, 2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.d.x, arg_1.d, arg_1.d), vec4<i32>(-36137i, -72109i, arg_1.a.a, var_1.a)), -vec4<i32>(-1343i, arg_1.c.x, var_1.a, arg_1.d))), u_input.b).a.b, func_1(vec4<i32>(var_1.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(-13432i, -20477i), abs(vec2<i32>(arg_1.d, 8192i))), 1i, func_3(Struct_3(var_1.a, vec4<bool>(var_1.b.x, var_1.d, false, var_1.c.b), Struct_1(arg_1.b, true, -645f, 1u, vec2<u32>(1u, 24304u)), false))), vec4<u32>(3317u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(20887u, 32912u), ~var_1.c.a), min(~20739u, var_1.c.d))).a.c, var_1.d);
    let var_2 = ~arg_1.d;
    return vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(2636u ^ u_input.e, 4294967295u), var_1.c.a.x, arg_1.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~reverseBits(u_input.b.zx), ~arg_1.b, vec2<u32>(u_input.e, 36589u) << (abs(vec2<u32>(arg_1.b.x, arg_2)) % vec2<u32>(32u))), ~func_1(vec4<i32>(arg_1.d, -20095i, arg_1.c.x, 22332i) ^ vec4<i32>(58444i, -34765i, -1i, var_2), u_input.b).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-1000f, func_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(48055i, u_input.d.x, 0i, -2147483647i), vec4<i32>(-40524i, u_input.d.x, u_input.d.x, u_input.c.x)), firstTrailingBit(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, u_input.d.x) & vec4<i32>(-1i, u_input.c.x, 25583i, -1i)), ~vec4<i32>(u_input.a, -30291i, u_input.c.x, -7309i) ^ -vec4<i32>(u_input.c.x, u_input.a, -2147483647i, u_input.c.x)), u_input.b), min(1u, 0u));
    let var_1 = true && any(vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false, true));
    var_0 = reverseBits(u_input.b.wy) >> (u_input.b.yw % vec2<u32>(32u));
    let var_2 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 7524i, _wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-1i, -24762i))), u_input.a)), -firstTrailingBit(countOneBits(~vec4<i32>(1i, u_input.d.x, -1760i, u_input.c.x))));
    let var_3 = -firstTrailingBit(-1i);
    var_0 = _wgslsmith_mult_vec2_u32(~func_4(_wgslsmith_div_f32(595f, -1104f), Struct_4(Struct_3(2147483647i, vec4<bool>(true, var_1, false, true), Struct_1(vec2<u32>(var_0.x, 0u), false, -1337f, 10549u, u_input.b.zw), true), u_input.b.xz, vec3<i32>(20997i, -36606i, u_input.a), 23401i), 0u) << (vec2<u32>(var_0.x, 4294967295u << (var_0.x % 32u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.zzz, u_input.b.wyy))), min(u_input.b.xy, vec2<u32>(~22709u, select(4294967295u, u_input.e, var_1)))));
    var_0 = countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, var_0.x, var_0.x), u_input.b.xzw, var_1), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 0u), u_input.b.xxz), ~u_input.b.wzx)), ~var_0.x));
    var var_4 = vec4<i32>(var_2, -65345i, 1i, ~(var_3 >> (u_input.b.x % 32u)));
    var var_5 = func_1(vec4<i32>(_wgslsmith_clamp_i32(var_2, u_input.c.x, 2147483647i) << ((u_input.b.x ^ 4294967295u) % 32u), -31953i, -var_4.x, 2147483647i) >> (~vec4<u32>(~4294967295u, var_0.x, u_input.b.x & 0u, max(var_0.x, 1u)) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec4_u32(u_input.b, max(vec4<u32>(var_0.x, 109193u, 1u, var_0.x), vec4<u32>(var_0.x, 4294967295u, u_input.b.x, u_input.e)), ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, var_2), vec2<i32>(var_4.x, var_5.c.x)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, -6206i), vec2<i32>(u_input.c.x, var_4.x)), -u_input.c)), _wgslsmith_mod_i32(~var_4.x << (abs(u_input.b.x) % 32u), func_2(func_1(vec4<i32>(7652i, -2147483647i, -1i, -34132i), u_input.b).a.c, var_5.a.b.wy, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1063f, 142f, var_5.a.c.c))), vec3<f32>(228f, 117f, var_5.a.c.c)))));
}

