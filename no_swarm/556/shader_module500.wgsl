struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<f32> = vec3<f32>(-1106f, -1730f, 1798f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = vec3<u32>(~u_input.a, ~4294967295u, u_input.a);
    var var_1 = arg_1.d;
    var var_2 = ~_wgslsmith_add_u32(min(~var_0.x, var_1.b.x) >> (4294967295u % 32u), var_0.x);
    var_2 = var_0.x;
    var var_3 = 31157u;
    return arg_1.b;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> bool {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_sub_u32(min(u_input.a, 25846u), u_input.a);
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(countOneBits(-30586i | (arg_1 << (0u % 32u))), arg_2.x, -2147483647i), arg_1, -2147483647i, -countOneBits(arg_2.x));
    var var_3 = min(~reverseBits(vec3<i32>(_wgslsmith_div_i32(arg_2.x, arg_1), abs(arg_1), arg_2.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 54161i, ~abs(0i)), ~var_2.zxw));
    var_0 = u_input.a;
    return !(((u_input.a << ((4294967295u & u_input.a) % 32u)) << (4294967295u % 32u)) >= _wgslsmith_clamp_u32(~(u_input.a | u_input.a), _wgslsmith_mult_u32(u_input.a, 40695u), firstLeadingBit(~u_input.a)));
}

