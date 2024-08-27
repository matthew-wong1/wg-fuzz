struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec3<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec4_i32(abs(~abs(vec4<i32>(0i, -1i, 0i, 0i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_1, 1039i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, u_input.c.x, u_input.c.x, arg_1), vec4<i32>(0i, u_input.a, 2147483647i, u_input.c.x))));
    var_0 = abs(vec4<i32>(arg_1, -53659i, var_0.x, 2147483647i));
    var var_1 = -692f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))) + arg_0.a);
    var var_2 = Struct_3(_wgslsmith_mult_i32(~(~_wgslsmith_sub_i32(var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(7392i, arg_1, u_input.c.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, u_input.c.x, var_0.x, arg_1) ^ vec4<i32>(arg_1, -435i, u_input.a, arg_1), vec4<i32>(var_0.x, 1i, u_input.b.x, var_0.x)))));
    return arg_0.a;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_u32(firstLeadingBit(u_input.e), 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(879f, 1544f), 733f)) + 717f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1262f, 695f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1302f * 633f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1544f, -1727f)))))));
    let var_2 = Struct_2(!any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true))));
    var var_3 = reverseBits(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.a, firstTrailingBit(u_input.b.x)), _wgslsmith_div_i32(-9819i, u_input.c.x)));
    let var_4 = Struct_4(Struct_1(var_1.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(127f, var_1.x, -1408f), vec3<bool>(var_2.a, true, var_2.a)))))))), _wgslsmith_f_op_f32(sign(var_1.x)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), 112f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, -1144f, 518f) * vec3<f32>(-959f, -229f, 1299f))), u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, 834f) + vec2<f32>(-1992f, -327f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -310f) - _wgslsmith_div_vec2_f32(vec2<f32>(477f, 1554f), vec2<f32>(-665f, -448f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-791f * -590f), -559f)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, -2072f, -872f) - vec3<f32>(var_0.x, -952f, -267f))))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.a), 585f, arg_0.a) + vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.a), -724f, arg_0.b.x)));
    let var_1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, max(2147483647i, -2147483647i & u_input.a), u_input.a, -firstLeadingBit(u_input.c.x)), min(~vec4<i32>(u_input.c.x, ~6896i, u_input.b.x ^ -48635i, 1i), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(-17555i, u_input.b.x, u_input.b.x, 0i), vec4<bool>(false, false, true, true)), vec4<i32>(abs(26110i), -14651i, _wgslsmith_add_i32(u_input.a, u_input.a), ~(-20824i)))), ~vec4<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, abs(u_input.c.x)), u_input.b.x, 39329i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1058f, arg_0.b.x), _wgslsmith_f_op_f32(arg_0.a - arg_0.b.x), 1381f, _wgslsmith_f_op_f32(-1654f - -1697f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_0.x, -248f, var_0.x))) * _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(-778f, 644f, 1000f, -616f))), true))));
    var var_3 = Struct_4(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)));
    let var_4 = Struct_5(Struct_2(~u_input.e == _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 1u, u_input.e), u_input.d.x)), Struct_4(arg_0, var_2.x), !(!vec3<bool>(all(vec2<bool>(false, false)), select(false, false, false), u_input.d.x < 4294967295u)), var_2.xzz, Struct_2(false || (all(vec2<bool>(true, false)) || true)));
    return _wgslsmith_f_op_f32(trunc(var_4.b.b));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = -((vec4<i32>(u_input.c.x << (1u % 32u), u_input.a, 1i, u_input.c.x) & (vec4<i32>(u_input.c.x, 6932i, u_input.c.x, -50906i) & firstTrailingBit(vec4<i32>(u_input.c.x, -38563i, u_input.b.x, 0i)))) << (countOneBits(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_1.x, 4294967295u, 1u, 1449u)), vec4<u32>(arg_1.x, arg_1.x, 1u, 4294967295u))) % vec4<u32>(32u)));
    var_0 = vec4<i32>(-2147483647i, -2147483647i, ~(_wgslsmith_mod_i32(var_0.x, 1i) << (1u % 32u)), var_0.x);
    let var_1 = Struct_3(u_input.c.x);
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-41282i, var_0.x, 68744i, 0i), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, 2147483647i, 10590i, -1i), vec4<i32>(var_0.x, 32110i, var_1.a, u_input.a))) | abs(vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(var_0.xwy, vec3<i32>(u_input.c.x, -2147483647i, 55019i)), abs(var_0.x), -22188i) ^ min(~vec4<i32>(var_1.a, var_0.x, -1i, -2147483647i), -vec4<i32>(0i, var_1.a, var_1.a, 2147483647i)));
    let var_2 = Struct_3(u_input.c.x);
    return Struct_3(-u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(u_input.e, _wgslsmith_div_u32(81908u, u_input.d.x), 63521u), u_input.d, Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -742f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2437f, 1084f, 473f)))), _wgslsmith_f_op_f32(func_4(func_1()))));
    var var_1 = ~_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(1i, 32054i, -1i, u_input.b.x), ~vec4<i32>(14635i, 2147483647i, 2147483647i, -650i), true)), reverseBits(min(-vec4<i32>(-2147483647i, u_input.b.x, -38400i, u_input.c.x), vec4<i32>(20116i, var_0.a, 2147483647i, 0i) | vec4<i32>(-74017i, var_0.a, 2147483647i, 52455i))));
    let var_2 = u_input.d.x;
    var_0 = func_5(~max(vec3<u32>(u_input.e, _wgslsmith_mult_u32(13532u, u_input.d.x), 1u), ~(vec3<u32>(9094u, 4294967295u, 43801u) ^ vec3<u32>(var_2, var_2, var_2))), u_input.d, Struct_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = Struct_5(Struct_2(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))) & !(var_0.a >= 1i)), Struct_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1220f + -1770f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, true, false))), true), vec3<bool>(!any(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true)) | true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1000f + 654f), _wgslsmith_f_op_f32(f32(-1f) * -2133f), -1438f)))), Struct_2(any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), false))));
    var var_4 = vec4<bool>(any(vec4<bool>(all(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, var_3.c.x, true)), any(var_3.c.yy))) || true, var_3.b.a.a < 1305f, false, var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.a.b.x) * var_3.b.b), var_2);
}

