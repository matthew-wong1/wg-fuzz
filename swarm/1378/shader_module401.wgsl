struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(1206f, vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(0i, 2147483647i, -55012i, 0i)), vec4<bool>(false, false, true, false)), Struct_3(-1014f, vec4<bool>(true, true, true, false), Struct_1(vec4<i32>(-70308i, 27920i, 1262i, -3114i)), vec4<bool>(true, true, false, true)), Struct_3(880f, vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(56419i, 25325i, 1i, 2147483647i)), vec4<bool>(true, true, false, true)), Struct_3(246f, vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(39869i, 0i, 34689i, -24084i)), vec4<bool>(false, false, false, true)), Struct_3(-1000f, vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(2147483647i, 35977i, 0i, 1i)), vec4<bool>(false, true, false, true)), Struct_3(-491f, vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(-31216i, 28137i, 17613i, 0i)), vec4<bool>(false, true, false, false)), Struct_3(-514f, vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(i32(-2147483648), -37507i, -41286i, 41770i)), vec4<bool>(false, false, true, true)), Struct_3(783f, vec4<bool>(true, true, true, true), Struct_1(vec4<i32>(-32276i, 2147483647i, -14292i, 62510i)), vec4<bool>(false, false, false, false)), Struct_3(1000f, vec4<bool>(false, true, false, false), Struct_1(vec4<i32>(i32(-2147483648), 1i, 26881i, i32(-2147483648))), vec4<bool>(false, false, true, false)), Struct_3(-255f, vec4<bool>(true, true, true, false), Struct_1(vec4<i32>(-4898i, 34860i, 2147483647i, 60380i)), vec4<bool>(false, false, true, false)), Struct_3(-172f, vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(0i, -18509i, 2147483647i, -3047i)), vec4<bool>(false, false, false, true)), Struct_3(226f, vec4<bool>(false, true, true, false), Struct_1(vec4<i32>(14065i, -1i, 1967i, i32(-2147483648))), vec4<bool>(false, true, false, false)), Struct_3(-2006f, vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(52202i, i32(-2147483648), i32(-2147483648), 1i)), vec4<bool>(true, true, false, false)), Struct_3(-243f, vec4<bool>(false, true, false, false), Struct_1(vec4<i32>(-48686i, -32375i, -12547i, 0i)), vec4<bool>(true, true, false, true)), Struct_3(292f, vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(0i, 1i, -37417i, -23050i)), vec4<bool>(false, true, false, true)), Struct_3(-977f, vec4<bool>(true, true, false, true), Struct_1(vec4<i32>(29047i, 2147483647i, 2147483647i, 18107i)), vec4<bool>(true, false, true, true)), Struct_3(-723f, vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(-8125i, -8181i, i32(-2147483648), i32(-2147483648))), vec4<bool>(true, true, false, true)), Struct_3(-561f, vec4<bool>(false, false, false, true), Struct_1(vec4<i32>(0i, 11038i, 1i, -1i)), vec4<bool>(true, false, false, true)), Struct_3(1951f, vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(-25104i, 0i, 4507i, -47340i)), vec4<bool>(true, false, true, true)), Struct_3(2051f, vec4<bool>(true, true, true, true), Struct_1(vec4<i32>(-60501i, -4061i, 1i, -47539i)), vec4<bool>(false, false, true, true)), Struct_3(-1140f, vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(-3737i, -24204i, 68216i, 13139i)), vec4<bool>(false, true, false, false)), Struct_3(868f, vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(-1i, 1i, -49610i, -59287i)), vec4<bool>(true, true, false, false)), Struct_3(752f, vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, 16312i)), vec4<bool>(false, true, false, false)), Struct_3(547f, vec4<bool>(false, false, false, true), Struct_1(vec4<i32>(249i, 0i, 0i, i32(-2147483648))), vec4<bool>(false, false, false, false)), Struct_3(1223f, vec4<bool>(true, true, false, true), Struct_1(vec4<i32>(1i, -1i, 24520i, 15039i)), vec4<bool>(true, false, true, true)), Struct_3(506f, vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(-12133i, 22120i, -41019i, 0i)), vec4<bool>(false, false, false, false)), Struct_3(542f, vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(1i, 1i, -1i, 62263i)), vec4<bool>(true, false, false, true)), Struct_3(-350f, vec4<bool>(false, true, true, false), Struct_1(vec4<i32>(30139i, -1i, 41397i, 2147483647i)), vec4<bool>(false, true, true, false)), Struct_3(1211f, vec4<bool>(false, true, true, true), Struct_1(vec4<i32>(2147483647i, -1i, 77979i, -1012i)), vec4<bool>(false, false, false, false)), Struct_3(-569f, vec4<bool>(false, true, true, true), Struct_1(vec4<i32>(2147483647i, -65120i, 60902i, 12805i)), vec4<bool>(false, true, false, true)), Struct_3(-569f, vec4<bool>(true, true, true, false), Struct_1(vec4<i32>(1i, 49647i, -41435i, -50611i)), vec4<bool>(false, true, false, false)));

