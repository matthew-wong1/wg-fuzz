struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(1i, 31594i), 32262u, vec4<bool>(true, false, false, false), -5637i, false), Struct_1(vec2<i32>(0i, 44089i), 49095u, vec4<bool>(false, true, false, true), 1i, false), Struct_1(vec2<i32>(1i, 5612i), 57013u, vec4<bool>(true, true, true, false), 2147483647i, false), Struct_1(vec2<i32>(6011i, 1i), 73787u, vec4<bool>(true, false, true, true), 2147483647i, false), Struct_1(vec2<i32>(1i, -1i), 2363u, vec4<bool>(true, false, true, false), 26417i, false), Struct_1(vec2<i32>(-1i, 64613i), 4294967295u, vec4<bool>(false, true, false, true), -3995i, true), Struct_1(vec2<i32>(35531i, 45469i), 34713u, vec4<bool>(true, false, false, true), 13996i, false), Struct_1(vec2<i32>(14615i, 2147483647i), 1u, vec4<bool>(false, false, true, false), 22456i, false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 79840u, vec4<bool>(true, false, false, false), -6577i, true), Struct_1(vec2<i32>(-38276i, 2147483647i), 1u, vec4<bool>(false, true, false, true), -1i, false), Struct_1(vec2<i32>(-16744i, -1i), 0u, vec4<bool>(false, false, false, true), 3307i, false), Struct_1(vec2<i32>(1i, -4771i), 4294967295u, vec4<bool>(false, true, true, true), 2147483647i, true), Struct_1(vec2<i32>(-1i, -2993i), 1u, vec4<bool>(false, true, false, true), 23120i, false), Struct_1(vec2<i32>(-17928i, -1466i), 4294967295u, vec4<bool>(true, false, true, false), -1i, true), Struct_1(vec2<i32>(1i, 1i), 4294967295u, vec4<bool>(false, true, false, false), -21927i, false), Struct_1(vec2<i32>(-34417i, -13770i), 9806u, vec4<bool>(false, true, false, false), 2147483647i, true), Struct_1(vec2<i32>(2147483647i, 26912i), 0u, vec4<bool>(false, false, false, true), -6570i, true), Struct_1(vec2<i32>(33043i, -55688i), 1u, vec4<bool>(false, false, false, false), -15281i, true), Struct_1(vec2<i32>(2147483647i, -32366i), 0u, vec4<bool>(false, false, false, false), 49912i, false), Struct_1(vec2<i32>(i32(-2147483648), 19470i), 79907u, vec4<bool>(false, true, false, true), 27507i, false), Struct_1(vec2<i32>(19090i, i32(-2147483648)), 12227u, vec4<bool>(false, true, false, true), 56457i, false), Struct_1(vec2<i32>(-52517i, 20165i), 4294967295u, vec4<bool>(false, false, false, false), -21313i, true), Struct_1(vec2<i32>(47455i, -1i), 3903u, vec4<bool>(true, true, true, true), i32(-2147483648), false), Struct_1(vec2<i32>(-12088i, 0i), 4294967295u, vec4<bool>(true, true, true, true), -1i, false), Struct_1(vec2<i32>(23883i, 1i), 22126u, vec4<bool>(true, true, true, false), 8350i, true), Struct_1(vec2<i32>(i32(-2147483648), 31344i), 32067u, vec4<bool>(false, true, true, true), 2147483647i, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1171f), Struct_3(Struct_1(vec2<i32>(arg_3.x & -2147483647i, i32(-1i) * -1i), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), abs(vec2<u32>(17016u, u_input.b.x))), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), true), 2147483647i, 60612i <= arg_3.x), -65505i), select(~vec4<u32>(~28208u, firstTrailingBit(u_input.a.x), ~4294967295u, 1u), ~firstLeadingBit(u_input.b), vec4<bool>(true, false, false, !all(vec3<bool>(true, true, false)))), global0[_wgslsmith_index_u32(~(~select(arg_1, 0u, true)) | 25734u, 26u)]);
    let var_1 = countOneBits(~u_input.b);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 1i);
    let var_3 = arg_3.yxx;
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1063f + 1052f) - -784f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, var_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-138f, var_0.a)))))));
    return countOneBits(var_0.c.ww);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_2(reverseBits(vec2<i32>(-2147483647i, arg_1)), abs(firstLeadingBit(firstTrailingBit(u_input.b | vec4<u32>(66857u, 0u, arg_2, 4294967295u)))), Struct_1(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, -11819i), vec2<i32>(69971i, arg_1)), 4294967295u, vec4<bool>(!any(vec4<bool>(true, false, true, false)), false, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), arg_1, 1i == min(arg_1 & -2147483647i, max(arg_1, -34371i))), !any(vec3<bool>(true, true, true)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, -23996i), abs(vec3<i32>(arg_1, 0i, arg_1))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(-1i, arg_1, 97238i, arg_1)), max(vec4<i32>(-37436i, arg_1, -33267i, arg_1), vec4<i32>(-2147483647i, 1i, 2147483647i, arg_1)))));
    var var_1 = ~var_0.c.a.x;
    let var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(342f, _wgslsmith_f_op_f32(209f * 1000f)))));
    let var_4 = ~var_0.c.b;
    return var_0.c.c.zy;
}

