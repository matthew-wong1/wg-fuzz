struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    return -301f;
}

fn func_2() -> i32 {
    global0 = any(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -878f) != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-827f, -991f), -527f, true)), false));
    var var_0 = -(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(1i, -2147483647i)) ^ firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 43371i)), u_input.a)));
    var var_1 = -815f;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1214f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1102f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-839f)), _wgslsmith_f_op_f32(-415f + -984f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2351f, -1551f), _wgslsmith_div_f32(-857f, -353f)) * vec2<f32>(-1470f, _wgslsmith_f_op_f32(f32(-1f) * -1094f))))), false));
    let var_3 = global1[_wgslsmith_index_u32(1u, 5u)];
    return -(~u_input.a) | u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = -106f <= arg_2.e.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(379f, arg_2.e.x)))))));
    var var_1 = ~max(arg_2.d.yw, vec2<u32>(arg_2.d.x, arg_2.a));
    var var_2 = vec4<u32>(~(~0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 40445u), vec2<u32>(arg_2.a, var_1.x))) | ~min(17724u, _wgslsmith_dot_vec4_u32(arg_2.d, vec4<u32>(95433u, 86173u, var_1.x, var_1.x))), countOneBits(~arg_2.d.x), _wgslsmith_mod_u32(74545u, 43317u), ~var_1.x);
    var_0 = 640f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e.x, -851f, arg_2.c.x) + vec3<f32>(arg_2.c.x, 1000f, arg_2.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -132f, -227f) - vec3<f32>(arg_2.e.x, -625f, arg_2.c.x)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1997f, 106f, arg_2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(766f, arg_2.e.x, arg_2.c.x))))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_2.d.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2() >> (4294967295u % 32u), -_wgslsmith_sub_vec4_i32(vec4<i32>(38321i, -332i, 9213i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(54491i, -2147483647i, u_input.a, 115i), vec4<i32>(u_input.a, -1i, u_input.a, -1i))), arg_2)));
    global1 = array<Struct_1, 5>();
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(692f - 736f)), var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-374f)))), vec4<f32>(arg_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1068f)), -465f), _wgslsmith_f_op_f32(-636f * 121f), arg_2.e.x), arg_3)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, 1000f, 401f, -1000f) + vec4<f32>(-656f, 1000f, 785f, arg_2.e.x)) + vec4<f32>(arg_2.c.x, var_2.e.x, _wgslsmith_f_op_f32(-980f - 365f), var_1.x))));
    return vec2<u32>(select(42423u, 16162u, u_input.a != -2147483647i), reverseBits(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(~var_0, 58515u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(true, false, !all(vec3<bool>(true, false, false))));
    var var_1 = vec4<bool>(u_input.a >= -1i, var_0.x, any(vec2<bool>(_wgslsmith_clamp_u32(125262u, 55753u, 19782u) > ~0u, true)), !(!var_0.x));
    let var_2 = max(vec2<u32>(_wgslsmith_div_u32(11425u, _wgslsmith_div_u32(4294967295u, 33155u)), 15628u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))) | ((_wgslsmith_mult_vec2_u32(select(vec2<u32>(33452u, 11437u), vec2<u32>(11280u, 24169u), true), min(vec2<u32>(40120u, 57703u), vec2<u32>(39516u, 112004u))) >> (func_1(vec4<u32>(101175u, 25005u, 17415u, 33049u), 0u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 22595u), 5u)], true) % vec2<u32>(32u))) >> (~func_1(~vec4<u32>(1u, 0u, 75059u, 4294967295u), _wgslsmith_div_u32(432u, 1u), global1[_wgslsmith_index_u32(abs(46046u), 5u)], true) % vec2<u32>(32u)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~func_1(vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x), 12681u, Struct_1(1u, vec2<bool>(false, var_0.x), vec2<f32>(2860f, -379f), vec4<u32>(45377u, 1u, 86219u, var_2.x), vec2<f32>(-1646f, 1000f)), true).x), 118189u), var_2), 5u)];
    var_1 = !(!vec4<bool>(any(vec4<bool>(true, true, true, true)), select(true, false, true), true, select(var_0.x && false, var_1.x, var_0.x && true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(var_2, var_2));
}

