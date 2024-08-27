struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 13414u, 4294967295u);

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec2<i32>(-35963i, i32(-2147483648)), -2730f, 1i), Struct_3(vec2<i32>(-1i, -3613i), 436f, i32(-2147483648)), Struct_3(vec2<i32>(2147483647i, -21583i), -1044f, -1i), Struct_3(vec2<i32>(0i, 35422i), -672f, 0i), Struct_3(vec2<i32>(0i, 30520i), 1017f, 44886i), Struct_3(vec2<i32>(1i, -25607i), 1000f, 0i), Struct_3(vec2<i32>(18963i, 0i), -1226f, 2147483647i), Struct_3(vec2<i32>(1i, 2147483647i), -1517f, -3112i), Struct_3(vec2<i32>(0i, 21036i), -1000f, 80709i), Struct_3(vec2<i32>(i32(-2147483648), -13505i), -1934f, 15549i));

var<private> global4: f32 = 2525f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(-475f));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1130f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) + 934f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1239f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(813f, -1881f) * _wgslsmith_f_op_f32(select(468f, 186f, false)))), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1255f, -505f, 239f), vec3<f32>(-537f, 1622f, 1197f), vec3<bool>(true, true, true))))))));
    return u_input.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(f32(-1f) * -580f)), -firstTrailingBit(_wgslsmith_clamp_i32(func_3(), u_input.a << (global1.x % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.a))));
    global0 = array<vec3<i32>, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, 1399f, var_0.a) + vec3<f32>(var_0.a, var_0.a, 609f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-384f, -1137f, 474f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1578f, var_0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1962f, 1494f, var_0.a)))))));
    let var_2 = Struct_3(countOneBits(~(-firstLeadingBit(vec2<i32>(2147483647i, -1i)))), _wgslsmith_f_op_f32(floor(1000f)), var_0.b);
    global0 = array<vec3<i32>, 16>();
    return firstLeadingBit(-43225i);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1142f, 288f)) + 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-658f, -896f))))), _wgslsmith_f_op_f32(sign(581f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -578f), 207f)))));
    global1 = vec4<u32>(1u, global1.x, 1u, _wgslsmith_add_u32(global1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, 31656u) | vec2<u32>(global1.x, 53955u), ~(~vec2<u32>(global1.x, global1.x)))));
    var var_1 = _wgslsmith_mult_u32(31457u, 0u) != _wgslsmith_dot_vec3_u32(select(~(~global1.wzx), vec3<u32>(1u, global1.x >> (4294967295u % 32u), ~global1.x), any(select(arg_3, arg_3, false))), ~(~vec3<u32>(35018u, global1.x, global1.x)));
    let var_2 = u_input.a;
    global1 = firstLeadingBit(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, global1.x, 4294967295u, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 12750u), vec4<u32>(0u, global1.x, 75930u, global1.x)))) & min(vec4<u32>(global1.x, ~(~global1.x), abs(4503u) | min(global1.x, global1.x), ~35940u | min(4294967295u, global1.x)), (reverseBits(vec4<u32>(global1.x, global1.x, 13983u, global1.x)) ^ ~vec4<u32>(global1.x, global1.x, 4294967295u, 11133u)) << (((vec4<u32>(global1.x, global1.x, 13371u, 63805u) >> (vec4<u32>(0u, global1.x, 0u, global1.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, 1u), vec4<u32>(4294967295u, global1.x, global1.x, 87656u))) % vec4<u32>(32u)));
    return firstTrailingBit(~(63636u & (~global1.x & 26416u)));
}

