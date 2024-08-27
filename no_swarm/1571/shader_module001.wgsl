struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

var<private> global1: i32 = -1i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    global0 = -u_input.c;
    var var_0 = Struct_1(arg_0.a.a, 63363u, max(-reverseBits(select(-48685i, -18279i, false)), ~u_input.a.x | ~arg_0.a.c), _wgslsmith_f_op_f32(908f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-106f + arg_0.a.d)))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1064f, _wgslsmith_f_op_f32(-1000f + 802f)))), _wgslsmith_f_op_f32(878f * arg_0.e.d)), _wgslsmith_f_op_f32(991f + -101f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(330f * -1961f))), -1397f));
    let var_2 = Struct_2(-(~(-15321i)));
    var var_3 = Struct_4(arg_0, arg_0.e, 130f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.d)) + _wgslsmith_f_op_f32(f32(-1f) * -1083f)))))), (_wgslsmith_dot_vec2_u32(u_input.e.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 15791u), vec2<u32>(1u, 4294967295u))) ^ _wgslsmith_clamp_u32(var_0.b | u_input.e.x, ~var_0.b, reverseBits(27982u))) ^ select(~(~0u), arg_0.a.b | var_0.b, !(var_0.a.x == var_0.a.x)));
    return ~_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 13854u), vec2<u32>(arg_1, arg_1))), arg_0.a.b);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -695f);
    var_0 = _wgslsmith_div_f32(-305f, 1000f);
    global0 = -(~_wgslsmith_mod_vec2_i32(~(vec2<i32>(u_input.c.x, 0i) & vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(_wgslsmith_add_i32(global0.x, 0i), -3389i)));
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c & u_input.a.zz, u_input.a.wz), _wgslsmith_mult_vec2_i32(u_input.c, -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.c)), ~select(u_input.a.yy, _wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 27944i)), true)), vec2<i32>(select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-49285i, 1i, arg_0.a), u_input.a.zxy), u_input.c.x & -58000i), u_input.c.x, func_3(Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, -2147483647i, -998f), arg_0, vec2<bool>(true, true), Struct_1(vec2<bool>(false, true), u_input.b, arg_0.a, -1464f), Struct_1(vec2<bool>(false, true), u_input.b, 0i, 817f)), u_input.b) == u_input.e.x), 1i | _wgslsmith_dot_vec3_i32(u_input.a.yzw, ~vec3<i32>(-3484i, global0.x, arg_0.a))));
    global0 = u_input.a.zx;
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(min(46385u, abs(4294967295u)), 49584u, firstTrailingBit(~0u), arg_0.a.b)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, 1u, u_input.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 1u, 1u, u_input.e.x), vec4<u32>(1u, 0u, 33083u, 11266u)), vec4<u32>(u_input.e.x, arg_2, u_input.e.x, u_input.e.x)) | vec4<u32>(u_input.b, _wgslsmith_mult_u32(40166u, 61725u), select(arg_2, u_input.b, arg_0.c.x), 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.d, arg_0.e.d))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.e.d, arg_0.d.d), vec2<f32>(-448f, arg_0.d.d))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-724f, arg_0.d.d) - vec2<f32>(arg_0.d.d, arg_0.a.d)) * vec2<f32>(arg_0.e.d, arg_0.a.d))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1099f, 394f))))))));
    global0 = vec2<i32>(min(func_2(arg_1).a, i32(-1i) * -32414i), u_input.d);
    var var_2 = Struct_3(arg_0.d, arg_1, select(select(!(!vec2<bool>(arg_0.a.a.x, true)), !vec2<bool>(arg_0.d.a.x, true), vec2<bool>(false, true != arg_0.d.a.x)), select(select(arg_0.c, vec2<bool>(arg_0.d.a.x, arg_0.a.a.x), arg_0.a.a.x), arg_0.c, select(select(vec2<bool>(arg_0.e.a.x, arg_0.d.a.x), vec2<bool>(true, arg_0.a.a.x), arg_0.e.a.x), arg_0.d.a, !vec2<bool>(arg_0.c.x, arg_0.a.a.x))), true), Struct_1(arg_0.e.a, u_input.b, -927i, var_1.x), Struct_1(vec2<bool>(!(false || arg_0.a.a.x), all(!vec3<bool>(arg_0.c.x, true, arg_0.e.a.x))), _wgslsmith_sub_u32(36998u, ~_wgslsmith_div_u32(arg_0.e.b, arg_0.d.b)), arg_1.a, var_1.x));
    global0 = vec2<i32>(~arg_3, arg_3) << (vec2<u32>(~54835u, var_2.a.b) % vec2<u32>(32u));
    return arg_0.a.d;
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(f32(-1f) * -2143f)), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(vec2<bool>(arg_0, arg_0), u_input.b, u_input.d, -933f), Struct_2(32852i), vec2<bool>(true, arg_0), Struct_1(vec2<bool>(false, true), u_input.e.x, global0.x, 1801f), Struct_1(vec2<bool>(arg_0, arg_0), u_input.b, 43353i, 283f)), func_2(Struct_2(global0.x)), _wgslsmith_mod_u32(u_input.b, u_input.e.x), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f - -1061f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-211f + 873f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(387f - 2427f), _wgslsmith_f_op_f32(floor(1104f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-157f))))));
    global1 = _wgslsmith_mod_i32(-13092i, _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, ~(-u_input.c.x)), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(29901i, global0.x, u_input.a.x), i32(-1i) * -253i)));
    let var_1 = true;
    global0 = u_input.c << ((~u_input.e.xz >> (~vec2<u32>(u_input.b, min(u_input.e.x, 38843u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = var_1;
    return Struct_4(Struct_3(Struct_1(!(!vec2<bool>(false, var_1)), u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 27180i, -2147483647i), vec3<i32>(global0.x, 1i, 24821i)) << ((1u & u_input.b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(872f)) + _wgslsmith_f_op_f32(var_0.x * var_0.x))), func_2(func_2(func_2(Struct_2(-1i)))), vec2<bool>(var_1, 344f <= var_0.x), Struct_1(vec2<bool>(var_2, any(vec2<bool>(var_2, arg_0))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~u_input.e.xz), select(_wgslsmith_mod_i32(0i, u_input.d), u_input.a.x, !var_1), 597f), Struct_1(select(vec2<bool>(true, arg_0), vec2<bool>(true, false), all(vec4<bool>(var_2, arg_0, true, false))), 11015u, _wgslsmith_clamp_i32(~1i, global0.x, 40331i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(603f - 203f), _wgslsmith_f_op_f32(f32(-1f) * -1048f)))), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(arg_0, var_1), vec2<bool>(var_1, true), vec2<bool>(arg_0, true))), countOneBits(u_input.b), _wgslsmith_div_i32(-1i, ~global0.x >> (u_input.e.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(trunc(-531f))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1503f, var_0.x) - var_0.x), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false);
    var var_1 = func_1(true).b;
    let var_2 = ~select(u_input.e.yx, abs(~u_input.e.yx & (vec2<u32>(4294967295u, 4294967295u) >> (u_input.e.zy % vec2<u32>(32u)))), true);
    var var_3 = func_1(var_0.a.a.a.x).a;
    var_1 = func_1(var_3.a.a.x).a.d;
    var_1 = func_1(false).a.d;
    global0 = abs(_wgslsmith_add_vec2_i32(~(~u_input.c), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, -14347i), vec2<i32>(1i, 2147483647i), var_3.a.a), vec2<i32>(-35609i, global0.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(25489i, -30782i), u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(368f, var_1.d, _wgslsmith_div_f32(785f, _wgslsmith_div_f32(func_1(false).c, _wgslsmith_div_f32(-678f, 1000f))), _wgslsmith_f_op_f32(var_0.d * 489f)));
}

