struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1259f, 252f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2173f, 1506f), vec2<f32>(457f, -1000f), vec2<bool>(false, false)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1092f, -1027f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(321f, 747f) - vec2<f32>(-133f, 371f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) + -1039f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), -109f), var_0.x)), 1979f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) * 260f)));
    let var_2 = -vec4<i32>(reverseBits(-2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(16829i, -2147483647i, 1i, -17706i), select(vec4<i32>(-2147483647i, -2147483647i, -10498i, 69850i), vec4<i32>(2147483647i, 0i, -25586i, -24590i), vec4<bool>(true, false, true, true))), -4033i, max(_wgslsmith_div_i32(1i, firstTrailingBit(1i)), _wgslsmith_mod_i32(-1i, firstLeadingBit(-2764i))), 2147483647i);
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * -152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_0.x)), true))), -2525f);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(arg_2, vec2<u32>(~u_input.a, 45371u | u_input.a) | _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(75874u, u_input.a), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u))), abs(vec2<u32>(0u, 4294967295u))), _wgslsmith_mod_vec3_i32(vec3<i32>(24641i, 1i, -13071i), _wgslsmith_div_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, 3605i, -1i)), vec3<i32>(i32(-1i) * -7134i, countOneBits(-8175i), i32(-1i) * -2147483647i))), ~(-firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -33937i), vec2<i32>(1i, -1i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) + 735f), true)), arg_1)));
    var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var_1 = _wgslsmith_f_op_f32(292f * _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(arg_2.x, arg_2.x)));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -652f)) * -214f))), _wgslsmith_f_op_f32(-var_0.a.x), true));
    return vec2<bool>(!(true | any(vec2<bool>(true, true))), true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(arg_0.c, abs(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c))));
    let var_1 = Struct_2(countOneBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.b.x, 6231u), 82261u)) | _wgslsmith_add_u32(~1u, arg_0.b.x), arg_0, vec3<bool>(any(!(!vec4<bool>(arg_2, arg_2, true, true))), any(func_4(arg_1, arg_1, _wgslsmith_f_op_vec3_f32(func_3()))), select(!all(vec4<bool>(true, arg_2, arg_2, true)), arg_2, ~arg_0.b.x < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 94365u, u_input.a), vec4<u32>(u_input.a, 56953u, u_input.a, arg_0.b.x)))));
    let var_2 = Struct_2(~arg_0.b.x, var_1.b, select(vec3<bool>(true, true, arg_2), select(select(var_1.c, !vec3<bool>(var_1.c.x, var_1.c.x, arg_2), true), !(!var_1.c), !vec3<bool>(false, arg_2, true)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x + arg_1), arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.a.x, arg_1, 100f), _wgslsmith_f_op_vec3_f32(-arg_0.a))).x));
    var var_3 = var_1.b;
    var var_4 = var_2;
    return vec4<bool>(!(!arg_2), any(select(!select(var_2.c, vec3<bool>(false, var_2.c.x, true), var_2.c), !select(vec3<bool>(arg_2, var_4.c.x, var_4.c.x), var_1.c, true), !(!var_2.c))), func_4(_wgslsmith_f_op_f32(1000f * 1083f), _wgslsmith_f_op_f32(-1037f + arg_0.a.x), var_4.b.a).x, any(var_4.c.xy));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true)), select(select(func_2(Struct_1(vec3<f32>(-769f, 402f, -138f), vec2<u32>(1u, 51154u), vec3<i32>(57950i, 0i, -21421i), 16540i), 616f, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false))), vec4<bool>(all(vec2<bool>(true, true)), func_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1042f, -1482f, -405f), vec3<f32>(507f, 1000f, 1312f)), vec2<u32>(var_0, 1u), -vec3<i32>(1i, 0i, -61743i), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(691f))), true).x, !all(vec2<bool>(true, false)), all(!func_2(Struct_1(vec3<f32>(-2265f, -402f, -1000f), vec2<u32>(var_0, 31569u), vec3<i32>(20527i, 59645i, 2147483647i), -2147483647i), 141f, false).zy)), !select(func_2(Struct_1(vec3<f32>(-1040f, -299f, -1250f), vec2<u32>(81078u, 0u), vec3<i32>(-2147483647i, -2147483647i, -1i), -2147483647i), _wgslsmith_f_op_f32(-316f + -162f), true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), true));
    let var_2 = 16223i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_f_op_f32(f32(-1f) * -1639f))))), _wgslsmith_f_op_vec3_f32(func_3()).x, -1424f));
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -816f, -406f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2413f, var_3.x, var_3.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))), !var_1.zyz));
    return Struct_2(~(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 6510u, u_input.a, 6006u), vec4<u32>(var_0, var_0, 4294967295u, u_input.a)), vec4<u32>(0u, 102729u, 4294967295u, var_0) & vec4<u32>(var_0, 0u, u_input.a, u_input.a)) | 25866u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x))), (abs(vec2<u32>(0u, u_input.a)) >> (~vec2<u32>(u_input.a, var_0) % vec2<u32>(32u))) ^ vec2<u32>(83787u | u_input.a, _wgslsmith_div_u32(u_input.a, 27344u)), abs(-max(vec3<i32>(-56564i, -2147483647i, -50820i), vec3<i32>(var_2, var_2, var_2))), max(var_2, var_2)), vec3<bool>(select(true, func_2(Struct_1(vec3<f32>(var_3.x, var_3.x, var_3.x), vec2<u32>(3195u, 20670u), vec3<i32>(3113i, 1i, var_2), var_2), -1434f, false).x, var_1.x), !(true | var_1.x), !var_1.x));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = countOneBits(_wgslsmith_div_vec2_u32(arg_2.b.b, vec2<u32>(~var_0.b.b.x ^ 0u, 1u)));
    let var_2 = arg_0.c | vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(909i, arg_0.c.x, 2147483647i)), arg_2.b.c.x, firstTrailingBit(arg_2.b.d));
    var var_3 = vec2<bool>((min(arg_0.b.x >> (1u % 32u), ~var_0.a) > (_wgslsmith_div_u32(arg_0.b.x, 1u) | (arg_0.b.x | 4294967295u))) || func_2(arg_0, _wgslsmith_f_op_f32(abs(1f)), !(!arg_1)).x, arg_1);
    let var_4 = func_1().b;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-570f, 682f, -926f))), vec3<f32>(385f, 1154f, 1224f), true)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1326f, -822f, -219f)))))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(233u, u_input.a, 28803u), _wgslsmith_clamp_vec3_u32(vec3<u32>(35185u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, u_input.a, u_input.a))), u_input.a), vec3<i32>(max(1i, -1i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(22212i, -26178i))), -2147483647i), ~41524i), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), false)) & select(true, true, all(vec4<bool>(false, false, false, true)) & all(vec4<bool>(false, true, false, true))), func_1());
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = var_0.c;
    let var_3 = func_1();
    let var_4 = max(firstTrailingBit(var_2.x), ~(~(var_1.b.d | -var_3.b.d)));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-33680i, var_3.b.c.x), ~vec2<i32>(var_1.b.d, var_0.c.x)), var_3.b.d) << (func_1().b.b.x % 32u), firstLeadingBit(select(abs(var_2.yz), -var_1.b.c.xx, _wgslsmith_f_op_f32(f32(-1f) * -152f) >= _wgslsmith_f_op_f32(min(var_1.b.a.x, var_3.b.a.x)))), vec4<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.d, var_1.b.d, 2147483647i, var_3.b.d), vec4<i32>(-1i, -51439i, 2752i, -1i))), var_2.x, ~_wgslsmith_dot_vec2_i32(var_3.b.c.xx, abs(vec2<i32>(2147483647i, -2147483647i))), max(var_2.x, -firstLeadingBit(-26050i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xx)));
}

