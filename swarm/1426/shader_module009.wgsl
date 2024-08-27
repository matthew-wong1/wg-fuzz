struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -1133f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2135f, -239f, arg_0.x, arg_0.x)))), vec4<f32>(891f, _wgslsmith_f_op_f32(arg_0.x - 303f), _wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(arg_0.x + -439f)), vec4<bool>(arg_1 | arg_1, any(arg_2.wy), select(arg_1, arg_1, false), arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-282f, arg_0.x, 1311f, 1114f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 692f, 1496f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(447f, 520f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f + -1289f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1006f, arg_0.x, -203f)))))), arg_2));
    var var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - arg_0))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_vec4_i32(~(~countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, -9576i))), vec4<i32>(1i, (i32(-1i) * -2147483647i) & u_input.a, 46182i, 1628i)), !select(select(arg_2, select(vec4<bool>(true, false, arg_1, arg_2.x), arg_2, arg_2.x), vec4<bool>(true, true, true, arg_2.x)), arg_2, select(arg_2, !vec4<bool>(false, false, arg_2.x, true), select(vec4<bool>(true, true, arg_2.x, false), arg_2, false))));
    var var_3 = firstTrailingBit(~(-(~_wgslsmith_sub_vec3_i32(var_2.d.zwx, var_2.d.wzy))));
    var_1 = _wgslsmith_dot_vec2_i32(~var_3.zy, var_2.d.xw);
    return -vec4<i32>(-4429i, 0i, -(~1i), var_2.d.x) | -_wgslsmith_clamp_vec4_i32(var_2.d, var_2.d, -vec4<i32>(var_3.x, var_2.d.x, var_2.d.x, u_input.a));
}

fn func_2() -> f32 {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(26412i, 19283i, 2147483647i, 2848i)) & vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-14054i, 0i), vec2<i32>(u_input.a, -26997i)), ~(-1i)), _wgslsmith_add_vec4_i32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-595f, -1195f, -603f) * vec3<f32>(-518f, -1011f, -1344f)), true, vec4<bool>(false, true, true, true)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(6047i, -23666i, -1i, u_input.a), vec4<i32>(-53403i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, true)), vec4<i32>(1i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4833u, 0u, 12007u, 1u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, 21338i, u_input.a)))), 41835i, -max(-_wgslsmith_add_i32(u_input.a, u_input.a), 0i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1144f, 457f, -989f, -2205f))), vec4<f32>(_wgslsmith_f_op_f32(sign(656f)), _wgslsmith_f_op_f32(-337f + 340f), _wgslsmith_f_op_f32(154f * 1000f), _wgslsmith_f_op_f32(select(970f, -337f, true)))))));
    var_0 = _wgslsmith_sub_vec4_i32(-(~(vec4<i32>(u_input.a, u_input.a, -8612i, 2147483647i) << (~vec4<u32>(4294967295u, 0u, 2189u, 45404u) % vec4<u32>(32u)))), firstLeadingBit(vec4<i32>(func_3(_wgslsmith_f_op_vec3_f32(-var_1.yxz), true, vec4<bool>(true, true, true, true)).x, func_3(var_1.wyx, false, vec4<bool>(false, false, true, false)).x ^ (i32(-1i) * -57446i), _wgslsmith_dot_vec3_i32(var_0.zwy, var_0.zxw) & max(0i, u_input.a), var_0.x)));
    var_0 = ~vec4<i32>(abs(firstLeadingBit(var_0.x)), -5501i, u_input.a, u_input.a);
    var_0 = abs(abs(vec4<i32>(~_wgslsmith_mult_i32(var_0.x, -2147483647i), 1i ^ (var_0.x << (14453u % 32u)), func_3(_wgslsmith_f_op_vec3_f32(var_1.xyz * vec3<f32>(856f, -1122f, 346f)), true, select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))).x, func_3(_wgslsmith_f_op_vec3_f32(-var_1.xyw), all(vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false)).x)));
    return _wgslsmith_f_op_f32(-1722f - _wgslsmith_f_op_f32(max(-1026f, 861f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-608f, 1264f)) - arg_0.b);
    let var_1 = select(arg_0.e.zyz, !arg_0.e.xwy, false);
    var_0 = -360f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1417f))) + _wgslsmith_f_op_f32(func_2())));
    var_0 = arg_0.b;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-342f, 765f, 932f), vec3<f32>(-1172f, 163f, -1023f), vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1375f, -1000f, -1233f) + vec3<f32>(-376f, -408f, 499f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f - 1004f)), _wgslsmith_f_op_f32(f32(-1f) * -1226f), -326f)), _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(-522f + 238f), _wgslsmith_add_vec4_i32(firstLeadingBit(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, -8957i))), vec4<i32>(-select(u_input.a, 94205i, true), countOneBits(~1i), _wgslsmith_div_i32(-2147483647i, u_input.a) ^ _wgslsmith_add_i32(u_input.a, u_input.a), ~u_input.a)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, u_input.a != 2147483647i, select(false, true, false))), !func_1(Struct_1(vec3<f32>(1000f, 131f, 1404f), -1047f, -1744f, vec4<i32>(-27255i, 2147483647i, 39155i, -79987i), vec4<bool>(true, false, false, true)), vec3<f32>(1178f, 315f, 866f), firstLeadingBit(vec4<u32>(13280u, 66485u, 0u, 0u))), true));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)))), _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_f32(140f + _wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) - _wgslsmith_f_op_f32(-1087f - var_0.b)), ~firstLeadingBit(-vec4<i32>(u_input.a, -29396i, -678i, 0i)), var_0.e);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(sign(var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.a.x)), -509f))))), _wgslsmith_f_op_f32(-var_0.a.x), var_0.b, firstLeadingBit(firstTrailingBit(-(var_1.d << (vec4<u32>(14214u, 1u, 37595u, 4294967295u) % vec4<u32>(32u))))), vec4<bool>(true, var_0.e.x, ~max(var_0.d.x, var_1.d.x) <= u_input.a, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-653f + -1189f))));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) - _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) + _wgslsmith_f_op_f32(-516f * var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(290f, var_0.b))))), 466f), var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, var_0.a.x)) * var_0.b) - _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(var_0.a.x - var_1.a.x)))))), var_1.d, vec4<bool>(-1532f < _wgslsmith_f_op_f32(trunc(-1519f)), false, true, var_1.e.x));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -749f), var_0.c, var_0.e.x)), -517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, -659f)) - _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(799f, 1623f, var_0.e.x)))), -248f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.b)), -771f, var_1.e.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, var_0.d.x, var_1.d.x) ^ var_0.d.zxx, ~var_0.d.xzw), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.d.x, var_0.d.x) ^ 1i, -51002i), reverseBits(_wgslsmith_clamp_i32(var_1.d.x, reverseBits(var_1.d.x), -var_1.d.x)), _wgslsmith_div_i32(reverseBits(countOneBits(-10432i)), countOneBits(select(var_1.d.x, 13550i, var_0.e.x)))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_0.d.x, -firstTrailingBit(var_0.d.x)) >> (~(~4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.yz + _wgslsmith_div_vec2_f32(var_0.a.xy, var_1.a.xx)), var_1.a.yy))));
}

