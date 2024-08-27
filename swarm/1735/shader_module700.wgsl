struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_u32(~(~min(vec4<u32>(arg_1.a.x, 48297u, arg_1.a.x, arg_1.a.x) << (vec4<u32>(14153u, 4294967295u, 32054u, arg_1.a.x) % vec4<u32>(32u)), vec4<u32>(100376u, 0u, arg_1.a.x, arg_1.a.x))), _wgslsmith_mod_vec4_u32(max(max(vec4<u32>(4294967295u, 1u, arg_1.a.x, arg_1.a.x), vec4<u32>(1u, 2846u, 1u, 1u)), select(vec4<u32>(arg_1.a.x, 17380u, arg_1.a.x, 1u), vec4<u32>(arg_1.a.x, 22503u, 0u, arg_1.a.x), vec4<bool>(false, false, arg_0.x, arg_3.b.e.a))), select(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 1u), vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 4070u), !vec4<bool>(arg_0.x, false, arg_0.x, arg_3.b.c.a))) << (reverseBits(firstTrailingBit(vec4<u32>(33651u, arg_1.a.x, 15171u, 42079u) | vec4<u32>(1u, arg_1.a.x, arg_1.a.x, arg_1.a.x))) % vec4<u32>(32u)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    let var_3 = arg_3.b.a.wwz;
    var var_4 = -(~(~u_input.b.xzy));
    return arg_3;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2.c.a;
    let var_1 = -51398i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1040f, 494f, arg_2.a.x)))))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1768i, arg_3.b), -1i), abs(min(11591i, arg_3.b))) ^ 1i, Struct_1(false), arg_3.e, Struct_1(true));
    let var_3 = arg_0.b;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(exp2(var_4.c));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, true || any(vec4<bool>(true, true, true, true)));
    var_0 = !select(vec2<bool>(false, false), !(!(!vec2<bool>(true, var_0.x))), var_0.x);
    var var_1 = 1f;
    let var_2 = ~select(min(~1u, ~1u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 0u, 4294967295u), 1u), firstLeadingBit(1u)), all(vec3<bool>(true, var_0.x, any(vec3<bool>(false, false, false)))));
    let var_3 = _wgslsmith_f_op_f32(max(1068f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(271f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -914f) - _wgslsmith_f_op_f32(round(-929f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(vec3<bool>(false, true, true), Struct_4(vec2<u32>(var_2, 4294967295u)), 1000f, Struct_3(u_input.d.zww, Struct_2(vec4<f32>(1130f, 1000f, 2079f, 120f), 0i, Struct_1(var_0.x), Struct_1(var_0.x), Struct_1(true)), 1876f)), ~vec2<i32>(1i, arg_0.x), Struct_2(vec4<f32>(766f, 623f, -956f, -436f), -1i, Struct_1(true), Struct_1(false), Struct_1(var_0.x)), func_2(vec3<bool>(var_0.x, var_0.x, false), Struct_4(vec2<u32>(var_2, var_2)), 1504f, Struct_3(u_input.d.zww, Struct_2(vec4<f32>(1646f, 959f, 785f, 1277f), 1i, Struct_1(var_0.x), Struct_1(var_0.x), Struct_1(var_0.x)), 113f)).b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1360f), _wgslsmith_f_op_f32(floor(627f))))));
    return func_2(vec3<bool>(false, all(vec4<bool>(false, true, true, true)), true), Struct_4(~countOneBits(firstLeadingBit(vec2<u32>(var_2, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) * _wgslsmith_f_op_f32(select(842f, 1666f, true))))), func_2(vec3<bool>(true, true, true), Struct_4(select(vec2<u32>(1u, 0u) | vec2<u32>(var_2, var_2), vec2<u32>(2106u, 11957u), var_0.x)), -2357f, Struct_3(u_input.b.zyy, func_2(!vec3<bool>(var_3, var_0.x, false), Struct_4(vec2<u32>(51109u, var_2)), _wgslsmith_div_f32(-462f, -1160f), Struct_3(vec3<i32>(-1i, 1i, u_input.c), Struct_2(vec4<f32>(1000f, 453f, 1333f, 1000f), u_input.c, Struct_1(var_3), Struct_1(true), Struct_1(var_0.x)), -446f)).b, 719f))).b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<i32>(13988i, ~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(-17889i, ~(-9130i), _wgslsmith_div_i32(-2147483647i, arg_0.a.x))));
    var_0 = _wgslsmith_mult_vec2_i32(-abs(reverseBits(~vec2<i32>(2147483647i, u_input.c))), max(vec2<i32>(3537i << (arg_2 % 32u), -arg_1.b), -arg_0.a.zz) & (-(~vec2<i32>(-30794i, arg_1.b)) ^ (arg_0.a.yz & _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.b, u_input.d.x), arg_0.a.xy))));
    let var_1 = Struct_3(u_input.d.zxz, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_0.c)))));
    var_0 = (arg_0.a.zx ^ _wgslsmith_mod_vec2_i32(arg_0.a.zz >> (vec2<u32>(20852u, arg_2) % vec2<u32>(32u)), firstLeadingBit(-arg_0.a.xy))) | var_1.a.xy;
    var_0 = vec2<i32>(arg_1.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.a.x ^ arg_1.b, ~var_1.b.b, 17626i), -arg_1.b) & var_1.b.b);
    return arg_1;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = ~firstLeadingBit(~1u);
    var_0 = abs(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(86386u, 1u), vec2<u32>(~34674u, abs(0u)))));
    let var_1 = Struct_1(!func_1(-(u_input.a & u_input.d.zx)).d.a);
    var var_2 = arg_0;
    var var_3 = var_2.a.zz;
    return Struct_3(select(vec3<i32>(u_input.d.x, ~_wgslsmith_sub_i32(arg_0.b, arg_0.b), u_input.d.x), vec3<i32>(_wgslsmith_clamp_i32(-u_input.c, _wgslsmith_mult_i32(arg_0.b, u_input.a.x), arg_0.b), arg_0.b, _wgslsmith_sub_i32(var_2.b >> (1u % 32u), 27869i)), vec3<bool>(arg_0.d.a, var_1.a, true)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(func_2(select(vec3<bool>(true, arg_0.e.a, var_1.a), vec3<bool>(var_2.e.a, false, arg_0.c.a), vec3<bool>(false, var_2.d.a, true)), Struct_4(vec2<u32>(0u, 1u)), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), func_2(vec3<bool>(var_2.e.a, var_2.c.a, arg_0.c.a), Struct_4(vec2<u32>(19522u, 32291u)), var_3.x, Struct_3(u_input.d.zxy, arg_0, arg_0.a.x))).b.a)), abs(arg_0.b), Struct_1(true), func_1(vec2<i32>(-1i | u_input.b.x, var_2.b)).c, Struct_1(func_2(!vec3<bool>(var_2.d.a, false, arg_0.d.a), Struct_4(vec2<u32>(44603u, 4294967295u)), var_3.x, func_2(vec3<bool>(true, false, var_2.d.a), Struct_4(vec2<u32>(51750u, 27061u)), arg_0.a.x, Struct_3(u_input.b.zzy, Struct_2(vec4<f32>(-830f, var_2.a.x, -619f, arg_0.a.x), 42040i, var_2.d, arg_0.e, var_1), arg_0.a.x))).b.d.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f)))));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_5 {
    var var_0 = vec3<i32>(arg_2.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(select(-70768i, u_input.a.x, arg_2.b.e.a), -u_input.a.x, u_input.c), vec3<i32>(-arg_2.a.x, u_input.d.x, arg_2.a.x)), -arg_2.b.b) & ((vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 17355i, u_input.c, arg_2.a.x), vec4<i32>(arg_2.a.x, arg_2.b.b, -8151i, -1i)), _wgslsmith_sub_i32(24646i, 1i), 0i) | func_2(vec3<bool>(true, true, arg_2.b.c.a), Struct_4(vec2<u32>(91013u, 4294967295u)), 1f, Struct_3(arg_2.a, Struct_2(arg_2.b.a, u_input.d.x, Struct_1(arg_2.b.c.a), arg_2.b.e, arg_2.b.c), arg_0)).a) & arg_2.a);
    var_0 = arg_2.a;
    var var_1 = func_5(arg_2.b).b;
    let var_2 = Struct_5(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), -var_0.zx);
    var_0 = ~vec3<i32>(0i, (u_input.a.x & -arg_2.b.b) | (i32(-1i) * -arg_2.a.x), _wgslsmith_clamp_i32(-(i32(-1i) * -33425i), -1i, -2147483647i));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(864f, select(true, true, true), func_5(func_4(Struct_3(vec3<i32>(-18082i, 101790i, -1301i), func_1(u_input.b.zz), _wgslsmith_f_op_f32(f32(-1f) * -178f)), Struct_2(vec4<f32>(-754f, -1476f, 392f, 223f), u_input.a.x, func_2(vec3<bool>(false, false, false), Struct_4(vec2<u32>(72707u, 38285u)), -566f, Struct_3(u_input.b.zxx, Struct_2(vec4<f32>(-294f, 655f, 1151f, 368f), 1i, Struct_1(false), Struct_1(false), Struct_1(true)), 493f)).b.e, func_1(u_input.b.yw).c, Struct_1(false)), ~(~0u))));
    var var_1 = var_0.b.x;
    var_1 = u_input.a.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f) - 1035f), _wgslsmith_f_op_f32(822f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1955f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1053f + func_1(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-86224i, var_0.b.x))).a.x))));
    let var_3 = Struct_1(-1369f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_2.x, true)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1981f, -1000f))));
    let var_4 = vec3<i32>(var_0.b.x, func_2(vec3<bool>(var_3.a, var_3.a, u_input.d.x == 1i), Struct_4(vec2<u32>(28473u, var_0.a.x)), 994f, func_2(vec3<bool>(var_3.a, var_3.a, false), Struct_4(vec2<u32>(var_0.a.x, var_0.a.x)), var_2.x, func_2(vec3<bool>(false, false, var_3.a), Struct_4(vec2<u32>(1u, 0u)), var_2.x, Struct_3(vec3<i32>(var_0.b.x, 19783i, -13556i), Struct_2(vec4<f32>(1326f, -281f, -532f, var_2.x), -2147483647i, Struct_1(true), var_3, Struct_1(false)), 1366f)))).a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30209u, 4294967295u, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, 34918u, 23840u, var_0.a.x)), ~var_0.a.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, 67734u, var_0.a.x), vec3<u32>(var_0.a.x, 282u, var_0.a.x))) % 32u), var_0.b.x);
    let var_5 = !vec3<bool>(!((var_0.a.x >> (var_0.a.x % 32u)) < 74488u), func_2(select(!vec3<bool>(var_3.a, var_3.a, true), vec3<bool>(var_3.a, var_3.a, false), true), Struct_4(~vec2<u32>(var_0.a.x, 33770u)), var_2.x, func_2(!vec3<bool>(true, var_3.a, true), Struct_4(var_0.a.wz), var_2.x, Struct_3(u_input.d.xzx, Struct_2(vec4<f32>(141f, -691f, var_2.x, var_2.x), var_4.x, var_3, var_3, var_3), -718f))).b.e.a, all(vec2<bool>(!var_3.a, var_3.a)));
    var_1 = -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.d.x, -1i, -2147483647i, -1i) >> (var_0.a % vec4<u32>(32u))), u_input.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, 738f, var_2.x, 478f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(923f, var_2.x, 1580f, 657f) - vec4<f32>(var_2.x, 433f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(967f, 2319f, -219f, -911f) + vec4<f32>(294f, 1000f, var_2.x, -728f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-func_2(var_5, Struct_4(vec2<u32>(var_0.a.x, var_0.a.x)), var_2.x, Struct_3(vec3<i32>(38955i, u_input.b.x, var_0.b.x), Struct_2(vec4<f32>(123f, 1000f, var_2.x, var_2.x), 1i, var_3, var_3, Struct_1(var_3.a)), var_2.x)).b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, 1777f, var_2.x, 967f)))))))));
}

