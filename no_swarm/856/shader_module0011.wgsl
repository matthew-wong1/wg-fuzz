struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(1205f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, 24397i, ~(~(i32(-1i) * -2147483647i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-(arg_3 >> (vec3<u32>(28143u, u_input.a, 101891u) % vec3<u32>(32u))), arg_3), arg_3));
    global1 = _wgslsmith_f_op_vec2_f32(step(arg_0.b.a.xx, arg_1.a.zz));
    let var_1 = select(!vec3<bool>((false || arg_0.b.c.a.x) | false, !(arg_0.b.c.a.x && true), select(12014i, 1i, true) >= (arg_1.b << (u_input.a % 32u))), select(select(vec3<bool>(!arg_1.c.a.x, all(arg_1.c.a), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, arg_0.b.c.a.x)), arg_1.c.a.x), !(!vec3<bool>(arg_1.c.a.x, arg_0.b.c.a.x, true))), vec3<bool>(true | (u_input.a == 29930u), true, arg_1.c.a.x), vec3<bool>(_wgslsmith_f_op_f32(step(267f, arg_0.b.d)) == global1.x, true, arg_1.c.a.x)), true);
    var var_2 = any(!vec2<bool>(!var_1.x, all(vec2<bool>(false, arg_0.b.c.a.x))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.b) + arg_1.d)));
    return Struct_4(var_0.x, arg_1);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b.b, _wgslsmith_sub_i32(-2185i, arg_0.a)), abs(vec2<i32>(i32(-1i) * -16204i, arg_0.a))), ~vec2<i32>(min(_wgslsmith_sub_i32(arg_0.a, -32147i), arg_0.b.b & arg_0.b.b), 1i));
    return arg_0.b.c;
}

