struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(arg_0.b.x), ~u_input.b);
    let var_1 = max(~u_input.a.yzx, vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-23806i, arg_0.a, 54283i, 1i), vec4<i32>(28654i, arg_0.a, arg_0.a, 2326i), false) << (~vec4<u32>(1u, arg_0.b.x, arg_0.b.x, arg_0.b.x) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(33579i), arg_0.a, u_input.a.x ^ arg_2.a, abs(-1i))), _wgslsmith_mod_i32(2147483647i, -1i), firstTrailingBit(-1i)));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_2.b.x, 1u, 19175u), vec4<u32>(arg_2.b.x, 0u, u_input.b, 58654u) & min(vec4<u32>(1u, 4294967295u, arg_2.b.x, 20892u), vec4<u32>(0u, arg_0.b.x, 0u, arg_2.b.x))), select(~firstTrailingBit(vec4<u32>(1u, arg_2.b.x, 74083u, 4294967295u)), max(vec4<u32>(1u, arg_0.b.x, 112234u, arg_0.b.x), countOneBits(vec4<u32>(6266u, 8021u, 7053u, 4294967295u))), arg_1)), ~u_input.c.x);
    let var_3 = Struct_1(_wgslsmith_mod_i32(-arg_2.a, _wgslsmith_clamp_i32(arg_0.a, u_input.a.x, 4841i >> (0u % 32u))) | -1i, abs(arg_0.b));
    global0 = array<vec3<f32>, 20>();
    return Struct_1(1i & ~(-var_1.x), var_3.b >> (arg_2.b % vec2<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = !(!(!(!any(vec4<bool>(true, false, true, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-128f))))) * 101f));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    var var_0 = Struct_1(~arg_1, reverseBits(u_input.c.yy));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(arg_1, u_input.a.x, _wgslsmith_add_i32(var_0.a, -48763i)), var_0.b);
    var var_2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_1.b), func_2(Struct_1(var_0.a, vec2<u32>(4294967295u, 1u)), true, Struct_1(var_0.a, var_1.b), vec4<i32>(-1i, arg_1, var_0.a, var_1.a)), func_2(Struct_1(var_0.a, vec2<u32>(u_input.b, u_input.c.x)), arg_0, Struct_1(u_input.a.x, vec2<u32>(u_input.b, var_1.b.x)), vec4<i32>(var_0.a, u_input.a.x, -2147483647i, u_input.a.x)), func_2(Struct_1(var_0.a, vec2<u32>(var_0.b.x, 4294967295u)), arg_0, Struct_1(-2147483647i, var_0.b), u_input.a))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(trunc(-1174f)))), !vec2<bool>(arg_0, false | all(vec4<bool>(arg_0, false, arg_0, arg_0))), all(!(!(!vec3<bool>(arg_0, true, true)))));
    global0 = array<vec3<f32>, 20>();
    var var_3 = func_2(func_2(func_2(func_2(func_2(Struct_1(arg_1, var_1.b), arg_0, Struct_1(var_1.a, vec2<u32>(var_0.b.x, arg_3)), vec4<i32>(u_input.a.x, 0i, var_1.a, var_0.a)), true, Struct_1(0i, var_0.b), ~vec4<i32>(u_input.a.x, -2147483647i, -6074i, -2147483647i)), arg_1 < 1i, func_2(Struct_1(var_0.a, vec2<u32>(1u, var_0.b.x)), true, Struct_1(u_input.a.x, vec2<u32>(var_0.b.x, var_0.b.x)), vec4<i32>(28577i, -28986i, -2147483647i, var_1.a)), -u_input.a << (vec4<u32>(var_0.b.x, var_1.b.x, var_0.b.x, 8970u) % vec4<u32>(32u))), arg_0, Struct_1(select(_wgslsmith_sub_i32(14300i, 50414i), 1i, true), u_input.c.xy), vec4<i32>(select(u_input.a.x, var_0.a, arg_0), firstTrailingBit(-1i), -arg_1, var_1.a) >> (((vec4<u32>(arg_3, 4294967295u, 0u, u_input.b) | vec4<u32>(4294967295u, arg_3, arg_3, arg_3)) & (vec4<u32>(0u, 1u, 4294967295u, var_0.b.x) & vec4<u32>(32226u, u_input.c.x, 4294967295u, var_0.b.x))) % vec4<u32>(32u))), all(select(select(!vec2<bool>(arg_0, var_2.x), !vec2<bool>(false, arg_0), true), !select(vec2<bool>(var_2.x, true), vec2<bool>(true, true), vec2<bool>(false, true)), !var_2.x)), Struct_1(abs(-u_input.a.x), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 4294967295u), vec2<u32>(var_0.b.x, 16769u)), arg_3))), (u_input.a ^ u_input.a) >> ((_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, arg_3, 15976u, 1u), vec4<u32>(u_input.b, var_0.b.x, 21449u, var_0.b.x), vec4<u32>(var_1.b.x, var_0.b.x, 1u, 7097u)), select(vec4<u32>(19093u, var_1.b.x, 938u, 99700u), vec4<u32>(var_1.b.x, var_1.b.x, var_0.b.x, arg_3), vec4<bool>(false, true, true, false))) >> (vec4<u32>(firstLeadingBit(var_0.b.x), u_input.c.x, ~u_input.c.x, var_1.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_3.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(abs(min(arg_1.a ^ 0i, -arg_0)) & firstTrailingBit(_wgslsmith_mult_i32(-arg_3, abs(0i))), ~(~_wgslsmith_div_vec2_u32(arg_1.b << (vec2<u32>(41745u, 4294967295u) % vec2<u32>(32u)), ~u_input.c.yx)));
    global0 = array<vec3<f32>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1249f, -359f, -808f, -650f), vec4<f32>(-462f, -1224f, -445f, -324f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1400f, 313f, 2744f, -461f) + vec4<f32>(-1069f, -783f, 783f, 525f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, -650f, -1000f, -234f))))))));
    var_0 = arg_1;
    var var_2 = vec4<bool>(all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !all(vec4<bool>(true, false, true, false)))), true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), var_1.x, all(vec4<bool>(false, false, false, true))))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(243f, var_1.x) * var_1.x));
    return func_2(arg_1, !all(!select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), var_2.zy)), func_2(func_2(arg_1, any(vec4<bool>(true, var_2.x, true, var_2.x)) && (var_2.x || var_2.x), func_2(func_2(Struct_1(arg_2, u_input.c.zy), true, arg_1, u_input.a), any(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), func_2(Struct_1(45702i, vec2<u32>(4294967295u, arg_1.b.x)), var_2.x, Struct_1(arg_2, var_0.b), u_input.a), ~u_input.a), u_input.a | -u_input.a), any(!vec2<bool>(var_2.x, true)), arg_1, countOneBits(-abs(vec4<i32>(-12665i, 1i, -2147483647i, 60219i)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(!any(vec2<bool>(true, true)), 4278i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1008f, -553f))), _wgslsmith_f_op_f32(sign(-656f))), ~u_input.c.x), func_2(Struct_1(1i, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 8480u), u_input.c.yz))), !select(all(vec3<bool>(true, true, false)), true, true), Struct_1(firstLeadingBit(~u_input.a.x), ~vec2<u32>(u_input.c.x, u_input.b)), countOneBits(firstLeadingBit(u_input.a))), 25391i, ~(~(-74969i)) | -u_input.a.x);
    let var_1 = ~u_input.c.x;
    let var_2 = ~_wgslsmith_add_u32(var_1 | ~var_0.b.x, _wgslsmith_div_u32(func_4(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.yx), Struct_1(var_0.a, var_0.b), func_1(true, -1i, vec2<f32>(-1392f, -463f), u_input.b), u_input.a.x).b.x, var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1384f, -210f, -595f, 138f) + vec4<f32>(107f, 312f, 1227f, 1000f)) + vec4<f32>(-1162f, 392f, 224f, 639f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, 310f, -536f, 176f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-570f, 264f, 332f, 400f), vec4<f32>(1000f, 677f, -124f, 1026f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(574f * -229f), -352f, _wgslsmith_f_op_f32(func_3(Struct_1(4660i, u_input.c.zy), Struct_1(u_input.a.x, vec2<u32>(var_1, u_input.b)), Struct_1(var_0.a, u_input.c.xx), Struct_1(-1i, u_input.c.zx))), _wgslsmith_f_op_f32(-829f - -673f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1197f, 263f), vec2<f32>(-1661f, 406f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1542f, -1841f), vec2<f32>(-345f, -1776f))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1779f, -1207f))), ~func_2(Struct_1(var_0.a, firstTrailingBit(vec2<u32>(u_input.c.x, 4294967295u))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_2(func_4(var_0.a, Struct_1(var_0.a, vec2<u32>(var_2, var_0.b.x)), 0i, u_input.a.x), any(vec4<bool>(true, false, true, false)), func_4(u_input.a.x, Struct_1(var_0.a, u_input.c.yz), 42489i, -32786i), vec4<i32>(38389i, 6267i, u_input.a.x, u_input.a.x) << (vec4<u32>(var_2, 4294967295u, var_0.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(min(u_input.a, vec4<i32>(-6833i, var_0.a, 14353i, 1i)), firstLeadingBit(vec4<i32>(u_input.a.x, 27558i, 1i, var_0.a)))).a, _wgslsmith_f_op_f32(func_3(func_4(-1i, func_2(Struct_1(var_0.a, u_input.c.zz), all(vec3<bool>(true, true, true)), Struct_1(var_0.a, vec2<u32>(var_1, var_1)), abs(u_input.a)), u_input.a.x, var_0.a), Struct_1(var_0.a << (var_2 % 32u), ~_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, var_2))), Struct_1(u_input.a.x, var_0.b), Struct_1(44077i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1), u_input.c.zy, vec2<u32>(var_0.b.x, var_2))))));
}

