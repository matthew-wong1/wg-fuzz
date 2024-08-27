struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 45600i;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1029f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f)))));
    var var_1 = ~_wgslsmith_mod_u32(~(59673u | arg_0.x), 4294967295u) > 1u;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(-282f, arg_2)), var_0, _wgslsmith_f_op_f32(-1000f + arg_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(203f, 1012f, arg_1.x, 257f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-733f, var_0, 1662f, arg_1.x) - vec4<f32>(arg_1.x, 189f, var_0, -374f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2))))), -456f, _wgslsmith_f_op_f32(round(221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * arg_1.x)), vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !select(true, true, true), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(round(var_0)))) != _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -324f), true)), true)));
    global1 = true;
    return ~(~_wgslsmith_sub_i32(~u_input.a & 53186i, -u_input.b));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-549f)), 1152f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1561f, -1340f)));
    let var_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(func_3(arg_0.yyx, vec3<f32>(var_1, 3015f, -1747f), -555f), u_input.b, u_input.b, abs(u_input.a)), _wgslsmith_dot_vec2_u32(abs(arg_0.wz), u_input.c), min(vec3<i32>(-18905i, u_input.b, u_input.a), vec3<i32>(u_input.a, u_input.b, 1i)) | max(vec3<i32>(u_input.b, u_input.a, 23478i), vec3<i32>(6964i, -1i, -24893i)))), Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-9545i, 1i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.b, 27300i)), countOneBits(vec4<i32>(u_input.b, 40494i, u_input.b, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, -27956i), vec4<i32>(0i, 1i, u_input.b, u_input.a))), 31922u, firstTrailingBit(vec3<i32>(-5121i, u_input.a, u_input.a)) & countOneBits(vec3<i32>(-1i, u_input.b, 0i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, _wgslsmith_add_i32(34955i ^ u_input.a, 0i), 8681i | (-1313i ^ u_input.a)), firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 11088i, 0i, u_input.a), vec4<i32>(6338i, u_input.a, u_input.b, u_input.a)))));
    var var_4 = vec4<f32>(var_1, _wgslsmith_div_f32(var_1, -1000f), var_1, var_1);
    return var_3.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_3(func_2(vec4<u32>(_wgslsmith_mod_u32(~arg_0.b, ~1u), ~(arg_0.b | 2321u), min(~4294967295u, 7776u & arg_0.b), select(arg_0.b, 1u, all(vec4<bool>(false, true, false, true))))), Struct_2(func_2(~(~vec4<u32>(4294967295u, 2536u, 1u, arg_0.b))).a), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a, -1i, _wgslsmith_dot_vec2_i32(arg_0.c.xz, vec2<i32>(u_input.b, 15983i)), abs(1i)), vec4<i32>(min(-1i, -2147483647i), firstLeadingBit(-53237i), 0i, 0i)), min(vec4<i32>(arg_0.c.x, arg_0.c.x, u_input.b, 0i), ~vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.b, u_input.a)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, u_input.c.x, 17720u) | vec4<u32>(0u, u_input.c.x, 4294967295u, arg_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.b, u_input.c.x), vec4<u32>(0u, u_input.c.x, 3094u, arg_0.b))) % vec4<u32>(32u))));
    let var_1 = false;
    let var_2 = !((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.b), ~vec2<u32>(u_input.c.x, arg_0.b)) < var_0.b.a.b) | var_1);
    let var_3 = var_0.b.a.b;
    var var_4 = Struct_4(arg_0.c.yx, func_2(~(~vec4<u32>(1u, 3323u, var_0.a.a.b, u_input.c.x))).a.b ^ _wgslsmith_mult_u32(~(~var_0.b.a.b), arg_0.b));
    return func_2(~vec4<u32>(arg_0.b, 20631u, ~var_0.b.a.b, 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    var var_0 = -36818i;
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(~var_1.c.zyz, ~var_1.c.zxy), abs(abs(~vec3<i32>(2277i, 0i, -2147483647i))));
    let var_3 = vec2<u32>(select(select(_wgslsmith_sub_u32(arg_0.x, arg_1.b.a.b), _wgslsmith_dot_vec2_u32(vec2<u32>(41228u, arg_1.a.a.b), u_input.c), true) << (arg_1.b.a.b % 32u), 0u, all(vec2<bool>(false, arg_0.x >= var_1.a.a.b))), 55695u);
    var var_4 = select(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), true), vec4<bool>(false, false, true, false), select(true & all(vec2<bool>(true, false)), true || (all(vec3<bool>(false, false, false)) | all(vec4<bool>(true, true, false, false))), !(arg_1.c.x <= _wgslsmith_clamp_i32(-29787i, -9103i, 0i))));
    return !select(vec4<bool>(u_input.c.x <= 1u, 668f != _wgslsmith_f_op_f32(round(-533f)), true, !var_4.x), vec4<bool>(var_4.x, true || any(var_4.zz), !var_4.x, var_4.x), select(!(!vec4<bool>(var_4.x, false, true, true)), !vec4<bool>(true, var_4.x, false, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_4.x, var_4.x, var_4.x, false), vec4<bool>(var_4.x, var_4.x, true, false), false), select(vec4<bool>(false, var_4.x, false, false), vec4<bool>(false, true, var_4.x, true), var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-806f, 2181f, -227f, 529f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, -709f, -259f, 539f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(176f, 1173f, -1478f, -1058f), vec4<f32>(1469f, 2509f, 1291f, -546f))), vec4<bool>(true, true, true, true)))), select(false, false, false))) * vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zy), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(1549f))));
    global1 = false;
    global0 = -1i;
    let var_2 = _wgslsmith_mult_u32(~u_input.c.x, ~(~52599u));
    let var_3 = reverseBits(reverseBits(1u)) >> (u_input.c.x % 32u);
    var var_4 = var_2;
    global1 = any(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), !(var_1.x <= 258f), true, true), func_4(vec3<u32>(abs(var_2), firstLeadingBit(4294967295u), var_3 << (0u % 32u)), Struct_3(func_1(Struct_1(vec4<i32>(u_input.b, u_input.a, 47777i, 2147483647i), u_input.c.x, vec3<i32>(585i, u_input.b, u_input.a)), var_1.x), func_2(vec4<u32>(var_2, 87446u, 1u, 27957u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, -4853i, 5077i), vec4<i32>(-57563i, u_input.b, u_input.a, u_input.a))), _wgslsmith_clamp_i32(u_input.b, firstLeadingBit(-44323i), -62767i)), any(vec3<bool>(any(vec2<bool>(true, false)), true, all(vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(~1u, 29026u >> (u_input.c.x % 32u), abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, u_input.c.x, u_input.c.x), vec3<u32>(var_2, u_input.c.x, 4294967295u))) << (min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2, var_2, 4294967295u, var_3), vec4<u32>(36752u, var_2, 37228u, 4294967295u)), firstTrailingBit(vec4<u32>(var_2, 0u, 23504u, 1u))) % vec4<u32>(32u))) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 61036u, var_3), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 26115u, 4294967295u, u_input.c.x), vec4<u32>(var_2, 0u, 45731u, u_input.c.x), vec4<u32>(0u, 31690u, var_3, 0u))), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, u_input.c.x, 64829u, var_3) | vec4<u32>(4294967295u, u_input.c.x, 98340u, var_2), ~vec4<u32>(u_input.c.x, u_input.c.x, 34500u, var_3), vec4<u32>(1u, var_2, var_3, 29445u)), vec4<u32>(~1u, 0u, min(u_input.c.x, u_input.c.x), ~0u)));
}

