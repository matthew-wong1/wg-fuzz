struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_0 = vec2<u32>(~32268u, ~_wgslsmith_mult_u32(1u, countOneBits(1u)) << ((_wgslsmith_mod_u32(~17865u, firstTrailingBit(21531u)) ^ _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 123312u), vec2<u32>(0u, 4945u), vec2<bool>(true, true)), max(vec2<u32>(345u, 18803u), vec2<u32>(0u, 1u)))) % 32u));
    let var_1 = countOneBits(~(~vec3<u32>(1u, var_0.x, 4294967295u) | vec3<u32>(min(var_0.x, 8903u), ~var_0.x, var_0.x)));
    let var_2 = Struct_2(reverseBits(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.b, 2147483647i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), var_1, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.x, var_0.x, abs(var_0.x)), 2u)], Struct_1(vec2<i32>(~u_input.b, ~(-u_input.b)), u_input.a), Struct_1(-(~abs(vec2<i32>(-19885i, 5759i))), -min(~u_input.a, firstTrailingBit(u_input.a))));
    return 4294967295u;
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), 2u)];
    global0 = array<Struct_1, 2>();
    let var_1 = Struct_2(-firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(countOneBits(firstTrailingBit(abs(vec2<i32>(u_input.a, u_input.a)))), -select(var_0.a.x | u_input.a, ~u_input.a, u_input.a <= -1i)), Struct_1(vec2<i32>(-u_input.b, u_input.a), u_input.a), global0[_wgslsmith_index_u32(~32294u, 2u)]);
    var var_2 = vec4<bool>(any(vec2<bool>(true, !any(vec2<bool>(true, true)))), true, !(true || select(true, true, u_input.a != var_1.a.x)), true);
    global0 = array<Struct_1, 2>();
    return Struct_3(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f), -793f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(arg_0 * 748f)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.b, u_input.b), ~_wgslsmith_mult_vec2_i32(var_0.a, var_0.a), vec2<i32>(abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(19822i, 5828i), var_1.d.a))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = -vec3<i32>(-1i, -2147483647i, -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-685f, -115f)) * arg_0) - arg_2.yz));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, _wgslsmith_f_op_f32(step(-1864f, -244f)), 1161f, arg_1.a));
    let var_3 = func_2(_wgslsmith_div_f32(374f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2178f - var_2.x), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(round(285f))))))).c;
    var var_4 = Struct_2(abs(vec4<i32>(u_input.a, firstLeadingBit(var_0.x), -2147483647i, _wgslsmith_add_i32(var_0.x, arg_1.c.x))) & vec4<i32>(-reverseBits(arg_1.c.x), -var_0.x, abs(~1i), abs(_wgslsmith_mult_i32(-1i, 2147483647i))), ~vec3<u32>(1u, 1u, firstLeadingBit(1u)), Struct_1(vec2<i32>(1i, ~(var_3.x >> (0u % 32u))), var_0.x), global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(21262u, 0u) >> (1u % 32u)), 2u)]);
    return Struct_2(var_4.a, var_4.b, Struct_1(var_0.xx, countOneBits(firstTrailingBit(abs(-26907i)))), Struct_1(var_3, u_input.b), global0[_wgslsmith_index_u32(firstLeadingBit(var_4.b.x), 2u)]);
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 2u)];
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, arg_0))), func_2(-847f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -293f, arg_0), vec3<f32>(arg_0, 1465f, arg_0))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -660f, 1327f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -599f, arg_0) + vec3<f32>(arg_0, 1230f, 839f)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3007f - 644f) - _wgslsmith_f_op_f32(arg_0 + arg_0)))) - arg_0);
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1012f)), _wgslsmith_f_op_f32(-arg_0)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -10982i;
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, var_0), vec2<i32>(15902i, 2147483647i) & vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(-1i | var_0, 30768i)), _wgslsmith_sub_vec2_i32(~reverseBits(vec2<i32>(u_input.b, var_0)), vec2<i32>(~9142i, u_input.b & 2147483647i))), var_0);
    global0 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-408f, -1108f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2280f * 1000f))), _wgslsmith_f_op_f32(trunc(615f)), _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(482f)), _wgslsmith_div_f32(1356f, 923f)))));
    var var_3 = !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false);
    let var_4 = Struct_3(_wgslsmith_div_f32(-1023f, _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2044f, -1000f, 258f, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1159f, -1325f, 346f, -192f) + vec4<f32>(var_2.x, 1541f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-820f + var_2.x), _wgslsmith_div_f32(437f, var_2.x), _wgslsmith_f_op_f32(func_1(-259f, true)), _wgslsmith_f_op_f32(f32(-1f) * -127f))), select(vec4<bool>(false, !var_3.x, any(var_3.wxx), true), !select(vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(false, var_3.x, true, true), vec4<bool>(false, var_3.x, true, var_3.x)), false))), _wgslsmith_sub_vec2_i32(var_1.a, ~vec2<i32>(var_1.b >> (0u % 32u), u_input.b)));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, -362f, _wgslsmith_f_op_f32(var_4.a - var_4.b.x)) + var_4.b.wwy) - _wgslsmith_f_op_vec3_f32(-var_2.xzw)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(var_2.x - -125f)) + var_4.a), var_5.x, !any(vec4<bool>(true, var_3.x, var_3.x, var_3.x)) != var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f) + _wgslsmith_f_op_f32(max(-621f, var_4.a))) * _wgslsmith_f_op_f32(abs(var_5.x))))), _wgslsmith_f_op_f32(step(-1243f, _wgslsmith_f_op_f32(sign(-2284f)))), 1000f);
    var var_6 = _wgslsmith_f_op_vec4_f32(-var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(min(var_4.c.x, ~1i), var_1.a.x));
}

