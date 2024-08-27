struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 16639i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 3149i, _wgslsmith_add_i32(_wgslsmith_div_i32(~22893i, 1i), -_wgslsmith_add_i32(-2147483647i, 57515i))), max(abs(vec3<i32>(12293i, _wgslsmith_dot_vec3_i32(vec3<i32>(30679i, 29791i, 38999i), vec3<i32>(2147483647i, -2147483647i, -1i)), _wgslsmith_clamp_i32(-44248i, -54936i, -1i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -18639i, 1i), vec3<i32>(1i, 1i, 1i))));
    global0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-(~(-2147483647i)), -(~(-8718i)), ~26433i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1i, -42209i, 61765i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 890i, -2147483647i, 48811i))));
    global0 = 1i;
    global0 = abs(1i << (_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(u_input.a.x, ~0u, _wgslsmith_mod_u32(40427u, u_input.b.x))) % 32u));
    var var_0 = !(!all(vec2<bool>(true, false)) & all(vec4<bool>(false, true, true, true))) && any(vec4<bool>(true, true, true, true));
    return true;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = select(vec4<bool>(true, select(false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))))), !select(vec4<bool>(false, false, true, all(vec2<bool>(false, true))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), true), false | !func_3());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2014f)))), -532f)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-664f, -1440f)) - _wgslsmith_f_op_f32(f32(-1f) * -590f)), false))));
    global0 = -31122i;
    global0 = -28590i;
    var var_2 = vec2<u32>(4294967295u, ~(~32871u));
    return _wgslsmith_mult_u32(max(_wgslsmith_mult_u32(28085u, 1u), ~u_input.a.x) ^ 1u, u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = -(71052i << (~u_input.b.x % 32u));
    let var_0 = arg_1;
    global0 = max(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, var_0.a, arg_1.a)), arg_1.c), firstTrailingBit(-1i << (_wgslsmith_mult_u32(~u_input.a.x, 17670u) % 32u)));
    let var_1 = 4294967295u;
    global0 = arg_1.d.x;
    return var_0;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(min(_wgslsmith_sub_i32(48001i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 2147483647i, -2147483647i), max(vec3<i32>(32793i, -2147483647i, 41295i), vec3<i32>(0i, -41455i, 25779i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, -1i), vec4<i32>(1i, 1i, 1i, 1i)) >> (~_wgslsmith_add_u32(u_input.b.x, u_input.a.x) % 32u)), Struct_1(_wgslsmith_mod_i32(abs(-35597i), select(-2147483647i, 22348i, true)) << (func_2(~u_input.b.x) % 32u), true, vec3<i32>(-(~0i), max(~39961i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(13152i, 26196i, 1i) << (u_input.a % vec3<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i) << (u_input.b.zx % vec2<u32>(32u)), vec2<i32>(-15455i, -1i)) ^ -min(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, 574i)), select(true, u_input.a.x >= 22190u, any(vec2<bool>(true, true)))));
    var var_1 = ~vec3<i32>(-_wgslsmith_div_i32(min(1i, -7897i), ~14465i), abs(~_wgslsmith_dot_vec2_i32(var_0.d, var_0.d)), -42487i);
    let var_2 = !(!select(!(!vec2<bool>(false, var_0.b)), select(vec2<bool>(true, true), !vec2<bool>(var_0.e, var_0.e), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, any(vec3<bool>(var_0.b, false, var_0.b)))));
    var var_3 = var_0.c;
    var var_4 = _wgslsmith_mult_vec2_i32(((vec2<i32>(var_3.x, var_0.a) | -var_1.yx) ^ vec2<i32>(0i, -32571i)) | (vec2<i32>(_wgslsmith_div_i32(21745i, 1i), -var_1.x) << ((vec2<u32>(u_input.a.x, u_input.b.x) << (~vec2<u32>(45253u, 29831u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(var_3.x, _wgslsmith_add_i32(-1i, -28455i)));
    return Struct_1(-(~func_4(~var_1.x, Struct_1(var_4.x, var_0.b, vec3<i32>(var_4.x, 45662i, var_1.x), vec2<i32>(42127i, var_1.x), false)).d.x), true, ~(var_0.c ^ vec3<i32>(var_0.c.x & var_0.a, _wgslsmith_div_i32(var_3.x, -1i), -1335i)), max((-vec2<i32>(-2147483647i, var_4.x) ^ var_0.c.zz) >> (_wgslsmith_div_vec2_u32(vec2<u32>(30703u, 71988u), ~vec2<u32>(5986u, 0u)) % vec2<u32>(32u)), ~vec2<i32>(var_1.x, var_3.x)), firstTrailingBit(_wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.zy))) >= u_input.a.x);
}

fn func_5(arg_0: Struct_1) -> u32 {
    global0 = arg_0.d.x;
    var var_0 = func_4(~(func_4(arg_0.a, Struct_1(-2147483647i, false, arg_0.c, arg_0.d, arg_0.b)).d.x ^ ~(-2318i)) >> (18622u % 32u), Struct_1(-2147483647i, !func_3(), _wgslsmith_sub_vec3_i32(vec3<i32>(func_1(vec4<f32>(-1012f, 535f, -1000f, -308f)).d.x, arg_0.c.x, 58765i), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-890f, 344f, -476f, 354f) - vec4<f32>(568f, -999f, 1837f, -1783f))).c), arg_0.c.yx, func_4(arg_0.a << (1u % 32u), arg_0).e == (false & arg_0.b)));
    var_0 = arg_0;
    let var_1 = i32(-1i) * -var_0.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1406f)));
    return abs(~(~u_input.b.x | firstLeadingBit(u_input.a.x >> (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(-_wgslsmith_add_i32(abs(_wgslsmith_mult_i32(-1998i, -1i)), ~_wgslsmith_clamp_i32(35295i, 45714i, -1i)), select(_wgslsmith_clamp_i32(14975i, _wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_mult_i32(25666i, 0i)), i32(-1i) * -2147483647i, true) & (_wgslsmith_div_i32(firstLeadingBit(1146i), -516i) >> (func_5(func_1(vec4<f32>(-1000f, -826f, 918f, 683f))) % 32u)));
    let var_0 = func_4(abs(abs(-1i)), func_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(744f, 707f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * 1846f)), _wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(598f - _wgslsmith_f_op_f32(-529f + -1000f)))));
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(reverseBits(67812u << (~4294967295u % 32u)), ~u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(select(-650f, 634f, true));
    var_2 = -362f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1281f * _wgslsmith_div_f32(855f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-959f - -543f))))) + -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -vec4<i32>(reverseBits(abs(var_0.c.x)), ~(var_0.a << (var_1 % 32u)), -2147483647i << (abs(var_1) % 32u), var_0.a), -1000f);
}

