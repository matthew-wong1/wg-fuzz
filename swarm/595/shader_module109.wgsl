struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: i32) -> vec4<i32> {
    global0 = Struct_3(-208f, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(1u, firstLeadingBit(~50848u))), global0.c);
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(floor(-400f))), min(_wgslsmith_sub_u32(~global0.b, _wgslsmith_sub_u32(u_input.a.x, arg_2)) & 10427u, global0.b), global0.c);
    global0 = Struct_3(_wgslsmith_f_op_f32(abs(909f)), min(arg_0.b, ~countOneBits(global0.b)), global0.c);
    let var_0 = vec4<bool>(true, !all(vec3<bool>(true, true, true)), true, all(vec2<bool>(all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)))));
    var var_1 = any(vec2<bool>(!(!var_0.x), all(!vec2<bool>(false, var_0.x))));
    return firstLeadingBit(arg_0.c.b);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    global0 = arg_0;
    global0 = Struct_3(-960f, arg_1.x, Struct_2(Struct_1(firstLeadingBit(abs(u_input.c.wzz)), vec2<i32>(min(arg_0.c.b.x, -2147483647i), arg_0.c.b.x), _wgslsmith_mult_i32(arg_0.c.b.x, u_input.c.x) << (31787u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c.a.d, vec4<f32>(-1645f, arg_0.a, arg_0.a, arg_0.c.a.d.x), vec4<bool>(true, true, false, true))), vec4<f32>(global0.a, -575f, global0.c.a.d.x, arg_0.a)), -u_input.c.x), func_3(arg_0, (global0.c.b.x & -705i) >> (_wgslsmith_add_u32(4294967295u, arg_0.b) % 32u), _wgslsmith_clamp_u32(~1u, ~arg_0.b, ~1u), abs(-44167i) ^ global0.c.b.x)));
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(global0.c.a.d.x * 1687f), 111f, global0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.c.a.d, vec4<f32>(global0.c.a.d.x, global0.c.a.d.x, 791f, var_0.a.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, 421f, 1338f, -275f))), false)) * vec4<f32>(arg_0.c.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.d.x)), var_0.a.d.x)), vec4<f32>(arg_0.a, var_0.a.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.d.x, var_0.a.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-488f, -371f)), 1000f, true)))));
    global0 = arg_0;
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = !all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(true, false, false, true)))));
    global0 = arg_1;
    let var_1 = firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_1.b, firstLeadingBit(15393u)), ~countOneBits(u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a.d.x) * _wgslsmith_f_op_f32(abs(arg_1.c.a.d.x)))));
    var_2 = _wgslsmith_f_op_f32(select(1067f, -1000f, false | all(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0)))));
    return arg_1.c.a.d.x;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global0.b) >> (vec3<u32>(11696u, global0.b, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.b, 44124u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, global0.b, 128439u), vec3<u32>(58303u, 15021u, global0.b)) << (~vec3<u32>(global0.b, 4294967295u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(global0.b, 0u, 91198u)), vec3<u32>(min(global0.b, 4294967295u), ~25880u, global0.b))), reverseBits(select(select(reverseBits(vec3<u32>(global0.b, 4294967295u, 61332u)), vec3<u32>(u_input.b, global0.b, 103745u) << (vec3<u32>(62102u, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_u32(~vec3<u32>(21700u, 40614u, 27538u), ~vec3<u32>(31071u, u_input.b, 4294967295u)), vec3<bool>(true, true, true))));
    var var_1 = 0i;
    var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, u_input.a.x, ~u_input.a.x), ~vec3<u32>(20023u, var_0.x, 4294967295u) | vec3<u32>(19006u, 9047u, global0.b)) | vec3<u32>(_wgslsmith_clamp_u32(func_2(Struct_3(1000f, 2718u, global0.c), vec2<u32>(global0.b, var_0.x)).b, var_0.x, 0u), u_input.a.x, var_0.x), max(vec3<u32>(10544u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 0u) | vec4<u32>(global0.b, 1u, var_0.x, 1u), vec4<u32>(1u, 0u, 56377u, global0.b) | vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 11564u)), ~0u), abs(vec3<u32>(u_input.a.x, 25262u, 4294967295u) & ~vec3<u32>(var_0.x, var_0.x, 59781u))));
    let var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(step(global0.c.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x)))), firstLeadingBit(4294967295u) >> (~(~var_0.x) % 32u), Struct_2(func_2(func_2(Struct_3(493f, 18693u, Struct_2(Struct_1(u_input.c.wwy, global0.c.b.zz, -2147483647i, global0.c.a.d, 1i), global0.c.b)), vec2<u32>(var_0.x, 4294967295u)), ~vec2<u32>(var_0.x, 1u)).c.a, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-2147483647i, arg_2.e, global0.c.b.x, 1i)))), _wgslsmith_mod_vec2_u32(vec2<u32>((15780u | var_0.x) | min(10215u, global0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 0u, 3524u) << (vec3<u32>(1u, var_0.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(global0.b, 16007u, 32511u))), ~abs(u_input.a))).c.a;
    var_1 = ~6023i;
    return _wgslsmith_f_op_f32(f32(-1f) * -777f);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> vec3<i32> {
    var var_0 = global0.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.d.zw);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(1133f, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(var_0.a.d.x * _wgslsmith_f_op_f32(select(-337f, 1001f, arg_2))), _wgslsmith_f_op_f32(func_4(-1i, func_2(arg_0, vec2<u32>(1u, 34578u)))), func_2(func_2(Struct_3(global0.c.a.d.x, arg_0.b, Struct_2(global0.c.a, vec4<i32>(u_input.c.x, -1i, global0.c.b.x, -31817i))), vec2<u32>(1u, 29269u)), vec2<u32>(4294967295u, global0.b) & arg_1.zx).c.a)))), arg_0.b, func_2(func_2(func_2(arg_0, arg_1.zy), ~(~arg_1.zy)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 12893u) | (global0.b & 20699u), 8351u)).c);
    var var_3 = _wgslsmith_f_op_f32(var_1.x - global0.c.a.d.x);
    var var_4 = !vec3<bool>(any(vec3<bool>(!arg_2, any(vec2<bool>(arg_2, arg_2)), any(vec4<bool>(arg_2, arg_2, true, false)))), true, 9590i < _wgslsmith_add_i32(var_0.b.x, _wgslsmith_div_i32(-9160i, var_2.c.b.x)));
    return _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.c.xwy, _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(54124i, 29724i, global0.c.a.b.x)), firstLeadingBit(vec3<i32>(global0.c.a.e, -14850i, global0.c.a.c)))), ~(-arg_0.c.b.zwx)) ^ vec3<i32>(~global0.c.b.x, -(i32(-1i) * -24414i) | _wgslsmith_add_i32(20794i, global0.c.a.a.x & var_0.b.x), -1i);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = global0.c.a.c >> (_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(34333u, u_input.a.x, 4294967295u, 1u), vec4<u32>(4294967295u, 1963u, 4294967295u, 48480u)), vec4<u32>(global0.b, 18293u, 3512u, 35150u) | vec4<u32>(7771u, global0.b, 25348u, 63328u)), ~(~(4294967295u | global0.b))) % 32u);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.c.a.d.x) - arg_2.d.x), global0.a, false)), arg_2.d.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(global0.c.a.d.xy, global0.c.a.d.yy))));
    let var_4 = -u_input.c.xx;
    return func_2(func_2(func_2(func_2(func_2(Struct_3(-987f, global0.b, global0.c), u_input.a), u_input.a), u_input.a), u_input.a), ~countOneBits(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(any(!vec4<bool>(any(vec2<bool>(true, true)), true, false, true)), Struct_1(func_1(Struct_3(1000f, global0.b >> (global0.b % 32u), Struct_2(global0.c.a, vec4<i32>(u_input.c.x, global0.c.a.b.x, global0.c.a.b.x, u_input.c.x))), ~vec3<u32>(global0.b, u_input.a.x, global0.b) >> (_wgslsmith_div_vec3_u32(vec3<u32>(42312u, 1u, u_input.b), vec3<u32>(u_input.a.x, global0.b, 4294967295u)) % vec3<u32>(32u)), false), ~(~(vec2<i32>(-12642i, 0i) & vec2<i32>(-45983i, u_input.c.x))), 0i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.d.x, global0.c.a.d.x, global0.c.a.d.x, -197f)))), -(1i << (global0.b % 32u)) & min(27855i, -1150i ^ u_input.c.x)), Struct_1(-u_input.c.zwx, vec2<i32>(global0.c.b.x, u_input.c.x), _wgslsmith_add_i32(global0.c.b.x, -29028i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.d.x, global0.c.a.d.x, global0.c.a.d.x, -247f), _wgslsmith_f_op_vec4_f32(global0.c.a.d - global0.c.a.d), all(vec2<bool>(true, false))))), -64546i), !(!any(vec4<bool>(true, true, true, true))));
    var var_0 = func_6((true && !any(vec4<bool>(false, false, true, false))) && true, func_2(Struct_3(global0.a, 7766u, global0.c), firstLeadingBit(u_input.a)).c.a, global0.c.a, !(any(vec4<bool>(true, true, true, true)) | true));
    let var_1 = _wgslsmith_f_op_f32(-global0.c.a.d.x);
    var var_2 = 53470i;
    var var_3 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_4 = func_2(func_2(func_6(all(select(vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, var_3.x), vec2<bool>(true, false))), Struct_1(-var_0.c.b.zxx, vec2<i32>(u_input.c.x, 45344i), 103721i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -987f, 1144f, var_0.c.a.d.x)), ~u_input.c.x), Struct_1(~global0.c.b.zxy, vec2<i32>(u_input.c.x, 2945i) << (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_i32(-39312i, 2147483647i), var_0.c.a.d, 1i), (var_3.x & false) && any(vec3<bool>(var_3.x, var_3.x, false))), ~u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, func_2(func_2(var_4, vec2<u32>(var_0.b, var_4.b)), abs(vec2<u32>(67875u, global0.b))).c.a.d.x), _wgslsmith_f_op_vec2_f32(-var_4.c.a.d.wz))), firstLeadingBit(max(u_input.a, ~u_input.a | u_input.a)), 63827u, _wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(global0.b, 4557u, var_4.b, 98414u)), max(vec4<u32>(global0.b, 0u, select(var_0.b, 0u, false), countOneBits(0u)), firstTrailingBit(vec4<u32>(0u, 0u, global0.b, 41941u)))), func_6(var_3.x, global0.c.a, Struct_1(-var_0.c.a.a ^ ~vec3<i32>(var_4.c.a.e, 1923i, var_4.c.a.e), vec2<i32>(_wgslsmith_add_i32(21530i, 7783i), max(var_0.c.a.e, var_4.c.a.e)), var_4.c.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c.a.d - global0.c.a.d) + _wgslsmith_f_op_vec4_f32(select(var_0.c.a.d, global0.c.a.d, var_3.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 6410i, u_input.c.x, 69960i), -vec4<i32>(var_0.c.b.x, -2147483647i, var_4.c.a.b.x, -35046i))), true).c.a.d);
}

