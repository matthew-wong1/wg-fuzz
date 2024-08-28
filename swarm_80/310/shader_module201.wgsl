struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, true, true, true, false, false, false, false, false, true, false, true, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = array<bool, 13>();
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(48930u, 4294967295u), vec2<u32>(51112u, 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49621u, 1u), vec2<u32>(40966u, 0u)), _wgslsmith_sub_u32(4294967295u, 5330u))) << (_wgslsmith_mult_u32(~1u, firstLeadingBit(_wgslsmith_mod_u32(~83404u, ~64791u))) % 32u);
    global0 = array<bool, 13>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1171f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1003f), -2218f)));
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    global0 = array<bool, 13>();
    var var_0 = firstTrailingBit(26785i) & _wgslsmith_dot_vec4_i32(~vec4<i32>(17902i, ~u_input.a.x, -30762i | arg_0, arg_0), firstTrailingBit(u_input.a));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(min(~1u, 99919u), 2152u), 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, -374f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(113f, 987f, arg_1, 498f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), 892f, _wgslsmith_f_op_f32(select(1100f, arg_1, true)), 1f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(301f, arg_1)), 651f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 768f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) - _wgslsmith_f_op_f32(551f + arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f - _wgslsmith_f_op_f32(abs(623f))) * arg_1)));
    return min(_wgslsmith_clamp_u32(49718u, ~4294967295u, ~firstTrailingBit(~57336u)), 15045u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> vec2<i32> {
    global0 = array<bool, 13>();
    var var_0 = -1i;
    let var_1 = 85378u;
    let var_2 = arg_0;
    global0 = array<bool, 13>();
    return vec2<i32>(-_wgslsmith_add_i32(abs(~1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-3410i, u_input.a.x), vec2<i32>(u_input.a.x, arg_0.c.x)) & (var_2.b | arg_0.c.x)), -_wgslsmith_sub_i32(~(-1i), 15453i | u_input.a.x) | reverseBits(~u_input.a.x));
}

fn func_1() -> vec2<i32> {
    global0 = array<bool, 13>();
    let var_0 = -(~countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-30877i, 1i), u_input.a.ww) << (~vec2<u32>(4294967295u, 47804u) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(926f)) - _wgslsmith_div_f32(771f, -275f));
    let var_2 = false;
    var var_3 = Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(24791u, 2297u, 16029u, 4294967295u))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-28949i, 1i), _wgslsmith_add_i32(var_0.x, 1893i | u_input.a.x)) | (_wgslsmith_clamp_i32(~u_input.a.x, -1i, -5999i) | _wgslsmith_sub_i32(max(1i, var_0.x), select(u_input.a.x, 1i, true))), func_4(Struct_1(~select(vec4<u32>(1u, 68466u, 57234u, 15667u), vec4<u32>(41116u, 4294967295u, 0u, 21562u), false), -20687i, _wgslsmith_add_vec2_i32(~u_input.a.zy, firstLeadingBit(var_0)), 27692u, vec3<bool>(var_1 < var_1, any(vec3<bool>(false, var_2, false)), true & var_2)), vec2<u32>(~(~61881u), max(1u, func_2(u_input.a.x, 877f))), 981f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_div_f32(var_1, 1385f), _wgslsmith_f_op_f32(-var_1)))), 31808u, select(!vec3<bool>(false, all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])), any(vec4<bool>(false, global0[_wgslsmith_index_u32(40078u, 13u)], var_2, false))), select(vec3<bool>(var_0.x == u_input.a.x, var_2, true), vec3<bool>(true, global0[_wgslsmith_index_u32(~1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), all(vec4<bool>(var_2, var_2, var_2, false))), vec3<bool>(true, !select(global0[_wgslsmith_index_u32(8579u, 13u)], var_2, false), any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(60326u, 13u)], true, true), vec4<bool>(var_2, false, var_2, true), vec4<bool>(global0[_wgslsmith_index_u32(11630u, 13u)], false, var_2, global0[_wgslsmith_index_u32(33341u, 13u)]))))));
    return _wgslsmith_sub_vec2_i32(var_0, ~max(var_3.c, -_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_3.c.x), u_input.a.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    var var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(78238u, 4294967295u, 75927u, 47116u), vec4<u32>(1u, 3635u, 1665u, 75916u)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(18159u, 26476u, 21954u, 12213u), vec4<u32>(44899u, 32767u, 30401u, 35013u)), max(vec4<u32>(65068u, 30181u, 1u, 64609u), vec4<u32>(0u, 1u, 66949u, 10257u)))), u_input.a.x, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(min(~vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.wz ^ func_1()), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 6236i), vec2<i32>(2147483647i, u_input.a.x)), countOneBits(vec2<i32>(10483i, u_input.a.x))), 2147483647i)), ~abs(2175u), select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(26883u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(58485u, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(48388u, 13u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], true)), !vec3<bool>(global0[_wgslsmith_index_u32(19636u, 13u)], global0[_wgslsmith_index_u32(55036u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), false), select(!vec3<bool>(global0[_wgslsmith_index_u32(6736u, 13u)], true, global0[_wgslsmith_index_u32(33734u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(16088u, 13u)], false, true), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(16243u, 13u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(8842u, 13u)], global0[_wgslsmith_index_u32(129742u, 13u)], global0[_wgslsmith_index_u32(29435u, 13u)])))), vec3<bool>(any(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(23983u, 13u)])) & !global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(func_2(u_input.a.x, -446f), 13u)]), !(u_input.a.x >= u_input.a.x)));
    var var_1 = vec4<f32>(376f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1634f, 891f, _wgslsmith_f_op_f32(select(483f, 3282f, global0[_wgslsmith_index_u32(var_0.d, 13u)])) == _wgslsmith_f_op_f32(-2117f * 182f))), -655f), 1147f, -275f);
    var var_2 = Struct_1(vec4<u32>(select(min(~23810u, var_0.a.x), var_0.d, true), 4294967295u, ~var_0.d, 26937u), ~countOneBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.b, -2147483647i), -var_0.c.x)), select(func_1(), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.x, 24099i), u_input.a.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)) < var_1.x), 4294967295u, var_0.e);
    var var_3 = Struct_1(~var_2.a, _wgslsmith_mod_i32(u_input.a.x, 0i >> (firstTrailingBit(var_2.d) % 32u)) ^ 0i, max(vec2<i32>(-89096i, countOneBits(var_2.b)), vec2<i32>(var_0.c.x, 1i & var_2.b)), 39769u, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, (((var_2.d | 1u) & 1u) | ~(~1u)) | (var_2.d & 0u));
}

