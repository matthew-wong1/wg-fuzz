struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(26459u, 0u), vec2<u32>(4294967295u, 1050u), vec2<u32>(27u, 0u), vec2<u32>(27463u, 56373u), vec2<u32>(19153u, 40205u), vec2<u32>(18416u, 71545u), vec2<u32>(0u, 10526u), vec2<u32>(97428u, 4294967295u), vec2<u32>(40266u, 4294967295u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, 1285f)))) >= _wgslsmith_f_op_f32(-920f - _wgslsmith_f_op_f32(f32(-1f) * -611f))), true);
    let var_1 = select(-vec2<i32>(arg_0, countOneBits(1i)), u_input.e, var_0.x);
    var var_2 = !(var_0.x & true);
    global0 = array<vec2<u32>, 9>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -265f);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1353f, -520f, var_3, 1000f) - vec4<f32>(var_3, var_3, -226f, var_3)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, 158f, var_3, 2797f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 810f, var_3, var_3) + vec4<f32>(var_3, 1040f, 274f, var_3)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3, -1378f, var_3, 484f))), false))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = -33223i;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(-12819i));
    let var_2 = Struct_2(Struct_1(-2122f, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, arg_0.x)))), 361f, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_i32(-1i, -1118i, -1i))).x), select(firstTrailingBit(vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(17483u, 0u, 16099u), vec3<bool>(true, all(vec3<bool>(true, false, false)), true)), vec4<u32>(0u, 20239u, u_input.a.x, countOneBits(~u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, 8281i), u_input.b), -u_input.b, -38263i)), Struct_1(644f, vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(min(-1995f, 595f))), _wgslsmith_div_f32(-788f, _wgslsmith_div_f32(arg_0.x, -936f))), vec3<u32>(~(4294967295u ^ u_input.d.x), u_input.a.x, 0u & _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.yz)), countOneBits(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(52693u, 9u)], u_input.a.zy), u_input.d.x, 1u)), ~(-2147483647i)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)) == select(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), true, true), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(max(1i, 61401i), _wgslsmith_mod_i32(u_input.b, u_input.e.x), u_input.b), ~(-56933i)), vec3<u32>(4421u, u_input.d.x, u_input.d.x) | _wgslsmith_div_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(countOneBits(u_input.d), u_input.d)));
    var var_3 = !vec3<bool>(true, true, var_2.c);
    var_0 = u_input.b;
    return var_2;
}

