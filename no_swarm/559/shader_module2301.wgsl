struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> i32 {
    global0 = vec2<bool>(true, false);
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -151f, 1106f, 1000f) * vec4<f32>(arg_1, arg_2.a.x, 1322f, arg_2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, -1000f, arg_2.a.x) + arg_2.a))), u_input.d.x >= 19116i, select(arg_0.a, select(!vec3<bool>(true, arg_2.b, false), arg_0.a, true), arg_0.a.x), select(select(!arg_0.a.yy, !arg_2.c.xx, !global0.x), !vec2<bool>(true, arg_0.a.x), !arg_0.a.x), 1u), Struct_1(arg_2.a, arg_2.e < arg_2.e, select(select(select(vec3<bool>(false, arg_2.c.x, true), arg_0.a, vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, true, true), arg_2.c), !arg_0.a, global0.x), vec2<bool>((false || arg_2.c.x) && (u_input.a.x > 0i), !(0u > u_input.b)), 1u), arg_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(arg_2.a.yzz)))));
    var var_1 = arg_0;
    let var_2 = arg_0;
    global0 = vec2<bool>(all(select(select(vec2<bool>(true, arg_0.a.x), select(vec2<bool>(false, true), var_1.a.yz, true), true), !var_2.a.zx, arg_0.a.x)), global0.x);
    return u_input.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(arg_3, all(!select(vec4<bool>(arg_0.d.x, false, global0.x, arg_0.b), vec4<bool>(arg_0.d.x, global0.x, arg_0.b, true), global0.x)), arg_0.c, vec2<bool>((global0.x || global0.x) | select(true, true, arg_0.d.x), arg_0.d.x), 4294967295u), arg_0, arg_0, vec3<f32>(-1306f, -2454f, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), 2483f))));
    let var_1 = var_0.a;
    let var_2 = arg_0;
    let var_3 = vec3<i32>(~(-1i), firstLeadingBit(func_3(Struct_3(var_2.c), arg_0.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), !var_1.c.x, vec3<bool>(false, false, true), vec2<bool>(false, global0.x), 1u))), 1i >> (_wgslsmith_mod_u32(~reverseBits(var_1.e), _wgslsmith_dot_vec4_u32(~vec4<u32>(37823u, var_1.e, 6499u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.e, u_input.b, 4294967295u, 4294967295u), vec4<u32>(var_2.e, var_2.e, u_input.b, 4294967295u)))) % 32u));
    let var_4 = ~1i >> ((var_1.e | ~0u) % 32u);
    return Struct_3(!select(vec3<bool>(true, global0.x, !arg_0.d.x), vec3<bool>(arg_0.b, select(false, var_2.d.x, false), -1i < var_3.x), true));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = -countOneBits(-_wgslsmith_sub_i32(firstTrailingBit(u_input.c.x), global1.x));
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(u_input.c.xw) ^ -(u_input.c.zz ^ vec2<i32>(-29668i, global1.x)), vec2<i32>(max(global1.x, global1.x) | -u_input.d.x, _wgslsmith_sub_i32(u_input.a.x, 2147483647i & var_0))), firstTrailingBit(-firstLeadingBit(u_input.d.zx)));
    global1 = u_input.c.yx;
    let var_1 = any(!arg_0.a.xz) & true;
    var var_2 = false;
    return any(arg_0.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(arg_3.c.a, vec4<f32>(arg_1, arg_3.a.a.x, -438f, arg_0.x))), arg_3.c.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, 452f, 596f, 425f) * arg_3.a.a) * arg_3.a.a))) * vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(arg_0.x, arg_1))), 654f, -412f, _wgslsmith_f_op_f32(arg_3.d.x + arg_3.c.a.x))), any(!(!(!vec4<bool>(true, false, global0.x, global0.x)))), vec3<bool>(true, !arg_3.b.c.x, all(select(select(vec4<bool>(false, true, arg_3.a.c.x, false), vec4<bool>(true, global0.x, false, false), vec4<bool>(arg_3.b.b, false, arg_3.a.b, global0.x)), !vec4<bool>(true, false, arg_3.c.d.x, false), arg_3.c.c.x))), !arg_3.b.c.yx, arg_3.c.e);
    global0 = select(vec2<bool>(~var_0.e > 30950u, !(!global0.x) & arg_3.a.b), var_0.d, select(!var_0.c.xx, !var_0.c.zz, !(!vec2<bool>(global0.x, arg_3.b.d.x))));
    global0 = select(arg_3.a.c.xy, select(vec2<bool>(false, func_4(func_2(Struct_1(arg_3.c.a, true, vec3<bool>(false, true, true), vec2<bool>(true, false), arg_3.a.e), -1664f, vec2<u32>(24642u, 0u), vec4<f32>(arg_3.b.a.x, 1636f, arg_3.c.a.x, arg_3.a.a.x)))), arg_3.c.c.yx, var_0.c.zx), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, var_0.a.x, arg_1, 612f)) + vec4<f32>(arg_0.x, -860f, 283f, 629f)), any(!vec4<bool>(true, var_0.d.x, true, arg_3.a.c.x)), !(!vec3<bool>(true, arg_3.a.c.x, var_0.b)), select(!var_0.c.xx, vec2<bool>(var_0.d.x, global0.x), func_4(Struct_3(vec3<bool>(true, var_0.c.x, global0.x)))), arg_3.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1287f), ~max(select(vec2<u32>(arg_2, u_input.b), vec2<u32>(arg_3.b.e, var_0.e), global0.x), vec2<u32>(arg_2, 4294967295u) << (vec2<u32>(1u, arg_2) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -1560f, arg_1, -1309f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_1, 1937f, -834f))) - _wgslsmith_f_op_vec4_f32(-arg_3.a.a)))).a.yz);
    global0 = select(vec2<bool>(!arg_3.b.d.x, all(select(vec2<bool>(true, global0.x), vec2<bool>(arg_3.c.b, true), var_0.d.x)) == !all(vec4<bool>(false, false, false, global0.x))), select(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_3.d.x, -1000f, arg_3.b.a.x)), arg_2 == u_input.b, func_2(Struct_1(var_0.a, arg_3.b.d.x, vec3<bool>(arg_3.a.d.x, var_0.c.x, arg_3.c.b), vec2<bool>(true, global0.x), 4294967295u), 795f, vec2<u32>(90810u, arg_2), vec4<f32>(489f, -1000f, arg_1, var_0.a.x)).a, func_2(arg_3.a, 141f, vec2<u32>(0u, 61743u), vec4<f32>(arg_0.x, -2159f, 638f, 1000f)).a.zx, ~u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -495f), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.e, 31051u), vec2<u32>(var_0.e, 21741u), vec2<u32>(arg_2, u_input.b)), ~vec2<u32>(4294967295u, arg_3.b.e)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.b.a.x, arg_3.d.x, -1000f, arg_3.a.a.x), vec4<f32>(var_0.a.x, var_0.a.x, arg_0.x, 1000f)))))).a.xx, !func_2(arg_3.c, arg_0.x, max(vec2<u32>(20298u, var_0.e), vec2<u32>(0u, 27206u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1276f, var_0.a.x, 1087f))).a.yz, !func_2(arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -790f), abs(vec2<u32>(17665u, 0u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(785f, -1377f, arg_1, var_0.a.x), var_0.a))).a.xx), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(441f, arg_1, -354f, -496f), arg_3.b.a))), !var_0.d.x, var_0.c, func_2(Struct_1(vec4<f32>(arg_0.x, -1112f, -363f, arg_3.b.a.x), false, vec3<bool>(var_0.c.x, true, false), arg_3.c.d, u_input.b), 1127f, ~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(round(var_0.a))).a.yz, ~0u), -350f, vec2<u32>(4294967295u, var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-arg_3.c.a)) + _wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(-arg_3.c.a))))).a.x);
    global0 = !select(var_0.d, vec2<bool>(arg_3.b.b, true), vec2<bool>(arg_3.a.d.x, true));
    return -u_input.c.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec2_i32(~(~(func_1(vec2<f32>(1129f, -1145f), 1619f, u_input.b, Struct_2(Struct_1(vec4<f32>(-495f, -2228f, -1065f, -659f), global0.x, vec3<bool>(global0.x, true, false), vec2<bool>(global0.x, true), 1u), Struct_1(vec4<f32>(708f, 186f, 1315f, 177f), global0.x, vec3<bool>(global0.x, false, global0.x), vec2<bool>(true, global0.x), u_input.b), Struct_1(vec4<f32>(-119f, 792f, 1421f, -150f), global0.x, vec3<bool>(global0.x, global0.x, false), vec2<bool>(false, global0.x), 27169u), vec3<f32>(579f, 1449f, -1292f))) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), -u_input.d.xx);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-201f * _wgslsmith_f_op_f32(floor(1150f)))))) >= -113f;
    var var_1 = _wgslsmith_div_i32(global1.x, ~firstTrailingBit(_wgslsmith_mod_i32(1i, abs(global1.x))));
    var_1 = -12379i;
    let var_2 = vec2<f32>(1361f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-238f))), _wgslsmith_div_f32(-631f, _wgslsmith_f_op_f32(380f + -500f)))));
    var var_3 = Struct_1(vec4<f32>(-2243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, -398f, true))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)))), true, !vec3<bool>(!(590u >= u_input.b), func_2(Struct_1(vec4<f32>(-1195f, var_2.x, var_2.x, var_2.x), false, vec3<bool>(global0.x, global0.x, false), vec2<bool>(true, true), u_input.b), var_2.x, max(vec2<u32>(u_input.b, 1u), vec2<u32>(82909u, u_input.b)), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)).a.x, any(vec3<bool>(global0.x, false, false))), !vec2<bool>(any(vec4<bool>(true, global0.x, global0.x, true)) && !global0.x, global0.x), ~(~4294967295u));
    var var_4 = _wgslsmith_sub_i32(global1.x, ~(-30098i));
    global1 = abs(vec2<i32>(-1i, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(u_input.d.xz, -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, global1.x), u_input.c.yzw))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zzx, u_input.d), _wgslsmith_add_i32(u_input.a.x, 21321i), i32(-1i) * -1i, 1i));
}

