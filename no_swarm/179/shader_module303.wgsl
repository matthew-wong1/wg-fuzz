struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 8> = array<i32, 8>(20954i, 6761i, 20073i, 69644i, 2147483647i, 33350i, i32(-2147483648), 26409i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    global1 = array<i32, 8>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)) + _wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(f32(-1f) * -427f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.a.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, arg_0.x) + arg_1.a.b)), -889f, 1000f);
    global0 = (_wgslsmith_mult_i32(u_input.d.x, i32(-1i) * -41293i) ^ -_wgslsmith_div_i32(0i, ~global1[_wgslsmith_index_u32(0u, 8u)])) ^ _wgslsmith_div_i32(max(1i | _wgslsmith_div_i32(-2147483647i, u_input.b), select(~u_input.b, reverseBits(u_input.d.x), arg_2)), global1[_wgslsmith_index_u32(14334u, 8u)] ^ -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(13900u, arg_1.b.c), 8u)]);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(arg_1.a.b, 433f)))), arg_1.b.a, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.b))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1024f, 673f, true))))), _wgslsmith_f_op_f32(sign(var_0.x)), !arg_2)));
    global0 = u_input.d.x;
    return vec3<i32>(i32(-1i) * -19986i, -_wgslsmith_mult_i32(-2147483647i, ~(-global1[_wgslsmith_index_u32(2330u, 8u)])), global1[_wgslsmith_index_u32(arg_1.a.c, 8u)]);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1567f, 205f, 2100f))))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(284f, -872f, 1923f, -163f) + vec4<f32>(1024f, 1090f, 2006f, 445f)))) * vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, 761f, 1407f, -1000f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-778f, 768f, -836f, 106f)))))));
    var var_1 = select(~(vec4<i32>(-22586i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18889u, u_input.a.x), u_input.a), 8u)], ~u_input.d.x, 1i) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(-1109i, u_input.b, global1[_wgslsmith_index_u32(79150u, 8u)], 0i), vec4<i32>(u_input.b, -2147483647i, 70269i, u_input.d.x)) ^ -vec4<i32>(u_input.d.x, -2147483647i, u_input.b, -4941i))), vec4<i32>(global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 8u)] & 1i, _wgslsmith_dot_vec3_i32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1114f, var_0.x), var_0.zx), Struct_2(Struct_1(var_0.x, var_0.x, 70648u), Struct_1(var_0.x, var_0.x, 0u), u_input.e), true), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(0u, 8u)], u_input.d.x, 0i), vec3<i32>(6531i, 48330i, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(17144i, 14298i, -1i), vec3<i32>(-1i, 48399i, u_input.d.x)))), _wgslsmith_add_i32(countOneBits(min(global1[_wgslsmith_index_u32(u_input.c, 8u)], -7261i)), u_input.d.x), ~(~0i)), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, select(true, true, true), false, true), vec4<bool>(true, any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), u_input.b == global1[_wgslsmith_index_u32(24102u, 8u)])));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(1045f - 224f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1242f, -936f)), abs(1u)), ~u_input.c);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.x * var_2.a.a), var_2.a.b, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(var_2.b, var_2.a.c, 0u))), ~min(vec3<u32>(u_input.e, var_2.b, 0u), vec3<u32>(u_input.c, var_2.a.c, 4685u))));
    global1 = array<i32, 8>();
    return false;
}

fn func_1() -> Struct_3 {
    global1 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_f32(trunc(548f));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.e, 54864u), firstTrailingBit(_wgslsmith_add_u32(7950u, ~32637u))), 8u)];
    var var_1 = ~2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, -646f) - vec2<f32>(var_0, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, var_0) + vec2<f32>(-949f, var_0))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, 131f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1002f, var_0), vec2<f32>(var_0, var_0)))))))));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0, var_2.x)), _wgslsmith_f_op_f32(select(var_2.x, -574f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f + 390f)), func_2())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_0) * var_2.x), -824f)), ~(~_wgslsmith_sub_u32(1u, u_input.a.x))), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 11539u) | vec3<u32>(59269u, u_input.a.x, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(Struct_1(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * 773f), 1u), ~_wgslsmith_mod_u32(max(1u, ~var_0.a.c), firstTrailingBit(~58197u)));
    let var_1 = _wgslsmith_f_op_f32(-873f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -570f)), -684f)));
    global0 = reverseBits(abs(abs(0i)));
    var var_2 = func_1();
    var var_3 = vec2<i32>(-1i, 1i);
    var var_4 = 200f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(ceil(-893f)))) - _wgslsmith_f_op_f32(trunc(var_0.a.b))));
}

