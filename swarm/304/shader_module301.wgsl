struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), true), false);
    let var_1 = abs(~u_input.a.x);
    let var_2 = select(all(vec2<bool>(all(!vec3<bool>(false, var_0.x, false)), false)), !(!var_0.x), true);
    let var_3 = abs(1i);
    var var_4 = Struct_4(firstTrailingBit(select(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), vec4<u32>(var_1, 1u, var_1, var_1)), all(vec2<bool>(true, false)) && (true || var_2))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-615f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(440f * 2312f), _wgslsmith_f_op_f32(floor(-1941f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(529f - -1828f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1792f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(310f, 1000f))), -399f), true, Struct_2(var_0.xx, any(select(!vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(var_0.x, false, var_2, var_2), vec4<bool>(false, var_2, var_0.x, var_2), var_0.x), vec4<bool>(true, var_2, true, true))), Struct_1(vec3<i32>(-1i ^ var_3, var_3, var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, 1481f, -643f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, -449f, -163f))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 5889u, 1u, u_input.a.x), u_input.a), -1259f, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1), vec2<u32>(var_1, 77623u)) ^ firstTrailingBit(u_input.a.zy)), false, Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(-8740i, var_3, var_3), vec3<i32>(var_3, var_3, var_3) << (vec3<u32>(var_1, 47399u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, 1000f, 268f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 396f, -1000f) - vec3<f32>(-433f, 1614f, 434f))), ~min(u_input.a, vec4<u32>(u_input.a.x, 3520u, var_1, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-216f - -259f), 1f), u_input.a.yz)));
    return ~abs(vec3<u32>(4294967295u, ~u_input.a.x, 38128u));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.c.c.x, u_input.a.x << (max(arg_1.x, arg_2.c.c.x) % 32u)), select(reverseBits(countOneBits(5647u)), arg_2.c.e.x, false), 4294967295u) < 4725u;
    var var_1 = ~arg_2.c.a.x;
    var_1 = 3325i;
    let var_2 = true;
    global0 = arg_2.c.a.x;
    return ~(-28281i);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_4 {
    global0 = i32(-1i) * -1426i;
    global0 = func_4(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, arg_1) & vec4<i32>(-1i, arg_1, arg_1, 38391i), ~firstTrailingBit(vec4<i32>(8116i, -1i, -1217i, arg_1)))), countOneBits(func_3()), Struct_3(arg_3.x, vec3<f32>(-774f, arg_2, arg_3.x), Struct_1(countOneBits(vec3<i32>(1i, arg_1, -23084i)) << (~vec3<u32>(u_input.a.x, arg_0, arg_0) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, 924f), vec3<f32>(-1293f, 1470f, arg_2)), _wgslsmith_div_vec4_u32(u_input.a >> (vec4<u32>(4294967295u, 17806u, arg_0, u_input.a.x) % vec4<u32>(32u)), min(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, arg_2)), ~u_input.a.xz >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))));
    global0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(35340i, arg_1, arg_1, arg_1) ^ ~vec4<i32>(52i, 45834i, arg_1, arg_1), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 66993i), ~arg_1, 2352i, _wgslsmith_div_i32(arg_1, arg_1))), arg_1 >> (u_input.a.x % 32u)), -_wgslsmith_mod_i32(-arg_1, arg_1 >> (reverseBits(65332u) % 32u)));
    global0 = -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(~arg_1, 21468i >> (0u % 32u))), arg_1, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1) & vec2<i32>(arg_1, arg_1), -vec2<i32>(arg_1, 1i)));
    global0 = arg_1;
    return Struct_4(abs(4294967295u), 42501u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, arg_2, 1996f, arg_2)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(108f, _wgslsmith_f_op_f32(select(arg_2, arg_3.x, true)), _wgslsmith_f_op_f32(step(arg_3.x, 1183f)), -2197f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(764f, 1000f, arg_2, arg_2) * vec4<f32>(2070f, arg_2, -1034f, 253f)), vec4<f32>(arg_3.x, arg_2, 234f, arg_2), all(vec4<bool>(true, false, true, true))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, any(vec2<bool>(false, false)), select(true, false, false)), true))), !(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), Struct_2(select(vec2<bool>(false, select(true, true, true)), vec2<bool>(true, true), false), true, Struct_1(reverseBits(~vec3<i32>(1i, 40031i, arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 946f, arg_3.x), vec3<f32>(1714f, arg_2, -558f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1403f, arg_3.x, -3422f)))), ~(~vec4<u32>(u_input.a.x, 1u, 26948u, 6319u)), -950f, _wgslsmith_mod_vec2_u32(vec2<u32>(50539u, 0u), u_input.a.ww & vec2<u32>(u_input.a.x, u_input.a.x))), !any(vec4<bool>(true, true, true, true)), Struct_1(select(vec3<i32>(arg_1, arg_1, arg_1) << (vec3<u32>(0u, arg_0, 6356u) % vec3<u32>(32u)), ~vec3<i32>(arg_1, arg_1, -11580i), true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-653f, -1000f, arg_3.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, 2236f, -851f), vec3<f32>(arg_2, 759f, -1390f)))), u_input.a, 206f, ~u_input.a.wy)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_2(~_wgslsmith_div_u32(4294967295u, u_input.a.x & arg_2.e.x), countOneBits(arg_3.a.x >> (4294967295u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(-arg_3.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(633f)) + _wgslsmith_f_op_f32(418f + -383f))) * -1116f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.zx)));
    let var_1 = min(23712i, 2147483647i);
    global0 = 9410i;
    global0 = ~(-6582i);
    let var_2 = Struct_3(arg_2.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -429f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 1307f))))), Struct_1(_wgslsmith_sub_vec3_i32(arg_2.a, vec3<i32>(arg_3.a.x, _wgslsmith_mult_i32(0i, 1i), var_0.e.c.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.b, var_0.e.e.b))))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(64013u, var_0.e.c.e.x, 0u, 1u)), max(_wgslsmith_div_vec4_u32(var_0.e.e.c, vec4<u32>(u_input.a.x, var_0.e.e.c.x, 10506u, 4294967295u)), arg_2.c)), arg_3.b.x, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, arg_3.e.x), abs(arg_2.e))));
    return var_0.e;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = 48569i > arg_1.c.a.x;
    global0 = 2147483647i;
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.e.a.x, arg_1.e.a.x, arg_1.c.a.x), select(arg_1.c.a, arg_1.c.a, vec3<bool>(arg_1.d, arg_0, arg_1.b))) & vec3<i32>(1i, 1635i, -arg_1.e.a.x), vec3<i32>(0i, -(-61567i << (arg_1.c.e.x % 32u)), firstTrailingBit(-7089i) << (~0u % 32u)), vec3<i32>(i32(-1i) * -32135i, arg_1.c.a.x, arg_1.c.a.x)), arg_1.e.b, func_2(1u, -min(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.a.x, arg_1.e.a.x), arg_1.c.a.yy), -1i), _wgslsmith_f_op_f32(-arg_1.e.b.x), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.e.b.x, _wgslsmith_f_op_f32(abs(arg_1.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c.d))))).e.c.c, _wgslsmith_f_op_f32(-arg_1.e.b.x), ~(~arg_2.yx));
    let var_2 = !arg_1.d;
    let var_3 = ~((~(vec2<u32>(39941u, 1u) ^ arg_2.ww) | vec2<u32>(~arg_1.e.c.x, firstLeadingBit(4294967295u))) >> (vec2<u32>(1u, _wgslsmith_clamp_u32(abs(1u), arg_2.x, var_1.e.x)) % vec2<u32>(32u)));
    return func_2(func_1(vec4<u32>(0u, abs(4294967295u), max(56714u, arg_2.x), select(2513u, 0u, true)), firstLeadingBit(max(arg_1.e.a.x, arg_1.c.a.x)), func_1(~vec4<u32>(3317u, var_3.x, 0u, 52120u), 1i, func_1(arg_2, 1i, Struct_1(arg_1.c.a, vec3<f32>(1000f, 1390f, var_1.b.x), vec4<u32>(arg_1.e.e.x, 111128u, 67041u, 32134u), arg_1.e.d, arg_1.c.c.wz), arg_1.e).e, var_1).c, func_1(abs(vec4<u32>(66657u, 1u, 4294967295u, 93480u)), -17746i, func_1(arg_2, -14951i, var_1, var_1).e, arg_1.e).c).e.c.x ^ _wgslsmith_div_u32(arg_1.e.c.x, 0u), var_1.a.x, _wgslsmith_f_op_f32(select(728f, _wgslsmith_f_op_f32(-arg_1.e.d), true)), vec2<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.d)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    var var_0 = 1u;
    global0 = -1i;
    var_0 = 48370u;
    var var_1 = arg_1.e.e.e;
    var var_2 = !arg_1.e.b;
    return Struct_4(func_2(96687u >> ((1u & u_input.a.x) % 32u), arg_1.e.c.a.x, arg_0.c.x, func_2(func_5(func_2(0u, -21495i, 1941f, arg_1.e.e.b.yx).d, arg_1.e, ~vec4<u32>(arg_1.e.e.e.x, var_1.x, arg_1.e.e.c.x, arg_1.a)).b, arg_1.e.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(-304f, -298f)).c.xx).b, _wgslsmith_sub_u32(~arg_0.e.c.c.x, ~1u), _wgslsmith_f_op_vec4_f32(-arg_1.c), true, func_1(vec4<u32>(~20726u, arg_1.b, var_1.x, func_5(true, func_5(arg_0.e.d, arg_1.e, arg_0.e.e.c).e, ~vec4<u32>(arg_0.a, 273u, arg_0.b, 43812u)).e.e.e.x), func_1(vec4<u32>(_wgslsmith_div_u32(arg_1.e.e.c.x, arg_0.a), ~55585u, min(arg_0.a, 6174u), ~4294967295u), reverseBits(arg_0.e.c.a.x), func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.b), ~(-2147483647i), Struct_1(vec3<i32>(0i, arg_1.e.c.a.x, 1i), vec3<f32>(-540f, -155f, 147f), arg_0.e.c.c, -172f, arg_1.e.e.e), func_1(vec4<u32>(arg_0.a, 1u, u_input.a.x, 1u), arg_1.e.c.a.x, arg_1.e.e, arg_0.e.e).c).c, func_5(false, Struct_2(arg_1.e.a, true, Struct_1(vec3<i32>(arg_1.e.e.a.x, 0i, -25472i), arg_0.c.ywy, vec4<u32>(65749u, 23382u, 1u, 32784u), arg_0.e.c.d, vec2<u32>(var_1.x, 4294967295u)), arg_1.e.a.x, Struct_1(vec3<i32>(-2147483647i, 2147483647i, 36944i), arg_1.e.c.b, vec4<u32>(11099u, 0u, 93091u, 1u), arg_1.e.e.b.x, u_input.a.wz)), ~vec4<u32>(0u, 1u, 9409u, 1u)).e.e).c.a.x, func_5(arg_0.e.a.x, Struct_2(func_1(vec4<u32>(4294967295u, 1u, 61365u, arg_0.a), arg_1.e.c.a.x, Struct_1(vec3<i32>(0i, 1i, 661i), arg_1.c.yyw, vec4<u32>(22061u, 6466u, u_input.a.x, 21790u), arg_0.e.c.b.x, arg_1.e.c.c.yx), arg_0.e.c).a, all(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.e.a.x)), Struct_1(vec3<i32>(9836i, 8067i, 0i), vec3<f32>(arg_0.e.e.d, 856f, 446f), arg_0.e.c.c, arg_0.c.x, arg_0.e.c.e), true, func_5(false, arg_1.e, vec4<u32>(3070u, var_1.x, u_input.a.x, var_1.x)).e.c), arg_1.e.c.c).e.c, func_2(firstLeadingBit(~arg_1.a), arg_0.e.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.e.b.x * 161f)), arg_1.c.xz).e.c));
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = arg_2.c.a.x;
    let var_0 = arg_2.c.c.yw;
    let var_1 = arg_2.c.a.x;
    let var_2 = arg_2.c.a.x;
    var var_3 = arg_2.b.yx;
    return func_2(min(_wgslsmith_mult_u32(arg_0.e.c.e.x, ~(arg_2.c.c.x ^ arg_0.e.e.c.x)), _wgslsmith_div_u32(arg_2.c.c.x, ~arg_0.b)), var_1, 1415f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_0.c.xy, arg_0.c.wx, true))))).e.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(true, func_1(firstLeadingBit(u_input.a), 3710i << (u_input.a.x % 32u), Struct_1(vec3<i32>(7733i, 1i, 0i), vec3<f32>(-276f, -3083f, 859f), u_input.a, -643f, u_input.a.wy), Struct_1(vec3<i32>(-14749i, 0i, 0i), vec3<f32>(428f, -981f, 563f), u_input.a, 170f, u_input.a.yw)), vec4<u32>(16191u, 0u, 16190u, u_input.a.x) << (u_input.a % vec4<u32>(32u))), func_2(4294967295u, ~(-5710i), -365f, vec2<f32>(_wgslsmith_f_op_f32(346f - 125f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~countOneBits(_wgslsmith_sub_i32(-19129i, _wgslsmith_add_i32(-1i, 31073i))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1299f + -1000f), 867f)), _wgslsmith_f_op_vec3_f32(exp2(func_6(func_2(u_input.a.x, 1i, 200f, vec2<f32>(-1000f, -757f)), func_6(Struct_4(u_input.a.x, 69244u, vec4<f32>(-1000f, 213f, -591f, 974f), false, Struct_2(vec2<bool>(false, false), true, Struct_1(vec3<i32>(1i, 4220i, 0i), vec3<f32>(-1052f, 664f, -623f), u_input.a, -319f, vec2<u32>(4294967295u, u_input.a.x)), false, Struct_1(vec3<i32>(0i, 32017i, 515i), vec3<f32>(-287f, 525f, 129f), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 53274u), 1583f, u_input.a.xz))), Struct_4(u_input.a.x, 24175u, vec4<f32>(1139f, 878f, -1000f, -1000f), false, Struct_2(vec2<bool>(true, true), false, Struct_1(vec3<i32>(0i, 10330i, 54278i), vec3<f32>(1286f, 1245f, 159f), vec4<u32>(0u, 12594u, 1u, 63778u), 129f, vec2<u32>(0u, 0u)), false, Struct_1(vec3<i32>(-2147483647i, -8937i, -26949i), vec3<f32>(823f, -1703f, 406f), vec4<u32>(90082u, 0u, 10116u, 4294967295u), -1387f, u_input.a.xy))))).c.zzy)), Struct_1(-vec3<i32>(1i, -33298i, 16283i) << (~u_input.a.zzx % vec3<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(-701f, 289f), _wgslsmith_div_f32(107f, 856f), func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), 1i, Struct_1(vec3<i32>(-35157i, -1i, 1i), vec3<f32>(682f, 1000f, -438f), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), 1000f, u_input.a.zw), Struct_1(vec3<i32>(-6722i, 1i, -1i), vec3<f32>(549f, -2849f, -683f), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u), -1000f, vec2<u32>(u_input.a.x, u_input.a.x))).c.d), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)), ~u_input.a.xw)), _wgslsmith_f_op_f32(-1f));
    let var_1 = ~(~u_input.a.x) <= _wgslsmith_add_u32(func_2(13567u, ~var_0.a.x, -1000f, _wgslsmith_f_op_vec2_f32(-var_0.b.zy)).b | 1663u, ~u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-932f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.d, -456f), -1288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) * func_5(true, Struct_2(vec2<bool>(false, true), true, Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, 0i), var_0.b, vec4<u32>(19284u, 69703u, 1u, u_input.a.x), var_0.d, u_input.a.xy), var_1, Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, vec4<u32>(var_0.c.x, 1u, var_0.c.x, var_0.c.x), -1000f, vec2<u32>(1u, 15584u))), vec4<u32>(0u, 4294967295u, 10039u, u_input.a.x)).c.x)))));
    let var_3 = 1u;
    global0 = i32(-1i) * -2147483647i;
    let var_4 = Struct_4(var_3, ~(func_2(abs(0u), var_0.a.x, _wgslsmith_f_op_f32(1774f - var_0.b.x), _wgslsmith_f_op_vec2_f32(-var_2.yz)).e.e.e.x & 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-858f, var_0.b.x, -1979f, var_0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(504f, 710f, -857f, var_2.x) + vec4<f32>(-171f, var_0.d, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1170f, -2101f))), _wgslsmith_f_op_vec4_f32(-func_6(Struct_4(u_input.a.x, 56611u, vec4<f32>(1332f, 1172f, var_2.x, -1000f), true, Struct_2(vec2<bool>(true, false), false, Struct_1(var_0.a, var_0.b, vec4<u32>(60732u, 16636u, var_3, u_input.a.x), var_0.d, vec2<u32>(4294967295u, 0u)), var_1, Struct_1(vec3<i32>(1i, 2147483647i, 0i), vec3<f32>(var_2.x, 296f, 112f), vec4<u32>(var_0.c.x, var_0.e.x, 0u, var_0.c.x), var_0.d, u_input.a.xx))), Struct_4(76752u, 0u, vec4<f32>(var_2.x, var_0.d, var_0.b.x, var_2.x), false, Struct_2(vec2<bool>(var_1, false), var_1, var_0, true, var_0))).c))), var_1, func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_3, u_input.a.x), 69356u, reverseBits(var_0.e.x) | _wgslsmith_mod_u32(var_0.e.x, 6482u)), reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x)), var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(min(var_2.x, 353f))))), var_0.b.yy).e);
    var var_5 = Struct_3(var_4.e.e.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_2.x, var_2.x) - vec3<f32>(-756f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(var_2.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(var_4.e.e.c, -21703i, Struct_1(var_4.e.c.a, var_4.c.yzy, vec4<u32>(var_3, 4294967295u, 0u, u_input.a.x), -604f, vec2<u32>(2840u, 1u)), Struct_1(var_0.a, vec3<f32>(var_0.d, var_0.d, 394f), var_0.c, 1200f, vec2<u32>(u_input.a.x, 0u))).c.b.x, var_4.c.x, var_2.x))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~var_0.e.x, ~var_0.a.x | 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f + func_6(Struct_4(0u, 104910u, vec4<f32>(var_2.x, 815f, -612f, -881f), var_4.d, Struct_2(var_4.e.a, true, var_4.e.e, false, var_4.e.e)), Struct_4(29373u, u_input.a.x, var_4.c, false, var_4.e)).e.e.d) + -1111f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_5.c.b.yz)) + vec2<f32>(var_5.a, -900f)))).c, var_4.e.c.a.xx & vec2<i32>(var_4.e.e.a.x, _wgslsmith_mult_i32(var_4.e.e.a.x, 39760i) << (~62687u % 32u)), 0u);
}

