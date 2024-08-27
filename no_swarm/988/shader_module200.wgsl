struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.a.xzz, u_input.a.ywy);
    var var_2 = !(!(!(!select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, true)))));
    var var_3 = !var_2.zyy;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -1352f, -1015f, 1462f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1712f, -246f, -694f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, 700f, 787f, -1000f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-385f, 1011f, -1167f, -593f))))))));
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(838f, -1000f)) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1401f, _wgslsmith_f_op_f32(select(-512f, -535f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-486f + 143f))), _wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1558f, 1039f) * _wgslsmith_f_op_f32(select(-407f, -1211f, arg_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-646f, 1133f)) - 201f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 509f, -1689f, 911f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -630f, -857f, -713f)), vec4<f32>(-249f, -573f, -1000f, -833f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1310f, -1912f, _wgslsmith_f_op_f32(trunc(924f)), _wgslsmith_f_op_f32(-646f + 345f)), vec4<f32>(-339f, _wgslsmith_div_f32(-307f, -645f), 960f, _wgslsmith_f_op_f32(542f - 663f)))))), all(arg_0.yw)));
    let var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 879f);
    let var_2 = Struct_5(_wgslsmith_add_u32(arg_1, 1u), var_1.x);
    var var_3 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u >> (arg_1 % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 1u, 1u, 1u), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x)), var_2.a), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(15984u, 17044u))), max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13674u, var_2.a), vec3<u32>(arg_1, 1u, u_input.b.x)), ~1104u, 23767u), reverseBits(vec3<u32>(1u, 0u, u_input.b.x)) ^ ~vec3<u32>(u_input.b.x, 0u, 34191u))));
    let var_4 = Struct_2(vec3<i32>(u_input.a.x >> (~4294967295u % 32u), _wgslsmith_dot_vec3_i32(-(u_input.a.xzw ^ u_input.a.yzx), select(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, -56394i)), u_input.a.zyz, arg_0.zxz)), _wgslsmith_clamp_i32(countOneBits(u_input.a.x), ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x))) & _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 34015i), _wgslsmith_dot_vec4_i32(vec4<i32>(16096i, 1i, -1i, u_input.a.x), u_input.a))), Struct_1(vec2<u32>(1u, 15732u), all(arg_2)), Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(14843u, 1u), vec2<u32>(var_3.a, 37993u)), all(!select(arg_0, vec4<bool>(arg_0.x, true, false, false), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(224f)), 392f, arg_3)), _wgslsmith_f_op_f32(-136f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -895f), var_0.x))));
    return select(!select(arg_0.zxy, !select(vec3<bool>(true, false, false), arg_0.yzw, arg_0.x), reverseBits(var_4.a.x) == ~0i), vec3<bool>(any(!vec3<bool>(var_4.c.b, false, var_4.b.b)), all(!(!arg_0)), all(arg_0)), any(vec4<bool>(func_3(Struct_3(889u), false), false, _wgslsmith_f_op_f32(226f - 1162f) != var_1.x, !var_4.c.b)));
}

