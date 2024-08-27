struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 790f;

var<private> global1: u32 = 4294967295u;

var<private> global2: u32 = 63262u;

var<private> global3: f32 = -408f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = firstTrailingBit(0i);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-761f + 465f), _wgslsmith_f_op_f32(f32(-1f) * -2008f), true)), 174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(893f, 1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2365f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, arg_1.c.x)), -261f)));
    var var_2 = all(select(!vec3<bool>(all(vec3<bool>(true, true, false)), false, true), select(vec3<bool>(true, arg_0 <= var_1.x, true), vec3<bool>(false, true, any(vec4<bool>(true, true, false, false))), (1000f != var_1.x) && true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true)));
    var_2 = (_wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(max(var_1.x, arg_1.a))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(250f, -258f)))))) & any(vec4<bool>(true, _wgslsmith_div_i32(arg_1.b.x, -44873i) != arg_1.b.x, true, any(vec3<bool>(true, true, false))));
    let var_3 = !vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.c.xx, var_1.xx, vec2<bool>(var_3.x, var_3.x))) - _wgslsmith_f_op_vec2_f32(select(var_1.yz, arg_1.c.yy, vec2<bool>(var_3.x, false)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -488f), vec2<f32>(-593f, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_0))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_i32(select(min(arg_1.b.wwz, reverseBits(vec3<i32>(-10774i, arg_1.b.x, arg_1.b.x))), firstTrailingBit(arg_1.b.wzz), true), ~select(~vec3<i32>(arg_1.b.x, -2147483647i, arg_0.a.c), ~(-vec3<i32>(arg_1.b.x, arg_0.a.c, 2147483647i)), any(arg_0.a.b.xx) & true));
    var var_1 = vec2<u32>(4012u, _wgslsmith_sub_u32(max(~(~arg_2.x), arg_2.x), u_input.d));
    let var_2 = any(arg_0.a.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_1.c.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2022f, -1000f)))));
    var var_4 = ~_wgslsmith_div_vec3_u32(~arg_2, vec3<u32>(83352u, 5290u, select(u_input.b.x, 4294967295u, false))) ^ abs(vec3<u32>(~(arg_2.x >> (arg_2.x % 32u)), u_input.b.x, 1u));
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(select(arg_2.x, u_input.b.x, var_2), 4294967295u), max(45037u, ~var_1.x)), 1u), 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<i32> {
    global3 = arg_2.x;
    global2 = func_4(Struct_3(Struct_2(arg_2.zz, !arg_1.b.xwx, ~(2147483647i ^ u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1481f, Struct_4(arg_2.x, vec4<i32>(1i, arg_0.a, arg_0.a, arg_0.a), vec3<f32>(470f, arg_2.x, arg_2.x)), u_input.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(ceil(-1269f)), _wgslsmith_f_op_f32(-384f * 1289f)) - vec4<f32>(arg_2.x, 835f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(781f)))), any(vec3<bool>(true, arg_1.b.x, !arg_0.b.x))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * 135f)) - -764f), vec4<i32>(-1i) * -(vec4<i32>(-1i, -1i, 23107i, 1i) >> (vec4<u32>(83657u, 24412u, u_input.b.x, 1u) % vec4<u32>(32u))), vec3<f32>(arg_1.c.x, 487f, -348f)), ~((vec3<u32>(u_input.b.x, 19707u, 897u) | select(vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(70303u, u_input.b.x, 50525u), arg_1.b.wyz)) ^ vec3<u32>(~u_input.b.x, ~u_input.d, 0u)));
    global1 = u_input.b.x;
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(235f, _wgslsmith_f_op_f32(arg_1.e.x * _wgslsmith_f_op_f32(step(-1000f, arg_0.e.x)))))), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_div_f32(arg_0.e.x, arg_2.x))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x - -160f) - -1348f)))));
    return vec3<i32>(-_wgslsmith_dot_vec3_i32(~u_input.a, -u_input.a), arg_1.a, reverseBits(-_wgslsmith_mod_i32(arg_1.a, 2147483647i))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(~(-2147483647i), arg_1.a, -2147483647i), -vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(19229i, arg_1.a, arg_0.a, u_input.a.x), vec4<i32>(0i, arg_0.a, arg_0.a, arg_1.a)), arg_1.a));
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_2(arg_0.d, vec3<bool>(all(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), arg_0.b.x, false), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, 81939i, arg_0.c | firstLeadingBit(-2147483647i)), reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), func_2(Struct_1(0i, vec4<bool>(false, false, true, false), vec3<f32>(arg_0.d.x, -412f, -355f), vec3<bool>(arg_0.b.x, false, false), vec3<f32>(arg_0.a.x, 2565f, arg_0.d.x)), Struct_1(0i, vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), vec3<f32>(202f, 256f, arg_0.d.x), arg_0.b, vec3<f32>(arg_0.a.x, 338f, -1631f)), vec3<f32>(arg_0.d.x, 368f, 1035f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -1645f)) * vec2<f32>(2461f, arg_0.a.x)), arg_0.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_div_f32(-1081f, arg_0.d.x)))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(func_4(Struct_3(Struct_2(var_0.a, arg_0.b, arg_0.c, arg_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, -3938f, arg_0.d.x, var_0.d.x)), var_0.b.x), Struct_4(_wgslsmith_f_op_f32(var_0.d.x * 1343f), ~vec4<i32>(-31077i, 13624i, -1i, -2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(-2334f, 1000f, -1000f), vec3<f32>(arg_0.d.x, arg_0.a.x, 2073f))), vec3<u32>(countOneBits(13840u), u_input.b.x, max(u_input.b.x, u_input.d))), abs(~(11741u & u_input.d)), 1u), ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(0u, u_input.b.x, 1u))) | firstLeadingBit(abs(vec3<u32>(3782u, u_input.b.x, 33879u)))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, -1041f), 271f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 1546f) * -166f) - var_0.d.x))));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(max(countOneBits(u_input.a.x), 2147483647i), -8770i ^ _wgslsmith_add_i32(-41334i, u_input.c.x), _wgslsmith_add_i32(u_input.e, 19852i) >> (u_input.d % 32u)) | abs(func_2(Struct_1(1i, vec4<bool>(var_0.b.x, true, false, false), vec3<f32>(1386f, -775f, -1263f), vec3<bool>(false, false, arg_0.b.x), vec3<f32>(arg_0.a.x, arg_0.d.x, 1248f)), Struct_1(1i, vec4<bool>(true, arg_0.b.x, arg_0.b.x, true), vec3<f32>(2097f, arg_0.a.x, -1000f), vec3<bool>(var_0.b.x, false, arg_0.b.x), vec3<f32>(134f, var_0.a.x, -1650f)), vec3<f32>(356f, var_0.a.x, arg_0.d.x)).x), _wgslsmith_mult_i32(u_input.a.x, abs(_wgslsmith_mod_i32(var_0.c, ~arg_0.c))));
    return Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x >> (u_input.d % 32u), u_input.e, ~(-2147483647i)) & u_input.a, -((u_input.a | vec3<i32>(-26525i, -82340i, 2147483647i)) >> (firstLeadingBit(vec3<u32>(u_input.d, u_input.b.x, 1u)) % vec3<u32>(32u)))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    let var_0 = countOneBits(arg_0.a) == arg_2.a.c;
    let var_1 = ~(firstLeadingBit(u_input.b.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(~u_input.b.x, ~12793u)));
    var var_2 = ~u_input.d;
    var var_3 = _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, func_4(arg_1, arg_3, vec3<u32>(u_input.b.x, u_input.b.x, 26752u))) ^ abs(0u)) > var_1;
    var var_4 = _wgslsmith_sub_vec4_u32(firstTrailingBit(~(vec4<u32>(u_input.d, 4294967295u, 1u, 1u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, var_1), vec4<u32>(0u, u_input.d, 4992u, 4294967295u)) % vec4<u32>(32u)))), abs(~(~(~vec4<u32>(21580u, 35330u, var_1, 0u)))));
    return Struct_1(firstTrailingBit(arg_0.a), !vec4<bool>(!arg_2.a.b.x & true, any(vec2<bool>(true, var_0)), all(select(arg_1.a.b, arg_1.a.b, vec3<bool>(arg_1.a.b.x, true, false))), u_input.a.x <= -55815i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(round(-1206f)), arg_1.b.x))), vec3<f32>(-923f, arg_1.b.x, arg_3.c.x))), !select(vec3<bool>(arg_2.c, all(arg_2.a.b.xz), true), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), any(select(arg_2.a.b, vec3<bool>(var_0, arg_2.c, arg_2.a.b.x), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.b.wzz)))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_3 {
    global3 = -420f;
    global2 = ~u_input.b.x;
    var var_0 = max(arg_0.a, -1i);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(860f, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -856f)))), !vec3<bool>(1000f < arg_2.x, !arg_0.d.x, u_input.b.x > 0u), ~_wgslsmith_mod_i32(11565i, _wgslsmith_clamp_i32(arg_0.a, u_input.e, -2147483647i)), arg_2.xz), arg_2, _wgslsmith_f_op_f32(arg_2.x + arg_2.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1717f + -828f) + _wgslsmith_f_op_f32(-arg_2.x)) + arg_2.x));
    var var_2 = vec2<i32>(arg_0.a, _wgslsmith_add_i32(arg_1.a, -2147483647i));
    return Struct_3(var_1.a, arg_2, any(select(!var_1.a.b, var_1.a.b, var_1.c)));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    global2 = 73555u;
    let var_0 = 44228u;
    var var_1 = arg_1.x;
    var var_2 = ~(arg_0.a | _wgslsmith_mod_i32(~arg_2.a.c, _wgslsmith_mod_i32(-15789i, arg_2.a.c))) | -func_5(func_1(Struct_2(arg_2.a.a, vec3<bool>(true, true, true), -2147483647i, arg_0.e.zz)), arg_2, arg_2, Struct_4(_wgslsmith_f_op_f32(abs(673f)), countOneBits(vec4<i32>(u_input.a.x, u_input.c.x, arg_2.a.c, arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_2.b.x, 697f) - arg_2.b.xxw))).a;
    let var_3 = -52471i;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(Struct_1(_wgslsmith_sub_i32(u_input.e, -16309i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-328f, 167f, 200f) * vec3<f32>(-987f, -908f, -1531f)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-770f, 232f, 193f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1531f, 753f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, 395f)))), func_6(func_5(func_1(Struct_2(vec2<f32>(-753f, -1083f), vec3<bool>(false, false, false), u_input.e, vec2<f32>(621f, 793f))), Struct_3(Struct_2(vec2<f32>(-165f, -1048f), vec3<bool>(true, true, true), u_input.e, vec2<f32>(-1026f, 394f)), vec4<f32>(419f, 168f, -963f, -1192f), true), Struct_3(Struct_2(vec2<f32>(-1249f, 166f), vec3<bool>(true, true, false), u_input.e, vec2<f32>(-2216f, 1000f)), vec4<f32>(379f, -857f, 581f, -1000f), true), Struct_4(347f, vec4<i32>(u_input.c.x, 24033i, u_input.c.x, u_input.a.x), vec3<f32>(-532f, 454f, 1082f))), Struct_5(_wgslsmith_div_i32(-1i, u_input.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1755f, 1123f, 1008f, -136f) * vec4<f32>(-794f, 169f, 344f, 876f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c.x >> (_wgslsmith_sub_u32(u_input.b.x, 11644u) % 32u)), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-332f, 124f, 1364f, 769f), vec4<f32>(171f, -529f, 723f, 901f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1713f, 229f, 178f, -735f)), vec4<f32>(1242f, -1199f, 762f, -334f)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, -291f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-423f, 1000f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(959f, 689f)), _wgslsmith_f_op_f32(f32(-1f) * -236f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1088f, 1000f), vec2<f32>(663f, -931f), vec2<bool>(false, true))))))), -2079f);
}

