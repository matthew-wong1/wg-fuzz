struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(4177u, 30491u), vec2<u32>(0u, 60722u), vec2<u32>(1566u, 79803u), vec2<u32>(30637u, 49780u), vec2<u32>(0u, 17746u), vec2<u32>(38332u, 0u), vec2<u32>(4294967295u, 1832u), vec2<u32>(59860u, 4294967295u), vec2<u32>(30272u, 23299u), vec2<u32>(5053u, 4294967295u), vec2<u32>(0u, 17381u), vec2<u32>(89105u, 1u), vec2<u32>(90047u, 18001u), vec2<u32>(1u, 0u), vec2<u32>(1u, 26012u), vec2<u32>(4294967295u, 46798u), vec2<u32>(1998u, 33710u), vec2<u32>(48136u, 52098u), vec2<u32>(0u, 9731u), vec2<u32>(0u, 1u), vec2<u32>(33208u, 4294967295u), vec2<u32>(39671u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9726u, 45804u), vec2<u32>(0u, 12442u), vec2<u32>(43045u, 8837u), vec2<u32>(1u, 1u), vec2<u32>(72899u, 1u), vec2<u32>(0u, 1u));

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<u32>(1u, 19221u, 40943u, 0u), -242f, 4653u, vec4<bool>(false, false, false, false)), Struct_3(vec4<u32>(0u, 25459u, 1u, 26110u), -1111f, 1u, vec4<bool>(false, true, false, false)), Struct_3(vec4<u32>(47096u, 1u, 23576u, 26242u), -663f, 4294967295u, vec4<bool>(true, true, false, true)), Struct_3(vec4<u32>(8148u, 72030u, 4294967295u, 4294967295u), -748f, 50945u, vec4<bool>(true, true, true, true)), Struct_3(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), -609f, 1u, vec4<bool>(false, false, true, false)), Struct_3(vec4<u32>(0u, 1u, 4294967295u, 0u), 1000f, 7499u, vec4<bool>(false, false, false, false)), Struct_3(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), -1599f, 4294967295u, vec4<bool>(false, true, false, false)), Struct_3(vec4<u32>(88396u, 0u, 0u, 83267u), -424f, 4294967295u, vec4<bool>(false, false, true, true)), Struct_3(vec4<u32>(46876u, 0u, 0u, 1u), -231f, 4294967295u, vec4<bool>(true, true, true, true)), Struct_3(vec4<u32>(9168u, 4294967295u, 16390u, 4294967295u), 712f, 4294967295u, vec4<bool>(false, true, false, true)), Struct_3(vec4<u32>(7434u, 1u, 4234u, 4294967295u), -730f, 4294967295u, vec4<bool>(false, true, true, false)), Struct_3(vec4<u32>(0u, 9227u, 5912u, 1u), 1476f, 90027u, vec4<bool>(true, false, true, false)), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 22302u), 1000f, 0u, vec4<bool>(true, false, false, false)), Struct_3(vec4<u32>(4294967295u, 53775u, 0u, 45537u), 649f, 0u, vec4<bool>(true, true, false, false)), Struct_3(vec4<u32>(27032u, 0u, 16351u, 4294967295u), -624f, 14284u, vec4<bool>(false, false, false, true)), Struct_3(vec4<u32>(16253u, 14493u, 4294967295u, 75324u), -699f, 4294967295u, vec4<bool>(true, true, false, false)), Struct_3(vec4<u32>(4294967295u, 39629u, 0u, 4294967295u), -606f, 1u, vec4<bool>(true, true, true, true)), Struct_3(vec4<u32>(1u, 47995u, 1u, 4294967295u), -411f, 0u, vec4<bool>(true, true, true, false)), Struct_3(vec4<u32>(30740u, 89884u, 35905u, 11496u), 1532f, 62619u, vec4<bool>(true, false, false, false)), Struct_3(vec4<u32>(1u, 0u, 0u, 0u), -248f, 42663u, vec4<bool>(true, false, true, true)), Struct_3(vec4<u32>(22110u, 4294967295u, 31181u, 1u), 1239f, 0u, vec4<bool>(true, true, true, false)), Struct_3(vec4<u32>(1u, 57169u, 4294967295u, 1u), 310f, 46083u, vec4<bool>(true, false, true, false)), Struct_3(vec4<u32>(0u, 13572u, 83464u, 39508u), -913f, 0u, vec4<bool>(true, true, false, false)), Struct_3(vec4<u32>(0u, 47666u, 0u, 30494u), -457f, 22350u, vec4<bool>(false, true, true, false)), Struct_3(vec4<u32>(18627u, 28070u, 17118u, 0u), -389f, 4841u, vec4<bool>(false, false, true, true)), Struct_3(vec4<u32>(29577u, 99941u, 29064u, 32072u), 1220f, 85063u, vec4<bool>(false, false, true, true)), Struct_3(vec4<u32>(4294967295u, 2146u, 4294967295u, 32651u), -1382f, 4294967295u, vec4<bool>(true, true, false, true)));

