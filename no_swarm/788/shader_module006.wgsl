struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1532f, 2758f) - _wgslsmith_f_op_f32(arg_2.x - var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1619f - arg_2.x))), _wgslsmith_f_op_f32(arg_3.c.b.x - _wgslsmith_f_op_f32(-var_0.b.x)), 448f)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1356f + var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(756f)) - _wgslsmith_f_op_f32(f32(-1f) * -700f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + -888f)), arg_2.x), Struct_1(_wgslsmith_sub_i32(2147483647i >> (~u_input.d % 32u), -(~var_0.d.x)), arg_2, reverseBits(vec2<u32>(reverseBits(var_0.e.c.x), ~34420u))), vec4<i32>(-1i, -var_0.c.a | var_0.c.a, ~arg_3.e.a >> (~u_input.b % 32u), arg_3.d.x) << (u_input.c % vec4<u32>(32u)), Struct_1(max(max(2147483647i, 1i), arg_3.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(860f, arg_3.c.b.x)) * vec2<f32>(-1066f, arg_2.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1, 0u), abs(vec2<u32>(arg_3.c.c.x, 9642u)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(249f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, var_0.a.x))))), Struct_1(_wgslsmith_div_i32(i32(-1i) * -1i, reverseBits(25133i)), var_0.a.wz, ~(~vec2<u32>(26324u, arg_3.e.c.x))), -_wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(arg_3.d.x, 1i, arg_3.e.a, 1i)), select(var_0.d, vec4<i32>(arg_3.e.a, var_0.e.a, -2147483647i, 17916i), true)), Struct_1(21555i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) * _wgslsmith_f_op_f32(ceil(var_0.e.b.x))), -1358f), var_0.e.c));
    var var_1 = 4294967295u;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) * -1931f), 1577f)), var_0.a.xyy, var_0.e, vec4<i32>(var_0.e.a << (_wgslsmith_mult_u32(u_input.b, 75988u) % 32u), arg_3.d.x, 1547i, -(-2147483647i << (u_input.d % 32u))), Struct_1(arg_3.e.a, _wgslsmith_f_op_vec2_f32(floor(var_0.b.yz)), countOneBits(~u_input.c.zw)));
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1723f, arg_2.x, 950f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, arg_2.x, 664f, 2140f))))) + vec4<f32>(923f, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), -1540f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -382f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), 780f)), arg_2.x)), Struct_1(-68i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2, vec2<f32>(arg_2.x, -273f))))), vec2<u32>(func_3(1u, 1u, vec2<f32>(1167f, -104f), Struct_2(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 2534f), vec3<f32>(arg_2.x, arg_2.x, arg_2.x), Struct_1(-2147483647i, vec2<f32>(1000f, arg_2.x), u_input.c.wx), vec4<i32>(0i, 2147483647i, arg_0.x, 1i), Struct_1(0i, vec2<f32>(arg_2.x, 1000f), vec2<u32>(0u, 1u)))), ~select(22988u, u_input.a, true))), vec4<i32>(-13094i, -29540i, _wgslsmith_mod_i32(~(-2204i), arg_0.x) >> (1u % 32u), ~_wgslsmith_mod_i32(14190i, -21784i)), Struct_1(min(-select(2147483647i, arg_1.x, false), arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(280f, arg_2.x)), arg_2.x < arg_2.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_3.x), vec2<u32>(1u, arg_3.x)) | ~vec2<u32>(arg_3.x, 0u)));
    let var_1 = vec4<bool>(true, !(~arg_3.x != var_0.e.c.x), true, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(496f))), arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(step(-2079f, -1360f)))) + vec2<f32>(939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - -374f) * arg_2.x))));
    var var_3 = var_0.a.x;
    var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    return Struct_1(_wgslsmith_dot_vec2_i32(~countOneBits(reverseBits(vec2<i32>(-24882i, 2147483647i))), arg_1.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, 1779f)))))), vec2<u32>(~countOneBits(~31368u), 1u));
}

fn func_1() -> f32 {
    let var_0 = func_2(~(~vec2<i32>(-5442i, 2147483647i << (u_input.a % 32u))), -(~_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -2147483647i, 33796i), ~vec3<i32>(13734i, 23601i, 51430i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-683f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f * 1145f) - _wgslsmith_f_op_f32(round(-544f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)))), _wgslsmith_mod_vec3_u32(u_input.c.xyx, vec3<u32>(~1u, 1u, 0u)));
    let var_1 = !(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), any(vec3<bool>(false, false, true))), vec3<bool>(true, false, true), false));
    var var_2 = _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, 36921i), vec2<i32>(var_0.a, var_0.a), vec2<i32>(-1i, 13331i)) << (reverseBits(vec2<u32>(var_0.c.x, 17658u)) % vec2<u32>(32u)), max(~vec2<i32>(-2147483647i, var_0.a), vec2<i32>(1i, 1i))), vec2<i32>(-49236i, var_0.a));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(839f + -1386f)));
    var_2 = vec2<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 12286i, var_2.x))), var_0.a);
    return -612f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1081f + -1977f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(779f, 480f, true))))));
    var var_1 = vec4<u32>(u_input.a, 70238u, u_input.b, 34588u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 931f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -194f) * vec4<f32>(1617f, -245f, 771f, var_0.x))))))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1662f, _wgslsmith_f_op_f32(round(-190f)))))), Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, _wgslsmith_div_f32(1437f, var_0.x))), ~u_input.c.xw), -abs(vec4<i32>(1i, 1i, 1i, 1i)), func_2(select(min(select(vec2<i32>(12858i, 1i), vec2<i32>(-33706i, -19762i), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 3121i), vec2<i32>(2147483647i, 28367i), vec2<i32>(108i, 9363i))), vec2<i32>(-2147483647i, 0i), vec2<bool>(true, true)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(29939i, 27590i, 2147483647i), vec3<i32>(1i, 1i, -124i)), func_2(vec2<i32>(-1i, -25269i), vec3<i32>(60935i, 0i, -22331i), vec2<f32>(862f, var_0.x), vec3<u32>(u_input.b, var_1.x, 46113u)).a, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 574f) * vec2<f32>(-690f, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, true))))), vec3<u32>(abs(u_input.b), countOneBits(u_input.c.x), min(29547u, 0u))));
    let var_3 = vec4<u32>(_wgslsmith_add_u32(select(102350u, var_2.c.c.x, select(true, select(true, false, true), true)), var_2.c.c.x << ((106073u ^ abs(u_input.c.x)) % 32u)), var_1.x & _wgslsmith_clamp_u32(~(var_1.x << (u_input.b % 32u)), ~(~4294967295u), ~1322u), ~4294967295u, ~var_1.x);
    let var_4 = true;
    let var_5 = var_2.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * var_2.b.x), 1223f))), var_2.e.c.x, _wgslsmith_div_u32(~60018u, var_3.x), var_3.ww);
}

