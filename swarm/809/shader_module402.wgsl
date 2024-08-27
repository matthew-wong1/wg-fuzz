struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-852f))));
    var var_1 = 4850u;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-780f, 687f) + _wgslsmith_f_op_f32(trunc(-122f))))) + _wgslsmith_f_op_f32(var_0 + var_0))));
    return vec2<bool>(all(vec4<bool>(true, ~4294967295u < global0.a, true, all(vec4<bool>(false, false, true, false)))), true);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global0.b.x;
    let var_1 = !select(func_3(), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(func_3().x, any(vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_2 = Struct_1(arg_3.x, vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, abs(-1i)), global0.b.x, _wgslsmith_clamp_i32(-global0.b.x ^ _wgslsmith_mod_i32(global0.b.x, 16545i), u_input.a, _wgslsmith_add_i32(~arg_0.b.x, -7523i)), -2147483647i));
    let var_3 = -632f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_div_f32(-285f, var_3)))))));
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(~((-53177i << (select(4294967295u, 4294967295u, true) % 32u)) & arg_2.b.x), global0.b.x, arg_2.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(global0.b.wyw, u_input.b.wzw, any(vec3<bool>(false, false, false))), _wgslsmith_mult_vec3_i32(firstTrailingBit(global0.b.wzy), u_input.b.wwx)), 0i));
    var var_1 = func_2(Struct_1(6675u, firstTrailingBit(abs(vec4<i32>(arg_2.b.x, -29638i, -2147483647i, arg_0.x)))), ~4294967295u, arg_2, ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(global0.a, 1u, global0.a, 0u)), vec4<u32>(~4294967295u, func_2(arg_2, 1u, arg_2, vec4<u32>(1u, 47851u, 1u, 1u)).a, ~arg_2.a, _wgslsmith_mod_u32(30766u, arg_2.a))));
    return func_2(Struct_1(61063u << (firstTrailingBit(countOneBits(global0.a)) % 32u), u_input.b), ~4294967295u, Struct_1(arg_2.a, vec4<i32>(var_1.b.x, ~_wgslsmith_add_i32(arg_0.x, var_1.b.x), 7199i, max(global0.b.x | 1i, var_1.b.x))), ~vec4<u32>(var_1.a, ~(var_1.a ^ 0u), ~_wgslsmith_mult_u32(10668u, 54279u), var_1.a));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = -u_input.b.xxy;
    let var_1 = select(vec3<bool>(any(vec4<bool>(func_3().x, true, true, any(vec2<bool>(false, false)))), false, any(vec4<bool>(true, true, true, true))), !(!vec3<bool>(false, any(vec2<bool>(true, false)), true)), all(vec2<bool>(true, any(vec4<bool>(false, false, false, false)))) & select(true, false, true));
    var var_2 = vec3<f32>(511f, _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_3);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1599f + _wgslsmith_f_op_f32(-arg_3)));
    var var_4 = ~_wgslsmith_mult_u32(abs(1u), 0u);
    return _wgslsmith_div_i32(-abs(_wgslsmith_mult_i32(abs(var_0.x), 1i)), -_wgslsmith_sub_i32((-1i >> (0u % 32u)) ^ u_input.a, i32(-1i) * -66241i));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_1(global0.a, vec4<i32>(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2400f, 1364f, -800f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, -433f, -1258f))), Struct_1(max(50084u, global0.a), firstLeadingBit(vec4<i32>(2147483647i, 27032i, 5286i, 2147483647i))), func_4(-u_input.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(835f, 868f, -320f))), func_2(Struct_1(1u, vec4<i32>(-1i, global0.b.x, -31824i, u_input.a)), global0.a, Struct_1(global0.a, vec4<i32>(u_input.b.x, 0i, global0.b.x, global0.b.x)), vec4<u32>(0u, 56605u, global0.a, 0u))), 149f), 1i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec2_i32(global0.b.zz, vec2<i32>(40846i, u_input.a))), global0.b.zz)));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(28877u, global0.a, 5480u)), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global0.a, 1u), firstTrailingBit(vec3<u32>(global0.a, 27872u, global0.a))) << (~vec3<u32>(42835u, 0u, 18577u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 4294967295u, 77312u), vec3<u32>(global0.a, var_0.a, 1u)), firstLeadingBit(vec3<u32>(0u, var_0.a, 0u))));
    var var_2 = Struct_1(var_0.a, ~firstLeadingBit(u_input.b));
    let var_3 = vec4<i32>(13513i, -23909i, global0.b.x, _wgslsmith_add_i32(~u_input.a, -min(var_0.b.x, global0.b.x) >> (select(0u, ~var_2.a, true) % 32u)));
    global0 = func_4(var_0.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, 678f, -1000f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(420f, 267f, -547f), vec3<f32>(755f, 1741f, -944f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -1000f, 247f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1164f, 1000f, 1332f))))))), func_4(_wgslsmith_add_vec4_i32((global0.b >> (vec4<u32>(var_2.a, global0.a, var_1.x, var_1.x) % vec4<u32>(32u))) & min(vec4<i32>(-2147483647i, -1i, var_3.x, -59178i), global0.b), ~vec4<i32>(0i, var_3.x, -20633i, var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -926f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, -2483f, -1000f) * vec3<f32>(-932f, -567f, 859f))))), func_2(Struct_1(~var_1.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-3080i, var_2.b.x, -2147483647i, 2147483647i), vec4<i32>(var_0.b.x, global0.b.x, var_0.b.x, 24292i))), ~global0.a, var_0, vec4<u32>(global0.a ^ 1u, var_2.a, 6205u, var_1.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(539f)), -125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -992f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + 230f))));
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(global0.a) << (~1u % 32u), _wgslsmith_add_u32(global0.a, global0.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global0.a), vec2<u32>(4294967295u, 39697u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1887u, global0.a, global0.a), vec3<u32>(global0.a, 0u, global0.a)) | ~vec3<u32>(1u, global0.a, 21807u), vec3<u32>(reverseBits(global0.a), 1u, _wgslsmith_mult_u32(global0.a, global0.a)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~1u), ~_wgslsmith_add_u32(6313u, 1u), 22935u), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(6781u, global0.a, 0u, 21460u)), vec4<u32>(global0.a, 1854u, global0.a, 4294967295u)), firstTrailingBit(96087u), global0.a)), (-1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x)))) == (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), 775f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_div_f32(arg_2.x, 971f))));
    let var_1 = var_0;
    var var_2 = arg_3.x;
    var_2 = all(vec4<bool>(2147483647i < global0.b.x, arg_0, true, true));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(abs(_wgslsmith_mod_u32(~firstLeadingBit(global0.a), _wgslsmith_div_u32(countOneBits(global0.a), ~61137u))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-31580i, -2147483647i), -1i, -global0.b.x, 2147483647i) >> (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.a, global0.a, 56689u), vec4<u32>(27689u, global0.a, global0.a, 1u))) % vec4<u32>(32u)), abs(u_input.b)));
    let var_0 = Struct_1(_wgslsmith_mod_u32(min(~_wgslsmith_mod_u32(0u, global0.a), 1u), select(26510u, global0.a, true)), ~u_input.b);
    var var_1 = vec4<bool>(select(true, true, true), 1u < global0.a, 1i > func_6(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(func_1(true)), vec4<bool>(true, true, var_0.b.x != -41527i, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))) && false);
    var var_2 = ~abs(global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec4<i32>(i32(-1i) * -u_input.a, -3412i, ~u_input.a, -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_1(true)).x, -523f)), -929f, _wgslsmith_f_op_f32(-1f)), func_2(var_0, _wgslsmith_div_u32(1u, 4294967295u) | var_0.a, Struct_1(global0.a, var_0.b), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, var_0.a, global0.a, var_0.a), vec4<u32>(0u, var_0.a, 4294967295u, var_0.a))))).b.x, vec2<i32>(var_0.b.x, u_input.a), _wgslsmith_f_op_f32(909f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(609f, -120f))))));
}

