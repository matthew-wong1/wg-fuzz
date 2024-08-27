struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(33078i, -1i, true), Struct_3(-28155i, 1i, false), Struct_3(i32(-2147483648), 0i, false), Struct_3(0i, 0i, true), Struct_3(-76421i, 1i, true));

var<private> global2: vec3<i32> = vec3<i32>(0i, -1i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    var var_0 = select(~vec4<u32>(global0.x, global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.x, 42659u), vec3<u32>(0u, u_input.a, 0u))), global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 40035u, abs(0u), u_input.b) & vec4<u32>(min(5384u, global0.x), global0.x, 1u, u_input.a), ~(vec4<u32>(11340u, 4294967295u, u_input.b, 9120u) | vec4<u32>(global0.x, u_input.a, u_input.a, 0u)) & ~(~vec4<u32>(1u, u_input.a, global0.x, 56144u))), any(vec4<bool>(_wgslsmith_f_op_f32(ceil(-734f)) < _wgslsmith_f_op_f32(-156f * -711f), true, true, !all(vec4<bool>(true, false, false, true)))));
    var var_1 = global0.yz;
    global1 = array<Struct_3, 5>();
    var var_2 = select(select(vec2<bool>(false, select(all(vec2<bool>(false, false)), true, select(false, true, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, select(true, false, true)))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), select(vec2<bool>(false, true), !vec2<bool>(global2.x < 2147483647i, false), vec2<bool>(true, false)));
    var_0 = select(vec4<u32>(3381u, ~abs(u_input.a << (25949u % 32u)), var_1.x, ~_wgslsmith_add_u32(global0.x & 0u, 5213u)), ~(~(~reverseBits(vec4<u32>(17221u, 50079u, 1u, 33738u)))), vec4<bool>(all(select(vec4<bool>(true, var_2.x, var_2.x, false), select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(361f))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f)))), !(!(!var_2.x)), false));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(353f, 449f, 1000f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-904f, -514f, 1610f))))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    var var_0 = firstLeadingBit(42511u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1003f, -501f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2395f, -249f, arg_0.x))) * arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -531f, -3036f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1000f, arg_0.x) - vec3<f32>(arg_0.x, 1295f, arg_2.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * -1595f), 1437f))));
    let var_2 = ~reverseBits(global0.yy);
    global0 = select(vec3<u32>(43288u, min(1u, 28341u), ~_wgslsmith_div_u32(var_2.x, u_input.b) | 1u), abs(arg_3.a.yzx), _wgslsmith_f_op_f32(-var_1.x) <= 158f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x));
    return !(select(false, true, arg_3.b) | arg_3.d.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_3(-(_wgslsmith_dot_vec2_i32(vec2<i32>(5233i, 33432i), countOneBits(arg_0)) | -arg_0.x), ~global2.x, false);
    var var_1 = ~(i32(-1i) * -1i);
    let var_2 = u_input.a;
    global1 = array<Struct_3, 5>();
    var var_3 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 57176u, arg_3.x, _wgslsmith_mult_u32(arg_3.x, u_input.b)) & ~vec4<u32>(var_2, var_2, var_2, 1u), firstLeadingBit(~select(vec4<u32>(0u, 0u, 0u, 88458u), vec4<u32>(53863u, 23643u, arg_3.x, 18171u), arg_1.x))), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, arg_2, -1133f) - vec3<f32>(-1514f, 1770f, arg_2))))), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-225f, arg_2, -1000f), vec3<f32>(1088f, -749f, 1910f))))), Struct_2(~vec4<u32>(7536u, 13565u, 0u, 4294967295u), -354f != _wgslsmith_f_op_f32(-arg_2), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(arg_0.x, u_input.c.x), arg_0), select(vec3<bool>(false, true, false), arg_1.wwy, !arg_1.x))), ~global2.zy, vec3<bool>(!(_wgslsmith_f_op_f32(step(arg_2, -1651f)) >= -504f), all(!arg_1.yx), var_2 != abs(~var_2)));
    return abs(~var_3.a) ^ (vec4<u32>(29824u, 0u, ~_wgslsmith_dot_vec4_u32(var_3.a, var_3.a), 1u) ^ vec4<u32>(~var_3.a.x, 0u, 52568u, global0.x));
}

