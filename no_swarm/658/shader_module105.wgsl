struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    var var_0 = Struct_1(!vec2<bool>(arg_1, true));
    let var_1 = vec3<i32>(-2147483647i, arg_0, arg_0) | ~(vec3<i32>(_wgslsmith_mod_i32(6719i, arg_0), arg_0, -arg_0) >> (u_input.a % vec3<u32>(32u)));
    let var_2 = countOneBits(~vec2<u32>(45775u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | _wgslsmith_mult_u32(14830u, u_input.a.x)));
    return -797f;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = -arg_0;
    var var_1 = !select(vec2<bool>(true, all(vec2<bool>(false, true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), select(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(false, !(u_input.a.x >= 0u)));
    var var_2 = !(!vec2<bool>(!(var_1.x && false), u_input.a.x <= u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1332f))))), -828f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1190f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-165f - 722f), -1545f)), _wgslsmith_f_op_f32(max(554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-293f, -162f)))))));
    let var_4 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, var_0, 2147483647i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 51216i, -1i, 2147483647i) | select(vec4<i32>(var_0, -1i, arg_0, -32936i), vec4<i32>(3889i, var_0, arg_0, 46678i), true), abs(vec4<i32>(arg_0, var_0, var_0, var_0))), -vec4<i32>(_wgslsmith_mod_i32(-1i, -33356i), _wgslsmith_mod_i32(22149i, 38421i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0, arg_0, var_0), vec4<i32>(var_0, 1i, 1i, var_0)), _wgslsmith_sub_i32(var_0, -18380i))));
    return max(_wgslsmith_mod_u32(0u, max(1u, ~(~44469u))), firstTrailingBit(1u) | u_input.a.x);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = reverseBits(u_input.a.x);
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(func_3(2147483647i), u_input.a.x << (u_input.a.x % 32u)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) | (_wgslsmith_div_u32(4294967295u, u_input.a.x) << (u_input.a.x % 32u))), ~(vec3<u32>(75384u, 1u, ~u_input.a.x) >> ((~u_input.a & (u_input.a >> (u_input.a % vec3<u32>(32u)))) % vec3<u32>(32u))));
    var var_1 = Struct_3(arg_3, vec4<bool>(true, arg_2, arg_2 && (108937u > _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), arg_1.x == !any(vec3<bool>(false, arg_1.x, true))), Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_3, arg_0, arg_3), vec3<i32>(arg_3, ~arg_3, reverseBits(-2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) + _wgslsmith_f_op_f32(f32(-1f) * -403f)))), Struct_1(!vec2<bool>(false, arg_1.x))), Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(arg_3, arg_3, arg_0), vec3<i32>(arg_0, arg_0, arg_3)), -vec3<i32>(arg_0, arg_3, 1i)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(15368i, -69560i, 2147483647i), vec3<i32>(arg_0, arg_3, -14264i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_0, any(vec2<bool>(arg_1.x, false)), vec2<u32>(u_input.a.x, u_input.a.x), 27372u)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f * -146f))), Struct_1(select(select(arg_1, arg_1, false), select(arg_1, vec2<bool>(true, arg_2), arg_1.x), arg_1))), Struct_1(select(arg_1, !arg_1, arg_1)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.b, 611f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b, -1000f))) - vec2<f32>(-337f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.d.b, var_1.d.b)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.d.b - 559f))))));
    let var_3 = _wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(~var_1.c.a.xz, vec2<i32>(1i, _wgslsmith_div_i32(0i, arg_0))), var_1.c.a.zx, !arg_1), ~vec2<i32>(_wgslsmith_div_i32(1i, arg_0), _wgslsmith_dot_vec3_i32(var_1.d.a, vec3<i32>(0i, arg_0, -12800i))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i, true, ~u_input.a.zy, u_input.a.x)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) + -599f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1249f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(21338i, vec2<bool>(false, true), false, firstLeadingBit(~7843i)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(136f)), 1558f, _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x) != 16095u)));
    let var_1 = Struct_3(((-63831i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(20203i, -556i), vec2<i32>(47277i, -2147483647i))) & firstLeadingBit(firstLeadingBit(-1i))) & firstTrailingBit(max(abs(2147483647i), firstTrailingBit(-9907i))), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), true), !vec4<bool>(true, true, true, u_input.a.x < 1u), vec4<bool>(select(false, true, 1u > u_input.a.x), true, select(false, true, true), all(vec3<bool>(true, true, false)) || true)), Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(48010i, -46213i, -15983i), firstTrailingBit(vec3<i32>(14116i, -2147483647i, -1084i))), ~firstTrailingBit(vec3<i32>(-13473i, -11930i, -1i))), _wgslsmith_f_op_f32(-2011f * 922f), Struct_1(vec2<bool>(any(vec3<bool>(false, true, true)), true))), Struct_2(-select(vec3<i32>(-29558i, -22362i, -17793i), vec3<i32>(2147483647i, 14341i, 2147483647i), true) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(64847u, u_input.a.x, 37075u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19465u)), func_3(0i), ~u_input.a.x) % vec3<u32>(32u)), 1000f, Struct_1(vec2<bool>(false, false))), Struct_1(vec2<bool>(true, -11729i < firstTrailingBit(-22523i))));
    var_0 = var_1.c.b;
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_f32(func_2(var_1.c.a.x, vec2<bool>(all(var_2.b.yxz), false), false, var_1.a));
    var var_3 = var_2.d;
    var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_2.c.a.x, var_1.d.a.x), vec2<i32>(var_3.a.x, var_3.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + var_2.d.b), 1847f)), var_3.b, _wgslsmith_f_op_f32(var_1.c.b - _wgslsmith_div_f32(-797f, var_2.d.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b, var_1.c.b, var_3.b, var_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b, var_2.c.b, var_1.d.b, 260f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.b, -253f, var_3.b, var_3.b), vec4<f32>(var_1.c.b, 806f, 906f, var_1.c.b))))))), ~(~u_input.a.yx ^ vec2<u32>(firstTrailingBit(u_input.a.x), u_input.a.x)), reverseBits(_wgslsmith_div_i32(abs(var_3.a.x), abs(firstTrailingBit(-38407i)))));
}

