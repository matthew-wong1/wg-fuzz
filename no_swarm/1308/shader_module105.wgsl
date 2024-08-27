struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 0u);

var<private> global1: array<vec2<f32>, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_2(arg_0, Struct_1(var_0.a, ~(_wgslsmith_add_vec3_u32(u_input.c, u_input.c) & ~arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + -853f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, arg_1.x, var_0.c) - vec3<f32>(1463f, var_0.c, -2135f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(798f, 440f, var_0.c) * vec3<f32>(arg_1.x, -1339f, -355f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(222f, arg_0.c, 506f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_0.c, arg_1.x)))))));
    var var_2 = Struct_1(vec3<bool>(!var_1.b.a.x, !((arg_2.x != 29496i) == any(vec4<bool>(false, arg_0.a.x, false, false))), false), ~global0.xxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))));
    var_2 = arg_0;
    global0 = vec4<u32>(u_input.c.x, min(107632u, 33910u), var_2.b.x, ~var_1.a.b.x);
    return all(!select(select(vec3<bool>(false, true, false), var_1.b.a, var_0.a.x), var_1.a.a, !(!var_1.b.a.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!(!(!vec3<bool>(arg_2, true, arg_2))), ~abs(~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-333f, _wgslsmith_div_f32(618f, -726f), arg_2 && arg_2)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(236f + 125f), -244f, func_3(Struct_1(vec3<bool>(false, arg_2, true), vec3<u32>(global0.x, 42341u, 11985u), 176f), vec2<f32>(-1000f, 744f), vec4<i32>(1i, arg_1, -1i, arg_3)))))), Struct_1(select(vec3<bool>(true, true, func_3(Struct_1(vec3<bool>(arg_2, arg_2, arg_2), global0.yxy, -936f), vec2<f32>(-167f, -1249f), vec4<i32>(arg_1, 12911i, -1i, -1i))), !vec3<bool>(arg_2, true, arg_2), arg_2), u_input.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1426f, 1449f), _wgslsmith_f_op_f32(-718f * 2435f)))))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, 0i, arg_1, arg_1), vec4<i32>(-30400i, -1i, arg_1, arg_1), vec4<i32>(arg_3, 13062i, 33779i, u_input.d)), reverseBits(vec4<i32>(u_input.b.x, 36962i, arg_1, 1i))), u_input.d, u_input.b.x, firstTrailingBit(-42656i)), ~vec4<i32>(-65552i, ~(-1i), select(2147483647i, -1i, true), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2702f, -882f, 1580f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(525f, -1269f, 351f))), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, false), false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(662f * -557f), 460f), select(!vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), true)))));
    var var_1 = var_0.a;
    let var_2 = countOneBits(~(~arg_0)) & _wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(arg_0, arg_0) ^ select(vec2<u32>(13710u, u_input.a), var_0.b.b.xy, vec2<bool>(true, false))), _wgslsmith_div_vec2_u32(firstLeadingBit(var_0.b.b.yy), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.b.b.x, var_0.a.b.x), vec2<u32>(global0.x, 4294967295u))), u_input.c.xy);
    global1 = array<vec2<f32>, 3>();
    global0 = ~vec4<u32>(~var_2.x, ~_wgslsmith_div_u32(~1u, ~10210u), ~(~28506u), countOneBits(1u & ~var_2.x));
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec2<f32>, 3>();
    let var_0 = !(!arg_0.a.x);
    global0 = reverseBits(vec4<u32>(~(~firstTrailingBit(34569u)), global0.x, global0.x, 14283u));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, 812f, arg_3.c), arg_1.d)))))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = Struct_2(func_4(func_2(~vec2<u32>(global0.x, u_input.c.x) << (arg_0.b.xy % vec2<u32>(32u)), -(~u_input.d), true, ~(~(-45092i))), Struct_2(Struct_1(!arg_2.a.a, vec3<u32>(global0.x, u_input.a, u_input.a) ^ vec3<u32>(50417u, u_input.a, 4294967295u), 1030f), arg_2.a, ~_wgslsmith_add_vec4_i32(arg_2.c, vec4<i32>(-2147483647i, -5673i, u_input.b.x, arg_2.c.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(829f)), _wgslsmith_f_op_f32(-arg_0.c), arg_2.d.x)), Struct_1(vec3<bool>(!arg_1, any(arg_2.b.a), any(vec4<bool>(arg_1, arg_1, arg_0.a.x, arg_0.a.x))), u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-394f)), _wgslsmith_f_op_f32(exp2(arg_3)))), arg_2.a), func_2(~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.b.x, 4294967295u), ~vec2<u32>(arg_0.b.x, u_input.c.x)), i32(-1i) * -(~arg_2.c.x), false, -((arg_2.c.x | 36197i) ^ reverseBits(u_input.b.x))), _wgslsmith_mult_vec4_i32(~select(~vec4<i32>(u_input.d, -1i, arg_2.c.x, u_input.d), vec4<i32>(u_input.b.x, 0i, arg_2.c.x, -2147483647i), vec4<bool>(arg_1, arg_2.b.a.x, arg_2.a.a.x, true)), vec4<i32>(u_input.d, arg_2.c.x, 1i, countOneBits(19125i))), _wgslsmith_div_vec3_f32(arg_2.d, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(max(arg_3, arg_2.a.c)), _wgslsmith_f_op_f32(trunc(arg_2.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1155f, -1717f, arg_0.c))))));
    let var_1 = func_2(u_input.c.yy, ~5357i, arg_2.a.a.x, u_input.d).b.x;
    var_0 = Struct_2(arg_0, func_2(~global0.xx, -(~_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(2147483647i, u_input.b.x, arg_2.c.x, -1i))), true, -1679i), vec4<i32>(_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(arg_2.c.x, 1i, 0i, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, var_0.c.x, u_input.b.x, arg_2.c.x), arg_2.c) | arg_2.c), -20994i, -countOneBits(_wgslsmith_add_i32(44615i, arg_2.c.x)), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xx << (u_input.c.xy % vec2<u32>(32u))), u_input.b.zx ^ ~vec2<i32>(var_0.c.x, -1i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.d))) - var_0.d))));
    var var_2 = select(u_input.b.x, _wgslsmith_clamp_i32(max(34363i, 0i ^ (u_input.b.x >> (var_0.b.b.x % 32u))), 2147483647i, -32595i), arg_0.a.x || arg_0.a.x);
    let var_3 = vec3<bool>(true, func_4(Struct_1(arg_2.a.a, u_input.c, 1074f), arg_2, func_4(Struct_1(select(vec3<bool>(false, true, arg_2.a.a.x), vec3<bool>(true, false, true), arg_0.a.x), ~vec3<u32>(97345u, 4294967295u, 1u), _wgslsmith_f_op_f32(max(arg_2.b.c, var_0.b.c))), arg_2, Struct_1(var_0.a.a, ~u_input.c, _wgslsmith_f_op_f32(-837f * 207f)), func_4(var_0.a, arg_2, Struct_1(vec3<bool>(false, arg_2.b.a.x, arg_0.a.x), arg_2.a.b, arg_3), arg_0)), arg_2.a).a.x, select(var_0.b.a.x, arg_1, all(arg_0.a)));
    return max(global0.x, global0.x);
}