fn func_1() -> vec4<u32> {
    let var_0 = -33749i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(611f)) * _wgslsmith_f_op_f32(f32(-1f) * -1603f)) * 299f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, _wgslsmith_f_op_f32(abs(328f)), _wgslsmith_f_op_f32(abs(-1000f))))), u_input.d, vec4<u32>(~3013u, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), u_input.a.x, u_input.a.x), -(i32(-1i) * -(~var_0)));
    let var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.a), _wgslsmith_f_op_f32(var_1.a * var_1.a)))), var_1.a, _wgslsmith_f_op_f32(-var_1.b.x)));
    global0 = array<vec2<u32>, 9>();
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(var_2.a.b - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_2.b.b.x * var_2.a.b.x))), -1290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a) * -198f))));
    return var_2.a.d;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(arg_0.a, -1000f, 751f))))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, 71024u), u_input.d), ~(~(vec4<u32>(15661u, u_input.d.x, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 0u, arg_0.d.x, u_input.d.x) % vec4<u32>(32u)))), arg_0.e), func_2(_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a))))).a, any(vec4<bool>(true, true, true, true)) || func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(f32(-1f) * -796f))).c, u_input.e.x, select(vec3<u32>(_wgslsmith_sub_u32(~u_input.a.x, abs(21700u)), ~_wgslsmith_div_u32(86321u, arg_0.d.x), ~(~55967u)), arg_0.c, !vec3<bool>(true, select(true, true, false), arg_0.a < arg_0.a)));
    var var_1 = Struct_1(arg_0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_0.a.b.x, 1000f))).b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-509f, 1257f, var_0.a.a) - var_0.b.b)))), abs(min(vec3<u32>(1u, var_0.a.d.x, 1u) >> (u_input.a % vec3<u32>(32u)), u_input.d) << ((arg_0.c & abs(var_0.b.d.xzy)) % vec3<u32>(32u))), _wgslsmith_add_vec4_u32(func_1(), vec4<u32>(~0u, 60059u, ~4294967295u, ~var_0.b.d.x)), countOneBits(-23834i));
    global0 = array<vec2<u32>, 9>();
    let var_2 = u_input.c.x ^ ~(var_0.d << (arg_0.d.x % 32u));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1827f, var_0.b.b.x, 364f)) * vec3<f32>(-571f, 396f, 1198f)), var_0.b.b), arg_0.c, ~(vec4<u32>(arg_0.d.x, var_1.c.x, 59267u, var_0.b.c.x) | var_0.a.d) >> (~(~vec4<u32>(u_input.d.x, 1u, 47551u, 54545u)) % vec4<u32>(32u)), u_input.e.x), arg_0, any(select(vec3<bool>(true, any(vec2<bool>(false, var_0.c)), var_1.e <= 2147483647i), vec3<bool>(!var_0.c, true, var_2 != var_0.d), vec3<bool>(false, any(vec4<bool>(var_0.c, var_0.c, var_0.c, false)), all(vec4<bool>(true, var_0.c, var_0.c, var_0.c))))), ~u_input.e.x, vec3<u32>(1u, select(_wgslsmith_add_u32(arg_0.d.x, u_input.a.x), 50857u, 703f >= var_1.a), arg_0.c.x) << (var_0.a.c % vec3<u32>(32u)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.e, -2147483647i, u_input.b, var_2), select(vec4<i32>(var_0.a.e, 26234i, u_input.e.x, var_2), vec4<i32>(1i, -2147483647i, 0i, -1i), vec4<bool>(var_0.c, true, var_0.c, false))), -23070i), u_input.e) <= 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(any(vec2<bool>(false, true)) | true, false, true, true));
    var var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), func_4(Struct_1(-363f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, -307f, -1000f)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x), vec3<u32>(51520u, u_input.a.x, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 1u, 4294967295u), u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), 4294967295u > u_input.d.x), _wgslsmith_mod_vec4_u32(func_1(), _wgslsmith_sub_vec4_u32(vec4<u32>(75366u, u_input.d.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d.x, 5654u, 61681u, u_input.d.x))), i32(-1i) * -56682i)), all(select(vec4<bool>(var_0, all(vec4<bool>(var_0, false, var_0, var_0)), any(vec3<bool>(var_0, var_0, true)), var_0), select(vec4<bool>(var_0, true, true, var_0), select(vec4<bool>(var_0, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(var_0, var_0, var_0, var_0)), !var_0), var_0)));
    var var_2 = abs(_wgslsmith_add_u32(u_input.a.x, abs(u_input.a.x & u_input.a.x) >> (4294967295u % 32u)));
    var var_3 = ~(~firstTrailingBit(~_wgslsmith_mod_u32(u_input.d.x, u_input.a.x)));
    var var_4 = ~select(57965i, u_input.c.x, true);
    let var_5 = 60865u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -237f, 1031f, -1233f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, -1183f, 1000f, 1203f) * vec4<f32>(-874f, -300f, 859f, -1010f)))))), vec4<f32>(886f, 1215f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(1464f - -496f))), _wgslsmith_f_op_f32(-767f * _wgslsmith_f_op_f32(floor(916f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-159f, -993f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1069f)) + 461f)), -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.e.x, -2147483647i), u_input.c.x, i32(-1i) * -1i, _wgslsmith_div_i32(12071i, 13691i)), vec4<i32>(u_input.e.x, ~45978i, 0i, -11797i)));
}

