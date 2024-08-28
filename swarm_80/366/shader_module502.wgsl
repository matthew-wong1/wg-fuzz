struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_u32(u_input.a, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)));
    var_1 = arg_0.a;
    var var_2 = vec3<bool>(true & !all(!vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b)), arg_0.b, !all(!(!vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1584f);
    return vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(~_wgslsmith_div_i32(~u_input.b.x, -u_input.b.x), select(~1i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 0i, -1i)) << (15961u % 32u), !(true && var_2.x))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = ~select(_wgslsmith_sub_u32(countOneBits(u_input.a) ^ _wgslsmith_add_u32(arg_2.c.x, u_input.a), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.c.x, arg_2.c.x, ~u_input.a), firstTrailingBit(arg_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(arg_3.x * arg_2.e.a)) < -1584f);
    let var_1 = -(-1i ^ firstLeadingBit(arg_2.a));
    let var_2 = Struct_2(42878u, arg_2.b.x && ((arg_1 & _wgslsmith_div_i32(-16879i, -1i)) < 24210i));
    var var_3 = reverseBits(_wgslsmith_add_vec4_i32(func_3(Struct_3(_wgslsmith_f_op_f32(arg_3.x * arg_2.e.a), false), vec3<f32>(_wgslsmith_f_op_f32(arg_3.x + arg_2.e.a), arg_3.x, arg_2.e.a)), -(~vec4<i32>(-2147483647i, 7589i, u_input.b.x, 23013i) & (vec4<i32>(14524i, 0i, u_input.b.x, 15440i) << (arg_2.c % vec4<u32>(32u))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.a, _wgslsmith_f_op_f32(-520f + arg_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 731f)), 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -804f, -1000f, arg_2.d.x) - vec4<f32>(1623f, -1868f, arg_3.x, 1867f)) - _wgslsmith_f_op_vec4_f32(-arg_2.d))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_div_f32(arg_2.e.a, 100f), arg_2.d.x, 2669f) + _wgslsmith_f_op_vec4_f32(exp2(arg_2.d)))));
    return Struct_2(124u, !(!(!arg_0 && (u_input.a != 1u))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_add_i32(u_input.b.x, 1i & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x))), !vec4<bool>(!all(vec2<bool>(true, false)), true, !arg_1.b, 1430f == _wgslsmith_f_op_f32(-arg_2.x)), vec4<u32>(~38555u, ~countOneBits(1u), 14689u, arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 730f, 1045f, arg_0)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 944f, 456f, 1379f) - arg_2), arg_2, any(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b)))))), Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.x, 335f)), _wgslsmith_f_op_f32(-1453f - arg_0))), _wgslsmith_f_op_f32(floor(arg_2.x)))), any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), !vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)))));
    var var_1 = any(vec4<bool>(false, var_0.e.b, false, var_0.b.x));
    let var_2 = u_input.b;
    var_0 = Struct_4(~(i32(-1i) * -21600i), !select(!select(vec4<bool>(var_0.e.b, arg_1.b, true, true), var_0.b, var_0.e.b), var_0.b, !any(var_0.b.zz)), var_0.c, var_0.d, var_0.e);
    let var_3 = Struct_4(max(_wgslsmith_sub_i32(firstLeadingBit(~u_input.b.x), u_input.b.x), reverseBits(-2147483647i)), vec4<bool>(!(reverseBits(arg_1.a) >= countOneBits(var_0.c.x)), false, false, true), var_0.c, _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(-var_0.d.x))), var_0.e);
    return var_0.c.x > 115219u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(683f, _wgslsmith_f_op_f32(f32(-1f) * -1579f)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), -1030f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-580f)))))));
    let var_1 = !vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), (firstTrailingBit(u_input.b.x) <= max(-10118i, u_input.b.x)) | !select(false, false, false));
    var var_2 = Struct_4(-2147483647i, select(select(vec4<bool>(!var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, !var_1.x, true), select(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x))), !vec4<bool>(all(vec4<bool>(var_1.x, true, var_1.x, true)), true, var_1.x, var_1.x), vec4<bool>(var_1.x, !any(vec3<bool>(true, var_1.x, true)), func_4(var_0.x, func_2(true, -28001i, Struct_4(u_input.b.x, vec4<bool>(true, false, false, var_1.x), vec4<u32>(34091u, u_input.a, 4294967295u, u_input.a), vec4<f32>(146f, var_0.x, var_0.x, var_0.x), Struct_3(917f, var_1.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, -1665f)), vec4<f32>(var_0.x, 273f, -678f, -1505f)), var_1.x)), vec4<u32>(20943u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 1082u, 45562u, 10408u), vec4<u32>(u_input.a, 1u, u_input.a, 51428u) & vec4<u32>(26381u, 4294967295u, 4294967295u, u_input.a), vec4<bool>(var_1.x, true, var_1.x, false)), ~(vec4<u32>(u_input.a, u_input.a, 46200u, u_input.a) >> (vec4<u32>(8411u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)))), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 46617u), ~46096u), 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-1412f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2444f + var_0.x) - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -920f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1806f, var_0.x, 1444f, 1043f) - vec4<f32>(var_0.x, 1641f, var_0.x, -987f))), vec4<f32>(_wgslsmith_f_op_f32(sign(865f)), _wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)))))), Struct_3(-185f, !var_1.x));
    var var_3 = vec4<bool>(false, false || all(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_2.b.zw)), any(!select(!var_2.b.yyy, vec3<bool>(var_1.x, true, var_2.b.x), !vec3<bool>(var_1.x, true, true))), !var_2.e.b);
    var_2 = Struct_4(-2147483647i, vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(114f, var_0.x))) < var_2.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.d.x, 578f, var_3.x))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-111f)))), !(!(!var_1.x)), var_2.c.x < 14024u), ~(~(~(vec4<u32>(1u, 60193u, 37116u, 21368u) ^ var_2.c))), vec4<f32>(_wgslsmith_f_op_f32(round(var_2.e.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), -991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.e.a))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d.x, var_2.d.x) + -494f))), var_2.e);
    return Struct_1(select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_2.a, var_2.a), min(vec4<i32>(var_2.a, u_input.b.x, 62299i, u_input.b.x), vec4<i32>(u_input.b.x, var_2.a, u_input.b.x, u_input.b.x))), var_2.a, 20789i), vec3<i32>(_wgslsmith_div_i32(func_3(Struct_3(-276f, var_1.x), vec3<f32>(var_0.x, var_0.x, var_2.e.a)).x, var_2.a & 2147483647i), -54195i, var_2.a), vec3<bool>(u_input.a > _wgslsmith_add_u32(0u, 51504u), false, any(vec3<bool>(true, var_3.x, var_1.x)) && all(var_2.b))), !(var_0.x > var_0.x), u_input.b.x, _wgslsmith_add_i32(0i, -var_2.a), vec4<u32>(u_input.a, ~reverseBits(1u), func_2(all(vec4<bool>(var_1.x, false, false, var_2.e.b)), 64909i, Struct_4(u_input.b.x, vec4<bool>(var_2.b.x, var_2.b.x, false, true), vec4<u32>(1u, var_2.c.x, var_2.c.x, var_2.c.x), vec4<f32>(var_2.e.a, -1468f, -1555f, var_0.x), Struct_3(var_2.e.a, var_1.x)), var_2.d).a << (_wgslsmith_add_u32(~u_input.a, var_2.c.x) % 32u), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.c.x, 75772u), 1u)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = Struct_1(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -210f), !any(vec4<bool>(arg_0.b, true, true, arg_2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, -1606f, 292f)))).wxz, any(select(!(!vec3<bool>(arg_2.b, arg_0.b, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2.b, false), arg_2.b), vec3<bool>(arg_0.b, all(vec2<bool>(arg_2.b, true)), !arg_0.b))), arg_2.c, _wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(30482i, -2147483647i, arg_2.d, arg_1), -vec4<i32>(-1i, arg_0.a.x, -31698i, arg_1)), vec4<i32>(_wgslsmith_add_i32(-2405i, arg_0.a.x), arg_0.d, abs(-2147483647i), arg_1 | 36570i))), vec4<u32>(~57779u, func_2(func_2(true == arg_2.b, -1i, Struct_4(arg_1, vec4<bool>(arg_0.b, arg_0.b, arg_2.b, true), vec4<u32>(4294967295u, arg_0.e.x, u_input.a, 1u), vec4<f32>(-876f, -1000f, -1750f, -485f), Struct_3(-475f, arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(254f, -1921f, -1373f, -794f) + vec4<f32>(-892f, -1673f, 283f, -718f))).b, arg_2.a.x, Struct_4(arg_0.d, select(vec4<bool>(false, false, true, arg_0.b), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(true, true, arg_2.b, arg_2.b)), select(vec4<u32>(arg_0.e.x, u_input.a, 33363u, arg_2.e.x), arg_0.e, vec4<bool>(arg_0.b, false, arg_2.b, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1250f, -145f, -2005f, 940f) + vec4<f32>(445f, -347f, 150f, 747f)), Struct_3(-108f, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, 2249f, -1420f, -855f))).a, select(~u_input.a & u_input.a, _wgslsmith_dot_vec2_u32(arg_0.e.wx, ~arg_0.e.yx), arg_2.b), 0u));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-961f + -325f), true);
    var_1 = arg_2;
    var_1 = Struct_1(~u_input.b, all(vec2<bool>(true, true)), arg_1, -countOneBits(func_1().a.x), select(func_1().e << (countOneBits(arg_0.e) % vec4<u32>(32u)), var_1.e, !(!vec4<bool>(true, false, false, arg_0.b))));
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> i32 {
    let var_0 = reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(8982i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, -20921i) << (arg_0.e.wyw % vec3<u32>(32u)), -u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(27828i, 36260i, arg_0.c), -vec3<i32>(-12922i, -2147483647i, -2147483647i))), vec4<i32>(~(i32(-1i) * -22956i), -2147483647i, func_3(Struct_3(766f, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1188f, -1033f, 1000f))).x, -10062i & (u_input.b.x ^ u_input.b.x))));
    var var_1 = -1820i;
    var var_2 = firstTrailingBit(arg_0.e.yzy);
    let var_3 = ~arg_0.a.x;
    var_1 = _wgslsmith_add_i32(countOneBits(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2659f), var_0.x > -1i), vec3<f32>(1f, 1f, 1f)).x), _wgslsmith_add_i32(var_3, min(_wgslsmith_div_i32(-3826i, var_0.x), u_input.b.x) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(10502i, arg_0.d)), var_0.x)));
    return -u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(3634u, true);
    let var_1 = vec4<f32>(-1135f, 198f, -961f, _wgslsmith_f_op_f32(f32(-1f) * -1671f));
    var var_2 = 15881u;
    var var_3 = vec4<i32>(5593i, 27559i, _wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -(-2147483647i << (var_0.a % 32u))), func_6(func_5(func_1(), 1i, Struct_1(~vec3<i32>(u_input.b.x, 0i, u_input.b.x), var_0.b, -u_input.b.x, -u_input.b.x, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) | vec4<u32>(64017u, var_0.a, 31174u, 1u)))));
    var_0 = func_2(true, var_3.x, Struct_4(firstLeadingBit(1i ^ (u_input.b.x << (0u % 32u))), select(!select(vec4<bool>(false, var_0.b, var_0.b, true), vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b)), vec4<bool>(false, var_1.x > var_1.x, var_0.b, true), select(vec4<bool>(false, var_0.b, true, var_0.b), !vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(true, var_0.b, true, var_0.b))), vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<f32>(-308f, _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(f32(-1f) * -1698f), _wgslsmith_f_op_f32(-1510f - 1286f)), Struct_3(var_1.x, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -196f, -403f, var_1.x)) + _wgslsmith_f_op_vec4_f32(select(var_1, var_1, var_0.b)))), var_1));
    var var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, u_input.a ^ u_input.a, min(4294967295u, ~abs(1u)), u_input.a), firstTrailingBit(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, var_0.a, 0u, var_0.a)), reverseBits(~vec4<u32>(48679u, var_0.a, 75440u, u_input.a)))));
    var var_5 = _wgslsmith_add_i32(func_5(func_1(), var_3.x, Struct_1(-vec3<i32>(u_input.b.x, -1i, u_input.b.x), true || var_0.b, ~(-1i), -33610i, ~vec4<u32>(0u, 15028u, 4294967295u, 60780u))).d & u_input.b.x, var_3.x);
    var var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-((-33673i | u_input.b.x) | _wgslsmith_mod_i32(2147483647i, select(var_3.x, 1i, true))));
}

