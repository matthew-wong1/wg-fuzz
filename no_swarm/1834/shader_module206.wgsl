struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)));

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(11517u, 40946u, 7201u, 12170u), vec4<u32>(5920u, 32684u, 1u, 1u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(31930u, 0u, 49134u, 9693u), vec4<u32>(1u, 13286u, 4261u, 2765u), vec4<u32>(0u, 72974u, 15367u, 32533u), vec4<u32>(54472u, 51860u, 1u, 4294967295u), vec4<u32>(5143u, 10026u, 10235u, 4294967295u), vec4<u32>(0u, 17555u, 1u, 51978u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(69414u, 0u, 55255u, 4294967295u), vec4<u32>(0u, 11048u, 1u, 51308u));

var<private> global3: vec3<i32> = vec3<i32>(56544i, -1796i, i32(-2147483648));

var<private> global4: array<bool, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<f32> {
    var var_0 = ~vec2<u32>(4294967295u, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~4294967295u, ~1u)));
    let var_1 = false;
    var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(121142u, ~54624u) & ~vec2<u32>(var_0.x, 34774u), select((vec2<u32>(4294967295u, var_0.x) & vec2<u32>(53154u, 4294967295u)) >> (firstTrailingBit(vec2<u32>(0u, 28391u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.x, 38208u), vec2<u32>(var_0.x, var_0.x)) & vec2<u32>(90450u, var_0.x), var_1)), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), 26285u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.x, 24015u))));
    global0 = array<Struct_5, 5>();
    var var_2 = vec2<u32>(abs(~(~(~1u))), _wgslsmith_dot_vec3_u32(reverseBits(max(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 24039u)) ^ (vec3<u32>(4294967295u, 0u, 1u) << (vec3<u32>(4294967295u, var_0.x, 31356u) % vec3<u32>(32u)))), ~(~firstLeadingBit(vec3<u32>(103980u, var_0.x, 22833u)))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    var var_0 = !select(select(vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 11u)], all(vec4<bool>(global4[_wgslsmith_index_u32(61439u, 11u)], true, true, false)), global4[_wgslsmith_index_u32(~arg_1.d.x, 11u)]), !select(vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 11u)], true), vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a, 11u)], false, false), vec3<bool>(global4[_wgslsmith_index_u32(70435u, 11u)], global4[_wgslsmith_index_u32(arg_1.d.x, 11u)], global4[_wgslsmith_index_u32(arg_1.d.x, 11u)])), !global4[_wgslsmith_index_u32(min(25997u, arg_1.a), 11u)]), !vec3<bool>(true & global4[_wgslsmith_index_u32(arg_1.a, 11u)], true, global4[_wgslsmith_index_u32(~51736u, 11u)]), vec3<bool>(all(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_1.a, 11u)], global4[_wgslsmith_index_u32(1u, 11u)])), global4[_wgslsmith_index_u32(select(arg_1.d.x, arg_1.d.x, false) | arg_1.d.x, 11u)], true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1585f))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -718f), _wgslsmith_f_op_f32(exp2(1f)))), -519f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, -969f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(960f, 1612f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, -1451f) * vec2<f32>(1000f, -217f))))))));
    global4 = array<bool, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), var_0), Struct_3(4294967295u, global3.zz & vec2<i32>(53648i, 1i), vec3<i32>(1i, global3.x, 2147483647i), vec4<u32>(16767u, 91664u, 46366u, 0u)), vec4<f32>(_wgslsmith_div_f32(287f, 972f), var_0.x, _wgslsmith_f_op_f32(ceil(402f)), _wgslsmith_f_op_f32(-var_0.x)))) + 1f));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -810f) - var_0))));
    let var_3 = select(select(!select(select(vec3<bool>(arg_0, false, global4[_wgslsmith_index_u32(1135u, 11u)]), vec3<bool>(arg_0, arg_0, false), global4[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(true, true, true), arg_0), vec3<bool>(true, !any(vec2<bool>(false, false)), arg_0), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(20441u, 11u)]), !vec3<bool>(arg_0, false, arg_0), -334f <= var_1)), vec3<bool>(global4[_wgslsmith_index_u32(~(~abs(4294967295u)), 11u)], false, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, abs(1u)), vec3<u32>(1u, 1u, 1u)), 11u)]), select(!select(select(vec3<bool>(false, false, arg_0), vec3<bool>(global4[_wgslsmith_index_u32(15927u, 11u)], arg_0, global4[_wgslsmith_index_u32(11797u, 11u)]), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(false, global4[_wgslsmith_index_u32(34678u, 11u)], global4[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, global4[_wgslsmith_index_u32(12433u, 11u)])), any(vec2<bool>(false, true))), select(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 11u)]), !(!vec3<bool>(false, false, arg_0)), select(!vec3<bool>(global4[_wgslsmith_index_u32(12071u, 11u)], true, true), !vec3<bool>(global4[_wgslsmith_index_u32(51132u, 11u)], false, false), all(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 11u)], true, global4[_wgslsmith_index_u32(60709u, 11u)], global4[_wgslsmith_index_u32(0u, 11u)])))), vec3<bool>(any(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(global4[_wgslsmith_index_u32(13962u, 11u)], arg_0, global4[_wgslsmith_index_u32(39166u, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(true, arg_0, global4[_wgslsmith_index_u32(4294967295u, 11u)], arg_0))), true, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 11u)])));
    return Struct_3(~88337u, u_input.b.yz, u_input.b, global2[_wgslsmith_index_u32(firstTrailingBit(16969u), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 42627u;
    let var_1 = func_1(global4[_wgslsmith_index_u32(90697u, 11u)]);
    global3 = ~vec3<i32>(0i, func_1(!global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a, 3536u), 11u)]).c.x, firstLeadingBit(1i));
    let var_2 = Struct_4(select(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.d.x << (var_1.a % 32u), ~27226u), select(1u, 0u, global4[_wgslsmith_index_u32(0u, 11u)] != global4[_wgslsmith_index_u32(4294967295u, 11u)])), select(_wgslsmith_mod_u32(0u, 1u), ~63875u | _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(var_1.a, 12u)], global2[_wgslsmith_index_u32(var_1.d.x, 12u)]), true), var_1.a <= max(~10553u, 0u)));
    var var_3 = Struct_1(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(firstTrailingBit(63415u), 11u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, var_1.a), var_1.d.xz), var_1.d.xz), 11u)]), true, vec4<i32>(0i, -28817i << ((var_2.a >> (_wgslsmith_add_u32(1u, var_2.a) % 32u)) % 32u), _wgslsmith_dot_vec4_i32(-max(vec4<i32>(var_1.c.x, global3.x, var_1.b.x, u_input.a), vec4<i32>(global3.x, global3.x, 1i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 3206i, 0i, var_1.c.x), select(vec4<i32>(0i, u_input.b.x, -2147483647i, -25543i), vec4<i32>(-52283i, 0i, var_1.c.x, global3.x), true), vec4<i32>(global3.x, -15287i, global3.x, global3.x))), max(abs(min(u_input.a, var_1.c.x)), 785i)), vec4<u32>(~firstTrailingBit(~1u), 44924u, ~abs(37415u), var_1.d.x));
    var_0 = _wgslsmith_dot_vec2_u32(~var_3.d.zz, _wgslsmith_sub_vec2_u32(reverseBits(~_wgslsmith_div_vec2_u32(var_1.d.zx, vec2<u32>(var_1.d.x, 47964u))), var_3.d.ww));
    let var_4 = var_3.c.x;
    global3 = var_1.c;
    let var_5 = Struct_1(select(var_3.a, var_3.a, 61150u != ~var_3.d.x), var_3.a.x, vec4<i32>(u_input.a, select(select(var_1.c.x, var_1.c.x, true), 1i, false) ^ 2147483647i, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mod_i32(global3.x, var_3.c.x)), reverseBits(_wgslsmith_sub_i32(var_1.b.x, -1i))), _wgslsmith_clamp_i32(-4152i, func_1(!var_3.a.x).c.x, -(0i | var_3.c.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.d.x, 4294967295u, 28512u, var_2.a) ^ ~vec4<u32>(76207u, 22966u, var_3.d.x, 10949u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 11356u), ~vec4<u32>(0u, var_1.d.x, var_2.a, var_2.a), _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(var_1.d.x, 12u)], vec4<u32>(1u, var_1.d.x, var_1.d.x, var_1.d.x), vec4<u32>(var_2.a, 52913u, 1117u, var_3.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true).b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-503f + -203f), -460f, -1479f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_f_op_f32(-1753f - -1262f), _wgslsmith_f_op_f32(1835f + 427f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1354f, 1010f, -409f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1275f, -1443f, 141f)), select(var_3.a.wzw, var_5.a.yww, false))))), 1i);
}

