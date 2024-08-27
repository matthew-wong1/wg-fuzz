struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-66307i, Struct_1(true, 1767f, vec3<i32>(1i, -22062i, i32(-2147483648))), vec4<i32>(-67664i, 2147483647i, 3881i, 2147483647i), 460f, Struct_1(false, -1000f, vec3<i32>(0i, i32(-2147483648), 1i))), Struct_2(2147483647i, Struct_1(false, -1138f, vec3<i32>(2147483647i, i32(-2147483648), -1i)), vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i), 1491f, Struct_1(true, 100f, vec3<i32>(0i, 15049i, 0i))), Struct_2(15196i, Struct_1(false, -1000f, vec3<i32>(-1i, i32(-2147483648), -55054i)), vec4<i32>(0i, -1i, -19460i, -39052i), 1133f, Struct_1(true, -732f, vec3<i32>(-34112i, -1i, i32(-2147483648)))), Struct_2(33477i, Struct_1(true, -1000f, vec3<i32>(-9456i, -1i, 34299i)), vec4<i32>(-14079i, 66717i, i32(-2147483648), 2147483647i), 431f, Struct_1(true, -1830f, vec3<i32>(-1i, -1i, 38300i))), Struct_2(25674i, Struct_1(false, 264f, vec3<i32>(2147483647i, 9189i, 46188i)), vec4<i32>(1i, 23896i, 0i, 1i), -464f, Struct_1(true, -590f, vec3<i32>(19165i, -11699i, -7410i))), Struct_2(32147i, Struct_1(false, 609f, vec3<i32>(18912i, -23539i, i32(-2147483648))), vec4<i32>(3521i, -10145i, 1i, -1i), -1759f, Struct_1(false, -429f, vec3<i32>(2147483647i, 1i, -6510i))), Struct_2(-28175i, Struct_1(false, 495f, vec3<i32>(2147483647i, 1i, 80352i)), vec4<i32>(-15240i, 1i, 2147483647i, -53836i), 1000f, Struct_1(false, -1472f, vec3<i32>(i32(-2147483648), -48102i, -6854i))), Struct_2(19921i, Struct_1(true, 441f, vec3<i32>(42240i, -59976i, 24270i)), vec4<i32>(-42851i, 2147483647i, 53000i, 33872i), -1232f, Struct_1(true, 2241f, vec3<i32>(-34488i, 20298i, 0i))), Struct_2(14273i, Struct_1(false, 798f, vec3<i32>(27254i, -1i, -1i)), vec4<i32>(31908i, i32(-2147483648), -23935i, 2147483647i), 262f, Struct_1(false, -1484f, vec3<i32>(0i, 0i, 0i))), Struct_2(2147483647i, Struct_1(false, 1021f, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), vec4<i32>(7861i, 86588i, 15639i, -20867i), 1097f, Struct_1(true, 758f, vec3<i32>(0i, 2147483647i, 39570i))), Struct_2(0i, Struct_1(false, 999f, vec3<i32>(-8267i, 0i, 0i)), vec4<i32>(-7498i, i32(-2147483648), 1i, -7023i), -141f, Struct_1(true, -1419f, vec3<i32>(107705i, 32781i, -10377i))), Struct_2(-551i, Struct_1(true, 1744f, vec3<i32>(13224i, 47076i, 53366i)), vec4<i32>(1i, -608i, -35i, 6022i), -2167f, Struct_1(true, -180f, vec3<i32>(2147483647i, 1i, 1i))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> bool {
    return true || all(select(vec4<bool>(true, all(vec4<bool>(false, true, false, arg_0)), arg_0, u_input.a != u_input.d), select(!vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, false, arg_0), vec4<bool>(false, arg_0, false, true)), vec4<bool>(any(vec3<bool>(true, true, true)), false, all(vec2<bool>(arg_0, false)), true)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = true;
    let var_1 = Struct_3(arg_0);
    let var_2 = Struct_1(!(!func_3(!var_1.a, _wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b))), _wgslsmith_div_f32(-1710f, _wgslsmith_f_op_f32(max(-931f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), 820f)))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-15531i, u_input.b, -1i), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-108270i, 1i, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b))), vec3<i32>(u_input.b, u_input.b, -497i)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -38019i, -13528i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -3630i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(u_input.b, u_input.b, u_input.b))))));
    var var_3 = _wgslsmith_div_f32(var_2.b, 1233f);
    var var_4 = -_wgslsmith_add_i32(max(i32(-1i) * -4446i, select(0i, -22329i, false)) & u_input.b, firstTrailingBit(var_2.c.x));
    return -844f;
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-121f, 1278f)))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(false))))))));
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(793f - _wgslsmith_f_op_f32(step(-535f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -851f)))))), vec3<i32>(firstLeadingBit(~(-17243i)), u_input.b, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(62682i, u_input.b, u_input.b), vec3<i32>(-1i, -27449i, 2147483647i), vec3<i32>(1i, u_input.b, -1i)), select(~vec3<i32>(-25671i, 12972i, u_input.b), vec3<i32>(u_input.b, 20162i, u_input.b), !vec3<bool>(arg_0.a, false, arg_0.a)))));
    return !(!select(!(!vec3<bool>(var_1.a, var_1.a, var_1.a)), !vec3<bool>(false, var_1.a, true), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true, all(func_1(Struct_3(false))), func_1(Struct_3(true)).x, true));
    let var_1 = Struct_2(u_input.b, Struct_1(func_1(Struct_3(false)).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - -1214f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1342f)), _wgslsmith_f_op_f32(f32(-1f) * -1116f), true)))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(-2607i, 2147483647i, 0i), vec3<i32>(-15043i, 3684i, u_input.b)) ^ select(vec3<i32>(-26049i, u_input.b, u_input.b), vec3<i32>(u_input.b, -4055i, u_input.b), var_0.wyx))), vec4<i32>(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-11501i, 3506i, u_input.b, -32415i), vec4<i32>(-15195i, 62i, u_input.b, 1i))), _wgslsmith_mult_i32(i32(-1i) * -u_input.b, -(~u_input.b)), 0i, firstTrailingBit(countOneBits(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(779f)) + _wgslsmith_f_op_f32(f32(-1f) * -305f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -308f))))), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-173f))) + 1363f), abs(select(vec3<i32>(-1i, 2147483647i, -31806i), min(vec3<i32>(920i, u_input.b, -19391i), vec3<i32>(0i, -2147483647i, 1i)), select(var_0.wxz, var_0.xyy, var_0.yzz)))));
    var var_2 = ~vec2<u32>(68728u, u_input.c);
    var var_3 = Struct_5(Struct_4(~vec3<i32>(~u_input.b, firstLeadingBit(var_1.e.c.x), u_input.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.e.b, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(abs(var_1.b.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -291f, var_1.e.b) - vec3<f32>(var_1.e.b, var_1.d, -1365f)))), func_1(Struct_3(false)))), (max(vec4<u32>(var_2.x, 60127u, 17121u, 1u), vec4<u32>(var_2.x, 1u, u_input.c, u_input.a)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 31305u, u_input.a, u_input.d), vec4<u32>(u_input.a, 63292u, var_2.x, u_input.c)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(9302u, u_input.a, u_input.d, var_2.x), select(vec4<u32>(1u, 0u, u_input.c, var_2.x), vec4<u32>(7120u, 0u, var_2.x, var_2.x), vec4<bool>(false, var_0.x, false, true)), vec4<u32>(4294967295u, 4294967295u, var_2.x, u_input.d) ^ vec4<u32>(0u, var_2.x, var_2.x, u_input.d)) % vec4<u32>(32u))), Struct_2(~2147483647i, Struct_1(!var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(752f))), _wgslsmith_sub_vec3_i32(var_1.e.c, ~vec3<i32>(u_input.b, -101691i, -1685i))), var_1.c, 1067f, Struct_1(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.b), -641f), ~vec3<i32>(16804i, var_1.e.c.x, -4719i))));
    let var_4 = var_3.a.b.yy;
    var var_5 = var_1.e.c.x;
    var_3 = Struct_5(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-54633i, 56818i, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, -27502i)), var_3.a.a.x, min(0i, 51279i)), -abs(var_1.e.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-483f, var_1.d, 1459f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, var_4.x, var_1.e.b)))), ~var_3.a.c), Struct_2(_wgslsmith_dot_vec2_i32(~(-var_1.b.c.xy), vec2<i32>(max(var_1.a, 55406i), 39998i)), Struct_1(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1504f))), vec3<i32>(_wgslsmith_mult_i32(-56423i, -33910i), -17324i, 1i)), vec4<i32>(u_input.b, ~var_3.a.a.x, _wgslsmith_add_i32(var_1.b.c.x, _wgslsmith_mod_i32(var_1.a, -2147483647i)), _wgslsmith_dot_vec3_i32(var_3.a.a, select(vec3<i32>(2147483647i, var_1.e.c.x, var_1.c.x), vec3<i32>(-26726i, var_1.b.c.x, -48519i), var_0.zzx))), _wgslsmith_f_op_f32(select(var_3.a.b.x, _wgslsmith_f_op_f32(-var_4.x), !var_1.b.a)), var_3.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1786f)), -816f))), _wgslsmith_f_op_f32(exp2(var_1.d))), ~(-_wgslsmith_dot_vec3_i32(var_3.b.c.xwx, ~vec3<i32>(var_1.c.x, -2147483647i, var_1.a))), vec2<i32>(-_wgslsmith_mult_i32(8498i, 0i), var_1.e.c.x), -max(var_3.a.a.zy, (vec2<i32>(u_input.b, var_1.c.x) & vec2<i32>(var_1.e.c.x, var_3.b.a)) ^ min(var_1.e.c.zy, var_3.b.b.c.zx)));
}

