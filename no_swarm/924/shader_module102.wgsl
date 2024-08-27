struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(!vec2<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true))), vec4<f32>(-1330f, _wgslsmith_div_f32(271f, 744f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)))), _wgslsmith_f_op_f32(-1262f * -1440f)), vec4<u32>(_wgslsmith_mod_u32(0u << (_wgslsmith_mod_u32(6645u, u_input.b) % 32u), u_input.b), countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 100366u), 0u)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 30868u, u_input.a)), vec4<u32>(u_input.a, u_input.a, 7424u, u_input.a)), 23237u), vec3<bool>(false, all(vec3<bool>(45133u >= u_input.b, any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)))), any(vec4<bool>(all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, true, false)), false, true))));
    var var_1 = Struct_3(Struct_1(!select(select(vec2<bool>(var_0.d.x, var_0.d.x), var_0.a, vec2<bool>(var_0.a.x, true)), select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, false), var_0.d.x), select(var_0.a, vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(766f, var_0.b.x, -1437f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b)))), ~(~_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(0u, 1u, 144860u, u_input.b))), vec3<bool>(var_0.d.x, ~u_input.a == 40795u, all(vec4<bool>(false, true, var_0.a.x, var_0.a.x)) == false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(var_0.b.x, -1823f)) + _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, !any(vec4<bool>(var_0.d.x, var_0.a.x, false, true))))));
    var_0 = Struct_1(var_0.a, var_0.b, vec4<u32>(countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 80864u), var_0.c.yz))), _wgslsmith_div_u32(~23173u, 4294967295u), _wgslsmith_mult_u32(~(~4294967295u), firstTrailingBit(reverseBits(var_0.c.x))), _wgslsmith_mod_u32(u_input.a, ~var_0.c.x)), select(vec3<bool>(select(var_1.a.d.x, true, true), false, !var_0.a.x), vec3<bool>(true, any(vec3<bool>(var_0.d.x, var_1.a.d.x, var_0.a.x)), true), all(vec3<bool>(var_1.a.d.x, true, any(vec2<bool>(true, true))))));
    var_0 = var_1.a;
    var var_2 = var_1.a.c.xxw;
    return var_1.a.b.yyy;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(select(select(!arg_0.a.a, vec2<bool>(false, arg_0.a.a.x), arg_0.a.a), vec2<bool>(arg_0.a.b.x < _wgslsmith_f_op_f32(-arg_1.x), true), all(vec3<bool>(any(vec2<bool>(arg_0.a.a.x, false)), true, 0u >= u_input.a))), arg_0.a.b, vec4<u32>(~countOneBits(0u << (arg_0.a.c.x % 32u)), 4294967295u, ~u_input.b, 0u), !select(vec3<bool>(true, true, true), !select(arg_0.a.d, vec3<bool>(arg_0.a.d.x, arg_0.a.a.x, arg_0.a.d.x), arg_0.a.a.x), false));
    var var_1 = _wgslsmith_mod_vec4_u32(arg_0.a.c, vec4<u32>(4294967295u, u_input.b, arg_0.a.c.x, arg_0.a.c.x));
    var_1 = select(~arg_0.a.c, arg_0.a.c, var_0.d.x == true);
    let var_2 = _wgslsmith_sub_i32((1i >> (_wgslsmith_mult_u32(4294967295u, var_0.c.x) % 32u)) & ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, u_input.c), u_input.c & u_input.c), u_input.c);
    var_1 = _wgslsmith_sub_vec4_u32(var_0.c, arg_0.a.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) + _wgslsmith_f_op_f32(sign(-1020f)))))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: vec3<bool>) -> u32 {
    var var_0 = 0u;
    var_0 = ~_wgslsmith_mult_u32(32820u, max(u_input.a, 52826u));
    var_0 = ~((37948u | u_input.b) >> (23211u % 32u));
    var_0 = _wgslsmith_dot_vec4_u32(~(~arg_1), ~(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 7677u, arg_2.b), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) >> ((abs(vec4<u32>(arg_1.x, 21217u, arg_2.b, u_input.b)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 71441u, arg_1.x, u_input.b), vec4<u32>(27743u, 4294967295u, u_input.b, arg_1.x))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(select(select(vec2<bool>(arg_2.a.x, arg_0), vec2<bool>(false, arg_3.x), arg_2.a.xx), arg_2.a.zx, arg_2.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), 544f, _wgslsmith_f_op_f32(-arg_2.c.x), 1401f), vec4<u32>(_wgslsmith_mod_u32(1474u, arg_1.x), arg_1.x, arg_2.b, arg_2.b), arg_2.a), 295f), _wgslsmith_f_op_vec3_f32(func_3()), arg_2.c));
    return u_input.a;
}

