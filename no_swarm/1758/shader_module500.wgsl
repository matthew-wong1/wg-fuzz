struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<vec4<i32>, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-283f - 657f), 1323f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(458f)) * _wgslsmith_f_op_f32(f32(-1f) * -341f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-408f, 246f)))))));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), u_input.a.x, _wgslsmith_div_u32(u_input.b, 4294967295u), any(vec4<bool>(true, true, true, true)) == (_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_div_i32(-24956i, u_input.a.x)) < _wgslsmith_div_i32(2147483647i, min(u_input.a.x, -37354i))));
    return ~1i;
}

fn func_1() -> vec3<f32> {
    let var_0 = vec4<i32>(u_input.a.x & _wgslsmith_mult_i32(18413i, firstTrailingBit(-89037i)), -7517i, _wgslsmith_add_i32(0i, -min(~u_input.a.x, func_2(vec2<f32>(1039f, -1588f)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(firstLeadingBit(-4252i), -(~0i)), _wgslsmith_dot_vec4_i32(~global1[_wgslsmith_index_u32(37903u, 6u)], u_input.a)));
    let var_1 = ~select(~(~vec3<u32>(u_input.c, 37128u, 21672u)) & countOneBits(vec3<u32>(1u, u_input.c, 42149u) & vec3<u32>(u_input.d, u_input.d, 14167u)), max(vec3<u32>(firstTrailingBit(u_input.b), _wgslsmith_add_u32(u_input.b, 52517u), min(u_input.d, 1u)), select(vec3<u32>(u_input.b, u_input.d, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(5039u, 9510u, u_input.d), vec3<u32>(1u, 41282u, u_input.d)), true)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x >= var_0.x, true, false), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    global0 = array<Struct_1, 1>();
    var var_2 = firstLeadingBit(min(vec2<i32>(_wgslsmith_mod_i32(-36509i >> (var_1.x % 32u), _wgslsmith_sub_i32(u_input.a.x, var_0.x)), -2147483647i), vec2<i32>(i32(-1i) * -10131i, _wgslsmith_mult_i32(var_0.x, 0i))));
    var var_3 = 49669u;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-704f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), 626f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-442f))) * _wgslsmith_f_op_f32(sign(552f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yw;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1()))), var_0.x, abs(~u_input.d), all(vec4<bool>(false != all(vec4<bool>(true, true, false, true)), true && any(vec2<bool>(false, true)), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    let var_2 = min(vec2<u32>(1u, _wgslsmith_add_u32(~(~var_1.c), firstLeadingBit(2098u))), ~((~vec2<u32>(var_1.c, 4294967295u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(117178u, u_input.c), vec2<u32>(var_1.c, var_1.c), vec2<u32>(57488u, u_input.b)) % vec2<u32>(32u))) | vec2<u32>(10821u, ~72508u)));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.a.yy, vec2<i32>(2147483647i, abs(2147483647i))), u_input.a.x, ~(-1i), u_input.a.x);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~u_input.c), var_2.x), ~(~var_2)), countOneBits(u_input.c ^ var_1.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(77067u, 3067u, u_input.c) ^ max(vec3<u32>(var_1.c, var_1.c, u_input.b), vec3<u32>(var_1.c, 1u, var_2.x)), vec3<u32>(var_2.x ^ 28923u, 31814u, 17521u)) % 32u)), 1u)];
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_clamp_vec3_i32(~select(u_input.a.xzw, u_input.a.ywx, true), u_input.a.yxw, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, max(var_3.x, var_3.x), ~(-37572i)), vec3<i32>(min(25729i, u_input.a.x), 1i, u_input.a.x))), abs(u_input.a.x), var_3.wx, var_2);
}

