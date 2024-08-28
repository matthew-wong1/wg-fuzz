struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = ~u_input.c.xw;
    let var_1 = max(abs(u_input.c.xyz), vec3<u32>(1u, u_input.b.x, 1489u));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, -603f, 169f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))))));
    var var_3 = abs(abs(_wgslsmith_mult_vec4_i32(u_input.e, u_input.e)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(95696u, 88475u, 4294967295u, 29896u), vec4<u32>(57007u, var_0.x, u_input.c.x, 125612u)), ~min(u_input.c, vec4<u32>(var_1.x, u_input.d, 3082u, 8229u)), ~countOneBits(vec4<u32>(1u, 5235u, 47903u, 0u))) % vec4<u32>(32u)));
    var_3 = u_input.e & (u_input.e | u_input.e);
    return 0u;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = vec2<u32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1537f)) - _wgslsmith_f_op_f32(998f - 1000f)))), u_input.d);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -1000f))));
    let var_4 = select(select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !all(vec2<bool>(true, true))), !(!vec3<bool>(all(vec2<bool>(false, false)), true, false)), vec3<bool>(!any(vec4<bool>(true, false, true, false)), true, any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), true))));
    return Struct_3(select(max(vec3<i32>(~arg_0.a.x, _wgslsmith_clamp_i32(u_input.e.x, 1i, u_input.e.x), 1i), vec3<i32>(arg_0.a.x | 1i, min(25436i, 1i), arg_0.a.x)), u_input.e.yyy, var_4.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = !(true || !(!arg_0.x & arg_1));
    var_0 = (59259u > countOneBits(u_input.d)) == !(!arg_0.x);
    let var_1 = Struct_3(_wgslsmith_mult_vec3_i32(u_input.e.wwz, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i) << (firstLeadingBit(vec3<u32>(u_input.b.x, 39986u, u_input.c.x)) % vec3<u32>(32u)), select(vec3<i32>(-1946i, u_input.e.x, 2147483647i) & vec3<i32>(u_input.a, u_input.a, -2147483647i), u_input.e.zyy, vec3<bool>(arg_1, arg_0.x, true)))));
    var var_2 = func_2(Struct_3(~vec3<i32>(~var_1.a.x, 2147483647i, -u_input.a)));
    var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(279f))) * 476f);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(vec2<u32>(func_3(arg_2.x), u_input.d), _wgslsmith_sub_vec4_i32(abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 7564i, 33397i), vec4<i32>(-23609i, -6255i, 2147483647i, 53556i)))), firstTrailingBit(vec4<i32>(u_input.e.x, ~(-13598i), u_input.a, _wgslsmith_mod_i32(-17155i, 2147483647i)))), u_input.d, ~reverseBits(~(-61031i ^ u_input.a)), arg_2);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(u_input.e.wwx);
    let var_1 = func_2(func_2(Struct_3(vec3<i32>(arg_2.b.x, func_2(Struct_3(var_0.a)).a.x, 28583i & var_0.a.x))));
    let var_2 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), true | all(vec2<bool>(false, true))));
    var var_3 = func_4(_wgslsmith_clamp_u32(arg_2.c, func_3(_wgslsmith_f_op_f32(select(-168f, arg_1.x, var_2.x))) ^ (firstTrailingBit(arg_0) << (arg_2.a.x % 32u)), u_input.c.x), var_2, arg_1.yx, Struct_2(select(var_2.xwx, vec3<bool>(var_2.x, !var_2.x, true), all(select(vec2<bool>(true, true), var_2.ww, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_1.x))), !var_2.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(479f)), 2203f, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), var_2.x)), -1388f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 755f, 580f, arg_2.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, arg_2.e.x, -1000f, -1000f) * vec4<f32>(arg_2.e.x, 520f, 345f, 1000f))))));
    var_0 = Struct_3(max(vec3<i32>(-30061i, func_2(var_1).a.x, -_wgslsmith_mult_i32(18680i, var_1.a.x)), abs(func_2(Struct_3(vec3<i32>(arg_2.b.x, 16239i, arg_2.d))).a) ^ var_1.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_dot_vec4_u32(~u_input.c, max(vec4<u32>(u_input.c.x >> (u_input.d % 32u), u_input.c.x, u_input.c.x, ~0u), vec4<u32>(countOneBits(u_input.d), u_input.c.x, 0u, _wgslsmith_div_u32(1u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, -852f, 993f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1739f, 1000f, -434f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2572f, _wgslsmith_f_op_f32(-807f - -531f), -661f))), func_4(u_input.b.x, vec4<bool>(false, ~u_input.c.x != u_input.b.x, false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, -1128f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-123f, 964f), vec2<f32>(721f, -164f))))), Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1689f, -665f, -1808f, -3080f), vec4<f32>(-1412f, 248f, 2362f, -360f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1035f, 254f, -1325f, 138f) * vec4<f32>(565f, 771f, -925f, -998f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, 672f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, -141f), vec4<f32>(1168f, -104f, 476f, -1313f))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), -844f, 1438f, -795f);
    var var_2 = !select(select(vec4<bool>(false, false, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), false, true, select(true, true, false)), _wgslsmith_f_op_f32(var_1.x - var_0.e.x) < 802f), select(vec4<bool>(u_input.d >= u_input.d, all(vec3<bool>(false, false, false)), true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), false)), vec4<bool>(all(vec3<bool>(true, true, true)), !(var_0.e.x != var_0.e.x), var_0.e.x < _wgslsmith_f_op_f32(var_0.e.x * -661f), true));
    var var_3 = func_2(Struct_3(vec3<i32>(_wgslsmith_mult_i32(abs(u_input.e.x), ~10573i), 1i, _wgslsmith_div_i32(21683i, _wgslsmith_add_i32(var_0.b.x, -35567i)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_3.a.x, -1i, u_input.e.x) | _wgslsmith_div_i32(2147483647i, var_3.a.x), _wgslsmith_add_i32(firstLeadingBit(20393i), -46044i))));
}