fn func_2() -> vec4<f32> {
    global0 = array<Struct_1, 26>();
    var var_0 = func_4(abs(~(~func_3(1339f, 4294967295u, 1387f, vec4<i32>(25305i, -2147483647i, 2147483647i, 2147483647i)))), ~1i, u_input.a.x);
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(1i, -1i)), ~_wgslsmith_sub_i32(43436i, 1i) >> (abs(~_wgslsmith_clamp_u32(0u, u_input.a.x, 28171u)) % 32u));
    global0 = array<Struct_1, 26>();
    var_0 = select(select(func_4(u_input.b.wx, ~var_1.x, u_input.a.x), vec2<bool>(!any(vec2<bool>(true, true)), any(vec2<bool>(var_0.x, false))), var_0.x), select(vec2<bool>(u_input.b.x <= u_input.a.x, true || any(vec2<bool>(var_0.x, true))), vec2<bool>(select(true, true, var_0.x), !(true & var_0.x)), select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x && false, true), var_0.x)), !any(vec3<bool>(true, true, true)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(-943f, _wgslsmith_f_op_f32(select(-739f, _wgslsmith_f_op_f32(round(-1115f)), any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, false, false), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1727f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(856f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, -1000f, -1505f, -910f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(521f, -165f, 213f, -640f) * vec4<f32>(396f, 1165f, -904f, -173f))))));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1150f, 993f, 1201f, -1784f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1172f, 1281f, 793f, 471f) + vec4<f32>(164f, -308f, 1137f, 1369f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, 1520f, -1294f, 1539f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, 897f, -1008f, _wgslsmith_f_op_f32(342f * 894f)))));
    let var_1 = ~(~(~(~u_input.a.x)));
    return ~(~min(~(~u_input.b), ~vec4<u32>(var_1, var_1, 44317u, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_2(max(vec2<i32>(-1i, -17096i), vec2<i32>(_wgslsmith_add_i32(-1i, -12155i), -1i)), select(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.b.x, min(u_input.b.x, 4294967295u)), ~_wgslsmith_add_u32(106621u, u_input.b.x), ~4294967295u), abs(func_1()), false), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(63876i, 16672i), vec2<i32>(10033i, 2147483647i)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, 0u), reverseBits(vec2<u32>(0u, u_input.b.x))) % vec2<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, ~0u), u_input.b.x), vec4<bool>(true, true, true, true), ~13168i, false), false, max(_wgslsmith_div_i32(-24914i, select(i32(-1i) * -386i, 0i, true)), _wgslsmith_clamp_i32(~(i32(-1i) * -64047i), -countOneBits(0i), ~select(2147483647i, -1i, false))));
    let var_1 = _wgslsmith_f_op_f32(-1433f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1047f * -692f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -737f))))));
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(-var_0.e & -var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(1i, var_0.c.d, var_0.e), vec3<i32>(-69009i, 40152i, var_0.a.x)))), var_0.c.d, i32(-1i) * -_wgslsmith_mult_i32(-1i, var_0.c.d));
    let var_3 = 10920i;
    global0 = array<Struct_1, 26>();
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(571f + var_1)))), Struct_3(var_0.c, _wgslsmith_mod_i32(2147483647i, var_0.e)), _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(var_0.b.yyz, var_0.b.xyw), (1u >> (0u % 32u)) >> (var_0.b.x % 32u), u_input.a.x, var_0.c.b), abs(u_input.b)), global0[_wgslsmith_index_u32(22392u, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d.d, var_3, var_3), vec3<i32>(var_0.a.x, 28181i, var_4.b.a.d)), -47749i)), _wgslsmith_div_i32(1i, _wgslsmith_add_i32(var_0.a.x, 1i)), -11020i), min(_wgslsmith_dot_vec3_u32(~var_4.c.wxx, var_4.c.xwz), ~u_input.a.x) << (u_input.b.x % 32u));
}

