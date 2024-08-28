struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> bool {
    return (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f * 620f)), (arg_0.c.b.x || false) || !arg_0.c.a.a.b))) | arg_0.c.b.x;
}

fn func_3() -> vec3<bool> {
    var var_0 = ~vec4<u32>(~u_input.b.x, 0u, _wgslsmith_mult_u32(u_input.a.x, reverseBits(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x))), ~0u);
    var var_1 = select(all(vec3<bool>(true, false, false)) | false, true, true) & true;
    var var_2 = abs(firstLeadingBit(u_input.c));
    var var_3 = vec4<bool>(true, -6829i == countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(-7779i, 4583i, 0i), ~vec3<i32>(var_2.x, -52297i, u_input.d))), all(vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), select(false, func_1(Struct_5(vec3<f32>(-1151f, 182f, -227f), countOneBits(u_input.b.x), Struct_4(Struct_2(Struct_1(u_input.b.x, true)), vec2<bool>(true, false))), ~abs(-43426i), ~_wgslsmith_div_u32(u_input.b.x, var_0.x), Struct_4(Struct_2(Struct_1(1u, false)), vec2<bool>(true, false))), true));
    var_1 = (!(true | any(var_3.wwx)) | !all(vec4<bool>(true, true, true, true))) & ((u_input.c.x > u_input.d) & true);
    return vec3<bool>(!(_wgslsmith_f_op_f32(round(-2079f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1321f)))), var_3.x, -2147483647i > _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(0i), -var_2.x), u_input.c.x));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 306f, -170f))) * _wgslsmith_div_vec3_f32(vec3<f32>(383f, 1316f, -551f), vec3<f32>(-443f, 713f, -1052f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-1466f, 1315f, -426f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2579f, 1943f, 2061f)))), vec3<f32>(-1183f, 1532f, -162f), func_3()))), ~u_input.b.x, Struct_4(Struct_2(Struct_1(u_input.a.x & 10424u, true)), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var var_1 = 1349f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(step(-1118f, -881f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))))), 1000f));
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: u32) -> Struct_5 {
    var var_0 = false;
    var var_1 = select(select(vec4<bool>(firstTrailingBit(1u) > (u_input.b.x << (arg_0.b % 32u)), true, true, arg_0.c.a.a.b), select(select(vec4<bool>(true, arg_0.c.a.a.b, arg_0.c.b.x, false), vec4<bool>(false, arg_0.c.b.x, arg_0.c.a.a.b, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(arg_1, arg_1, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.c.b.x, arg_1, true, arg_0.c.b.x), vec4<bool>(true, arg_1, arg_0.c.a.a.b, true)), arg_1), select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_0.c.a.a.b, arg_0.c.a.a.b, false, arg_0.c.a.a.b), arg_1), !vec4<bool>(true, true, true, arg_1), false | arg_1)), false), !vec4<bool>(!arg_1 & !arg_1, arg_1, (arg_1 & true) & func_1(Struct_5(arg_0.a, arg_2, Struct_4(Struct_2(arg_0.c.a.a), arg_0.c.b)), 2208i, arg_0.b, Struct_4(arg_0.c.a, arg_0.c.b)), all(!vec3<bool>(arg_1, true, true))), !(!select(select(vec4<bool>(true, true, arg_1, false), vec4<bool>(false, arg_0.c.b.x, arg_0.c.a.a.b, true), arg_0.c.a.a.b), vec4<bool>(arg_1, true, arg_1, true), u_input.d >= u_input.d)));
    var_1 = vec4<bool>(~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_2, 1u, u_input.a.x, arg_2))) > arg_2, true, true, !arg_0.c.a.a.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_3 = Struct_3(arg_0.c.a.a, !select(vec4<bool>(false, func_2().c.a.a.b, 4294967295u == arg_2, func_3().x), vec4<bool>(true, true, true, !arg_1), !(!vec4<bool>(arg_1, arg_1, var_1.x, false))), true, firstLeadingBit(min(u_input.c.x, 9609i & _wgslsmith_mult_i32(u_input.d, -52978i))), true);
    return Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f * arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(368f))), -761f)), func_2().b, arg_0.c);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(abs(-1i), arg_2.x ^ 1i, ~(~39633i)), arg_2.x, reverseBits(arg_2.x), -select(countOneBits(arg_2.x | u_input.c.x), 13320i, true));
    var var_1 = Struct_4(Struct_2(Struct_1(1u, !(!arg_0.c.a.a.b))), arg_0.c.b);
    var var_2 = vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x - 543f))), arg_0.a.x);
    var var_3 = Struct_3(Struct_1(~(~(var_1.a.a.a >> (arg_0.c.a.a.a % 32u))), func_3().x), select(select(vec4<bool>(var_1.b.x, arg_0.c.b.x | var_1.a.a.b, all(vec2<bool>(arg_0.c.a.a.b, false)), arg_0.c.b.x), !(!vec4<bool>(var_1.a.a.b, var_1.a.a.b, true, true)), arg_0.c.a.a.b), select(vec4<bool>(arg_0.c.b.x, any(vec2<bool>(arg_0.c.b.x, true)), var_1.b.x, arg_0.c.a.a.b), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false && var_1.a.a.b, arg_0.c.a.a.b, arg_0.c.b.x & arg_0.c.a.a.b, true), vec4<bool>(false, true, false, false), any(var_1.b))), var_1.b.x, -abs(-var_0.x) & _wgslsmith_div_i32(var_0.x & firstTrailingBit(u_input.c.x), 2147483647i & _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(var_0.x, arg_2.x, 1i, 1i))), var_1.b.x);
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-abs(abs(0i)), 1i), var_3.d);
    return Struct_3(Struct_1(u_input.b.x, func_3().x), var_3.b, var_3.a.b, -(~u_input.d), var_1.a.a.b);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(arg_3.xwx, arg_3.xwy);
    var var_1 = _wgslsmith_f_op_f32(1074f + var_0.x);
    let var_2 = -1510i;
    var var_3 = u_input.a.ww;
    let var_4 = func_2().c.a;
    return !(!(!(u_input.c.x != ~u_input.c.x)));
}