fn func_1() -> vec4<u32> {
    var var_0 = all(!vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true));
    let var_1 = -_wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(41962i, global2.x))), vec2<i32>(1i, _wgslsmith_sub_i32(2147483647i | u_input.c.x, _wgslsmith_mult_i32(-42444i, u_input.c.x))));
    let var_2 = !(true & any(vec2<bool>(all(vec2<bool>(true, false)), global0.x > global0.x)));
    var_0 = true;
    var var_3 = global2.x;
    return ~_wgslsmith_sub_vec4_u32(~(firstTrailingBit(vec4<u32>(4294967295u, 41163u, 0u, 34648u)) & vec4<u32>(global0.x, 4294967295u, 1u, global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, global0.x) | func_2(vec2<i32>(-2654i, 0i), vec4<bool>(var_2, true, var_2, false), -1927f, vec2<u32>(u_input.a, 1u)), countOneBits(~vec4<u32>(4294967295u, global0.x, global0.x, u_input.b)), ~(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) ^ vec4<u32>(62460u, 36126u, 24004u, u_input.b))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    global1 = array<Struct_3, 5>();
    var var_0 = _wgslsmith_f_op_f32(-988f - _wgslsmith_f_op_vec3_f32(func_3()).x);
    global2 = u_input.c;
    let var_1 = 1f;
    var var_2 = Struct_1(select(!arg_3.c.xy, vec2<bool>(func_4(vec3<f32>(var_1, var_1, -941f), false, vec3<f32>(-2942f, var_1, var_1), Struct_2(vec4<u32>(19840u, 4294967295u, 52700u, 0u), false, vec2<i32>(1i, global2.x), arg_0.d)) & true, arg_3.c.x), !arg_1), false, select(vec4<bool>(2147483647i < u_input.c.x, false, any(vec3<bool>(false, true, false)), true), select(vec4<bool>(true, true, false | arg_1.x, true), select(arg_3.c, select(arg_3.c, vec4<bool>(true, arg_1.x, false, true), arg_3.c), u_input.b != u_input.b), arg_3.b), _wgslsmith_dot_vec3_i32(u_input.c & u_input.c, ~u_input.c) > max(~u_input.c.x, global2.x)));
    return _wgslsmith_f_op_f32(-1458f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1256f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - _wgslsmith_f_op_f32(-516f * -882f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -countOneBits(~countOneBits(vec3<i32>(global2.x, 2147483647i, u_input.c.x)));
    var var_0 = false;
    let var_1 = Struct_3(-(1i & global2.x), -global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-268f, 633f)), 3083f)) == -671f);
    let var_2 = _wgslsmith_div_u32(2616u, 32690u);
    var_0 = false;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(~func_1(), any(vec4<bool>(true, false, false, true)), _wgslsmith_clamp_vec2_i32(global2.yy, vec2<i32>(u_input.c.x, 0i), global2.yx | u_input.c.zy), !(!vec3<bool>(true, false, var_1.c))), vec2<bool>(any(!vec4<bool>(var_1.c, false, false, var_1.c)), false), func_2(vec2<i32>(1i, 1i), vec4<bool>(true, true, true, true), 403f, vec2<u32>(u_input.a, 13583u)).yxy, Struct_1(!(!vec2<bool>(true, var_1.c)), var_1.c, vec4<bool>(true && var_1.c, var_1.c, var_1.c, var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1210f - -684f)))), -1944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-594f)), _wgslsmith_div_f32(293f, 358f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) - _wgslsmith_f_op_f32(-663f * 687f)))) + -547f));
    var var_4 = reverseBits(~firstLeadingBit(vec3<u32>(global0.x, 25791u, 74169u))) << (func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(u_input.c.x), i32(-1i) * -17623i), global2.yy), vec4<bool>(true, var_1.c, func_4(var_3.zwx, var_1.c, vec3<f32>(var_3.x, 371f, var_3.x), Struct_2(vec4<u32>(74102u, global0.x, 15133u, 0u), var_1.c, u_input.c.yy, vec3<bool>(false, var_1.c, true))) || any(vec3<bool>(var_1.c, var_1.c, true)), var_1.c), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_div_f32(473f, var_3.x))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global0.zx, firstTrailingBit(global0.xz)), ~select(global0.xx, vec2<u32>(13017u, 1u), vec2<bool>(var_1.c, true)))).xwx % vec3<u32>(32u));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~39368i));
}

