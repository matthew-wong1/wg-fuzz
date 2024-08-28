struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(144f, 1014f, 1606f, -937f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !vec3<bool>(arg_0.d, false, true & ((arg_0.b < arg_0.b) && false));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 862f, arg_0.e, -945f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, global0.x, arg_0.e, global0.x)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_f_op_f32(664f - _wgslsmith_f_op_f32(f32(-1f) * -1529f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + arg_0.e), _wgslsmith_f_op_f32(trunc(-1641f))) + global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(arg_0.e - _wgslsmith_f_op_f32(f32(-1f) * -544f)))), _wgslsmith_f_op_f32(517f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(770f)), -949f))));
    return abs(1u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(max(min(reverseBits(-vec4<i32>(30407i, u_input.a, -26493i, -1i)), abs(select(vec4<i32>(u_input.b.x, u_input.a, 29783i, 0i), vec4<i32>(u_input.b.x, u_input.a, -1i, -2147483647i), vec4<bool>(true, false, false, true)))), max(select(vec4<i32>(-1i, u_input.a, u_input.a, -42674i), vec4<i32>(u_input.a, -10795i, u_input.a, 0i), select(true, true, false)), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 2147483647i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1.x, 1u, 0u), vec4<u32>(30293u, 1u, arg_1.x, 0u), vec4<u32>(34412u, arg_1.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)))), ~(-2147483647i & u_input.a), ~u_input.a, true, _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = false;
    global0 = arg_0;
    let var_2 = (var_0.a & -(firstTrailingBit(vec4<i32>(u_input.a, var_0.a.x, u_input.a, u_input.b.x)) ^ vec4<i32>(0i, 35293i, 0i, 0i))) & (var_0.a >> (vec4<u32>(arg_1.x >> (~arg_1.x % 32u), select(arg_1.x & 26916u, reverseBits(arg_1.x), true), arg_1.x, arg_1.x) % vec4<u32>(32u)));
    let var_3 = Struct_3(vec3<u32>(~func_3(Struct_1(var_2, -38202i, 89890i, true, 2645f)), 46225u, arg_1.x), var_0, var_0, Struct_2(_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 0u, arg_1.x, 24498u)), ~firstLeadingBit(vec4<u32>(4294967295u, 91344u, 21291u, 83953u))), 1u, arg_1.x << (~4294967295u % 32u), !(!(!vec4<bool>(var_1, var_0.d, true, var_0.d)))), var_0);
    return Struct_1(-abs(vec4<i32>(var_0.a.x, firstLeadingBit(var_0.b), _wgslsmith_div_i32(var_2.x, u_input.b.x), var_3.e.c)), -30062i & select(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_2, var_2), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -30794i, u_input.b.x), u_input.b)), var_0.c, !all(vec3<bool>(var_0.d, var_0.d, var_1))), abs(i32(-1i) * -2147483647i), true, -427f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(vec4<u32>(56665u, 4294967295u, (_wgslsmith_add_u32(arg_0.d.a.x, 4294967295u) & ~arg_0.d.a.x) >> (4294967295u % 32u), ((arg_0.a.x | arg_0.d.b) & _wgslsmith_div_u32(arg_0.d.c, 83102u)) << (_wgslsmith_div_u32(arg_0.a.x, select(20038u, arg_0.a.x, arg_0.e.d)) % 32u)), 78620u, reverseBits(~(~abs(77219u))), arg_0.d.d);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.e, -1000f, arg_1.e, -112f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, -843f, 489f, -843f))), vec4<f32>(-1143f, _wgslsmith_f_op_f32(-arg_0.b.e), _wgslsmith_f_op_f32(round(2056f)), 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(sign(952f))), _wgslsmith_f_op_f32(-arg_0.c.e))), 929f, _wgslsmith_f_op_f32(-461f * func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.e, 560f, 873f, 256f))), vec3<u32>(var_0.a.x, arg_0.a.x, var_0.c)).e), arg_0.c.e));
    var_0 = Struct_2(abs(arg_0.d.a), max(~(~(var_0.a.x << (arg_0.d.b % 32u))), var_0.c), ~27004u, select(select(select(arg_0.d.d, !var_0.d, vec4<bool>(arg_1.d, var_0.d.x, true, false)), vec4<bool>(false, u_input.b.x > -38730i, false, true), var_0.d), !arg_0.d.d, arg_0.d.d));
    let var_1 = 2147483647i;
    var var_2 = global0.zz;
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 522f, arg_0.e.e, 650f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, arg_0.e.e, -355f, arg_0.b.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(849f, global0.x, 2125f, -956f) - vec4<f32>(global0.x, -1318f, arg_0.c.e, -1701f)))))));
    var var_0 = func_4(Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.d.a, arg_0.d.a), arg_0.d.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.xy, arg_0.a.yx)), arg_0.e, Struct_1(vec4<i32>(arg_0.b.c, reverseBits(0i), -28510i, u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.b.c, arg_0.e.a.x), vec3<i32>(56370i, u_input.a, u_input.b.x)), i32(-1i) * -1i, all(!arg_0.d.d.xzy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + arg_0.c.e))), arg_0.d, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-33111i, arg_0.c.b, -2147483647i, 1i), vec4<i32>(u_input.b.x, arg_0.b.b, 24621i, u_input.b.x), vec4<i32>(arg_0.e.a.x, -893i, arg_0.b.b, -3823i)) & ~vec4<i32>(0i, 27193i, -27394i, u_input.a), firstTrailingBit(-28122i), u_input.b.x, true, global0.x)), Struct_1(vec4<i32>(firstLeadingBit(-2147483647i), -72001i, arg_0.e.b, -min(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.c, u_input.a, -36380i), u_input.b), vec3<i32>(func_2(vec4<f32>(global0.x, global0.x, -191f, 1797f), vec3<u32>(0u, 20965u, arg_0.a.x)).c, 0i, -u_input.b.x)), -(i32(-1i) * -1i) ^ (i32(-1i) * -u_input.b.x), arg_0.d.d.x, _wgslsmith_div_f32(-1048f, _wgslsmith_f_op_f32(global0.x * global0.x)))).d;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-620f, global0.x, arg_0.e.e, -1364f), vec4<f32>(arg_0.e.e, global0.x, global0.x, arg_0.e.e))) * vec4<f32>(-1119f, arg_0.b.e, 453f, 2029f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2290f, arg_0.b.e, global0.x, 203f))), vec4<f32>(global0.x, 369f, global0.x, 1000f))))));
    var var_1 = !var_0.d.x;
    var var_2 = func_4(Struct_3(arg_0.d.a.xzz, func_4(Struct_3(vec3<u32>(var_0.b, arg_0.d.a.x, 4813u), func_4(arg_0, Struct_1(arg_0.e.a, u_input.a, u_input.b.x, true, arg_0.e.e)).b, arg_0.c, arg_0.d, arg_0.c), Struct_1(_wgslsmith_clamp_vec4_i32(arg_0.b.a, arg_0.e.a, vec4<i32>(8043i, -1i, 0i, 1i)), ~u_input.a, u_input.b.x, arg_0.e.e <= -1213f, arg_0.e.e)).c, Struct_1(abs(_wgslsmith_mult_vec4_i32(arg_0.b.a, arg_0.e.a)), ~arg_0.b.a.x, ~countOneBits(u_input.b.x), (arg_0.a.x >= arg_0.a.x) | !var_0.d.x, global0.x), Struct_2(arg_0.d.a, 1u, arg_0.d.a.x, arg_0.d.d), arg_0.c), Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, arg_0.c.c, 14884i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 48226i, 577i, arg_0.b.a.x), arg_0.e.a), arg_0.e.a), i32(-1i) * -arg_0.b.a.x, u_input.b.x, arg_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(vec4<f32>(-157f, arg_0.c.e, -516f, -2014f), vec3<u32>(68838u, 1u, 0u)).e, -383f)) - global0.x))).e;
    return Struct_3(max(firstTrailingBit(vec3<u32>(4294967295u, reverseBits(arg_0.a.x), 1u)), _wgslsmith_mod_vec3_u32(~arg_0.a, ~(~vec3<u32>(692u, arg_0.d.c, arg_0.d.c)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, global0.x, global0.x, -1674f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.e.e, 1250f, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1355f, var_2.e, arg_0.b.e))), vec3<u32>(_wgslsmith_mult_u32(34315u, 47986u), 107443u >> (var_0.b % 32u), _wgslsmith_clamp_u32(1u, arg_0.d.b, arg_0.d.a.x)) ^ _wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.d.a.xzz), arg_0.a)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 690f, 685f, -102f)))), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(arg_0.a.x, var_0.c, var_0.c)), arg_0.a)), func_4(func_4(func_4(Struct_3(vec3<u32>(4294967295u, 1u, var_0.c), arg_0.b, arg_0.c, arg_0.d, arg_0.c), func_4(Struct_3(arg_0.a, arg_0.e, Struct_1(vec4<i32>(-26149i, arg_0.b.b, 2147483647i, u_input.b.x), -27602i, arg_0.c.b, false, -1389f), arg_0.d, arg_0.b), Struct_1(vec4<i32>(arg_0.e.c, u_input.a, -21165i, 2147483647i), -1i, arg_0.c.b, var_2.d, -1847f)).c), Struct_1(vec4<i32>(u_input.a, 0i, arg_0.e.a.x, -1i), 0i, -20484i, false, global0.x)), arg_0.c).d, Struct_1(vec4<i32>(_wgslsmith_mod_i32(var_2.b, arg_0.b.b), countOneBits(-2351i), i32(-1i) * -1i, _wgslsmith_div_i32(5285i, arg_0.e.a.x)) << (abs(var_0.a) % vec4<u32>(32u)), 2147483647i, u_input.b.x, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_2.e)), _wgslsmith_f_op_f32(f32(-1f) * -326f))), -1294f, any(select(var_0.d, arg_0.d.d, var_0.d))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = func_5(func_4(Struct_3(vec3<u32>(arg_1.a.x, ~arg_1.b, abs(0u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, -655f, global0.x, global0.x)), max(vec3<u32>(arg_1.c, arg_0.c, 72465u), vec3<u32>(68231u, 39506u, arg_1.c))), Struct_1(vec4<i32>(u_input.a, u_input.b.x, 14625i, 0i), u_input.a, 2147483647i, true, _wgslsmith_f_op_f32(-global0.x)), Struct_2(vec4<u32>(arg_1.a.x, arg_0.a.x, 0u, 61243u), arg_1.b, arg_0.c, select(vec4<bool>(arg_0.d.x, true, true, arg_0.d.x), vec4<bool>(false, arg_0.d.x, false, arg_0.d.x), arg_1.d)), Struct_1(vec4<i32>(u_input.b.x, u_input.a, u_input.a, -12264i) ^ vec4<i32>(u_input.b.x, -7506i, u_input.b.x, u_input.a), ~(-1i), _wgslsmith_sub_i32(u_input.b.x, 0i), true, _wgslsmith_f_op_f32(step(-1160f, 1101f)))), Struct_1(-(~vec4<i32>(1i, u_input.a, u_input.b.x, u_input.a)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.a, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 191f, -1000f)), ~arg_0.a.wyx).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2369f, 625f))))));
    var var_1 = u_input.b;
    var_0 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(0u, max(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(arg_0.a.yzw, vec3<u32>(arg_1.b, arg_0.c, 70491u))), arg_0.c), firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.a.zxw, vec3<u32>(arg_1.b, 0u, 42149u)), ~vec3<u32>(0u, var_0.d.c, 23668u)))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, -412f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -260f, 688f)))), vec4<bool>(true, global0.x == -890f, arg_1.a.x < arg_1.c, select(false, arg_2, arg_1.d.x)))), func_4(Struct_3(select(vec3<u32>(arg_0.b, arg_0.c, var_0.a.x), vec3<u32>(arg_0.a.x, 13493u, 1u), arg_2), var_0.c, Struct_1(vec4<i32>(var_0.c.b, 648i, var_1.x, var_1.x), 46092i, u_input.b.x, true, var_0.b.e), Struct_2(vec4<u32>(4294967295u, 1u, 72937u, 1u), 4294967295u, 82197u, vec4<bool>(arg_0.d.x, arg_0.d.x, true, true)), var_0.c), var_0.b).d.a.xwy), func_4(Struct_3(var_0.a, func_5(func_4(Struct_3(vec3<u32>(0u, arg_0.a.x, var_0.a.x), var_0.c, Struct_1(vec4<i32>(var_1.x, var_0.e.b, -1i, var_0.b.a.x), var_0.b.a.x, var_1.x, arg_1.d.x, global0.x), Struct_2(arg_1.a, arg_0.c, 49148u, vec4<bool>(arg_0.d.x, arg_0.d.x, arg_1.d.x, true)), Struct_1(vec4<i32>(var_0.c.b, 2147483647i, u_input.b.x, 2147483647i), 10038i, var_0.e.c, false, 1572f)), var_0.e)).e, func_4(func_4(Struct_3(arg_0.a.yww, var_0.c, Struct_1(vec4<i32>(-1i, var_0.e.b, u_input.a, u_input.a), -7650i, u_input.b.x, true, var_0.c.e), Struct_2(var_0.d.a, var_0.a.x, arg_0.b, arg_0.d), var_0.c), var_0.c), var_0.e).e, Struct_2(arg_1.a, 34620u, var_0.a.x, func_5(Struct_3(vec3<u32>(var_0.a.x, arg_0.c, var_0.d.a.x), var_0.b, Struct_1(vec4<i32>(var_0.e.c, -20747i, 1i, var_1.x), u_input.b.x, 1i, arg_0.d.x, global0.x), arg_0, var_0.b)).d.d), func_5(Struct_3(vec3<u32>(arg_0.b, 0u, 41249u), var_0.e, var_0.b, Struct_2(vec4<u32>(4294967295u, var_0.d.c, arg_1.a.x, arg_1.b), 0u, var_0.a.x, var_0.d.d), var_0.c)).e), Struct_1(min(func_5(Struct_3(arg_0.a.xzy, Struct_1(var_0.e.a, -1i, var_0.b.c, false, -819f), Struct_1(var_0.b.a, var_1.x, -1i, arg_0.d.x, global0.x), Struct_2(arg_1.a, 0u, var_0.a.x, var_0.d.d), var_0.c)).c.a, -var_0.b.a), var_1.x, _wgslsmith_div_i32(-var_1.x, func_4(Struct_3(vec3<u32>(arg_0.b, 4294967295u, arg_1.c), Struct_1(vec4<i32>(-1i, 1i, var_0.e.c, -1i), -8366i, -3577i, arg_0.d.x, 1000f), var_0.b, arg_1, Struct_1(vec4<i32>(u_input.b.x, 35715i, var_0.b.b, 35757i), 0i, 2147483647i, false, global0.x)), var_0.b).b.a.x), true, global0.x)).e, var_0.d, Struct_1(vec4<i32>(firstLeadingBit(select(-50436i, 0i, true)), u_input.a, func_2(vec4<f32>(876f, -473f, -356f, global0.x), vec3<u32>(20869u, 4294967295u, 4294967295u)).a.x >> (arg_0.b % 32u), 67154i), 1i, var_0.e.a.x, (true == arg_2) || var_0.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1322f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.zww), global0.zxy));
    var var_3 = abs(firstLeadingBit(select(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1772u, arg_1.c, arg_1.b)), ~vec3<u32>(var_0.d.c, arg_1.c, arg_0.c)), _wgslsmith_add_vec3_u32(var_0.d.a.wwy ^ arg_1.a.yww, vec3<u32>(arg_0.a.x, 4294967295u, arg_0.c)), !arg_0.d.wwz)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-810f, _wgslsmith_f_op_f32(-func_4(Struct_3(vec3<u32>(0u, arg_0.a.x, var_3.x), Struct_1(var_0.b.a, -19569i, u_input.b.x, arg_0.d.x, var_2.x), Struct_1(vec4<i32>(-17612i, u_input.b.x, var_0.e.a.x, -9330i), 0i, 1i, true, global0.x), Struct_2(arg_0.a, var_0.a.x, 0u, vec4<bool>(false, false, arg_1.d.x, arg_1.d.x)), Struct_1(vec4<i32>(2147483647i, var_0.b.b, 2147483647i, u_input.b.x), var_0.b.c, 45123i, false, var_0.e.e)), Struct_1(var_0.e.a, 8484i, u_input.a, true, 295f)).c.e), true)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(324f - -569f), _wgslsmith_f_op_f32(select(922f, -1122f, true)), true)), -1342f, 1176f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(338f * -286f), _wgslsmith_f_op_f32(434f + global0.x), _wgslsmith_f_op_f32(func_1(Struct_2(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 75837u, 1u, vec4<bool>(true, true, false, false)), Struct_2(vec4<u32>(37223u, 56855u, 4294967295u, 1u), 26640u, 0u, vec4<bool>(true, true, true, false)), true)), _wgslsmith_f_op_f32(608f + 549f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_4(Struct_3(vec3<u32>(6533u, 91889u, 0u), Struct_1(vec4<i32>(2147483647i, u_input.a, -3334i, 2147483647i), 0i, u_input.b.x, false, global0.x), Struct_1(vec4<i32>(2147483647i, u_input.a, u_input.b.x, u_input.a), 16952i, -18326i, true, 1445f), Struct_2(vec4<u32>(3719u, 55249u, 1u, 98426u), 13763u, 1u, vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-10736i, u_input.a, u_input.a, 0i), 2147483647i, u_input.a, true, global0.x)), Struct_1(vec4<i32>(-1i, 27723i, u_input.b.x, -12233i), u_input.a, 1i, false, -212f)).e.e))), 574f, -1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f * -1173f))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 826f)), vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), func_4(Struct_3(vec3<u32>(0u, 102494u, 4212u), Struct_1(vec4<i32>(2147483647i, u_input.a, 49687i, 34952i), u_input.a, 0i, true, -975f), Struct_1(vec4<i32>(u_input.b.x, 0i, -30304i, u_input.a), 1i, -3628i, false, global0.x), Struct_2(vec4<u32>(0u, 1u, 30712u, 9971u), 25212u, 29636u, vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(u_input.b.x, 18940i, -26299i, u_input.b.x), -1i, u_input.b.x, true, global0.x)), Struct_1(vec4<i32>(u_input.a, u_input.a, 21253i, 22628i), u_input.a, u_input.a, false, global0.x)).e.e, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(global0.x - 788f)))));
    var var_0 = func_4(Struct_3(min(vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(47044u, 106661u, 0u, 20610u), vec4<u32>(40050u, 1u, 4294967295u, 9095u)), 1u), reverseBits(~vec3<u32>(61069u, 27329u, 0u))), func_4(Struct_3(vec3<u32>(1u, 1u, 1u), func_2(vec4<f32>(global0.x, 1950f, 219f, 1858f), vec3<u32>(28037u, 1u, 52150u)), Struct_1(vec4<i32>(u_input.a, 1i, -25837i, 37699i), u_input.a, 1i, true, -997f), func_4(Struct_3(vec3<u32>(35592u, 48912u, 70365u), Struct_1(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -7690i), -25675i, -1i, false, 1563f), Struct_1(vec4<i32>(u_input.a, 1i, -21757i, u_input.a), 1944i, 55415i, true, global0.x), Struct_2(vec4<u32>(1445u, 81146u, 1u, 1u), 50823u, 88844u, vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(-9065i, 26288i, u_input.b.x, u_input.a), u_input.b.x, 60285i, false, global0.x)), Struct_1(vec4<i32>(17533i, 12555i, u_input.b.x, -1i), -2147483647i, u_input.a, true, -1469f)).d, func_4(Struct_3(vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a), -24777i, u_input.b.x, true, global0.x), Struct_1(vec4<i32>(u_input.a, -33008i, u_input.b.x, u_input.b.x), u_input.b.x, u_input.a, false, global0.x), Struct_2(vec4<u32>(0u, 19440u, 1u, 1u), 61885u, 29286u, vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x), 34386i, u_input.a, true, -248f)), Struct_1(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -20631i), u_input.b.x, u_input.a, false, 1310f)).b), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2494f, global0.x, global0.x) - vec4<f32>(1329f, -1000f, -2018f, global0.x)), vec3<u32>(1u, 1u, 1u))).c, func_5(Struct_3(vec3<u32>(63667u, 7328u, 4294967295u), func_4(Struct_3(vec3<u32>(4294967295u, 10074u, 1u), Struct_1(vec4<i32>(u_input.b.x, u_input.a, -5551i, 0i), 51849i, 45108i, false, -664f), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -1i), u_input.a, 8266i, false, global0.x), Struct_2(vec4<u32>(4294967295u, 23368u, 0u, 4294967295u), 65559u, 1u, vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(-14114i, u_input.b.x, u_input.b.x, 2147483647i), u_input.b.x, 2147483647i, false, -112f)), Struct_1(vec4<i32>(1i, u_input.a, u_input.b.x, u_input.b.x), -3314i, 2147483647i, true, 446f)).e, func_2(vec4<f32>(global0.x, 430f, global0.x, global0.x), vec3<u32>(85315u, 50504u, 0u)), Struct_2(vec4<u32>(0u, 2506u, 6301u, 1u), 14497u, 0u, vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -27175i), -1i, u_input.b.x, true, 1782f))).e, Struct_2(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_u32(4294967295u, 2846u, 3052u), 0u, vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.b.x, -4395i, u_input.b.x, u_input.b.x)) ^ vec4<i32>(-31461i, 34549i, u_input.a, u_input.a), u_input.a, abs(u_input.b.x), all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), func_5(Struct_3(vec3<u32>(1u, firstTrailingBit(1u), _wgslsmith_mult_u32(0u, 4294967295u)), func_4(Struct_3(vec3<u32>(47590u, 54868u, 1u), Struct_1(vec4<i32>(-1i, u_input.a, -2147483647i, u_input.b.x), 44320i, u_input.a, true, global0.x), Struct_1(vec4<i32>(u_input.a, u_input.a, 33911i, 19437i), u_input.a, u_input.a, true, global0.x), Struct_2(vec4<u32>(60879u, 0u, 35470u, 0u), 23277u, 4294967295u, vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(0i, u_input.a, 1i, -2147483647i), u_input.a, u_input.a, false, global0.x)), Struct_1(vec4<i32>(u_input.a, -58513i, -37381i, 0i), 1i, u_input.b.x, false, 697f)).c, func_5(func_4(Struct_3(vec3<u32>(20983u, 0u, 1u), Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i), u_input.b.x, -29096i, false, 284f), Struct_1(vec4<i32>(1i, u_input.b.x, -20762i, -37389i), u_input.a, -19081i, true, 406f), Struct_2(vec4<u32>(4294967295u, 1u, 12837u, 4294967295u), 94747u, 4388u, vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(u_input.a, -69469i, u_input.b.x, -30743i), -2147483647i, -14227i, false, -1000f)), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 38458i), u_input.a, u_input.b.x, true, 117f))).b, Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(74860u, 23557u, 0u, 12452u), vec4<u32>(1u, 49388u, 14270u, 99787u)), _wgslsmith_mod_u32(4294967295u, 1u), firstLeadingBit(40711u), vec4<bool>(true, true, true, true)), Struct_1(~vec4<i32>(u_input.a, 45265i, u_input.a, 1i), u_input.a, -u_input.a, all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(trunc(global0.x))))).b);
    let var_1 = 55934u == var_0.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.e, -1443f, -2111f, global0.x) * vec4<f32>(-688f, var_0.b.e, var_0.c.e, -446f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 105f, var_0.e.e, -1124f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.e, global0.x, var_0.b.e, var_0.e.e), vec4<f32>(-726f, 1425f, var_0.b.e, -249f), var_0.d.d)), var_1 && true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(264f, 394f, global0.x, -678f) - vec4<f32>(var_0.c.e, global0.x, global0.x, -2156f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, -693f, global0.x, var_0.b.e))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.e, 929f, 163f, var_0.c.e), vec4<f32>(1515f, 291f, 156f, -194f), var_0.d.d)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 467f, 174f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 2035f, -430f), vec4<f32>(global0.x, var_0.c.e, 103f, var_0.e.e)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.e, var_0.c.e, 1211f, 1666f), vec4<f32>(222f, 722f, var_0.e.e, 185f), true)) * vec4<f32>(var_0.b.e, global0.x, var_0.e.e, 465f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yw)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.wy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.e, global0.x))))), _wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 6780u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.b, var_0.d.a.x), var_0.d.a.zx)), ~_wgslsmith_clamp_vec2_u32(var_0.a.yz, vec2<u32>(13854u, var_0.a.x), var_0.d.a.xw), func_2(vec4<f32>(351f, var_0.b.e, var_0.c.e, 156f), ~vec3<u32>(var_0.d.b, 807u, 1u)).d), abs(vec2<u32>(~var_0.a.x, 26932u))), vec2<i32>(-var_0.e.c, firstLeadingBit(u_input.b.x << (4294967295u % 32u)) << ((18903u << (~var_0.d.c % 32u)) % 32u)), var_0.c.e, var_0.c.c);
}

