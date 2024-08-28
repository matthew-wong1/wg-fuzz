struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_1.a.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1673f))), 606f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))) + 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.b.x), 239f)))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-arg_1.c, u_input.e), ~select(~u_input.e, vec3<i32>(1i, u_input.e.x, u_input.a), vec3<bool>(true, true, true))), ~_wgslsmith_clamp_i32(-u_input.a, select(29629i, ~u_input.a, true), 2147483647i));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(655f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(250f, arg_1.a.b.x)), _wgslsmith_div_f32(var_1.b.x, -111f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-549f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - 444f))))))));
    var var_4 = Struct_1(vec3<u32>(~(~arg_0.x), _wgslsmith_sub_u32(~var_0.a.a.x, u_input.b.x), firstTrailingBit(~1u)) << (_wgslsmith_mod_vec3_u32(abs(~var_1.a), var_1.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_0.a.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1275f * _wgslsmith_f_op_f32(-182f + 387f)) * var_2) * _wgslsmith_f_op_f32(1225f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2033f)), _wgslsmith_f_op_f32(var_4.b.x + -945f))))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~6648u;
    let var_1 = Struct_2(Struct_1(vec3<u32>(firstLeadingBit(1u), ~(~0u), _wgslsmith_dot_vec3_u32(u_input.b.xxx, _wgslsmith_sub_vec3_u32(u_input.b.zxx, vec3<u32>(u_input.b.x, 4294967295u, var_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-128f, 1405f) * vec2<f32>(-1690f, -1214f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(665f, 786f) - vec2<f32>(-390f, -243f))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.b.yxx, Struct_2(Struct_1(u_input.b.wyy, vec2<f32>(1275f, 328f)), 803f, vec3<i32>(0i, -1245i, 81579i), u_input.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -739f)))), -385f, select(abs(countOneBits(vec3<i32>(u_input.a, 39203i, 1i) ^ vec3<i32>(25372i, u_input.a, -4159i))), select(-select(vec3<i32>(u_input.e.x, -664i, u_input.a), vec3<i32>(u_input.e.x, u_input.e.x, -53956i), true), vec3<i32>(u_input.a, u_input.a, -5593i) >> (u_input.b.yxw % vec3<u32>(32u)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), any(vec3<bool>(false, false, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.e, select(vec3<i32>(11657i, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(53323i, u_input.a, -1i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), min(reverseBits(countOneBits(vec3<i32>(u_input.e.x, -2147483647i, -2147483647i))), u_input.e >> (~u_input.b.zwz % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f) * _wgslsmith_f_op_f32(trunc(var_1.a.b.x))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, var_1.b)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b * var_1.a.b.x))))));
    var var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(15558i, -2147483647i, _wgslsmith_add_i32(27357i, abs(var_1.c.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.c.x, 0i, var_1.d), vec4<i32>(var_1.c.x, u_input.e.x, u_input.e.x, var_1.c.x) >> (vec4<u32>(u_input.d, 61980u, var_0, var_1.a.a.x) % vec4<u32>(32u))), ~(-2147483647i << (u_input.b.x % 32u)), -59754i)), -_wgslsmith_mod_vec3_i32(abs(var_1.c), u_input.e));
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), false));
    var_2 = true;
    let var_3 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), 20885i >= var_0.c.x), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true)), !any(vec2<bool>(false, true))), true), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), any(vec2<bool>(true, false))), vec2<bool>(all(vec4<bool>(true, true, true, true)), false), true));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.b.wyy, var_1.a.a << (vec3<u32>(0u, u_input.b.x, 29198u) % vec3<u32>(32u))), vec2<f32>(1000f, var_0.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), vec3<i32>(1i, ~countOneBits(0i), u_input.e.x), countOneBits(i32(-1i) * -_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(var_0.d, 34463i, u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = firstTrailingBit(arg_0.c);
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~(vec3<i32>(2147483647i, -32031i, arg_3.c.x) | vec3<i32>(u_input.e.x, var_0.x, arg_0.d))), _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(var_0 << (arg_0.a.a % vec3<u32>(32u)), func_1().c), abs(vec3<i32>(countOneBits(u_input.e.x), -2147483647i << (0u % 32u), ~(-2147483647i)))));
    let var_2 = _wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(u_input.e.x << (u_input.d % 32u), -2147483647i >> (0u % 32u), var_1.x, -2147483647i)), ~select(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-18625i, arg_3.d, -11807i, var_0.x), vec4<i32>(-1i, var_1.x, -1482i, 1i)), reverseBits(vec4<i32>(1i, arg_0.c.x, -5873i, var_1.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(86597i, arg_0.c.x, 1i, arg_3.d), vec4<i32>(u_input.e.x, 1i, var_1.x, var_1.x)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))));
    var var_3 = u_input.b;
    var_3 = select(u_input.b, ~vec4<u32>(~4294967295u, u_input.d, 1633u, ~14690u) ^ vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_1.a.x, arg_3.a.a.x), abs(1u), 1u & arg_0.a.a.x), arg_1.a.x, arg_3.a.a.x, arg_0.a.a.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), true, all(vec2<bool>(true, false)), true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true)))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), func_2().a, func_1().a, Struct_2(func_1().a, 1710f, -u_input.e, -13743i));
    var var_1 = ~u_input.b;
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(select(-1025f, 990f, false)), vec3<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, var_0.d), vec2<i32>(var_0.c.x, -11160i) ^ u_input.e.yz), 18680i), _wgslsmith_add_i32(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(-2147483647i, var_0.c.x), var_0.c.x), i32(-1i) * -44736i));
    let var_2 = Struct_1(func_2().a.a, vec2<f32>(-363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(-1159f, _wgslsmith_f_op_f32(-1000f + -859f)))));
    let var_3 = select(true, true, true);
    var var_4 = _wgslsmith_clamp_vec2_u32(var_0.a.a.zy, select(vec2<u32>(~4294967295u, var_2.a.x), vec2<u32>(var_2.a.x << (1u % 32u), ~0u), select(select(vec2<bool>(true, true), vec2<bool>(false, var_3), vec2<bool>(true, true)), vec2<bool>(var_3, true), !vec2<bool>(var_3, var_3))), min(~var_0.a.a.yz >> (u_input.b.zy % vec2<u32>(32u)), var_1.xx)) & u_input.b.zw;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e.x), max(var_5.a.a.x, 12446u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(18919u, 58376u, var_2.a.x), var_0.a.a >> (var_2.a % vec3<u32>(32u))) % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.a.b.x, var_5.b, var_5.b, -622f), vec4<f32>(var_5.b, var_2.b.x, -1180f, 577f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-984f, -500f, -243f, var_5.a.b.x), vec4<f32>(273f, -1000f, 422f, var_2.b.x), vec4<bool>(false, var_3, false, true))))))));
}

