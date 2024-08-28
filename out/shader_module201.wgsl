struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<i32, 27> = array<i32, 27>(21124i, 15397i, 1i, -16938i, -3137i, -1i, -1i, 34111i, 13735i, 5356i, 13152i, 1i, 48497i, 0i, 1i, -23102i, 17451i, i32(-2147483648), -54181i, 35748i, -56892i, -70061i, 2147483647i, 41679i, -46343i, -1i, 0i);

var<private> global2: vec4<u32> = vec4<u32>(16076u, 4294967295u, 27378u, 0u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(i32(-1i) * -31820i, -1i)), ~select(vec2<i32>(global1[_wgslsmith_index_u32(80197u, 27u)], global1[_wgslsmith_index_u32(29713u, 27u)]), vec2<i32>(global1[_wgslsmith_index_u32(arg_1.x, 27u)], 10042i), !vec2<bool>(arg_0, arg_0))), 1i, _wgslsmith_f_op_f32(step(-1873f, 530f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~global2.x, min(24193u, 1u)), ~(abs(vec4<u32>(62026u, global2.x, 82708u, 35732u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 3398u, 4294967295u, arg_1.x), vec4<u32>(1u, global2.x, u_input.d, 35383u)))), 27u)]);
    let var_1 = global0[_wgslsmith_index_u32(abs(~countOneBits(u_input.a.x)), 30u)];
    var var_2 = 0i;
    var var_3 = global0[_wgslsmith_index_u32(~select(global2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.wzw, vec3<u32>(2205u, global2.x, arg_1.x) & vec3<u32>(1u, arg_1.x, global2.x)), ~arg_1.x ^ (arg_1.x << (arg_1.x % 32u))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_0), arg_0))), 30u)];
    var_2 = -30197i;
    return 456f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> vec2<u32> {
    let var_0 = Struct_1(((vec2<i32>(global1[_wgslsmith_index_u32(0u, 27u)], u_input.c) << (_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(30170u, 0u)) % vec2<u32>(32u))) & select(vec2<i32>(0i, u_input.c) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), max(vec2<i32>(global1[_wgslsmith_index_u32(4316u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.c)), vec2<bool>(arg_0, false))) >> (global2.zx % vec2<u32>(32u)), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f)), 31035i);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(global2.zx, ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.a.zz, u_input.a.xx))), u_input.a.x, _wgslsmith_add_u32(global2.x, firstTrailingBit(5734u)));
    let var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d, 1i, -9655i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 27u)], var_0.d, u_input.e, u_input.c), vec4<i32>(var_0.b, 25277i, global1[_wgslsmith_index_u32(0u, 27u)], 0i)), vec4<i32>(var_0.d, global1[_wgslsmith_index_u32(1u, 27u)], 0i, u_input.e)), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, var_1.x, var_1.x, 82276u)), select(vec4<u32>(global2.x, 71120u, var_1.x, u_input.d), vec4<u32>(global2.x, var_1.x, 37182u, 17710u), vec4<bool>(true, false, arg_2, arg_0))), 27u)], u_input.e, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a.x, -1i, 1i), firstLeadingBit(-5457i)), 0i)), 1f, -15830i);
    global1 = array<i32, 27>();
    var var_3 = _wgslsmith_f_op_f32(abs(var_0.c));
    return vec2<u32>(19610u, firstLeadingBit(countOneBits(~min(30487u, 1718u))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = func_4(23990i <= u_input.c, -398f, -679f != _wgslsmith_f_op_f32(func_3(!(!arg_0.x), global2.xx >> (reverseBits(vec2<u32>(1u, 22855u)) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(943f - -471f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-215f, -1111f) - _wgslsmith_f_op_f32(-671f + 125f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1665f, -230f) * 606f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, vec2<u32>(var_0.x, 32169u)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1333f), _wgslsmith_f_op_f32(f32(-1f) * -2429f), -1442f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-429f, 211f)))))));
    var var_2 = _wgslsmith_f_op_f32(sign(-656f));
    return _wgslsmith_add_i32(-(-30812i << (_wgslsmith_dot_vec2_u32(~global2.zy, global2.ww) % 32u)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(~abs(56064u), 27u)]) ^ global1[_wgslsmith_index_u32(firstLeadingBit(~0u), 27u)]);
}

fn func_1() -> bool {
    let var_0 = Struct_1(~vec2<i32>(i32(-1i) * -u_input.e, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], 23366i, 2147483647i, global1[_wgslsmith_index_u32(u_input.b, 27u)]), -vec4<i32>(global1[_wgslsmith_index_u32(2623u, 27u)], 57589i, u_input.c, 4942i))), 8950i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-374f, 451f)))), _wgslsmith_f_op_f32(-1f)), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(60685u, global2.x), 27u)]);
    let var_1 = Struct_1(vec2<i32>(var_0.d, ~func_2(vec3<bool>(true, false, true))), var_0.a.x, _wgslsmith_f_op_f32(var_0.c * var_0.c), select(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.d, var_0.a.x) | _wgslsmith_mod_i32(u_input.c, var_0.a.x), global1[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_mult_u32(35369u, 41729u)), 27u)]), select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), !all(vec3<bool>(true, false, true)), true && all(vec4<bool>(false, false, true, false)))));
    global1 = array<i32, 27>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, false, false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) || true), vec4<bool>(true == !func_1(), false, any(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 27u)] != 1i, false)), select(any(vec4<bool>(false, true, true, true)), true, true) | !(u_input.e <= u_input.e)), select(vec4<bool>(true, true, func_1(), any(vec4<bool>(true, false, false, false)) | all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x <= 0u, true, all(vec2<bool>(true, true)), select(true, true, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))));
    global1 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_f32(round(-1096f));
    var var_2 = Struct_1(select((vec2<i32>(-1i) * -vec2<i32>(-38752i, 1849i)) & -vec2<i32>(u_input.c, u_input.c), reverseBits(_wgslsmith_add_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 27u)], u_input.c), vec2<i32>(-2147483647i, -34959i), var_0.x), select(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, 1i), true))), var_0.yx), -10412i, var_1, 1i);
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_add_i32(func_2(!var_0.zzw), -14184i), func_2(select(var_0.yxz, !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.yzy))), _wgslsmith_clamp_i32(var_2.b, _wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(38616u, 27u)], -16474i, var_2.a.x), vec4<i32>(global1[_wgslsmith_index_u32(13568u, 27u)], 45031i, var_2.b, -16428i), vec4<bool>(var_0.x, true, true, false))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 76857i, 0i, -14639i), vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 27u)], 26229i, 19904i, u_input.c)) >> (reverseBits(vec4<u32>(u_input.a.x, 0u, 0u, 47160u)) % vec4<u32>(32u))), 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))))), ~(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * _wgslsmith_f_op_f32(457f * var_3.c)) * _wgslsmith_f_op_f32(-var_3.c)), 670f, var_3.c));
}

