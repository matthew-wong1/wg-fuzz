struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(i32(-2147483648), -51759i, -51251i, -26527i, i32(-2147483648), 32930i, 29208i, -37548i, 28914i, 0i, 44567i);

var<private> global1: i32 = 72319i;

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 15>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<i32, 11>();
    return Struct_2(-(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(0u, 11u)], -31538i, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<i32>(u_input.e, 2147483647i, 0i, global2.x)) & -vec4<i32>(2314i, global0[_wgslsmith_index_u32(87284u, 11u)], global0[_wgslsmith_index_u32(36461u, 11u)], global2.x)) ^ select(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(5684u, 11u)], 1i, -5406i)), abs(vec4<i32>(15095i, global2.x, u_input.c, global0[_wgslsmith_index_u32(1u, 11u)]))), _wgslsmith_div_vec4_i32(vec4<i32>(35891i, 28874i, 9855i, 1006i), -vec4<i32>(-2147483647i, -1i, 13360i, 2147483647i)), !(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))));
}

fn func_3() -> u32 {
    var var_0 = !(!select(vec4<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))));
    var_0 = select(!vec4<bool>(var_0.x, any(select(var_0.xw, vec2<bool>(false, var_0.x), var_0.x)), true, all(var_0.xx)), vec4<bool>(true, select(true && all(var_0.wzx), all(select(var_0.zyy, vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false))), !(var_0.x & true)), 1u > max(firstTrailingBit(50766u), reverseBits(26113u)), true), true);
    var var_1 = !select(select(vec4<bool>(true, !var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !var_0.x), !vec4<bool>(false, var_0.x, any(vec2<bool>(var_0.x, var_0.x)), true), select(!select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, false, true)), true, true, select(false, true, false)), !(!vec4<bool>(true, var_0.x, var_0.x, true))));
    global0 = array<i32, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f - 419f) - -1101f))));
    return abs(~(~_wgslsmith_div_u32(4294967295u, 1u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = abs(vec3<u32>(arg_0.x, func_3(), ~abs(~arg_0.x)));
    let var_1 = Struct_1(firstTrailingBit(~(~var_0.x)), _wgslsmith_div_vec3_u32(~(~(vec3<u32>(20646u, 1u, arg_0.x) >> (vec3<u32>(0u, var_0.x, var_0.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.x, arg_0.x), countOneBits(1u), firstTrailingBit(var_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 36807u, arg_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 49906u, arg_0.x), vec3<u32>(var_0.x, var_0.x, arg_0.x)), ~vec3<u32>(var_0.x, 20206u, 32744u)))));
    global3 = array<i32, 15>();
    global3 = array<i32, 15>();
    var var_2 = arg_1.x;
    return vec2<f32>(-1049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = vec3<i32>(-1i) * -firstTrailingBit(u_input.b);
    let var_0 = 577f;
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0)) >= arg_1.x;
    return Struct_1(select(0u, 66634u, true), select(vec3<u32>(8455u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 36066u)), arg_0.x), countOneBits(firstLeadingBit(arg_0)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 25893u), vec4<u32>(45700u, 1u, 17919u, 98738u))), 1u, 24464u | (_wgslsmith_mod_u32(0u, 4700u) | _wgslsmith_dot_vec2_u32(vec2<u32>(8359u, 4294967295u), vec2<u32>(21122u, 9983u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(541f, -1635f))) + _wgslsmith_f_op_vec2_f32(func_2(~vec2<u32>(0u, 1u), vec4<bool>(true, true, true, true), func_1(vec4<bool>(true, false, true, false), false, vec2<f32>(-813f, -289f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-142f))), -920f)), func_1(vec4<bool>(false, true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-778f, -1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1180f, -380f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1494f, -579f), vec2<f32>(495f, -867f))))));
    global2 = vec3<i32>(_wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(8367u, 11u)], reverseBits(-2147483647i)), global3[_wgslsmith_index_u32(24584u, 15u)], u_input.c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(281f + _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(1958f + -652f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(205f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f * -659f) + -419f), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-156f))) + -427f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(792f, 659f) - -1163f)))), _wgslsmith_f_op_f32(round(-1197f)));
    var var_2 = func_4(_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(var_0.a, _wgslsmith_add_u32(~15853u, var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 4294967295u, var_0.a), vec3<u32>(var_0.a, 6358u, var_0.a)))), _wgslsmith_f_op_vec2_f32(var_1.xz - var_1.zx), Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23220u, 29875u, var_0.b.x, 23796u), vec4<u32>(1u, var_0.b.x, 7685u, var_0.a) >> (vec4<u32>(12267u, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u))), 15u)], u_input.e, u_input.d.x, ~func_1(vec4<bool>(true, false, false, false), false, var_1.yw).a.x))).a;
    let var_3 = all(vec2<bool>(~var_0.a > var_0.a, global0[_wgslsmith_index_u32(52135u, 11u)] > -global3[_wgslsmith_index_u32(~var_0.b.x, 15u)]));
    let var_4 = select(!vec3<bool>(!var_3, all(!vec3<bool>(false, var_3, var_3)), all(vec3<bool>(var_3, true, var_3))), select(select(vec3<bool>(var_3, all(vec2<bool>(var_3, false)), any(vec4<bool>(false, var_3, true, false))), !vec3<bool>(true, true, var_3), !(!vec3<bool>(false, var_3, false))), !(!(!vec3<bool>(true, true, var_3))), !(!select(vec3<bool>(true, var_3, var_3), vec3<bool>(false, true, true), var_3))), !vec3<bool>(false, var_3, true));
    var var_5 = 188f;
    let var_6 = countOneBits(select(-max(vec4<i32>(global2.x, u_input.c, global2.x, u_input.c) >> (vec4<u32>(var_0.a, 91260u, var_0.a, var_0.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, global3[_wgslsmith_index_u32(var_0.a, 15u)], u_input.b.x, global3[_wgslsmith_index_u32(var_0.b.x, 15u)])), (firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(25358u, 15u)], 39501i, 1i, global3[_wgslsmith_index_u32(37548u, 15u)])) & vec4<i32>(global3[_wgslsmith_index_u32(var_0.a, 15u)], global3[_wgslsmith_index_u32(3615u, 15u)], u_input.c, u_input.d.x)) | -reverseBits(vec4<i32>(-1i, global3[_wgslsmith_index_u32(var_0.b.x, 15u)], -2147483647i, global0[_wgslsmith_index_u32(1u, 11u)])), var_0.a == 88655u));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.b, vec3<u32>(func_3(), ~min(1u, var_0.b.x), ~var_0.a & max(var_0.b.x, 4294967295u))), var_1.wy, 46208u, vec4<u32>(var_0.b.x, var_0.b.x, ~abs(var_0.a << (var_0.a % 32u)), 1u));
}

