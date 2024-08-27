struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -12640i;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<i32> {
    global0 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x & -68440i, -2696i)) << (countOneBits(u_input.c.x) % 32u), global1.x);
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, _wgslsmith_sub_u32(82734u, firstTrailingBit(u_input.c.x)), ~_wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.c), _wgslsmith_div_u32(4294967295u >> (u_input.a.x % 32u), u_input.a.x << (53719u % 32u))), ~(~vec4<u32>(u_input.a.x, ~u_input.c.x, 16231u, u_input.a.x)));
    let var_1 = !(!vec3<bool>(true, u_input.b.x >= (u_input.b.x ^ 6414i), true));
    var var_2 = Struct_2(var_1.x | select(false, !(var_1.x & var_1.x), var_1.x || true));
    var var_3 = Struct_2(firstTrailingBit(~(~var_0)) < ~abs(~u_input.c.x));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(-2147483647i, u_input.b.x, global1.x))), max(vec3<i32>(global1.x, -1i, 1i), vec3<i32>(3552i, -2147483647i, global1.x)) >> (_wgslsmith_sub_vec3_u32(u_input.a.zwx, u_input.a.zzx) % vec3<u32>(32u))), global1.yzy), firstTrailingBit(global1.x), u_input.b.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-166f - _wgslsmith_f_op_f32(1041f - -794f)), _wgslsmith_f_op_f32(floor(2555f)), !all(vec2<bool>(true, arg_0.x)))) * 269f), Struct_1(vec3<bool>(arg_0.x, ~4294967295u < _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), false), _wgslsmith_dot_vec4_u32(reverseBits(reverseBits(vec4<u32>(u_input.c.x, 114108u, 0u, 1u))), ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, 19067u, 522u, u_input.a.x))), select(!vec2<bool>(true, arg_0.x), vec2<bool>(true, true), any(!vec4<bool>(arg_0.x, true, false, arg_0.x)))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(~32414u, 4294967295u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))), vec3<u32>(0u, 1u ^ (u_input.c.x & u_input.a.x), u_input.a.x)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x)) ^ u_input.c.x, 44741u), Struct_1(select(vec3<bool>(arg_0.x, all(vec4<bool>(true, true, false, arg_0.x)), true & arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, false)), false), 0u, arg_0));
    var var_1 = var_0.b.c.x;
    let var_2 = -(~vec4<i32>(global1.x << (4294967295u % 32u), firstLeadingBit(global1.x), -10140i, 10485i) << (_wgslsmith_mult_vec4_u32(~u_input.a, ~vec4<u32>(u_input.c.x, var_0.d, 1u, u_input.a.x)) % vec4<u32>(32u)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f - 905f))), _wgslsmith_f_op_f32(-var_0.a));
    global1 = ~(~var_2);
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(func_2(), ~((reverseBits(vec3<i32>(19504i, 1i, global1.x)) >> (vec3<u32>(u_input.a.x, 27829u, u_input.c.x) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -19064i, -48694i), global1.yyy)));
    var var_0 = Struct_3(arg_1, Struct_1(select(vec3<bool>(any(vec4<bool>(arg_0.a, false, true, arg_0.a)), arg_1 <= 162f, arg_0.a), !(!vec3<bool>(false, false, arg_0.a)), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false))), u_input.c.x, vec2<bool>(false, true)), ~vec3<u32>(u_input.c.x, ~4294967295u, 1u), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(39157u, 1u), u_input.a.x) | _wgslsmith_mod_u32(u_input.a.x, func_3(vec2<bool>(false, arg_0.a), vec3<i32>(u_input.b.x, 1i, global1.x))), ~(~53243u) | _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, 0u), u_input.c.x)), Struct_1(vec3<bool>(arg_0.a, any(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), true)), !arg_0.a), 4294967295u, vec2<bool>(!select(arg_0.a, arg_0.a, arg_0.a), true == (-1i == global1.x))));
    let var_1 = -vec3<i32>(0i, 16304i, -64591i);
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(global1.zww), vec3<i32>(-20172i, -u_input.b.x, var_1.x) >> (var_0.c % vec3<u32>(32u)), var_1 & _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.x, global1.x, u_input.b.x), _wgslsmith_clamp_vec3_i32(global1.wzw, var_1, vec3<i32>(var_1.x, u_input.b.x, 2147483647i)))), global1.wzy, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -u_input.b.x, global1.x), min(_wgslsmith_div_vec3_i32(global1.yyw, vec3<i32>(-9723i, -9951i, global1.x)) >> (~var_0.c % vec3<u32>(32u)), ~vec3<i32>(-12030i, -2147483647i, -1i))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1278f)) * _wgslsmith_f_op_f32(f32(-1f) * -105f))));
    return var_0.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = 1i;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -475f), arg_1, ~(~(~vec3<u32>(u_input.a.x, arg_2, 4547u))), 45714u, arg_1), vec2<i32>(~(~1i) & firstTrailingBit(_wgslsmith_mod_i32(global1.x, -2147483647i)), u_input.b.x ^ firstTrailingBit(u_input.b.x)));
    global0 = -(global1.x >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1.b, 1u, 4294967295u, 60274u)), ~arg_1.b) % 32u)) >> (arg_1.b % 32u);
    global1 = reverseBits(vec4<i32>(-37371i >> ((arg_2 << (1u % 32u)) % 32u), firstTrailingBit(_wgslsmith_sub_i32(global1.x, -54428i)), _wgslsmith_sub_i32(u_input.b.x, -1i), i32(-1i) * -52453i) >> (~u_input.a % vec4<u32>(32u)));
    global1 = vec4<i32>(0i, 22258i, ~(-39497i), reverseBits(~min(-2147483647i, u_input.b.x) << ((1u << (min(var_1.a.b.b, arg_1.b) % 32u)) % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(268f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a - var_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -1132f)))), _wgslsmith_f_op_f32(f32(-1f) * -193f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(677f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(335f + _wgslsmith_f_op_f32(sign(1025f))), _wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(ceil(-921f))), (u_input.b.x | 0i) >= 28438i)), _wgslsmith_f_op_f32(func_4(Struct_2(true), func_1(Struct_2(false), _wgslsmith_f_op_f32(199f * 2329f)), ~41490u)))), 187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + -933f)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(Struct_2(true), 1000f), vec3<u32>(~1u, 0u, u_input.c.x), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x, 25591u, 4294967295u), u_input.a.x), u_input.c.x), func_1(Struct_2(true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, var_0.x)))))));
    global0 = min(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 2612i), vec2<i32>(-2147483647i, u_input.b.x) & u_input.b), -_wgslsmith_clamp_i32(1i, 36804i, -9915i)), 57137i);
    var var_2 = !vec3<bool>(true, var_1.b.a.x, var_1.e.c.x);
    let var_3 = Struct_1(select(select(vec3<bool>(true, false, var_1.e.c.x), func_1(Struct_2(var_1.b.a.x), _wgslsmith_f_op_f32(-1166f * 1346f)).a, all(!vec4<bool>(var_1.b.c.x, false, false, true))), vec3<bool>(var_2.x || all(vec4<bool>(false, false, var_2.x, var_1.b.c.x)), any(vec2<bool>(true, var_2.x)), _wgslsmith_f_op_f32(-var_1.a) >= _wgslsmith_f_op_f32(-var_1.a)), vec3<bool>(!var_1.b.c.x, false, any(select(vec4<bool>(var_1.b.c.x, var_2.x, var_1.e.a.x, var_2.x), vec4<bool>(false, var_1.e.c.x, var_1.e.c.x, var_1.b.a.x), false)))), 52088u, select(vec2<bool>(var_2.x, var_2.x), !(!vec2<bool>(var_1.e.c.x, var_1.e.c.x)), vec2<bool>(true, var_2.x)));
    var_2 = select(var_1.b.a, select(var_1.b.a, var_3.a, var_2.x), true);
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(6725u), ~reverseBits(4294967295u)));
}