fn func_5(arg_0: u32, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = ~vec3<i32>(~(i32(-1i) * -u_input.d), 35475i, i32(-1i) * -39228i);
    var var_1 = -1i;
    var var_2 = func_4(func_2(~(vec2<u32>(u_input.a, 0u) & firstLeadingBit(global0.wx)), var_0.x, true, u_input.b.x), Struct_2(func_2(_wgslsmith_mult_vec2_u32(u_input.c.xx, vec2<u32>(22494u, 14790u)) ^ ~global0.xw, abs(_wgslsmith_mult_i32(var_0.x, var_0.x)), true, -(~95604i)), Struct_1(vec3<bool>(true, true, true), ~vec3<u32>(arg_0, 0u, 21584u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(641f, arg_1.x)))), ~(~vec4<i32>(var_0.x, u_input.d, -9323i, -1626i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -593f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 930f, arg_1.x) + vec3<f32>(arg_1.x, arg_1.x, 1932f))))), Struct_1(select(func_2(func_4(Struct_1(vec3<bool>(false, true, true), u_input.c, -926f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<u32>(4294967295u, u_input.a, 34187u), arg_1.x), Struct_1(vec3<bool>(true, true, false), u_input.c, 691f), vec4<i32>(-2147483647i, 1i, -40342i, 47982i), vec3<f32>(-396f, -2222f, arg_1.x)), Struct_1(vec3<bool>(false, false, true), vec3<u32>(0u, 1u, 1u), -361f), Struct_1(vec3<bool>(false, false, true), u_input.c, arg_1.x)).b.zx, -22775i, func_3(Struct_1(vec3<bool>(true, false, false), u_input.c, arg_1.x), vec2<f32>(arg_1.x, 323f), vec4<i32>(-16291i, 0i, u_input.b.x, -2147483647i)), _wgslsmith_mod_i32(-2147483647i, -11064i)).a, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), any(vec2<bool>(true, true)))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(arg_0), ~u_input.c.x, _wgslsmith_div_u32(4294967295u, 1u)), vec3<u32>(4294967295u, arg_0, u_input.c.x) << (vec3<u32>(21032u, 35951u, arg_0) % vec3<u32>(32u))), arg_1.x), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), ~select(countOneBits(vec3<u32>(24754u, 1u, 1u)), countOneBits(u_input.c), vec3<bool>(false, true, false)), -628f)).a.xz;
    var_2 = vec2<bool>(true, true);
    global0 = max(countOneBits(vec4<u32>(4294967295u, firstLeadingBit(arg_0) >> (_wgslsmith_div_u32(global0.x, global0.x) % 32u), 1u, arg_0)), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(arg_0, 49574u, u_input.c.x, 0u) ^ vec4<u32>(4294967295u, 4294967295u, 1u, global0.x))), reverseBits(abs(vec4<u32>(30215u, global0.x, 66184u, arg_0) ^ vec4<u32>(u_input.c.x, 15503u, global0.x, 41u)))));
    return StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(u_input.d | var_0.x, 9882i, u_input.d), firstLeadingBit(-41609i & (-3156i << (u_input.c.x % 32u))), abs(-_wgslsmith_mult_i32(u_input.b.x, u_input.d)), firstLeadingBit(~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -619f), vec3<i32>(-min(var_0.x, countOneBits(u_input.b.x)), _wgslsmith_div_i32(select(u_input.d, 1i, false) | _wgslsmith_clamp_i32(u_input.b.x, -1i, 13671i), _wgslsmith_sub_i32(select(-1i, 2147483647i, var_2.x), 75i)), var_0.x >> (_wgslsmith_mult_u32(70311u, u_input.a) % 32u)), _wgslsmith_f_op_f32(-arg_1.x), var_0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_clamp_u32(~u_input.c.x, ~((u_input.c.x << (98169u % 32u)) & 1u), _wgslsmith_mult_u32(~min(4294967295u, 1u), u_input.c.x)), ~select(u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, u_input.c.x), vec4<u32>(12603u, 0u, 0u, u_input.c.x)), 52133u), false), ~global0.x, ~67620u);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_sub_u32(~(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, 433u)) ^ func_1(Struct_1(vec3<bool>(true, false, true), u_input.c, 1111f), false, Struct_2(Struct_1(vec3<bool>(true, false, true), u_input.c, 926f), Struct_1(vec3<bool>(true, false, false), vec3<u32>(global0.x, 218u, u_input.a), 718f), vec4<i32>(-2147483647i, 9021i, 2147483647i, u_input.d), vec3<f32>(740f, -1076f, 118f)), -895f)), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f + 802f))), _wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f + 988f)))));
}

