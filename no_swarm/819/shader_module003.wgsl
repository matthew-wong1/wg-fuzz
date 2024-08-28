struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), select(select(vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), vec2<bool>(true, true), true)));
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    var var_1 = !(!((u_input.d == u_input.d) | all(vec4<bool>(false, false, false, var_0.x))) & arg_0.a);
    var var_2 = !select(select(select(vec3<bool>(arg_0.a, false, arg_0.a), select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, false, true), true), true || arg_0.a), vec3<bool>(false, true, false), var_0.x), !(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, true))), !select(!vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, arg_0.a), !var_0.x));
    return _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(5036u, 24u)], -global0[_wgslsmith_index_u32(1u, 24u)]);
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = -1007f;
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    var var_1 = Struct_1(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(u_input.d, u_input.d, 2147483647i)), ~vec3<i32>(u_input.d, u_input.d, u_input.d) >> (reverseBits(u_input.a.wzz) % vec3<u32>(32u))) ^ vec3<i32>(u_input.d, countOneBits(~0i), _wgslsmith_add_i32(-1i, u_input.d) & reverseBits(-1i)), 836f);
    let var_2 = Struct_4(arg_0.x, ~4294967295u, func_3(Struct_5(false | !arg_0.x)), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 74317u), 1u, u_input.b, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(55622u, 0u, u_input.b, u_input.b), vec4<u32>(56927u, u_input.c, 1u, 24891u)), 0u)));
    return Struct_4(true, u_input.c, _wgslsmith_sub_i32(1i, u_input.d), u_input.a << (var_2.d % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1627f);
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    var_0 = _wgslsmith_f_op_f32(floor(-295f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-391f))), _wgslsmith_f_op_f32(round(-254f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-830f - 1135f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(select(631f, 945f, arg_0.a))))));
    return Struct_1((-select(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(arg_0.c, 49427i, -63758i), arg_0.a) >> ((vec3<u32>(4294967295u, arg_0.b, 4294967295u) & (u_input.a.yzw >> (vec3<u32>(u_input.a.x, arg_0.d.x, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(14195i, 76005i, arg_0.c), vec3<i32>(-33635i, 2147483647i, 26128i))), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -2147483647i, arg_0.c), min(vec3<i32>(arg_0.c, -864i, u_input.d), vec3<i32>(u_input.d, -1i, -61746i)))), 1078f);
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 24>();
    var var_0 = ~(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(11517u, 0u, u_input.c)), 20678u) >> (u_input.b % 32u));
    var var_1 = arg_0.a.zy;
    var var_2 = u_input.a;
    global0 = array<vec2<i32>, 24>();
    return -501f;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_4(func_2(vec4<bool>(false, true, false, false))))), -1410f, 1f), vec3<f32>(-1700f, _wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(568f)) + -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1280f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f)), false))));
    global0 = array<vec2<i32>, 24>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-822f, _wgslsmith_f_op_f32(abs(690f))) * -399f);
    return u_input.d;
}

fn func_6(arg_0: i32, arg_1: vec2<u32>) -> StorageBuffer {
    global0 = array<vec2<i32>, 24>();
    var var_0 = Struct_5(all(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1710f * 1048f), _wgslsmith_f_op_f32(f32(-1f) * -867f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1673f, -381f), vec2<f32>(-369f, -479f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1840f, 457f) * vec2<f32>(-373f, -2683f)) * vec2<f32>(1f, 1f)))))));
    var var_2 = Struct_4(!var_0.a, min(func_2(select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, true, true), func_2(vec4<bool>(true, var_0.a, var_0.a, var_0.a)).a)).b, firstLeadingBit(1u)), u_input.d >> (firstTrailingBit(0u) % 32u), min(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(43343u, arg_1.x, arg_1.x, arg_1.x), u_input.a), abs(~u_input.a.x), arg_1.x, arg_1.x)));
    let var_3 = Struct_3(_wgslsmith_div_u32(_wgslsmith_mod_u32(53234u, arg_1.x), 0u << (~(var_2.b | var_2.d.x) % 32u)), ~vec3<u32>(4294967295u & var_2.b, _wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(u_input.c, 4294967295u, arg_1.x, var_2.b)), arg_1.x & 42919u) << (u_input.a.xzz % vec3<u32>(32u)), -(~(firstLeadingBit(-35902i) | var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) + -1747f) * _wgslsmith_f_op_f32(1000f * -741f))));
    return StorageBuffer(var_2.d.x, var_2.b & (~u_input.c | firstLeadingBit(37494u)), (arg_1.x & (20435u | ~arg_1.x)) >> (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 79528u), 55865u ^ var_2.b) % 32u), _wgslsmith_div_vec4_i32(vec4<i32>(-26019i, -11592i, var_2.c, arg_0) << (vec4<u32>(12360u, var_3.b.x, 10563u, var_3.b.x) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -1i, ~(-1i), -var_2.c, -u_input.d)) ^ -_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_3.c, u_input.d, -2147483647i, u_input.d)), -vec4<i32>(arg_0, var_3.c, arg_0, var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = reverseBits(~47396u);
    global0 = array<vec2<i32>, 24>();
    var var_2 = vec3<bool>(true, !(u_input.d != 1i), var_0);
    var var_3 = _wgslsmith_f_op_f32(ceil(1954f));
    global0 = array<vec2<i32>, 24>();
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1162f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(773f - -1000f), _wgslsmith_f_op_f32(-363f - -1687f))) * _wgslsmith_f_op_f32(max(-1202f, 372f)))), _wgslsmith_f_op_f32(-192f + -195f));
    let x = u_input.a;
    s_output = func_6(~firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, 0i, u_input.d) ^ func_1(var_0)), reverseBits(vec2<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(36103u, 39734u), u_input.b))));
}

