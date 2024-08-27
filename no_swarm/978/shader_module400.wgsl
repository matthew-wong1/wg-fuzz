struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(34465u, 115534u), vec2<u32>(4294967295u, 1u), vec2<u32>(37908u, 1u), vec2<u32>(56430u, 17275u), vec2<u32>(8021u, 4294967295u), vec2<u32>(1u, 78147u), vec2<u32>(21544u, 4294967295u), vec2<u32>(0u, 64436u), vec2<u32>(8860u, 48195u), vec2<u32>(52194u, 21733u), vec2<u32>(16266u, 1u), vec2<u32>(4294967295u, 82667u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> bool {
    global1 = array<vec2<u32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(1335f + _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2666f - -627f)) - -422f)));
    let var_1 = -790f;
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(arg_0), firstLeadingBit(0u)), ~vec2<u32>(firstTrailingBit(arg_0) >> (_wgslsmith_sub_u32(u_input.b, 45444u) % 32u), countOneBits(firstLeadingBit(24087u))));
    var var_3 = any(vec2<bool>(true, true));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<i32> {
    global1 = array<vec2<u32>, 12>();
    let var_0 = _wgslsmith_div_vec4_i32(countOneBits(u_input.e), vec4<i32>(_wgslsmith_clamp_i32(arg_0.a.x, reverseBits(arg_0.a.x) ^ 32179i, ~abs(arg_0.a.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i)) << (u_input.c.x % 32u), _wgslsmith_div_i32(arg_0.a.x, ~(i32(-1i) * -9571i)), 26716i));
    var var_1 = Struct_1(var_0.xy, _wgslsmith_f_op_f32(min(-1650f, -1000f)), arg_0.e, arg_0.d, arg_2.c.e);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(915f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), 1u, arg_0.e.x, arg_0.b);
    let var_3 = Struct_5(var_2.a, 1u, _wgslsmith_f_op_f32(1563f * _wgslsmith_f_op_f32(select(var_1.d, 182f, arg_2.b.x))), var_1.b);
    return u_input.e.xz;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_2 {
    global0 = func_4(Struct_1(vec2<i32>(0i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -1016f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.d - arg_1.a)), _wgslsmith_f_op_f32(sign(-319f)), -780f, arg_1.c), arg_1.c, vec4<f32>(1407f, -1959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - arg_1.d) * _wgslsmith_f_op_f32(round(arg_1.c))), -2040f)), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, arg_1.b, arg_0.x)), vec3<u32>(~arg_1.b, ~1u, arg_0.x)), Struct_2(Struct_1(u_input.e.yw, _wgslsmith_f_op_f32(abs(447f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1022f, arg_1.c, 1114f, -1000f))))), 616f, vec4<f32>(arg_1.a, -698f, 1798f, _wgslsmith_div_f32(-602f, arg_1.d))), vec4<bool>(all(!vec3<bool>(true, arg_2.x, false)), func_3(~9690u), any(vec3<bool>(arg_2.x, false, arg_2.x)), true), Struct_1(vec2<i32>(abs(-1i), _wgslsmith_mod_i32(1i, -2147483647i)), _wgslsmith_f_op_f32(select(-299f, _wgslsmith_f_op_f32(floor(210f)), arg_2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, -451f, arg_1.a, arg_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_1.a, arg_1.d, arg_1.c)), select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), arg_2.x))), _wgslsmith_f_op_f32(step(-861f, _wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, -824f, arg_1.a, -845f) - vec4<f32>(arg_1.d, 183f, 219f, arg_1.c)))))));
    global1 = array<vec2<u32>, 12>();
    var var_0 = Struct_4(false, select(select(!select(vec3<bool>(arg_2.x, false, true), vec3<bool>(true, arg_2.x, false), arg_2.x), vec3<bool>(!arg_2.x, true, any(vec3<bool>(true, arg_2.x, arg_2.x))), arg_2.x), vec3<bool>(true, arg_1.d <= _wgslsmith_f_op_f32(exp2(arg_1.c)), func_3(~arg_0.x)), func_3(4294967295u)));
    global1 = array<vec2<u32>, 12>();
    global0 = u_input.e.xz;
    return Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(29845i, global0.x), arg_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1860f, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-1000f + arg_1.d), _wgslsmith_div_f32(arg_1.c, arg_1.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1684f, arg_1.a, 1265f, 1922f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, -1000f, -1000f), vec4<f32>(arg_1.d, 155f, arg_1.c, arg_1.d)))), 665f, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d - -1233f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(163f)))), _wgslsmith_f_op_f32(round(arg_1.d)), arg_1.a)), vec4<bool>(!(!var_0.a), any(var_0.b.xy), arg_2.x, any(!select(vec4<bool>(arg_2.x, false, var_0.a, var_0.b.x), vec4<bool>(false, arg_2.x, var_0.b.x, true), vec4<bool>(var_0.a, arg_2.x, false, var_0.a)))), Struct_1(abs(vec2<i32>(global0.x, _wgslsmith_div_i32(global0.x, 23306i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d, arg_1.d)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, -689f, 437f, -568f) - vec4<f32>(-918f, 410f, -1047f, 1212f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - arg_1.d), _wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(arg_1.c + -400f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1842f, 1933f, -1158f, arg_1.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(325f, arg_1.a, arg_1.d, -695f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_1.c, arg_1.c, arg_1.d) * vec4<f32>(-126f, 1000f, -1217f, -834f)))))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> Struct_5 {
    return Struct_5(arg_1.a.c.x, ~firstLeadingBit(max(arg_2, 12647u)), arg_1.c.d, arg_1.a.d);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool) -> Struct_3 {
    return Struct_3(arg_2, ~_wgslsmith_mod_u32(~arg_1.b, _wgslsmith_sub_u32(14126u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, arg_0.b, arg_1.b), vec4<u32>(0u, 32733u, 0u, arg_1.b)))), func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0.b, u_input.c.x | arg_1.b), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b, 1u), u_input.c))), func_5(func_3(7953u) == all(vec3<bool>(false, false, arg_2)), Struct_2(Struct_1(vec2<i32>(7013i, global0.x), -1513f, vec4<f32>(145f, 1581f, arg_1.c, arg_1.a), 1000f, vec4<f32>(-973f, -1000f, 397f, arg_1.d)), !vec4<bool>(arg_2, arg_2, true, arg_2), Struct_1(vec2<i32>(global0.x, 19576i), -1114f, vec4<f32>(-501f, arg_1.d, -1484f, arg_0.c), 1481f, vec4<f32>(-1914f, -698f, arg_0.d, arg_0.c))), 11179u, !(!vec4<bool>(arg_2, true, arg_2, false))), func_2(vec2<u32>(~8989u, ~87052u), arg_0, vec2<bool>(all(vec3<bool>(arg_2, arg_2, false)), arg_2)).b.zy));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(countOneBits(44766u), 12u)], Struct_5(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.c.c.x, _wgslsmith_f_op_f32(1036f + 123f)), -107f), arg_1.b, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(313f + -158f)))), vec2<bool>(arg_1.a, false & !all(arg_1.c.b.yy))).c;
    var var_1 = arg_1.c.c.e;
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + arg_2.x), _wgslsmith_f_op_f32(-456f * arg_1.c.c.b), true))), arg_2.x, var_0.b, 1174f), arg_2);
    var var_2 = Struct_3(arg_1.c.b.x && true, 4294967295u, func_6(Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1426f - var_0.e.x), -768f), ~max(0u, 4294967295u), -141f, var_0.d), func_5(all(arg_1.c.b.xy), func_2(u_input.c, Struct_5(114f, u_input.b, arg_2.x, -146f), vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(u_input.c, abs(vec2<u32>(4294967295u, 4294967295u))), vec4<bool>(func_2(arg_0.xy, Struct_5(var_1.x, 47345u, arg_1.c.a.e.x, -1986f), vec2<bool>(false, arg_1.c.b.x)).b.x, false, arg_1.a, all(arg_1.c.b.yyw))), arg_1.c.b.x).c);
    let var_3 = func_2(_wgslsmith_div_vec2_u32(u_input.c, abs(_wgslsmith_div_vec2_u32(~u_input.c, arg_0.zz & arg_0.zy))), Struct_5(926f, 17495u, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * var_1.x) * var_0.b)), var_2.c.b.ww).a;
    return func_6(Struct_5(arg_1.c.a.b, _wgslsmith_div_u32(_wgslsmith_div_u32(var_2.b, 0u), _wgslsmith_add_u32(var_2.b, 4294967295u)) << ((70498u ^ func_5(true, Struct_2(var_3, vec4<bool>(false, var_2.c.b.x, arg_1.c.b.x, arg_1.c.b.x), arg_1.c.c), 10020u, vec4<bool>(true, var_2.a, false, false)).b) % 32u), var_1.x, var_3.c.x), func_5(!(all(vec3<bool>(false, true, arg_1.a)) & true), var_2.c, u_input.b, !vec4<bool>(var_2.a && true, false, var_2.a, arg_1.b >= arg_0.x)), var_2.a).c.a;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_add_i32(-(~_wgslsmith_div_i32(~arg_0.a.x, ~arg_0.a.x)), global0.x);
    global1 = array<vec2<u32>, 12>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), 0u, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(sign(490f)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f - arg_0.b)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1345f)))), arg_1.b.wwy);
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    global0 = ~(-reverseBits(~vec2<i32>(-3771i, global0.x)));
    let var_0 = !arg_2.x;
    global0 = vec2<i32>(abs(countOneBits(~(arg_1.x << (4294967295u % 32u)))), ~(-(~(-9280i))));
    global1 = array<vec2<u32>, 12>();
    var var_1 = func_8(func_7(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u) ^ vec3<u32>(1u, 9885u, 4294967295u), ~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), ~vec3<u32>(u_input.b, u_input.c.x, 4294967295u)), func_6(Struct_5(_wgslsmith_f_op_f32(1000f - arg_0.a.b), _wgslsmith_mult_u32(u_input.b, u_input.c.x), 1517f, _wgslsmith_f_op_f32(f32(-1f) * -147f)), func_5(true == arg_2.x, func_2(global1[_wgslsmith_index_u32(4294967295u, 12u)], Struct_5(arg_0.c.e.x, u_input.b, arg_0.c.d, arg_0.a.b), arg_2.zy), max(u_input.c.x, u_input.c.x), vec4<bool>(true, false, var_0, var_0)), any(vec2<bool>(true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.e)), _wgslsmith_f_op_vec4_f32(min(arg_0.a.c, vec4<f32>(arg_0.c.d, -651f, -809f, 384f))))), arg_0);
    return _wgslsmith_f_op_f32(func_7(vec3<u32>(31984u, _wgslsmith_add_u32(u_input.c.x, 0u), u_input.c.x) ^ vec3<u32>(func_6(Struct_5(-384f, u_input.b, -536f, -938f), Struct_5(arg_0.c.c.x, 41209u, arg_0.a.b, 1843f), arg_0.b.x).b, u_input.b, ~u_input.b), Struct_3(!all(arg_0.b.xw), 11928u, Struct_2(arg_0.a, vec4<bool>(true, var_1.b.x, arg_2.x, arg_0.b.x), Struct_1(arg_1.wy, arg_0.c.d, vec4<f32>(389f, arg_0.c.d, arg_0.a.b, arg_0.a.e.x), -1000f, vec4<f32>(956f, 491f, 766f, arg_0.c.c.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-791f * -280f), arg_0.c.e.x, _wgslsmith_f_op_f32(step(arg_0.a.c.x, arg_0.a.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -505f))))).c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) - -1556f));
}

