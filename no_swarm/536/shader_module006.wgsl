struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = min(abs(_wgslsmith_mult_vec4_i32(countOneBits(abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, -39617i, 2147483647i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1898i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 15978i, 16653i, u_input.a.x))))), ~(~vec4<i32>(u_input.a.x, u_input.a.x, -22178i, u_input.a.x)) ^ vec4<i32>(~u_input.a.x, -4617i, -4610i, u_input.a.x));
    var_0 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.x, 7296i, 1i, u_input.a.x), vec4<i32>(-23353i, u_input.a.x, u_input.a.x, 1i)) & vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), countOneBits(vec4<i32>(-22139i, -2147483647i, 10270i, 1i)) << (vec4<u32>(u_input.c, arg_3.a, 7374u, 1u) % vec4<u32>(32u))), ~min(vec4<i32>(-1i, -8322i, -2625i, -15102i) >> (vec4<u32>(u_input.b.x, 1u, u_input.c, 77402u) % vec4<u32>(32u)), vec4<i32>(21357i, 1i, u_input.a.x, -21134i))), vec4<i32>(_wgslsmith_mult_i32(var_0.x, ~_wgslsmith_mod_i32(0i, u_input.a.x)), var_0.x, var_0.x, max(-var_0.x, -_wgslsmith_div_i32(u_input.a.x, var_0.x))), !select(select(!vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, arg_1, false, arg_1), false), !vec4<bool>(arg_1, arg_1, true, arg_1), false));
    var var_1 = Struct_3(Struct_1(u_input.b.x, vec3<u32>(~1u, ~firstLeadingBit(0u), arg_3.a)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(-216f - 620f))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(199f, _wgslsmith_div_f32(arg_2.x, -1000f)))), -1065f), true, ~vec2<u32>(6620u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 16758u), vec2<u32>(arg_0.e.x, u_input.c))), vec2<u32>(_wgslsmith_div_u32(~firstLeadingBit(arg_3.a), _wgslsmith_clamp_u32(u_input.b.x, 0u, 70677u) & (arg_3.b.x | u_input.b.x)), ~_wgslsmith_mult_u32(u_input.c, arg_3.a)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(987f, 1407f))))), var_1.b.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = arg_1.d;
    let var_1 = countOneBits(abs(_wgslsmith_div_vec3_i32(~vec3<i32>(-10530i, arg_3, 27445i), _wgslsmith_sub_vec3_i32(vec3<i32>(3010i, u_input.a.x, arg_3), vec3<i32>(arg_3, u_input.a.x, arg_3))))) >> (var_0.b % vec3<u32>(32u));
    let var_2 = 0i;
    let var_3 = ~vec2<u32>(50068u, _wgslsmith_sub_u32(var_0.a | ~1u, var_0.b.x));
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_0, vec4<f32>(-510f, -639f, arg_0.b, 840f), true, arg_1.d.b.xy, vec2<u32>(1u, var_4.a.b.x)), true, vec4<f32>(arg_1.b, 559f, arg_1.b, 1093f), arg_2))) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1271f))) - _wgslsmith_f_op_f32(round(arg_1.b))), arg_1.b));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_1(u_input.c, vec3<u32>(u_input.b.x, 28018u, firstLeadingBit(reverseBits(u_input.b.x))) >> (~vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 36495u, 1u >> (u_input.b.x % 32u)) % vec3<u32>(32u)));
    let var_1 = Struct_3(Struct_1(1u, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), arg_1, true, max(~u_input.b.zx, select(var_0.b.yy, u_input.b.xz, !any(vec3<bool>(false, true, false)))), ~u_input.b.xx);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(var_1.b.x - arg_0)));
    var var_4 = select(select(vec2<bool>(~17431u > _wgslsmith_dot_vec2_u32(var_1.e, vec2<u32>(var_0.b.x, 1u)), var_1.c), select(select(vec2<bool>(true, var_1.c), !vec2<bool>(var_1.c, var_1.c), false), vec2<bool>(var_1.c, var_1.c), var_1.c), false), vec2<bool>(_wgslsmith_div_u32(~33956u, var_0.a) > var_0.a, any(vec3<bool>(var_1.c | var_1.c, u_input.a.x == u_input.a.x, true))), !(true | var_1.c));
    return _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, u_input.a.x), ~(u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0.b.xx) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(max(~_wgslsmith_clamp_u32(arg_1.b.x, u_input.b.x, 0u), ~max(1u, 4294967295u)), ~arg_2.a.b), _wgslsmith_f_op_f32(floor(arg_2.b)), min(u_input.b.zz ^ ~arg_1.b.yy, select(~_wgslsmith_mult_vec2_u32(u_input.b.yy, arg_2.a.b.zz), firstTrailingBit(countOneBits(vec2<u32>(u_input.c, 24347u))), select(vec2<bool>(false, false), vec2<bool>(false, true), all(vec4<bool>(true, false, false, true))))), Struct_1(46489u, _wgslsmith_sub_vec3_u32(arg_2.d.b | u_input.b, countOneBits(vec3<u32>(arg_2.a.b.x, 36505u, u_input.c)))));
    var_0 = Struct_2(arg_2.a, 1000f, _wgslsmith_mod_vec2_u32(u_input.b.yx, firstTrailingBit(countOneBits(~vec2<u32>(18036u, 4294967295u)))), Struct_1(arg_2.d.a, ~u_input.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -678f), var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -544f), -2538f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_1.x) - 718f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1819f))), 1101f))));
    let var_2 = select(select(vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)), (arg_1.b.x <= arg_1.b.x) | true), vec2<bool>(false, false), !vec2<bool>(u_input.a.x != 16541i, true)), vec2<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)), true), vec2<bool>(true, true));
    return Struct_3(Struct_1(u_input.b.x, firstLeadingBit(arg_2.d.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, arg_2.b, var_0.b)) - vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-arg_2.b), var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, _wgslsmith_f_op_f32(exp2(arg_2.b)), _wgslsmith_div_f32(arg_2.b, 462f), _wgslsmith_f_op_f32(518f + var_0.b)))), true || all(vec3<bool>(var_2.x | true, var_2.x, any(var_2))), firstTrailingBit(vec2<u32>(~10312u, _wgslsmith_mod_u32(arg_1.b.x, 1u) ^ 4294967295u)), max(reverseBits(vec2<u32>(firstLeadingBit(arg_2.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_1.b.x, 0u, 1u), vec4<u32>(0u, arg_2.d.b.x, 31669u, 0u)))), vec2<u32>(select(1u, 17078u, var_2.x) ^ _wgslsmith_div_u32(1u, var_0.c.x), ~(~4294967295u))));
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1630f * 673f) * _wgslsmith_f_op_f32(-1117f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(921f, 1000f, false)), _wgslsmith_f_op_f32(step(525f, -1000f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(416f)));
    var var_4 = func_5(-_wgslsmith_add_i32(func_4(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(69049u, vec3<u32>(0u, 10758u, u_input.b.x)), -676f, vec2<u32>(u_input.b.x, u_input.c), Struct_1(7263u, vec3<u32>(6755u, 1u, u_input.c))), Struct_2(Struct_1(59665u, u_input.b), 2120f, u_input.b.zy, Struct_1(47667u, u_input.b)), Struct_1(u_input.c, u_input.b), 18040i))), func_4(_wgslsmith_f_op_f32(-var_3), vec4<f32>(1155f, var_2, var_3, 242f))), Struct_1(4294967295u, ~(~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(5288u, 4251u, u_input.c)))), Struct_2(Struct_1(u_input.b.x, vec3<u32>(~u_input.c, 4294967295u, ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-var_3)), vec2<u32>(~(~5261u), u_input.b.x), Struct_1(~(~19289u), max(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 14074u)))));
    return _wgslsmith_dot_vec3_u32(~(~reverseBits(var_4.a.b) | u_input.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(~u_input.c, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xz), 83328u << (u_input.c % 32u))), vec4<u32>(u_input.b.x, func_1() | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), vec2<u32>(39006u, u_input.b.x)), u_input.c, func_5(u_input.a.x, func_5(-7256i, Struct_1(u_input.c, u_input.b), Struct_2(Struct_1(0u, vec3<u32>(u_input.c, u_input.c, 1u)), 899f, vec2<u32>(1u, u_input.c), Struct_1(4294967295u, vec3<u32>(u_input.c, u_input.c, u_input.c)))).a, Struct_2(Struct_1(4294967295u, vec3<u32>(1124u, u_input.c, 27132u)), -2270f, vec2<u32>(u_input.b.x, 1u), Struct_1(105266u, vec3<u32>(u_input.c, u_input.b.x, 12087u)))).a.a)), ~(~reverseBits(vec4<u32>(u_input.b.x, u_input.c, u_input.c, 4294967295u) & vec4<u32>(u_input.c, 1u, 18653u, 0u))));
    let var_1 = u_input.a.x != 7507i;
    var var_2 = Struct_2(func_5(-3649i, func_5(u_input.a.x, func_5(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), func_5(24295i, Struct_1(52781u, vec3<u32>(46818u, 7814u, u_input.b.x)), Struct_2(Struct_1(var_0.x, var_0.zzy), 1000f, var_0.xx, Struct_1(u_input.b.x, vec3<u32>(var_0.x, 4294967295u, 25531u)))).a, Struct_2(Struct_1(15635u, var_0.zwz), -871f, vec2<u32>(4294967295u, var_0.x), Struct_1(4294967295u, vec3<u32>(4294967295u, u_input.c, 53760u)))).a, Struct_2(Struct_1(var_0.x, var_0.wyy), -1361f, countOneBits(vec2<u32>(u_input.b.x, 0u)), Struct_1(12571u, vec3<u32>(u_input.b.x, var_0.x, u_input.c)))).a, Struct_2(Struct_1(0u, vec3<u32>(var_0.x, 6813u, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), (vec2<u32>(43164u, var_0.x) & vec2<u32>(var_0.x, var_0.x)) << (firstLeadingBit(vec2<u32>(u_input.c, var_0.x)) % vec2<u32>(32u)), Struct_1(u_input.c & 23766u, ~var_0.wwy))).a, 721f, u_input.b.xx, func_5(_wgslsmith_sub_i32(u_input.a.x, min(u_input.a.x, -7519i)), Struct_1(select(17273u, 1u, true), reverseBits(var_0.zyw)), Struct_2(func_5(u_input.a.x, func_5(u_input.a.x, Struct_1(u_input.c, vec3<u32>(106370u, 4294967295u, 4294967295u)), Struct_2(Struct_1(u_input.c, vec3<u32>(13020u, 15875u, u_input.b.x)), -320f, vec2<u32>(94681u, u_input.b.x), Struct_1(5908u, vec3<u32>(var_0.x, 41229u, var_0.x)))).a, Struct_2(Struct_1(1u, vec3<u32>(4294967295u, 347u, u_input.c)), -1054f, vec2<u32>(1u, u_input.c), Struct_1(0u, u_input.b))).a, _wgslsmith_f_op_f32(max(-129f, _wgslsmith_div_f32(650f, 859f))), vec2<u32>(0u, 1u), func_5(1i, func_5(23468i, Struct_1(4294967295u, u_input.b), Struct_2(Struct_1(1u, u_input.b), -754f, u_input.b.xy, Struct_1(14010u, u_input.b))).a, Struct_2(Struct_1(0u, vec3<u32>(4294967295u, var_0.x, u_input.b.x)), 500f, u_input.b.yy, Struct_1(22000u, u_input.b))).a)).a);
    var var_3 = ~(vec3<i32>(4606i, _wgslsmith_sub_i32(-1i, 30249i), 0i) | reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(13030i, u_input.a.x, 1i), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_4 = !vec4<bool>(any(vec3<bool>(var_1 == var_1, var_1 & true, all(vec2<bool>(false, var_1)))), ((var_2.b != var_2.b) & all(vec2<bool>(var_1, var_1))) && (any(vec4<bool>(var_1, false, var_1, var_1)) && all(vec2<bool>(var_1, var_1))), _wgslsmith_f_op_f32(var_2.b + var_2.b) > var_2.b, true);
    let var_5 = func_5(max(var_3.x, u_input.a.x), var_2.a, Struct_2(Struct_1(var_0.x, vec3<u32>(u_input.c, u_input.b.x, 26749u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b * 672f))), -840f, true)), _wgslsmith_add_vec2_u32(~var_2.c, vec2<u32>(4294967295u, u_input.c)), func_5(var_3.x, func_5(-28595i, func_5(u_input.a.x, Struct_1(4294967295u, vec3<u32>(16146u, 0u, 12884u)), Struct_2(Struct_1(1u, vec3<u32>(u_input.c, 55069u, var_2.c.x)), var_2.b, var_2.c, var_2.d)).a, Struct_2(Struct_1(var_0.x, vec3<u32>(u_input.b.x, var_2.a.a, var_2.d.b.x)), -484f, vec2<u32>(0u, 0u), var_2.d)).a, Struct_2(var_2.a, 1230f, vec2<u32>(13021u, 91001u), var_2.a)).a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30202u), vec2<u32>(0u, 55161u)), countOneBits(var_0.x)), vec3<u32>(~var_0.x, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20758u, 1u, u_input.b.x), var_0))), var_2.b);
}

