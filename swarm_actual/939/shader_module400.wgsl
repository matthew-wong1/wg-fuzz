struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(-1205f, -244f, vec2<bool>(false, false)), Struct_4(1116f, 886f, vec2<bool>(false, true)), Struct_4(786f, -1092f, vec2<bool>(false, true)), Struct_4(-1251f, -1171f, vec2<bool>(true, false)), Struct_4(-476f, 1792f, vec2<bool>(true, true)), Struct_4(514f, 1939f, vec2<bool>(true, true)), Struct_4(1165f, -326f, vec2<bool>(false, true)), Struct_4(222f, 1000f, vec2<bool>(false, false)), Struct_4(1200f, -789f, vec2<bool>(true, true)));

var<private> global1: array<f32, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.a.xx + _wgslsmith_div_vec2_f32(vec2<f32>(-1155f, -1772f), vec2<f32>(global1[_wgslsmith_index_u32(8544u, 24u)], _wgslsmith_f_op_f32(-arg_0.b.a.x)))));
    global1 = array<f32, 24>();
    let var_1 = _wgslsmith_add_i32(arg_1.x, i32(-1i) * -28749i) & _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 33287i, arg_1.x, arg_1.x)), ~vec4<i32>(arg_1.x, arg_1.x, -2147483647i, arg_1.x), vec4<i32>(arg_1.x, 0i, -13687i, arg_1.x) ^ vec4<i32>(-1029i, arg_1.x, arg_1.x, arg_1.x)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -1i, -12053i, arg_1.x) ^ vec4<i32>(-1i, arg_1.x, 2147483647i, 1i), ~vec4<i32>(0i, -2147483647i, arg_1.x, arg_1.x)), abs(-vec4<i32>(arg_1.x, arg_1.x, -66952i, 16102i)));
    var_0 = arg_0.b.a.yy;
    global1 = array<f32, 24>();
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    global0 = array<Struct_4, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.b.a);
    let var_1 = u_input.a;
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    return !all(vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_4) -> bool {
    global1 = array<f32, 24>();
    global0 = array<Struct_4, 9>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(reverseBits(vec3<i32>(21669i, max(-2147483647i, 2147483647i), -1880i) << (u_input.a.wyy % vec3<u32>(32u))));
    global0 = array<Struct_4, 9>();
    return func_4(~func_3(Struct_2(select(vec2<bool>(false, arg_3.c.x), vec2<bool>(arg_3.c.x, false), arg_1.x), Struct_1(vec3<f32>(-1000f, -700f, arg_3.b)), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), vec2<i32>(var_1.a.x, var_1.a.x) ^ var_1.a.zz), var_1.a, Struct_2(!select(vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(arg_1.x, arg_3.c.x), arg_3.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), -1000f, 973f)), u_input.a));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1071f, 572f, 882f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-393f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(72180u, 24u)])))))))));
    var var_1 = select(vec2<bool>(!(func_2(global0[_wgslsmith_index_u32(64899u, 9u)], vec2<bool>(true, arg_0), 1u, Struct_4(var_0.a.x, var_0.a.x, vec2<bool>(arg_0, arg_0))) != !arg_0), !arg_0), select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0 || (arg_0 || true)), true);
    global1 = array<f32, 24>();
    return Struct_2(select(select(!vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, false)), select(!vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, var_1.x)))), select(select(!vec2<bool>(arg_0, false), vec2<bool>(false, true), !vec2<bool>(true, var_1.x)), !(!vec2<bool>(var_1.x, arg_0)), var_1.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 24u)]) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -353f)), Struct_1(var_0.a), abs(vec4<u32>(12813u, u_input.a.x, 4294967295u, u_input.a.x | 4294967295u)) & countOneBits(~vec4<u32>(4294967295u, 22479u, u_input.a.x, 74047u)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.a;
    var var_1 = arg_0.b.a.xz;
    global1 = array<f32, 24>();
    return Struct_2(!(!select(select(var_0, vec2<bool>(arg_0.a.x, var_0.x), vec2<bool>(arg_0.a.x, false)), select(vec2<bool>(var_0.x, true), var_0, arg_0.a.x), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0.c.x, 24u)], -1583f, 1903f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_0.b.a, arg_0.b.a, vec3<bool>(var_0.x, arg_0.a.x, true))))))), func_1(select(func_1(true, Struct_3(vec3<i32>(-2147483647i, 2147483647i, -1i))).a.x, any(vec3<bool>(arg_0.a.x, var_0.x, var_0.x)), true) || arg_0.a.x, Struct_3(_wgslsmith_add_vec3_i32(-vec3<i32>(16130i, 2147483647i, -2147483647i), vec3<i32>(11598i, 2543i, 0i)))).c);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.a.x - 110f);
    var var_1 = arg_1.zx;
    var_1 = vec2<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(-arg_1.x, var_1.x, arg_2))), 5945i);
    let var_2 = global0[_wgslsmith_index_u32(0u, 9u)];
    var var_3 = u_input.a.x;
    return countOneBits(-_wgslsmith_sub_i32(firstLeadingBit(2147483647i), _wgslsmith_add_i32(-2147483647i, arg_2)));
}