var<private> global2: i32;

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(max(1811f, _wgslsmith_f_op_f32(-2105f * -372f)))) * 219f), arg_0.d, arg_0.c, vec4<bool>(false, true, false, all(arg_1.yw)));
    var var_1 = vec2<u32>(~abs(4294967295u) & min(~abs(u_input.a.x), 33689u), 8027u | _wgslsmith_sub_u32(firstTrailingBit(1u ^ u_input.a.x), 25001u));
    var var_2 = global3.x;
    global0 = global3.zy;
    var var_3 = select(!(!vec4<bool>(false, var_0.d.x, any(vec2<bool>(true, true)), true)), !arg_1, vec4<bool>(true != select(select(arg_1.x, arg_1.x, true), any(vec3<bool>(false, arg_1.x, false)), var_0.b.x), true | (true & !arg_1.x), arg_0.b.x, u_input.b >= countOneBits(u_input.b)));
    return var_0.c.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<Struct_3, 31>();
    var var_0 = u_input.a.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global3.xw, global3.zy, true))))) * global3.xw), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1672f, _wgslsmith_div_f32(global0.x, global3.x)), global3.wy, select(true, any(vec4<bool>(true, false, false, false)), arg_1.a.x < -11826i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global3.xy + global3.yz)))))));
    let var_1 = Struct_2(Struct_1(~(-(~arg_0.a))), arg_0, !vec2<bool>(false, all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.a.a.zy, min(arg_1.a.yx, reverseBits(vec2<i32>(-43090i, -2147483647i)))) | _wgslsmith_sub_i32(2147483647i, ~firstLeadingBit(arg_0.a.x)), 57518i);
    return !select(select(!(!vec3<bool>(var_1.c.x, false, var_1.c.x)), vec3<bool>(var_1.c.x, arg_1.a.x < arg_1.a.x, false), vec3<bool>(true, select(var_1.c.x, true, false), 76997u <= u_input.a.x)), vec3<bool>(true, true, all(!vec4<bool>(false, false, true, var_1.c.x))), select(vec3<bool>(true, var_1.c.x, var_1.c.x), !(!vec3<bool>(var_1.c.x, var_1.c.x, true)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) != (28005u >> (u_input.a.x % 32u))));
}

fn func_2() -> Struct_3 {
    let var_0 = select(vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !(u_input.b > _wgslsmith_sub_i32(21986i, u_input.b)), false), vec3<bool>(any(vec2<bool>(true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), false, true)), func_4(Struct_1(func_3(Struct_3(global0.x, vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(0i, u_input.b, u_input.b, -79118i)), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true))), Struct_1(firstTrailingBit(vec4<i32>(-84250i, u_input.b, -2147483647i, 43048i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -23852i, u_input.b, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.b, 122052i)))));
    global2 = u_input.b;
    let var_1 = var_0;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1146f, _wgslsmith_f_op_f32(f32(-1f) * -866f), var_0.x)) * _wgslsmith_f_op_f32(round(1000f)))), 1231f);
    let var_2 = Struct_1(vec4<i32>(countOneBits(_wgslsmith_div_i32(1i, 26377i)), (~u_input.b | -u_input.b) ^ _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(82076i, u_input.b, 24749i), vec3<i32>(u_input.b, 1i, 0i))), u_input.b, -1i));
    return Struct_3(global0.x, !vec4<bool>(select(var_0.x, !var_1.x, all(vec2<bool>(false, var_0.x))), true, true, false), var_2, select(vec4<bool>(var_0.x, var_1.x, var_1.x, global0.x < global0.x), !select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, var_1.x, false, true), var_1.x), false));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_mod_i32(abs(var_0.c.a.x) ^ 218i, _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.c.a.yxy), vec3<i32>(var_0.c.a.x, abs(-var_0.c.a.x), ~(~2147483647i))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 2061f, global3.x) + vec4<f32>(var_0.a, 502f, 350f, global0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-324f, 455f, -634f, var_0.a))), true)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1744f, 290f, var_0.a, global3.x)))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), -508f, -184f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, global0.x, var_0.a, var_0.a)))));
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~(-arg_0.a.a.wx), min(arg_0.b.a.zw, countOneBits(arg_1.a.zw)) >> (vec2<u32>(u_input.a.x | 35287u, u_input.a.x | u_input.a.x) % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.a.x, -35382i), func_2().c.a.zy));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_2(func_1(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, -12189i, u_input.b, u_input.b), vec4<i32>(67980i, u_input.b, 15061i, 7126i), ~vec4<i32>(35114i, u_input.b, 4586i, u_input.b))), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-32185i, u_input.b, -2147483647i), vec3<i32>(u_input.b, 0i, -2147483647i)) > 0i, true)), Struct_1(countOneBits(~(-vec4<i32>(-39390i, u_input.b, 39386i, u_input.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f - 367f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(global0.x, 312f), 239f, _wgslsmith_f_op_f32(f32(-1f) * -880f), -721f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, global3.x, global3.x, global3.x))))))), -(~u_input.b)));
    let var_1 = global3.xz;
    let var_2 = vec2<u32>(45993u, u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global3.wz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zy)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.zy), var_0.zz))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xw), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = 139f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global3.x)), 37313u << ((~var_2.x | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 105922u), u_input.a), u_input.a.x ^ var_2.x)) % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(min(var_2.x | 38757u, countOneBits(u_input.a.x)), var_2.x, u_input.a.x, _wgslsmith_clamp_u32(~4294967295u, ~var_2.x, max(23140u, 58993u))), ~(~(~vec4<u32>(34252u, u_input.a.x, u_input.a.x, u_input.a.x)))));
}

