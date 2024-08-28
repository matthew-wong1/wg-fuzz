struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(0u, 12112u, 96609u), vec2<i32>(20820i, 92780i), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 48289u, 29721u), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(false, false)), Struct_1(vec3<u32>(16913u, 0u, 1u), vec2<i32>(0i, -63274i), vec2<bool>(true, false)), Struct_1(vec3<u32>(42315u, 31819u, 4294967295u), vec2<i32>(22547i, -1i), vec2<bool>(false, true)), Struct_1(vec3<u32>(56193u, 0u, 4294967295u), vec2<i32>(13751i, -13678i), vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 0u, 43929u), vec2<i32>(2147483647i, 0i), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 77763u, 64264u), vec2<i32>(-39847i, 2147483647i), vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 2875u), vec2<i32>(20387i, -1i), vec2<bool>(true, true)), Struct_1(vec3<u32>(57468u, 1u, 39084u), vec2<i32>(-19942i, 0i), vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 20786u, 0u), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 33864u, 4294967295u), vec2<i32>(-28610i, -1i), vec2<bool>(false, false)), Struct_1(vec3<u32>(2396u, 4294967295u, 28635u), vec2<i32>(14639i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec3<u32>(31848u, 26788u, 0u), vec2<i32>(i32(-2147483648), -16177i), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 82327u, 1u), vec2<i32>(-33459i, 0i), vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 1u, 1u), vec2<i32>(i32(-2147483648), 52796i), vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 1u, 30795u), vec2<i32>(25179i, 0i), vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 55439u, 1u), vec2<i32>(-28885i, -11997i), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 12624u, 17395u), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false)), Struct_1(vec3<u32>(65882u, 4294967295u, 64964u), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(-20204i, 0i), vec2<bool>(false, false)), Struct_1(vec3<u32>(28143u, 40608u, 69099u), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec3<u32>(28608u, 12784u, 0u), vec2<i32>(-1i, -18263i), vec2<bool>(false, false)), Struct_1(vec3<u32>(0u, 1u, 0u), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)), Struct_1(vec3<u32>(41039u, 1u, 1u), vec2<i32>(20500i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 7499u, 74689u), vec2<i32>(-40894i, 0i), vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 7867u, 0u), vec2<i32>(6921i, 0i), vec2<bool>(false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 60280u), vec2<i32>(-33761i, 2147483647i), vec2<bool>(false, true)), Struct_1(vec3<u32>(34642u, 49675u, 1u), vec2<i32>(-62140i, -8990i), vec2<bool>(true, false)), Struct_1(vec3<u32>(3159u, 31227u, 4294967295u), vec2<i32>(1i, -26576i), vec2<bool>(false, true)), Struct_1(vec3<u32>(4491u, 43585u, 7777u), vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, false)));

