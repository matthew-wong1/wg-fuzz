struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> vec3<f32> {
    var var_0 = Struct_2(arg_0);
    var var_1 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(-1091f, 881f), 711f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 167f, var_0.a)))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<bool>(u_input.e != u_input.b.x, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(1f, u_input.b.wz, ~u_input.d, 253f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1453f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-319f + 1193f), -502f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(-838f, u_input.b.xx, -2147483647i, -1057f)).x, 435f, _wgslsmith_f_op_f32(f32(-1f) * -1570f)), vec3<f32>(_wgslsmith_f_op_f32(round(-1286f)), _wgslsmith_f_op_f32(-520f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1263f)))))));
    let var_2 = Struct_2(-593f);
    let var_3 = !(!(!(!vec3<bool>(true, true, var_0.x))));
    var var_4 = Struct_5(reverseBits(~firstLeadingBit(firstTrailingBit(u_input.b))), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.c.x, 13387i, u_input.c.x, 0i)), reverseBits(~vec4<i32>(u_input.d, u_input.c.x, 43715i, u_input.c.x))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(select(u_input.c.x, 0i, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -13547i, u_input.c.x, u_input.d), vec4<i32>(u_input.d, u_input.c.x, -2147483647i, -4503i)), u_input.d, -13712i), reverseBits(vec4<i32>(u_input.d, -18658i, 29856i, u_input.c.x))));
    return Struct_3(_wgslsmith_sub_i32(~(-firstTrailingBit(u_input.d)), var_4.b.x));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = firstTrailingBit(select(abs(1i), -_wgslsmith_mult_i32(var_0.a, var_0.a), true) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -2147483647i, 11177i) & vec3<i32>(var_0.a, var_0.a, -1i), -vec3<i32>(u_input.d, 81349i, var_0.a), vec3<bool>(true, false, true)), (vec3<i32>(-22772i, 0i, var_0.a) << (vec3<u32>(6157u, u_input.e, 78443u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(u_input.b.zyw, vec3<u32>(4294967295u, 35869u, 0u)) % vec3<u32>(32u))));
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-7412i << (0u % 32u), reverseBits(u_input.d)) | ~select(vec2<i32>(18392i, u_input.d), u_input.c, true), abs(vec2<i32>(var_0.a, firstTrailingBit(u_input.d)))) << (u_input.a % 32u);
    var var_2 = any(select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(true, false)), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    let var_3 = vec4<bool>(true, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-472f, 616f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -177f))), true)) <= _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1222f + -1361f), _wgslsmith_f_op_f32(207f - -1000f)), ~vec2<u32>(u_input.b.x, u_input.b.x), ~(~(-2147483647i)), -306f)).x, false);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(~(~firstLeadingBit(-2147483647i)), min(-27209i, firstTrailingBit(var_0.a ^ 1i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d, 6943i, var_0.a, u_input.c.x), vec4<i32>(u_input.c.x, 6125i, -7464i, 0i), var_3.x), -select(vec4<i32>(-43107i, 17999i, 0i, 1i), vec4<i32>(var_0.a, var_0.a, u_input.d, 2147483647i), true)), 58059i), -vec4<i32>(~_wgslsmith_mult_i32(0i, 11284i), 0i, var_0.a, max(countOneBits(-2147483647i), ~u_input.c.x)), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-2733i ^ u_input.d, 31193i, firstTrailingBit(u_input.d))), -2147483647i, countOneBits(0i), ~_wgslsmith_add_i32(select(var_0.a, 8732i, true), var_0.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = !arg_2.x && arg_2.x;
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(u_input.b.x) & ~u_input.e, max(u_input.a, 13366u) | u_input.a, u_input.e), u_input.b.yxz);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-1025f + -1298f);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, -2218f) - var_4.x));
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    let var_0 = vec2<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)));
    var var_1 = func_2();
    var_1 = Struct_3(var_1.a);
    var_1 = func_2();
    var var_2 = 25219u;
    return Struct_5(_wgslsmith_clamp_vec4_u32(max(min(vec4<u32>(63668u, u_input.b.x, 1u, 4294967295u), u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.e, u_input.a, u_input.e), vec4<u32>(u_input.b.x, u_input.e, u_input.b.x, 19995u)) | ~vec4<u32>(6107u, u_input.a, u_input.a, 0u)), u_input.b, vec4<u32>(35768u, abs(max(58555u, u_input.e)), 0u, u_input.e)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.c.x, var_1.a, 2147483647i, 19492i), ~vec4<i32>(u_input.d, u_input.d, var_1.a, 12249i)), -select(vec4<i32>(var_1.a, var_1.a, -2147483647i, u_input.d), vec4<i32>(u_input.d, u_input.c.x, 703i, -21394i), vec4<bool>(true, true, true, true))), vec4<i32>(firstTrailingBit(~1i), -(u_input.d << (4294967295u % 32u)), _wgslsmith_clamp_i32(u_input.d, var_1.a, var_1.a) >> (u_input.b.x % 32u), var_1.a >> (select(u_input.b.x, u_input.b.x, true) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<bool>(var_0 || ((all(vec3<bool>(var_0, var_0, var_0)) & true) && true), var_0, 1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1480f)), _wgslsmith_f_op_f32(abs(-426f)), true))), var_0);
    let var_2 = !vec2<bool>(false, var_0);
    var var_3 = func_5(func_4(max(min(~vec4<i32>(u_input.c.x, -9684i, u_input.c.x, u_input.c.x), -vec4<i32>(-61175i, u_input.d, 1i, u_input.d)), func_1() << (u_input.b % vec4<u32>(32u))), vec2<bool>(true, true), !var_1.xxy, ~(~(~u_input.d))));
    var_3 = func_5(Struct_2(-492f));
    let var_4 = func_5(func_4(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, var_3.b.x, var_3.b.x, var_3.b.x), select(var_2, var_1.xw, var_2.x), !(!(!var_1.xxw)), _wgslsmith_dot_vec4_i32(var_3.b, ~var_3.b) >> (9964u % 32u)));
    var var_5 = func_4(var_3.b, !select(var_1.ww, !select(var_1.xy, var_2, var_2), !var_0), select(var_1.zzx, var_1.xzw, true), _wgslsmith_div_i32(_wgslsmith_add_i32(~firstLeadingBit(u_input.d), countOneBits(-18651i)), 0i));
    let var_6 = !(var_3.a.x >= abs(~min(var_3.a.x, var_4.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.a, -994f, var_5.a)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-539f, var_5.a, 936f)))))), min(~(~(~var_4.a.wxw)), vec3<u32>(~61823u, min(~58861u, 1u), var_3.a.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_4.a.x, u_input.a, var_3.a.x) | ~vec3<u32>(22541u, 63246u, 17683u)), ~_wgslsmith_mult_vec3_u32(var_3.a.xxy | vec3<u32>(1u, 64230u, var_3.a.x), min(vec3<u32>(32985u, u_input.b.x, 77894u), vec3<u32>(45451u, 4294967295u, u_input.e)))));
}

