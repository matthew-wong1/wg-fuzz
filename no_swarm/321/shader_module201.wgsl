struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_3(vec4<f32>(1f, 1f, 1f, 1f), Struct_2(~firstLeadingBit(abs(vec4<i32>(1i, u_input.b.x, 41678i, 43809i))), vec2<bool>(select(all(vec2<bool>(true, arg_0)), true, -46047i < u_input.b.x), !(u_input.d.x >= u_input.d.x)), vec2<bool>(false, false), vec3<u32>(firstLeadingBit(u_input.d.x), u_input.a, 51877u)), Struct_1(u_input.b.x, ~u_input.b.x, min(select(_wgslsmith_mult_vec3_u32(vec3<u32>(17215u, 0u, u_input.d.x), vec3<u32>(u_input.a, 4294967295u, 102096u)), vec3<u32>(u_input.d.x, u_input.a, 0u), vec3<bool>(true, false, false)), ~(~vec3<u32>(u_input.d.x, 1u, 22794u))), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(1u, u_input.c, u_input.d.x, 13193u)), ~select(vec4<u32>(u_input.a, u_input.d.x, 0u, 1u), vec4<u32>(1u, 0u, 0u, u_input.c), vec4<bool>(false, arg_0, arg_0, arg_0)))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, -1i))), _wgslsmith_sub_i32(abs(u_input.b.x), max(var_0.c.a, -9714i)), -30326i)), i32(-1i) * -8352i, abs(_wgslsmith_mod_i32(~var_0.c.a, -9425i)));
    var_1 = _wgslsmith_div_i32(var_0.c.b, -2147483647i);
    var var_2 = false;
    var var_3 = -((min(-vec4<i32>(var_0.b.a.x, var_0.c.b, u_input.b.x, u_input.b.x), select(vec4<i32>(-2147483647i, u_input.b.x, 1i, 2147483647i), var_0.b.a, var_0.b.b.x)) << (~var_0.c.d % vec4<u32>(32u))) ^ ~var_0.b.a);
    return select(!var_0.b.c, var_0.b.c, arg_0);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(arg_2.x - 1000f), arg_0.d.x != 3405u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(select(-992f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x != arg_2.x)), 1000f))), Struct_2(arg_0.a, func_3(true), select(!(!arg_1), select(vec2<bool>(true, true), func_3(arg_1.x), arg_0.c), !vec2<bool>(false, arg_1.x)), abs(arg_0.d)), Struct_1(arg_0.a.x, 0i, max(countOneBits(vec3<u32>(1u, u_input.a, 0u)), vec3<u32>(abs(arg_0.d.x), 63631u, arg_0.d.x)), countOneBits(reverseBits(vec4<u32>(1u, 4294967295u, 60952u, 1u))) | vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.c, 117691u, arg_0.d.x), 0u, 1u)));
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_mult_u32(0u >> (select(23113u, 1u, var_0.b.b.x) % 32u), ~var_0.b.d.x), 0u, arg_0.d.x, arg_0.d.x >> (arg_0.d.x % 32u)));
    let var_2 = arg_0.a.x;
    var var_3 = var_0.c;
    let var_4 = arg_0;
    return var_0.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~arg_3.c.x;
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(firstLeadingBit(arg_2.a), arg_2.a, arg_2.a), vec2<bool>(!(!(!arg_1)), arg_2.c.x != (arg_2.b.x | true)), select(vec2<bool>(arg_2.c.x, true), !arg_2.b, vec2<bool>(true, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x) <= arg_2.a.x)), ~(~abs(~vec3<u32>(arg_0.x, arg_3.d.x, 0u))));
    var var_2 = arg_2;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(var_3.d.x, _wgslsmith_div_u32(~var_3.d.x, arg_3.c.x)), ~(~countOneBits(var_2.d.x))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d.x, 1u), var_1.d.x ^ u_input.a), 4294967295u, var_2.d.x) >> (~arg_0.yxx % vec3<u32>(32u)));
    return func_2(Struct_2(countOneBits(firstLeadingBit(select(var_2.a, vec4<i32>(u_input.b.x, 1i, var_1.a.x, var_2.a.x), var_1.c.x))), vec2<bool>(any(func_3(true)), !any(vec3<bool>(arg_1, false, var_1.b.x))), !select(select(vec2<bool>(false, true), var_3.c, true), vec2<bool>(true, var_1.b.x), var_2.d.x >= var_3.d.x), ~min(~arg_0.zzy, _wgslsmith_sub_vec3_u32(vec3<u32>(19373u, arg_2.d.x, var_4.x), arg_2.d))), !(!(!(!var_1.c))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), 297f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1154f))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1921f)), _wgslsmith_f_op_f32(select(-603f, 1235f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1118f * 1523f)), -2007f, -407f)), arg_1, func_4(_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1.d.x, 4294967295u, arg_1.d.x, 44594u) ^ vec4<u32>(u_input.c, 52328u, 15149u, u_input.d.x)), vec4<u32>(~arg_1.d.x, _wgslsmith_add_u32(36092u, 13850u), arg_1.d.x, u_input.c)), true && arg_1.c.x, Struct_2(arg_1.a, !vec2<bool>(arg_1.c.x, false), select(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.c, arg_1.b.x || arg_1.c.x), arg_1.d), func_2(Struct_2(vec4<i32>(arg_1.a.x, -2147483647i, 23908i, arg_0) >> (vec4<u32>(arg_1.d.x, arg_1.d.x, u_input.c, 4294967295u) % vec4<u32>(32u)), arg_1.c, vec2<bool>(false, arg_1.c.x), vec3<u32>(arg_1.d.x, arg_1.d.x, 41003u)), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, 128f, 952f))))));
    var var_1 = arg_1.a.x >= (_wgslsmith_add_i32(~60757i, _wgslsmith_sub_i32(arg_0, 1i) & -2147483647i) & 16247i);
    var var_2 = vec4<bool>(false && all(vec2<bool>(arg_1.b.x, all(vec4<bool>(false, var_0.b.b.x, arg_1.b.x, var_0.b.b.x)))), arg_1.b.x, !var_0.b.c.x, all(vec4<bool>((var_0.a.x > -452f) && false, _wgslsmith_f_op_f32(-var_0.a.x) < -1098f, !(!var_0.b.b.x), false)));
    var var_3 = var_0.c;
    var var_4 = !vec3<bool>((var_0.b.b.x || true) && true, var_2.x, true);
    return u_input.b.x != (i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, 294f, 229f, -343f) - vec4<f32>(243f, 1892f, -1240f, 2440f))))), Struct_2(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.b.x, 0i, 26i, u_input.b.x)), vec4<i32>(-1i, -2147483647i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x)), vec2<bool>(false, true), vec2<bool>(abs(8711i) >= u_input.b.x, !func_1(-1i, Struct_2(vec4<i32>(u_input.b.x, -3869i, 1i, 21044i), vec2<bool>(true, true), vec2<bool>(true, true), vec3<u32>(16157u, 149u, u_input.a)))), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), func_2(Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -104418i), vec4<i32>(5998i, 6578i, 16108i, u_input.b.x)), vec4<i32>(u_input.b.x, 7102i, 1i, -32999i) >> (vec4<u32>(1u, u_input.c, 13635u, 63338u) % vec4<u32>(32u))), vec2<bool>(true, true), !func_3(false), vec3<u32>(u_input.d.x, func_2(Struct_2(vec4<i32>(u_input.b.x, 1i, -87171i, 10594i), vec2<bool>(false, false), vec2<bool>(false, true), vec3<u32>(u_input.d.x, 1u, 39415u)), vec2<bool>(false, true), vec3<f32>(788f, -1000f, -313f)).d.x, u_input.c)), vec2<bool>(all(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(738f, -119f, -1361f)))))));
    var var_1 = var_0.b.c.x;
    let var_2 = var_0.a.yww;
    var var_3 = var_0.b.c.x;
    var_3 = func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(927f * _wgslsmith_f_op_f32(min(var_2.x, var_0.a.x))))) > _wgslsmith_f_op_f32(-var_2.x)).x;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(578f, -1000f, -363f, var_2.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -780f, 870f, 287f), vec4<f32>(var_2.x, var_2.x, -535f, 1333f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)));
    var_1 = u_input.b.x <= _wgslsmith_clamp_i32(-14276i >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_sub_u32(1u, 1u), ~4294967295u) % 32u), var_0.c.a, _wgslsmith_mod_i32(16240i, 23683i));
    let var_5 = 40971u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ _wgslsmith_sub_u32(var_0.b.d.x, u_input.c), min(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(22332i, 24036i, 1i, -9006i), vec4<i32>(var_0.c.a, -1i, u_input.b.x, -1i), var_0.b.a)), vec4<i32>(_wgslsmith_sub_i32(1i, u_input.b.x), _wgslsmith_clamp_i32(24654i, 0i, var_0.b.a.x), _wgslsmith_dot_vec2_i32(u_input.b.xz, var_0.b.a.ww), 28264i)) >> (var_0.c.d % vec4<u32>(32u)), 13626i, 1u, ~(~(~var_0.b.a.wwz)));
}