fn func_3() -> u32 {
    var var_0 = false;
    let var_1 = -_wgslsmith_div_i32(-abs(-3597i), _wgslsmith_sub_i32(abs(1i), ~(-1i))) != _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-7962i, 21895i, 1i)), vec3<i32>(-2147483647i, 1i, 1i)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(-51548i, -7513i, -15875i) << (1u % 32u)));
    return ~reverseBits(1u);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_4 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(-541f)), 1930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.d.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, arg_3.x) * arg_0.e.x))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f + global1.x) - _wgslsmith_f_op_f32(round(arg_3.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.e.x, arg_0.b)))) + 2150f));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0i, Struct_3(arg_0.a, global1.x, arg_1, arg_2.d.d, arg_0.e)))), arg_0.d.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * var_0)))));
    var var_1 = vec2<bool>(false, true);
    let var_2 = arg_2.a.a.x;
    return Struct_4(arg_2.c.d.c, arg_0.e.x, Struct_3(select(arg_0.a & countOneBits(arg_0.a), arg_2.c.a << (_wgslsmith_sub_vec3_u32(arg_2.d.a, arg_0.d.b.xwx) % vec3<u32>(32u)), vec3<bool>(arg_0.d.a.a.x, 51544u < arg_0.a.x, !arg_1)), _wgslsmith_f_op_f32(-var_0), all(select(arg_2.d.d.a.a, arg_0.d.a.a, var_2)), arg_2.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3))), Struct_3(~(arg_2.c.d.b.yyy ^ arg_2.d.a) ^ arg_0.d.b.yww, -874f, arg_1, Struct_2(arg_2.a, arg_0.d.b, Struct_1(vec2<bool>(arg_1, false)), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-948f, -215f, var_0, -1360f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_mult_i32(-(~1i), max(firstLeadingBit(-2147483647i), select(-24361i, -27298i, true))));
    var var_1 = func_4(Struct_3(vec3<u32>(0u, u_input.a, ~abs(109920u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1i, Struct_3(vec3<u32>(0u, u_input.a, 1u), global1.x, false, Struct_2(Struct_1(vec2<bool>(false, false)), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), Struct_1(vec2<bool>(true, true)), global1.x), vec4<f32>(-2729f, global1.x, -1000f, global1.x))))), true, Struct_2(Struct_1(vec2<bool>(true, true)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 28367u, 4294967295u)), vec4<u32>(u_input.a, 10676u, u_input.a, 19363u) | vec4<u32>(0u, u_input.a, 37345u, u_input.a)), Struct_1(vec2<bool>(true, false)), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-472f, 888f, global1.x, global1.x), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -270f, global1.x), vec4<f32>(-1521f, -535f, 1804f, 573f))))), func_2(select(!all(vec2<bool>(false, false)), true, true & (0i <= var_0)), var_0, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, var_0, -8614i) ^ vec4<i32>(var_0, -16126i, 1i, -8259i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, var_0), vec4<i32>(1i, var_0, var_0, 32927i))), vec4<i32>(-19570i, var_0, var_0, -var_0))), Struct_4(Struct_1(vec2<bool>(false, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) + _wgslsmith_f_op_f32(func_1(var_0, Struct_3(vec3<u32>(1u, 10857u, u_input.a), global1.x, true, Struct_2(Struct_1(vec2<bool>(true, false)), vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), Struct_1(vec2<bool>(true, true)), -949f), vec4<f32>(-318f, 516f, global1.x, -1838f))))))), Struct_3((vec3<u32>(0u, 82676u, u_input.a) | vec3<u32>(u_input.a, 1u, u_input.a)) ^ ~vec3<u32>(4294967295u, 5895u, 70885u), -559f, true, Struct_2(Struct_1(vec2<bool>(true, true)), vec4<u32>(4294967295u, 458u, u_input.a, u_input.a) & vec4<u32>(4294967295u, u_input.a, 24247u, u_input.a), Struct_1(vec2<bool>(false, true)), -550f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, global1.x, -931f, global1.x))))), Struct_3(vec3<u32>(u_input.a, ~u_input.a, func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), all(vec3<bool>(true, false, false)), Struct_2(Struct_1(vec2<bool>(true, true)), ~vec4<u32>(55554u, u_input.a, u_input.a, u_input.a), Struct_1(vec2<bool>(false, false)), 548f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1301f, 1518f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 433f, -147f, 2158f) + vec4<f32>(-1459f, global1.x, -1370f, global1.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(min(global1.x, global1.x))), global1.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -303f), -1270f));
    let var_2 = var_0 | -max(1i, 35607i);
    var_1 = func_4(Struct_3(abs(var_1.c.d.b.zyy), _wgslsmith_f_op_f32(-122f * global1.x), var_1.c.d.c.a.x | false, func_4(Struct_3(vec3<u32>(u_input.a, u_input.a, var_1.c.a.x), _wgslsmith_f_op_f32(global1.x - 230f), var_1.c.d.a.a.x, var_1.c.d, var_1.d.e), var_1.a.a.x, Struct_4(var_1.a, var_1.b, var_1.d, func_4(Struct_3(var_1.c.a, -1163f, true, Struct_2(Struct_1(var_1.a.a), vec4<u32>(var_1.d.d.b.x, u_input.a, 4294967295u, u_input.a), Struct_1(vec2<bool>(true, var_1.c.c)), -1835f), var_1.d.e), var_1.d.c, Struct_4(Struct_1(var_1.c.d.c.a), 1336f, var_1.c, Struct_3(vec3<u32>(4390u, 4294967295u, 4294967295u), -256f, var_1.d.c, var_1.d.d, vec4<f32>(649f, var_1.c.d.d, var_1.d.b, var_1.c.d.d))), var_1.d.e).d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.c.e + vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1969f, -1000f, 1652f, -352f)), true))).c.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.c.e))), _wgslsmith_f_op_vec4_f32(-var_1.c.e), var_1.d.d.c.a.x))), var_1.d.c, func_4(Struct_3(~(~vec3<u32>(var_1.d.d.b.x, u_input.a, 4294967295u)), -352f, false, Struct_2(func_4(var_1.c, var_1.d.c, Struct_4(Struct_1(vec2<bool>(false, var_1.a.a.x)), 1000f, Struct_3(var_1.c.d.b.xwx, 1113f, var_1.c.c, var_1.c.d, var_1.c.e), Struct_3(var_1.c.d.b.zzz, -467f, var_1.c.c, Struct_2(Struct_1(var_1.d.d.c.a), var_1.c.d.b, Struct_1(var_1.a.a), var_1.d.e.x), var_1.d.e)), vec4<f32>(var_1.c.e.x, var_1.b, 522f, global1.x)).d.d.c, ~vec4<u32>(15222u, 26747u, 90435u, u_input.a), func_4(var_1.d, var_1.d.d.c.a.x, Struct_4(Struct_1(var_1.d.d.a.a), var_1.b, Struct_3(var_1.d.a, -107f, var_1.c.c, Struct_2(Struct_1(vec2<bool>(var_1.d.c, var_1.a.a.x)), vec4<u32>(0u, 0u, 1u, 76548u), var_1.d.d.c, -515f), vec4<f32>(-1022f, var_1.d.e.x, 928f, global1.x)), Struct_3(vec3<u32>(27551u, 137704u, 4294967295u), global1.x, true, var_1.d.d, vec4<f32>(-1063f, -1364f, 1010f, global1.x))), vec4<f32>(-1427f, 418f, 795f, var_1.b)).d.d.a, global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.d.e)))), all(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.a.a.x, false), vec3<bool>(var_1.c.c, false, var_1.a.a.x))), Struct_4(Struct_1(!vec2<bool>(var_1.a.a.x, var_1.c.d.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), var_1.c.b), var_1.c, var_1.d), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(690f, 376f, global1.x, var_1.d.d.d), var_1.d.e)), var_1.d.e), vec4<f32>(567f, var_1.b, _wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(abs(var_1.c.e)));
    let var_3 = vec3<u32>(1u, var_1.d.d.b.x, u_input.a);
    var_1 = func_4(Struct_3(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1366f, 128f)) + global1.x) + _wgslsmith_f_op_f32(func_4(var_1.d, var_1.a.a.x, Struct_4(var_1.d.d.c, var_1.b, var_1.d, var_1.d), var_1.c.e).b - global1.x)), all(vec3<bool>(true, var_1.d.c && var_1.a.a.x, true)), var_1.d.d, var_1.d.e), select(true, true, true), Struct_4(Struct_1(vec2<bool>(var_1.a.a.x, var_1.a.a.x)), -402f, var_1.d, func_4(func_4(func_4(var_1.c, var_1.a.a.x, Struct_4(Struct_1(var_1.c.d.a.a), -1056f, Struct_3(vec3<u32>(var_3.x, var_3.x, 90215u), 321f, true, Struct_2(Struct_1(var_1.c.d.c.a), vec4<u32>(u_input.a, var_3.x, var_3.x, 10454u), var_1.c.d.a, var_1.c.b), var_1.c.e), var_1.c), var_1.d.e).d, func_4(Struct_3(vec3<u32>(var_1.c.d.b.x, u_input.a, 0u), global1.x, var_1.c.d.c.a.x, var_1.c.d, vec4<f32>(var_1.c.d.d, -285f, -145f, -725f)), var_1.a.a.x, Struct_4(var_1.a, 1940f, var_1.d, Struct_3(vec3<u32>(var_3.x, 0u, 65216u), global1.x, false, Struct_2(Struct_1(vec2<bool>(true, var_1.a.a.x)), vec4<u32>(var_1.c.d.b.x, 4294967295u, 0u, 81612u), Struct_1(vec2<bool>(false, false)), var_1.d.b), var_1.c.e)), var_1.c.e).a.a.x, func_4(Struct_3(var_1.d.d.b.wyx, global1.x, true, Struct_2(var_1.d.d.c, var_1.c.d.b, var_1.a, -995f), vec4<f32>(var_1.b, 985f, global1.x, global1.x)), var_1.d.c, Struct_4(var_1.d.d.a, -1232f, Struct_3(var_1.d.a, -1068f, var_1.d.d.a.a.x, var_1.d.d, vec4<f32>(var_1.d.e.x, global1.x, -122f, global1.x)), var_1.c), vec4<f32>(533f, 2273f, -1178f, -855f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, var_1.b, global1.x))).c, !var_1.c.c || false, func_4(func_4(Struct_3(vec3<u32>(42160u, 74524u, 26487u), global1.x, false, Struct_2(Struct_1(vec2<bool>(var_1.c.c, false)), var_1.d.d.b, var_1.d.d.a, -243f), vec4<f32>(var_1.d.d.d, global1.x, -621f, 1000f)), var_1.c.d.a.a.x, Struct_4(Struct_1(var_1.d.d.c.a), -1077f, Struct_3(vec3<u32>(4294967295u, 1189u, 4294967295u), var_1.d.b, var_1.c.c, var_1.c.d, vec4<f32>(global1.x, 226f, 685f, global1.x)), var_1.c), vec4<f32>(var_1.b, -2144f, var_1.b, -1000f)).d, !var_1.a.a.x, Struct_4(Struct_1(vec2<bool>(false, false)), 649f, Struct_3(var_1.c.d.b.xxw, 1000f, true, Struct_2(var_1.d.d.a, var_1.c.d.b, var_1.c.d.c, 1297f), vec4<f32>(1570f, -663f, -964f, var_1.d.d.d)), var_1.c), _wgslsmith_div_vec4_f32(var_1.c.e, var_1.c.e)), vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(sign(-602f)), var_1.c.e.x, _wgslsmith_f_op_f32(f32(-1f) * -353f))).c), vec4<f32>(var_1.b, -1858f, 291f, _wgslsmith_f_op_f32(-var_1.c.e.x)));
    var var_4 = -397f;
    let var_5 = global1.x;
    let var_6 = !var_1.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~4294967295u);
}

