struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<vec2<f32>, 5>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = true;
    var var_1 = Struct_4(vec2<bool>(true, true));
    var_0 = any(global0[_wgslsmith_index_u32(17837u, 6u)]);
    let var_2 = ~0u;
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(~(i32(-1i) * -1i), u_input.a >> (max(var_2, u_input.b ^ u_input.b) % 32u), ~2147483647i), vec3<i32>(u_input.a, -firstTrailingBit(u_input.a), -_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 1i), -vec2<i32>(u_input.a, u_input.a))));
    return !select(select(vec2<bool>(all(vec4<bool>(true, true, var_1.a.x, var_1.a.x)), true), vec2<bool>(select(true, var_1.a.x, false), 4294967295u >= var_2), true), select(vec2<bool>(true, true), select(select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, vec2<bool>(var_1.a.x, var_1.a.x)), var_1.a, var_1.a.x), select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, any(var_1.a))), !(!select(var_1.a, vec2<bool>(false, var_1.a.x), vec2<bool>(var_1.a.x, true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(abs(-u_input.a), 1i);
    var var_1 = Struct_4(func_3());
    global1 = array<vec2<f32>, 5>();
    var var_2 = Struct_1(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.b, u_input.b)), ~abs(u_input.b)) & vec2<u32>(26787u, ~1u), ~abs(firstLeadingBit(min(vec3<i32>(10838i, arg_0.x, 20086i), vec3<i32>(14738i, arg_0.x, arg_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(select(1155f, 597f, (false && all(select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(false, true, true, true)))) & true));
    return Struct_2(var_2.b.zx, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0, arg_0) | -1i, firstLeadingBit(u_input.a)) < 2147483647i);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_5 {
    global0 = array<vec3<bool>, 6>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-2160f, 360f)))), _wgslsmith_f_op_f32(-698f + -1341f)));
    global1 = array<vec2<f32>, 5>();
    var var_1 = func_2(vec4<i32>(u_input.a << (~(~36286u) % 32u), 0i, _wgslsmith_mod_i32(-(2147483647i >> (u_input.b % 32u)), _wgslsmith_sub_i32(2147483647i, ~(-2147483647i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(~2147483647i, -29165i), (i32(-1i) * -1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 27731u), vec3<u32>(39060u, 69799u, 34083u)) % 32u))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, arg_1), !vec2<bool>(false, arg_1))), false));
    var_1 = func_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a, 5201i, arg_0.x, -41118i) >> (vec4<u32>(u_input.b, 0u, u_input.b, 43272u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_1.a.x, -64098i), firstTrailingBit(arg_0))), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.a, arg_0.x, var_1.a.x, arg_0.x)) | _wgslsmith_add_i32(-29256i, arg_0.x), abs(4797i), -reverseBits(arg_0.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), arg_0.yx)))), select(func_3(), func_3(), true));
    return Struct_5(func_2(~arg_0 ^ abs(arg_0), vec2<bool>((arg_1 != true) && (var_1.b | var_1.b), true)));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    global1 = array<vec2<f32>, 5>();
    global1 = array<vec2<f32>, 5>();
    global1 = array<vec2<f32>, 5>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(520f, -1748f)), _wgslsmith_div_f32(-578f, -1148f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(2007f - 200f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, 1483f, 360f, 1446f))))), vec4<f32>(-219f, _wgslsmith_f_op_f32(529f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(f32(-1f) * -428f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2087f * _wgslsmith_f_op_f32(trunc(1053f))) + _wgslsmith_f_op_f32(trunc(881f))), -1436f)));
    return Struct_1(~(~vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), 4294967295u | u_input.b)), (select(vec3<i32>(0i, 0i, 1i) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), -vec3<i32>(2147483647i, 27740i, 9163i), global0[_wgslsmith_index_u32(0u, 6u)]) ^ ~firstTrailingBit(vec3<i32>(arg_0, u_input.a, 1i))) >> (~((vec3<u32>(36131u, 4294967295u, u_input.b) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(14817u, 1u, 0u), vec3<u32>(u_input.b, 1u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 6>();
    global1 = array<vec2<f32>, 5>();
    var var_0 = ~abs(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -16783i, arg_0.b.x, arg_0.b.x));
    let var_1 = arg_0.b;
    var_0 = vec4<i32>(_wgslsmith_div_i32(arg_0.b.x, countOneBits(arg_0.b.x)), _wgslsmith_clamp_i32(~var_0.x ^ (min(u_input.a, u_input.a) << (~arg_0.a.x % 32u)), (var_1.x | _wgslsmith_dot_vec2_i32(var_1.zz, vec2<i32>(var_1.x, -1510i))) | -7493i, var_0.x), -2147483647i | var_1.x, ~arg_0.b.x & -1i);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -66183i >= u_input.a;
    var_0 = func_5(func_4(_wgslsmith_mod_i32(-u_input.a, 1i), func_1(vec4<i32>(-36502i, u_input.a, u_input.a, u_input.a) | vec4<i32>(0i, u_input.a, 23652i, 0i), select(true, false, false)))) != u_input.a;
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    global1 = array<vec2<f32>, 5>();
    var var_1 = ~(min(func_1(vec4<i32>(u_input.a, 33443i, -2147483647i, u_input.a), true).a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, -2147483647i))) ^ 18087i) >> (~(~(~(~25374u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(vec2<u32>(u_input.b, 1u) ^ vec2<u32>(u_input.b, 0u))) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), u_input.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(24083u, u_input.b, u_input.b), u_input.b, 29262u), 5u)] + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(98820u, 5u)], vec2<f32>(1000f, -357f)), vec2<f32>(2233f, 196f), vec2<bool>(true, true))))), 0u, u_input.b, ~u_input.a);
}

