struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b), abs(vec2<i32>(arg_2.c, u_input.b)))) << (vec2<u32>(_wgslsmith_div_u32(4294967295u, firstLeadingBit(countOneBits(33970u))), ~_wgslsmith_add_u32(~39235u, firstTrailingBit(arg_0))) % vec2<u32>(32u));
    var_0 = ~(~(-vec2<i32>(u_input.c, var_0.x)) ^ countOneBits(countOneBits(vec2<i32>(-67015i, var_0.x) & vec2<i32>(1i, arg_2.c))));
    var var_1 = !select(select(vec4<bool>(false, true, true, all(arg_2.d)), !select(vec4<bool>(arg_2.d.x, false, arg_2.d.x, arg_2.d.x), vec4<bool>(arg_2.d.x, arg_2.d.x, false, arg_2.d.x), false), all(vec3<bool>(arg_2.d.x, true, arg_2.d.x)) & all(vec3<bool>(arg_2.d.x, arg_2.d.x, true))), !vec4<bool>(arg_2.d.x, arg_2.a.x < u_input.a, arg_2.d.x != arg_2.d.x, arg_2.d.x), vec4<bool>(arg_2.d.x, false, all(vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)), arg_2.d.x));
    let var_2 = true;
    var_0 = ~(~(max(vec2<i32>(10991i, -9850i), ~vec2<i32>(2147483647i, var_0.x)) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))));
    return -1000f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1030f, 119f)), _wgslsmith_f_op_f32(func_3(u_input.a, _wgslsmith_div_f32(-233f, -1393f), Struct_1(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a), -1i, vec2<bool>(true, false), -1461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f * 1586f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1272f, 772f)) - 136f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, 917f, -815f, 508f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2072f))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-273f, 1000f, false))))));
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, _wgslsmith_mult_i32(u_input.c, u_input.b), countOneBits(1i)), max(countOneBits(vec4<i32>(4895i, 17441i, 10053i, u_input.c)) | abs(vec4<i32>(4435i, -37308i, -39521i, u_input.b)), _wgslsmith_div_vec4_i32(-vec4<i32>(-20049i, u_input.c, 10183i, u_input.b), firstLeadingBit(vec4<i32>(-24866i, u_input.c, 0i, 0i)))));
    var_1 = vec4<i32>(-1i) * -select(~abs(vec4<i32>(var_1.x, 7633i, u_input.b, var_1.x)), vec4<i32>(-22220i, -2147483647i, var_1.x, -28056i) >> (select(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(150403u, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), ~0u != (u_input.a ^ 4294967295u));
    var_1 = ~vec4<i32>(0i, ~(-var_1.x & -20756i), ~(-15286i), 23648i);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-310f + var_0.x)));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, -155f, 876f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-139f, 292f, -994f), vec3<f32>(1000f, -728f, -147f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-962f, 2319f, -542f))), vec3<f32>(1000f, 2433f, -592f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-584f, 1273f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * -943f)))))), !vec3<bool>(true, all(vec3<bool>(false, false, true)), true)));
    var var_1 = (vec3<u32>(~countOneBits(92825u), _wgslsmith_add_u32(43744u & u_input.a, firstLeadingBit(u_input.a)), u_input.a) | _wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(73592u, 62755u, 1u)), vec3<u32>(0u, reverseBits(u_input.a), u_input.a))) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(0u, 0u) >> ((vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 20690u)) % vec2<u32>(32u))), 1u, _wgslsmith_sub_u32(0u, abs(min(0u, 33046u))));
    var var_2 = ~_wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.zy, vec2<u32>(0u, 30928u)) >> (var_1.zy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u) ^ var_1.yx, ~vec2<u32>(66075u, u_input.a))));
    let var_3 = Struct_2(vec3<u32>(~(~var_1.x), 1u, 24187u), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_1.x, u_input.a, var_1.x)), ~vec3<u32>(u_input.a, 1u, 0u)) & vec3<u32>(firstTrailingBit(~4294967295u), var_1.x, _wgslsmith_clamp_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 1u), vec4<u32>(1u, u_input.a, 0u, 56902u)), 39336u)), select(vec4<bool>(true, any(vec2<bool>(true, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), false), !vec4<bool>(true, all(vec2<bool>(true, false)), true, true), true));
    let var_4 = select(!select(var_3.c.xwz, select(vec3<bool>(var_3.c.x, var_3.c.x, true), vec3<bool>(true, var_3.c.x, var_3.c.x), false | var_3.c.x), any(select(vec3<bool>(false, var_3.c.x, var_3.c.x), vec3<bool>(true, var_3.c.x, var_3.c.x), vec3<bool>(var_3.c.x, var_3.c.x, var_3.c.x)))), vec3<bool>(var_3.c.x, true, var_3.c.x), !var_3.c.yxz);
    return ~vec3<u32>(u_input.a, 38622u, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(abs(vec3<u32>(0u, u_input.a, 1u) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 15319u, u_input.a))), ~(~vec3<u32>(29119u, u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), Struct_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(41571u, 1u, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, 4400u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a)), func_1(), vec4<bool>(false, 27621u >= _wgslsmith_add_u32(u_input.a, 30598u), !any(vec4<bool>(true, false, false, false)), false)), ~(~(~vec2<u32>(19801u, u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(60069u, u_input.a), vec2<u32>(4294967295u, u_input.a)))), select(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.c)) | u_input.c, (21258i | u_input.b) != (i32(-1i) * -44179i)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), abs(vec2<u32>(0u, u_input.a))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, u_input.a))) % 32u), min(u_input.c, -2147483647i));
    var var_1 = var_0.c.x;
    let var_2 = max(var_0.a.a.yy | ~(~_wgslsmith_div_vec2_u32(var_0.c, var_0.c)), ~vec2<u32>(_wgslsmith_add_u32(var_0.c.x, 4294967295u), abs(var_0.b.b.x)) << (firstTrailingBit(vec2<u32>(1u, abs(79986u))) % vec2<u32>(32u)));
    var var_3 = reverseBits(u_input.a >> (1u % 32u));
    var var_4 = any(vec2<bool>(false, true));
    let var_5 = -(~reverseBits(~vec2<i32>(-1i, var_0.d)));
    var var_6 = Struct_1(var_2, var_2, var_0.e << (_wgslsmith_mod_u32(4982u, var_2.x) % 32u), select(vec2<bool>(var_0.b.c.x, !(!var_0.a.c.x)), !(!select(var_0.a.c.zz, vec2<bool>(var_0.a.c.x, var_0.a.c.x), vec2<bool>(var_0.b.c.x, true))), true), 1123f);
    var_1 = _wgslsmith_mult_u32(var_0.b.b.x, _wgslsmith_mod_u32(reverseBits(func_1().x), countOneBits(~firstTrailingBit(10088u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.e, 72450u, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(30635i, u_input.b, -31172i), countOneBits(vec3<i32>(var_6.c, -1i, var_5.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, var_6.c), vec2<i32>(var_6.c, var_0.e)), ~_wgslsmith_add_i32(var_6.c, 1i))), ~countOneBits(vec3<i32>(-var_6.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_6.c, -14875i, u_input.b), vec3<i32>(u_input.b, var_0.e, var_0.e)), -var_6.c)), vec2<i32>(6771i >> (var_0.b.a.x % 32u), u_input.c));
}