var<private> global3: array<bool, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: u32) -> vec4<i32> {
    global3 = array<bool, 25>();
    var var_0 = Struct_5(global2[_wgslsmith_index_u32(11370u, 31u)], 34151u, Struct_2(12767u));
    let var_1 = ~arg_0;
    global2 = array<Struct_1, 31>();
    var_0 = Struct_5(Struct_1(~(~(var_0.a.a << (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_add_vec2_i32(var_0.a.b, vec2<i32>(-1i) * -var_0.a.b), var_0.a.c), select(1u, _wgslsmith_sub_u32(6347u, _wgslsmith_clamp_u32(1u, u_input.a & var_1, ~var_0.b)), global0.x | !(var_0.a.c.x && true)), Struct_2(1u));
    return countOneBits(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(var_0.a.b ^ var_0.a.b, var_0.a.b)), firstLeadingBit(25578i), _wgslsmith_clamp_i32(var_0.a.b.x, var_0.a.b.x, -1i), var_0.a.b.x));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 31>();
    let var_0 = reverseBits(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(func_3(1u, global3[_wgslsmith_index_u32(1u, 25u)], u_input.a, 7433u), vec4<i32>(2147483647i, 1483i, 0i, -19721i)), countOneBits(0i), reverseBits(-46658i))));
    var var_1 = ~var_0;
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(24128u, 31u)], Struct_1(min(~vec3<u32>(u_input.a, u_input.a, 21815u) | (vec3<u32>(4294967295u, u_input.a, 4294967295u) >> (vec3<u32>(41124u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a, 53600u, u_input.a), vec3<u32>(43770u, 1u, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1705u), vec3<u32>(u_input.a, 1u, 54077u)))), firstTrailingBit(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_0, 0i)), -vec2<i32>(var_0, var_0))), select(select(select(global0.xz, vec2<bool>(global0.x, true), true), select(global0.xz, vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global0.x)), global0.x != global3[_wgslsmith_index_u32(u_input.a, 25u)]), global0.yy, vec2<bool>(all(vec3<bool>(global0.x, global0.x, global3[_wgslsmith_index_u32(u_input.a, 25u)])), true))));
    let var_3 = firstLeadingBit(~(~(u_input.a << (47108u % 32u)))) & u_input.a;
    return global2[_wgslsmith_index_u32(u_input.a, 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_4(Struct_1(~(vec3<u32>(108819u, 0u, 21412u) ^ vec3<u32>(u_input.a, u_input.a, 1u)), vec2<i32>(arg_0.b.x, _wgslsmith_add_i32(arg_0.b.x, ~(-2147483647i))), vec2<bool>(!any(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)], arg_0.c.x, true)), true)), Struct_1(~(~arg_0.a) << (arg_0.a % vec3<u32>(32u)), _wgslsmith_sub_vec2_i32(-arg_0.b, ~(~arg_0.b)), vec2<bool>(true, arg_0.b.x == _wgslsmith_add_i32(37523i, arg_0.b.x))));
    global2 = array<Struct_1, 31>();
    var var_1 = min(_wgslsmith_dot_vec3_u32(arg_0.a, var_0.a.a << (vec3<u32>(~u_input.a, var_0.b.a.x, ~arg_0.a.x) % vec3<u32>(32u))), 11990u);
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return ~(var_0.a.a.x ^ ~(_wgslsmith_mult_u32(arg_0.a.x, 0u) >> ((0u | var_0.a.a.x) % 32u)));
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-165f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-791f, 1f, true)), _wgslsmith_f_op_f32(f32(-1f) * -275f)))))));
    global0 = vec4<bool>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 14443u)), ~24094u), func_4(func_2(), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-741f, 743f, -886f, -2034f), vec4<f32>(324f, -945f, 1991f, 302f))))) >= func_2().a.x, !(!global0.x), true, any(select(select(vec2<bool>(global0.x, global0.x), global0.zz, !vec2<bool>(global0.x, global0.x)), !(!vec2<bool>(false, global0.x)), select(global0.ww, global0.xz, all(vec4<bool>(true, global0.x, global0.x, true))))));
    global2 = array<Struct_1, 31>();
    let var_0 = vec3<bool>(func_2().a.x != ~1u, global0.x, true);
    let var_1 = select(global0.zz, var_0.zz, !(!var_0.xz));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-276f, 347f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-777f, -298f))), vec2<f32>(_wgslsmith_f_op_f32(min(2037f, 942f)), -123f), !any(global0.yzx))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)), 714f)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_5 {
    var var_0 = vec3<bool>(true, true, !(!global0.x));
    let var_1 = Struct_1(vec3<u32>(abs(arg_1.a), arg_1.a, arg_1.a), vec2<i32>(-49852i, abs(_wgslsmith_mod_i32(-arg_0.x, _wgslsmith_mod_i32(19365i, arg_0.x)))), !vec2<bool>(any(vec2<bool>(var_0.x, false)), true));
    var var_2 = !var_0.zz;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1459f, _wgslsmith_f_op_f32(-arg_3.x), 1398f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x - arg_3.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2275f, 841f, arg_3.x, 1026f) * vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 547f)) + vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 681f, -746f, 1000f) + vec4<f32>(884f, -1077f, -514f, 756f)))))));
    global2 = array<Struct_1, 31>();
    return Struct_5(Struct_1(var_1.a, arg_0.yw, var_1.c), var_1.a.x, Struct_2(var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(vec4<i32>(countOneBits(1i), _wgslsmith_sub_i32(1i, -2177i), ~1i, -2147483647i) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 8923u, u_input.a, u_input.a) & vec4<u32>(4294967295u, 55792u, u_input.a, 1u), vec4<u32>(3787u, u_input.a, 3466u, u_input.a)) % vec4<u32>(32u))), Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(64032u, u_input.a, u_input.a) | ~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, countOneBits(u_input.a)))), Struct_2(abs(u_input.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, 2268f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(4294967295u)))))));
    global3 = array<bool, 25>();
    global0 = !vec4<bool>(false, global0.x, any(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(60311u, 25u)], true, true)), global0.x);
    let var_1 = global0.x;
    let var_2 = ~(~u_input.a);
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-55215i, var_0.a.b.x, var_0.a.b.x), abs(abs(vec3<i32>(-35636i, 2147483647i, 0i) | vec3<i32>(-2147483647i, -2147483647i, var_0.a.b.x))) & -min(~vec3<i32>(-12891i, var_0.a.b.x, var_0.a.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.a.b.x, 1i), vec3<i32>(27596i, -10804i, -13555i))));
    global0 = vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(99827u, max(12848u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(27753u, u_input.a), _wgslsmith_dot_vec3_u32(var_0.a.a, var_0.a.a)))), 25u)], func_5(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, 1i, var_3.x, -2147483647i) & vec4<i32>(2147483647i, var_3.x, var_3.x, -1i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(20539i, var_0.a.b.x, -63441i, var_0.a.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.b.x, var_3.x, var_3.x, -27926i), vec4<i32>(var_0.a.b.x, -21889i, 1i, -8736i), vec4<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, -2147483647i))), vec4<i32>(56718i, var_0.a.b.x, var_3.x, -2147483647i) >> (vec4<u32>(33782u, 4294967295u, 57349u, var_0.b) % vec4<u32>(32u))), func_5(~vec4<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_3.x), var_0.c, Struct_2(func_4(Struct_1(vec3<u32>(var_0.a.a.x, u_input.a, 1u), vec2<i32>(2147483647i, var_0.a.b.x), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], false)), vec4<f32>(1644f, -1927f, -772f, 166f))), vec2<f32>(587f, 1000f)).c, func_5(vec4<i32>(1i, max(29461i, var_0.a.b.x), 15621i, -var_0.a.b.x), var_0.c, func_5(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_3.x, -38219i, var_3.x), vec4<i32>(var_3.x, 0i, var_0.a.b.x, var_0.a.b.x)), var_0.c, var_0.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1625f, 1084f), vec2<f32>(295f, 492f)))).c, vec2<f32>(_wgslsmith_f_op_f32(min(791f, -116f)), _wgslsmith_f_op_f32(min(-460f, 1000f)))).c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1000f + 1001f), _wgslsmith_f_op_f32(step(-1335f, 463f)))))).a.c.x, true, all(select(vec3<bool>(all(vec3<bool>(false, var_0.a.c.x, var_0.a.c.x)), global3[_wgslsmith_index_u32(~4294967295u, 25u)], !var_0.a.c.x), vec3<bool>(true, false, global3[_wgslsmith_index_u32(18950u, 25u)]), false)));
    var var_4 = _wgslsmith_mult_u32(20454u, 23270u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(847f, -896f)))), -1898f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1029f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(648f, 132f, -464f), vec3<f32>(-1636f, -1425f, -138f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -989f), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(58716u))).x, _wgslsmith_f_op_f32(783f - -2034f))))));
}

