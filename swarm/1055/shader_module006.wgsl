struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = true;
    var var_0 = ~1u;
    var var_1 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1413f, _wgslsmith_f_op_f32(trunc(2200f)), _wgslsmith_f_op_f32(sign(-271f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(973f, 1000f, 228f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(482f, 1000f, -380f), vec3<f32>(1096f, -714f, 239f)))), Struct_1(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, u_input.a, 0u, 25670u)), abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4152u, u_input.a) % vec4<u32>(32u)))), vec4<bool>(all(vec2<bool>(true, true)) && false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true), abs(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1143f * -480f))))), select(_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(0i, -2147483647i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-2147483647i, -2147483647i) >> (vec2<u32>(41958u, u_input.a) % vec2<u32>(32u))), vec2<i32>(1i, 1i)), ~(~vec2<i32>(-1i, 2147483647i)), true));
    let var_2 = Struct_1(abs(min(var_1.b.a, vec4<u32>(0u, 1u, var_1.b.c, u_input.a)) & vec4<u32>(u_input.a, abs(u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a)), vec4<bool>(!var_1.b.b.x == true, !var_1.b.b.x, all(var_1.b.b.wxz), var_1.b.b.x), u_input.a, var_1.a.x);
    var var_3 = var_1.b;
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(var_1.c.x, 76259i), ~var_1.c.x, reverseBits(2147483647i), -2147483647i)), 25661i) ^ -_wgslsmith_div_i32(1i, reverseBits(var_1.c.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> u32 {
    global0 = !any(!select(vec2<bool>(true, arg_1.a), !vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_0 = true;
    var var_1 = min(arg_0 | ~arg_0, 30440u);
    let var_2 = !any(vec4<bool>(all(select(vec2<bool>(var_0, true), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_1.a))), true, !any(vec4<bool>(true, true, true, arg_1.a)), var_0));
    var var_3 = arg_1;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(948f, 105f, -1535f, 487f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 319f, arg_0.d, arg_0.d)))));
    global0 = arg_1 == ~0i;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.yw, vec2<u32>(countOneBits(reverseBits(1u)), 1u)), func_4(~17963u, Struct_2(arg_0.b.x, _wgslsmith_f_op_vec2_f32(var_0.yz + vec2<f32>(429f, 323f)), _wgslsmith_div_i32(abs(-11305i), func_3()))));
    let var_2 = Struct_2(!select(!arg_3, false, true), var_0.zw, firstLeadingBit(arg_1));
    let var_3 = arg_3;
    return vec2<i32>(-1i) * -vec2<i32>(~0i, _wgslsmith_mult_i32(~1i, var_2.c & arg_1));
}

fn func_1() -> Struct_1 {
    var var_0 = abs(select(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(4895i, -10627i), vec2<i32>(98737i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, 46797i)), vec2<i32>(-15110i, 52589i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(1i, 46336i)), min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(0i, 2147483647i))), true) & (func_2(Struct_1(vec4<u32>(0u, 0u, 7807u, u_input.a), vec4<bool>(false, false, true, false), u_input.a, 1000f), max(-39035i, 0i), true, true) >> (_wgslsmith_div_vec2_u32(vec2<u32>(67693u, 0u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec4_i32(~reverseBits(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)))), ~(~firstTrailingBit(~vec4<i32>(-15705i, 11529i, var_0.x, var_0.x))));
    let var_2 = all(vec2<bool>(true, _wgslsmith_clamp_i32(abs(var_0.x), _wgslsmith_mod_i32(-26970i, var_1), var_0.x) >= _wgslsmith_add_i32(~var_0.x, _wgslsmith_clamp_i32(var_1, var_1, var_1))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(666f - -1592f), -580f) + 114f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -270f))))));
    global0 = var_2;
    return Struct_1(max(max(~vec4<u32>(4483u, 18460u, 1u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 0u, 56549u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, 0u, 69223u), vec4<u32>(1u, 47559u, 37086u, 2116u), _wgslsmith_sub_vec4_u32(vec4<u32>(30442u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))) << (firstLeadingBit(reverseBits(vec4<u32>(u_input.a, 8951u, u_input.a, 4294967295u))) % vec4<u32>(32u)), select(vec4<bool>(var_2, true, var_2, var_2), select(!(!vec4<bool>(var_2, var_2, false, var_2)), !select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(false, var_2, var_2, false), false), select(!vec4<bool>(false, true, var_2, true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, var_2, var_2)), false)), var_2), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(237f, -1408f, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = !any(vec4<bool>(true, true, true, true));
    var var_0 = func_1();
    let var_1 = Struct_2(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-366f, var_0.d)))))), vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.d))), var_0.b.zz)), 28280i);
    let var_2 = Struct_1(~select(vec4<u32>(u_input.a << (9805u % 32u), u_input.a, ~var_0.c, ~var_0.c), ~max(vec4<u32>(var_0.c, 24911u, 1u, u_input.a), var_0.a), var_0.b), vec4<bool>(!var_0.b.x, var_1.c <= 1i, var_1.a, !(!any(vec2<bool>(false, var_1.a)))), _wgslsmith_clamp_u32(25625u, u_input.a, max(func_1().a.x, _wgslsmith_mult_u32(max(1u, 73285u), func_4(0u, Struct_2(var_0.b.x, var_1.b, var_1.c))))), var_1.b.x);
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d, var_2.d)))), 1096f), ~(~(~select(var_2.a.xyx, var_3.a.zyz, true))), vec3<i32>(var_1.c, i32(-1i) * -1i, _wgslsmith_sub_i32((var_1.c << (var_2.c % 32u)) << (var_0.c % 32u), -28453i)), firstLeadingBit(-_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.c, var_1.c, 1i, var_1.c), vec4<i32>(-2592i, -50277i, var_1.c, var_1.c) >> (var_3.a % vec4<u32>(32u)))));
}

