struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(1i, -1i, 21504i, -11822i, -28388i, 1i, 7251i, 1i, i32(-2147483648), 0i, 36476i, 2147483647i, 16135i);

var<private> global1: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(0i, i32(-2147483648), -11166i), vec3<i32>(12635i, -25422i, i32(-2147483648)), vec3<i32>(16245i, -10539i, i32(-2147483648)), vec3<i32>(35170i, -1i, -21892i), vec3<i32>(2147483647i, 48592i, 18635i), vec3<i32>(-67245i, 2147483647i, 0i), vec3<i32>(38764i, i32(-2147483648), 2147483647i), vec3<i32>(-27804i, 62096i, -46037i), vec3<i32>(1i, -64828i, 0i), vec3<i32>(1i, -48450i, -1i), vec3<i32>(25384i, 0i, -1876i), vec3<i32>(52456i, -1i, 8830i), vec3<i32>(-30024i, -1i, 8997i), vec3<i32>(-1i, -64860i, 14465i), vec3<i32>(-1i, 19236i, -1i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(-1i, i32(-2147483648), 38633i), vec3<i32>(0i, -34758i, 2147483647i), vec3<i32>(-1i, -1i, 0i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    let var_0 = -10477i;
    var var_1 = !all(vec4<bool>(true, arg_1.a.x, true | (arg_0 || arg_0), -u_input.b == (-2147483647i & u_input.b)));
    global0 = array<i32, 13>();
    var var_2 = false;
    var_2 = false;
    return reverseBits(~firstTrailingBit(vec4<i32>(2147483647i, u_input.b | -2147483647i, 2147483647i, var_0)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(312f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-898f + 278f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(923f + -1000f) - _wgslsmith_f_op_f32(1342f * 1353f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(482f + -1073f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-979f)), _wgslsmith_f_op_f32(select(1742f, -296f, arg_2.x)))), !arg_2.x))));
    var var_1 = select(!select(arg_2.wx, arg_2.zz, arg_2.xz), arg_2.yw, false);
    global0 = array<i32, 13>();
    let var_2 = var_0.x;
    let var_3 = u_input.a;
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-2883i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 13u)])) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u)), select(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(34571u, 19u)], vec3<bool>(false, false, false)) ^ (vec3<i32>(-13967i, global0[_wgslsmith_index_u32(42423u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]) & vec3<i32>(u_input.b, 8584i, -15630i))) >> (countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(50097u, 4294967295u, u_input.a), vec3<u32>(10931u, u_input.a, u_input.a), vec3<u32>(37514u, 60875u, u_input.a))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(func_4(func_3(global0[_wgslsmith_index_u32(1u, 13u)] > _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 13u)], var_0.x), vec3<i32>(-1i, 57952i, u_input.b)), global1[_wgslsmith_index_u32(u_input.a, 19u)] >> (vec3<u32>(u_input.a, 57300u, u_input.a) % vec3<u32>(32u))), Struct_1(select(!vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(false, false, false, false), arg_0.a), vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x))), -(_wgslsmith_sub_i32(-12145i, global0[_wgslsmith_index_u32(u_input.a, 13u)]) >> (~u_input.a % 32u))), u_input.b, select(vec4<bool>(false || (arg_0.a.x | true), !arg_0.a.x || any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_mult_i32(-1i, var_0.x) <= -20243i, !arg_0.a.x), !select(vec4<bool>(arg_0.a.x, false, false, false), arg_0.a, !arg_0.a), arg_0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(753f, -424f, 717f, -533f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-329f, 621f, -402f, 1115f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-586f, 142f, 526f, 611f))))))) * vec4<f32>(1f, _wgslsmith_f_op_f32(sign(-1210f)), _wgslsmith_f_op_f32(select(836f, -1034f, true)), 1000f));
    var_1 = _wgslsmith_f_op_f32(-var_2.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-935f)));
    return Struct_1(!vec4<bool>(arg_0.a.x, true, !arg_0.a.x, arg_0.a.x && (arg_0.a.x & true)));
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(356f)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 74457u), _wgslsmith_add_vec4_u32(vec4<u32>(37264u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 0u, 38019u, u_input.a))), _wgslsmith_add_u32(1u, u_input.a)), vec3<u32>(u_input.a, reverseBits(_wgslsmith_mod_u32(u_input.a, 62389u)), 0u) >> (~min(~vec3<u32>(0u, u_input.a, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(27181u, 4294967295u, u_input.a))) % vec3<u32>(32u)), Struct_2(func_2(Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false))), -904f, 4294967295u, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), firstTrailingBit(select(vec3<u32>(u_input.a, 10290u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1095f)))), 1f)));
    let var_1 = var_0.d;
    let var_2 = true;
    let var_3 = var_0.d;
    global0 = array<i32, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.e * var_1.e))))), 1549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, var_1.e)), 1364f)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.c, abs(33238u), 79497u, ~u_input.a), countOneBits(reverseBits(vec4<u32>(u_input.a, 20020u, 6972u, 53483u))), ~vec4<u32>(4294967295u, 1u, 19222u, u_input.a) ^ vec4<u32>(u_input.a, 14664u, 4294967295u, arg_0.d.d.x)) | countOneBits(firstTrailingBit(vec4<u32>(0u, 1u, u_input.a, 6338u) & vec4<u32>(1u, arg_0.b.x, 69218u, 4294967295u)))) ^ firstTrailingBit(~select(vec4<u32>(arg_0.c.x, 4294967295u, 94936u, arg_0.d.d.x), select(vec4<u32>(4294967295u, 41271u, arg_0.b.x, u_input.a), vec4<u32>(15444u, arg_0.d.d.x, u_input.a, 0u), vec4<bool>(arg_2.x, false, true, arg_0.d.a.a.x)), false));
    global0 = array<i32, 13>();
    let var_1 = Struct_2(func_2(arg_0.d.a), arg_0.d.b, abs(arg_0.c.x), arg_0.c, -1110f);
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    return Struct_1(arg_0.d.a.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global0 = array<i32, 13>();
    global1 = array<vec3<i32>, 19>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1554f + 517f))), vec2<u32>(1u, u_input.a), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(95292u, 19800u, u_input.a)), abs(vec3<u32>(33592u, u_input.a, u_input.a))), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -667f), u_input.a, reverseBits(vec3<u32>(88021u, 1u, 4294967295u)), -459f)), vec2<i32>(u_input.b | -2147483647i, 1i), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1261f, -1941f, -150f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-257f, 134f, 1584f), _wgslsmith_f_op_vec3_f32(func_1()))))), Struct_2(func_5(Struct_3(_wgslsmith_div_f32(-655f, -970f), ~vec2<u32>(79792u, u_input.a), min(vec3<u32>(23108u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), -1258f, u_input.a, vec3<u32>(u_input.a, 1u, 10974u), -840f)), vec2<i32>(0i, 2958i) >> (vec2<u32>(446u, u_input.a) % vec2<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2108f, 1190f, -770f) - vec3<f32>(-485f, -900f, 281f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, -1000f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(812f, 1667f)) - _wgslsmith_f_op_f32(step(459f, 2001f)))), ~_wgslsmith_mult_u32(u_input.a, 14608u) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(61624u, 0u)) % 32u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57148u, u_input.a, u_input.a) << (vec4<u32>(0u, u_input.a, 7335u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(59062u, u_input.a, u_input.a, u_input.a)), select(8409u, ~u_input.a, all(vec4<bool>(true, true, true, false))), firstLeadingBit(_wgslsmith_div_u32(20588u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * _wgslsmith_f_op_f32(select(349f, -1968f, false))) * _wgslsmith_f_op_f32(trunc(692f)))), any(select(func_2(Struct_1(vec4<bool>(false, false, false, true))).a.zy, vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, false)), true))), Struct_3(238f, ~vec2<u32>(u_input.a, _wgslsmith_div_u32(13778u, 27375u)), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(88986u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 98389u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 40510u, 23320u), vec3<u32>(u_input.a, 1u, u_input.a))), Struct_2(func_5(Struct_3(971f, vec2<u32>(u_input.a, 32530u), vec3<u32>(22137u, u_input.a, u_input.a), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), -266f, 41472u, vec3<u32>(u_input.a, 61856u, u_input.a), -249f)), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-480f, -1663f, -2348f), vec3<f32>(473f, 1040f, 411f), false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-386f, 329f, false)), 373f)), _wgslsmith_add_u32(43823u, 18909u), vec3<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), countOneBits(u_input.a), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1442f))))));
    global1 = array<vec3<i32>, 19>();
    let var_1 = ~u_input.a;
    let var_2 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-34612i, global0[_wgslsmith_index_u32(17274u, 13u)]), vec2<i32>(-2147483647i, u_input.b)) << (1u % 32u), global0[_wgslsmith_index_u32(u_input.a, 13u)])), vec3<i32>(-u_input.b, _wgslsmith_sub_i32(-1736i, 1i), _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(11789u, 13u)])), var_0.d.a.a.x);
    var var_3 = var_0.d.a.a.zy;
    var var_4 = func_2(var_0.d.a);
    var var_5 = countOneBits(vec3<i32>(-1i) * -global1[_wgslsmith_index_u32(var_1, 19u)]);
    let var_6 = var_0.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(-var_0.a)), 1391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f * 247f) + _wgslsmith_f_op_f32(-205f - var_0.d.e)))));
}

