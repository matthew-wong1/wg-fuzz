struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = arg_2.b.e;
    var_0 = select((firstTrailingBit(min(arg_2.b.e, arg_2.b.e)) ^ _wgslsmith_mod_vec3_u32(firstLeadingBit(arg_2.b.e), abs(arg_2.b.e))) << (~vec3<u32>(arg_1, ~u_input.a, u_input.d) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(~arg_2.b.e), arg_2.b.e), select(!vec3<bool>(any(vec3<bool>(arg_3, arg_3, arg_2.b.b.a)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_2.b.c.a), select(vec3<bool>(true, true, false), vec3<bool>(arg_3, true, arg_2.b.c.a), arg_2.b.b.a)), any(!select(vec3<bool>(arg_3, arg_2.b.c.a, arg_2.b.a.a), vec3<bool>(arg_3, arg_3, false), false))));
    var var_1 = u_input.b;
    global0 = true;
    var var_2 = vec3<bool>(_wgslsmith_dot_vec2_u32(arg_2.b.e.xx, select(max(arg_2.b.e.zz, var_0.yy), reverseBits(var_0.yy), select(vec2<bool>(false, true), vec2<bool>(arg_3, arg_2.b.c.a), false))) <= min(4294967295u, _wgslsmith_sub_u32(4294967295u, 1u)), arg_2.b.a.a, (arg_2.a ^ reverseBits(countOneBits(64781u))) < ~countOneBits(_wgslsmith_mult_u32(1u, 4294967295u)));
    return _wgslsmith_sub_i32(u_input.b, 0i);
}

