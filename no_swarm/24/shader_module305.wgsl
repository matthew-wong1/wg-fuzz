struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = ~1u;
    var var_1 = arg_0;
    var_1 = arg_0;
    var_0 = ~4294967295u;
    let var_2 = arg_0;
    return var_2.e;
}

fn func_2() -> bool {
    var var_0 = Struct_2(~46436i, ~(~(~func_3(Struct_1(-1000f, vec2<f32>(-1000f, -1523f), true, vec4<bool>(false, true, true, false), vec4<u32>(u_input.b, u_input.a, 13013u, u_input.a)), vec4<i32>(u_input.c, 5884i, -24038i, 1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, 1036f) + vec2<f32>(-1000f, -1000f)) + vec2<f32>(311f, 385f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-861f, _wgslsmith_f_op_f32(f32(-1f) * -613f)) - vec2<f32>(-3201f, _wgslsmith_f_op_f32(1184f * 1396f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-250f + _wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-481f, 792f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, 1376f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2383f, -278f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1829f, -186f))))))), true, vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)), true, !(u_input.c >= u_input.c), true), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(104052u, 1u, 72515u, u_input.d), vec4<u32>(u_input.b, u_input.d, 29381u, u_input.d)))), firstLeadingBit(countOneBits(vec2<i32>(u_input.c, u_input.c) | vec2<i32>(u_input.c, -24310i)) ^ (abs(vec2<i32>(-2147483647i, 31634i)) ^ select(vec2<i32>(12616i, u_input.c), vec2<i32>(-2147483647i, 33363i), false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a, _wgslsmith_f_op_f32(-239f * var_0.d.b.x), var_0.c.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, -1049f, 595f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, var_0.d.b.x, var_0.c.x))) + vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(245f - var_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -578f))));
    var_0 = Struct_2(-2147483647i, vec4<u32>(max(_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(var_0.d.e.x, 0u)), u_input.b), u_input.d, var_0.d.e.x, max(~(~u_input.b), 46441u)), vec2<f32>(var_0.c.x, _wgslsmith_div_f32(568f, var_1.x)), Struct_1(var_0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, var_1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -514f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(1132f, -548f)) + _wgslsmith_f_op_vec2_f32(-var_1.yy))), !var_0.d.c, select(vec4<bool>(-33378i <= u_input.c, true, var_0.d.d.x, var_0.d.c), select(select(vec4<bool>(false, false, var_0.d.c, true), var_0.d.d, var_0.d.c), select(var_0.d.d, var_0.d.d, var_0.d.c), any(vec2<bool>(false, var_0.d.d.x))), 597f == var_0.c.x), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.e.x, 21115u, 41070u, u_input.b), var_0.b) | var_0.b)), var_0.e);
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(-(~countOneBits(vec3<i32>(var_0.e.x, 69766i, 0i))), vec3<i32>(var_0.e.x, _wgslsmith_sub_i32(~1i, var_0.e.x), abs(firstLeadingBit(u_input.c)))), ~var_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 390f), vec2<f32>(-1000f, var_0.d.a)) * vec2<f32>(var_0.c.x, 516f))), vec2<f32>(913f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, var_1.x), _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(-var_1.x))), any(select(vec4<bool>(var_0.d.d.x, false, var_0.d.d.x, var_0.d.c), vec4<bool>(true, var_0.d.d.x, var_0.d.d.x, var_0.d.d.x), vec4<bool>(true, var_0.d.d.x, var_0.d.d.x, true))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), var_0.c.x), true, !(!var_0.d.d), var_0.b), vec2<i32>(max(~2147483647i, ~27344i >> (1u % 32u)), countOneBits(~0i)));
    var_0 = Struct_2(abs(countOneBits(u_input.c << (~var_0.d.e.x % 32u))), vec4<u32>(~var_0.b.x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.d.e, vec4<u32>(26167u, var_0.d.e.x, 1u, 4294967295u)) << (_wgslsmith_dot_vec3_u32(var_0.d.e.yxx, var_0.b.zxz) % 32u), ~(~30219u)), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, 1621f) * var_1.zy) * _wgslsmith_f_op_vec2_f32(var_1.yy + var_1.yy))) + _wgslsmith_f_op_vec2_f32(var_1.xy + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1724f), _wgslsmith_div_f32(var_0.d.a, var_0.c.x)))), Struct_1(453f, _wgslsmith_div_vec2_f32(var_1.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.d.b, vec2<f32>(1017f, var_0.c.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 107f) + vec2<f32>(3228f, 142f)))), all(vec2<bool>(var_0.d.d.x != var_0.d.c, 871u > var_0.b.x)), vec4<bool>(var_0.d.d.x, true, false, false), ~_wgslsmith_add_vec4_u32(var_0.d.e, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.b.x, var_0.d.e.x), vec4<u32>(1u, u_input.d, var_0.b.x, 1u)))), _wgslsmith_div_vec2_i32(~vec2<i32>(-34940i, -22429i) & vec2<i32>(~u_input.c, _wgslsmith_mult_i32(28851i, 1i)), ~(~select(var_0.e, vec2<i32>(-49287i, u_input.c), var_0.d.c))));
    return select(false && all(vec2<bool>(all(var_0.d.d.ywz), !var_0.d.d.x)), var_0.d.d.x && true, true);
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = ~(~select(vec4<u32>(u_input.a, u_input.b, 0u, u_input.d) >> (vec4<u32>(0u, u_input.b, u_input.d, 54213u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(223u, 35326u, 4590u, 0u), vec4<u32>(1u, u_input.b, 0u, u_input.a)), any(vec2<bool>(true, false)))) >> (~select(vec4<u32>(u_input.d, u_input.b, u_input.a, u_input.d) ^ reverseBits(vec4<u32>(u_input.d, 4294967295u, u_input.a, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, u_input.b, u_input.b, u_input.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 55528u, u_input.a), vec4<u32>(0u, u_input.d, u_input.d, 0u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2())) % vec4<u32>(32u));
    var var_1 = Struct_2(~(~_wgslsmith_add_i32(~u_input.c, reverseBits(u_input.c))), ~var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, 1f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -698f), arg_0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x))), vec2<f32>(-2136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(334f)))), true, select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), u_input.b <= u_input.a), vec4<bool>(true, u_input.c != u_input.c, true, true), true), ~var_0), ~(-((vec2<i32>(20688i, u_input.c) ^ vec2<i32>(-1i, -1i)) << (vec2<u32>(1u, 9863u) % vec2<u32>(32u)))));
    let var_2 = var_1.d.d.x;
    let var_3 = vec3<i32>(u_input.c, _wgslsmith_mod_i32(var_1.e.x, -11380i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(14238i, u_input.c, 48410i), 1498i), -1i) & u_input.c);
    let var_4 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(var_1.e.x, var_1.a), 6809i), var_3.yz), var_1.d.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.c)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(365f, 1000f)))), vec2<f32>(-859f, 295f), var_1.d.d.wx)), vec2<f32>(_wgslsmith_f_op_f32(ceil(1789f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), 1390f)), var_1.d.d.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f - 580f) + _wgslsmith_f_op_f32(f32(-1f) * -1156f)), vec2<f32>(1073f, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(min(1238f, -304f))))), !(var_1.d.c & select(false, false, var_1.d.c)), !select(vec4<bool>(var_1.d.d.x, var_1.d.d.x, var_1.d.d.x, true), !var_1.d.d, var_1.d.d), ~(var_1.b << (min(var_1.b, var_1.d.e) % vec4<u32>(32u)))), -select(var_1.e, var_1.e, true));
    return ~var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = reverseBits(arg_1.x);
    var_0 = 15649i;
    let var_1 = arg_0.e.yz;
    var_0 = _wgslsmith_mod_i32(-40705i, arg_1.x);
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = -639f;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(select(min(4294967295u, 6605u) << (~u_input.b % 32u), 97512u, select(all(arg_1.d), !arg_1.c, arg_1.d.x)), ~34196u), 14169u);
    let var_2 = Struct_2(~u_input.c, vec4<u32>(var_1.x, 0u, _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(func_3(arg_1, vec4<i32>(-2147483647i, arg_3.x, -33619i, arg_3.x)).x, firstTrailingBit(u_input.a))), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, 62800u), arg_1.e))), arg_1.b, arg_1, ~arg_3.xy);
    var var_3 = var_2.d;
    var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(var_2.d.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-968f - var_0)))), !(!(var_3.d.x || var_3.d.x)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(-475f, _wgslsmith_f_op_f32(arg_2.x + arg_2.x), all(vec4<bool>(arg_1.d.x, true, false, false)))), 319f))), true, vec4<bool>(all(vec3<bool>(any(vec2<bool>(false, true)), var_3.c == arg_1.d.x, any(vec3<bool>(arg_1.c, arg_1.d.x, var_2.d.c)))), var_2.d.d.x, var_2.d.d.x, false), vec4<u32>(func_3(Struct_1(-227f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, arg_2.x)), var_3.d.x, select(vec4<bool>(var_3.c, var_3.d.x, var_3.d.x, var_3.c), vec4<bool>(var_3.d.x, false, true, false), vec4<bool>(var_3.c, var_3.c, var_2.d.c, false)), ~var_2.d.e), vec4<i32>(_wgslsmith_clamp_i32(-57251i, 1i, var_2.e.x), -70693i << (var_3.e.x % 32u), var_2.e.x, 1i)).x, _wgslsmith_mod_u32(~50710u, ~0u), _wgslsmith_mod_u32(~15596u | u_input.d, _wgslsmith_mod_u32(1u, min(2821u, arg_1.e.x))), ~_wgslsmith_sub_u32(select(var_1.x, 0u, arg_1.d.x), arg_1.e.x)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.wxw)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-823f, _wgslsmith_f_op_f32(-var_0), 1000f))), _wgslsmith_clamp_u32(var_3.e.x, ~_wgslsmith_clamp_u32(33504u, 1u, var_3.e.x), func_3(var_2.d, countOneBits(vec4<i32>(var_2.a, u_input.c, -13850i, u_input.c))).x) | ~((0u << (u_input.a % 32u)) | var_2.b.x), var_3.b.x, firstTrailingBit(_wgslsmith_mod_i32(var_2.a, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(4302i, -8279i), vec2<i32>(-1i, var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -29411i;
    let var_1 = ~_wgslsmith_sub_vec2_i32(reverseBits(min(-vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(u_input.c, u_input.c))), min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(i32(-1i) * -7561i, 1i)));
    var var_2 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(u_input.d, u_input.b, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.d), vec3<u32>(u_input.d, u_input.b, u_input.d)))), ~firstLeadingBit(u_input.d)));
    var_2 = 5833u;
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + -402f)), vec2<f32>(_wgslsmith_f_op_f32(505f + -634f), _wgslsmith_div_f32(-533f, -225f)), u_input.b <= u_input.a, !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 902f, 1687f) - vec3<f32>(-693f, -863f, 1756f)))), vec4<i32>(~1i, 1i, firstTrailingBit(u_input.c), firstLeadingBit(u_input.c)), Struct_2(~firstLeadingBit(u_input.c), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(44025u, u_input.d, u_input.b, u_input.b), vec4<u32>(1u, u_input.a, 63804u, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(-796f - -355f), 1f), Struct_1(_wgslsmith_f_op_f32(round(210f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, -1555f) * vec2<f32>(619f, -389f)), true, select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<u32>(8260u, u_input.d, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.b), true)), ~var_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(241f)), _wgslsmith_f_op_f32(min(442f, 2037f)))))))), Struct_1(_wgslsmith_f_op_f32(step(-1793f, 975f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(-920f, vec2<f32>(-454f, -119f), true, vec4<bool>(true, false, false, false), vec4<u32>(1u, 4294967295u, 41196u, 1305u)), vec4<i32>(1i, var_1.x, u_input.c, -9535i), Struct_2(u_input.c, vec4<u32>(61644u, u_input.a, 4294967295u, 74321u), vec2<f32>(-156f, 554f), Struct_1(-220f, vec2<f32>(429f, -1177f), true, vec4<bool>(false, true, false, true), vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.d)), vec2<i32>(-3092i, 2147483647i)), -823f))), _wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(-1711f - 524f))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(any(vec2<bool>(true, false)) & true, true, !all(vec3<bool>(false, true, false)), true), abs(~max(vec4<u32>(37997u, u_input.b, u_input.a, u_input.b), vec4<u32>(7087u, u_input.a, u_input.b, u_input.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(902f, -1445f)), 1945f, _wgslsmith_f_op_f32(ceil(-1255f)), _wgslsmith_f_op_f32(370f + -268f)) - vec4<f32>(-1294f, -516f, 243f, _wgslsmith_f_op_f32(round(-1788f))))), -vec3<i32>(countOneBits(u_input.c) | 86791i, countOneBits(i32(-1i) * -1i), ~16933i));
}

