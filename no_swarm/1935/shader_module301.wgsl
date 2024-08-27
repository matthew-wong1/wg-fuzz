struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec2<u32> {
    return select(abs(u_input.c.xy) ^ ~vec2<u32>(u_input.c.x, 38471u), u_input.c.zx, vec2<bool>(true, all(vec4<bool>(arg_1.x, false, arg_1.x, true)))) & u_input.c.xy;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = all(vec4<bool>(!any(vec3<bool>(false, true, arg_0.x)), true, arg_0.x, any(select(select(arg_0, vec2<bool>(arg_0.x, false), true), vec2<bool>(false, false), arg_0.x))));
    var var_1 = Struct_4(global1.x & ~_wgslsmith_dot_vec2_u32(func_3(u_input.d.yz, vec3<bool>(var_0, arg_0.x, false)), u_input.c.yy), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -365f), 1470f), Struct_1(select(!(!vec3<bool>(arg_0.x, true, true)), select(select(vec3<bool>(var_0, arg_0.x, false), vec3<bool>(arg_0.x, var_0, true), vec3<bool>(true, false, true)), vec3<bool>(false, arg_0.x, var_0), 1u < global1.x), !vec3<bool>(true, var_0, var_0)), vec3<f32>(731f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1570f, -920f), _wgslsmith_f_op_f32(step(454f, -188f))))), !vec2<bool>(true, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(-1316f * 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1640f), 1f)), _wgslsmith_div_f32(-1002f, _wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -442f), -202f, -562f, _wgslsmith_f_op_f32(1585f * -548f))))));
    var var_2 = true;
    var_1 = Struct_4(0u | ~_wgslsmith_mod_u32(~u_input.c.x, var_1.a), vec3<f32>(_wgslsmith_f_op_f32(620f * -1387f), _wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(abs(1139f))), Struct_1(!(!(!vec3<bool>(false, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 925f, -944f) * var_1.c.b), _wgslsmith_f_op_vec3_f32(-var_1.c.e.yzy), !vec3<bool>(true, true, var_0))) - var_1.c.e.xzw), !var_1.c.c, _wgslsmith_f_op_vec3_f32(-var_1.b), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.e.x))), -1194f, _wgslsmith_f_op_f32(f32(-1f) * -2587f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.b.x, 632f)), _wgslsmith_f_op_f32(1000f + 195f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-511f, _wgslsmith_f_op_f32(-var_1.c.b.x)), _wgslsmith_div_vec2_f32(var_1.b.xz, _wgslsmith_f_op_vec2_f32(-var_1.b.xy))))))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global0 = !func_2(select(vec2<bool>(true, any(vec4<bool>(true, true, true, false))), vec2<bool>(true, true), _wgslsmith_f_op_f32(round(-176f)) != _wgslsmith_f_op_f32(f32(-1f) * -1481f)));
    var var_0 = Struct_2(abs(vec4<i32>(35192i, _wgslsmith_div_i32(u_input.a, -9915i), -38782i, 2147483647i)) ^ vec4<i32>(-(~(-28466i)), select(~u_input.d.x, ~(-1i), true), max(~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 25210i, -9190i))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.xx)), u_input.c.yx, Struct_1(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-543f + 883f), _wgslsmith_div_f32(-1000f, -171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(224f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1301f, -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -458f))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f * -2482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f * -705f)), 517f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-246f, -902f, 941f, 1871f) * vec4<f32>(-881f, 109f, 312f, 297f))))), abs(1u >> (u_input.c.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -279f), 1316f)));
    global1 = var_0.b;
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(-countOneBits(var_0.a.xx), vec2<i32>(_wgslsmith_mult_i32(30610i, var_0.a.x), firstTrailingBit(2147483647i)))), 33425i);
    return var_0.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    global0 = all(select(vec2<bool>(!arg_1.a.x, (u_input.b ^ arg_2.x) != _wgslsmith_add_u32(0u, arg_2.x)), !select(vec2<bool>(true, true), !arg_1.c, vec2<bool>(true, true)), arg_1.a.zy));
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~arg_2.x, ~_wgslsmith_add_u32(global1.x, 11973u)) ^ arg_2.wxw, select(select(vec3<u32>(1u, 9180u, arg_2.x) << (arg_2.xzy % vec3<u32>(32u)), ~vec3<u32>(3288u, global1.x, 3199u), !arg_1.a.x) ^ (vec3<u32>(0u, arg_2.x, u_input.e) ^ select(u_input.c, vec3<u32>(16857u, 1u, 4294967295u), false)), vec3<u32>(countOneBits(min(0u, 72335u)), 41052u, ~72504u), select(arg_1.a, arg_1.a, vec3<bool>(all(vec3<bool>(arg_1.a.x, arg_1.a.x, false)), global1.x != u_input.b, true))), firstLeadingBit(vec3<u32>(abs(global1.x), 45200u | u_input.c.x, 1u) ^ (~vec3<u32>(42491u, global1.x, 78454u) & select(vec3<u32>(33173u, 0u, global1.x), vec3<u32>(17126u, 1u, 1u), vec3<bool>(true, arg_1.c.x, arg_1.a.x)))));
    let var_1 = select(vec4<bool>(true, func_1().c.x && all(arg_1.a), !arg_1.c.x, any(arg_1.c)), vec4<bool>(!func_1().a.x | true, !(-u_input.d.x == u_input.a), !any(vec2<bool>(arg_1.c.x, arg_1.a.x)), false), any(select(!vec3<bool>(false, false, arg_1.c.x), !vec3<bool>(arg_1.a.x, true, arg_1.c.x), arg_1.c.x)));
    var_0 = _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(~114444u, var_0.x, 4294967295u));
    let var_2 = arg_1.a.xy;
    return firstTrailingBit(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-423f, func_1(), (vec4<u32>(u_input.b, 72069u, firstTrailingBit(1u), _wgslsmith_div_u32(24327u, u_input.c.x)) >> (~(~vec4<u32>(0u, global1.x, u_input.c.x, 4294967295u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.xz, u_input.c.zz), ~firstLeadingBit(global1.x), ~u_input.e, _wgslsmith_mod_u32(~26047u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), u_input.c))) % vec4<u32>(32u)));
    var var_1 = -311f;
    global0 = !(!(!(~u_input.a != u_input.a)));
    global0 = any(vec4<bool>(true, select(!(global1.x >= 0u), true, true), false, any(vec3<bool>(true, all(vec2<bool>(true, true)), false))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, _wgslsmith_sub_i32(u_input.a << (u_input.b % 32u), -2147483647i), u_input.d.x), vec4<i32>(abs(u_input.d.x), firstTrailingBit(firstLeadingBit(30455i)), _wgslsmith_clamp_i32(u_input.d.x, u_input.a, 5249i) >> ((72257u & u_input.e) % 32u), u_input.d.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yx, vec2<u32>(min(4294967295u, 1u), global1.x)), _wgslsmith_clamp_vec2_u32(u_input.c.yz, u_input.c.yx, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, u_input.c.x), u_input.c.zz)))), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1().a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-827f, -901f, 333f), vec3<f32>(507f, 366f, -1000f), false)))) * vec3<f32>(1f, 1f, 1f)), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), func_1().a.yz, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) + _wgslsmith_f_op_f32(max(-384f, -568f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1833f), _wgslsmith_f_op_f32(-606f + -430f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -684f, 711f, 145f) + vec4<f32>(202f, -207f, -904f, 956f))))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global1.x, global1.x, 62492u, 25268u), vec4<u32>(u_input.e, global1.x, 4294967295u, u_input.c.x), vec4<bool>(false, true, true, false)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1.x, u_input.b, global1.x), vec4<u32>(global1.x, 1u, 2413u, 68828u)) % vec4<u32>(32u)), abs(vec4<u32>(93006u, global1.x, 103990u, global1.x) ^ vec4<u32>(global1.x, global1.x, u_input.e, global1.x))) | _wgslsmith_div_u32(u_input.e, global1.x));
    var var_3 = u_input.e;
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-180f, var_4.e.x)), firstLeadingBit(u_input.d.xz), -10224i, vec2<u32>(~var_2.d, ~(0u ^ (1u | global1.x))), ~abs(var_2.a.x));
}