fn func_1() -> f32 {
    var var_0 = !(!any(vec3<bool>(true, true, false)));
    var var_1 = Struct_5(Struct_4(~(-1i << (u_input.a % 32u)) ^ -(~(-18825i)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1651f, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -338f, global1.x), vec3<f32>(global1.x, global1.x, 389f)))), -max(1314i, 21652i), func_3(func_2(Struct_4(-1i, Struct_3(vec3<f32>(global1.x, global1.x, global1.x), -26104i, Struct_1(vec2<bool>(false, true), global1.x), global1.x)), Struct_3(vec3<f32>(1000f, -450f, global1.x), -2147483647i, Struct_1(vec2<bool>(false, true), global1.x), global1.x), u_input.a, vec3<i32>(32130i, 44424i, 0i)), 4294967295u ^ u_input.b.x, func_2(Struct_4(-7066i, Struct_3(vec3<f32>(1335f, global1.x, global1.x), -11195i, Struct_1(vec2<bool>(false, true), global1.x), 571f)), Struct_3(vec3<f32>(1352f, global1.x, global1.x), -2147483647i, Struct_1(vec2<bool>(true, false), global1.x), global1.x), u_input.b.x, vec3<i32>(-34926i, 433i, 1i)).b.a.yz, func_2(Struct_4(-2503i, Struct_3(vec3<f32>(1053f, global1.x, 575f), -2147483647i, Struct_1(vec2<bool>(true, false), 405f), -1000f)), Struct_3(vec3<f32>(-352f, global1.x, global1.x), -20349i, Struct_1(vec2<bool>(false, false), 1954f), -191f), u_input.a, vec3<i32>(-1i, 2147483647i, 2147483647i)).b.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(343f * -990f))))), ~abs(vec3<i32>(1i, 1i, 1i)), reverseBits(vec3<i32>(1i, -_wgslsmith_mod_i32(-1i, -1i), -20862i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(exp2(global1.x))), 1000f, 684f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, 1000f, global1.x)))));
    global0 = u_input.b.x;
    var var_2 = Struct_5(func_2(Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c, vec3<i32>(14118i, 54034i, 1i)), abs(var_1.b)), func_2(var_1.a, Struct_3(var_1.a.b.a, var_1.a.b.b, var_1.a.b.c, global1.x), 0u, vec3<i32>(var_1.a.b.b, var_1.b.x, var_1.b.x)).b), var_1.a.b, 0u, _wgslsmith_clamp_vec3_i32(var_1.b, -(vec3<i32>(-58336i, -28637i, var_1.c.x) ^ var_1.b), vec3<i32>(-1i, func_2(var_1.a, Struct_3(var_1.a.b.a, 26761i, var_1.a.b.c, 1269f), u_input.a, vec3<i32>(11595i, 0i, 9366i)).b.b, select(var_1.b.x, 2147483647i, true)))), _wgslsmith_mod_vec3_i32(reverseBits(var_1.c & vec3<i32>(var_1.b.x, 3683i, var_1.c.x)), firstLeadingBit(~vec3<i32>(2147483647i, 2147483647i, var_1.a.b.b))), _wgslsmith_mod_vec3_i32(var_1.b, abs(vec3<i32>(_wgslsmith_sub_i32(13054i, -1i), _wgslsmith_div_i32(var_1.b.x, 1i), _wgslsmith_mult_i32(1i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(139f, var_1.a.b.a.x)), _wgslsmith_f_op_f32(min(2061f, 1111f))) * _wgslsmith_f_op_vec3_f32(exp2(var_1.d))))));
    var_0 = any(select(select(vec3<bool>(func_2(var_1.a, Struct_3(var_2.a.b.a, var_1.b.x, Struct_1(var_1.a.b.c.a, 254f), var_1.d.x), 22097u, vec3<i32>(-29941i, -11372i, 2147483647i)).b.c.a.x, true, false & var_1.a.b.c.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.a.b.c.a.x, var_2.a.b.c.a.x), vec3<bool>(true, true, var_2.a.b.c.a.x), false), true & var_1.a.b.c.a.x), !(false || var_2.a.b.c.a.x)), select(select(!vec3<bool>(var_2.a.b.c.a.x, var_2.a.b.c.a.x, var_1.a.b.c.a.x), vec3<bool>(var_2.a.b.c.a.x, var_2.a.b.c.a.x, false), var_1.a.b.c.a.x), !vec3<bool>(true, var_2.a.b.c.a.x, true), vec3<bool>(true, var_1.a.b.b != var_2.a.a, u_input.a < 19034u)), true));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.c.b - _wgslsmith_f_op_f32(f32(-1f) * -1594f)) + 680f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(reverseBits(80917u), u_input.b.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-654f, global1.x)))))))) + vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1638f - -853f), _wgslsmith_f_op_f32(trunc(-290f))))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 79746i, _wgslsmith_add_i32(0i, -2147483647i)), reverseBits(~vec3<i32>(0i, 2147483647i, 2147483647i)))), -2147483647i);
    var_0 = firstTrailingBit(~abs(abs(u_input.a)) ^ ~(~1u << (~u_input.b.x % 32u)));
    var var_2 = Struct_5(func_2(func_2(Struct_4(var_1, func_2(Struct_4(var_1, Struct_3(vec3<f32>(global1.x, global1.x, 1000f), var_1, Struct_1(vec2<bool>(true, true), -905f), -1742f)), Struct_3(vec3<f32>(global1.x, global1.x, global1.x), var_1, Struct_1(vec2<bool>(false, true), global1.x), 459f), u_input.a, vec3<i32>(-5914i, var_1, var_1)).b), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, 361f, global1.x) - vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1)), func_2(Struct_4(-1i, Struct_3(vec3<f32>(1174f, 418f, 314f), var_1, Struct_1(vec2<bool>(true, false), -299f), global1.x)), Struct_3(vec3<f32>(global1.x, global1.x, 807f), var_1, Struct_1(vec2<bool>(false, true), global1.x), -894f), u_input.a, vec3<i32>(var_1, -2147483647i, var_1)).b.c, _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(0u, 12907u), vec2<bool>(true, true)), vec2<u32>(4294967295u, u_input.b.x) & vec2<u32>(u_input.b.x, 85313u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-32412i, var_1, 0i), vec3<i32>(2147483647i, -27200i, var_1))), func_2(func_2(func_2(Struct_4(-9354i, Struct_3(vec3<f32>(-920f, 876f, global1.x), -1i, Struct_1(vec2<bool>(true, true), global1.x), -264f)), Struct_3(vec3<f32>(1782f, 1000f, global1.x), 1228i, Struct_1(vec2<bool>(false, false), -433f), global1.x), 4294967295u, vec3<i32>(var_1, -29882i, -838i)), func_2(Struct_4(var_1, Struct_3(vec3<f32>(1266f, -178f, 944f), 31064i, Struct_1(vec2<bool>(false, true), global1.x), 417f)), Struct_3(vec3<f32>(global1.x, global1.x, -655f), -42490i, Struct_1(vec2<bool>(true, true), 261f), -1375f), 0u, vec3<i32>(var_1, var_1, -2147483647i)).b, _wgslsmith_add_u32(u_input.a, u_input.a), vec3<i32>(39138i, var_1, var_1)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 752f) + vec3<f32>(-578f, global1.x, 449f)), var_1, func_2(Struct_4(-39143i, Struct_3(vec3<f32>(global1.x, global1.x, global1.x), var_1, Struct_1(vec2<bool>(false, true), global1.x), global1.x)), Struct_3(vec3<f32>(global1.x, -1443f, global1.x), 21610i, Struct_1(vec2<bool>(false, false), global1.x), global1.x), 1u, vec3<i32>(var_1, var_1, 12981i)).b.c, -889f), 42633u, -vec3<i32>(-11722i, var_1, -32424i)).b, 0u, max(-vec3<i32>(var_1, var_1, -1i), -vec3<i32>(var_1, 0i, -28871i))), -select(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, 0i), vec3<i32>(var_1, var_1, 3416i)), abs(abs(vec3<i32>(var_1, -1i, 9703i))), vec3<bool>(true, true, true)), abs(-vec3<i32>(-13841i, var_1 ^ 9424i, select(var_1, -2147483647i, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, 809f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, 204f, -410f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(u_input.a | u_input.a)), min(1u, 4294967295u), 49122u, _wgslsmith_sub_u32(min(47553u | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 8849u, u_input.a, 56864u), vec4<u32>(4294967295u, 79422u, u_input.a, 0u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(95796u, 75779u, u_input.b.x, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)))), vec3<i32>(countOneBits(2147483647i), -(-14412i | ~var_1), abs(max(var_1, select(73915i, var_1, var_2.a.b.c.a.x)))), vec3<i32>(23553i, i32(-1i) * -2147483647i, ~(-1i)), 345f, firstLeadingBit(select(~min(u_input.b, vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.b >> ((u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(var_2.a.b.c.a.x, var_2.a.b.c.a.x, !var_2.a.b.c.a.x))));
}

