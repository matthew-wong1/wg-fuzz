struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
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

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(53470i, -1i, -4246i, 1i), vec4<i32>(21224i, 0i, -1i, -10831i), vec4<i32>(1i, 1i, 2147483647i, 15512i), vec4<i32>(-46373i, -1i, 8158i, -1i), vec4<i32>(2147483647i, 14853i, 42764i, 2147483647i), vec4<i32>(-61117i, -9526i, 14382i, -46546i), vec4<i32>(i32(-2147483648), -37022i, 1i, 71344i));

var<private> global2: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1568f)))), 509f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(183f, -1351f))), 328f) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(811f, -1233f), -130f, true)), 130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(559f)) * _wgslsmith_f_op_f32(min(-1426f, 1437f))), 511f)), -46843i);
    global2 = firstTrailingBit(max(firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(u_input.c, u_input.d))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 51759u) << (vec2<u32>(55034u, global2.x) % vec2<u32>(32u)), vec2<u32>(42833u, arg_0) & vec2<u32>(4294967295u, 4294967295u))));
    var var_1 = Struct_1(var_0.a, u_input.b);
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(u_input.b, -5449i, var_1.b), firstLeadingBit(select(vec3<i32>(var_0.b, u_input.b, var_1.b), vec3<i32>(-1i, var_1.b, var_1.b), vec3<bool>(false, false, true))), u_input.d >= ~24995u)), select(vec3<i32>(min(var_0.b, var_0.b) << (~1u % 32u), _wgslsmith_div_i32(-32954i, firstTrailingBit(u_input.b)), var_1.b), ~(~vec3<i32>(10011i, -3565i, 0i)) << (vec3<u32>(8742u, 47235u, reverseBits(u_input.d)) % vec3<u32>(32u)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), false))));
    global2 = firstLeadingBit(vec2<u32>(4294967295u, u_input.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-var_0.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -545f)), _wgslsmith_f_op_f32(var_1.a.x - 871f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a.x, _wgslsmith_div_f32(arg_2.a.a.x, arg_2.a.a.x), _wgslsmith_f_op_f32(abs(-755f)), _wgslsmith_f_op_f32(ceil(-927f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, -1109f, arg_2.a.a.x, arg_2.a.a.x)) * vec4<f32>(-550f, _wgslsmith_div_f32(255f, 526f), arg_2.a.a.x, arg_2.a.a.x))), _wgslsmith_mult_i32(arg_2.a.b, _wgslsmith_add_i32(~1i, 29470i)) ^ -33398i);
    let var_1 = vec4<f32>(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 319f)))))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(func_3(1u))));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(select(arg_0.wx >> (vec2<u32>(4294967295u, 89623u) % vec2<u32>(32u)), vec2<i32>(0i, -7631i), arg_1 & true) ^ -(~arg_0.yw), reverseBits(countOneBits(arg_0.yy >> (vec2<u32>(4294967295u, 9494u) % vec2<u32>(32u)))), arg_0.yz), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(min(var_0.b, arg_2.a.b), countOneBits(-10380i)), _wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -44516i), arg_0.zy))), -(arg_0.yw ^ arg_0.xx) >> (~(~vec2<u32>(u_input.c, u_input.a)) % vec2<u32>(32u))));
    let var_3 = arg_2;
    let var_4 = Struct_1(vec4<f32>(-1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a.a.x, arg_2.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-300f + 252f), _wgslsmith_f_op_f32(exp2(var_1.x))))), _wgslsmith_f_op_f32(-var_0.a.x)), var_3.a.b);
    return ~9733i;
}

fn func_1() -> vec2<i32> {
    global0 = 1616f;
    global2 = min(firstLeadingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 78756u), vec2<u32>(u_input.a, global2.x)), ~vec2<u32>(73705u, global2.x), vec2<bool>(true, true))) | vec2<u32>(reverseBits(global2.x), global2.x), vec2<u32>(~global2.x, 4294967295u));
    global1 = array<vec4<i32>, 7>();
    let var_0 = u_input.a;
    let var_1 = 0u;
    return vec2<i32>(func_2(global1[_wgslsmith_index_u32(var_0, 7u)], select(true, true, any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, 778f, -1000f, -228f)), _wgslsmith_div_i32(2147483647i, -17437i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(global2.x, 7u)], vec4<i32>(u_input.b, -4761i, u_input.b, -2147483647i)), vec4<i32>(u_input.b, 39554i, 4290i, u_input.b)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0 ^ var_0, 53404u), 7u)]), ~global1[_wgslsmith_index_u32(1u, 7u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(89768i, 1i)), _wgslsmith_add_vec2_i32(min(vec2<i32>(-41093i, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(37439i, u_input.b), vec2<i32>(30205i, u_input.b))))), min(max(func_1(), select(vec2<i32>(u_input.b, u_input.b), firstLeadingBit(vec2<i32>(u_input.b, -1i)), any(vec2<bool>(false, true)))), ~reverseBits(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))), vec2<bool>(true, true));
    var var_1 = Struct_2(Struct_1(vec4<f32>(888f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1291f, -339f) + _wgslsmith_f_op_f32(step(1000f, 557f))), 1492f, 1000f), 1i));
    let var_2 = _wgslsmith_f_op_f32(func_3(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global2.x, u_input.a, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(10603u, global2.x, u_input.c), vec3<u32>(0u, u_input.c, 85769u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, global2.x, u_input.a), vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.c, global2.x, 0u))), vec3<u32>(_wgslsmith_div_u32(global2.x, u_input.d), global2.x, u_input.c)))));
    global1 = array<vec4<i32>, 7>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(345f, _wgslsmith_div_f32(2464f, -1062f), -218f, var_2) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_1.a.a.x, 606f, var_1.a.a.x), var_1.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.a) + var_1.a.a) - _wgslsmith_f_op_vec4_f32(-var_1.a.a))), _wgslsmith_mult_i32(2147483647i, var_1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1000f, -2350f));
}

