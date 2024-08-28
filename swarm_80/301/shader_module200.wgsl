struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec3<i32> {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    let var_0 = 1u;
    return ~vec3<i32>(u_input.a.x, u_input.a.x, -43750i) << (~vec3<u32>(4294967295u, 0u, (4294967295u ^ var_0) ^ 4294967295u) % vec3<u32>(32u));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    let var_0 = ~(-17514i & (~7560i | _wgslsmith_clamp_i32(-arg_1.x, _wgslsmith_add_i32(arg_1.x, 1i), firstLeadingBit(arg_1.x))));
    let var_1 = false;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, _wgslsmith_f_op_f32(-arg_0), arg_0, 413f)), !select(false != var_1, true, all(vec2<bool>(true, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_0 * 986f)))) + _wgslsmith_f_op_f32(max(-270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))));
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_sub_u32(37119u, _wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), abs(vec4<u32>(select(1u, 78651u, var_1), abs(4294967295u), 11990u, 4294967295u))));
    return 14061i;
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    var var_0 = _wgslsmith_add_vec4_i32(max(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, ~2147483647i), u_input.a.x, _wgslsmith_add_i32(func_3(429f, vec3<i32>(u_input.a.x, -40220i, 33893i)), u_input.a.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -39597i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), global0[_wgslsmith_index_u32(29416u, 20u)]), reverseBits(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))), _wgslsmith_mult_vec4_i32(select(-vec4<i32>(6766i, u_input.a.x, u_input.a.x, 2147483647i), -vec4<i32>(3324i, u_input.a.x, -33603i, u_input.a.x), arg_0.b), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 14841i), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x))))), ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a.x, -6719i, 19902i, 57613i)), select(vec4<i32>(20166i, 33928i, u_input.a.x, 7132i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(arg_0.b, false, true, true))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 48458i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 38395i, 0i))));
    let var_1 = abs(vec2<u32>(1u, 1u));
    var var_2 = arg_0;
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_4 {
    global0 = array<vec3<bool>, 20>();
    var var_0 = -855f;
    let var_1 = vec4<bool>(arg_2.e.x & !(arg_2.d | all(global0[_wgslsmith_index_u32(78784u, 20u)])), !(!any(vec3<bool>(arg_2.e.x, false, arg_2.e.x))) & arg_2.d, true, false);
    var var_2 = vec3<i32>(arg_2.b.x, 11847i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_2.b, arg_2.b), arg_2.b), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_0))), u_input.a.x << (select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(29579u, 50009u)), !arg_2.d) % 32u)));
    var_0 = 468f;
    return Struct_4(Struct_3(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(ceil(arg_1.x)), arg_2.c, _wgslsmith_f_op_f32(-680f * -202f)), false), 278f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: f32) -> bool {
    global0 = array<vec3<bool>, 20>();
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = u_input.a.x;
    global0 = array<vec3<bool>, 20>();
    var var_2 = !(false & !any(!vec4<bool>(false, true, arg_1.a.b, arg_1.a.b)));
    return any(!vec3<bool>(!arg_1.a.b, arg_1.a.b, all(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~(~(~vec4<u32>(0u, 4802u, 14992u, 4294967295u)))));
    var_0 = ~(~_wgslsmith_div_vec4_u32(abs(~vec4<u32>(var_0.x, 0u, 1u, 1u)), vec4<u32>(var_0.x, ~4651u, var_0.x, 0u)));
    var_0 = vec4<u32>(20590u, var_0.x, 35050u, var_0.x);
    let var_1 = vec2<bool>(false, func_5(vec3<f32>(1f, 1f, 1f), func_4(-func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, -464f, -683f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-631f, -926f, -1000f) - vec3<f32>(-203f, -1000f, 837f))), Struct_2(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 11646i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i), _wgslsmith_f_op_f32(-902f * 125f), func_2(Struct_3(vec4<f32>(459f, 1000f, -900f, -1876f), true)), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, -570f, 403f) + vec3<f32>(-1543f, 498f, -1118f))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(47687i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 10798i, -2147483647i) ^ vec4<i32>(11025i, u_input.a.x, -32802i, u_input.a.x)), abs(-vec4<i32>(u_input.a.x, 16254i, 32824i, -50875i))), 1488f));
    var_0 = min(~(~(~vec4<u32>(53940u, var_0.x, var_0.x, var_0.x)) >> ((max(vec4<u32>(0u, 18283u, var_0.x, 8998u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)) << (vec4<u32>(86233u, var_0.x, 4294967295u, 15280u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 0u), vec4<u32>(63619u, 10095u, 1u, var_0.x))), ~vec4<u32>(1u, 0u, 82811u, 1u), 68681i >= (-u_input.a.x ^ 36617i)));
    var var_2 = var_0.xwy;
    let var_3 = func_4(vec3<i32>(countOneBits(~u_input.a.x), u_input.a.x, -38735i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-157f, _wgslsmith_f_op_f32(floor(1804f)), _wgslsmith_f_op_f32(ceil(278f)))))), Struct_2(_wgslsmith_clamp_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(u_input.a.x, 50504i, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -652f, var_1.x, !vec3<bool>(var_1.x & var_1.x, true, var_1.x || var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-597f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1207f)))), _wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(abs(761f))), 412f)).a;
    let var_4 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(867f - -820f), var_3.a.x, _wgslsmith_div_f32(var_3.a.x, -1000f), -1000f), true), 853f);
    let var_5 = vec4<i32>(u_input.a.x, abs(~select(u_input.a.x, u_input.a.x, var_3.b)) & -40372i, 11660i << (var_0.x % 32u), ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(7025u);
}

