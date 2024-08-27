struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = array<vec4<i32>, 17>();
    var var_0 = vec2<i32>(u_input.b, -2147483647i | u_input.b);
    var_0 = vec2<i32>(-1i, -1i);
    let var_1 = _wgslsmith_sub_i32(u_input.b, countOneBits(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-4385i, var_0.x, u_input.b, 21275i), vec4<i32>(-2147483647i, u_input.b, -30406i, 1i)) >> (u_input.a % 32u))));
    var var_2 = reverseBits(abs(~(~(vec3<u32>(26528u, 51088u, 0u) ^ vec3<u32>(22458u, 0u, u_input.a)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-466f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1015f)) + _wgslsmith_div_f32(1339f, 655f))))));
}

fn func_2() -> i32 {
    global0 = array<vec4<i32>, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2203f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, false))) * _wgslsmith_f_op_f32(-1131f + 1492f)), _wgslsmith_f_op_f32(-1459f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2047f)))))));
    return -6698i;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> bool {
    let var_0 = firstLeadingBit(vec2<i32>(func_2(), _wgslsmith_div_i32(u_input.b, u_input.b)) | vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), u_input.b));
    let var_1 = select(arg_1.yw, !vec2<bool>(false, arg_0), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 40272u) << (vec3<u32>(4294967295u, 2299u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, u_input.a)) >= u_input.a, false));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~85473u, 17u)]);
    let var_3 = firstTrailingBit(_wgslsmith_add_vec4_u32(~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(55290u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 58781u, 4294967295u, u_input.a))), vec4<u32>(firstTrailingBit(u_input.a), u_input.a, u_input.a, _wgslsmith_mod_u32(firstLeadingBit(0u), u_input.a))));
    var var_4 = Struct_2(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i) * -var_2.a), select(reverseBits(select(vec4<i32>(16122i, var_0.x, var_2.a.x, 11357i), vec4<i32>(var_0.x, -9628i, -16245i, -15954i), vec4<bool>(arg_1.x, var_1.x, arg_0, arg_0))), var_2.a, !select(arg_1, vec4<bool>(var_1.x, var_1.x, arg_1.x, arg_0), vec4<bool>(arg_1.x, true, arg_1.x, false)))));
    return !var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, false, true) | func_1((23995u == ~u_input.a) && select(u_input.a > u_input.a, true, true), vec4<bool>(true, true, false, true));
    var var_1 = max(vec3<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(u_input.b, u_input.b)), 63691i), select(-u_input.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -3517i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), true), i32(-1i) * -1i), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(-5543i, -45438i, 4185i), firstLeadingBit(abs(vec3<i32>(u_input.b, 2147483647i, u_input.b))), _wgslsmith_f_op_f32(trunc(434f)) < _wgslsmith_f_op_f32(sign(875f))), ~vec3<i32>(u_input.b, 1i, reverseBits(u_input.b))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-661f, 2708f, 1850f, 1762f) * vec4<f32>(-1000f, 1490f, -617f, 768f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-780f, 171f, -533f, 586f), vec4<f32>(-610f, 569f, -2134f, 2407f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(674f, 371f, 373f, -1591f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(792f)), _wgslsmith_f_op_f32(f32(-1f) * -987f), _wgslsmith_div_f32(-2386f, -1517f), -206f))));
    let var_3 = u_input.a;
    var_1 = vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(u_input.b, -17546i), _wgslsmith_div_i32(var_1.x << (u_input.a % 32u), -1i), _wgslsmith_add_i32(83034i, -u_input.b)), vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-19637i, var_1.x), var_1.xy), var_1.yz), func_2(), -var_1.x | -u_input.b)), abs(abs(-2147483647i)) ^ _wgslsmith_mult_i32(-45144i, -countOneBits(var_1.x)));
    let var_4 = -func_2();
    var var_5 = u_input.a;
    global0 = array<vec4<i32>, 17>();
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -806f)), _wgslsmith_f_op_f32(sign(-483f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(var_4, _wgslsmith_add_i32(_wgslsmith_sub_i32(4963i, -17579i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_4, var_4), vec3<i32>(-48994i, -2147483647i, -16467i)))), 28749i), -32710i);
}

