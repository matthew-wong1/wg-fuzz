struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = !all(select(select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, false), arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(arg_1 || arg_1, true, true & arg_1), select(true, any(vec3<bool>(true, false, true)), arg_1)));
    global0 = true;
    var var_1 = Struct_2(~arg_3.a, ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(21975u, 1u, u_input.b.x)), vec3<u32>(~u_input.c.x, 16095u, firstTrailingBit(1u))), Struct_1(_wgslsmith_f_op_f32(-arg_2.c.a), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, arg_2.d.b.x, arg_2.d.b.x, u_input.c.x), u_input.c)), arg_2.d);
    let var_2 = Struct_4(~firstLeadingBit((u_input.c.x >> (arg_2.a % 32u)) ^ ~17879u), var_1.c.a);
    return abs(min(vec4<u32>(firstLeadingBit(arg_3.a), _wgslsmith_clamp_u32(arg_2.b.x, 37644u, arg_3.a), arg_3.a, max(var_2.a, 1u)) >> (~(~vec4<u32>(arg_3.a, 38208u, var_2.a, 1189u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.c.x, 4294967295u), 4294967295u, 0u, 1u) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.d.b, vec4<u32>(var_2.a, 1u, 17559u, 0u)), arg_2.d.b ^ u_input.c)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(u_input.c.x, _wgslsmith_mult_vec3_u32(vec3<u32>(select(1u, min(u_input.c.x, 64615u), true), 0u, 0u), u_input.c.xyw), Struct_1(820f, select(~vec4<u32>(u_input.b.x, 5562u, u_input.b.x, u_input.c.x), u_input.c, true) >> (_wgslsmith_clamp_vec4_u32(func_3(vec4<f32>(-2325f, -948f, 910f, 785f), true, Struct_2(u_input.b.x, u_input.c.yyx, Struct_1(2052f, u_input.c), Struct_1(-939f, vec4<u32>(u_input.c.x, u_input.b.x, 1u, 4294967295u))), Struct_4(u_input.c.x, 752f)), ~u_input.c, vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec4_u32(~u_input.c, select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x), vec4<u32>(312u, 0u, u_input.c.x, 1u), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)))));
    global1 = firstTrailingBit(_wgslsmith_mult_i32(u_input.a, -1i));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.yy, vec2<i32>(u_input.a | -39549i, ~(-2147483647i))), vec2<i32>(u_input.a, _wgslsmith_mod_i32(-35182i, u_input.a))), u_input.a, _wgslsmith_mult_i32(-1i, u_input.d.x), (u_input.d.x ^ -_wgslsmith_div_i32(-25299i, u_input.a)) ^ (~(-u_input.d.x) << (_wgslsmith_mult_u32(var_0.a, ~u_input.c.x) % 32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_4(reverseBits(_wgslsmith_mult_u32(firstTrailingBit(~arg_1.x), arg_1.x)), 1f);
    var var_1 = 699f;
    var_0 = Struct_4(max(0u, arg_1.x), _wgslsmith_f_op_f32(1705f + var_0.b));
    global0 = !(!(true == all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var_1 = -120f;
    return Struct_3(vec2<f32>(var_0.b, var_0.b), Struct_2(~var_0.a, u_input.c.xyy, Struct_1(var_0.b, select(~u_input.c, u_input.c, vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1978f), vec4<u32>(~u_input.c.x, ~var_0.a, u_input.c.x >> (arg_1.x % 32u), 1u))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_4(func_2(), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), select(u_input.b, vec2<u32>(6906u, u_input.c.x), 14654i < u_input.d.x)));
    var var_1 = var_0;
    global0 = all(!(!select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), select(arg_0, false, true))));
    global1 = u_input.d.x;
    let var_2 = func_4(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -224i, u_input.d.x) << (var_0.b.c.b % vec4<u32>(32u)), vec4<i32>(countOneBits(1i), -2147483647i, ~u_input.d.x, firstTrailingBit(-25495i))) | min(vec4<i32>(min(u_input.d.x, u_input.d.x), u_input.d.x, -20642i, u_input.d.x), -vec4<i32>(1i, -3739i, 1913i, u_input.a)), var_0.b.c.b.xz).b;
    return func_4(vec4<i32>(u_input.a >> (~func_4(vec4<i32>(55095i, u_input.d.x, u_input.d.x, u_input.d.x), var_2.c.b.zw).b.c.b.x % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.d.x, 0i), u_input.d.x), u_input.d.x, u_input.d.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x << (36375u % 32u), _wgslsmith_div_u32(var_1.b.d.b.x, u_input.c.x)), vec2<u32>(~var_0.b.d.b.x, max(var_0.b.a, 39756u))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    global0 = true;
    global0 = all(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), any(vec2<bool>(false, false))), vec3<bool>(true, any(vec4<bool>(true, false, true, false)), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(arg_0 >= 127f, any(vec3<bool>(true, false, true)), true), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))));
    var var_0 = 1i;
    let var_1 = Struct_4(_wgslsmith_sub_u32(arg_1.b.c.b.x, 4294967295u), -1000f);
    global1 = abs(-39350i);
    return func_4(-countOneBits(~abs(vec4<i32>(-40044i, u_input.d.x, u_input.a, u_input.a))), arg_1.b.d.b.xx).b;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    let var_0 = u_input.a == u_input.d.x;
    global1 = countOneBits(select(abs(u_input.d.x), u_input.d.x, var_0));
    var var_1 = vec4<i32>(countOneBits(abs(_wgslsmith_add_i32(u_input.d.x, u_input.a)) & reverseBits(u_input.a ^ u_input.d.x)), firstTrailingBit(max(u_input.d.x, -14496i)), firstLeadingBit(reverseBits(u_input.a)), ~(-firstLeadingBit(47051i)));
    var var_2 = arg_2.c.a;
    var_1 = vec4<i32>(var_1.x | var_1.x, var_1.x, i32(-1i) * -(var_1.x >> (func_3(vec4<f32>(arg_2.c.a, -739f, -111f, arg_3.b), false, arg_2, arg_3).x % 32u)), reverseBits(2147483647i));
    return ~(~674u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_i32(u_input.a, -2147483647i);
    global0 = true;
    let var_0 = all(vec4<bool>(true, true, false, !all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    let var_1 = func_6(func_5(1f, func_1(var_0)), !(!select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0)), select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0)))), func_5(-1161f, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(round(160f))), func_1(false).b)), Struct_4(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f))));
    let var_2 = false;
    global0 = !all(vec4<bool>(!any(vec4<bool>(var_0, false, false, false)), var_0, true, false));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, 973f)), vec2<f32>(1551f, 858f))), vec2<f32>(_wgslsmith_f_op_f32(select(1617f, 1057f, true)), _wgslsmith_f_op_f32(min(-232f, 2240f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, 1188f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, -1219f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1137f, 375f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1650f, -2095f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, -798f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f * -1090f)), _wgslsmith_f_op_f32(func_5(-188f, Struct_3(vec2<f32>(-1000f, 463f), Struct_2(4294967295u, u_input.c.zwx, Struct_1(-1000f, u_input.c), Struct_1(1307f, u_input.c)))).c.a * _wgslsmith_f_op_f32(min(-1524f, 162f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(func_2() ^ min(vec4<i32>(-30556i, u_input.d.x, u_input.a, -13182i), vec4<i32>(1i, -2147483647i, u_input.d.x, u_input.d.x)))));
}