fn func_2() -> Struct_2 {
    let var_0 = i32(-1i) * -(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -75586i)), -u_input.a) & ~(-1i));
    var var_1 = select(vec3<bool>(true, -444f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1368f))), !(~u_input.b.x <= u_input.b.x)), func_4(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, select(false, true, false), select(false, false, true)), true), (~u_input.b.x << (reverseBits(u_input.b.x) % 32u)) | firstTrailingBit(u_input.b.x ^ 48793u), vec2<bool>(false, select(any(vec2<bool>(true, false)), func_3(Struct_3(u_input.b.x), true), true)), !((u_input.a.x == -43520i) & true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true));
    let var_2 = all(vec2<bool>(!(!var_1.x), var_1.x));
    var var_3 = _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.a.x, (-22358i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % 32u)) >> (4294967295u % 32u)));
    let var_4 = _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, u_input.b.x)) >> (~4294967295u % 32u), 20503u);
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(0i, 1i), -40488i, var_0), Struct_1(~firstTrailingBit(vec2<u32>(var_4, u_input.b.x) | vec2<u32>(0u, var_4)), false), Struct_1(~abs(vec2<u32>(38384u, var_4) >> (u_input.b % vec2<u32>(32u))), false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-182f - 1f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-111f, -1398f, -383f)))), true)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    return 33079u;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(arg_0.a.x & _wgslsmith_div_u32(~(arg_2 >> (1u % 32u)), ~_wgslsmith_sub_u32(0u, arg_2)), max(func_5(!(arg_0.b == true), func_2(), vec3<f32>(1575f, _wgslsmith_f_op_f32(1613f + 348f), -294f)), min(8444u, ~(~arg_2))));
    let var_1 = Struct_3(~(~func_2().b.a.x));
    let var_2 = Struct_3(44690u);
    var var_3 = var_1;
    return select(!vec4<bool>(func_2().a.x > (u_input.a.x | arg_1), !all(vec2<bool>(arg_0.b, false)), true && arg_0.b, !(arg_0.b | false)), select(vec4<bool>(true, true, func_3(var_2, arg_0.b), (true == arg_0.b) && all(vec2<bool>(arg_0.b, arg_0.b))), vec4<bool>(false || (var_3.a > arg_2), false, arg_0.b, false), !(!select(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)))), select(select(!select(vec4<bool>(arg_0.b, false, true, true), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, any(vec3<bool>(false, false, true))), vec4<bool>(arg_0.b, u_input.a.x >= arg_1, true, func_3(Struct_3(arg_0.a.x), arg_0.b))), select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(arg_1 > u_input.a.x, arg_0.b, true, arg_0.b), !(!vec4<bool>(true, arg_0.b, true, true))), true));
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> Struct_5 {
    var var_0 = Struct_2(vec3<i32>(select(abs(_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(u_input.a.x, 41674i))), _wgslsmith_mult_i32(30020i, countOneBits(u_input.a.x)), false), u_input.a.x, max(0i, _wgslsmith_dot_vec2_i32(u_input.a.yy, select(vec2<i32>(u_input.a.x, -2756i), vec2<i32>(-2147483647i, u_input.a.x), arg_1.zz)))), func_2().b, func_2().b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_2), arg_2, -910f))))));
    var_0 = Struct_2(~reverseBits(vec3<i32>(select(var_0.a.x, 17536i, false), var_0.a.x, -1i)), Struct_1(u_input.b >> (u_input.b % vec2<u32>(32u)), func_3(Struct_3(~4294967295u), func_1(var_0.c, -1i, 1098u, vec3<u32>(var_0.c.a.x, var_0.c.a.x, u_input.b.x) >> (vec3<u32>(26295u, var_0.b.a.x, u_input.b.x) % vec3<u32>(32u))).x)), Struct_1(vec2<u32>(~599u, ~17313u) & u_input.b, true), var_0.d);
    let var_1 = arg_1;
    var var_2 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(2791u, 10010u), 4294967295u & var_0.c.a.x, func_2().b.a.x), _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mult_u32(1u, u_input.b.x), 31767u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-178f)))))));
    var_2 = Struct_5(33435u, var_2.b);
    return Struct_5(var_0.c.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1715f), _wgslsmith_f_op_f32(round(arg_2))) * _wgslsmith_f_op_f32(-arg_2)))));
}

fn func_7(arg_0: Struct_5, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = min(~(countOneBits(vec3<u32>(0u, 0u, u_input.b.x)) << (firstLeadingBit(vec3<u32>(arg_0.a, 4294967295u, 67497u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) >> (~arg_0.a % 32u), 54507u, ~arg_0.a)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, 23840u), arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.a, 43969u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, arg_0.a, 0u), vec3<u32>(arg_0.a, 4294967295u, u_input.b.x))));
    var var_1 = Struct_3(var_0.x);
    let var_2 = func_4(!(!(!func_1(Struct_1(u_input.b, true), u_input.a.x, arg_0.a, var_0))), 53771u, !select(vec2<bool>(true, arg_0.a > u_input.b.x), vec2<bool>(func_2().b.b, true), func_4(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), 1u, vec2<bool>(true, true), 0i < u_input.a.x).zy), false).yz;
    var_1 = Struct_3(~_wgslsmith_clamp_u32(1u, countOneBits(~var_1.a), 0u));
    let var_3 = Struct_3(var_0.x);
    return Struct_3(~17968u << (~_wgslsmith_div_u32(func_5(var_2.x, Struct_2(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(1u, var_3.a), var_2.x), Struct_1(var_0.zz, false), vec3<f32>(arg_2.x, arg_1, 1655f)), vec3<f32>(arg_0.b, arg_1, 229f)), select(var_3.a, 56445u, true)) % 32u));
}

