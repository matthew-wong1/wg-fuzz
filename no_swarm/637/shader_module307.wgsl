struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_0.c;
    var var_1 = vec2<bool>(select(!all(vec3<bool>(true, false, false)) == !any(vec2<bool>(false, true)), min(25036u, u_input.a.x) < ~firstTrailingBit(u_input.a.x), true), true);
    var var_2 = !select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x))), select(select(vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(var_1.x, var_1.x, var_1.x), true), vec3<bool>(var_1.x & false, true, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), select(!vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, false), true), true)), select(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(true, false, true))), vec3<bool>(var_1.x, false, false), (arg_1.x == 52969u) || true));
    let var_3 = Struct_2(arg_0.c, u_input.a.zw, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-801f, _wgslsmith_div_f32(-902f, var_0)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(234f, arg_0.c) + _wgslsmith_f_op_f32(abs(var_0)))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, arg_0.c, var_0, arg_0.c))), 90533u);
    var_1 = var_2.xy;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(746f * _wgslsmith_f_op_f32(var_3.c.a - var_3.a)), var_0) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-497f + arg_0.c))))), var_3.c.c.ww);
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) >> (vec2<u32>(32245u, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(75031u, u_input.a.x)), 1u), u_input.a.x ^ ~(106364u | u_input.a.x)) >> (52350u % 32u);
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0, 85807u), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0, 71179u), ~vec4<u32>(u_input.a.x, 50380u, 17422u, 51786u)) & u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<i32>(1i, -1i), 37464u, -1015f), u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, -1790f) - vec2<f32>(1000f, 275f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-685f, 298f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, 1353f)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<i32>(-17799i, -2147483647i), 63458u, -418f), vec4<u32>(4294967295u, 4294967295u, var_0, var_0))).x + _wgslsmith_f_op_f32(-1227f * -675f)) + _wgslsmith_f_op_f32(-657f + _wgslsmith_f_op_f32(max(-890f, -1286f)))), -515f));
    var var_3 = ~vec3<i32>(_wgslsmith_sub_i32(-2144i, 36568i), reverseBits(1i), 1i);
    var var_4 = ~_wgslsmith_sub_vec3_i32(select(abs(vec3<i32>(var_3.x, 2147483647i, 8032i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(var_3.x, var_3.x, var_3.x)), vec3<i32>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), u_input.a.x < (var_0 ^ var_0)), vec3<i32>(var_3.x << (u_input.a.x % 32u), var_3.x, abs(1i)) ^ (-vec3<i32>(var_3.x, var_3.x, -39417i) | vec3<i32>(-1535i, var_3.x, 1i)));
    return firstLeadingBit(_wgslsmith_div_vec3_u32(abs(u_input.a.wzz), vec3<u32>(u_input.a.x, countOneBits(~u_input.a.x), ~u_input.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - arg_1.x), 458f, 1307f, arg_1.x) - vec4<f32>(arg_1.x, -1405f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1104f, arg_1.x)), arg_1.x))));
    var var_1 = ~max(u_input.a.yxx >> (u_input.a.xwz % vec3<u32>(32u)), func_2());
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<i32>(-2147483647i, -15754i), var_1.x, var_0.x), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x))).x, var_0.x, 818f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, -1640f, var_0.x, arg_1.x))))));
    var var_2 = 2147483647i;
    var var_3 = firstTrailingBit(18448u) ^ (firstTrailingBit(func_2().x) ^ 62411u);
    return _wgslsmith_add_vec2_i32(vec2<i32>(1i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 1i, 2147483647i), vec4<i32>(-2147483647i, -27625i, 8774i, 21117i))), firstTrailingBit(countOneBits(-vec2<i32>(19538i, -50131i))) | (~vec2<i32>(-1i, 7092i) << (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yz, var_1.xx), abs(var_1.yy)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(259f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1189f))))), _wgslsmith_f_op_f32(trunc(-276f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1079f + -177f))))));
    var var_1 = select(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i) << (max(vec2<u32>(u_input.a.x, 13200u), u_input.a.xy) % vec2<u32>(32u)), func_1(vec4<bool>(true, true, true, true), vec3<f32>(-543f, 548f, 479f), vec3<bool>(false, false, false), true)), vec2<i32>(_wgslsmith_mult_i32(1i, func_1(vec4<bool>(false, false, true, true), vec3<f32>(462f, 1091f, 247f), vec3<bool>(false, true, true), true).x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-25270i, -1i, 2147483647i, 22971i))) & ~vec2<i32>(1i, 1i), false);
    var var_2 = 9459u;
    let var_3 = Struct_3(vec2<i32>(firstTrailingBit(-39946i), var_1.x), u_input.a.x, -846f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, -(~1i), 2568f, ~vec2<u32>(1u, 1u), ~_wgslsmith_div_u32(func_2().x >> (u_input.a.x % 32u), 50351u));
}