fn func_2() -> u32 {
    global0 = any(select(select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec3<bool>(true, false, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), true), false)));
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-(~_wgslsmith_sub_i32(1i, 1i)), ~(-2147483647i) << (~u_input.d % 32u), ~(-u_input.b)), vec3<i32>(~select(2147483647i, -u_input.b, select(true, false, true)), u_input.b, _wgslsmith_clamp_i32(u_input.b << (~u_input.a % 32u), u_input.b, func_3(select(u_input.d, 14367u, false), ~u_input.d, Struct_4(u_input.a, Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), -667f, vec3<u32>(1u, u_input.c, u_input.c))), select(false, false, false)))));
    let var_1 = select(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, 1i), ~0i), u_input.b), max(var_0.x, u_input.b), true) | 34396i;
    var_0 = countOneBits(vec3<i32>(-2147483647i, var_1 >> (u_input.c % 32u), -var_1) << (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 1u, 1u), vec3<u32>(u_input.d, 4294967295u, u_input.c)), ~vec3<u32>(8640u, 4803u, 49875u)) % vec3<u32>(32u))) ^ abs(vec3<i32>(-u_input.b, -_wgslsmith_mod_i32(u_input.b, var_1), max(-455i, 2147483647i)));
    let var_2 = 513f;
    return firstLeadingBit(u_input.c);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_1(!arg_1.a.a);
    let var_1 = select(select(select(!vec3<bool>(var_0.a, true, true), vec3<bool>(arg_1.a.a, any(vec3<bool>(arg_1.b.a, true, var_0.a)), any(vec2<bool>(false, var_0.a))), vec3<bool>(all(vec2<bool>(arg_1.c.a, false)), var_0.a, any(vec4<bool>(true, false, false, var_0.a)))), vec3<bool>(true || all(vec3<bool>(arg_1.b.a, arg_1.c.a, arg_1.b.a)), !all(vec4<bool>(true, true, false, var_0.a)), true), 622f > _wgslsmith_f_op_f32(-arg_1.d)), select(vec3<bool>(all(!vec4<bool>(var_0.a, arg_1.b.a, true, var_0.a)), !any(vec3<bool>(arg_1.b.a, var_0.a, true)), !(!arg_1.c.a)), !select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, var_0.a), var_0.a), vec3<bool>(arg_1.b.a, true, true), vec3<bool>(arg_1.a.a, arg_1.c.a, var_0.a)), true), !(!(all(vec3<bool>(var_0.a, false, var_0.a)) & !arg_1.a.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(413f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1010f), arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-600f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1048f, arg_1.d, _wgslsmith_f_op_f32(arg_1.d + -1715f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -180f, 842f) + vec3<f32>(arg_1.d, 475f, -607f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d, 1476f, arg_1.d)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -454f, arg_1.d), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-972f, 1482f, arg_1.d))))))), !all(!vec2<bool>(var_0.a, arg_1.c.a))));
    let var_3 = Struct_2(Struct_1(true), Struct_1(true), Struct_1(!var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) + _wgslsmith_f_op_f32(-arg_1.d)))), countOneBits(~select(vec3<u32>(u_input.d, 20720u, 1u), arg_1.e, var_1)) >> (~(_wgslsmith_add_vec3_u32(vec3<u32>(83315u, 0u, 4294967295u), arg_1.e) >> (firstTrailingBit(arg_1.e) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = !any(var_1) && !var_3.b.a;
    return ~vec2<i32>(u_input.b, arg_0) & -vec2<i32>(-(arg_2.x & arg_2.x), arg_0);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<i32> {
    global0 = !(~(arg_0.x | -54021i) >= -u_input.b) && arg_2.a;
    var var_0 = arg_2;
    let var_1 = 4294967295u;
    let var_2 = Struct_4(var_1, Struct_2(arg_2, Struct_1(!arg_2.a), arg_2, 992f, vec3<u32>(u_input.c, ~min(27953u, var_1), func_2())));
    global0 = _wgslsmith_f_op_f32(-var_2.b.d) >= -355f;
    return reverseBits(_wgslsmith_div_vec3_i32(max(firstTrailingBit(vec3<i32>(arg_0.x, u_input.b, u_input.b)), vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(u_input.b, 2147483647i), ~arg_0.x)), firstTrailingBit(-vec3<i32>(-16027i, 2147483647i, u_input.b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>) -> bool {
    global0 = true;
    var var_0 = 35866u;
    var var_1 = func_5(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b) & _wgslsmith_div_vec2_i32(vec2<i32>(-13342i, -37057i), vec2<i32>(u_input.b, u_input.b)), func_4(1i, Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), arg_1.x, arg_0.xyz), vec2<i32>(-18602i, u_input.b) | vec2<i32>(u_input.b, u_input.b), func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, arg_1.x, 334f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x))), Struct_1(true)) >> (select(arg_0.wwz, select(min(~arg_0.ywy, firstTrailingBit(vec3<u32>(4294967295u, 1u, 1u))), arg_0.yxw, reverseBits(1u) < (u_input.a ^ 1u)), vec3<bool>(false, !any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)))) % vec3<u32>(32u));
    var_1 = -_wgslsmith_mod_vec3_i32(~select(vec3<i32>(u_input.b, var_1.x, var_1.x), vec3<i32>(0i, u_input.b, 3975i), vec3<bool>(true, false, true)), vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(23928i, 17935i, 2147483647i, u_input.b), vec4<i32>(var_1.x, 25556i, -12592i, u_input.b)), -2147483647i)) & (_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(33781i, var_1.x), var_1.x), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, var_1.x), vec3<i32>(0i, u_input.b, var_1.x), vec3<i32>(1i, u_input.b, -1i)), vec3<i32>(18508i, var_1.x, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -46517i, -66694i) & vec3<i32>(1i, u_input.b, -1i), vec3<i32>(var_1.x, var_1.x, u_input.b) << (arg_0.zyw % vec3<u32>(32u)))) << (arg_0.wyz % vec3<u32>(32u)));
    var_1 = vec3<i32>(1i, 1i, abs(-firstTrailingBit(-1i)) & (u_input.b << (~abs(45676u) % 32u)));
    return !((select(1u, arg_0.x ^ arg_0.x, false) > ~_wgslsmith_mult_u32(1u, u_input.a)) | all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstLeadingBit(~(vec4<u32>(1u, 1u, u_input.a, 0u) | vec4<u32>(26021u, u_input.c, u_input.c, 0u))), vec2<f32>(-305f, 1000f)) | all(vec4<bool>(true, true, true, true));
    var var_1 = ~u_input.c ^ 4294967295u;
    var_1 = u_input.c;
    var var_2 = Struct_5(_wgslsmith_add_i32(1i, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, 2191f, -306f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -107f, 488f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(785f, 1493f, -1315f) + vec3<f32>(-179f, -582f, 796f)))))), ~4294967295u, !(!vec2<bool>(false, -2147483647i <= u_input.b)));
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(43467u, u_input.c, 0u, 58709u), vec4<u32>(u_input.c, var_2.c, 1u, 36165u)) ^ ~42598u), 1u, abs(~4428u), _wgslsmith_mod_u32(~4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(~var_2.c, ~4294967295u, var_2.c, _wgslsmith_mult_u32(u_input.a, var_2.c)) ^ vec4<u32>(~u_input.c, 8276u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 3431u), vec2<u32>(u_input.c, var_2.c))), vec4<u32>(var_2.c, func_2(), u_input.a, 0u)));
    let var_3 = Struct_4(abs(1u), Struct_2(Struct_1(true), Struct_1(false), Struct_1(!(!var_2.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.b.x, 1f), 775f)), min(vec3<u32>(var_2.c, 41229u, var_2.c), select(vec3<u32>(82788u, u_input.d, 4294967295u), vec3<u32>(var_2.c, 26917u, var_2.c), true)) >> (~vec3<u32>(var_2.c, var_2.c, var_2.c) % vec3<u32>(32u))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, 247f) - var_2.b.x)))), var_3.b);
    let var_5 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, var_2.b.x, -899f, -250f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -808f, -1038f, var_2.b.x)))) + vec4<f32>(var_3.b.d, var_3.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1174f - 412f))))), ~_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.b, 1i), max(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, var_2.a))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, 0i), vec2<i32>(u_input.b, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, var_2.a), vec2<i32>(-21105i, u_input.b)), var_2.d)), ~(~vec2<i32>(u_input.b, u_input.b)));
}

