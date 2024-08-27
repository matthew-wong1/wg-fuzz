struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(!vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), true && all(vec3<bool>(true, false, true)), false, false), abs(~vec2<u32>(~arg_1, arg_0)));
    var var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(arg_2)), var_0, _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-60215i)), ~(-1i), ~_wgslsmith_add_i32(-28902i, 0i)), max(abs(min(arg_3, vec3<i32>(-9864i, -2147483647i, 7181i))), arg_3), arg_3), arg_2, var_1.b.x);
    let var_3 = Struct_1(var_1.a, vec2<u32>(~36128u, arg_1));
    var_1 = var_3;
    return !(!var_0.a.x);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f + 1869f) + _wgslsmith_div_f32(_wgslsmith_div_f32(-481f, var_0), -2100f));
    let var_2 = arg_0;
    let var_3 = ~(~20380u);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1063f)) + _wgslsmith_f_op_f32(-var_0)), Struct_1(vec4<bool>(arg_0.b.a.x, var_2.b.b.x > abs(var_2.b.b.x), any(select(vec4<bool>(true, var_2.b.a.x, var_2.b.a.x, var_2.b.a.x), vec4<bool>(var_2.b.a.x, true, true, true), var_2.b.a)), func_3(arg_0.e, 38970u, arg_0.d, vec3<i32>(var_2.c.x, arg_0.c.x, 21588i)) | true), vec2<u32>(14159u << (var_2.b.b.x % 32u), _wgslsmith_sub_u32(26158u, 1u)) << (vec2<u32>(14129u, var_2.e) % vec2<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(select(10320i, -2147483647i, false)), _wgslsmith_add_i32(i32(-1i) * -698i, abs(1i)), firstTrailingBit(_wgslsmith_clamp_i32(0i, 42046i, -17104i))), vec3<i32>(arg_0.c.x, min(arg_0.c.x, -1i), abs(-52266i)) >> (select(firstLeadingBit(vec3<u32>(arg_0.e, var_2.b.b.x, var_3)), min(vec3<u32>(30899u, 80515u, 19213u), vec3<u32>(15332u, 22486u, arg_0.e)), arg_0.b.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_2.a + var_0))))), ~(arg_0.e | abs(_wgslsmith_clamp_u32(var_2.b.b.x, 1u, 1u))));
    return Struct_1(!(!(!var_4.b.a)), ~var_4.b.b);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(216f, 586f, 111f), vec3<f32>(1287f, -279f, -401f))), vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1496f, -2492f)), _wgslsmith_f_op_f32(min(-523f, 823f)), _wgslsmith_f_op_f32(abs(-1396f))))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f + -2675f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(2028f * 171f), _wgslsmith_f_op_f32(f32(-1f) * -947f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1060f * _wgslsmith_f_op_f32(select(180f, -642f, arg_0.a.x))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1361f - 201f)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(296f, var_0.x)) - _wgslsmith_f_op_f32(round(var_0.x))), var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(721f)) * _wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x)), Struct_1(select(arg_0.a, select(arg_0.a, select(vec4<bool>(true, false, false, arg_0.a.x), arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), arg_0.a.x & false), vec4<bool>(!arg_0.a.x, true, false, true)), arg_0.b), -vec3<i32>(-max(0i, 0i), _wgslsmith_sub_i32(min(u_input.a, 0i), -2147483647i), u_input.a), var_0.x, arg_0.b.x);
    let var_2 = vec4<bool>(func_2(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), -1117f, var_1.b.a.x & var_1.b.a.x)), Struct_1(var_1.b.a, vec2<u32>(arg_0.b.x, var_1.b.b.x)), select(vec3<i32>(var_1.c.x, u_input.a, 0i), _wgslsmith_mod_vec3_i32(var_1.c, var_1.c), arg_0.a.xyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_0.b.x)).a.x, true, -(~1i) != u_input.a, false);
    let var_3 = 1u;
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(751f, -2136f, true)), Struct_1(var_2, vec2<u32>(arg_0.b.x & (var_3 ^ 4294967295u), 20241u)), vec3<i32>(abs(~u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10784i, u_input.a, 2147483647i, -56223i), vec4<i32>(var_1.c.x, 7136i, -1i, -1448i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, -48656i, var_1.c.x), vec4<i32>(u_input.a, 10782i, -1i, 0i))) ^ u_input.a, -2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.a)))), var_3);
    return _wgslsmith_dot_vec2_i32(var_1.c.yx, _wgslsmith_clamp_vec2_i32(~firstTrailingBit(vec2<i32>(-4541i, var_1.c.x)) >> (~vec2<u32>(94454u, 5316u) % vec2<u32>(32u)), select(vec2<i32>(max(1i, 6222i), _wgslsmith_mult_i32(u_input.a, 2147483647i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), var_1.c.xy, vec2<i32>(-35760i, 4210i)), !select(var_1.b.a.xz, arg_0.a.yy, vec2<bool>(var_2.x, var_2.x))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(var_1.c.yz, vec2<i32>(var_1.c.x, 2147483647i)), _wgslsmith_mult_vec2_i32(-var_1.c.yx, vec2<i32>(var_1.c.x, 23618i)), countOneBits(-vec2<i32>(2497i, var_1.c.x)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_2(-1646f, func_2(Struct_2(-1650f, Struct_1(vec4<bool>(true, true, arg_0.x, false), vec2<u32>(6701u, 4294967295u)), arg_1.zww, _wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_sub_u32(18259u, 13263u))), -(~arg_1.xxw & select(arg_1.wyy, arg_1.yzz, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_2.x)) - -615f), 31841u)).a.wzw;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), -3321f)))), 932f, 973f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + arg_2.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-339f, -384f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1489f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.x)), -1810f)), _wgslsmith_f_op_f32(arg_2.x * -1033f), var_0.x)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1064f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-585f + -961f), func_2(Struct_2(var_1.x, Struct_1(vec4<bool>(false, false, true, arg_3.x), vec2<u32>(70328u, 39001u)), arg_1.yxx, -1950f, 27669u)).a.x))), arg_2.x, -1000f);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) - _wgslsmith_f_op_f32(min(-1803f, _wgslsmith_f_op_f32(-arg_2.x))))), var_1.x);
    return func_2(Struct_2(arg_2.x, func_2(Struct_2(arg_2.x, func_2(Struct_2(-1003f, Struct_1(vec4<bool>(false, arg_0.x, arg_0.x, false), vec2<u32>(6159u, 56180u)), arg_1.wwz, var_1.x, 76576u)), vec3<i32>(-38941i, 18590i, arg_1.x), _wgslsmith_f_op_f32(-522f - 292f), ~4294967295u)), vec3<i32>(-1i) * -min(vec3<i32>(arg_1.x, -41787i, arg_1.x), arg_1.zzw), var_1.x, _wgslsmith_add_u32(12762u, 0u) << (0u % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> f32 {
    let var_0 = func_5(!vec3<bool>(any(arg_0), true, false), -vec4<i32>(-2147483647i, u_input.a, func_4(func_2(Struct_2(1126f, Struct_1(vec4<bool>(arg_1.x, arg_0.x, arg_0.x, false), vec2<u32>(67161u, 1u)), vec3<i32>(1i, 22674i, u_input.a), 678f, 3501u))), _wgslsmith_mod_i32(1i << (1u % 32u), ~26214i)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, -415f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-240f, 620f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-183f, -884f))))))), vec2<bool>(arg_0.x, all(!(!vec2<bool>(arg_0.x, false)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-757f, -577f))) * _wgslsmith_div_f32(-741f, -747f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(~0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(89425u, 4294967295u, 97095u, 1u)))), ~(~(~4294967295u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, select(false, true, false), any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true))))) + -2379f), func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 586f) - _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true)))), func_2(Struct_2(-2951f, Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(var_0, 3879u)), vec3<i32>(u_input.a, -32129i, u_input.a), -364f, var_0)), (vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(50365i, u_input.a, u_input.a)) ^ (vec3<i32>(u_input.a, u_input.a, -14009i) | vec3<i32>(3179i, u_input.a, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1457f - -172f)), 28975u)), _wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-24126i, u_input.a, u_input.a), vec3<i32>(u_input.a, -56355i, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i)), (vec3<i32>(-1i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, -18729i, u_input.a)) ^ (vec3<i32>(-19930i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, -29716i))) | max(min(select(vec3<i32>(u_input.a, u_input.a, 20329i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, true, false)), -vec3<i32>(-14953i, u_input.a, 5004i)), -(vec3<i32>(u_input.a, u_input.a, -18024i) & vec3<i32>(u_input.a, u_input.a, u_input.a))), 2491f, 4294967295u);
    var_1 = Struct_2(var_1.a, func_5(select(!var_1.b.a.yyx, var_1.b.a.xzz, vec3<bool>(any(var_1.b.a.zx), true, false)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a & 0i, ~u_input.a, ~u_input.a, var_1.c.x & -24323i), ~(-vec4<i32>(var_1.c.x, 1i, -33733i, -47482i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, -674f, var_1.d, var_1.a))), !vec2<bool>(all(var_1.b.a.zw), true)), _wgslsmith_mod_vec3_i32(~(-var_1.c ^ _wgslsmith_mod_vec3_i32(vec3<i32>(20422i, 24105i, -15810i), vec3<i32>(-3475i, u_input.a, -31328i))), -(~(~var_1.c))), _wgslsmith_f_op_f32(ceil(var_1.d)), ~min(~var_0, 0u));
    let var_2 = Struct_2(-1372f, var_1.b, var_1.c, 1418f, abs(~var_0));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -811f, var_1.d))), vec3<f32>(var_1.d, -1434f, _wgslsmith_f_op_f32(max(var_1.a, -612f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -1411f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, 272f, var_1.a) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, var_1.a, -168f), vec3<f32>(878f, 1746f, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_2.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1865f + var_1.a), _wgslsmith_f_op_f32(ceil(-909f)))))));
}

