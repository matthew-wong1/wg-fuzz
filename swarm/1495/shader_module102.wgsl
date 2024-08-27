struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    let var_0 = ~abs(vec4<u32>(1u, arg_1.x, ~arg_1.x, 4294967295u) | vec4<u32>(reverseBits(arg_1.x), ~arg_1.x, _wgslsmith_div_u32(42035u, arg_1.x), ~1u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(abs(-984f))), _wgslsmith_f_op_f32(-1249f - _wgslsmith_f_op_f32(max(878f, -548f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(918f + _wgslsmith_f_op_f32(-117f + 1213f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(-284f)), _wgslsmith_f_op_f32(round(1305f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, -369f, -318f) * vec3<f32>(-1278f, -1502f, -184f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -1315f, 1214f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(712f, -1000f, 1215f), vec3<f32>(665f, 176f, -912f), false)))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(arg_1.xy, arg_1.xy), 1u), ~arg_1.x));
    let var_2 = var_1;
    let var_3 = Struct_2(any(vec4<bool>(true, true, true, true)));
    var var_4 = select(select(vec3<bool>(false, !any(vec4<bool>(true, var_3.a, false, var_3.a)), any(!vec4<bool>(var_3.a, var_3.a, var_3.a, true))), select(!(!vec3<bool>(var_3.a, var_3.a, var_3.a)), select(vec3<bool>(var_3.a, false, var_3.a), vec3<bool>(var_3.a, var_3.a, var_3.a), var_3.a || false), vec3<bool>(select(true, true, false), var_3.a, all(vec4<bool>(false, false, var_3.a, var_3.a)))), vec3<bool>(any(!vec2<bool>(false, var_3.a)), false | (var_3.a & true), !var_3.a)), vec3<bool>(!(!(!var_3.a)), !var_3.a, var_2.b.x != _wgslsmith_f_op_f32(-var_1.b.x)), (u_input.a >> ((_wgslsmith_mod_u32(33578u, arg_1.x) | (var_1.c & 1u)) % 32u)) != -firstLeadingBit(u_input.a));
    return ~(~select(_wgslsmith_mult_u32(var_2.c, 1u), var_2.c, false));
}

fn func_2() -> bool {
    var var_0 = ~21603u;
    var var_1 = vec2<bool>(false, ~func_3(1i, ~vec3<u32>(0u, 4294967295u, 4294967295u)) >= _wgslsmith_mult_u32(1u, 1u));
    var var_2 = !(!(!(!select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x))));
    var_2 = !(!select(vec4<bool>(var_2.x, var_1.x, true, var_1.x), vec4<bool>(all(var_2.wwz), any(vec4<bool>(true, true, false, true)), true, !var_2.x), true));
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(~func_3(u_input.a, vec3<u32>(4294967295u, 9665u, 4294967295u)), 38879u) >> (~60789u % 32u), 36795u, _wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(1u, 4294967295u, 4294967295u)), countOneBits(vec3<u32>(1u, 1u, 1u))), ~min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 30591u, 35012u), vec3<u32>(4294967295u, 34767u, 57649u)), vec3<u32>(1u, 1u, 1u))), 4445u);
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = false;
    return Struct_2(!(arg_1.x < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-247f, -1580f)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = max(reverseBits(abs(max(vec2<i32>(arg_2, arg_2), vec2<i32>(u_input.a, arg_2)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), select(~vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(~vec2<i32>(arg_2, -1i), ~(vec2<i32>(arg_2, -1i) >> (vec2<u32>(16558u, 0u) % vec2<u32>(32u)))), all(!select(arg_3, vec3<bool>(arg_1.a, true, false), arg_3))));
    var var_1 = func_4(false && any(arg_3.xz), vec3<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(236f + -518f), _wgslsmith_f_op_f32(f32(-1f) * -204f))))), -817f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-432f, 548f)), _wgslsmith_f_op_f32(sign(-285f))), 1f)));
    var_1 = arg_1;
    var_1 = Struct_2(var_1.a);
    let var_2 = ~vec4<u32>(1u, 1u, 1u, 1u);
    return Struct_2(true);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(1234f, _wgslsmith_f_op_f32(floor(arg_1.x))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-1096f, var_0), var_0), vec3<f32>(-234f, 621f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(94192u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(39757u, 68929u, 23057u), vec3<u32>(0u, 15667u, 4294967295u))), 0u));
    var var_2 = countOneBits(var_1.c);
    var var_3 = ~abs(vec2<u32>(var_1.c, ~68653u));
    var_3 = vec2<u32>(~var_1.c, max(0u, 1u));
    return all(!select(!vec4<bool>(true, arg_0.a, true, arg_0.a), vec4<bool>(true, true, var_1.c <= 1u, true), false));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec4<bool>(true, func_6(func_5(false, func_4(func_2(), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(729f, 2044f, 317f)))), firstLeadingBit(max(2147483647i, 1i)), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, 1000f, 579f) - vec3<f32>(-270f, -806f, 202f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1124f, 1408f, 179f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, 1237f, 1164f) + vec3<f32>(-1531f, -239f, -479f)), all(vec3<bool>(false, true, false)))))), all(vec2<bool>(true, 0i != u_input.a)) & false, true);
    let var_1 = !(!var_0.xx);
    let var_2 = ~vec4<u32>(38905u, 47122u, 4294967295u, min(4294967295u, 1u));
    var var_3 = var_0.x;
    let var_4 = !var_0.x;
    return var_2.zw & ~abs(select(_wgslsmith_mod_vec2_u32(var_2.zy, var_2.xw), countOneBits(vec2<u32>(3925u, 107256u)), !var_4));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(2147483647i, abs(~_wgslsmith_mult_i32(u_input.a, 25904i)) | u_input.a);
    let var_1 = 659f;
    let var_2 = func_1();
    let var_3 = Struct_3(Struct_1(415f, _wgslsmith_div_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(148f - var_1), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, -2043f, var_1)))), _wgslsmith_div_u32(~(~4294967295u), ~countOneBits(var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2209f, _wgslsmith_div_f32(398f, -1000f), _wgslsmith_div_f32(-1344f, -1550f)))));
    let var_4 = firstTrailingBit(vec2<i32>(-26808i, var_0));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))))));
    let var_6 = -_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(var_4.x) & _wgslsmith_sub_i32(-1i, -14062i), ~var_0, _wgslsmith_mod_i32(var_4.x, -25796i), firstTrailingBit(1i)), max(firstLeadingBit(vec4<i32>(var_4.x, 19815i, var_4.x, var_4.x)), abs(~vec4<i32>(-65935i, -3118i, u_input.a, -42623i))));
    var var_7 = vec4<bool>(true, all(vec3<bool>(675f >= var_3.a.b.x, func_4(func_5(true, Struct_2(true), 0i, vec3<bool>(false, true, true)).a, vec3<f32>(764f, var_5, var_3.b.x)).a, true)), _wgslsmith_dot_vec2_u32(abs(~var_2), var_2) > var_2.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a), select(var_3.a.c, abs(_wgslsmith_div_u32(1u, firstTrailingBit(var_3.a.c))), func_4(false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.b)))).a));
}

