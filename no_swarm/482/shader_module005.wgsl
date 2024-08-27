struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(0u, vec3<i32>(-1i, 52639i, 45845i), true, Struct_3(vec3<u32>(41469u, 9342u, 63149u), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(1u, 40648u, 1u, 31651u)), false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = countOneBits(_wgslsmith_div_i32(~(~max(40700i, 6894i)), u_input.d << (u_input.e % 32u)));
    var var_1 = _wgslsmith_add_u32(7601u, ~((~arg_0.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 49025u, arg_0.a.x), arg_0.a) % 32u)) << (58033u % 32u)));
    let var_2 = true;
    var var_3 = countOneBits(vec2<i32>(var_0, var_0));
    let var_4 = Struct_4(firstLeadingBit(abs(arg_0.a.x)), vec3<i32>(_wgslsmith_sub_i32(~var_3.x, global0.b.x & (global0.b.x ^ -1i)), var_3.x, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(global0.b.x, 1i) | _wgslsmith_add_i32(37959i, u_input.d))), any(!vec3<bool>(-6607i <= global0.b.x, var_2, any(global0.d.b.b.xy))), global0.d);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-460f)) - -222f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * _wgslsmith_f_op_f32(f32(-1f) * -2270f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f * -208f), _wgslsmith_f_op_f32(-1000f * -163f))))), 1251f);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    global0 = Struct_4(arg_1, vec3<i32>(u_input.d, 1i, -1i), false, Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(318u, 38967u, _wgslsmith_sub_u32(arg_1, arg_1)), abs(global0.d.a)), global0.d.b, global0.c));
    global0 = Struct_4(arg_1, _wgslsmith_add_vec3_i32(vec3<i32>(abs(~0i), u_input.b, firstTrailingBit(1i)), -global0.b), all(!global0.d.b.b), Struct_3(countOneBits(u_input.a.zyy), global0.d.b, global0.d.c));
    let var_0 = ~u_input.c.x;
    global0 = Struct_4(max(firstLeadingBit(32959u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, arg_1), max(arg_1, global0.a)), ~(102610u >> (arg_1 % 32u)))), -vec3<i32>(25561i, reverseBits(global0.b.x), -2147483647i) | global0.b, all(vec2<bool>(arg_0.x < -240f, !(!global0.d.b.a))), global0.d);
    let var_1 = ~max(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(global0.d.b.c, vec4<u32>(var_0, u_input.a.x, 21631u, 46302u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(47413u, 1u), _wgslsmith_mult_u32(var_0, 71674u))), select(vec3<u32>(1u, ~arg_1, u_input.a.x & arg_1), vec3<u32>(_wgslsmith_mult_u32(0u, 10705u), ~u_input.c.x, 43000u), global0.d.b.b));
    return 4118i;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(global0.d.b.c, u_input.a), vec4<u32>(_wgslsmith_mult_u32(~68922u, ~global0.d.b.c.x), 0u, 74370u, global0.a)), vec3<i32>(~u_input.b, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0.d))), 68716u), global0.b.x), (global0.d.c & global0.c) || true, global0.d);
    global0 = Struct_4(~(~0u), vec3<i32>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1602f, -492f, -286f)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 4294967295u, global0.d.b.c.x), var_0.d.b.c.zwx)), 22531i, 26708i) << ((~countOneBits(u_input.a.zww) << (vec3<u32>(global0.a, ~63669u, ~34242u) % vec3<u32>(32u))) % vec3<u32>(32u)), !(!(!global0.d.b.b.x)), var_0.d);
    var_0 = Struct_4(firstTrailingBit(~reverseBits(global0.d.a.x) << (~(21932u << (u_input.c.x % 32u)) % 32u)), select(vec3<i32>(-14243i, ~(-17696i), var_0.b.x), var_0.b, vec3<bool>(var_0.c, global0.d.b.a, var_0.d.b.c.x < 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(var_0.d.b.c.ywz, Struct_1(var_0.c, vec3<bool>(true, true, true), vec4<u32>(var_0.d.a.x, global0.a, global0.d.b.c.x, 52008u)), var_0.c))).x, _wgslsmith_f_op_f32(floor(-1228f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(max(1892f, 768f)), u_input.b <= -1i))), Struct_3(firstLeadingBit(~(~global0.d.a)), Struct_1(var_0.d.c, global0.d.b.b, countOneBits(select(vec4<u32>(global0.d.b.c.x, u_input.a.x, global0.a, 16089u), vec4<u32>(44867u, global0.d.a.x, u_input.a.x, var_0.d.a.x), var_0.c))), true));
    return Struct_4(global0.d.a.x, global0.b, global0.d.c, global0.d);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_2();
    var var_0 = ~(~firstTrailingBit(select(global0.b.x, 0i, global0.c || false)));
    global0 = Struct_4(u_input.a.x << ((81208u >> (_wgslsmith_mult_u32(~4294967295u, select(u_input.e, 23090u, true)) % 32u)) % 32u), -global0.b, any(vec4<bool>(global0.d.c & global0.d.b.a, 4294967295u != arg_0, any(global0.d.b.b), false)) | true, Struct_3(firstLeadingBit(_wgslsmith_clamp_vec3_u32(global0.d.b.c.xwx, global0.d.a, u_input.a.zxw)) | u_input.a.zzx, func_2().d.b, true));
    let var_1 = ~(1u << (0u % 32u));
    var var_2 = Struct_1(all(!select(!vec4<bool>(global0.c, false, true, false), select(vec4<bool>(false, global0.c, false, global0.c), vec4<bool>(true, true, global0.c, global0.c), vec4<bool>(global0.d.c, global0.c, global0.d.b.a, true)), global0.c)), func_2().d.b.b, _wgslsmith_sub_vec4_u32(reverseBits(u_input.a), global0.d.b.c));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(sign(-493f))) != -584f, var_2.b, ~vec4<u32>(~(~0u), 1u, 85843u, reverseBits(_wgslsmith_clamp_u32(global0.a, 3409u, var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(global0.d.a.x, ~1u << (~_wgslsmith_add_u32(u_input.e, u_input.c.x) % 32u), select(_wgslsmith_add_u32(global0.a, 8940u), 18933u, u_input.b != 0i) << (u_input.a.x % 32u));
    let var_1 = u_input.d;
    let var_2 = func_1(global0.d.b.c.x);
    global0 = func_2();
    global0 = func_2();
    global0 = Struct_4(48248u, func_2().b, true, global0.d);
    let var_3 = Struct_2(_wgslsmith_div_u32(78803u, u_input.e), func_2().b.x, vec4<bool>(global0.d.c, true, true, all(!global0.d.b.b.xz)), -global0.b, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -12837i, ~(-15921i)));
}

