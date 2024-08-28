struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_1(countOneBits(u_input.b.x), vec3<i32>(-45438i, 2147483647i, -arg_1 | abs(-2147483647i | arg_1)), u_input.b.zyz, arg_3.x);
    let var_1 = Struct_1(var_0.c.x, vec3<i32>(~abs(2147483647i), _wgslsmith_mult_i32(~var_0.b.x, abs(17190i)), -abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), u_input.b.zzw, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -522f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f + arg_0.x) + 862f))) != _wgslsmith_f_op_f32(-376f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_i32(~(-33076i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 175i), var_0.b.zy))), ~vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b), vec4<i32>(-11830i, arg_1, 20487i, 2147483647i)), -25563i), -vec3<i32>(var_0.c.x, -26254i, _wgslsmith_dot_vec3_i32(var_0.c, abs(var_0.b))), true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -206f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(169f))))), -1781f);
    var var_4 = vec3<i32>(-1i) * -abs(-(var_1.c | var_2.b));
    return 61952u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec3<f32> {
    let var_0 = 0u;
    let var_1 = all(vec3<bool>(select(false, ~arg_1.x == var_0, any(vec4<bool>(true, true, true, true))), true, true));
    var var_2 = arg_1.x;
    var_2 = 0u | (u_input.a.x ^ 1u);
    var var_3 = Struct_2(~_wgslsmith_sub_u32(arg_1.x << (abs(1u) % 32u), ~(~58146u)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 226f), 1006f, _wgslsmith_f_op_f32(min(-1271f, arg_0.x)));
}

fn func_2() -> f32 {
    var var_0 = -833f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1550f + -1268f) + _wgslsmith_f_op_f32(step(943f, 673f))), _wgslsmith_f_op_f32(abs(-115f))))), 130f, _wgslsmith_f_op_f32(-2643f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-278f, 2161f))))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.b.x, u_input.b.x, -48417i, u_input.b.x)), -1i), -u_input.b.wxx, u_input.b.wwy ^ u_input.b.ywy, select(select(true, true, true), false, var_1.x > -748f)), false);
    var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, -1579f, 427f, -836f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1580f, -171f, var_1.x, -373f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -647f, var_1.x, var_1.x), vec4<f32>(-647f, -1137f, var_1.x, -166f)))), select(vec4<bool>(u_input.a.x < u_input.a.x, true, false, false | var_2.a.d), !(!vec4<bool>(var_2.a.d, true, var_2.b, false)), !(!vec4<bool>(var_2.b, var_2.b, true, var_2.b))))), vec2<u32>(func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(var_1.zx)))), 11947i, Struct_3(vec2<f32>(1235f, 1022f), _wgslsmith_f_op_f32(abs(var_1.x)), ~vec4<u32>(79042u, u_input.a.x, 4294967295u, u_input.a.x)), vec3<bool>(true, true, true)), func_3(var_1.zy, 1i >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.yz), _wgslsmith_f_op_f32(-569f * -1000f), ~vec4<u32>(5774u, u_input.a.x, u_input.a.x, 52383u)), vec3<bool>(!var_2.b, true, var_2.a.d)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, -2578f, 464f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1080f, var_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(-342f)), 1000f, _wgslsmith_f_op_f32(max(-1957f, _wgslsmith_f_op_f32(-var_1.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, 1593f, var_1.x) * vec3<f32>(var_1.x, -361f, 1589f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(127f, var_1.x, 686f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, var_1.x, var_1.x))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2028f + var_1.x)), -401f));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = vec3<bool>(!any(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, false)), -524f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1000f)) - _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))), firstTrailingBit(u_input.b.x) != -u_input.b.x);
    let var_1 = Struct_2(10593u);
    var var_2 = var_0.x;
    var var_3 = Struct_1(-countOneBits(u_input.b.x), vec3<i32>(2147483647i, firstTrailingBit(0i), u_input.b.x), _wgslsmith_div_vec3_i32(abs(firstTrailingBit(u_input.b.xyz)), vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(-35256i, u_input.b.x))), u_input.b.x, -abs(u_input.b.x))), var_0.x);
    var_2 = -(~_wgslsmith_sub_i32(u_input.b.x, 0i | var_3.c.x)) < u_input.b.x;
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_u32(countOneBits(1u >> (u_input.a.x % 32u)) ^ 0u, 67410u & ~arg_2));
    let var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0));
    let var_2 = min(~countOneBits(u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2 >> (4294967295u % 32u), 4294967295u, var_0.a, ~var_0.a), ~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.a) << (vec4<u32>(649u, arg_2, 0u, arg_2) % vec4<u32>(32u)))) % vec4<u32>(32u)), u_input.b);
    var_0 = func_5(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x) ^ (u_input.a.yy >> (firstTrailingBit(u_input.a.xz) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72652u, arg_2, 8327u), vec3<u32>(u_input.a.x, 89985u, 759u)) >> (33226u % 32u), ~4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), 219f, _wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(func_2()))));
    let var_3 = i32(-1i) * -var_2.x;
    return Struct_1(u_input.b.x, ~u_input.b.yxw, u_input.b.wwy, false && arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1611f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-582f)));
    let var_2 = Struct_4(func_1(var_1, vec2<bool>(countOneBits(u_input.b.x) <= ~(-20039i), true), u_input.a.x, Struct_1(i32(-1i) * -25895i, abs(-u_input.b.wzy), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, 23926i), 6777i, -23778i), all(vec4<bool>(true, true, true, true)))), false & !(!(-746f > var_1)));
    var var_3 = func_5(~u_input.a.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1058f, -1173f, _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(1616f * -1823f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(880f, var_1, 350f, 2382f), vec4<f32>(var_1, var_1, -813f, var_1)))))));
    var_3 = func_5(reverseBits(~u_input.a.xy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, -903f, 457f), vec4<f32>(1239f, 1213f, 834f, var_1))))) - vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), -126f, _wgslsmith_div_f32(var_1, var_1))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-726f, var_1, var_1, var_1), vec4<f32>(var_1, var_1, var_1, 346f), false))))))));
    var_0 = var_1;
    let var_4 = func_5(~vec2<u32>(firstTrailingBit(0u), 522u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(var_1)))))));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

