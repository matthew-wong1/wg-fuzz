struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(true);

var<private> global2: u32;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    var var_0 = !(!select(!(!vec3<bool>(global1.a, false, false)), select(vec3<bool>(false, false, arg_1.x), select(vec3<bool>(false, global1.a, false), vec3<bool>(true, global1.a, global1.a), vec3<bool>(true, global1.a, true)), vec3<bool>(true, false, global1.a)), vec3<bool>(true, arg_0 >= 399f, all(vec4<bool>(false, arg_1.x, true, false)))));
    return -1i < min(u_input.c, ~(-abs(-42636i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(~vec4<i32>(-58682i, arg_0.x, 58370i, -3698i), u_input.c, true, _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), u_input.b.xx)), countOneBits(firstLeadingBit(u_input.c))), vec2<u32>(1u, reverseBits(52904u))), Struct_1(min(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, -23829i, arg_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(29305i, 2147483647i, -1i, u_input.c), vec4<i32>(-2147483647i, 72582i, 20928i, -2147483647i))), abs(vec4<i32>(arg_0.x, -27695i, -1i, u_input.b.x))), -2147483647i, all(select(select(arg_1.zy, vec2<bool>(arg_1.x, global1.a), vec2<bool>(global1.a, arg_1.x)), !vec2<bool>(false, arg_1.x), false)), reverseBits(arg_0.x), u_input.a));
    global1 = Struct_5(_wgslsmith_div_u32(1u, ~var_0.a.e.x) >= (u_input.a.x & ~countOneBits(u_input.a.x)));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1826f, -1803f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(150f + 205f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - global3.x)))), 386f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 368f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 197f, 383f) + vec3<f32>(932f, global3.x, global3.x))))));
    var var_1 = Struct_2(var_0.a, Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -27654i, 21785i, arg_0.x), vec4<i32>(u_input.b.x, u_input.c, arg_0.x, var_0.b.d))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, arg_0.x, u_input.b.x), vec4<i32>(0i, arg_0.x, var_0.a.b, u_input.b.x)) & -vec4<i32>(arg_0.x, u_input.b.x, 13854i, arg_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.a.a.x, u_input.c, 14439i), var_0.a.a), 1i), countOneBits(u_input.b.yx)), true, -28769i, u_input.a));
    let var_2 = Struct_2(var_1.a, Struct_1(var_1.a.a, min(u_input.b.x, -2147483647i), all(vec4<bool>(true, true, all(arg_1.zwy), all(arg_1.zzw))), ~abs(32079i), u_input.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(549f)), _wgslsmith_f_op_f32(-global3.x));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_1))));
    var var_0 = global3.x;
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(abs(240f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -268f), -679f, false || arg_2.c)))), _wgslsmith_f_op_f32(560f - 670f)), !(!(!(!vec3<bool>(global1.a, true, global1.a))))));
    global3 = _wgslsmith_f_op_vec3_f32(-arg_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.b.yz, vec4<bool>(func_3(-799f, vec2<bool>(false, global1.a), Struct_3(arg_1.yy)), arg_2.c && false, u_input.b.x == -21581i, true & global1.a)))) - -580f);
    return (4294967295u <= arg_2.e.x) || global1.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = ~u_input.a.x;
    let var_1 = Struct_5(all(select(vec3<bool>(false, arg_0.x == global3.x, all(vec3<bool>(false, true, true))), vec3<bool>(true, global1.a, global1.a), vec3<bool>(true, global1.a, func_2(-1000f, vec3<f32>(global3.x, arg_0.x, -631f), Struct_1(arg_1.a, arg_1.b, global1.a, arg_1.d, u_input.a))))));
    global2 = 1u;
    let var_2 = arg_1.a.wx;
    var var_3 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(763f, 998f, true))), _wgslsmith_f_op_f32(func_4(vec2<i32>(-13991i, var_2.x), vec4<bool>(global1.a, true, global1.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, 307f)) * _wgslsmith_f_op_f32(633f + 165f)), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 643f, -1168f, -583f)))), !(1u <= (u_input.a.x >> (countOneBits(4294967295u) % 32u))));
    return vec4<u32>(~arg_1.e.x, 23457u, ~u_input.a.x, 35390u);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(arg_3.a, ~vec4<i32>(-1i, arg_3.b, u_input.b.x, -2147483647i)), -arg_3.a.x ^ countOneBits(43547i ^ u_input.c), !arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c & arg_3.a.x, _wgslsmith_mod_i32(-32532i, 34581i)), u_input.b.xz), u_input.a), arg_3);
    var_0 = Struct_2(Struct_1(vec4<i32>(abs(firstLeadingBit(57250i)), _wgslsmith_sub_i32(min(var_0.a.d, u_input.c), _wgslsmith_div_i32(arg_3.d, u_input.b.x)), -2147483647i, ~u_input.c | 1i), 1i, !select(true, func_2(-267f, vec3<f32>(-1257f, arg_1.a.x, 382f), arg_3), false | var_0.b.c), ~(~countOneBits(-12227i)), vec2<u32>(min(1u, 18854u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, arg_2, arg_0.x), _wgslsmith_mod_u32(var_0.a.e.x, 1u)))), Struct_1(firstTrailingBit(arg_3.a | vec4<i32>(arg_3.d, 2147483647i, u_input.c, arg_3.b)) << (select(vec4<u32>(1u, arg_3.e.x, u_input.a.x, arg_3.e.x), abs(arg_0), false && global1.a) % vec4<u32>(32u)), max(u_input.c, var_0.b.a.x), global1.a, var_0.a.a.x, ~vec2<u32>(arg_3.e.x, arg_3.e.x) & arg_0.yw));
    let var_1 = Struct_3(arg_1.a.yy);
    let var_2 = arg_0.yxw;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a))) * _wgslsmith_f_op_vec4_f32(exp2(arg_1.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, -1093f, 348f, arg_1.a.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * global3.x)), 524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(279f, 581f, var_0.a.c)) - 801f), -411f)));
    return Struct_5(arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(~(~func_1(vec4<f32>(global3.x, global3.x, global3.x, global3.x), Struct_1(vec4<i32>(55916i, -2147483647i, u_input.b.x, -12735i), 1i, true, 1i, u_input.a)) & max(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -676f) - global3.x), global3.x), !(global1.a || true)), u_input.a.x, Struct_1(vec4<i32>(1i, 0i, u_input.c, ~u_input.b.x), ~(-1i), false || !(-43466i >= u_input.c), 18285i >> ((u_input.a.x | 1u) % 32u), ~u_input.a));
    global2 = 0u;
    global1 = Struct_5(!all(!vec3<bool>(true, global1.a, true)));
    var var_0 = abs(select(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.a.x), 32016u >> (u_input.a.x % 32u)), vec4<u32>(_wgslsmith_add_u32(68039u, u_input.a.x), 23222u, _wgslsmith_sub_u32(4294967295u, 1141u), select(u_input.a.x, 31116u, true)), select(vec4<bool>(true, true, global1.a, false), select(vec4<bool>(global1.a, true, false, false), vec4<bool>(false, global1.a, true, false), false), global1.a))) ^ ~(~func_1(vec4<f32>(global3.x, 1876f, global3.x, global3.x), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.c), -59139i, false, u_input.c, vec2<u32>(0u, 31164u))));
    let var_1 = Struct_2(Struct_1(select(reverseBits(vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.b.x)), vec4<i32>(-11990i, -51738i, ~u_input.b.x, -u_input.c), false), max(u_input.b.x, u_input.b.x) << (u_input.a.x % 32u), true || (var_0.x <= 19575u), 2147483647i, vec2<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, 44799u), ~1u) << (vec2<u32>(var_0.x, ~1u) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 57068i), vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(7942i, u_input.b.x, 26576i, 2147483647i) & vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, -1i), reverseBits(vec4<i32>(36266i, 2147483647i, 72729i, u_input.b.x)))), u_input.c, func_2(global3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)), Struct_1(vec4<i32>(-2147483647i, u_input.c, u_input.b.x, u_input.b.x), 14103i, global1.a & false, u_input.b.x, var_0.zx & vec2<u32>(0u, 0u))), countOneBits(u_input.c), vec2<u32>(47332u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 27333u, 56708u), vec4<u32>(37876u, var_0.x, u_input.a.x, 54274u), vec4<u32>(var_0.x, 1u, 79235u, 21582u)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))));
    let var_2 = var_1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.b, u_input.b.x, 0i) & u_input.b, var_1.a.a.wxx, u_input.b) << (_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 4294967295u, var_1.b.e.x)), func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(615f, global3.x, -1016f, -1110f))), var_1.b).zwy) % vec3<u32>(32u)), vec2<i32>(var_1.a.d, 1i) ^ (vec2<i32>(_wgslsmith_add_i32(-1i, 72023i), -2147483647i) & u_input.b.xx), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(global3.x * -1394f)))))), global3.xx, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.b.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b, 9364i), var_1.a.a.zz)), u_input.c));
}

