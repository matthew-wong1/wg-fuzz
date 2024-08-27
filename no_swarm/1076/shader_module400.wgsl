struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_5, arg_3: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(296f, -169f) - _wgslsmith_f_op_f32(step(-1022f, 951f))), _wgslsmith_f_op_f32(1355f + 896f))), 462f));
    var var_1 = select(select(vec2<bool>(!(u_input.c < u_input.b), arg_3), select(!select(vec2<bool>(true, arg_3), vec2<bool>(false, true), vec2<bool>(arg_3, arg_3)), vec2<bool>(!arg_3, select(true, arg_3, arg_3)), false), all(!vec3<bool>(arg_3, arg_3, arg_3))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_3), vec2<bool>(any(select(vec4<bool>(false, true, arg_3, arg_3), vec4<bool>(false, arg_3, true, arg_3), vec4<bool>(false, true, false, arg_3))), true), all(!select(vec2<bool>(false, arg_3), vec2<bool>(false, true), vec2<bool>(true, arg_3)))), select(select(select(!vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), !select(vec2<bool>(true, arg_3), vec2<bool>(true, false), vec2<bool>(arg_3, arg_3)), !arg_3), !vec2<bool>(false && arg_3, any(vec3<bool>(false, false, true))), arg_3));
    let var_2 = 0u;
    let var_3 = true;
    let var_4 = select(reverseBits(arg_2.a), reverseBits(reverseBits(arg_2.a)), vec4<bool>((_wgslsmith_add_i32(arg_2.a.x, arg_2.a.x) < (-5328i << (arg_0.x % 32u))) & (~var_2 < ~1u), (98379u < firstLeadingBit(var_2)) != (1u == _wgslsmith_sub_u32(var_2, u_input.a)), true, !(_wgslsmith_f_op_f32(exp2(var_0.x)) >= var_0.x)));
    return ~abs(_wgslsmith_sub_vec4_i32(arg_2.a << (_wgslsmith_add_vec4_u32(vec4<u32>(35200u, 28977u, var_2, arg_1), vec4<u32>(var_2, 109811u, arg_0.x, 30019u)) % vec4<u32>(32u)), vec4<i32>(reverseBits(-2147483647i), reverseBits(0i), ~12495i, arg_2.a.x | var_4.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = ~(~(~(~(vec4<u32>(arg_1.c, arg_1.c, arg_0.d, 0u) & vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a)))));
    var var_1 = Struct_4(countOneBits(u_input.a), all(select(select(!vec2<bool>(false, arg_1.b), !vec2<bool>(false, arg_1.b), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_1.b))), countOneBits(~(~vec4<u32>(1u, arg_0.a.c.x, arg_0.a.b, arg_0.d))) ^ select(vec4<u32>(~1u, _wgslsmith_add_u32(arg_0.d, arg_1.a.c.x), arg_1.c, _wgslsmith_div_u32(20036u, 7322u)), ~vec4<u32>(u_input.a, 4294967295u, var_0.x, 1u), !(!vec4<bool>(false, arg_1.b, arg_1.b, false))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_1.a.e.yx, arg_0.a.e.zy, vec2<bool>(true, false)))))), _wgslsmith_f_op_vec2_f32(max(arg_1.a.e.zz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.e.xz)), _wgslsmith_f_op_vec2_f32(-arg_0.a.e.yx))))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) - _wgslsmith_f_op_f32(-942f + -2155f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-472f)) - -1910f)), abs(~reverseBits(u_input.a)), ~select(vec2<u32>(57560u, 4294967295u), vec2<u32>(u_input.a, u_input.a), false) & _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a, 25245u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 90419u), vec2<u32>(u_input.a, u_input.a))), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2020f, -126f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1066f, -709f, 1571f)))))), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(~17064u), u_input.a, _wgslsmith_add_u32(u_input.a, 12659u), 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 22948u, 1u, 1u)), vec4<u32>(116334u, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a, 10421u, 86241u, 1u), vec4<u32>(u_input.a, 1884u, u_input.a, 4294967295u)), ~vec4<u32>(1u, u_input.a, u_input.a, 19198u), vec4<u32>(4294967295u, 37293u, u_input.a, u_input.a)))), 671f, 159f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * var_0.d)))), _wgslsmith_f_op_f32(func_4(Struct_2(var_0.a, 922f, ~func_3(vec3<u32>(39805u, u_input.a, 39403u), var_0.a.c.x, Struct_5(vec4<i32>(8171i, -2147483647i, u_input.e, u_input.d.x)), false), min(~1u, min(4294967295u, 1u))), Struct_3(var_0.a, any(vec2<bool>(var_0.b, true)), abs(0u) << (_wgslsmith_mult_u32(630u, var_0.a.b) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1552f * var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -462f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d, -908f, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-284f, -274f, 1117f) - var_0.a.e)))));
    let var_3 = !(~abs(u_input.a) <= countOneBits(_wgslsmith_mod_u32(10791u, 17896u))) || true;
    let var_4 = !var_0.b;
    return ~_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(47556u, 4294967295u, 4294967295u, 65352u), ~vec4<u32>(var_0.a.b, 43520u, 0u, 19000u))), firstTrailingBit(vec4<u32>(var_0.a.c.x, firstTrailingBit(5603u), ~u_input.a, 0u)));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * -1000f));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0))))))));
    var var_2 = ~vec2<u32>(arg_2.c.x, ~(~_wgslsmith_div_u32(arg_0, 4294967295u)));
    var_2 = vec2<u32>(~4294967295u | _wgslsmith_dot_vec2_u32(arg_2.c.xw, arg_2.c.yz), 1u);
    var_2 = _wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(var_2.x, arg_0)), countOneBits(vec2<u32>(_wgslsmith_mult_u32(~arg_1, 26625u), ~_wgslsmith_div_u32(u_input.a, 0u))));
    return Struct_2(Struct_1(var_1, select(_wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec4_u32(arg_2.c, vec4<u32>(0u, 45461u, 1u, 1295u))), _wgslsmith_sub_u32(abs(var_2.x), arg_1), !arg_3), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(23971u, 4294967295u), vec2<u32>(arg_1, arg_0), ~arg_2.c.yy), var_1, vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * var_1), _wgslsmith_f_op_f32(sign(1420f)))), _wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - 489f) + _wgslsmith_f_op_f32(-arg_2.d.x)))), u_input.d, ~(~arg_2.c.x));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(func_5(~(1u & ~u_input.a), max(4294967295u, 53181u), Struct_4(arg_0.d, true, min(vec4<u32>(u_input.a, u_input.a, 0u, 42583u), vec4<u32>(37175u, 34320u, 0u, u_input.a)) << (_wgslsmith_div_vec4_u32(vec4<u32>(17330u, 1u, u_input.a, u_input.a), vec4<u32>(arg_0.d, arg_0.a.c.x, 40128u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_0.a.e.yy, arg_0.a.e.yy, vec2<bool>(arg_3.x, true)))))), any(select(select(vec3<bool>(true, arg_3.x, arg_3.x), arg_3.zwz, arg_3.xxx), select(arg_3.xwx, vec3<bool>(false, arg_3.x, arg_3.x), arg_3.x), !vec3<bool>(true, arg_3.x, true)))).a, any(!(!vec2<bool>(arg_3.x, false))), ~80574u, arg_0.b, 1694f);
    var var_1 = Struct_4(reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(~35699u, 4294967295u), 1u)), arg_3.x | all(select(arg_3.zw, select(arg_3.xz, arg_3.zw, arg_3.yx), all(arg_3))), vec4<u32>(abs(u_input.a ^ _wgslsmith_add_u32(1u, 2721u)), ~reverseBits(~var_0.c), u_input.a, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, _wgslsmith_f_op_f32(arg_0.b * -1828f))) + _wgslsmith_f_op_f32(var_0.d - -763f)), _wgslsmith_f_op_f32(arg_0.b + var_0.a.e.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, -314f, var_1.d.x, -848f) * vec4<f32>(arg_0.a.d, -1702f, 1000f, var_0.d))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1055f - -1000f), -443f, _wgslsmith_f_op_f32(sign(var_0.d)), _wgslsmith_f_op_f32(var_0.e - -685f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1223f, arg_0.a.d, -1000f, 778f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, var_0.d, arg_0.b, 1218f))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, arg_0.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 509f, arg_0.b, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, -2103f, var_0.d, arg_0.b) + _wgslsmith_div_vec4_f32(vec4<f32>(-544f, var_0.a.e.x, -1084f, var_0.e), vec4<f32>(var_0.e, var_1.d.x, var_0.a.a, -218f))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), u_input.a, firstLeadingBit(~(~vec2<u32>(3225u, arg_0.d) << (~var_0.a.c % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(arg_0, Struct_3(func_5(var_0.a.b, 1u, Struct_4(var_1.c.x, false, vec4<u32>(u_input.a, u_input.a, var_0.a.c.x, var_0.c), var_1.d), false).a, false, ~0u, 627f, _wgslsmith_f_op_f32(-arg_0.a.e.x)))))), vec3<f32>(arg_0.a.a, 296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * var_2.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_2(func_6(func_5(71325u, func_2(), arg_1, !arg_1.b), -25781i, Struct_5(vec4<i32>(u_input.d.x, -2147483647i, -2147483647i, -8559i)), vec4<bool>(!(!arg_1.b), arg_1.b, 0u >= func_2(), false)), _wgslsmith_f_op_f32(-336f - 971f), -u_input.d, 112118u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x)), 763f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1647f)))) * 611f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3071u;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~u_input.a << (_wgslsmith_mod_u32(29412u, 80426u) % 32u)), 36367u), _wgslsmith_mod_vec3_u32(~(~countOneBits(vec3<u32>(75710u, u_input.a, u_input.a))), ~(~vec3<u32>(4294967295u, u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, 2078f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-107f, -727f))), vec2<f32>(1082f, -575f), true)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-811f, -1000f) * vec2<f32>(132f, -1173f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -917f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1295f), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 30801u, u_input.a)), Struct_4(14969u, true, vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), vec2<f32>(728f, 488f)), 7681i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1404f, 1254f, 1629f, 1259f))))))));
    let var_3 = Struct_5(-vec4<i32>(u_input.c, -1i, ~abs(32532i), _wgslsmith_dot_vec2_i32(~u_input.d.zx, select(vec2<i32>(-80065i, u_input.d.x), u_input.d.yz, false))));
    var_1 = 17293u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(-vec3<i32>(30670i, 2147483647i, 2147483647i), ~countOneBits(u_input.d.ywx)) ^ ~(vec3<i32>(-19088i, u_input.d.x, u_input.d.x) >> (vec3<u32>(2516u, u_input.a, u_input.a) % vec3<u32>(32u))));
}

