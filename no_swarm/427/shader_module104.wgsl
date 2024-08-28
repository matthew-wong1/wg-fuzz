struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 10> = array<i32, 10>(-55604i, i32(-2147483648), -26556i, 14574i, 1i, 2147483647i, -47567i, 4884i, 5592i, 0i);

var<private> global2: f32 = 1692f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec2<u32> {
    return vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.b) & arg_0.a, vec2<u32>(arg_0.b, abs(1u))), 4294967295u);
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(false, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(55360u, 32788u), vec2<u32>(0u, 1u)) >> (func_3(Struct_4(vec2<u32>(4294967295u, 0u), 37988u, vec3<f32>(-844f, 160f, 186f)), vec3<f32>(-612f, 413f, 917f), vec4<bool>(true, true, true, false)) % vec2<u32>(32u)), vec2<u32>(1u, 1u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 6613u), vec2<u32>(4294967295u, 2057u), vec2<u32>(24254u, 94982u)) % vec2<u32>(32u))) == ~firstLeadingBit(1u), select(any(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)))), !((88698i >= global1[_wgslsmith_index_u32(14706u, 10u)]) || false), true));
    var var_1 = 63970u;
    global2 = _wgslsmith_f_op_f32(abs(906f));
    let var_2 = true;
    var_1 = ~4294967295u;
    return Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(0u, 10u)], -47454i), reverseBits(u_input.b.xx)) << (firstLeadingBit(vec2<u32>(1u, 85982u)) % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.zx)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_3 {
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -213f));
    var var_0 = 71512i;
    var var_1 = _wgslsmith_sub_i32(~firstTrailingBit(-2147483647i), abs(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_1.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 38845i, -36069i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 6539i), vec4<i32>(24340i, global1[_wgslsmith_index_u32(54795u, 10u)], 0i, -2147483647i)))));
    return Struct_3(func_2(), _wgslsmith_div_i32(arg_1.x ^ _wgslsmith_mod_i32(-2147483647i, ~33353i), arg_0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2244f, 711f, -465f, -876f) * vec4<f32>(-762f, -448f, -1000f, -719f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, 315f, 575f, 275f)), any(vec4<bool>(false, false, false, false)))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> Struct_4 {
    var var_0 = 68771u;
    let var_1 = true;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(abs(arg_2));
    var var_4 = (-1943f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(var_3 * arg_0)) + -395f)) || all(vec4<bool>(true, all(vec3<bool>(false, var_1, var_1)) | !var_1, any(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1))), var_1));
    return Struct_4(max(reverseBits(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4712u, 4294967295u)), firstTrailingBit(~firstLeadingBit(~44160u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.c.xzx - vec3<f32>(arg_1.c.x, var_3, var_3)), vec3<f32>(1330f, arg_0, 982f))) * arg_1.c.xyz)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(arg_1.a.x, 10u)], 414f, arg_1.c.x, arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x));
    global1 = array<i32, 10>();
    let var_1 = 2147483647i;
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.a, var_1), vec4<i32>(var_1, -14476i, 0i, -6767i) | vec4<i32>(2147483647i, 2147483647i, var_0.a, u_input.b.x)), -reverseBits(vec4<i32>(-2147483647i, 2147483647i, u_input.a, 1i))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, 33000i), min(vec4<i32>(0i, global1[_wgslsmith_index_u32(19986u, 10u)], -1i, var_0.a), vec4<i32>(18245i, -61493i, 1i, -31840i)))));
    var var_3 = ~u_input.b.xx;
    return -var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_5(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), func_4(_wgslsmith_f_op_f32(2505f * 1077f), func_1(u_input.b, vec3<i32>(-1i, u_input.b.x, 2147483647i)), _wgslsmith_f_op_f32(606f * -421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(func_4(-778f, Struct_3(Struct_2(u_input.a), global1[_wgslsmith_index_u32(50535u, 10u)], vec4<f32>(-1172f, -141f, -161f, -245f)), -973f).c.x)))) - _wgslsmith_div_f32(-385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-744f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -714f) - _wgslsmith_f_op_f32(1578f + -2990f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-763f - 244f), _wgslsmith_f_op_f32(trunc(-323f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -399f), 999f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(602f + -903f)))), 1f)));
    var var_1 = Struct_3(func_2(), i32(-1i) * -firstTrailingBit(0i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - var_0.b) * var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d + var_0.b), -2395f)), -559f, var_0.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-598f, 447f), _wgslsmith_f_op_f32(var_0.b * var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), -1000f, 636f)));
    let var_2 = vec4<i32>(~(~(~(-1i))) >> (_wgslsmith_clamp_u32(~(0u << (1u % 32u)), 22152u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(44007u, 80748u))) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.zz, u_input.b.yz), select(vec2<i32>(-55580i, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(93234u, 10u)], var_0.a), true)), vec2<i32>(global1[_wgslsmith_index_u32(15971u, 10u)] ^ global1[_wgslsmith_index_u32(17809u, 10u)], 15054i))), 8281i, _wgslsmith_mod_i32(9969i, func_2().a));
    var_1 = func_1(u_input.b, _wgslsmith_mult_vec3_i32(var_2.xxx, -abs(~vec3<i32>(u_input.b.x, -18025i, global1[_wgslsmith_index_u32(0u, 10u)]))));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(abs(var_0.a), 1i), var_0.a, var_2.x, 1i);
    var var_4 = Struct_4(vec2<u32>(50840u, 1u), firstTrailingBit(~firstTrailingBit(~64560u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_0.e, 281f))))), var_1.c.yzy, select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, false), all(vec3<bool>(true, true, true))))));
    global1 = array<i32, 10>();
    let var_5 = Struct_1(_wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(~(~var_4.a.x), 10u)], ~(~select(var_1.b, 21761i, false))), func_4(-1097f, func_1(u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, 66074i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-24402i, u_input.b.x, 7437i), var_2.zzz))), _wgslsmith_f_op_f32(f32(-1f) * -223f)).c.x, var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)), 579f);
    let var_6 = -2905i;
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.zy);
}

