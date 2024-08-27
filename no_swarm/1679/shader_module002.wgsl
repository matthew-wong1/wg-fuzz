struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = -max((arg_0.c << (vec4<u32>(u_input.a.x, 4294967295u, 0u, 19695u) % vec4<u32>(32u))) & ~vec4<i32>(1i, 12081i, arg_0.c.x, 64550i), -arg_0.c | vec4<i32>(0i, arg_0.a, arg_0.b, -30762i)) << (select(~(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 4608u, 4294967295u))), vec4<u32>(~21878u, ~u_input.a.x, ~4294967295u << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u), ~1u), !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))) % vec4<u32>(32u));
    let var_1 = select(15446i, arg_0.b, _wgslsmith_mod_u32(~(~25855u), _wgslsmith_sub_u32(48047u, abs(u_input.a.x))) <= max(~(~u_input.a.x), ~(18925u ^ u_input.a.x)));
    let var_2 = arg_0;
    var var_3 = select(~_wgslsmith_clamp_u32(~countOneBits(2383u), ~reverseBits(65922u), countOneBits(0u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~4294967295u), _wgslsmith_mod_u32(0u, u_input.a.x)), u_input.a.x), true);
    let var_4 = 0u;
    return var_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = ~(~arg_1.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(253f)))))));
    var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.b & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 2881i, 8746i, 1i), vec4<i32>(26277i, arg_0.b, arg_0.a, 1i)), ~(abs(2147483647i) ^ ~arg_1.c.x)), arg_0.b);
    var var_2 = arg_1;
    var var_3 = var_1;
    return Struct_1(func_3(arg_0), ~_wgslsmith_div_i32(arg_1.a, arg_1.c.x) & func_3(Struct_1(i32(-1i) * -6180i, -2147483647i, -arg_1.c)), firstLeadingBit(_wgslsmith_div_vec4_i32(-(var_2.c >> (vec4<u32>(23578u, arg_2.x, arg_2.x, 31408u) % vec4<u32>(32u))), vec4<i32>(arg_1.b, abs(1i), -2147483647i, 0i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(arg_1.c.zww | (arg_3.c.xxw >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 25901u, 9553u)), vec3<u32>(19347u, 79993u, 1u), true) % vec3<u32>(32u))), abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -16338i, arg_2.b), arg_0.c.zxx), arg_1.a)));
    let var_1 = vec3<bool>(51930i == arg_3.c.x, any(vec3<bool>(_wgslsmith_f_op_f32(select(274f, -778f, false)) >= _wgslsmith_f_op_f32(round(226f)), true, true)), select(_wgslsmith_dot_vec4_i32(arg_2.c, arg_3.c) & _wgslsmith_sub_i32(arg_1.b, arg_1.c.x), i32(-1i) * -2147483647i, true) >= _wgslsmith_clamp_i32(arg_2.a, -1i, arg_3.a));
    let var_2 = ~arg_1.c.x;
    let var_3 = max(arg_2.c.zwz, arg_2.c.wxz);
    var var_4 = _wgslsmith_f_op_f32(abs(217f));
    return func_2(Struct_1(func_3(Struct_1(_wgslsmith_div_i32(arg_1.b, -1i), ~(-33634i), vec4<i32>(var_0.x, var_3.x, 53642i, var_0.x))), var_0.x, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, arg_0.c.x, arg_2.a, 2147483647i), arg_3.c)) ^ vec4<i32>(1i, ~var_3.x, var_3.x & var_3.x, arg_0.b | 29627i)), Struct_1(arg_1.c.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(-arg_3.c.yy, -arg_0.c.zy)), countOneBits(countOneBits(vec4<i32>(arg_1.a, arg_1.c.x, var_0.x, 2147483647i)))), vec3<u32>(0u, 1u & u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(f32(-1f) * -673f)))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(-1i & arg_1.x, firstTrailingBit(-6287i), vec4<i32>(-1i) * -(vec4<i32>(arg_0, -22139i, arg_1.x, 3963i) & vec4<i32>(arg_0, 2147483647i, -2147483647i, -1i))), Struct_1(abs(-34520i), -arg_0, min(vec4<i32>(max(arg_1.x, arg_0), arg_0, -2147483647i, -arg_0), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, 43513i, -18722i), vec4<i32>(arg_1.x, 63619i, -9126i, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(-10679i, -2147483647i, -42685i, arg_0), vec4<i32>(arg_0, -2147483647i, arg_1.x, arg_0))))), Struct_1(select(arg_0, 6939i, true), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, 1i), arg_0)), ~(vec4<i32>(arg_1.x, -13598i, -32885i, -1i) ^ ~vec4<i32>(-1i, arg_1.x, arg_0, -18572i))), func_2(Struct_1(1i, _wgslsmith_div_i32(2147483647i, -31520i) ^ arg_1.x, select(_wgslsmith_mod_vec4_i32(vec4<i32>(20699i, arg_0, arg_0, -105727i), vec4<i32>(arg_1.x, arg_1.x, arg_0, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 2147483647i, 1i), vec4<i32>(arg_1.x, 52826i, arg_0, arg_1.x)), true)), Struct_1(~(arg_1.x | arg_1.x), _wgslsmith_mult_i32(arg_1.x << (50648u % 32u), 2469i), (vec4<i32>(arg_0, arg_0, 119636i, 31750i) | vec4<i32>(arg_0, 30561i, arg_0, arg_1.x)) | vec4<i32>(arg_0, 69651i, arg_1.x, arg_1.x)), firstTrailingBit((u_input.a << (u_input.a % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 34339u, 0u), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), _wgslsmith_f_op_f32(abs(-678f))));
    let var_1 = Struct_1(-(~arg_1.x), -2147483647i, vec4<i32>(2147483647i, arg_0, arg_1.x, i32(-1i) * -2147483647i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(16776u), 60891u, u_input.a.x, _wgslsmith_mod_u32(0u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 13643u, u_input.a.x, 6935u)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1292f, 1000f)), _wgslsmith_f_op_f32(select(-540f, -1422f, true)), -2968f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, 864f, 307f) + vec3<f32>(714f, -1300f, -1226f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, -1344f, 386f)))), vec3<f32>(-591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f)), 810f)));
    var_0 = func_2(var_1, Struct_1(arg_0, arg_0, ~countOneBits(firstTrailingBit(var_1.c))), ~u_input.a, -424f);
    var_0 = Struct_1(var_0.b, min(var_1.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_1.x), abs(var_1.c.zy)), var_0.c.wx)), abs(~(~(vec4<i32>(-8565i, arg_1.x, var_0.b, arg_0) << (vec4<u32>(1u, u_input.a.x, 83406u, 0u) % vec4<u32>(32u))))));
    return func_2(func_2(func_2(var_1, func_2(func_2(Struct_1(arg_0, 0i, vec4<i32>(arg_1.x, var_0.b, var_0.b, -4242i)), var_1, u_input.a, var_2.x), Struct_1(2147483647i, arg_1.x, vec4<i32>(37306i, 2147483647i, 8405i, -8957i)), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(43123u, 3202u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), Struct_1(-2147483647i, -22548i, vec4<i32>(var_0.a, _wgslsmith_clamp_i32(1i, arg_0, var_0.a), _wgslsmith_mult_i32(arg_1.x, 2147483647i), _wgslsmith_mult_i32(var_1.c.x, var_0.b))), u_input.a, var_2.x), func_4(var_1, func_4(func_4(Struct_1(arg_1.x, -1i, var_0.c), func_2(var_1, Struct_1(arg_0, -1i, var_0.c), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -428f), Struct_1(arg_0, -2147483647i, vec4<i32>(12560i, -30057i, arg_1.x, arg_0)), func_4(var_1, Struct_1(arg_1.x, arg_1.x, vec4<i32>(-1i, var_1.a, 2147483647i, arg_1.x)), Struct_1(-18384i, arg_0, var_0.c), var_1)), var_1, Struct_1(func_2(var_1, var_1, u_input.a, 254f).b, ~(-21100i), func_4(Struct_1(4171i, -35303i, vec4<i32>(-67398i, 0i, var_1.b, -7523i)), Struct_1(arg_1.x, -2147483647i, vec4<i32>(22829i, var_0.a, 14684i, -1i)), var_1, var_1).c), func_4(func_2(var_1, Struct_1(var_1.c.x, var_1.b, vec4<i32>(0i, 1i, var_1.a, 29756i)), vec3<u32>(70996u, 29789u, 125473u), -1450f), Struct_1(-2147483647i, arg_1.x, var_0.c), Struct_1(24742i, var_0.c.x, vec4<i32>(var_0.a, -1i, var_1.c.x, -19991i)), func_2(Struct_1(arg_0, -1i, vec4<i32>(arg_1.x, 1i, 0i, -28729i)), Struct_1(73636i, arg_1.x, vec4<i32>(68723i, var_1.a, -23186i, -28440i)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -1000f))), var_1, Struct_1(-abs(2147483647i), _wgslsmith_add_i32(abs(arg_1.x), -11667i), var_1.c)), u_input.a, 124f);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_mult_i32(func_4(Struct_1(arg_2.x, i32(-1i) * -10099i, -arg_3.c), Struct_1(1i, func_4(arg_3, Struct_1(arg_3.a, arg_1.b, arg_1.c), Struct_1(51339i, arg_3.c.x, vec4<i32>(4405i, 4294i, arg_2.x, 18144i)), Struct_1(arg_2.x, -37480i, vec4<i32>(arg_2.x, -5749i, -35792i, arg_1.b))).b, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, arg_3.c.x, arg_2.x, arg_1.c.x), arg_3.c)), Struct_1(func_2(Struct_1(arg_2.x, 2147483647i, arg_3.c), arg_3, vec3<u32>(23571u, u_input.a.x, 13212u), 314f).b, 2147483647i, arg_3.c), func_2(arg_3, Struct_1(arg_1.a, -27909i, vec4<i32>(-12963i, arg_1.c.x, arg_1.c.x, -1i)), u_input.a, _wgslsmith_f_op_f32(select(-246f, 431f, arg_0.x)))).a, _wgslsmith_mod_i32(-arg_2.x, -(17020i ^ arg_3.b))), arg_2);
    var var_1 = Struct_1(func_2(func_1(_wgslsmith_mult_i32(-arg_3.a, firstLeadingBit(13669i)), vec2<i32>(-var_0.c.x, -var_0.a)), func_2(func_2(arg_3, Struct_1(2147483647i, 0i, arg_3.c), min(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(0u, 71075u, u_input.a.x)), _wgslsmith_f_op_f32(-215f * -1697f)), Struct_1(-1i, _wgslsmith_mult_i32(-23877i, 0i), arg_3.c), countOneBits(vec3<u32>(u_input.a.x, 4294967295u, 0u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(990f, 846f), _wgslsmith_f_op_f32(747f + -1481f), all(vec3<bool>(arg_0.x, true, arg_0.x))))), vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5996u), vec4<u32>(27665u, 4294967295u, 78290u, u_input.a.x)), ~u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 1u, 35352u, 0u)), ~(~45867u)), 1563f).b, var_0.b, ~(~_wgslsmith_div_vec4_i32(arg_3.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -64502i, 11962i, -31367i), var_0.c, vec4<i32>(var_0.c.x, -2147483647i, var_0.a, 0i)))));
    let var_2 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.c.yzw >> (select(vec3<u32>(1u, 62576u, 4294967295u), vec3<u32>(u_input.a.x, 42010u, u_input.a.x), arg_0.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(var_1.c.xxw, _wgslsmith_clamp_vec3_i32(var_1.c.xyx, arg_1.c.ywx, arg_1.c.zxw)), min(vec3<i32>(var_1.a, arg_3.a, -1i), vec3<i32>(arg_1.a, -2147483647i, var_1.c.x))), vec3<i32>(func_4(func_4(Struct_1(arg_3.c.x, 1i, vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i)), arg_1, arg_3, arg_1), Struct_1(-71744i, arg_2.x, var_1.c), Struct_1(-9138i, 1415i, vec4<i32>(var_0.a, arg_3.c.x, 61702i, -1i)), func_4(Struct_1(arg_3.c.x, 2147483647i, arg_1.c), Struct_1(-10741i, 2147483647i, vec4<i32>(arg_3.a, arg_1.a, arg_1.b, 616i)), Struct_1(arg_1.c.x, -13544i, var_1.c), Struct_1(-37344i, var_0.c.x, vec4<i32>(arg_1.b, arg_1.c.x, -1i, -41416i)))).b, countOneBits(_wgslsmith_clamp_i32(arg_2.x, -48204i, arg_3.a)), countOneBits(var_1.a) >> (7589u % 32u)));
    let var_3 = func_2(arg_1, Struct_1(_wgslsmith_clamp_i32(2147483647i, -(16249i >> (u_input.a.x % 32u)), func_3(func_1(var_0.b, var_1.c.xx))), -arg_1.c.x, arg_1.c), abs(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, ~11206u), min(u_input.a.x << (u_input.a.x % 32u), ~1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-584f * -324f), _wgslsmith_f_op_f32(abs(-428f))))))));
    var_0 = func_2(Struct_1(_wgslsmith_sub_i32(var_2, -func_2(arg_1, Struct_1(var_1.a, arg_3.b, vec4<i32>(1i, arg_1.a, 1i, arg_3.b)), u_input.a, -1508f).a), -(~(arg_1.b >> (u_input.a.x % 32u))), arg_1.c), arg_3, _wgslsmith_clamp_vec3_u32(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(22498u, 0u, 4294967295u), vec3<u32>(55745u, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x & 1u, 0u, _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x)), select(u_input.a, u_input.a, select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, true, arg_0.x)), !vec3<bool>(arg_0.x, arg_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f - -1109f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(floor(583f))))));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = func_5(vec2<bool>(true, true), func_4(arg_0, Struct_1(var_0.a, abs(arg_0.b | -2147483647i), -var_0.c), func_5(vec2<bool>(true, true), Struct_1(~2147483647i, _wgslsmith_mult_i32(arg_0.c.x, 0i), reverseBits(vec4<i32>(arg_0.c.x, 57385i, 0i, var_0.c.x))), select(arg_1.c.xx, arg_0.c.yz, vec2<bool>(true, true)), Struct_1(arg_1.c.x, var_0.c.x, _wgslsmith_mult_vec4_i32(arg_1.c, vec4<i32>(arg_0.b, arg_1.a, -2147483647i, arg_1.b)))), Struct_1(~(-arg_1.b), firstTrailingBit(-arg_0.b), arg_1.c)), func_4(arg_1, func_2(Struct_1(-1i, -42880i >> (u_input.a.x % 32u), vec4<i32>(arg_0.a, 64837i, 1i, arg_0.b)), func_4(arg_1, Struct_1(0i, var_0.a, var_0.c), Struct_1(-30880i, arg_0.b, arg_0.c), arg_0), abs(u_input.a), _wgslsmith_f_op_f32(ceil(-902f))), arg_1, arg_0).c.yz, func_5(!vec2<bool>(any(vec2<bool>(true, true)), true), arg_1, abs(arg_0.c.yx), arg_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(abs(610f))), -784f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(395f, 479f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-744f, 1055f), vec2<f32>(-410f, 411f))), true))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1406f))))));
    var var_3 = func_2(func_2(func_2(func_1(arg_1.b, vec2<i32>(var_1.b, arg_0.a)), arg_1, u_input.a, var_2.x), Struct_1(-9723i, arg_1.b, var_1.c), vec3<u32>(u_input.a.x, ~1u, u_input.a.x), 778f), arg_1, firstLeadingBit(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 56588u), u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(306f + -1161f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(var_2.x)))))));
    var var_4 = vec4<bool>(abs((arg_1.c.x & 17620i) ^ _wgslsmith_div_i32(var_1.a, var_1.a)) == arg_0.b, true, any(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), all(vec2<bool>(true, true)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1309i, -16303i, 2147483647i), vec3<i32>(17237i, 1i, 15144i)), vec3<i32>(-6887i, -12791i, 2147483647i))), func_6(func_5(vec2<bool>(true, true), func_1(70851i, vec2<i32>(-20492i, 34348i)), ~vec2<i32>(35584i, 64966i), func_1(57893i, vec2<i32>(1i, 15632i))), func_2(Struct_1(52536i, 33045i, vec4<i32>(23815i, -1i, -32879i, -9543i)), func_5(vec2<bool>(false, true), Struct_1(-1i, 6681i, vec4<i32>(-1i, -22395i, 1i, 64408i)), vec2<i32>(-7807i, 2147483647i), Struct_1(1i, -40044i, vec4<i32>(13718i, 2147483647i, 75792i, 2147483647i))), vec3<u32>(19153u, u_input.a.x, u_input.a.x), -400f))) & -1i;
    let var_1 = func_1(-1i, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0) << (firstLeadingBit(~u_input.a.xz) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(25466i, _wgslsmith_dot_vec4_i32(vec4<i32>(40058i, -36738i, var_0, var_0), vec4<i32>(var_0, -4644i, var_0, var_0))), abs(~vec2<i32>(53404i, -199i)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1518f, _wgslsmith_f_op_f32(abs(512f)), 151f, _wgslsmith_f_op_f32(-483f * 1010f)))));
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 2944u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 18967u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(14063u, u_input.a.x, u_input.a.x, 4294967295u))), vec4<u32>(21053u, u_input.a.x >> (4294967295u % 32u), abs(u_input.a.x), abs(0u)))), u_input.a);
    let var_4 = vec3<bool>(true, 1394f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(976f + var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(-var_2.x));
}

