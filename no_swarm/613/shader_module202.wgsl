struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_5) -> u32 {
    global0 = Struct_5(vec3<u32>(~30933u, 1u, global0.a.x), global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(arg_0.a, global0.c.x, -139f), vec3<bool>(false, arg_1.x, arg_3.b.b))), _wgslsmith_f_op_vec3_f32(round(arg_3.c)))) - _wgslsmith_f_op_vec3_f32(abs(arg_3.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, arg_3.c.x, arg_3.c.x) + vec3<f32>(global0.c.x, 2535f, _wgslsmith_f_op_f32(step(2347f, 1993f)))), false)));
    global0 = Struct_5(vec3<u32>(~4294967295u, arg_2, arg_0.b), Struct_4(Struct_2(~reverseBits(arg_3.b.a.a), vec4<bool>(true, true, all(vec2<bool>(false, false)), any(arg_3.b.a.b)), global0.b.a.c, arg_3.b.a.d), ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) < global0.b.a.d.b), global0.c);
    let var_0 = Struct_1(_wgslsmith_mod_u32(arg_0.b, 1u), 1u ^ _wgslsmith_mod_u32(~4294967295u, u_input.c.x), all(!select(select(global0.b.a.b, global0.b.a.b, arg_1.x), select(vec4<bool>(global0.b.b, false, false, arg_3.b.b), vec4<bool>(false, true, false, arg_3.b.b), arg_3.b.a.b), global0.b.b | true)));
    global0 = Struct_5(select(abs(firstTrailingBit(arg_3.a)), ~max(global0.a, arg_3.a), !any(!vec2<bool>(true, arg_1.x))), Struct_4(Struct_2(min(global0.b.a.a, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.x, 57107u), vec2<u32>(arg_2, 7026u))), !arg_3.b.a.b, arg_3.b.a.d, var_0), any(arg_1.yx)), global0.c);
    let var_1 = global0.b;
    return arg_3.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global0 = Struct_5(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(559f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(209f)) - _wgslsmith_f_op_f32(f32(-1f) * -1156f))) + _wgslsmith_f_op_vec3_f32(floor(global0.c))));
    let var_0 = Struct_5(vec3<u32>((countOneBits(global0.b.a.c.a) ^ 13033u) & arg_0.b, arg_2.c.b, ~max(~8422u, ~50454u)), global0.b, vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(240f, global0.c.x)), _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -220f))), global0.c.x));
    let var_1 = vec2<bool>(all(!select(!global0.b.a.b.yyy, select(vec3<bool>(arg_2.c.c, global0.b.b, arg_2.c.c), global0.b.a.b.xwx, vec3<bool>(arg_2.c.c, arg_1.c, arg_1.c)), var_0.b.b)), any(!vec4<bool>(!arg_2.d.c, false, !arg_1.c, any(vec3<bool>(false, arg_2.b.x, true)))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, -302f));
    return !(!vec4<bool>(~u_input.b != u_input.a.x, arg_1.c, var_0.b.a.d.c, false));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_5 {
    let var_0 = func_4(Struct_3(1447f, ~2983u), global0.b.a.d, Struct_2(~(~abs(u_input.c)), !(!vec4<bool>(arg_1.x, global0.b.b, true, true)), Struct_1(_wgslsmith_mod_u32(func_3(Struct_3(global0.c.x, 50489u), global0.b.a.b.zyy, 5443u, Struct_5(global0.a, Struct_4(Struct_2(global0.b.a.a, global0.b.a.b, Struct_1(arg_0, 1u, arg_1.x), global0.b.a.c), global0.b.b), global0.c)), _wgslsmith_mod_u32(5924u, arg_0)), global0.b.a.a.x, false), global0.b.a.c));
    global0 = Struct_5(vec3<u32>(~0u, ~1u, ~(~global0.b.a.a.x)) | abs(global0.a), global0.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(-1152f)), 747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_3(-114f, arg_0);
    global0 = Struct_5(~vec3<u32>(~global0.a.x & firstLeadingBit(4294967295u), ~1u, 27738u), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_1.a, 505f)), u_input.a.x > u_input.a.x)) - global0.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(380f, 420f, var_1.a))), _wgslsmith_f_op_vec3_f32(-global0.c))) - global0.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(trunc(-610f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), global0.c.x, var_1.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), global0.c.x, _wgslsmith_f_op_f32(max(var_1.a, var_1.a)), _wgslsmith_f_op_f32(sign(2130f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.x, -724f, -1224f, -1000f))) - vec4<f32>(313f, global0.c.x, global0.c.x, 872f)))))));
    return Struct_5(firstTrailingBit(~_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, arg_0, arg_0), vec3<u32>(4294967295u, u_input.c.x, arg_0) | global0.a)), Struct_4(global0.b.a, all(func_4(Struct_3(-246f, 18589u), Struct_1(4294967295u, 1u, var_0.x), Struct_2(vec2<u32>(0u, var_1.b), vec4<bool>(arg_1.x, false, true, arg_1.x), Struct_1(arg_0, 4248u, var_0.x), Struct_1(global0.a.x, 1u, true))).zz)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c.x, -1326f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1168f, var_2.x)), -300f))), global0.c)));
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = any(!vec2<bool>(false, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-13956i, u_input.b, u_input.a.x)) > -u_input.a.x));
    let var_1 = global0.b.a.b;
    global0 = func_2(arg_0.x, !select(!select(vec2<bool>(global0.b.a.d.c, global0.b.a.d.c), var_1.wz, true), vec2<bool>(any(global0.b.a.b.zw), !var_1.x), true));
    global0 = Struct_5(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), abs(vec2<u32>(global0.a.x, arg_0.x))), 1u), ~abs(u_input.c.x) >> (func_2(21379u, global0.b.a.b.xy).b.a.d.b % 32u), reverseBits(u_input.c.x)), func_2(arg_0.x, !vec2<bool>(var_0, var_0 == global0.b.a.d.c)).b, vec3<f32>(-370f, global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.x)) + _wgslsmith_f_op_f32(ceil(-1000f)))));
    let var_2 = ~vec3<i32>(-1i, (_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -16780i) | _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.a.x)) >> (func_3(Struct_3(global0.c.x, 7374u), vec3<bool>(false, false, false), ~global0.a.x, Struct_5(global0.a, global0.b, vec3<f32>(global0.c.x, -205f, global0.c.x))) % 32u), u_input.a.x);
    return vec2<bool>(global0.c.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(636f, global0.c.x, false)) + _wgslsmith_f_op_f32(exp2(global0.c.x)))), false);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<bool>(true, true);
    global0 = Struct_5(vec3<u32>(~_wgslsmith_dot_vec2_u32(~global0.b.a.a, u_input.c), global0.b.a.a.x, firstLeadingBit(~u_input.c.x)), Struct_4(func_2(~(~u_input.c.x), vec2<bool>(arg_1.x | var_0.x, func_4(Struct_3(global0.c.x, 9059u), global0.b.a.d, Struct_2(vec2<u32>(u_input.c.x, 4482u), vec4<bool>(true, arg_2.x, false, var_0.x), Struct_1(1u, u_input.c.x, false), global0.b.a.d)).x)).b.a, !(countOneBits(1i) < ~arg_0.x)), func_2(global0.b.a.c.a, select(vec2<bool>(false, true), !arg_2.zz, !global0.b.a.b.zw)).c);
    let var_1 = Struct_4(Struct_2(~(firstLeadingBit(vec2<u32>(68083u, 1799u)) | (global0.a.zz << (vec2<u32>(u_input.c.x, 28021u) % vec2<u32>(32u)))), arg_2, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(3503u, 4294967295u, 0u, 25197u)), select(u_input.c.x, global0.a.x, var_0.x), !(!global0.b.a.d.c)), Struct_1(_wgslsmith_add_u32(~4294967295u, min(4294967295u, 61807u)), max(_wgslsmith_div_u32(u_input.c.x, 17858u), u_input.c.x), all(global0.b.a.b.yzz))), global0.b.b);
    var_0 = var_1.a.b.wz;
    var var_2 = ~select(vec2<i32>(1i, _wgslsmith_div_i32(arg_0.x, 0i)), firstTrailingBit(-vec2<i32>(u_input.b, 9291i)), global0.b.a.b.wy) >> (~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, 1u), vec2<u32>(max(global0.b.a.c.a, 0u), 4294967295u)) % vec2<u32>(32u));
    return global0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~abs(-2147483647i), u_input.a.x);
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(~26317i, u_input.a.x), 1i, 53897i), ~1i);
    var var_1 = !global0.b.a.b.wyx;
    global0 = Struct_5(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, global0.b.a.a.x), ~vec3<u32>(1u, u_input.c.x, global0.a.x))), Struct_4(func_5(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.b, 40416i), vec4<i32>(-33532i, 7713i, -5227i, var_0.x)), !func_1(global0.a), func_2(select(global0.b.a.c.b, global0.b.a.a.x, true), !global0.b.a.b.xz).b.a.b), !(!var_1.x)), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.c.x)))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(global0.c.x * 874f))));
    var_0 = abs(vec2<i32>(-u_input.b, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.b));
}