fn func_8(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_5(~u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(787f, -1687f)) + -849f))));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, _wgslsmith_mult_i32(1i, ~arg_2.x), u_input.a.x, ~arg_2.x ^ _wgslsmith_div_i32(-2147483647i, u_input.a.x)), u_input.a), firstLeadingBit(_wgslsmith_div_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9957i, arg_2.x, -1i, 1467i), vec4<i32>(u_input.a.x, 27224i, -1i, arg_2.x)), arg_2.x, firstTrailingBit(1i), countOneBits(u_input.a.x)))));
    var var_2 = arg_2.zzz;
    let var_3 = u_input.b;
    var_2 = u_input.a.yxw;
    return arg_3;
}

fn func_9(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    var var_0 = func_2();
    var_0 = Struct_2(-var_0.a, var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, -278f) - var_0.d)))) * _wgslsmith_f_op_vec3_f32(-var_0.d)));
    var_0 = Struct_2(var_0.a, func_2().c, var_0.c, var_0.d);
    var_0 = Struct_2(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(1i, u_input.a.x), _wgslsmith_div_i32(select(-7284i, ~u_input.a.x, var_0.b.b), select(_wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(2147483647i, var_0.a.x)), min(u_input.a.x, u_input.a.x), !var_0.c.b))), var_0.b, Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 10019u, arg_0.a), vec3<u32>(4294967295u, u_input.b.x, 28886u)), ~(var_0.c.a.x & arg_1.a)), _wgslsmith_mod_i32(var_0.a.x, i32(-1i) * -1i) == _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), var_0.a.yz), ~u_input.a.x)), var_0.d);
    var var_1 = Struct_2(~abs(u_input.a.zwz), func_2().c, var_0.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, -1346f, var_0.d.x), var_0.d)));
    return -523f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(floor(1798f)));
    var_0 = _wgslsmith_f_op_f32(func_9(func_8(Struct_3(u_input.b.x), Struct_4(vec4<bool>(true, true, true, true)), u_input.a, func_7(func_6(324f, func_1(Struct_1(u_input.b, false), u_input.a.x, 77779u, vec3<u32>(4294967295u, 90064u, 51306u)), -1538f), _wgslsmith_f_op_f32(805f * 583f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -760f)))), Struct_5(u_input.b.x, 1f)));
    let var_1 = func_2();
    let var_2 = _wgslsmith_mult_u32(var_1.b.a.x, ~(~_wgslsmith_sub_u32(firstLeadingBit(76485u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -263f))) - _wgslsmith_f_op_f32(-1268f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_9(func_7(Struct_5(885u, var_1.d.x), -591f, var_1.d.yz), Struct_5(u_input.b.x, var_1.d.x)))))));
    var var_3 = max(~reverseBits(var_1.a), vec3<i32>(abs(-u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.xyy, u_input.a.zww), min(_wgslsmith_sub_i32(var_1.a.x, 0i), ~(-26557i)))) & u_input.a.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, -441f, vec2<i32>(var_3.x >> (_wgslsmith_sub_u32(~0u, var_2) % 32u), var_1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_9(func_7(Struct_5(5629u, var_1.d.x), var_1.d.x, var_1.d.yz), func_6(-527f, vec4<bool>(var_1.c.b, true, var_1.c.b, false), var_1.d.x))), 1225f)), 116f);
}

