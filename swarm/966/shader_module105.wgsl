struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-173f, -1260f), vec2<f32>(1345f, -572f), vec2<f32>(-317f, 325f), vec2<f32>(-1000f, 207f), vec2<f32>(-365f, -158f), vec2<f32>(183f, 307f), vec2<f32>(230f, -2021f), vec2<f32>(-666f, -947f), vec2<f32>(766f, 730f), vec2<f32>(-2225f, -131f), vec2<f32>(-299f, 2228f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<i32>) -> i32 {
    let var_0 = arg_0.x;
    let var_1 = arg_0.zw;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, global0[_wgslsmith_index_u32(69u, 6u)]), ~u_input.a.x);
    let var_3 = ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(~global1.c.b.x, max(12931u, 1u))) | 1u;
    let var_4 = arg_2.a.a.b.b.xy;
    return arg_2.a.a.a.c.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_2(global1.c, global1.c, global1.c), -40107i));
    let var_1 = ~(~4976u);
    var var_2 = -vec4<i32>(func_3(select(vec4<bool>(arg_0, false, arg_0, true), !vec4<bool>(arg_0, true, false, true), true), _wgslsmith_f_op_f32(select(734f, var_0.a.a.b.a, true)), Struct_4(var_0.a), (var_0.a.a.b.c.xz << (vec2<u32>(global1.b.b.x, 0u) % vec2<u32>(32u))) << (global1.a.b.yy % vec2<u32>(32u))), 2494i, -(u_input.a.x | ~(-2147483647i)), -_wgslsmith_add_i32(~70542i, _wgslsmith_sub_i32(-12643i, global0[_wgslsmith_index_u32(62030u, 6u)])));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.a - _wgslsmith_f_op_f32(sign(-1244f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1688f + var_0.a.a.c.a) + _wgslsmith_f_op_f32(-822f + -1000f)) + global1.b.a)));
    var var_4 = vec3<f32>(global1.c.a, -184f, -1110f);
    return Struct_1(global1.c.a, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 14514u, abs(global1.b.b.x)), ~vec3<u32>(var_0.a.a.b.b.x, 18604u, 23812u)) & ~(vec3<u32>(var_0.a.a.c.b.x, var_1, 1u) ^ (global1.c.b << (var_0.a.a.c.b % vec3<u32>(32u)))), u_input.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec2<f32> {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c.a)), _wgslsmith_f_op_f32(arg_1.a + func_2(arg_0.x == arg_0.x).a), global1.b.a, arg_1.a) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(321f, 584f, arg_1.a, arg_1.a), vec4<f32>(arg_1.a, -931f, arg_1.a, global1.c.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a, arg_1.a, arg_1.a, arg_1.a), vec4<f32>(1000f, arg_1.a, -299f, -573f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, 286f, 505f, global1.b.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, arg_1.a, 916f) - vec4<f32>(arg_1.a, -604f, 208f, 1000f))))), select(!(!vec4<bool>(arg_2, true, arg_0.x, arg_0.x)), !select(vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, arg_0.x, false, var_0), vec4<bool>(arg_0.x, arg_2, true, false)), select(vec4<bool>(arg_0.x, var_0, false, var_0), select(vec4<bool>(true, var_0, true, arg_2), vec4<bool>(true, false, false, true), true), select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_2, arg_0.x, arg_0.x, var_0), vec4<bool>(arg_0.x, var_0, var_0, true)))))));
    var var_2 = 450f;
    let var_3 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(603f * var_1.x);
    return _wgslsmith_f_op_vec2_f32(trunc(var_1.wy));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true)), !vec3<bool>(true, arg_1.a.a > arg_0.a.a.c.a, arg_0.a.a.a.b.x < 42560u)), func_2(true), true, min(vec3<i32>(2147483647i, ~0i ^ func_3(vec4<bool>(true, false, true, true), global1.c.a, Struct_4(arg_0.a), vec2<i32>(9010i, global0[_wgslsmith_index_u32(4294967295u, 6u)])), func_2(true).c.x), -global1.b.c.xwz)));
    let var_1 = vec3<f32>(arg_0.a.a.c.a, 345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)));
    var var_2 = vec3<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), arg_1.c.b.x != 1u, ~((global1.c.b.x & arg_1.c.b.x) << (64305u % 32u)) <= firstLeadingBit(~0u));
    let var_3 = arg_0.a.a;
    global2 = array<vec2<f32>, 11>();
    return Struct_3(Struct_2(func_2(true), func_2(true), func_2(!var_2.x)), -32557i);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = arg_0.a.a.a.b.x | arg_1.x;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(25941u, global1.a.b.x, arg_0.a.a.b.b.x, 0u), vec4<u32>(19058u, 13950u, global1.c.b.x, arg_1.x)) & select(23745u, global1.c.b.x, false)) >> (_wgslsmith_div_u32(arg_1.x, ~6690u) % 32u), ~((global1.a.b.x >> (arg_1.x % 32u)) | _wgslsmith_mult_u32(49549u, 65203u))), ~(~func_1(Struct_4(Struct_3(arg_0.a.a, arg_0.a.a.c.c.x)), arg_0.a.a).a.b.b.xy));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~(-_wgslsmith_sub_vec3_i32(global1.b.c.yzy, u_input.a.ywx)), abs(vec3<i32>(u_input.a.x, ~global1.c.c.x, -global0[_wgslsmith_index_u32(arg_1.x, 6u)]))), vec3<i32>(i32(-1i) * -global1.b.c.x, ~(-41053i) | _wgslsmith_add_i32(-u_input.a.x, 1i), global1.b.c.x), func_1(arg_0, arg_0.a.a).a.c.c.xzz);
    let var_2 = arg_2.x;
    global1 = Struct_2(func_1(Struct_4(arg_0.a), Struct_2(global1.c, func_2(any(vec4<bool>(false, true, true, true))), Struct_1(_wgslsmith_f_op_f32(var_2 + arg_2.x), arg_0.a.a.b.b, _wgslsmith_mult_vec4_i32(vec4<i32>(48094i, global1.a.c.x, u_input.a.x, global1.a.c.x), vec4<i32>(-2147483647i, -21960i, arg_0.a.b, global1.b.c.x))))).a.a, arg_0.a.a.a, func_2(true));
    return Struct_3(Struct_2(func_1(arg_0, func_1(Struct_4(arg_0.a), func_1(arg_0, Struct_2(global1.a, global1.b, global1.c)).a).a).a.b, arg_0.a.a.a, func_1(arg_0, Struct_2(func_1(arg_0, Struct_2(Struct_1(arg_2.x, vec3<u32>(arg_0.a.a.b.b.x, arg_1.x, arg_0.a.a.b.b.x), u_input.a), arg_0.a.a.a, Struct_1(arg_2.x, vec3<u32>(1u, 1u, arg_0.a.a.b.b.x), u_input.a))).a.c, func_2(false), global1.a)).a.b), ~abs(-38173i));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1370f, 1789f, global1.b.a))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.c.a, arg_2.a.a, arg_2.c.a), vec3<f32>(-336f, -1913f, -873f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, global1.a.a, -426f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a, 1018f, arg_1.a.b.a) - vec3<f32>(arg_0.a.a.a, arg_1.a.c.a, arg_1.a.c.a)), false))))));
    global0 = array<i32, 6>();
    var var_1 = Struct_4(Struct_3(Struct_2(func_1(Struct_4(Struct_3(arg_2, -574i)), func_1(Struct_4(Struct_3(arg_0.a, 9623i)), arg_2).a).a.b, arg_2.c, func_1(Struct_4(arg_1), Struct_2(Struct_1(arg_2.c.a, vec3<u32>(58911u, arg_1.a.c.b.x, arg_2.b.b.x), vec4<i32>(arg_1.a.a.c.x, global1.a.c.x, arg_0.a.a.c.x, 2147483647i)), Struct_1(arg_2.b.a, vec3<u32>(4294967295u, global1.b.b.x, 22225u), global1.c.c), arg_2.b)).a.a), (i32(-1i) * -12715i) & -u_input.a.x));
    let var_2 = _wgslsmith_mod_i32(-13898i, -2147483647i) | countOneBits(global1.c.c.x);
    global2 = array<vec2<f32>, 11>();
    return func_5(Struct_4(func_5(Struct_4(arg_1), ~vec2<u32>(4294967295u, 3192u), vec4<f32>(-278f, _wgslsmith_div_f32(var_0.x, 500f), _wgslsmith_f_op_f32(1285f - 366f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~abs(vec2<u32>(13039u, global1.a.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.b.a - 238f), 1633f, -429f, _wgslsmith_f_op_f32(max(arg_2.b.a, global1.c.a))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -165f, -1000f, -285f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-153f, arg_2.b.a, arg_1.a.a.a, arg_0.a.c.a)))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_5(Struct_4(func_1(Struct_4(Struct_3(Struct_2(Struct_1(global1.a.a, global1.c.b, global1.a.c), global1.b, Struct_1(808f, global1.b.b, u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 6u)])), Struct_2(Struct_1(357f, vec3<u32>(64646u, 4294967295u, global1.a.b.x), vec4<i32>(0i, global0[_wgslsmith_index_u32(27401u, 6u)], 17444i, 1i)), Struct_1(global1.a.a, vec3<u32>(0u, 49585u, global1.b.b.x), global1.c.c), global1.a))), global1.a.b.zy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 375f, 605f, global1.b.a))), Struct_3(func_5(Struct_4(Struct_3(Struct_2(global1.b, global1.b, global1.c), u_input.a.x)), vec2<u32>(0u, 1u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.a, -524f, -1272f, global1.b.a)))).a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, countOneBits(global1.c.b.x)), 6u)]), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.c.a), vec3<u32>(global1.a.b.x, 78690u, 1u), vec4<i32>(global1.c.c.x, u_input.a.x, u_input.a.x, 1i)), global1.c, Struct_1(-1043f, ~global1.b.b, min(vec4<i32>(0i, 0i, 31279i, -35692i), vec4<i32>(-1i, -1i, global1.a.c.x, global0[_wgslsmith_index_u32(1061u, 6u)])))), ~vec3<u32>(firstTrailingBit(global1.c.b.x), ~global1.c.b.x, 39068u)), _wgslsmith_add_i32(~(~(-23150i)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, global0[_wgslsmith_index_u32(global1.a.b.x, 6u)]), global1.b.c.yzx), 1i)));
    global1 = func_6(Struct_3(Struct_2(func_6(var_0, var_0, func_6(Struct_3(var_0.a, u_input.a.x), Struct_3(Struct_2(global1.c, Struct_1(var_0.a.a.a, vec3<u32>(0u, 0u, 42744u), vec4<i32>(global1.b.c.x, global1.b.c.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 6u)])), Struct_1(1000f, vec3<u32>(global1.c.b.x, 69412u, var_0.a.a.b.x), vec4<i32>(-29724i, -79933i, -20772i, var_0.a.b.c.x))), 2147483647i), Struct_2(Struct_1(1308f, vec3<u32>(0u, global1.a.b.x, 27214u), u_input.a), Struct_1(802f, vec3<u32>(67367u, var_0.a.c.b.x, 10278u), var_0.a.a.c), global1.c), vec3<u32>(global1.b.b.x, var_0.a.c.b.x, 15402u)), ~vec3<u32>(var_0.a.b.b.x, 1u, 0u)).b, global1.c, func_1(Struct_4(Struct_3(Struct_2(Struct_1(-351f, global1.b.b, vec4<i32>(-7604i, global1.a.c.x, global1.a.c.x, u_input.a.x)), Struct_1(global1.a.a, var_0.a.a.b, global1.a.c), Struct_1(global1.a.a, vec3<u32>(var_0.a.c.b.x, var_0.a.b.b.x, 1u), global1.a.c)), global0[_wgslsmith_index_u32(var_0.a.c.b.x, 6u)])), func_5(Struct_4(Struct_3(Struct_2(Struct_1(var_0.a.a.a, global1.c.b, vec4<i32>(u_input.a.x, -2147483647i, global0[_wgslsmith_index_u32(var_0.a.a.b.x, 6u)], global0[_wgslsmith_index_u32(30163u, 6u)])), Struct_1(global1.b.a, global1.c.b, vec4<i32>(global1.c.c.x, var_0.a.c.c.x, -35370i, global1.a.c.x)), Struct_1(var_0.a.b.a, global1.b.b, global1.a.c)), -1i)), vec2<u32>(17467u, 17014u), vec4<f32>(-1072f, -944f, -557f, 1829f)).a).a.a), -2147483647i), func_5(Struct_4(var_0), var_0.a.a.b.zz, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-946f, global1.c.a, 939f, 386f), vec4<f32>(global1.a.a, -930f, 784f, 1000f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, 1544f, -755f, var_0.a.a.a)))))), var_0.a, vec3<u32>(4294967295u, ~max(1u, ~7435u), var_0.a.b.b.x >> (func_6(func_5(Struct_4(Struct_3(var_0.a, var_0.a.a.c.x)), global1.c.b.zz, vec4<f32>(-680f, var_0.a.a.a, -1659f, global1.c.a)), func_5(Struct_4(var_0), vec2<u32>(36843u, var_0.a.b.b.x), vec4<f32>(1764f, -1402f, var_0.a.c.a, global1.c.a)), var_0.a, var_0.a.b.b & var_0.a.a.b).b.b.x % 32u)));
    var var_1 = Struct_5(vec2<bool>((_wgslsmith_add_i32(-31353i, 0i) <= select(-48207i, global0[_wgslsmith_index_u32(var_0.a.c.b.x, 6u)], true)) && true, !any(vec2<bool>(true, true))));
    global0 = array<i32, 6>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2214f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a + var_0.a.c.a)))));
    let var_3 = -1403f;
    var_1 = Struct_5(vec2<bool>(all(vec2<bool>(true, var_1.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-856f, _wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(-var_0.a.b.c.ww, global1.c.c.wy), _wgslsmith_add_vec2_i32(-vec2<i32>(global1.c.c.x, u_input.a.x), -_wgslsmith_clamp_vec2_i32(var_0.a.a.c.yx, vec2<i32>(var_0.b, -14499i), var_0.a.c.c.xy))), func_5(Struct_4(func_5(Struct_4(var_0), vec2<u32>(0u, var_0.a.b.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a, var_3, var_3, -446f), vec4<f32>(-408f, global1.c.a, 1475f, var_0.a.b.a)))), ~(~(~vec2<u32>(global1.c.b.x, 0u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.a), var_3, var_0.a.b.a, _wgslsmith_f_op_f32(-1985f * 606f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.a, global1.a.a, global1.a.a, var_3)))).a.a.c.x, -13280i);
}

