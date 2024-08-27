struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    global0 = Struct_2(any(!(!(!vec3<bool>(true, false, global0.a)))));
    global0 = Struct_2(global0.a);
    let var_0 = !(!vec2<bool>(global0.a, -1i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-47288i, u_input.b))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-170f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f - 1104f))))));
    return max(_wgslsmith_mult_i32(-12737i, u_input.b), -14015i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))));
    let var_1 = reverseBits(u_input.b);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(u_input.b, var_1), 1i, -12858i), -(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, var_1, 0i), vec3<i32>(u_input.b, u_input.b, -1i)))), _wgslsmith_mod_i32(-2147483647i, func_3(~11673u)), ~39708i);
    let var_3 = any(select(vec3<bool>(true, false, any(vec3<bool>(arg_0.a, global0.a, global0.a))), select(select(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(global0.a, global0.a, arg_0.a)), !vec3<bool>(global0.a, false, global0.a), select(vec3<bool>(false, false, false), vec3<bool>(false, true, global0.a), vec3<bool>(false, arg_0.a, false))), !(!vec3<bool>(false, arg_0.a, false)), !any(vec4<bool>(true, global0.a, arg_0.a, true))), vec3<bool>(true, global0.a, arg_1.b.x >= ~0u)));
    var_2 = -firstLeadingBit(abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(-9700i, -1i, 1i), vec3<i32>(var_2.x, -2147483647i, 8203i)), -vec3<i32>(var_1, -37445i, var_1), any(vec4<bool>(var_3, arg_0.a, true, false)))));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    global0 = Struct_2(false);
    let var_0 = all(!vec3<bool>(any(vec2<bool>(true, arg_3.x)), true, func_2(Struct_2(false), Struct_1(arg_1.a, arg_1.b, arg_2, arg_2)).c > _wgslsmith_f_op_f32(-arg_2)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, 1568f, arg_1.c, -696f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-890f, arg_1.d, arg_0, arg_1.a))))))), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_3.x, false, global0.a, arg_3.x), global0.a), select(vec4<bool>(var_0, global0.a, arg_3.x, var_0), vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(arg_3.x, true, false, arg_3.x)), all(vec3<bool>(var_0, arg_3.x, true))), !select(!vec4<bool>(arg_3.x, var_0, var_0, true), vec4<bool>(global0.a, global0.a, arg_3.x, true), u_input.b != u_input.b), arg_3.x)));
    var var_2 = Struct_2(!arg_3.x);
    var_2 = Struct_2(select(false, true, var_0));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(abs(-26758i) == (_wgslsmith_clamp_i32(-13687i, -1i, arg_3.x) << (4294967295u % 32u)));
    let var_1 = ~(-_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.b, -1i, arg_3.x, arg_3.x)), -vec4<i32>(-2147483647i, arg_3.x, arg_3.x, -24832i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-3689i, -23217i, u_input.b, u_input.b), -vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, ~countOneBits(u_input.a.x)), ~func_4(_wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), func_2(Struct_2(arg_0.a), Struct_1(288f, u_input.a, 1003f, 299f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), !(!vec2<bool>(false, arg_0.a))));
    var_2 = 15672u;
    var var_3 = func_2(Struct_2(any(!(!vec3<bool>(var_0.a, true, global0.a)))), Struct_1(239f, ~u_input.a, _wgslsmith_f_op_f32(round(-615f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(746f)), _wgslsmith_f_op_f32(round(arg_2.x)))))));
    return Struct_2(func_2(arg_0, func_2(Struct_2(false), func_2(Struct_2(global0.a), Struct_1(1488f, vec2<u32>(51599u, var_3.b.x), -532f, 132f)))).c != _wgslsmith_div_f32(536f, _wgslsmith_f_op_f32(f32(-1f) * -429f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~vec3<u32>(u_input.c, 37522u, u_input.d.x), u_input.d) ^ u_input.d;
    var var_1 = true;
    var var_2 = func_1(Struct_2(!all(!vec2<bool>(false, global0.a))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1262f, 1067f, 963f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-300f, -474f, -721f), vec3<f32>(199f, -1025f, -915f), vec3<bool>(false, global0.a, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, -211f, 910f)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1210f, -1000f, _wgslsmith_div_f32(1879f, -746f))))), vec3<i32>(u_input.b, ~1i, -29443i));
    var_0 = vec3<u32>(~1u, u_input.a.x | var_0.x, ~(~_wgslsmith_add_u32(~4294967295u, func_4(1000f, Struct_1(-1000f, vec2<u32>(var_0.x, u_input.c), -920f, 1184f), 1638f, vec2<bool>(var_2.a, true)))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~31819u, func_2(Struct_2(any(vec2<bool>(var_2.a, var_2.a))), Struct_1(_wgslsmith_f_op_f32(-230f + -1361f), _wgslsmith_mult_vec2_u32(var_0.xy, vec2<u32>(u_input.e, u_input.e)), _wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(abs(912f)))).b.x), vec4<u32>(~var_0.x, 4294967295u, 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(max(16432u, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d.xy, var_0.xz)), u_input.a.x)), ~vec3<u32>(_wgslsmith_add_u32(~var_0.x, u_input.e), var_0.x >> (~0u % 32u), _wgslsmith_dot_vec2_u32(u_input.a, firstTrailingBit(u_input.a))));
}