fn func_7(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = func_1(!func_1(true, Struct_3(countOneBits(vec3<i32>(-39283i, 2147483647i, -2147483647i)))).a.x, Struct_3(~_wgslsmith_div_vec3_i32(vec3<i32>(2065i, 12263i, arg_2.x), vec3<i32>(0i, arg_0.x, -21864i)) >> (u_input.a.xwz % vec3<u32>(32u))));
    global0 = array<Struct_4, 9>();
    let var_1 = select(!(!vec3<bool>(all(vec2<bool>(var_0.a.x, false)), var_0.a.x, var_0.a.x)), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), select(!select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true), !vec3<bool>(true, var_0.a.x, false)), vec3<bool>(false, !all(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), true), vec3<bool>(func_5(func_1(var_0.a.x, Struct_3(vec3<i32>(-3081i, -2760i, 1i)))).a.x, true, !var_0.a.x & var_0.a.x)));
    let var_2 = !all(func_5(Struct_2(var_1.zz, var_0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, u_input.a.x, 8521u, u_input.a.x), var_0.c))).a);
    let var_3 = func_5(func_1(!func_1(true, Struct_3(vec3<i32>(arg_2.x, 27423i, arg_0.x))).a.x, Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(1i, arg_2.x, arg_0.x), vec3<i32>(0i, arg_2.x, arg_0.x)), _wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(56772i, -22259i, arg_0.x), vec3<i32>(arg_1, arg_1, 1i)))))).a.x;
    return Struct_4(global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(5149u)), 24u)], -2349f, var_1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1130f;
    let var_1 = func_7(vec3<i32>(-58403i, func_6(func_5(func_1(true, Struct_3(vec3<i32>(47980i, 2147483647i, -2147483647i)))), vec3<i32>(1i, 1i, 1i), 1i), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-2147483647i, 23892i, -47195i), -22699i)), _wgslsmith_div_i32((1i >> ((u_input.a.x & u_input.a.x) % 32u)) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(17381i, 1i)), firstLeadingBit(3922i >> (1u % 32u))), ((vec4<i32>(-1i) * -vec4<i32>(1i, 7583i, -30553i, -1i)) << (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-22568i, 1i, 881i, 2147483647i), vec4<i32>(2147483647i, 18106i, -1734i, -1i))), firstTrailingBit(vec4<i32>(62613i, -1i, 0i, -2147483647i)) ^ vec4<i32>(1i, 1i, 1i, 1i)));
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    var var_2 = Struct_3(firstLeadingBit(reverseBits(vec3<i32>(1i, 1i, 1i))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1042f - _wgslsmith_div_f32(func_7(var_2.a, var_2.a.x, vec4<i32>(-74446i, var_2.a.x, var_2.a.x, var_2.a.x)).a, _wgslsmith_f_op_f32(-550f * 1841f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))));
    var var_4 = Struct_2(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, -282f, -129f)) + vec3<f32>(-623f, var_1.a, var_0))))), u_input.a);
    var var_5 = func_7(vec3<i32>(-var_2.a.x, -1i ^ (~31632i | var_2.a.x), _wgslsmith_sub_i32(-2147483647i, var_2.a.x)), -1i, abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, var_2.a.x, var_2.a.x), vec4<i32>(var_2.a.x, var_2.a.x, -6913i, 1i))) | (vec4<i32>(func_6(Struct_2(vec2<bool>(var_4.a.x, var_1.c.x), var_4.b, var_4.c), vec3<i32>(var_2.a.x, -5961i, -10989i), var_2.a.x), var_2.a.x, -1i, -20806i) | vec4<i32>(-1i | var_2.a.x, 0i, 0i, _wgslsmith_mod_i32(9968i, var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(21666u & firstTrailingBit(~u_input.a.x)), ~u_input.a.zz, ~(~((vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.xx % vec2<u32>(32u))) ^ vec2<u32>(4294967295u, 34638u))), var_4.c.x, _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(-35016i, var_2.a.x, var_2.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<i32>(var_2.a.x, -37454i, var_2.a.x)))), ~_wgslsmith_div_vec3_i32(var_2.a, firstTrailingBit(var_2.a))));
}