var<private> global4: array<Struct_3, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x))), arg_0.xz)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1425f, arg_0.x)))))) + _wgslsmith_f_op_vec2_f32(floor(arg_0.xx)));
    global1 = Struct_1(-9484i);
    let var_1 = global1.a;
    global4 = array<Struct_3, 31>();
    global2 = !(global1.a != -global1.a);
    return 0i;
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    global2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(vec3<f32>(-697f, -744f, 1082f)), -2147483647i), abs(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(global1.a, global1.a)))) >= abs(u_input.a);
    global1 = Struct_1(max(~(~(-46972i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 0i), vec2<i32>(44346i, 16337i))) << (_wgslsmith_clamp_u32(1u, 1u, 1u) % 32u));
    global3 = array<Struct_3, 27>();
    let var_0 = Struct_2(Struct_1(u_input.a), Struct_1(-u_input.a));
    global0 = array<vec2<u32>, 30>();
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 38289u), select(1u, max(34625u << (0u % 32u), select(0u, 55699u, arg_0.x)), true), (~0u << (firstTrailingBit(4294967295u) % 32u)) << ((firstTrailingBit(94736u) << ((133507u >> (1u % 32u)) % 32u)) % 32u), abs(57093u)), vec4<u32>(25247u, ~(~(~0u)), 0u, abs(min(30105u, firstTrailingBit(1u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<i32>) -> i32 {
    var var_0 = ~arg_2.x | arg_2.x;
    global3 = array<Struct_3, 27>();
    global3 = array<Struct_3, 27>();
    return -2147483647i;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.a;
    var var_1 = vec2<u32>(4294967295u, reverseBits(~4294967295u));
    var var_2 = vec4<bool>(u_input.a != arg_0.x, var_1.x > ~4294967295u, all(!vec4<bool>(var_1.x > 1u, true, true, false)), !any(vec4<bool>(true, true, true, true)));
    var var_3 = ~(abs(~(~var_1.x)) | (_wgslsmith_mod_u32(countOneBits(var_1.x), firstLeadingBit(var_1.x)) ^ 1u));
    let var_4 = func_4(~(vec4<u32>(var_1.x, 1u, 12989u, var_1.x) ^ vec4<u32>(var_1.x, 1u, 2762u, 50176u)) ^ (func_2(!vec4<bool>(true, true, var_2.x, var_2.x)) ^ vec4<u32>(var_1.x, ~12983u, ~var_1.x, reverseBits(var_1.x))), global4[_wgslsmith_index_u32(15710u, 31u)], -_wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(arg_0, arg_0, arg_0), arg_0, all(var_2.zxy)), vec4<i32>(arg_1.b.a ^ global1.a, -1i, -2147483647i, 2147483647i)));
    return 2147483647i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_3(arg_2.a, _wgslsmith_f_op_f32(-arg_2.b), ~(arg_2.c ^ arg_2.c), select(!select(select(arg_2.d, vec4<bool>(false, false, false, arg_2.d.x), arg_2.d), vec4<bool>(arg_2.d.x, false, true, arg_2.d.x), vec4<bool>(arg_2.d.x, true, arg_2.d.x, arg_2.d.x)), select(vec4<bool>(true, select(arg_2.d.x, arg_2.d.x, true), arg_2.d.x, arg_2.d.x), vec4<bool>(arg_2.d.x, all(arg_2.d.zz), select(true, arg_2.d.x, false), true), arg_2.d), !arg_2.d));
    return reverseBits(min(abs(arg_2.a), _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(arg_2.c, arg_2.a.x, arg_2.c, arg_2.c)), vec4<u32>(0u, _wgslsmith_add_u32(arg_2.c, arg_2.c), arg_2.a.x >> (arg_2.c % 32u), 36002u))));
}

fn func_6(arg_0: vec4<u32>) -> u32 {
    global0 = array<vec2<u32>, 30>();
    let var_0 = global3[_wgslsmith_index_u32(~1u, 27u)];
    let var_1 = -u_input.a;
    let var_2 = vec4<bool>(false, true, ~var_0.a.x < func_5(vec4<i32>(-var_1, firstLeadingBit(var_1), -global1.a, -53207i), Struct_1(var_1), Struct_3(var_0.a >> (vec4<u32>(arg_0.x, 4294967295u, 3437u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_0.b), 72345u ^ var_0.c, vec4<bool>(var_0.d.x, true, true, true)), ~select(vec4<i32>(u_input.a, -1i, -23454i, u_input.a), vec4<i32>(u_input.a, 0i, var_1, global1.a), var_0.d)).x, ~func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global1.a, var_1, var_1), vec4<i32>(69956i, 29683i, global1.a, -2147483647i)), Struct_2(Struct_1(u_input.a), Struct_1(-37158i))) >= max(12772i, _wgslsmith_mod_i32(-1i, reverseBits(23389i))));
    let var_3 = all(vec2<bool>(false, !(abs(4294967295u) < arg_0.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec4<i32>(25238i, ~func_1(vec4<i32>(-1i, 0i, -3657i, u_input.a), Struct_2(Struct_1(u_input.a), Struct_1(-37220i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-35246i, global1.a, global1.a, global1.a), vec4<i32>(-21639i, 2147483647i, -34112i, 1i)), -1043i << (0u % 32u)), _wgslsmith_div_i32(1i, 2147483647i)), Struct_1(u_input.a), Struct_3(max(vec4<u32>(0u, 4294967295u, 933u, 33193u), vec4<u32>(0u, 1u, 58564u, 1u)) | select(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(35230u, 4294967295u, 39795u, 4294967295u), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1538f + 675f)), 1u, select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), true)), _wgslsmith_mod_vec4_i32(~min(vec4<i32>(global1.a, 0i, -2147483647i, u_input.a), vec4<i32>(u_input.a, global1.a, u_input.a, 1i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 43446i, u_input.a), vec4<i32>(19146i, 64470i, -20168i, global1.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, u_input.a, -1i, global1.a), vec4<i32>(global1.a, 0i, global1.a, 10784i)), all(vec4<bool>(true, true, true, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1670f)), 887f, _wgslsmith_f_op_f32(-765f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(750f))))));
    var var_2 = all(vec2<bool>(true, true));
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.xx, vec2<f32>(var_1.x, var_1.x), false)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(374f, 802f)))))))));
    let var_5 = ~(~vec2<u32>(~(~45957u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, -2147483647i);
}

