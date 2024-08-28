struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, false, true, true, false, false, true, true, false, true, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~u_input.a;
    var var_1 = Struct_2(vec3<bool>(true, !(any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])) == !global0[_wgslsmith_index_u32(4294967295u, 14u)]), global0[_wgslsmith_index_u32(1u >> (~u_input.a.x % 32u), 14u)] | global0[_wgslsmith_index_u32(1u, 14u)]), Struct_1(-270f), abs(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -252f));
    var_1 = Struct_2(!vec3<bool>(u_input.b.x >= -1i, false, var_1.a.x), Struct_1(var_1.d), vec4<u32>(var_0.x, ~u_input.a.x, var_1.c.x, 1u), 957f);
    var_1 = Struct_2(var_1.a, var_1.b, _wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(1u, 78886u, 65281u, var_1.c.x)), max(_wgslsmith_add_vec4_u32(var_0, vec4<u32>(var_1.c.x, var_0.x, var_0.x, u_input.c.x)), vec4<u32>(42258u, u_input.a.x, u_input.a.x, 68578u) | vec4<u32>(1u, var_0.x, var_0.x, 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1.c.yy, vec2<u32>(50905u, u_input.c.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.c, u_input.a), select(16514u, 18411u, false)), _wgslsmith_div_u32(reverseBits(4294967295u), 53343u), ~firstTrailingBit(u_input.c.x)), _wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(3522u, u_input.c.x, 28923u, var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f + var_1.d)))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~91135u, min(u_input.c.x, ~(~20674u)), u_input.a.x), select(_wgslsmith_mult_vec3_u32(reverseBits(var_1.c.zzy) >> (vec3<u32>(var_0.x, var_1.c.x, 0u) % vec3<u32>(32u)), countOneBits(countOneBits(var_0.wwy))), var_0.ywy, var_1.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d)) - 1f) + -191f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d - -611f), _wgslsmith_f_op_f32(step(var_1.b.a, var_1.d)))), 588f) - -908f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a, _wgslsmith_div_f32(var_1.b.a, var_1.d)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-586f)), var_1.b.a))) - _wgslsmith_f_op_f32(570f + 231f)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(_wgslsmith_f_op_f32(trunc(218f)), _wgslsmith_f_op_f32(f32(-1f) * -1648f), _wgslsmith_f_op_f32(539f * -2360f), -639f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1661f * -1102f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f + 872f)), _wgslsmith_f_op_f32(abs(-694f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(f32(-1f) * -1040f))))));
    global0 = array<bool, 14>();
    var var_1 = Struct_1(-370f);
    var var_2 = true;
    var var_3 = min(select(~firstLeadingBit(vec4<i32>(u_input.b.x, -1i, 1i, 3189i)), firstTrailingBit(vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(-2147483647i, u_input.b.x), 8552i, _wgslsmith_mult_i32(1i, u_input.b.x))), false), ~vec4<i32>(_wgslsmith_add_i32(u_input.d.x, u_input.d.x) | u_input.b.x, _wgslsmith_dot_vec2_i32(~u_input.d, u_input.d), u_input.b.x, _wgslsmith_div_i32(min(-1i, -1i), u_input.d.x)));
    return ~u_input.a.x;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_sub_u32(~(~(~func_2())), _wgslsmith_mult_u32(firstLeadingBit(func_2()), ~u_input.a.x) | u_input.c.x);
    global0 = array<bool, 14>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-743f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), abs(u_input.b.x) <= 15542i))));
    return -133f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-623f - 1104f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1859f - 178f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()).x))));
    global0 = array<bool, 14>();
    let var_1 = vec2<bool>(true, true);
    global0 = array<bool, 14>();
    let var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1722f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -958f), var_0.x), -(select(vec4<i32>(u_input.b.x, u_input.d.x, -27055i, u_input.d.x), vec4<i32>(0i, 19127i, u_input.d.x, -2147483647i), true) & vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x)) | vec4<i32>(~(-25141i), ~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.d.x, u_input.b.x) & vec4<i32>(-2147483647i, u_input.d.x, 6150i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, u_input.d.x, 10741i), vec4<i32>(-55692i, 279i, 0i, u_input.b.x))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -15254i, 25742i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x | ~(-2147483647i), -min(u_input.d, ~u_input.b.yz ^ firstLeadingBit(u_input.b.yy)), var_2.b.x);
}

