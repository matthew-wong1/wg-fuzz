struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<i32, 1>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(-16594i, 1i)), Struct_2(vec2<i32>(0i, i32(-2147483648))), Struct_2(vec2<i32>(1i, 29556i)), Struct_2(vec2<i32>(-6865i, 1i)), Struct_2(vec2<i32>(9093i, 0i)), Struct_2(vec2<i32>(20171i, -1042i)), Struct_2(vec2<i32>(-26453i, 1i)));

var<private> global3: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(421u, 0u, 28821u), vec3<u32>(1u, 4294967295u, 32603u), vec3<u32>(65673u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 31144u));

var<private> global4: Struct_2 = Struct_2(vec2<i32>(115i, -5413i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_1(32619u, vec3<bool>(arg_2.x <= _wgslsmith_f_op_f32(-arg_1.e.x), arg_1.b.x, true), arg_1.c, global3[_wgslsmith_index_u32(arg_1.a, 5u)], _wgslsmith_f_op_vec2_f32(arg_2 - arg_2));
    let var_1 = vec2<f32>(1070f, arg_1.e.x);
    global2 = array<Struct_2, 7>();
    let var_2 = !arg_1.b.xx;
    global1 = array<i32, 1>();
    return _wgslsmith_f_op_f32(f32(-1f) * -316f);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    global1 = array<i32, 1>();
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(1u, abs(select(4294967295u, 4204u, false)), 44968u)) <= 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), -1000f), _wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(arg_0.x - -1230f)), _wgslsmith_f_op_f32(arg_0.x + arg_1), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(step(-1204f, -621f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_2(-38844i, Struct_1(17437u, vec3<bool>(false, false, false), arg_1, global3[_wgslsmith_index_u32(4294967295u, 5u)], vec2<f32>(127f, arg_0.x)), arg_0.wz)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-549f - 287f)))), true)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(378f - arg_1), arg_1, arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_1))), arg_0, arg_1 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(560f)) * 574f))));
    global0 = array<Struct_2, 25>();
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, firstLeadingBit(14000u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, true, false)), true), arg_1, max(~(select(vec3<u32>(0u, 39874u, 122571u), global3[_wgslsmith_index_u32(49412u, 5u)], vec3<bool>(true, true, true)) & global3[_wgslsmith_index_u32(~0u, 5u)]), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(82610u, 0u, 0u), vec3<u32>(1u, 54849u, 20394u)), ~abs(56353u), reverseBits(~18930u))), vec2<f32>(var_1.x, arg_1));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(arg_1, var_2.c))))), arg_1);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = ~30458i;
    var var_1 = 1f;
    global4 = Struct_2(_wgslsmith_mult_vec2_i32(global4.a, global4.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1189f + -382f)), _wgslsmith_f_op_f32(func_3(vec4<f32>(1812f, -177f, _wgslsmith_div_f32(-881f, 1668f), _wgslsmith_f_op_f32(func_2(-19420i, Struct_1(66949u, vec3<bool>(false, true, true), 188f, global3[_wgslsmith_index_u32(42362u, 5u)], vec2<f32>(175f, -1432f)), vec2<f32>(398f, -612f)))), -363f))));
    global4 = global0[_wgslsmith_index_u32(31825u, 25u)];
    return Struct_1(_wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25856u, 4294967295u, 28587u), vec4<u32>(108211u, 16962u, 4294967295u, 11369u)) | reverseBits(33124u), 4294967295u), firstTrailingBit(~4294967295u)), !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, -36382i >= var_0), all(vec4<bool>(false, true, false, true)) | all(vec3<bool>(false, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-634f, var_2.x))), var_2.x, false))), ~global3[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(505f, 392f))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    return global4.a.x;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> StorageBuffer {
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(1u), 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1, func_1(u_input.a).a, 1u, _wgslsmith_mult_u32(13421u, arg_1)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1, 1u, 1u, 75845u)), vec4<u32>(arg_1, arg_1, arg_1, arg_1) << (vec4<u32>(4294967295u, arg_1, 17171u, 0u) % vec4<u32>(32u))))), 7u)];
    global0 = array<Struct_2, 25>();
    let var_0 = func_1(func_4(func_1(max(0i, 0i)), -arg_0, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), true))));
    global3 = array<vec3<u32>, 5>();
    global4 = Struct_2(countOneBits(vec2<i32>(~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_1, 1u)], -3887i, arg_0), u_input.a)));
    return StorageBuffer(_wgslsmith_mult_vec4_i32(firstTrailingBit(select(_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(global4.a.x, arg_0, -6040i, 20350i)), reverseBits(vec4<i32>(2147483647i, 38954i, arg_2.x, -2147483647i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, var_0.b.x, true), true))), arg_2), firstTrailingBit(select(4735u, 0u, var_0.b.x)), arg_2 & arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    let var_0 = Struct_2(vec2<i32>(global4.a.x, 46374i));
    global2 = array<Struct_2, 7>();
    global4 = Struct_2(global4.a);
    let var_1 = reverseBits(20282u);
    let var_2 = min(~_wgslsmith_mult_u32(var_1, _wgslsmith_div_u32(1473u, 18487u)), 4294967295u);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(global4.a.x), _wgslsmith_sub_i32(var_0.a.x, global4.a.x) & -25696i, -16925i, reverseBits(-47162i)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-18281i, 0i), 1i, -42310i, i32(-1i) * -40149i), _wgslsmith_sub_vec4_i32(-vec4<i32>(global4.a.x, -14458i, 17437i, var_0.a.x), ~vec4<i32>(global4.a.x, -65785i, -1i, 8163i)))), ~abs(var_1), vec4<i32>(~(countOneBits(-1i) & ~u_input.a), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(var_0.a.x, global4.a.x)), var_0.a), func_4(func_1(u_input.a), _wgslsmith_div_i32(_wgslsmith_add_i32(40960i, global4.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(26814i, var_0.a.x, global4.a.x), vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x))), vec4<bool>(all(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, true)), false)), 2147483647i));
}

