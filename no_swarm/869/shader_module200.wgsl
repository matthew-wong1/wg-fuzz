struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<Struct_2, 11>();
    var var_0 = ~vec2<u32>(u_input.c.x, select(u_input.c.x, max(~4294967295u, _wgslsmith_add_u32(1u, 40562u)), any(vec3<bool>(true, true, true))));
    var var_1 = max(abs(firstTrailingBit(_wgslsmith_mult_i32(-1i, 1i)) >> (~(~var_0.x) % 32u)), -reverseBits(2147483647i));
    let var_2 = Struct_3(vec2<f32>(229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2816f)))))), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]);
    var_1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, _wgslsmith_mod_i32(-60151i, -2147483647i), -31158i), firstLeadingBit(abs(vec4<i32>(-12364i, 0i, 15995i, 1i)))), -(~select(1i, -2147483647i, all(vec3<bool>(true, false, true)))));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 11>();
    let var_0 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 6085u, u_input.d, 2983u << (u_input.c.x % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, u_input.b.x, 0u), vec4<u32>(65194u, u_input.b.x, 4294967295u, 1u))) ^ _wgslsmith_div_u32(~4294967295u, abs(9693u)), ~4294967295u), 11u)];
    var var_1 = !any(vec2<bool>(any(vec2<bool>(false, true)), true));
    let var_2 = vec4<i32>(~(-reverseBits(1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(~(-64637i), _wgslsmith_dot_vec2_i32(vec2<i32>(109246i, -2147483647i), vec2<i32>(2147483647i, 34711i)), any(vec3<bool>(false, arg_0.x, false))), 1i), ~(vec2<i32>(-1i, 1i) << (vec2<u32>(var_0.a, 28768u) % vec2<u32>(32u))) | -vec2<i32>(78753i, 0i)), 2147483647i, min(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 20607i, 8737i, 1i), ~vec4<i32>(-2147483647i, 0i, -2147483647i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), max(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2147483647i, -1i, 18038i, -1983i))), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 46052i), vec2<i32>(33571i, -54256i)) << ((0u ^ u_input.d) % 32u))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1794f, var_0.c)))))), global0[_wgslsmith_index_u32(15583u, 11u)]);
    return !select(select(select(!vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, true, true, false), select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, false, false, true), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, true, true, false), arg_0.x))), vec4<bool>(true, arg_0.x, false, any(select(arg_0, arg_0, arg_0))), all(!select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, true, false, true))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = array<Struct_2, 11>();
    var var_0 = Struct_3(arg_1.b.wx, Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(11137u, arg_2.x, u_input.b.x, 18591u)), ~arg_0), countOneBits(arg_2.x)), 922f, -1326f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2399f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), -703f);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1744f, var_0.a.x, _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.yzy)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)), _wgslsmith_f_op_f32(f32(-1f) * -592f), 268f))));
    let var_3 = arg_1;
    return vec3<u32>(u_input.d, arg_0.x, 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = abs(-(vec2<i32>(-1i) * -vec2<i32>(-33105i, -2147483647i)));
    let var_1 = func_5(vec4<u32>(firstTrailingBit(countOneBits(u_input.d ^ 4294967295u)), ~min(~u_input.d, u_input.b.x), 1u, ~_wgslsmith_mult_u32(45371u, u_input.d)), Struct_1(624f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1660f, -1053f, -580f, 524f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, 1000f, 783f, 2845f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, 494f, 221f, -671f)), true)), func_4(vec3<bool>(select(true, true, true), func_3(), true))), ~u_input.c.xz);
    var var_2 = select(func_4(!vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false)), true)).yw, vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(false, true)) | func_4(vec3<bool>(true, false, false)).x, true));
    var_2 = vec2<bool>(true, (var_0.x & abs(_wgslsmith_mod_i32(-2147483647i, var_0.x))) > _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, 2147483647i, 18730i, -2545i), reverseBits(vec4<i32>(-12186i, -2147483647i, var_0.x, 0i)), -vec4<i32>(1i, var_0.x, 1i, -1i)), vec4<i32>(var_0.x >> (u_input.d % 32u), 1i, -7678i, i32(-1i) * -45089i)));
    global0 = array<Struct_2, 11>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.d ^ _wgslsmith_mult_u32(1u, var_1.x)), var_1.x), 11u)];
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_1 = func_2();
    let var_2 = 147f;
    return Struct_1(723f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(251f, var_0.b)), 150f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1013f, 1072f) + _wgslsmith_f_op_f32(ceil(var_1.c))), var_0.c, _wgslsmith_f_op_f32(-var_2)))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(func_4(vec3<bool>(true, false, true)).xy), all(vec4<bool>(false, true, false, true)), true, true), func_4(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)).x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_0 = -15005i;
    var_0 = -(~(-2147483647i));
    let var_1 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1175f, 980f, 1736f)), vec3<f32>(-520f, -1799f, 546f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(450f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(562f)) - _wgslsmith_f_op_f32(trunc(477f))) * _wgslsmith_f_op_f32(step(1507f, _wgslsmith_f_op_f32(290f * 200f)))), -1000f), !vec3<bool>(true, true, func_6(func_1(), Struct_3(vec2<f32>(485f, 1000f), Struct_2(u_input.a, 665f, -551f)), false, func_1()))));
    let var_1 = Struct_2(6933u, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x))))), func_1().b.x));
    let var_2 = vec2<u32>(abs(_wgslsmith_add_u32(var_1.a, ~29635u)), 15327u);
    let var_3 = vec2<u32>(88371u, 63704u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(33996u, ~var_2.x), 1u, ~(~u_input.a | var_1.a)), vec3<u32>(max(_wgslsmith_mult_u32(var_2.x, reverseBits(u_input.d)), ~(u_input.b.x << (var_1.a % 32u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~var_3.x, 16154u), max(abs(var_3.x), ~0u)), ~_wgslsmith_mod_u32(59232u, _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_clamp_u32(var_1.a, ~(~(var_3.x & 0u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_3.x, var_1.a, 4294967295u), vec4<u32>(4294967295u, var_3.x, u_input.b.x, var_1.a) ^ vec4<u32>(u_input.a, var_3.x, 59362u, var_1.a)), var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -870f), 235f, _wgslsmith_f_op_f32(exp2(var_0.x))), min(1i, _wgslsmith_add_i32(-(22637i << (0u % 32u)), 1i)));
}

