struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.e.x, 34189u, 20585u), vec3<u32>(u_input.e.x, 0u, 56637u), arg_1), vec3<u32>(u_input.e.x, 1u, u_input.e.x)), _wgslsmith_div_vec3_u32(vec3<u32>(max(u_input.e.x, u_input.e.x), u_input.e.x, u_input.e.x), ~(~vec3<u32>(u_input.e.x, u_input.e.x, 1u))), ~abs(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), firstLeadingBit(~vec3<u32>(0u, u_input.e.x, 1u))), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, 1u, 24902u))), firstTrailingBit(min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 54183u, u_input.e.x), vec3<u32>(8818u, u_input.e.x, u_input.e.x)), ~vec3<u32>(6334u, 57788u, 13936u)))));
    let var_1 = Struct_3(!(!vec4<bool>(true, arg_1.x, true, arg_1.x || true)), Struct_1(vec3<bool>(any(vec2<bool>(false, false)), arg_1.x, true), 2368f, ~(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.e.x, 24u)], 2147483647i)), 28452u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1081f, 1755f, -118f), vec3<f32>(-454f, 231f, 393f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(754f, -1675f, -1001f)))));
    let var_2 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.e.x), _wgslsmith_f_op_f32(var_1.b.b * var_1.b.b))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.b.e.x))))) || any(var_1.a.wxx);
    global0 = array<i32, 24>();
    var var_3 = select(!(!select(arg_1.xx, !arg_1.xx, !vec2<bool>(arg_1.x, false))), select(var_1.a.xw, var_1.a.yy, vec2<bool>(var_2, true)), true);
    return vec2<bool>(all(var_1.a), true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<i32, 24>();
    var var_0 = false;
    var_0 = !((any(func_3(vec4<i32>(2147483647i, -14926i, global0[_wgslsmith_index_u32(1u, 24u)], u_input.c), vec3<bool>(true, false, false))) || false) == true);
    var_0 = true;
    let var_1 = false;
    return Struct_2(~_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.c, global0[_wgslsmith_index_u32(14447u, 24u)]), 1169i), ~u_input.e.x);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(select(!vec3<bool>(false, all(vec2<bool>(true, true)), true), vec3<bool>(!any(vec3<bool>(true, true, true)), all(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), true)), true), !select(!vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, true), false), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-946f * arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-214f)) + 1000f)))), 1i, 0u, vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), -565f, _wgslsmith_div_f32(257f, _wgslsmith_div_f32(-1071f, _wgslsmith_f_op_f32(arg_1 * 1147f)))));
    var var_1 = var_0;
    global0 = array<i32, 24>();
    var var_2 = _wgslsmith_div_i32(~(~(u_input.d | 2147483647i)) | (_wgslsmith_mod_i32(arg_2.a >> (arg_2.b % 32u), arg_3) | 38228i), arg_2.a);
    var_2 = -603i;
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(func_4(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0)))), Struct_2(_wgslsmith_mult_i32(arg_1.c, -27784i), 10879u & arg_1.d), -3357i).c, reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.e.x, 49037u), ~u_input.e.x))));
    let var_1 = Struct_3(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(true, true, true, arg_1.a.x)), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true), vec4<bool>(arg_1.a.x, false, true, false), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x)), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false)), vec4<bool>(func_4(arg_1.a.x, arg_0, Struct_2(global0[_wgslsmith_index_u32(22333u, 24u)], 258u), 14433i).a.x, all(vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)), !arg_1.a.x, arg_1.e.x == arg_1.e.x), !(!vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x))), func_4(33408u <= _wgslsmith_add_u32(4294967295u, 29394u >> (u_input.e.x % 32u)), -1745f, var_0.a, ~reverseBits(_wgslsmith_add_i32(1i, var_0.a.a))));
    var var_2 = _wgslsmith_sub_i32(-19525i, func_4(!arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.b.b)))), func_2(_wgslsmith_clamp_u32(16459u, ~20253u, countOneBits(arg_1.d))), -1i).c);
    global0 = array<i32, 24>();
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_1.d, 343u), firstTrailingBit(vec3<u32>(1015u, var_1.b.d, arg_1.d)))), _wgslsmith_sub_u32(arg_1.d >> (_wgslsmith_mod_u32(0u, u_input.e.x) % 32u), ~func_2(1670u).b)), 4294967295u);
    return Struct_1(vec3<bool>(var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)) != _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(-365f - var_1.b.b)), var_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f + -1422f)), _wgslsmith_add_i32(select(global0[_wgslsmith_index_u32(1u, 24u)], 1i, all(arg_1.a)), _wgslsmith_mod_i32(arg_1.c, countOneBits(global0[_wgslsmith_index_u32(0u, 24u)]))), ~var_1.b.d, var_1.b.e);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = select(countOneBits(vec2<u32>(u_input.e.x, 51988u)), max((_wgslsmith_mod_vec2_u32(vec2<u32>(48252u, arg_2.d), u_input.e) >> (reverseBits(u_input.e) % vec2<u32>(32u))) << (~reverseBits(vec2<u32>(0u, u_input.e.x)) % vec2<u32>(32u)), u_input.e), arg_2.a.x && (arg_2.c < -2147483647i));
    global0 = array<i32, 24>();
    let var_1 = (~select(~vec3<u32>(u_input.e.x, 13298u, 1u), select(vec3<u32>(arg_2.d, 4294967295u, arg_2.d), vec3<u32>(u_input.e.x, 18868u, var_0.x), vec3<bool>(arg_2.a.x, false, false)), any(vec4<bool>(false, true, false, arg_2.a.x))) ^ countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(10992u, 0u, 0u), vec3<u32>(u_input.e.x, 106877u, arg_2.d)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_2.d, 130376u), vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(arg_2.d, arg_2.d, 30572u)) % vec3<u32>(32u)))) | ~vec3<u32>(u_input.e.x, 0u, var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.e.x, 1165f)) * -1789f)), arg_2.e.x, !(!all(arg_2.a)))));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> f32 {
    global0 = array<i32, 24>();
    let var_0 = Struct_1(vec3<bool>(any(select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), vec4<bool>(false, arg_0.b.a.x, arg_0.a.x, arg_0.b.a.x), true)), arg_0.a.x, abs(~0u) >= u_input.e.x), _wgslsmith_f_op_f32(func_6(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.c, arg_0.b.c, 0i, global0[_wgslsmith_index_u32(0u, 24u)]) ^ vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(16850u, 24u)], arg_0.b.c), vec4<i32>(-1i, arg_0.b.c, arg_0.b.c, global0[_wgslsmith_index_u32(4294967295u, 24u)]))), vec4<i32>(2147483647i, u_input.b.x << (~u_input.e.x % 32u), firstLeadingBit(i32(-1i) * -9968i), firstTrailingBit(_wgslsmith_div_i32(-1i, arg_0.b.c))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.b))), func_4(true, _wgslsmith_f_op_f32(floor(arg_0.b.b)), func_2(arg_1), max(-2147483647i, 2147483647i))))), u_input.a.x, arg_1, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, _wgslsmith_f_op_f32(arg_0.b.b * arg_0.b.e.x), _wgslsmith_f_op_f32(f32(-1f) * -2301f)) + func_4(func_4(arg_0.b.a.x, arg_0.b.e.x, Struct_2(arg_0.b.c, 1u), u_input.a.x).a.x, _wgslsmith_f_op_f32(-arg_0.b.e.x), Struct_2(-1i, arg_1), 1i ^ u_input.d).e))));
    let var_1 = var_0.d;
    let var_2 = -881f;
    return _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(-arg_0.b.e.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.b.b)), _wgslsmith_f_op_f32(sign(-556f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - 952f) - 1f)), select(!arg_0.b.a.x, !(4294967295u < var_1), true))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = Struct_5(Struct_2(func_4(true, 401f, func_2(firstLeadingBit(arg_2.c.b.d)), arg_1.a).c, 16878u));
    var_0 = Struct_5(Struct_2(1i, 4294967295u));
    return arg_2.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x ^ (u_input.e.x >> (u_input.e.x % 32u)), u_input.e.x, ~(~1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 14433u)), ~vec3<u32>(1u, u_input.e.x, 4294967295u)), ~vec3<u32>(11178u, u_input.e.x, u_input.e.x) ^ ~vec3<u32>(1u, 115251u, u_input.e.x))), Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, u_input.a), vec2<i32>(36641i, global0[_wgslsmith_index_u32(12253u, 24u)])), abs(0i)), ~(~u_input.e.x)), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(false, false, false), 485f, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], 72473u, vec3<f32>(-105f, 1425f, -1185f))), 1u)), -471f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-958f, 1000f, false)))), ~0i, Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_5(1206f, func_5(-2049f, Struct_1(vec3<bool>(false, true, true), 1745f, 2147483647i, u_input.e.x, vec3<f32>(-615f, 676f, 1479f))))), Struct_2(-72241i, u_input.e.x)));
    let var_1 = func_2(~abs(u_input.e.x));
    var var_2 = ~(~vec3<i32>(i32(-1i) * -10985i, func_2(17596u).a, func_4(1u >= u_input.e.x, -268f, var_1, ~global0[_wgslsmith_index_u32(u_input.e.x, 24u)]).c));
    let var_3 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(706f, _wgslsmith_f_op_f32(1989f - 482f)) + -359f)), Struct_1(!vec3<bool>(func_4(true, 372f, var_1, global0[_wgslsmith_index_u32(1u, 24u)]).a.x, false, true), _wgslsmith_div_f32(-370f, 928f), -(i32(-1i) * -6196i), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, 892f, -1931f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-570f, 882f, 220f)))))));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, -42576i, u_input.b.x >> (~(~var_1.b) % 32u)), _wgslsmith_f_op_f32(2178f - _wgslsmith_f_op_f32(ceil(-1649f))));
}

