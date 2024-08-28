struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, -975f, 1591f, -385f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(398f, 579f, -647f, 253f) + vec4<f32>(-935f, 653f, 1000f, 377f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-627f, 593f, 1121f, 237f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 793f, -576f, -521f), vec4<f32>(922f, 213f, 1896f, -1050f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, 1189f, 316f, -289f) - vec4<f32>(469f, 448f, 845f, 1194f))), vec4<f32>(-653f, _wgslsmith_f_op_f32(select(347f, 604f, false)), -335f, -328f), true))));
    var var_1 = u_input.a.x;
    let var_2 = -1105f;
    let var_3 = (vec3<u32>(_wgslsmith_add_u32(~66113u, ~arg_2), 54417u, ~84109u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_2, firstTrailingBit(4294967295u), arg_2 >> (arg_2 % 32u)), vec3<u32>(0u, arg_2, 0u) ^ vec3<u32>(77000u, arg_2, arg_2))) << (~(~select(~vec3<u32>(arg_2, arg_2, 1u), ~vec3<u32>(arg_2, arg_2, 2894u), arg_0.x & arg_0.x)) % vec3<u32>(32u));
    var var_4 = Struct_2(Struct_1(-2928f, -vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, arg_1), select(2147483647i, -1i, true), 0i), max(~arg_2, var_3.x)), Struct_1(-1000f, ~(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, arg_1, -71986i))), var_3.x), Struct_1(var_2, -vec3<i32>(1i, 0i, 19129i), ~abs(var_3.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1781f - _wgslsmith_f_op_f32(-var_2)), 478f), vec3<i32>(-arg_1, 23843i, arg_1 >> (reverseBits(arg_2) % 32u)), 4294967295u));
    return any(!vec4<bool>(false, select(any(arg_0.xwy), any(vec2<bool>(arg_0.x, false)), any(arg_0.xyz)), any(vec3<bool>(true, true, arg_0.x)), arg_0.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 1363f, arg_0.x, -923f)))))))));
    let var_1 = !vec2<bool>(!(!func_3(vec4<bool>(arg_1, arg_1, arg_1, arg_1), u_input.a.x, 89450u)), any(vec2<bool>(arg_1, true)));
    var var_2 = !vec4<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.x, true), var_1.x), vec3<bool>(false, var_1.x, arg_1), var_1.x)), arg_1, func_3(select(vec4<bool>(var_1.x, arg_1, false, var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x), select(vec4<bool>(true, true, arg_1, false), vec4<bool>(true, false, true, arg_1), vec4<bool>(true, arg_1, var_1.x, var_1.x))), u_input.a.x, ~(~56667u)), true);
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~u_input.a.x, _wgslsmith_add_i32(abs(u_input.a.x), u_input.a.x), -41234i), vec4<i32>(0i, -9106i, ~_wgslsmith_sub_i32(u_input.a.x, -70174i), u_input.a.x)));
    var_2 = vec4<bool>(true, var_1.x, all(var_1), var_2.x);
    return Struct_2(Struct_1(arg_0.x, ~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), 50262u ^ (_wgslsmith_div_u32(118152u, 4294967295u) & firstTrailingBit(16961u))), Struct_1(var_0.x, vec3<i32>(u_input.a.x, abs(17034i), i32(-1i) * -2147483647i), 46741u), Struct_1(_wgslsmith_f_op_f32(floor(arg_0.x)), select(~countOneBits(vec3<i32>(0i, u_input.a.x, -2147483647i)), vec3<i32>(abs(-1i), firstLeadingBit(-3630i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-50968i, -20624i))), vec3<bool>(any(vec3<bool>(false, false, false)), select(true, true, arg_1), arg_1)), ~(~1u >> (1u % 32u))), Struct_1(-1745f, vec3<i32>(0i | ~u_input.a.x, min(0i, _wgslsmith_div_i32(-1i, -1i)), firstTrailingBit(u_input.a.x)), abs(_wgslsmith_add_u32(_wgslsmith_div_u32(41176u, 26802u), 1u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = any(vec4<bool>(!any(vec2<bool>(false, false)), false, func_3(vec4<bool>(true, true, true, true), 1i, arg_0.b.c), false));
    let var_1 = _wgslsmith_dot_vec3_i32(arg_0.c.b, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.d.b, vec3<i32>(arg_1.x, u_input.a.x, arg_1.x)), ~vec3<i32>(5913i, arg_2.x, u_input.a.x)) >> (~reverseBits(vec3<u32>(4294967295u, 1u, 23037u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, -arg_1.x, _wgslsmith_div_i32(arg_2.x, -18486i)), vec3<i32>(select(u_input.a.x, u_input.a.x, var_0), ~arg_1.x, -5796i ^ u_input.a.x))));
    let var_2 = select(vec4<bool>(!var_0, !all(vec2<bool>(var_0, var_0)), all(vec2<bool>(!var_0, true)), 156f != _wgslsmith_f_op_f32(-func_2(vec2<f32>(arg_0.a.a, 706f), var_0).d.a)), vec4<bool>(any(vec4<bool>(var_0, all(vec2<bool>(true, var_0)), true, all(vec4<bool>(var_0, true, var_0, false)))), false, !all(vec2<bool>(false, var_0)) & (!var_0 && (arg_0.c.c != 22738u)), true), var_0);
    let var_3 = Struct_2(Struct_1(arg_0.a.a, arg_0.c.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~25391u, _wgslsmith_div_u32(arg_0.b.c, 27325u), firstTrailingBit(arg_0.b.c), arg_0.c.c | 0u), abs(~vec4<u32>(24118u, 0u, arg_0.b.c, arg_0.b.c)))), arg_0.a, Struct_1(-722f, countOneBits(arg_0.b.b) << (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, arg_0.a.c), vec3<u32>(13402u, 4294967295u, 33451u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(30663u, arg_0.a.c, 0u), vec3<u32>(arg_0.c.c, arg_0.b.c, 39783u), vec3<u32>(0u, 1u, arg_0.c.c))) % vec3<u32>(32u)), arg_0.a.c), func_2(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.a, _wgslsmith_f_op_f32(375f + 324f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.a * arg_0.d.a), arg_0.a.a))), (335f > arg_0.b.a) || true).b);
    let var_4 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(arg_0.b.c, 0u), var_3.a.c), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 31351u), vec2<u32>(var_3.b.c, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.c, 24823u), vec2<u32>(var_3.c.c, 1u)))), max(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.a.c), vec2<u32>(14138u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.b.c, arg_0.c.c), (vec2<u32>(36884u, 59073u) << (vec2<u32>(var_3.c.c, arg_0.c.c) % vec2<u32>(32u))) ^ vec2<u32>(4294967295u, 2996u))), true);
    return !select(var_2.xx, var_2.yy, var_0);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1433f)) + -1000f);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -217f)));
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1921f, 1330f) * vec2<f32>(851f, -603f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1485f, -1548f), vec2<f32>(-715f, -1136f), arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -540f)))), any(!select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_1, arg_0.x, true), vec3<bool>(false, arg_1, arg_1))))), true).d.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f + -1650f))))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.a.x, u_input.a.x, 0i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, 76198u, 4059u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a.x, -82725i, 1453i)), -abs(vec3<i32>(2147483647i, 1i, u_input.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_2(vec2<f32>(1f, _wgslsmith_f_op_f32(min(-771f, 226f))), any(!vec4<bool>(arg_1, arg_1, arg_1, true))).a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(63166u, 42970u, 4294967295u, 114362u)), ~22184u, ~_wgslsmith_mod_u32(14570u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(94786u, 4294967295u, 11101u), firstTrailingBit(vec3<u32>(0u, 1u, 1u))) << (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 55468u, 46053u), vec3<u32>(28318u, 1u, 51672u)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1678f, var_1.a)), !arg_1).b.a)));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(vec2<f32>(-800f, -140f), true), vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(37021i, u_input.a.x)), true))), vec3<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a)), _wgslsmith_add_i32(-1i, abs(i32(-1i) * -33487i)), u_input.a.x), 27838u);
    var var_1 = ~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, var_0.b.x, -2147483647i, 16185i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, 8416i, var_0.b.x, -9164i), vec4<i32>(1i, 44617i, var_0.b.x, -2147483647i))), _wgslsmith_add_vec4_i32(-vec4<i32>(-6683i, 0i, var_0.b.x, u_input.a.x), vec4<i32>(57825i, u_input.a.x, u_input.a.x, var_0.b.x) & vec4<i32>(0i, var_0.b.x, u_input.a.x, 45399i))), firstLeadingBit(select(vec4<i32>(-1i, -1647i, 27720i, 1i), firstTrailingBit(vec4<i32>(19824i, u_input.a.x, 106125i, var_0.b.x)), vec4<bool>(true, false, true, true))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(831f, var_0.a)))))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false), true))));
    var_1 = select(~select(~vec4<i32>(var_1.x, var_1.x, 12574i, -17581i) & ~vec4<i32>(u_input.a.x, var_2.c.b.x, u_input.a.x, var_0.b.x), select(vec4<i32>(var_1.x, var_2.b.b.x, var_0.b.x, var_2.c.b.x), -vec4<i32>(-1i, var_0.b.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), abs(vec4<i32>(~var_2.a.b.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -26272i, u_input.a.x, 1i), vec4<i32>(var_0.b.x, 1i, var_2.c.b.x, 1i)), min(var_0.b.x, -11065i)) | ~(~vec4<i32>(u_input.a.x, var_0.b.x, 0i, var_2.a.b.x))), all(!vec3<bool>(func_3(vec4<bool>(false, false, false, true), u_input.a.x, 4294967295u), any(vec2<bool>(false, false)), true)));
    var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(-var_0.b.x, 16927i, firstTrailingBit(1i), _wgslsmith_add_i32(var_2.d.b.x, -2147483647i)), ~(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, var_0.b.x) >> (vec4<u32>(var_2.b.c, var_2.d.c, 0u, 1u) % vec4<u32>(32u))) & vec4<i32>(abs(-1i), 18340i, func_2(vec2<f32>(617f, var_0.a), false).d.b.x, var_0.b.x));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.b.a), var_0.b, 17632u | _wgslsmith_sub_u32(var_0.c, countOneBits(var_2.c.c) << (10845u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1914f + var_1.a))) + _wgslsmith_f_op_f32(func_5(select(!(!vec2<bool>(var_0, var_0)), vec2<bool>(var_0, true || var_0), func_4(func_2(vec2<f32>(550f, var_1.a), var_0), vec2<i32>(u_input.a.x, var_1.b.x), ~vec2<i32>(var_1.b.x, 0i))), true)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1218f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -371f)))), vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(~2147483647i, u_input.a.x), _wgslsmith_div_i32(20523i, abs(var_1.b.x) | u_input.a.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(1u, 4294967295u)), vec2<u32>(var_1.c, 58448u)), select(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c, 4294967295u), countOneBits(vec2<u32>(4294967295u, 57387u))), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, var_1.c), vec2<u32>(var_1.c, 1u)), func_4(Struct_2(Struct_1(-1567f, vec3<i32>(var_1.b.x, 47848i, u_input.a.x), var_1.c), Struct_1(-148f, var_1.b, var_1.c), Struct_1(636f, vec3<i32>(1i, var_1.b.x, var_1.b.x), var_1.c), Struct_1(533f, vec3<i32>(var_1.b.x, -1i, var_1.b.x), var_1.c)), u_input.a, u_input.a).x)));
    var_1 = func_1();
    let var_3 = select(vec4<bool>(true, all(!(!vec4<bool>(var_0, var_0, var_0, var_0))), true, true), vec4<bool>(~func_2(vec2<f32>(-1310f, var_2), var_0).c.b.x <= 7720i, !(!all(vec4<bool>(false, var_0, true, var_0))), all(vec2<bool>(false, true)), 42656i >= u_input.a.x), !any(vec4<bool>(!var_0, true, func_3(vec4<bool>(var_0, var_0, var_0, false), u_input.a.x, 0u), any(vec2<bool>(false, false)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-1917f, _wgslsmith_f_op_f32(-318f + _wgslsmith_f_op_f32(-var_1.a)), all(select(var_3.wxz, var_3.wyz, var_3.wxz)))), select(var_1.b, ~_wgslsmith_div_vec3_i32(vec3<i32>(62525i, u_input.a.x, 23602i), var_1.b), vec3<bool>(!var_3.x, func_4(Struct_2(Struct_1(1097f, vec3<i32>(0i, u_input.a.x, 1438i), 1u), Struct_1(1712f, var_1.b, 80434u), Struct_1(var_2, var_1.b, 8036u), Struct_1(-815f, var_1.b, 61404u)), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a).x, true)), 22833u), Struct_1(200f, -_wgslsmith_sub_vec3_i32(~var_1.b, reverseBits(var_1.b)), ~func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, 952f), vec2<f32>(1000f, var_1.a))), false).c.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f))), vec3<i32>(-(u_input.a.x & var_1.b.x), _wgslsmith_div_i32(~2325i, var_1.b.x), ~(-2147483647i)), var_1.c), func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(545f, 330f)), func_2(vec2<f32>(-943f, -242f), var_0).c.a)), var_3.x).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-640f, var_4.d.a), vec2<f32>(var_4.c.a, var_4.b.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.a, var_1.a) - vec2<f32>(var_1.a, 1915f))))), max(0i, var_4.b.b.x), min(var_4.a.b.x >> (_wgslsmith_add_u32(firstLeadingBit(41667u), 22455u) % 32u), reverseBits(var_4.a.b.x)));
}