fn func_9(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global0 = arg_1.a;
    global0 = ~vec2<i32>(arg_2.a.x, 0i) >> (((global1[_wgslsmith_index_u32(func_6(func_5(true, Struct_2(Struct_1(vec2<i32>(u_input.e.x, -1i), -1260f, arg_1.c, 2708f, arg_2.e), vec4<bool>(true, false, true, false), arg_1), 0u, vec4<bool>(true, false, true, true)), Struct_5(1535f, u_input.c.x, arg_2.b, -677f), func_3(0u)).b, 12u)] << (min(max(u_input.c, vec2<u32>(u_input.c.x, u_input.b)), firstTrailingBit(global1[_wgslsmith_index_u32(76951u, 12u)])) % vec2<u32>(32u))) << (~(~vec2<u32>(11200u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_0 = max(vec2<i32>(-11760i, global0.x >> (7011u % 32u)), select(vec2<i32>(_wgslsmith_add_i32(-u_input.a, u_input.e.x | -18114i), reverseBits(~2200i)), arg_1.a, vec2<bool>(true, func_8(arg_2, Struct_2(arg_1, vec4<bool>(true, true, true, false), arg_2)).b.x)));
    var var_1 = false;
    global0 = -vec2<i32>(-35494i, -1i);
    return vec3<bool>(!any(func_8(arg_1, Struct_2(arg_2, vec4<bool>(false, true, false, true), Struct_1(arg_2.a, arg_0, vec4<f32>(-567f, 134f, -259f, -1205f), 238f, arg_1.e))).b.zy) && (var_0.x < 0i), !((true && func_6(Struct_5(-1464f, 63634u, -1000f, -631f), Struct_5(137f, 1u, arg_0, -1000f), false).a) || true), _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec2_i32(min(arg_2.a, vec2<i32>(-2147483647i, 1i)), -u_input.e.yy), global0.x) != -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, func_9(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2175f - _wgslsmith_f_op_f32(-114f + -1098f)))), Struct_1(u_input.e.yw, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.e.yz, 600f, vec4<f32>(-343f, 205f, -212f, -167f), 1452f, vec4<f32>(779f, -1224f, -442f, -705f)), vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(u_input.e.x, u_input.d), 963f, vec4<f32>(-563f, 1622f, 751f, 298f), -461f, vec4<f32>(1265f, 1658f, 1456f, 164f))), u_input.e, vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-759f, -1629f, -188f, -1152f) * vec4<f32>(1019f, -671f, 1000f, 494f))), _wgslsmith_div_f32(-2247f, 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1946f, -1000f, -1000f, -658f))), vec4<f32>(1000f, -1787f, 458f, 1872f))), func_2(abs(~vec2<u32>(u_input.b, 36761u)), Struct_5(793f, 0u, _wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(f32(-1f) * -1504f)), vec2<bool>(true, true)).a));
    var var_1 = func_5(var_0.b.x && false, func_2(u_input.c, func_5(var_0.a, func_2(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 12u)], vec2<u32>(4294967295u, 1u)), Struct_5(-333f, 0u, -748f, -1000f), var_0.b.yy), _wgslsmith_div_u32(64953u, u_input.c.x), select(vec4<bool>(var_0.b.x, var_0.a, var_0.a, false), vec4<bool>(false, var_0.b.x, true, true), vec4<bool>(var_0.b.x, false, true, true))), var_0.b.xz), firstTrailingBit(0u), func_6(func_5(false, func_6(Struct_5(-734f, u_input.c.x, -239f, -1000f), Struct_5(130f, u_input.b, -1779f, 177f), false).c, max(_wgslsmith_sub_u32(u_input.b, u_input.b), firstTrailingBit(47710u)), !func_6(Struct_5(270f, 4294967295u, 1301f, -638f), Struct_5(461f, 20122u, 596f, 863f), false).c.b), Struct_5(_wgslsmith_f_op_f32(func_1(func_2(vec2<u32>(15332u, 1u), Struct_5(2094f, u_input.c.x, 285f, -469f), vec2<bool>(false, true)), abs(u_input.e), var_0.b)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, 4294967295u, 46002u, u_input.b)), 4294967295u, false), 177f, -358f), any(var_0.b)).c.b);
    var var_2 = func_6(func_5(any(select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(false, false, false, true), vec4<bool>(var_0.a, var_0.b.x, true, false)), vec4<bool>(var_0.a, false, var_0.b.x, var_0.b.x), var_0.a)), Struct_2(Struct_1(vec2<i32>(1i, global0.x), 251f, vec4<f32>(var_1.d, var_1.a, var_1.a, var_1.c), _wgslsmith_f_op_f32(1205f + -386f), vec4<f32>(-439f, var_1.a, -668f, var_1.a)), func_2(global1[_wgslsmith_index_u32(var_1.b << (0u % 32u), 12u)], func_5(var_0.a, Struct_2(Struct_1(u_input.e.zx, var_1.c, vec4<f32>(397f, var_1.c, var_1.c, var_1.d), -610f, vec4<f32>(982f, 294f, 1273f, var_1.c)), vec4<bool>(true, true, var_0.a, var_0.a), Struct_1(u_input.e.wx, var_1.c, vec4<f32>(-784f, 1784f, var_1.c, 1638f), var_1.c, vec4<f32>(var_1.d, 1052f, var_1.d, var_1.d))), 4294967295u, vec4<bool>(true, true, var_0.b.x, var_0.b.x)), vec2<bool>(false, var_0.a)).b, func_7(vec3<u32>(u_input.c.x, 31133u, 7u) & vec3<u32>(var_1.b, 4294967295u, 0u), Struct_3(true, u_input.b, Struct_2(Struct_1(u_input.e.yw, -182f, vec4<f32>(-747f, var_1.c, -931f, var_1.c), var_1.c, vec4<f32>(var_1.a, var_1.d, var_1.d, 1000f)), vec4<bool>(true, false, var_0.b.x, var_0.b.x), Struct_1(vec2<i32>(global0.x, global0.x), var_1.c, vec4<f32>(-332f, var_1.d, -463f, var_1.c), var_1.d, vec4<f32>(1362f, var_1.a, 900f, var_1.d)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, 316f, -1209f, 433f))))), _wgslsmith_clamp_u32(0u, 4294967295u, min(22343u, 0u)), func_6(Struct_5(-293f, ~4294967295u, 577f, _wgslsmith_f_op_f32(-var_1.c)), Struct_5(var_1.c, _wgslsmith_div_u32(var_1.b, 18848u), 1115f, -1030f), !var_0.a).c.b), Struct_5(_wgslsmith_f_op_f32(-func_5(var_0.b.x, func_6(Struct_5(var_1.a, var_1.b, -752f, var_1.c), Struct_5(889f, 76734u, -358f, var_1.d), var_0.b.x).c, _wgslsmith_sub_u32(1u, 1u), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.a)).a), _wgslsmith_add_u32(40300u, u_input.b), _wgslsmith_div_f32(1689f, var_1.d), -616f), true).c;
    global0 = vec2<i32>(15882i, global0.x);
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(5495i, firstTrailingBit(18530i)), var_2.c.a.x ^ _wgslsmith_dot_vec3_i32(u_input.e.zzw, u_input.e.ywy)), _wgslsmith_mod_vec2_i32(func_2(vec2<u32>(4294967295u, 1u), Struct_5(-225f, 36568u, 1000f, var_2.a.b), var_0.b.yz).a.a ^ vec2<i32>(2147483647i, 5556i), vec2<i32>(select(u_input.a, var_2.c.a.x, var_0.b.x), _wgslsmith_sub_i32(45996i, -1i)))), _wgslsmith_f_op_f32(-var_1.a), var_2.c.c, var_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(627f, _wgslsmith_f_op_f32(func_1(Struct_2(var_2.a, vec4<bool>(var_2.b.x, var_0.b.x, var_0.b.x, true), var_2.a), -vec4<i32>(global0.x, -46559i, var_2.c.a.x, u_input.d), func_2(vec2<u32>(4294967295u, 84171u), Struct_5(var_2.c.d, var_1.b, 1222f, 669f), var_2.b.ww).b.zwx)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(2690f)), _wgslsmith_f_op_f32(var_2.c.b * 238f), -263f, var_2.c.e.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.b, 1037f, 1273f, 1355f))))));
    let var_4 = func_5(all(var_2.b.xxy), func_6(func_5(var_0.a, Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.a), -629f, vec4<f32>(var_2.c.e.x, 1000f, 1870f, var_3.b), var_3.e.x, var_2.c.c), !vec4<bool>(var_2.b.x, var_2.b.x, false, false), func_7(vec3<u32>(0u, var_1.b, u_input.b), Struct_3(var_2.b.x, u_input.c.x, Struct_2(Struct_1(u_input.e.zy, 369f, vec4<f32>(-1352f, var_3.d, var_1.c, var_2.c.c.x), 174f, vec4<f32>(-622f, var_2.a.e.x, -1066f, var_3.d)), var_2.b, Struct_1(vec2<i32>(global0.x, u_input.d), 257f, vec4<f32>(340f, 2050f, -569f, -642f), var_3.c.x, vec4<f32>(-812f, var_1.a, -317f, var_1.a)))), vec4<f32>(542f, var_3.d, 114f, var_3.e.x))), 48961u, vec4<bool>(6083i > var_2.a.a.x, var_2.b.x, func_2(u_input.c, Struct_5(393f, 0u, var_2.a.b, 1439f), var_0.b.zz).b.x, var_0.b.x | false)), func_5(false, func_6(Struct_5(-226f, 28299u, var_3.b, var_1.a), func_5(false, Struct_2(var_3, vec4<bool>(var_0.a, false, true, var_0.a), Struct_1(vec2<i32>(var_2.a.a.x, 45194i), -1053f, vec4<f32>(494f, var_1.a, var_2.a.c.x, var_2.a.e.x), var_1.a, vec4<f32>(var_3.b, var_3.e.x, -2048f, var_2.c.e.x))), 0u, vec4<bool>(var_2.b.x, false, var_2.b.x, var_0.a)), !var_2.b.x).c, _wgslsmith_sub_u32(0u, ~var_1.b), var_2.b), select(true, true, all(func_2(vec2<u32>(var_1.b, u_input.b), Struct_5(-2186f, 1u, var_3.d, var_1.c), var_2.b.xz).b))).c, ~min(56317u, 1u >> (func_5(var_2.b.x, Struct_2(var_3, vec4<bool>(true, var_0.b.x, var_0.a, var_0.a), var_2.a), var_1.b, vec4<bool>(true, var_0.a, var_0.b.x, var_0.b.x)).b % 32u)), select(vec4<bool>(var_0.b.x, !var_2.b.x, true, true), !vec4<bool>(true, !var_0.b.x, 1u <= u_input.c.x, var_2.b.x), any(var_2.b.zy)));
    var var_5 = var_2.a;
    let var_6 = _wgslsmith_f_op_f32(func_1(func_6(Struct_5(func_5(any(var_0.b), func_6(var_4, Struct_5(1000f, 25090u, 536f, var_5.c.x), true).c, _wgslsmith_mod_u32(1838u, 26436u), vec4<bool>(var_0.b.x, false, var_2.b.x, false)).a, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), 26116u), func_6(Struct_5(var_5.e.x, 43u, var_4.c, 1455f), Struct_5(-241f, var_1.b, var_3.d, -2035f), !var_2.b.x).c.a.e.x, _wgslsmith_f_op_f32(sign(-1826f))), var_4, true).c, min(~(~vec4<i32>(2147483647i, -18387i, 18275i, u_input.e.x)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(u_input.e, vec4<i32>(var_5.a.x, 2368i, var_3.a.x, var_3.a.x))), vec3<bool>(true, true, select(true && var_2.b.x, any(vec2<bool>(false, false)) & !var_2.b.x, !func_3(0u)))));
    global0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x | var_3.a.x, -23005i | global0.x, func_7(vec3<u32>(34892u, 58492u, 8464u), Struct_3(false, var_1.b, Struct_2(var_3, vec4<bool>(true, var_0.b.x, var_0.a, var_2.b.x), Struct_1(vec2<i32>(global0.x, var_3.a.x), 1000f, var_3.e, var_5.b, vec4<f32>(1000f, -231f, -550f, var_5.d)))), vec4<f32>(var_3.d, 868f, 1715f, -363f)).a.x, -u_input.d), u_input.e), _wgslsmith_mult_i32(var_3.a.x >> (select(var_1.b, var_4.b, var_2.b.x) % 32u), var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(56732i, var_2.c.a.x), -vec2<i32>(global0.x, 1i), ~(~(~(~vec2<u32>(var_1.b, 15338u)))), -987f, abs(vec3<u32>(var_1.b, var_1.b, 8199u) << ((~vec3<u32>(1u, 0u, var_1.b) & _wgslsmith_add_vec3_u32(vec3<u32>(210u, var_4.b, 1u), vec3<u32>(var_4.b, 1954u, 4294967295u))) % vec3<u32>(32u))));
}

