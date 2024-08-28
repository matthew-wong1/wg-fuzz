struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(22761i, -23294i, -1i), vec3<i32>(1i, -18405i, -53448i), vec3<i32>(-32496i, 21386i, 0i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, -22675i), vec3<i32>(-1i, 1i, 8448i), vec3<i32>(31040i, 30186i, i32(-2147483648)), vec3<i32>(14298i, 24850i, 55336i), vec3<i32>(10097i, -46806i, 37617i), vec3<i32>(-1i, 70256i, -42276i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(-463i, 2147483647i, 1i), vec3<i32>(1i, -22530i, 1i), vec3<i32>(-7837i, 0i, -5535i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(0i, 2147483647i, -2744i), vec3<i32>(i32(-2147483648), 1i, 21645i), vec3<i32>(2720i, 2147483647i, 0i), vec3<i32>(2147483647i, -84876i, i32(-2147483648)), vec3<i32>(1i, -27635i, 52140i), vec3<i32>(-44059i, 1i, 0i), vec3<i32>(27231i, 0i, i32(-2147483648)), vec3<i32>(755i, i32(-2147483648), 2147483647i), vec3<i32>(-33085i, 2147483647i, 2743i), vec3<i32>(-12306i, -31940i, 1i), vec3<i32>(2147483647i, 0i, -26375i), vec3<i32>(-17152i, i32(-2147483648), -34800i), vec3<i32>(-18552i, -37689i, 71605i), vec3<i32>(-24944i, 37376i, 34963i), vec3<i32>(0i, 18114i, 50721i), vec3<i32>(-1i, 1i, 29084i));

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    var var_0 = 89198u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(671f, -315f, -831f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-133f, 251f, 196f))), vec3<f32>(342f, 803f, 665f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-230f, -804f, 1015f))))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = -15012i;
    global1 = array<Struct_1, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-909f + 717f)), _wgslsmith_f_op_f32(ceil(-294f)))));
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(-1i, 10032i)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-57597i, -2147483647i), u_input.b.yz))), u_input.d.yw), 4487i, global1[_wgslsmith_index_u32(arg_2, 4u)]);
    global1 = array<Struct_1, 4>();
    return !vec4<bool>(arg_0.x, all(arg_0), (arg_0.x && true) || true, arg_0.x);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = any(!(!(!func_3(vec2<bool>(true, true), arg_0, 1u))));
    let var_1 = _wgslsmith_f_op_f32(arg_0 * arg_0);
    let var_2 = abs(~vec2<u32>(1u, 1u));
    global1 = array<Struct_1, 4>();
    return firstTrailingBit(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    var var_0 = func_1(reverseBits(firstTrailingBit(~vec4<i32>(u_input.b.x, 1i, u_input.d.x, -10352i) | u_input.c)), false);
    global0 = array<vec3<i32>, 31>();
    let var_1 = _wgslsmith_mult_i32(u_input.a, u_input.d.x);
    global1 = array<Struct_1, 4>();
    global0 = array<vec3<i32>, 31>();
    let var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) > var_0.a.x), true);
    let var_3 = countOneBits(vec2<i32>(~func_2(_wgslsmith_f_op_f32(ceil(-1781f))), abs(37687i)));
    global1 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1829f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(216f, var_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) * 268f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), var_0.a.x, u_input.d.x);
}