fn func_7(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = func_4(Struct_5(vec3<f32>(-1761f, -1446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2018f, -987f)) * _wgslsmith_f_op_f32(f32(-1f) * -765f))), u_input.a.x, Struct_4(Struct_2(func_2().c.a.a), func_2().c.b)), false, u_input.a.x).c;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-489f, 2533f, 1000f, -507f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1393f, -676f, -1182f, 445f) - vec4<f32>(-2090f, -790f, 845f, 557f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, 425f, 1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, -560f, -1245f, -1000f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(604f, -113f, -1709f, 1412f), vec4<f32>(786f, -939f, 214f, -1028f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, 855f, -1276f, 868f) + vec4<f32>(822f, -371f, -215f, -154f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, 1638f, -1158f, -1871f) * vec4<f32>(-1412f, -445f, 1359f, -127f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1143f, 796f, 857f, -558f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, 556f, 363f, -836f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1514f, 1143f, -667f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, -1853f, -2931f, -653f)))))));
    let var_2 = Struct_1(4416u, all(func_3().xx));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-513f, var_1.x, 704f, -710f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1838f)), _wgslsmith_f_op_f32(f32(-1f) * -551f), var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)))), !(!select(vec4<bool>(arg_1, false, true, var_0.b.x), vec4<bool>(true, var_0.b.x, false, arg_1), vec4<bool>(false, false, false, arg_1))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1369f, _wgslsmith_f_op_f32(floor(834f)), _wgslsmith_f_op_f32(var_1.x - -500f), _wgslsmith_f_op_f32(ceil(-1980f)))))), true || (var_0.a.a.a <= 1u)));
    let var_3 = !(!(!func_3()));
    return Struct_2(func_5(func_4(Struct_5(vec3<f32>(var_1.x, -1788f, var_1.x), firstLeadingBit(2923u), func_2().c), var_0.a.a.b, ~var_0.a.a.a), u_input.b, vec4<i32>(1i, 1i, u_input.c.x, -2147483647i) ^ vec4<i32>(~(-2147483647i), arg_0, min(arg_0, -2147483647i), ~1i), _wgslsmith_f_op_vec2_f32(var_1.wx - vec2<f32>(_wgslsmith_f_op_f32(161f - 810f), -913f))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~(~u_input.b.x), true));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(1000f + -758f), -1559f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(715f, -510f, 1039f)))))))));
    var_0 = func_7(2147483647i, func_6(abs(u_input.c), !vec3<bool>(var_0.a.a != var_1.x, func_1(Struct_5(vec3<f32>(var_2.x, 619f, var_2.x), 20906u, Struct_4(Struct_2(var_0.a), vec2<bool>(var_0.a.b, var_0.a.b))), u_input.d, var_0.a.a, Struct_4(Struct_2(Struct_1(u_input.a.x, false)), vec2<bool>(var_0.a.b, var_0.a.b))), var_0.a.b), func_5(func_4(func_2(), false, _wgslsmith_dot_vec3_u32(vec3<u32>(95105u, 40398u, var_1.x), vec3<u32>(23236u, 40578u, var_0.a.a))), vec3<u32>(_wgslsmith_clamp_u32(var_0.a.a, 1u, u_input.a.x), ~u_input.b.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 17548i, 39935i, u_input.c.x), vec4<i32>(1i, 2147483647i, -1i, u_input.c.x)) ^ select(vec4<i32>(u_input.c.x, u_input.c.x, -28138i, -1i), vec4<i32>(u_input.c.x, -33509i, 2147483647i, -1i), vec4<bool>(true, false, false, var_0.a.b)), var_2.xy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(trunc(202f))))));
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.d, u_input.d), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(-35330i, _wgslsmith_div_i32(u_input.c.x, u_input.c.x))), _wgslsmith_add_i32(0i, 1i), -123304i << (~(var_0.a.a & 0u) % 32u), 3546i), var_2.x, 0u, ~(~(i32(-1i) * -2147483647i)));
}

