struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), arg_1.a > 78149u), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(u_input.d & u_input.d, vec3<i32>(-u_input.e.x, _wgslsmith_mod_i32(-44059i, u_input.a.x), u_input.a.x)), vec3<u32>(arg_1.a, arg_1.a, reverseBits(~0u)), any(!select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(var_0, var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), -577f), !(_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(1299f * _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(~(reverseBits(u_input.d) >> (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), ~vec3<u32>(arg_1.a, arg_1.a >> (arg_1.a % 32u), ~u_input.c.x), var_0, _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec3_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_2 = 1i;
    let var_3 = !vec3<bool>(any(!vec2<bool>(var_0, false)), false, !any(!vec3<bool>(var_1.a.c, var_1.a.c, true)));
    var var_4 = _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, var_1.c.b.x), var_1.a.b.zx)), _wgslsmith_clamp_u32(1u, ~select(var_1.a.b.x, 4294967295u, true), 4294967295u)));
    return countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.b.x, arg_1.a, arg_1.a, u_input.c.x), abs(vec4<u32>(30725u, 23352u, 7167u, var_1.c.b.x))), ~arg_1.a, _wgslsmith_clamp_u32(var_1.c.b.x, ~4294967295u, ~u_input.c.x))) ^ vec3<u32>(~(~51437u), _wgslsmith_sub_u32(countOneBits(_wgslsmith_mult_u32(18089u, 2517u)), 1u), 1u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = !(_wgslsmith_sub_i32(u_input.e.x, u_input.d.x) == -u_input.a.x);
    let var_1 = Struct_3(16566u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(-15970i, 2147483647i, 1i) >> (_wgslsmith_mod_vec3_u32(arg_2.zwx, vec3<u32>(u_input.c.x, 35943u, u_input.c.x)) % vec3<u32>(32u))), select(vec3<u32>(~747u, u_input.c.x, abs(arg_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 17018u), arg_1), _wgslsmith_f_op_f32(513f - 1721f) >= _wgslsmith_f_op_f32(step(578f, -326f))), var_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, 758f, 345f) * vec3<f32>(-1020f, 529f, -246f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(844f, 1130f, -1060f) + vec3<f32>(1579f, -848f, 189f))))), 170f), var_0, Struct_1(u_input.e, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(235f, 1853f, 637f), vec3<f32>(1250f, -229f, 1738f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1731f, -1544f))), var_1), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, _wgslsmith_f_op_f32(-1000f + -147f), _wgslsmith_f_op_f32(step(356f, -1111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-881f))))));
    let var_3 = Struct_3(abs(reverseBits(~var_1.a)) & arg_2.x);
    var_2 = Struct_2(Struct_1(u_input.d, min(~var_2.a.b << (select(vec3<u32>(16374u, var_1.a, 57101u), arg_2.zxz, vec3<bool>(var_0, false, true)) % vec3<u32>(32u)), var_2.a.b), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.c.c, true, true, var_0), vec4<bool>(false, false, var_0, var_0), var_2.b), select(vec4<bool>(var_0, false, var_2.b, false), vec4<bool>(true, true, true, false), vec4<bool>(var_0, var_2.c.c, var_0, false)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) * _wgslsmith_f_op_f32(min(1033f, var_2.a.d.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.e - var_2.a.e)))), var_0, var_2.a);
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_3.yxz;
    var var_1 = vec2<bool>(!(!any(vec3<bool>(true, arg_3.x, arg_1))) || !(!arg_0.x), true);
    var var_2 = true;
    let var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(25259i, arg_2.x, arg_2.x), vec3<i32>(-1i, -1i, u_input.e.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, var_3, 47721u), vec3<u32>(60607u, 27489u, u_input.c.x), vec3<u32>(24030u, u_input.c.x, 4294967295u) | vec3<u32>(u_input.c.x, u_input.c.x, 1u)), ~(~vec3<u32>(u_input.c.x, var_3, 68294u))), !arg_3.x, vec3<f32>(1f, _wgslsmith_f_op_f32(step(-855f, -524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-167f)))), _wgslsmith_f_op_f32(sign(-384f))), all(vec2<bool>(select(true, all(vec3<bool>(arg_3.x, true, arg_1)), any(vec2<bool>(arg_3.x, var_1.x))), true)), Struct_1(u_input.a.zwy, vec3<u32>(abs(var_3), u_input.c.x, var_3), arg_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(750f * -1810f), 656f, 754f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, 1174f, -895f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2440f), 1158f)));
    return Struct_1(arg_2, vec3<u32>(_wgslsmith_add_u32(~(~111050u), u_input.c.x), var_3, var_3), 87860u != var_4.a.b.x, vec3<f32>(561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1355f)) + 218f), _wgslsmith_f_op_f32(958f * var_4.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + var_4.a.d.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.a.wz);
    var_0 = _wgslsmith_add_vec2_i32(u_input.a.zw, min(vec2<i32>(~(-var_0.x), 2147483647i), arg_2.c.a.xy));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1617f)))), 661f, arg_1.a.d.x, arg_2.a.e), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a.d.x, _wgslsmith_f_op_f32(-372f - arg_2.a.d.x), _wgslsmith_f_op_f32(-arg_1.c.d.x), 1073f)))));
    var_1 = vec4<f32>(-420f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f), -719f)), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - arg_1.c.d.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(954f, arg_1.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-642f * -215f) + -265f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1327f), arg_1.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-arg_2.a.e)))));
    return Struct_1(firstTrailingBit(_wgslsmith_div_vec3_i32(reverseBits(arg_2.a.a), vec3<i32>(-787i, arg_1.c.a.x, -14648i) & arg_2.c.a)) << (max(vec3<u32>(43474u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 61087u, arg_1.c.b.x, 4294967295u), vec4<u32>(4897u, arg_0.a, 38405u, arg_0.a)), ~0u), ~arg_2.a.b) % vec3<u32>(32u)), ~firstTrailingBit(arg_1.c.b), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(!vec2<bool>(arg_1.c.c, true), !arg_2.c.c, abs(vec3<i32>(13567i, arg_1.a.a.x, arg_2.c.a.x)), select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(arg_1.b, arg_2.b, arg_1.b, arg_1.c.c), false)).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = func_5(Struct_3(u_input.c.x), Struct_2(func_4(!select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), !func_2(vec4<u32>(arg_2.a, 25224u, 4294967295u, 33523u), vec3<u32>(u_input.c.x, 4294967295u, 9324u), vec4<u32>(13722u, 0u, arg_2.a, 12413u)), vec3<i32>(24739i, -u_input.a.x, 0i | u_input.e.x), vec4<bool>(564f < arg_3, !arg_0, true, select(arg_0, arg_0, false))), arg_0, Struct_1(vec3<i32>(-16147i, -17890i, firstTrailingBit(38142i)), vec3<u32>(arg_2.a, arg_2.a, min(u_input.c.x, arg_2.a)), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, arg_1, arg_3) * vec3<f32>(652f, 1000f, arg_1)), -1397f)), Struct_2(Struct_1(~vec3<i32>(66608i, u_input.b, -5525i), vec3<u32>(25438u, 0u, 4294967295u) >> (vec3<u32>(14163u, arg_2.a, arg_2.a) % vec3<u32>(32u)), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, arg_3, 941f)), -1061f), select(arg_0, true, false), func_4(vec2<bool>(func_4(vec2<bool>(false, arg_0), arg_0, vec3<i32>(39635i, -2147483647i, -35124i), vec4<bool>(false, arg_0, false, arg_0)).c, true), true, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, 0i, -2147483647i), reverseBits(u_input.a.zxw), max(vec3<i32>(u_input.a.x, 46214i, 24844i), u_input.a.yzy)), vec4<bool>(true, arg_0, true, true))));
    let var_1 = -18554i;
    return func_4(select(!vec2<bool>(true, var_0.c), !(!vec2<bool>(arg_0, arg_0)), _wgslsmith_clamp_i32(-1i, ~10295i, ~u_input.a.x) == (var_1 & (1i >> (u_input.c.x % 32u)))), true, vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-78519i, var_0.a.x, 1i), u_input.d) | var_0.a.x, var_1), vec4<bool>(var_0.c, !(false | any(vec4<bool>(true, arg_0, arg_0, false))), func_2(~abs(vec4<u32>(64607u, var_0.b.x, 23980u, 1u)), ~abs(vec3<u32>(arg_2.a, arg_2.a, 32448u)), ~(~vec4<u32>(1u, 2047u, u_input.c.x, 1u))), var_0.c && true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, _wgslsmith_f_op_f32(step(-1007f, _wgslsmith_f_op_f32(round(1532f)))), Struct_3(u_input.c.x), 1485f);
    let var_1 = 0i;
    let var_2 = !var_0.c;
    var var_3 = ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, 4294967295u, 13301u) & vec4<u32>(var_0.b.x, var_0.b.x, u_input.c.x, var_0.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_0.b.x, var_0.b.x, 30094u), vec4<u32>(var_0.b.x, var_0.b.x, 55910u, 1u))) & abs(~vec4<u32>(0u, 54198u, u_input.c.x, u_input.c.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, u_input.c.x, 0u) ^ vec4<u32>(1u, 0u, u_input.c.x, var_0.b.x), vec4<u32>(u_input.c.x, u_input.c.x, var_0.b.x, 4294967295u) & vec4<u32>(10742u, u_input.c.x, 5252u, 84518u)));
    var_3 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(func_3(_wgslsmith_f_op_vec3_f32(abs(var_0.d)), Struct_3(var_3.x)).x, u_input.c.x, func_1(true, func_1(false, 1309f, Struct_3(1u), var_0.e).e, Struct_3(45000u), _wgslsmith_f_op_f32(-var_0.e)).b.x, ~(81088u ^ u_input.c.x)), vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, 4294967295u) >> (0u % 32u), countOneBits(u_input.c.x), ~(~1u), 1u)), ~select(abs(vec4<u32>(var_3.x, 18489u, 4294967295u, var_3.x)) << (firstLeadingBit(vec4<u32>(1u, var_3.x, 84236u, var_3.x)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 1u, var_0.b.x), vec4<u32>(64991u, var_3.x, var_0.b.x, 0u)), true));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_3(0u), Struct_2(Struct_1(vec3<i32>(1i, var_1, var_1), var_0.b, var_2, vec3<f32>(var_0.d.x, 469f, var_0.e), -1128f), var_2, var_0), Struct_2(Struct_1(var_0.a, vec3<u32>(var_0.b.x, u_input.c.x, u_input.c.x), false, var_0.d, var_0.e), true, var_0)).e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + 1000f), var_0.e))), 402f);
    let var_5 = vec2<bool>(func_5(Struct_3(~var_0.b.x), Struct_2(Struct_1(u_input.d, ~var_0.b, var_2, _wgslsmith_div_vec3_f32(var_0.d, var_0.d), func_5(Struct_3(43783u), Struct_2(var_0, true, Struct_1(var_0.a, vec3<u32>(26906u, var_3.x, 1u), true, var_0.d, -208f)), Struct_2(var_0, true, Struct_1(vec3<i32>(1i, u_input.b, u_input.d.x), vec3<u32>(4294967295u, 4294967295u, var_3.x), false, vec3<f32>(var_4.x, var_0.e, var_0.d.x), -575f))).e), true == !var_2, var_0), Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(var_1, -112182i, -20910i)), vec3<u32>(u_input.c.x, u_input.c.x, 0u), var_0.c, var_0.d, -280f), var_2, Struct_1(u_input.a.zxy ^ var_0.a, var_3.zyw, var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.d), -439f))).c, var_0.c);
    let var_6 = vec4<bool>(var_0.e >= 777f, true, max(u_input.e.x, var_1) != u_input.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wwx, _wgslsmith_div_vec2_i32(max(~select(vec2<i32>(7111i, -9335i), vec2<i32>(-1i, var_0.a.x), var_6.x), u_input.e.xy), _wgslsmith_add_vec2_i32(var_0.a.zy, var_0.a.xy) << (var_0.b.zz % vec2<u32>(32u))), countOneBits(0u), u_input.c.x);
}

