struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    let var_0 = abs(-(~(-abs(vec3<i32>(-14073i, u_input.a, -3782i)))));
    var var_1 = ~(~vec4<i32>(countOneBits(-2147483647i), 1i, select(5365i, -17988i ^ var_0.x, all(vec2<bool>(true, false))), abs(reverseBits(var_0.x))));
    var var_2 = firstTrailingBit(_wgslsmith_mod_i32(~max(2147483647i, -39913i), select(-(~var_1.x), ~u_input.a, false)));
    var_2 = -29205i;
    var var_3 = Struct_2(Struct_1(~(~firstTrailingBit(vec4<i32>(-25186i, 2147483647i, var_1.x, u_input.a))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-29891i, var_0.x)), firstTrailingBit(vec2<i32>(18681i, -40056i))), ~vec2<i32>(var_1.x, 1i))), Struct_1(max(-(~vec4<i32>(1i, -2147483647i, u_input.a, 1i)), vec4<i32>(_wgslsmith_sub_i32(75561i, u_input.a), var_1.x, _wgslsmith_add_i32(-13280i, 6109i), ~1i)), abs(firstLeadingBit(vec2<i32>(0i, -1i))) & select(~vec2<i32>(0i, u_input.a), vec2<i32>(var_1.x, 63101i), vec2<bool>(true, true))), u_input.e.x);
    return vec3<bool>(all(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false))), false, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> bool {
    var var_0 = Struct_4(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(9697i, 36901i, u_input.a, -1i), ~vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a)), -reverseBits(vec4<i32>(u_input.a, 14823i, -3388i, -1i))), reverseBits(vec2<i32>(-46185i, u_input.a))), -vec4<i32>(u_input.a, -2147483647i, -2378i, i32(-1i) * -20754i), Struct_3(select(vec3<bool>(arg_0.x, true, arg_0.x), select(select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x), arg_0, true), all(arg_0)), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), arg_0.x, !arg_0.x), select(vec4<bool>(false, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, false, arg_0.x, false), !vec4<bool>(true, arg_0.x, false, arg_0.x)), select(arg_0.x || arg_0.x, true, arg_0.x))), Struct_1(~vec4<i32>(36225i, u_input.a, 28139i, 2147483647i) >> (vec4<u32>(4630u, _wgslsmith_sub_u32(1u, 0u), 4294967295u, u_input.e.x) % vec4<u32>(32u)), -_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(u_input.a, -38237i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1749f, arg_1), vec2<f32>(764f, arg_1)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, arg_1) - vec2<f32>(583f, -1000f))))))));
    var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(arg_1)));
    var_0 = Struct_4(var_0.d, ~vec4<i32>(0i, u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, var_0.b.x, 7877i, var_0.d.b.x), vec4<i32>(var_0.d.a.x, var_0.d.a.x, u_input.a, var_0.a.a.x)), u_input.a), min(var_0.d.b.x, u_input.a)), var_0.c, var_0.d);
    let var_2 = true;
    return var_2;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1358f - _wgslsmith_div_f32(2364f, -819f)), -259f)));
    let var_1 = Struct_5(any(vec4<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true, true)), func_4(!(!func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))))), 0u, Struct_2(Struct_1(abs(vec4<i32>(-2147483647i, 24917i, u_input.a, arg_1)), arg_0), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.a, 16524i), vec4<i32>(arg_0.x, -13086i, 2147483647i, -1i)), select(vec4<i32>(31232i, u_input.a, arg_1, 1i), vec4<i32>(-1i, u_input.a, 2147483647i, 30111i), false), ~vec4<i32>(-2147483647i, arg_0.x, 3727i, u_input.a)), _wgslsmith_sub_vec2_i32(abs(arg_0), vec2<i32>(-272i, -2147483647i))), 1u << (u_input.b.x % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 1i, 2147483647i), vec3<i32>(u_input.a, -16756i, u_input.a)), _wgslsmith_add_i32(-2147483647i, u_input.a)), select(abs(vec2<i32>(0i, arg_1)), arg_0 >> (u_input.e % vec2<u32>(32u)), vec2<bool>(false, true))));
    let var_2 = select(!vec3<bool>(!(!var_1.a), any(vec3<bool>(true, var_1.a, false)), false), func_3(), vec3<bool>(true && (~u_input.d > select(1u, 0u, false)), var_1.b, var_1.b && !var_1.b));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_4 = arg_1;
    return Struct_3(var_2, vec4<bool>(!var_1.a, !(any(var_2.xx) & var_2.x), var_1.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.c, 29928u), abs(26175u)) <= 0u));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = 1388f;
    var var_1 = u_input.b.x;
    var var_2 = func_2(-vec2<i32>(-13015i, arg_0 & countOneBits(arg_0)), -15061i);
    let var_3 = Struct_1(~(max(-vec4<i32>(u_input.a, u_input.a, 0i, 1i), -vec4<i32>(-2147483647i, u_input.a, 53080i, 1i)) | (vec4<i32>(-1i) * -vec4<i32>(2474i, arg_0, -2147483647i, u_input.a))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -3949i)), _wgslsmith_div_vec2_i32(~vec2<i32>(-38552i, -1i), -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(u_input.a, u_input.a)))));
    var var_4 = any(vec2<bool>(!arg_1, 333f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-159f - 267f), _wgslsmith_f_op_f32(sign(2112f)))));
    return 1060f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1656f * _wgslsmith_f_op_f32(-314f - 606f)), -360f), _wgslsmith_f_op_f32(func_1(-1i, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(-14477i, true)))), 701f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, 1000f, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-107f, 1604f, 477f), vec3<f32>(576f, -994f, 1171f))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1175f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f - 417f)), 1f)));
    let var_1 = countOneBits(select(abs(-vec4<i32>(u_input.a, -12203i, u_input.a, u_input.a)), ~firstTrailingBit(abs(vec4<i32>(u_input.a, -42243i, u_input.a, 0i))), !func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(trunc(var_0.x)))));
    var var_2 = -1834f;
    var_2 = var_0.x;
    let var_3 = reverseBits(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, u_input.d), max(1u, u_input.c.x), 4294967295u), _wgslsmith_div_u32(u_input.b.x, ~4294967295u)) << (~(~vec3<u32>(u_input.d, u_input.e.x, u_input.d)) % vec3<u32>(32u)));
}

