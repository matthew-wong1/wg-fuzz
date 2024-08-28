struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(all(select(vec3<bool>(true, select(true, false, true), select(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false)), all(vec4<bool>(true, true, true, true)), true, all(select(vec2<bool>(any(vec4<bool>(true, true, false, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-656f, 1631f)) * -428f))))), 4294967295u);
    var var_2 = var_0.x;
    var_2 = !all(vec3<bool>(true, _wgslsmith_f_op_f32(sign(var_1.a)) < _wgslsmith_f_op_f32(var_1.b + var_1.a), var_0.x));
    let var_3 = all(!select(vec4<bool>(!var_0.x, true, !var_0.x, !var_0.x), !var_0, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-218f))) + var_1.b);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(true, vec2<bool>(arg_2.c.x, true), -848f, arg_3.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_2.a), min(_wgslsmith_mult_u32(_wgslsmith_add_u32(59853u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 84863u, arg_3.c), firstLeadingBit(vec4<u32>(4294967295u, u_input.d, arg_2.d.a.e, u_input.d)))), 0u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_2.d, !select(vec2<bool>(true, false), !vec2<bool>(arg_2.c.x, false), u_input.b.x <= -arg_0), Struct_3(var_0, arg_2.b.b, arg_2.d.c, select(select(vec2<bool>(false, arg_2.c.x), var_0.b, all(vec3<bool>(var_0.b.x, false, false))), var_0.b, select(vec2<bool>(arg_2.b.a.d, arg_2.c.x), arg_2.d.d, select(vec2<bool>(var_0.a, arg_2.d.a.d), vec2<bool>(false, var_0.d), true)))));
    var_1 = arg_2;
    var var_2 = !vec3<bool>(true, true, -13265i > ~countOneBits(var_1.d.c.x));
    let var_3 = arg_2;
    return var_1.d;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = true;
    var_0 = false;
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f + -492f) * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f))), Struct_3(arg_1.d.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1834f, 294f, arg_1.a) - _wgslsmith_div_vec3_f32(arg_1.d.b, arg_1.b.b)), arg_1.d.c, !arg_1.d.a.b), vec2<bool>(arg_1.d.a.d | false, all(vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_1.d.a.a))), func_2(abs(0i ^ u_input.b.x), -233f, arg_1, Struct_2(_wgslsmith_f_op_f32(step(508f, 1018f)), _wgslsmith_f_op_f32(func_3()), ~1u))));
    var var_2 = firstLeadingBit(-10575i);
    let var_3 = 11146i;
    return 1000f;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(29102u, 0u), countOneBits(vec2<u32>(u_input.d, u_input.d))), firstTrailingBit(~0u)) ^ ~(~(~(0u >> (u_input.d % 32u))));
    let var_1 = _wgslsmith_mod_u32(func_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + 941f), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * arg_0.x), Struct_3(func_2(-14362i, -801f, Struct_4(-849f, Struct_3(Struct_1(false, vec2<bool>(true, false), 310f, false, 51521u), vec3<f32>(arg_0.x, -476f, arg_2.x), vec2<i32>(2147483647i, 0i), vec2<bool>(false, true)), vec2<bool>(true, false), Struct_3(Struct_1(true, vec2<bool>(false, false), arg_2.x, true, 1u), arg_0, arg_3.zx, vec2<bool>(true, false))), Struct_2(arg_2.x, arg_2.x, u_input.d)).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_0.x, arg_2.x) * vec3<f32>(arg_0.x, -1375f, arg_0.x)), min(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(-3410i, arg_1)), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(false, true), func_2(-1i, _wgslsmith_f_op_f32(ceil(arg_2.x)), Struct_4(arg_0.x, Struct_3(Struct_1(false, vec2<bool>(false, false), arg_2.x, true, 1u), vec3<f32>(arg_0.x, -2770f, arg_2.x), u_input.a.yx, vec2<bool>(true, true)), vec2<bool>(true, false), Struct_3(Struct_1(false, vec2<bool>(true, true), arg_2.x, true, 4294967295u), vec3<f32>(425f, arg_0.x, arg_2.x), vec2<i32>(arg_3.x, arg_3.x), vec2<bool>(false, true))), Struct_2(arg_0.x, arg_2.x, u_input.d))), Struct_2(1110f, _wgslsmith_div_f32(-1108f, _wgslsmith_f_op_f32(-arg_0.x)), u_input.d)).a.e, 1u);
    var_0 = ~var_1;
    var_0 = ~(~1u);
    var var_2 = !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), arg_0.x <= arg_2.x)));
    return Struct_5(Struct_4(1000f, Struct_3(func_2(-2147483647i, arg_0.x, Struct_4(464f, Struct_3(Struct_1(true, var_2.yz, arg_0.x, var_2.x, var_1), vec3<f32>(727f, -225f, -165f), vec2<i32>(arg_1, -1i), var_2.zy), var_2.xx, Struct_3(Struct_1(var_2.x, vec2<bool>(false, var_2.x), arg_0.x, var_2.x, u_input.d), vec3<f32>(arg_0.x, arg_0.x, arg_2.x), arg_3.xw, var_2.zx)), Struct_2(arg_2.x, arg_0.x, u_input.d)).a, _wgslsmith_f_op_vec3_f32(-arg_0), countOneBits(-vec2<i32>(1i, -2147483647i)), select(!var_2.zx, vec2<bool>(false, var_2.x), var_2.x)), select(var_2.xx, !(!var_2.zy), all(vec2<bool>(false, true))), func_2(0i, -1615f, Struct_4(arg_2.x, func_2(u_input.b.x, -917f, Struct_4(arg_0.x, Struct_3(Struct_1(true, vec2<bool>(true, true), arg_2.x, var_2.x, u_input.d), arg_0, vec2<i32>(35853i, arg_1), var_2.xy), var_2.zy, Struct_3(Struct_1(false, var_2.yy, -982f, var_2.x, 6370u), vec3<f32>(arg_2.x, 1000f, arg_2.x), vec2<i32>(arg_1, 1i), var_2.zz)), Struct_2(1007f, -141f, 19617u)), vec2<bool>(true, false), Struct_3(Struct_1(var_2.x, var_2.xz, arg_2.x, var_2.x, 0u), vec3<f32>(arg_2.x, arg_0.x, -859f), vec2<i32>(33193i, 0i), vec2<bool>(var_2.x, var_2.x))), Struct_2(arg_0.x, -452f, var_1 << (var_1 % 32u)))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(19064i, arg_0.b.x, Struct_4(arg_0.b.x, arg_0, arg_0.d, arg_0), Struct_2(416f, -1728f, 0u)), arg_0.d, func_2(-14505i, arg_0.a.c, Struct_4(arg_0.b.x, Struct_3(Struct_1(arg_0.a.a, vec2<bool>(false, arg_0.a.d), 355f, arg_0.a.a, 11082u), vec3<f32>(arg_0.a.c, -1077f, 1000f), vec2<i32>(u_input.c.x, 2147483647i), arg_0.d), vec2<bool>(arg_0.a.d, true), Struct_3(Struct_1(arg_0.d.x, arg_0.a.b, arg_0.a.c, arg_0.a.a, 0u), arg_0.b, arg_0.c, arg_0.a.b)), Struct_2(-1061f, arg_0.a.c, u_input.d))), arg_0.a)), arg_0.b.x), -select(-35894i, func_2(func_2(-1i, -180f, Struct_4(1392f, arg_0, vec2<bool>(arg_0.a.a, arg_0.d.x), Struct_3(Struct_1(false, arg_0.a.b, -657f, false, arg_0.a.e), vec3<f32>(arg_0.a.c, arg_0.b.x, -434f), u_input.b.wz, vec2<bool>(arg_0.a.d, arg_0.d.x))), Struct_2(187f, -532f, 63095u)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -506f), Struct_4(1307f, Struct_3(arg_0.a, vec3<f32>(-373f, 734f, -434f), vec2<i32>(u_input.a.x, -10545i), arg_0.a.b), vec2<bool>(arg_0.d.x, arg_0.d.x), Struct_3(Struct_1(false, vec2<bool>(true, false), arg_0.a.c, arg_0.a.b.x, u_input.d), arg_0.b, vec2<i32>(38176i, arg_0.c.x), vec2<bool>(arg_0.a.b.x, arg_0.a.d))), Struct_2(-246f, arg_0.a.c, 60541u)).c.x, any(vec3<bool>(arg_0.a.a, true, false))), arg_0.b.zy, ~(~(u_input.b ^ (u_input.b ^ vec4<i32>(2147483647i, -90350i, u_input.c.x, arg_0.c.x)))));
    var_0 = Struct_5(Struct_4(_wgslsmith_div_f32(var_0.a.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -255f)), func_2(max(i32(-1i) * -8963i, abs(var_0.a.d.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) - var_0.a.a), var_0.a, Struct_2(_wgslsmith_f_op_f32(ceil(115f)), _wgslsmith_f_op_f32(-arg_0.a.c), 4294967295u | u_input.d)), vec2<bool>(true, false), func_2(i32(-1i) * -31855i, var_0.a.b.b.x, var_0.a, Struct_2(_wgslsmith_f_op_f32(-var_0.a.d.a.c), _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_mod_u32(40364u, 7198u)))));
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(411f, -559f, arg_0.a.b.x)) * _wgslsmith_f_op_f32(-arg_0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -680f), -583f))), -u_input.c.x, var_0.a.b.b.yx, u_input.b).a;
    var_0 = Struct_5(var_1);
    let var_2 = _wgslsmith_f_op_f32(floor(func_2((_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.c.x, -58972i, -2147483647i), u_input.a) >> (func_5(vec3<f32>(-229f, var_1.d.b.x, 1356f), u_input.a.x, vec2<f32>(606f, arg_0.a.c), vec4<i32>(arg_0.c.x, 7294i, -1i, 24120i)).a.d.a.e % 32u)) >> (arg_0.a.e % 32u), _wgslsmith_f_op_f32(arg_0.a.c * var_1.d.a.c), func_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.d.b - vec3<f32>(1150f, var_1.b.a.c, -1686f)))), _wgslsmith_mod_i32(countOneBits(arg_0.c.x), 1i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(439f, 1407f))))), ~abs(u_input.b)).a, Struct_2(_wgslsmith_f_op_f32(step(-791f, _wgslsmith_f_op_f32(-arg_0.a.c))), -1000f, countOneBits(130574u))).b.x));
    return Struct_3(Struct_1(true == all(vec3<bool>(true, var_0.a.b.a.d, var_0.a.b.a.a)), !vec2<bool>(false, !var_0.a.b.d.x), var_1.d.b.x, all(!(!vec4<bool>(arg_0.a.d, false, var_0.a.c.x, false))), ~(~reverseBits(7212u))), var_0.a.b.b, func_2(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + 954f), _wgslsmith_f_op_f32(f32(-1f) * -366f)))), var_1, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -1000f)), 1000f, ~min(0u, 1u))).c, !func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * var_1.d.b)), 3484i, vec2<f32>(_wgslsmith_div_f32(var_1.a, -642f), 597f), _wgslsmith_mult_vec4_i32(vec4<i32>(11116i, var_1.b.c.x, 1i, var_1.d.c.x) ^ u_input.b, vec4<i32>(5341i, -14670i, -16730i, 6880i))).a.c);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -749f)), select(_wgslsmith_sub_u32(112383u, max(arg_0.a.e & u_input.d, abs(4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d >> (u_input.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_0.a.e, arg_0.a.e, arg_3.d.a.e), vec4<u32>(arg_2, u_input.d, arg_0.a.e, 1u)), ~arg_0.a.e), ~(~vec4<u32>(u_input.d, 4294967295u, arg_2, 2270u))), _wgslsmith_f_op_f32(arg_3.b.a.c * _wgslsmith_f_op_f32(-arg_0.a.c)) != -1595f));
    let var_1 = vec2<bool>(arg_3.b.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(arg_3.b.d, Struct_4(444f, Struct_3(Struct_1(arg_3.b.d.x, vec2<bool>(arg_3.d.d.x, arg_3.c.x), arg_3.d.a.c, false, arg_2), arg_3.b.b, vec2<i32>(-16310i, -58790i), vec2<bool>(arg_3.b.d.x, arg_1)), vec2<bool>(true, false), arg_0), Struct_1(false, arg_3.b.a.b, 412f, arg_1, u_input.d))), _wgslsmith_f_op_f32(func_4(arg_0.d, Struct_4(1000f, Struct_3(arg_0.a, vec3<f32>(730f, var_0.b, var_0.a), vec2<i32>(u_input.c.x, arg_3.b.c.x), arg_0.a.b), arg_3.c, arg_0), Struct_1(arg_3.b.a.d, arg_0.a.b, 2892f, arg_0.a.b.x, 4294967295u))), arg_3.c.x & arg_1)))));
    var var_2 = vec2<bool>(any(vec4<bool>(false, true, ~68104u <= countOneBits(var_0.c), true)), true);
    let var_3 = select(vec4<bool>(false, false, !all(select(vec4<bool>(false, true, false, arg_3.d.d.x), vec4<bool>(var_1.x, false, arg_1, arg_3.c.x), vec4<bool>(arg_1, arg_1, var_2.x, var_2.x))), var_2.x), select(vec4<bool>(true, true, arg_3.d.a.b.x, true), !select(select(vec4<bool>(true, arg_0.d.x, arg_3.d.d.x, false), vec4<bool>(arg_0.d.x, arg_3.d.a.b.x, true, arg_1), vec4<bool>(false, var_2.x, arg_0.d.x, arg_0.a.d)), vec4<bool>(false, true, false, arg_3.d.d.x), select(vec4<bool>(false, false, true, arg_0.a.d), vec4<bool>(true, true, arg_3.b.a.b.x, var_1.x), true)), vec4<bool>(true & !arg_3.b.d.x, true, false, all(!vec4<bool>(false, false, arg_1, arg_0.d.x)))), func_2(i32(-1i) * -1i, func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), arg_3.d.c.x), 649f, Struct_4(_wgslsmith_div_f32(var_0.a, -539f), func_1(arg_3.d), !arg_3.d.d, Struct_3(Struct_1(true, var_1, 253f, false, 41866u), arg_3.b.b, vec2<i32>(0i, 490i), vec2<bool>(false, arg_1))), Struct_2(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(arg_0.a.c - -1447f), ~1u)).a.c, func_5(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_div_f32(1000f, -665f), _wgslsmith_f_op_f32(arg_0.b.x + var_0.b)), -firstTrailingBit(arg_3.b.c.x), vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.b.x - -993f), _wgslsmith_f_op_f32(f32(-1f) * -1443f)), select(select(vec4<i32>(-46818i, -2147483647i, 2202i, arg_0.c.x), u_input.b, var_1.x), vec4<i32>(0i, arg_0.c.x, u_input.c.x, -1i), arg_1)).a, Struct_2(1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)), arg_0.a.e)).a.d);
    var var_4 = Struct_5(Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2148f - _wgslsmith_f_op_f32(f32(-1f) * -781f)))), Struct_3(Struct_1(var_3.x, !var_3.zx, func_1(Struct_3(Struct_1(true, arg_0.a.b, 1825f, arg_1, arg_3.b.a.e), arg_3.b.b, vec2<i32>(arg_3.b.c.x, arg_0.c.x), arg_3.d.d)).a.c, all(var_1), arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, -540f, -411f)), max(arg_0.c, ~vec2<i32>(2147483647i, 1i)), func_2(_wgslsmith_sub_i32(u_input.b.x, -51748i), var_0.b, func_5(vec3<f32>(arg_3.a, -131f, 1386f), -4502i, vec2<f32>(arg_0.a.c, 1026f), u_input.b).a, Struct_2(arg_3.d.b.x, arg_0.b.x, 18255u)).d), func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(256f, -1214f, arg_0.a.c) * arg_0.b))), u_input.c.x, vec2<f32>(1646f, _wgslsmith_div_f32(1343f, 1186f)), -countOneBits(vec4<i32>(2147483647i, arg_3.b.c.x, 0i, 2147483647i))).a.d.d, arg_3.b));
    return func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_1(Struct_3(arg_3.d.a, arg_0.b, u_input.b.zy, vec2<bool>(arg_1, false))).a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2942f)), _wgslsmith_f_op_f32(-func_5(vec3<f32>(191f, arg_0.a.c, -1130f), -1i, arg_0.b.zy, u_input.b).a.a))), ~_wgslsmith_sub_i32(arg_3.d.c.x, -1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(arg_3.a - -1277f)) - var_0.b), _wgslsmith_f_op_f32(floor(arg_0.a.c))), u_input.b).a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1734f), Struct_3(func_6(func_1(Struct_3(Struct_1(true, vec2<bool>(false, true), 413f, false, 0u), vec3<f32>(-659f, 1185f, -1000f), vec2<i32>(u_input.a.x, 1i), vec2<bool>(true, true))), !func_1(Struct_3(Struct_1(false, vec2<bool>(false, false), -1032f, false, u_input.d), vec3<f32>(495f, 175f, -2060f), vec2<i32>(u_input.a.x, u_input.b.x), vec2<bool>(true, false))).d.x, u_input.d, Struct_4(_wgslsmith_f_op_f32(abs(2771f)), func_1(Struct_3(Struct_1(true, vec2<bool>(false, true), 594f, true, u_input.d), vec3<f32>(-1308f, -180f, 1000f), vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(true, false))), vec2<bool>(false, true), Struct_3(Struct_1(true, vec2<bool>(false, false), -901f, true, 30066u), vec3<f32>(-602f, -965f, -1000f), vec2<i32>(u_input.a.x, 8226i), vec2<bool>(true, true)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1124f, _wgslsmith_f_op_f32(-1101f + -1705f), 782f), vec3<f32>(-1098f, _wgslsmith_f_op_f32(f32(-1f) * -613f), 1744f)), abs(firstTrailingBit(vec2<i32>(u_input.b.x, u_input.a.x))), select(vec2<bool>(true, true), func_2(u_input.b.x, _wgslsmith_f_op_f32(step(853f, 1020f)), func_5(vec3<f32>(886f, -366f, 135f), u_input.c.x, vec2<f32>(944f, -894f), vec4<i32>(u_input.a.x, u_input.b.x, u_input.c.x, u_input.c.x)).a, Struct_2(-635f, -531f, 4294967295u)).d, false)), !vec2<bool>(true, func_1(Struct_3(Struct_1(false, vec2<bool>(false, true), -896f, true, u_input.d), vec3<f32>(-1432f, 359f, 1801f), vec2<i32>(u_input.a.x, u_input.b.x), vec2<bool>(false, false))).a.b.x), Struct_3(func_6(Struct_3(Struct_1(false, vec2<bool>(true, false), 717f, true, u_input.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(688f, 1583f, 1843f))), u_input.c.xy, vec2<bool>(true, true)), func_6(Struct_3(Struct_1(false, vec2<bool>(true, true), -926f, false, 67522u), vec3<f32>(-905f, 1234f, 833f), u_input.c.xy, vec2<bool>(true, false)), any(vec2<bool>(false, true)), u_input.d, Struct_4(-1960f, Struct_3(Struct_1(true, vec2<bool>(true, false), -481f, true, 4294967295u), vec3<f32>(227f, 982f, 1220f), u_input.c.zx, vec2<bool>(false, false)), vec2<bool>(false, true), Struct_3(Struct_1(true, vec2<bool>(true, false), -717f, true, u_input.d), vec3<f32>(1000f, -479f, -172f), vec2<i32>(-2147483647i, 0i), vec2<bool>(true, false)))).d, 38663u, Struct_4(_wgslsmith_f_op_f32(1337f + -552f), func_5(vec3<f32>(222f, 779f, -1183f), u_input.b.x, vec2<f32>(-1000f, -158f), vec4<i32>(u_input.a.x, u_input.c.x, 1i, 0i)).a.b, func_5(vec3<f32>(1581f, 539f, -983f), -2147483647i, vec2<f32>(-573f, 1000f), u_input.b).a.b.d, func_5(vec3<f32>(423f, -969f, -300f), u_input.a.x, vec2<f32>(-1889f, -1738f), u_input.b).a.d)), vec3<f32>(-1166f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(892f, -1000f) + _wgslsmith_f_op_f32(max(-953f, -217f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1370f - 288f) * -136f)), abs(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.c.x), u_input.b.x)), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1552f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.b.b.x, var_0.d.b.x), _wgslsmith_f_op_f32(-var_0.d.a.c), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0.d.d, Struct_4(var_0.d.b.x, Struct_3(Struct_1(true, vec2<bool>(true, var_0.b.a.a), 251f, var_0.c.x, 4294967295u), var_0.b.b, vec2<i32>(0i, u_input.c.x), vec2<bool>(true, false)), var_0.d.d, Struct_3(var_0.b.a, var_0.d.b, u_input.c.zz, vec2<bool>(false, var_0.b.a.d))), var_0.d.a)) * var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.c, -1307f, var_0.a, var_0.a))))), ~select(_wgslsmith_add_vec3_u32(~vec3<u32>(46550u, 59659u, 0u), vec3<u32>(1u, 14638u, var_0.b.a.e)), abs(vec3<u32>(var_0.d.a.e, 1u, 31258u)), select(select(vec3<bool>(var_0.b.a.d, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.d.d.x, var_0.b.d.x), vec3<bool>(true, false, var_0.b.a.d)), select(vec3<bool>(var_0.b.d.x, false, var_0.b.d.x), vec3<bool>(false, true, var_0.d.a.a), false), vec3<bool>(true, false, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, max(_wgslsmith_dot_vec3_i32(u_input.b.zzy, u_input.c), var_0.d.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(1i, -1i))));
}

