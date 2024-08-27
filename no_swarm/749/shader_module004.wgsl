struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = max(26855u, ~40292u);
    var var_1 = arg_0;
    let var_2 = arg_1;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(sign(-715f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1311f), arg_1.d.x | (all(vec2<bool>(true, var_1.d.x)) && any(vec4<bool>(var_1.e, var_2.d.x, true, arg_1.b.x))))), _wgslsmith_f_op_f32(trunc(1f))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1f)), vec3<bool>(any(vec3<bool>(true, true, false)) | any(vec2<bool>(false, true)), !((i32(-1i) * -1106i) <= u_input.a.x), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(488f, 1553f, -665f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1265f, 1457f, -1326f, -2026f) - vec4<f32>(-557f, 2920f, -303f, 1000f))))), vec2<bool>(select(false, any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true))), !(!all(vec3<bool>(false, false, false)))), !(-1205f < _wgslsmith_f_op_f32(func_3(Struct_1(182f, vec3<bool>(false, false, true), vec4<f32>(483f, -376f, -421f, 594f), vec2<bool>(false, true), false), Struct_1(196f, vec3<bool>(false, false, true), vec4<f32>(124f, 340f, 1442f, -1214f), vec2<bool>(false, false), false)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(468f, _wgslsmith_f_op_f32(min(-451f, -1000f)), var_0.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1447f)))))), select(select(select(select(vec3<bool>(var_0.d.x, true, var_0.e), vec3<bool>(var_0.e, var_0.b.x, false), var_0.e), var_0.b, true), select(vec3<bool>(true, var_0.b.x, var_0.e), var_0.b, true), any(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(true, true, false), true))), var_0.b, all(vec3<bool>(true, false, all(vec2<bool>(var_0.b.x, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), var_0.c.x, var_0.a)), !select(vec2<bool>(false, var_0.e), vec2<bool>(true, true), !select(vec2<bool>(var_0.b.x, var_0.d.x), var_0.b.xy, var_0.b.zx)), true);
    let var_1 = max(_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.b.x, 2838u, u_input.c.x)), vec4<u32>(0u, u_input.b.x, u_input.b.x, 63700u))), vec4<u32>(61546u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(0u, u_input.b.x)), u_input.c.x, (u_input.b.x << (u_input.b.x % 32u)) | u_input.c.x), ~reverseBits(select(vec4<u32>(10465u, u_input.b.x, 0u, 0u), vec4<u32>(u_input.b.x, u_input.c.x, 1u, u_input.c.x), var_0.d.x))), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, 31034u, u_input.c.x), vec4<u32>(u_input.b.x, 23479u, u_input.b.x, 47171u)), abs(max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c.x, 20168u, u_input.c.x, 0u))), vec4<bool>(true, true, true, true)) ^ _wgslsmith_div_vec4_u32(~(vec4<u32>(39812u, u_input.c.x, u_input.b.x, u_input.c.x) << (vec4<u32>(u_input.c.x, 11508u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 39962u, u_input.b.x, 31080u), vec4<u32>(26606u, u_input.b.x, u_input.b.x, 4294967295u)), max(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 66696u, 4294967295u)))));
    let var_2 = (_wgslsmith_add_i32(firstTrailingBit(~1i), 12490i) >> (_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(firstLeadingBit(1u), var_1.x)) % 32u)) & arg_0;
    var_0 = Struct_1(293f, select(var_0.b, select(var_0.b, vec3<bool>(false, true, !var_0.b.x), var_0.e), !var_0.b), vec4<f32>(1000f, -1959f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - var_0.c.x)), _wgslsmith_f_op_f32(select(435f, 271f, 1i >= u_input.a.x)), true)), var_0.a), var_0.b.yy, all(!(!vec4<bool>(var_0.d.x, true, var_0.b.x, var_0.e))));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b, var_0.c, !var_0.d, any(vec4<bool>(-1i > arg_0, !var_0.b.x, var_0.d.x || var_0.d.x, var_0.d.x)) & var_0.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    let var_0 = select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 35069u, arg_0.x, ~53903u), firstTrailingBit(_wgslsmith_div_vec4_u32(arg_0, ~arg_0))), ~(vec4<u32>(~arg_1.x, arg_0.x, 1u, 5687u) & ~_wgslsmith_div_vec4_u32(arg_0, arg_0)), !(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, true), false)));
    var var_1 = func_2(-2147483647i);
    var var_2 = abs(countOneBits(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))) >> (0u % 32u);
    var_2 = u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)), -189f, !var_1.e)))), var_1.b, _wgslsmith_f_op_vec4_f32(trunc(var_1.c)), vec2<bool>(var_1.d.x, var_1.d.x), var_1.e);
    return !(true && (true & any(vec3<bool>(var_3.d.x, var_3.b.x, var_1.e))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = reverseBits(arg_2);
    let var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + 1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(917f, -499f) + func_2(2620i).a), -1728f)));
    let var_3 = Struct_1(404f, !(!select(vec3<bool>(arg_0.b.x, true, true), !arg_0.b, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - 732f), -1000f, _wgslsmith_div_f32(234f, arg_0.a), _wgslsmith_div_f32(781f, arg_0.c.x)))), arg_0.d, func_1(~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 18260u) ^ vec4<u32>(4294967295u, u_input.b.x, u_input.c.x, u_input.c.x)), vec2<u32>(50215u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 18482u, u_input.c.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.b.x)))));
    var var_4 = _wgslsmith_f_op_f32(var_2.x + arg_1);
    return func_2(abs(u_input.a.x) | (u_input.a.x | ~min(var_0, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), ~u_input.c.x > max(4294967295u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, -1000f, -1051f, -1647f)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), u_input.c)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1504f)) - _wgslsmith_f_op_f32(2440f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-1000f, vec3<bool>(true, true, true), vec4<f32>(-840f, -1210f, 1742f, 221f), vec2<bool>(false, false), true), Struct_1(-1249f, vec3<bool>(false, false, true), vec4<f32>(-315f, -1660f, -1204f, 576f), vec2<bool>(false, false), false)))))), _wgslsmith_mult_i32(0i, ~u_input.a.x));
    var var_1 = func_4(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-289f)) + _wgslsmith_div_f32(2345f, var_0.c.x))))), 1i);
    let var_2 = _wgslsmith_dot_vec3_i32(~(-firstLeadingBit(u_input.a.zww) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (u_input.b % vec3<u32>(32u)), u_input.a.xzw)), ~vec3<i32>(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, ~_wgslsmith_sub_i32(-1i, -2147483647i)));
    var var_3 = _wgslsmith_clamp_i32(var_2, var_2, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-707i, u_input.a.x), 1i), var_2)) | -1i;
    var var_4 = -2147483647i << (~(~u_input.b.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, reverseBits(abs(u_input.c))), u_input.c.x, ~u_input.b.x));
}