fn func_1(arg_0: f32) -> i32 {
    global1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), any(vec3<bool>(false, true, false)), func_2(), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), firstLeadingBit(47407u), abs(_wgslsmith_div_u32(global1.x, global1.x))), global1.x | global1.x, select(31380u, (13946u | global1.x) | abs(53580u), u_input.a != abs(5439i)), 1u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, global1.x, 0u, 1u)), vec4<u32>(global1.x, global1.x, global1.x, 14827u)) | countOneBits(vec4<u32>(global1.x, 73737u, global1.x, global1.x)), ~vec4<u32>(reverseBits(14338u), global1.x, ~18785u, global1.x ^ global1.x)), firstLeadingBit(firstTrailingBit(select(reverseBits(vec4<u32>(4294967295u, 4294967295u, 64568u, 118066u)), ~vec4<u32>(45407u, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true)))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = true || (all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false))) & all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(false, false, false))));
    var_1 = !all(!vec4<bool>(false, arg_0 != -1332f, any(global2[_wgslsmith_index_u32(global1.x, 26u)]), true));
    return u_input.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec4_i32(select(select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 61214i, -68417i, 0i), ~vec4<i32>(-35613i, 0i, -1i, arg_0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.x, arg_0.x, var_0, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, 6832i, 1i), vec4<i32>(-13454i, var_0, var_0, arg_0.x)), -vec4<i32>(arg_0.x, u_input.a, -2147483647i, u_input.a)), !select(vec4<bool>(true, arg_3, true, arg_3), vec4<bool>(false, arg_3, false, arg_3), true)), vec4<i32>(-func_3(), ~_wgslsmith_clamp_i32(arg_0.x, arg_0.x, 2147483647i), abs(1i), -21777i), select(!vec4<bool>(true, arg_3, arg_3, arg_3), select(select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, true, false)), vec4<bool>(arg_3, arg_3, true, true), !vec4<bool>(false, false, arg_3, arg_3)), true)), _wgslsmith_mult_vec4_i32(firstLeadingBit(max(vec4<i32>(-1i, u_input.a, arg_0.x, -6999i), firstTrailingBit(vec4<i32>(-1i, -2147483647i, -1i, u_input.a)))), reverseBits(vec4<i32>(_wgslsmith_sub_i32(0i, var_0), 1i, 511i, reverseBits(9466i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(1068f)), _wgslsmith_div_f32(arg_1, -110f), -273f, _wgslsmith_f_op_f32(-763f * -426f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), -836f)), 1f, -1691f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -851f)), true))));
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(~global1.x, ~global1.x), global1.wz), reverseBits(abs(select(vec2<u32>(8225u, global1.x), ~global1.xz, true || arg_3))));
    return Struct_1(arg_1, reverseBits(-(u_input.a | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -48268i), var_2.xwy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = func_5(vec2<i32>(-abs(u_input.a), ~min(u_input.a, func_1(-135f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2647f - -544f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(2254f + _wgslsmith_f_op_f32(1924f + -557f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f + 569f) - _wgslsmith_f_op_f32(f32(-1f) * -551f))))), true);
    global1 = vec4<u32>(_wgslsmith_mod_u32(global1.x, ~global1.x), ~91145u, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global1.x, 37911u), ~0u, ~0u, global1.x) >> ((vec4<u32>(global1.x, global1.x, 87042u, global1.x) << ((vec4<u32>(1u, global1.x, global1.x, global1.x) ^ vec4<u32>(8514u, global1.x, 0u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>((global1.x & 21373u) | global1.x, 22404u & global1.x, ~firstLeadingBit(global1.x), ~0u)));
    var var_2 = _wgslsmith_mult_i32(-24147i, 1i);
    global2 = array<vec2<bool>, 26>();
    let var_3 = firstLeadingBit(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 3283u, 1u), global1.xwx, vec3<u32>(global1.x, global1.x, global1.x))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(global1.x, global1.x, global1.x)), global1.xwx), select(global1.zxy >> (vec3<u32>(1u, global1.x, 17475u) % vec3<u32>(32u)), ~vec3<u32>(global1.x, global1.x, global1.x), true)));
    let var_4 = !select(vec3<bool>(!any(global2[_wgslsmith_index_u32(1u, 26u)]), any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, u_input.a), vec2<i32>(var_1.b, u_input.a)), -1i) > u_input.a);
    let var_5 = vec4<bool>(var_4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) <= 260f, ~var_3.x <= var_3.x, any(global2[_wgslsmith_index_u32(max(~var_3.x, ~0u) << (37036u % 32u), 26u)]));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), (abs(func_2()) | var_1.b) ^ max(41221i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(-340f);
}