fn func_1(arg_0: Struct_5) -> Struct_4 {
    var var_0 = abs(4294967295u);
    var var_1 = ~reverseBits((countOneBits(u_input.a) | _wgslsmith_mod_u32(0u, 48211u)) << (_wgslsmith_sub_u32(u_input.b | arg_0.b, firstTrailingBit(1u)) % 32u));
    var var_2 = _wgslsmith_clamp_vec3_u32(max(vec3<u32>(_wgslsmith_clamp_u32(arg_0.b, func_2(arg_0.a.x, vec4<u32>(14467u, arg_0.b, u_input.a, arg_0.b), arg_0, vec3<bool>(true, arg_0.a.x, true)), 19478u), 17073u, u_input.b), vec3<u32>(arg_0.b, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b, 72382u, 4294967295u)), firstTrailingBit(vec3<u32>(46584u, 0u, arg_0.b))), select(u_input.a, 43842u, arg_0.a.x))), select(min(firstTrailingBit(reverseBits(vec3<u32>(0u, u_input.a, u_input.b))), ~vec3<u32>(0u, 4294967295u, 0u) << (vec3<u32>(arg_0.b, 4294967295u, u_input.a) % vec3<u32>(32u))), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(22694u, 24991u, arg_0.b), vec3<u32>(arg_0.b, 1u, arg_0.b), vec3<u32>(0u, 0u, u_input.b))), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(~firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(73061u, 6933u, 21159u), min(vec3<u32>(arg_0.b, u_input.b, 1546u), vec3<u32>(88204u, 0u, 13506u))), u_input.b >> (abs(arg_0.b) % 32u)), reverseBits(abs(vec3<u32>(u_input.a, 0u, 8576u))), vec3<u32>(~_wgslsmith_sub_u32(u_input.a, arg_0.b), 22841u, _wgslsmith_mod_u32(~115061u, u_input.a))));
    var_1 = 0u;
    let var_3 = Struct_3(Struct_1(vec2<bool>(true, any(arg_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(495f, -811f, 743f, -774f) - vec4<f32>(arg_0.c.x, 1077f, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1050f, 1000f, arg_0.c.x, arg_0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(869f + -969f), 944f, _wgslsmith_div_f32(-2440f, -657f), _wgslsmith_f_op_f32(-arg_0.c.x))), abs(~(~vec4<u32>(51333u, 16310u, 1u, 4294967295u))), arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-846f * arg_0.c.x)));
    return Struct_4(reverseBits(var_3.a.c.xw) >> (abs(vec2<u32>(var_2.x | 0u, ~var_2.x)) % vec2<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_3.a.c.x), 4294967295u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = firstLeadingBit(vec3<u32>(~_wgslsmith_mult_u32(24151u, u_input.b), ~(~1u), abs(1u)));
    let var_1 = Struct_3(Struct_1(arg_1.a.zz, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x, arg_3.a.x, arg_3.a.x), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.b, arg_0.b, u_input.a), vec4<u32>(~45779u, u_input.a, ~0u, ~67175u)), !(!arg_1.a)), 1f);
    var_0 = select(~vec3<u32>(func_1(arg_1).a.x, 4294967295u, 0u), var_1.a.c.zwz, select(!select(!var_1.a.d, vec3<bool>(arg_3.e, false, false), any(vec2<bool>(arg_2, var_1.a.d.x))), select(!arg_1.a, !(!vec3<bool>(var_1.a.d.x, arg_1.a.x, true)), arg_3.e), false));
    let var_2 = 42646u;
    let var_3 = arg_0;
    return vec3<i32>(arg_3.d, u_input.c, ~u_input.c);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(arg_0.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(807f, 1792f, -144f, -930f), vec4<f32>(1406f, 1807f, 550f, -343f), arg_0)))), vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(4294967295u, abs(u_input.b)), u_input.a, 0u), vec3<bool>(arg_0.x, true, select(false, select(false, true, true), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f * -1435f) + _wgslsmith_f_op_f32(select(642f, 471f, true)))))));
    let var_1 = -40594i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a.b * var_0.a.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(102f, 482f, var_0.a.b.x, var_0.b), var_0.a.b)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b + var_0.a.b)))))), _wgslsmith_mod_i32(countOneBits(abs(i32(-1i) * -55640i)), u_input.c), vec4<i32>(~(~var_1), 1i, 1i, countOneBits(var_1)) >> (vec4<u32>(var_0.a.c.x, ~(~19587u), 3225u, 1u) % vec4<u32>(32u)), ~_wgslsmith_div_i32(var_1, -1i), true);
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1354f + var_2.a.x), -1511f, _wgslsmith_f_op_f32(-var_2.a.x), -1011f)), var_2.a)), (i32(-1i) * -21581i) << (var_0.a.c.x % 32u), -(firstTrailingBit(var_2.c) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(10264i, -19756i, arg_1.x, u_input.c), vec4<i32>(0i, var_2.d, var_2.d, 0i)), -var_2.c)), arg_1.x, false);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.b + var_0.a.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, var_2.a.x, var_0.a.b.x, var_0.b) * var_0.a.b)), arg_0)))), var_2.d ^ _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstTrailingBit(33704i), ~2147483647i), var_2.c.x, abs(arg_1.x)), vec4<i32>(countOneBits(u_input.c) >> ((var_0.a.c.x << (~u_input.a % 32u)) % 32u), _wgslsmith_mod_i32(abs(~u_input.c), 1i ^ -var_2.c.x), -2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 45953i, arg_1.x, -1i), var_2.c)), -94227i, true);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(var_0.a, var_2.a.x), var_3.a.yzy, var_2.a.xz)), -1528f, var_0.b, _wgslsmith_f_op_f32(exp2(var_0.a.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a), var_2.a))), firstTrailingBit((_wgslsmith_sub_i32(arg_1.x, var_2.d) << (_wgslsmith_mod_u32(var_0.a.c.x, u_input.a) % 32u)) ^ 2147483647i), reverseBits(min(select(var_2.c, vec4<i32>(-1i, 20253i, var_3.c.x, 2147483647i), true), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, -4604i, var_1), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, var_2.d))) >> (~select(vec4<u32>(9157u, u_input.a, 1u, var_0.a.c.x), var_0.a.c, vec4<bool>(true, false, true, var_2.e)) % vec4<u32>(32u))), reverseBits(0i), true || !(!var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<bool>(true, any(vec4<bool>(false, true, all(vec4<bool>(true, true, true, false)), select(false, true, true))), true, true), func_5(func_1(Struct_5(vec3<bool>(true, true, false), _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, 1882f)))), Struct_5(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), true), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(514f, -1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, 1000f) * vec2<f32>(-801f, 1204f)))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))) != true, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, -1418f, -438f, -127f)), vec4<f32>(-1805f, -152f, -1000f, 672f), vec4<bool>(true, true, true, true))), abs(_wgslsmith_sub_i32(-2147483647i, u_input.c)), vec4<i32>(i32(-1i) * -9780i, abs(68956i), u_input.c, -16067i), firstTrailingBit(~u_input.c), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))));
    var var_1 = var_0.c ^ firstLeadingBit(vec4<i32>(10530i, var_0.d, ~(-var_0.c.x), firstTrailingBit(-2147483647i)));
    var_1 = var_0.c;
    var var_2 = ~1u;
    var_2 = 1u;
    var_1 = _wgslsmith_mult_vec4_i32(firstTrailingBit(reverseBits(abs(vec4<i32>(-1i, 0i, var_1.x, 2147483647i)))) | (var_0.c & func_6(vec4<bool>(var_0.e, true, var_0.e, true), -var_1.zww).c), ~var_0.c);
    var var_3 = ~74008i;
    var var_4 = vec4<u32>(u_input.a, max(u_input.a, 1u), u_input.b, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 34048u, 22945u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(42293u, 1u, 17531u, u_input.a), vec4<u32>(u_input.b, u_input.b, 9265u, u_input.b))))) | min(vec4<u32>(~(~u_input.a), select(_wgslsmith_sub_u32(27200u, u_input.b), u_input.a, any(vec3<bool>(var_0.e, var_0.e, false))), u_input.a, u_input.b), vec4<u32>(1u ^ _wgslsmith_mod_u32(u_input.b, u_input.b), 1u, ~u_input.a, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(817f);
}

