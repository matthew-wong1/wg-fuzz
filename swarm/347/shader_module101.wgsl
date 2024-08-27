struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-943f, 304f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(arg_3.d.zy * _wgslsmith_f_op_vec2_f32(-arg_2.d.xx));
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13515u), u_input.b)), u_input.b);
    let var_1 = true;
    var var_2 = vec4<i32>(max(-1i, _wgslsmith_sub_i32(-29969i, 94733i)), firstLeadingBit(1i), countOneBits(7304i), 2147483647i);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -2054f);
}

fn func_2() -> vec4<i32> {
    var var_0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(step(286f, _wgslsmith_f_op_f32(floor(-655f)))), true))));
    var var_1 = Struct_1(false || !all(vec3<bool>(false, false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u & u_input.a, ~_wgslsmith_mult_u32(u_input.a, 1u)), u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-441f)) + _wgslsmith_f_op_f32(func_3(true, Struct_1(true, u_input.a, global0.x, vec4<f32>(var_0.x, var_0.x, var_0.x, -359f)), Struct_1(true, 1u, -534f, vec4<f32>(522f, var_0.x, -316f, -2388f)), Struct_1(true, 5636u, -513f, vec4<f32>(-425f, global0.x, -549f, var_0.x))))))), vec4<f32>(-603f, _wgslsmith_f_op_f32(floor(-324f)), -744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -717f)) + _wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(var_0.x + -529f)))));
    var var_2 = !all(!select(vec4<bool>(var_1.a, true, false, var_1.a), !vec4<bool>(true, false, var_1.a, true), vec4<bool>(true, false, var_1.a, var_1.a)));
    var var_3 = Struct_1(true, min(var_1.b, abs(0u) | u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 611f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -2170f, -1125f)))))) + var_1.d));
    var_2 = all(vec3<bool>(all(vec4<bool>(true, false, var_3.a, false)), false, false));
    return vec4<i32>(select(i32(-1i) * -(i32(-1i) * -6273i), 19324i, var_3.a), ~(~(-1i)), _wgslsmith_sub_i32(-41686i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 0i, -1i) >> (vec3<u32>(74128u, var_3.b, var_3.b) % vec3<u32>(32u)))), 1i);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, 246f)), _wgslsmith_f_op_f32(-global0.x)))), 154f), vec2<f32>(134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f * 1193f))));
    let var_0 = _wgslsmith_mult_vec4_i32(~firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -11348i, 18766i, 0i), vec4<i32>(2147483647i, -1i, 1i, -37801i))), -_wgslsmith_mod_vec4_i32(func_2(), vec4<i32>(2147483647i, -2147483647i, 2147483647i, 22180i)) << (~(~(~vec4<u32>(41261u, u_input.a, u_input.a, 20118u))) % vec4<u32>(32u)));
    let var_1 = 13761i != abs(var_0.x);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = 0i;
    return Struct_1(true, ~_wgslsmith_div_u32(~arg_0.x, u_input.b.x), _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(abs(207f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, global0.x, 1000f, 853f)) + vec4<f32>(global0.x, global0.x, -1148f, global0.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2128f, global0.x, 1169f, 1056f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(138f, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, 2032f, 742f, 505f))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global0 = arg_2.xy;
    let var_0 = vec4<bool>(any(select(select(select(vec4<bool>(arg_3.a, arg_0.a, false, true), vec4<bool>(false, arg_3.a, arg_0.a, arg_3.a), vec4<bool>(true, arg_3.a, arg_3.a, true)), vec4<bool>(arg_0.a, arg_0.a, false, false), arg_0.a), vec4<bool>(true, !arg_0.a, all(vec2<bool>(false, arg_0.a)), !arg_0.a), !(!vec4<bool>(true, false, arg_3.a, arg_0.a)))), !(1u > max(u_input.b.x, arg_3.b)), !any(!vec3<bool>(arg_3.a, false, arg_0.a)), !arg_3.a);
    var var_1 = reverseBits(arg_1);
    let var_2 = vec3<u32>(u_input.c & abs(firstLeadingBit(u_input.c)), ~(~3422u), arg_0.b);
    let var_3 = _wgslsmith_mult_i32(~abs(_wgslsmith_mod_i32(arg_1, 1i)), arg_1);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(1u);
    var var_1 = vec4<i32>(abs(61433i), firstTrailingBit(func_4(func_1(~vec3<u32>(1u, var_0, 1u)), ~(~2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1122f, 708f))), func_1(vec3<u32>(4294967295u, 1u, var_0) << (vec3<u32>(u_input.c, var_0, u_input.c) % vec3<u32>(32u))))), func_2().x ^ -1i, func_4(Struct_1(false, max(1u, u_input.c), global0.x, vec4<f32>(global0.x, -1574f, global0.x, global0.x)), 1i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -1803f, -1360f), vec3<f32>(global0.x, global0.x, -350f))), Struct_1(select(true, false, true), u_input.b.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 174f, 717f, 1261f)))) >> (47297u % 32u));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 203f)), _wgslsmith_f_op_f32(trunc(-426f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-818f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1037f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -231f))))));
    var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x << (var_0 % 32u), _wgslsmith_div_i32(var_1.x, -8085i), var_1.x), -vec4<i32>(abs(var_1.x), abs(_wgslsmith_sub_i32(var_1.x, -18784i)), i32(-1i) * -581i, _wgslsmith_div_i32(-10700i & var_1.x, var_1.x)));
    let var_2 = Struct_1(false, u_input.a, _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.x)))), global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1162f) * vec4<f32>(global0.x, 1204f, -784f, 142f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 194f, 1197f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 850f, 621f, -254f)), vec4<f32>(-733f, 332f, 1000f, global0.x))))));
    var_1 = vec4<i32>(var_1.x, var_1.x >> ((var_0 << (0u % 32u)) % 32u), ~abs(-22764i), var_1.x);
    var var_3 = 4294967295u;
    var var_4 = var_2;
    var_1 = vec4<i32>(((abs(51866i) >> (_wgslsmith_mod_u32(var_0, var_2.b) % 32u)) << ((~1u >> (u_input.b.x % 32u)) % 32u)) & 2147483647i, -select(_wgslsmith_mod_i32(firstLeadingBit(var_1.x), var_1.x), var_1.x, all(select(vec4<bool>(false, true, var_4.a, true), vec4<bool>(false, var_4.a, true, true), false))), abs(var_1.x), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_4.b, 1u, var_0, 1u)), ~vec4<u32>(95072u, var_2.b, var_2.b, var_0)) & ~(~vec4<u32>(17194u, 4294967295u, var_2.b, 7840u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), -1123f)), _wgslsmith_f_op_f32(155f - _wgslsmith_div_f32(global0.x, var_2.d.x))), u_input.b);
}

