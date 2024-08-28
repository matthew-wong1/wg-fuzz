struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec4<i32>(firstTrailingBit(-u_input.b), 0i, -1i, countOneBits(3575i));
    var var_1 = vec4<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.d) << (u_input.d % 32u), ~1u, u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, u_input.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(89162u, 1u), vec2<u32>(u_input.d, 11610u))), ~vec2<u32>(4294967295u, 4294967295u))) | abs(vec4<u32>(u_input.d, u_input.d, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(28822u, 0u, 88748u, u_input.d), vec4<u32>(77337u, 103014u, u_input.d, 1u))), select(~30155u, 1u, true)));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, var_1.x, var_1.x, 26486u)), ~select(vec4<u32>(u_input.d, var_1.x, 1512u, 45915u), vec4<u32>(62976u, var_1.x, 30425u, var_1.x), true)), firstLeadingBit(vec4<u32>(reverseBits(1u), ~u_input.d ^ var_1.x, var_1.x, u_input.d)));
    var_1 = var_2;
    return !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), true)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec4<bool>(all(select(!(!vec4<bool>(true, arg_0, true, arg_0)), vec4<bool>(u_input.d == u_input.d, true | arg_0, false, true), true)), true, any(select(!vec2<bool>(arg_0, arg_0), !select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), false), !(!vec2<bool>(arg_0, false)))), !all(select(vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))));
    var_0 = func_3();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1187f - 1711f) - 230f))), _wgslsmith_f_op_f32(f32(-1f) * -985f), -535f);
    var var_2 = _wgslsmith_dot_vec4_i32(select(-(~(-vec4<i32>(u_input.c, -1i, u_input.a.x, -472i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(-37252i, u_input.b, u_input.a.x, 27815i), vec4<i32>(u_input.c, select(u_input.b, u_input.b, true), 25170i, u_input.b << (arg_1.a % 32u))), select(select(!vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, var_0.x, var_0.x), any(vec3<bool>(false, arg_0, var_0.x))), !(!vec4<bool>(false, arg_0, arg_0, true)), vec4<bool>(var_0.x, false, true, true))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(select(52644i, u_input.b, var_0.x), firstTrailingBit(-2147483647i), -u_input.b, 1i), -vec4<i32>(u_input.c, -2147483647i, u_input.c, 0i) << (reverseBits(vec4<u32>(24276u, arg_1.a, 0u, 89577u)) % vec4<u32>(32u)))));
    var_2 = -17912i;
    return Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, -2147483647i, u_input.c), u_input.c & 12168i), -abs(u_input.c)), -(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 18299i))), vec2<u32>(~(~arg_1.a), u_input.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = -48784i;
    var var_1 = !(!((false || arg_1.x) | true)) || (_wgslsmith_f_op_f32(f32(-1f) * -349f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(781f)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(741f, -1000f)) + -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 998f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1546f, -1395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(525f)) * _wgslsmith_f_op_f32(958f * 1000f))), _wgslsmith_f_op_f32(round(653f))), _wgslsmith_f_op_f32(-1f));
    let var_3 = vec4<i32>(arg_0.a, arg_0.a, -(arg_0.a >> (_wgslsmith_sub_u32(47873u, ~arg_3.a) % 32u)), -33221i);
    let var_4 = 519f;
    return arg_0.b.x;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_3(firstLeadingBit(func_4(func_2(false, Struct_3(u_input.d)), vec2<bool>(true, true), func_2(false, Struct_3(1u)), Struct_3(u_input.d)) >> (0u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-975f + _wgslsmith_f_op_f32(abs(-167f))) * -603f))));
    var_0 = Struct_3(~select(_wgslsmith_mod_u32(u_input.d, u_input.d), ~(~u_input.d), false));
    var var_2 = Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_1)) + -1305f) >= _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(1045f * var_1))));
    let var_3 = var_2.a;
    return Struct_2(any(select(vec4<bool>(var_2.a, true, 4294967295u == u_input.d, var_2.a), !select(vec4<bool>(var_2.a, true, var_2.a, false), vec4<bool>(true, var_2.a, var_2.a, true), false), !var_2.a || (var_1 > -744f))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_3(reverseBits(~min(reverseBits(1u), _wgslsmith_mult_u32(arg_2.b.x, 0u))));
    let var_1 = vec2<bool>(arg_1.a, true);
    let var_2 = ~abs(~_wgslsmith_mult_vec4_u32(~vec4<u32>(90197u, 27470u, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(56681u, 22028u, 899u, 41046u), vec4<u32>(0u, 1u, 1u, u_input.d), vec4<u32>(var_0.a, 4294967295u, u_input.d, 30213u))));
    var var_3 = !vec2<bool>(var_1.x != (_wgslsmith_mod_u32(arg_2.b.x, 4294967295u) == _wgslsmith_dot_vec3_u32(var_2.xxx, var_2.wwx)), arg_1.a == all(select(vec3<bool>(false, arg_1.a, true), vec3<bool>(var_1.x, false, false), vec3<bool>(false, true, true))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f - -193f)) - _wgslsmith_f_op_f32(floor(-578f))), _wgslsmith_f_op_f32(-1f))));
    return vec2<i32>(max(18399i, abs(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(arg_0.x, -1i, 13126i))))), firstTrailingBit(_wgslsmith_mod_i32(-1136i, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a, arg_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(37561i, _wgslsmith_mult_i32(-1i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), func_5(reverseBits(vec4<i32>(1i, u_input.b, u_input.c, -1i)), func_1(1i, vec4<i32>(u_input.c, -4500i, u_input.b, -37361i), -1i), Struct_1(21046i, vec2<u32>(1u, u_input.d)), ~vec2<i32>(u_input.c, u_input.a.x)))), ~(i32(-1i) * 0i));
    let var_1 = Struct_1(_wgslsmith_add_i32(~1i, ~3829i), vec2<u32>(0u, ~firstLeadingBit(0u >> (u_input.d % 32u))));
    let var_2 = -vec4<i32>(countOneBits(-41819i), 1i, func_2(true, Struct_3(33578u)).a, firstLeadingBit(-2147483647i));
    var var_3 = -_wgslsmith_add_vec3_i32(max(vec3<i32>(_wgslsmith_add_i32(35293i, var_0.x), _wgslsmith_div_i32(42374i, u_input.c), -1i), -var_0), abs(vec3<i32>(var_0.x, i32(-1i) * -43612i, _wgslsmith_mult_i32(u_input.c, var_1.a))));
    var var_4 = false;
    var var_5 = _wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(~var_1.b.x, ~u_input.d)) & u_input.d, 32778u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec3<u32>(93515u, u_input.d, 1u), vec3<u32>(1u, u_input.d, 1u), vec3<bool>(true, false, false)))), vec2<f32>(628f, 1463f), -1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-712f)), _wgslsmith_f_op_f32(ceil(1350f)))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(385f, -1608f)), 158f)), _wgslsmith_f_op_f32(abs(1608f)))));
}

