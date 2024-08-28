struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u, Struct_2(Struct_1(34554i, vec2<f32>(1417f, 1000f), vec4<u32>(14852u, 14886u, 1u, 0u), true, vec3<f32>(-127f, -1364f, -1152f)), vec4<f32>(141f, 320f, -735f, 255f), true), vec2<u32>(95363u, 37561u), Struct_1(-1i, vec2<f32>(-650f, -305f), vec4<u32>(10223u, 34012u, 4294967295u, 1u), false, vec3<f32>(-1671f, -432f, 747f)));

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    global1 = Struct_3(4294967295u, Struct_2(Struct_1(_wgslsmith_div_i32(-1366i, _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, -27340i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.d.b))), vec4<u32>(4294967295u, select(u_input.a.x, global0.c.x, global0.b.c), global1.b.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.c.x, arg_0.x, 0u, global1.b.a.c.x), vec4<u32>(global0.c.x, global1.b.a.c.x, global0.d.c.x, 1u))), global1.d.d, _wgslsmith_div_vec3_f32(vec3<f32>(-206f, 706f, global0.d.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, arg_1.x, global0.d.b.x)))), arg_1, global1.d.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(~global1.b.a.c.x), 14545u), _wgslsmith_div_vec2_u32(~u_input.a.yz, countOneBits(_wgslsmith_mult_vec2_u32(global0.d.c.yz, arg_0.zy))), _wgslsmith_add_vec2_u32(u_input.a.yx, firstLeadingBit(~u_input.a.zx))), Struct_1(reverseBits(firstLeadingBit(u_input.b.x)) >> (~global0.d.c.x % 32u), _wgslsmith_f_op_vec2_f32(abs(arg_1.xz)), abs(arg_0), global1.d.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), -286f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.d.e.x)))))));
    var var_0 = Struct_3(arg_0.x, global1.b, ~vec2<u32>(~(~4294967295u), 77160u), global1.b.a);
    var var_1 = !vec2<bool>(true, !(_wgslsmith_f_op_f32(max(-501f, 167f)) >= _wgslsmith_f_op_f32(455f + global0.b.b.x)));
    let var_2 = true;
    var_1 = !(!select(!select(vec2<bool>(false, var_2), vec2<bool>(global1.d.d, global1.b.a.d), vec2<bool>(false, false)), select(!vec2<bool>(false, var_1.x), select(vec2<bool>(var_0.d.d, false), vec2<bool>(arg_2, global1.b.a.d), global0.b.c), vec2<bool>(true, true)), var_2));
    return ~(~_wgslsmith_mod_u32(arg_0.x >> (4515u % 32u), 9487u | arg_0.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    global0 = Struct_3(~41388u, global1.b, ~_wgslsmith_mult_vec2_u32(~(~u_input.a.zx), vec2<u32>(_wgslsmith_mult_u32(arg_1, arg_1), func_3(vec4<u32>(0u, global0.c.x, global1.a, u_input.c), global0.b.b, true))), global1.d);
    var var_0 = Struct_4(Struct_3(4294967295u, Struct_2(global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b.b - vec4<f32>(global1.d.b.x, global1.d.e.x, -155f, global1.b.b.x))), !global1.b.a.d && false), _wgslsmith_add_vec2_u32(global1.b.a.c.xy, min(~vec2<u32>(u_input.a.x, u_input.c), ~global1.c)), Struct_1(_wgslsmith_add_i32(global0.d.a, -599i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.b.a.b - vec2<f32>(global0.b.b.x, global1.d.b.x)))), vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.a.c.wyx, vec3<u32>(arg_1, u_input.a.x, 97252u)), _wgslsmith_add_u32(arg_1, 23617u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 13013u, 0u, u_input.c), global0.d.c), ~global1.d.c.x), global0.b.a.d, global1.b.a.e)), !vec3<bool>(true, all(select(vec4<bool>(global0.b.a.d, global1.b.c, false, global1.d.d), vec4<bool>(false, global0.d.d, false, global0.d.d), vec4<bool>(false, false, global0.b.c, false))), global0.d.d));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-268f - 907f), _wgslsmith_f_op_f32(-global0.d.e.x)))), _wgslsmith_f_op_f32(-global0.b.a.e.x)));
    let var_2 = Struct_2(var_0.a.d, vec4<f32>(var_0.a.b.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.b.x) - 163f)), _wgslsmith_f_op_f32(ceil(-1836f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x))))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d.a, arg_2.x, 2147483647i, -41555i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global1.d.a, 2147483647i, 42926i), vec4<i32>(-40035i, -1i, arg_2.x, 39272i)))) > u_input.b.x);
    let var_3 = global1.b;
    return var_0.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = global0.b.a.c & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.d.c.x | 1u, ~_wgslsmith_add_u32(u_input.a.x, arg_2), firstLeadingBit(~1u)), arg_1.a.c);
    global0 = func_2((u_input.b | firstLeadingBit(-u_input.b)) >> ((select(max(vec4<u32>(arg_2, 4752u, arg_1.a.c.x, global1.a), global1.d.c), ~vec4<u32>(arg_2, global0.a, 1u, global1.c.x), select(vec4<bool>(false, true, true, global0.d.d), vec4<bool>(arg_1.a.d, global0.d.d, true, true), vec4<bool>(true, true, global1.b.a.d, true))) | global1.b.a.c) % vec4<u32>(32u)), 1u, u_input.b.xxx);
    global0 = func_2(~abs(vec4<i32>(~global0.d.a, _wgslsmith_mult_i32(global1.d.a, -40092i), global1.b.a.a | -2147483647i, global0.d.a & u_input.b.x)), max(0u, arg_1.a.c.x), _wgslsmith_mod_vec3_i32(u_input.b.xzx, _wgslsmith_add_vec3_i32(max(vec3<i32>(-44637i, u_input.b.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(15265i, 6373i, global1.b.a.a), vec3<i32>(global1.b.a.a, 16040i, -1i))), reverseBits(vec3<i32>(-53225i, -3116i, -2147483647i) >> (vec3<u32>(global0.b.a.c.x, 4294967295u, 67973u) % vec3<u32>(32u))))));
    var var_1 = Struct_2(global1.b.a, vec4<f32>(-128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-557f)) - _wgslsmith_f_op_f32(661f + _wgslsmith_f_op_f32(trunc(arg_3.x)))), arg_3.x, _wgslsmith_f_op_f32(-global1.d.e.x)), (~countOneBits(global1.d.a) <= ~2147483647i) & any(vec3<bool>(any(vec4<bool>(false, global1.b.a.d, global0.d.d, global1.d.d)), !global0.b.c, u_input.c < 0u)));
    var var_2 = -595f;
    return Struct_3(_wgslsmith_div_u32(global1.a, ~u_input.c), arg_1, _wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, var_1.a.c.x)), ~_wgslsmith_clamp_vec2_u32(arg_1.a.c.wz, global1.d.c.xx, countOneBits(vec2<u32>(0u, arg_1.a.c.x)))), func_2(vec4<i32>(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 15738i, u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -2147483647i, 2123i, 0i)), -vec4<i32>(global0.d.a, 0i, global0.b.a.a, u_input.b.x))), var_1.a.c.x, ~u_input.b.zzz).b.a);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, arg_2.b.x, global0.d.e.x) * arg_2.b.yzx)))), func_2(~countOneBits(vec4<i32>(global0.d.a, 0i, -47441i, 1i)), ~1u, vec3<i32>(~global1.b.a.a, -1i, 1i)).b, u_input.c, arg_2.a.e).b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(func_1(_wgslsmith_f_op_vec3_f32(arg_0.a.d.e - vec3<f32>(1360f, 2040f, -2127f)), Struct_2(global0.d, global1.b.b, global0.b.c), global0.a | 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_0.a.d.b.x, 1240f) + arg_2.b.zzx)).b.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.x, -115f, 1000f, 312f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.b.x, 245f, global0.d.e.x, 512f) - arg_0.a.b.b)))))), (arg_3.x || all(arg_3.xxw)) || false);
    let var_1 = global0.b;
    var var_2 = abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, arg_0.a.d.a), global1.d.a), arg_2.a.a)) & -58429i;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.b.x), -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-395f)), _wgslsmith_f_op_f32(var_0.b.x + arg_2.a.e.x))), _wgslsmith_f_op_f32(-649f - _wgslsmith_f_op_f32(-1015f * var_0.a.e.x))))), Struct_2(func_2(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(var_1.a.a, 1i, global1.b.a.a, -1i)), ~vec4<i32>(-2147483647i, -1i, arg_2.a.a, 9962i)), 15848u, vec3<i32>(reverseBits(-1i), var_0.a.a, -u_input.b.x)).b.a, global0.b.b, (true | arg_0.b.x) & !global0.b.a.d), _wgslsmith_add_u32(4294967295u, firstLeadingBit(0u) >> (~u_input.a.x % 32u)) ^ 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -723f, 491f) * vec3<f32>(arg_0.a.b.b.x, global1.d.e.x, -1629f)))))));
    let var_4 = vec2<bool>(all(vec4<bool>(true, true, true, true)) & var_1.a.d, true);
    return Struct_3(global1.d.c.x, arg_2, global1.d.c.wz, func_1(var_1.a.e, Struct_2(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.b.b, arg_2.b)), global1.d.d), _wgslsmith_clamp_u32(u_input.a.x, 10756u, 1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.b.x, 454f, -735f))))).b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b.a.b.x)), 478f, _wgslsmith_f_op_f32(global1.b.a.e.x + -325f)), Struct_2(Struct_1(10966i, global1.d.e.yz, vec4<u32>(global1.b.a.c.x, 57184u, global1.d.c.x, 1u), false, vec3<f32>(global0.d.e.x, global1.d.e.x, -2804f)), vec4<f32>(1024f, -345f, -620f, 1024f), global0.b.a.d), firstTrailingBit(~1927u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.e + vec3<f32>(global0.b.a.e.x, 748f, -286f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d.b.x, 1780f, global1.b.a.e.x))))), select(!vec3<bool>(false, global0.d.d, global0.b.c), !vec3<bool>(false, true, global1.b.c), vec3<bool>(func_1(global1.b.a.e, Struct_2(global1.d, global0.b.b, false), 19510u, vec3<f32>(global0.d.b.x, global1.b.b.x, global1.d.b.x)).d.d, global0.d.d, true))), global0.b.a.c.wxx, Struct_2(func_1(global1.b.a.e, func_1(vec3<f32>(397f, global1.d.e.x, global0.b.a.e.x), global1.b, ~global0.a, global0.d.e).b, u_input.c, global1.b.a.e).d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.b)))), global1.d.c.x <= countOneBits(max(u_input.a.x, 25755u))), select(!(!(!vec4<bool>(global1.b.c, true, true, false))), !(!select(vec4<bool>(global0.d.d, false, false, false), vec4<bool>(false, global1.b.a.d, true, global0.d.d), true)), select(!(!vec4<bool>(false, global0.d.d, false, false)), !select(vec4<bool>(global0.b.c, false, true, true), vec4<bool>(true, global0.b.a.d, global1.b.a.d, global0.b.c), vec4<bool>(global0.b.c, global1.d.d, global0.d.d, global0.b.a.d)), true)));
    let var_0 = 4294967295u;
    let var_1 = func_4(Struct_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(394f)), -338f, _wgslsmith_f_op_f32(-1000f - global1.d.e.x)), func_1(_wgslsmith_f_op_vec3_f32(floor(global1.b.a.e)), global1.b, ~u_input.a.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-299f, -418f, global0.b.a.b.x), vec3<f32>(2235f, global1.b.a.b.x, global0.b.a.b.x)))).b, var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.d.e)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(415f, global0.b.a.b.x, 955f) + vec3<f32>(384f, 1183f, global0.d.b.x)))), vec3<bool>(true, any(select(vec4<bool>(false, global1.b.a.d, false, global0.d.d), vec4<bool>(global0.b.a.d, global0.b.c, true, true), true)), global0.b.c)), u_input.a, Struct_2(global0.b.a, global1.b.b, false), !(!(!vec4<bool>(global1.d.d, false, false, global0.b.a.d))));
    let var_2 = true;
    let var_3 = vec2<i32>(u_input.b.x << (min(countOneBits(global1.d.c.x), _wgslsmith_mod_u32(~var_1.d.c.x, ~19577u)) % 32u), 18611i);
    global0 = Struct_3(4294967295u, func_4(Struct_4(var_1, vec3<bool>(var_2, true, !var_1.d.d)), var_1.b.a.c.yxw, func_4(Struct_4(var_1, select(vec3<bool>(global1.d.d, true, false), vec3<bool>(false, false, global1.d.d), false)), ~firstTrailingBit(global0.b.a.c.xxx), func_1(vec3<f32>(global0.b.b.x, global0.d.b.x, -1000f), func_4(Struct_4(var_1, vec3<bool>(true, global1.b.c, var_1.d.d)), vec3<u32>(0u, u_input.c, 37303u), Struct_2(Struct_1(-2147483647i, vec2<f32>(959f, -116f), vec4<u32>(1u, 4294967295u, global0.d.c.x, 1u), global0.b.c, vec3<f32>(global1.d.e.x, var_1.b.b.x, 510f)), vec4<f32>(var_1.d.e.x, -675f, global0.b.a.b.x, global1.b.a.b.x), true), vec4<bool>(global1.b.a.d, global0.d.d, global1.b.a.d, var_2)).b, var_1.d.c.x << (u_input.a.x % 32u), vec3<f32>(586f, var_1.d.e.x, 940f)).b, select(select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(false, global0.d.d, false, global0.b.c), vec4<bool>(var_2, false, var_1.b.a.d, var_2)), vec4<bool>(false, var_1.b.c, var_1.b.a.d, false), all(vec4<bool>(true, var_2, global1.b.a.d, var_1.b.c)))).b, vec4<bool>(!global1.b.c, -16416i != u_input.b.x, var_1.b.a.d, true)).b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(abs(var_0), global0.c.x), abs(global1.c >> (global0.b.a.c.zz % vec2<u32>(32u)))), var_1.d);
    var var_4 = true;
    var_4 = all(vec4<bool>(global0.d.d, func_4(Struct_4(Struct_3(0u, Struct_2(Struct_1(9647i, vec2<f32>(-1150f, 610f), vec4<u32>(var_0, var_0, var_1.b.a.c.x, 48457u), false, var_1.d.e), vec4<f32>(global0.d.e.x, var_1.d.b.x, -573f, var_1.b.b.x), false), vec2<u32>(33041u, var_1.c.x), global0.d), !vec3<bool>(var_2, var_2, true)), (vec3<u32>(global0.b.a.c.x, 37628u, global0.d.c.x) | global0.b.a.c.ywz) | global0.b.a.c.wyy, func_1(_wgslsmith_f_op_vec3_f32(select(var_1.b.b.xzx, var_1.d.e, vec3<bool>(global0.d.d, false, true))), func_4(Struct_4(var_1, vec3<bool>(false, var_1.b.a.d, global1.b.c)), vec3<u32>(19255u, var_0, 1u), Struct_2(var_1.d, vec4<f32>(global0.d.b.x, global1.d.b.x, -475f, var_1.b.b.x), var_1.b.c), vec4<bool>(true, false, var_1.b.a.d, true)).b, _wgslsmith_clamp_u32(var_0, global1.d.c.x, global1.d.c.x), _wgslsmith_f_op_vec3_f32(step(global1.b.b.xzx, vec3<f32>(var_1.b.a.e.x, var_1.d.e.x, global0.b.b.x)))).b, select(!vec4<bool>(global0.d.d, global1.b.a.d, var_1.b.c, var_2), !vec4<bool>(var_2, var_1.d.d, true, true), var_2)).d.d, !(!global0.d.d), var_2));
    let var_5 = func_4(Struct_4(func_4(Struct_4(var_1, select(vec3<bool>(true, true, var_2), vec3<bool>(false, var_2, var_2), vec3<bool>(global0.d.d, global0.b.c, global1.d.d))), u_input.a, var_1.b, select(!vec4<bool>(false, var_2, global1.d.d, global0.d.d), !vec4<bool>(var_1.b.a.d, true, global0.d.d, true), var_1.b.a.e.x <= var_1.b.a.b.x)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, global1.d.d), vec3<bool>(global1.d.d, false, global0.d.d), vec3<bool>(true, true, global0.b.a.d)), !(!vec3<bool>(global0.d.d, false, var_1.b.c)))), global0.d.c.ywz, var_1.b, vec4<bool>(true, _wgslsmith_mult_i32(1i, -30671i & global0.b.a.a) > firstTrailingBit(~(-2147483647i)), !(_wgslsmith_f_op_f32(-global1.d.b.x) < _wgslsmith_f_op_f32(round(1221f))), var_1.d.d)).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(var_3.x << (0u % 32u)), abs(-global0.b.a.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_3 & var_3, ~var_3), abs(max(vec2<i32>(2147483647i, 1i), var_3)))), ~(-select(u_input.b.xzx, u_input.b.yzz, select(vec3<bool>(global0.b.a.d, var_2, true), vec3<bool>(false, false, var_1.b.c), var_1.b.c))), -2147483647i, _wgslsmith_f_op_vec2_f32(-global0.d.b));
}

