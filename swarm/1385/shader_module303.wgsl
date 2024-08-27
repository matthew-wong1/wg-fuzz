struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(674f, 184f, 2111f), vec3<f32>(791f, -1490f, -609f), vec3<f32>(286f, 1668f, -1732f), vec3<f32>(-1184f, -744f, -989f), vec3<f32>(961f, 1000f, 178f), vec3<f32>(1264f, 1351f, 1619f), vec3<f32>(847f, 513f, -612f), vec3<f32>(-515f, -1796f, 779f), vec3<f32>(769f, -447f, 334f), vec3<f32>(-404f, -466f, -1763f), vec3<f32>(704f, -1651f, 863f), vec3<f32>(1140f, 233f, -1280f), vec3<f32>(-410f, -1031f, -729f), vec3<f32>(886f, -988f, -1257f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = arg_3;
    global1 = array<vec3<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2354f)) - -115f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(-2215f - _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = _wgslsmith_div_f32(-200f, 358f);
    let var_3 = global0.x & -abs(~arg_2.x);
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = select(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), !(_wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_f_op_f32(arg_1.x + -1107f)), select(all(vec2<bool>(false, true)), true, (global0.x << (u_input.b % 32u)) == -global0.x)) || true;
    var var_1 = Struct_2(max(select(vec2<u32>(1u, _wgslsmith_clamp_u32(94825u, 4294967295u, u_input.d)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a, arg_0)), ~vec2<u32>(0u, 697u)), any(select(vec3<bool>(true, false, false), vec3<bool>(var_0, false, true), vec3<bool>(true, false, false)))), vec2<u32>(u_input.d, 7173u)));
    let var_2 = Struct_3(Struct_1(countOneBits(min(vec4<i32>(global0.x, 0i, 6659i, global0.x) << (vec4<u32>(51089u, u_input.b, 1u, 36933u) % vec4<u32>(32u)), vec4<i32>(global0.x, u_input.c, u_input.c, u_input.c) & vec4<i32>(global0.x, u_input.c, 0i, 3023i)))), -firstLeadingBit(abs(countOneBits(vec3<i32>(u_input.c, -42266i, u_input.c)))));
    var var_3 = vec2<u32>(8131u, ~4294967295u);
    global1 = array<vec3<f32>, 14>();
    return firstTrailingBit(_wgslsmith_mod_vec3_i32(~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.a.x, var_2.a.a.x, -87959i), vec3<i32>(global0.x, global0.x, -2147483647i))), vec3<i32>(u_input.c, _wgslsmith_mod_i32(~5319i, u_input.c), -52613i)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(Struct_1(vec4<i32>(69796i, 2147483647i << (select(1u, u_input.d, true) % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, global0.x), ~0i), firstLeadingBit(u_input.c))), -countOneBits(func_4(func_3(vec4<f32>(-647f, 166f, 918f, -746f), 14515u, vec2<i32>(u_input.c, u_input.c), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1222f, -1955f) * vec2<f32>(435f, -1265f)))));
    var var_1 = true;
    var_1 = all(select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), false, all(vec2<bool>(true, true))), select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true))));
    var_1 = !(!(var_0.a.a.x <= 23120i) | all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)));
    var var_2 = Struct_3(var_0.a, reverseBits(vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c) & max(-37607i, 1279i), 2147483647i >> (_wgslsmith_mod_u32(u_input.a, u_input.d) % 32u), _wgslsmith_mod_i32(var_0.b.x, 12283i))));
    return ~vec2<u32>(firstTrailingBit(0u | u_input.d) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 8527u, 1150u, u_input.a), vec4<u32>(u_input.b, 71300u, 11096u, u_input.a)) % 32u), 40367u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = ~_wgslsmith_div_i32(arg_1.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.a.x, -14430i, -37073i)), _wgslsmith_mult_vec3_i32(vec3<i32>(60364i, 4365i, arg_1.a.x), countOneBits(vec3<i32>(arg_1.a.x, 22134i, u_input.c)))));
    var var_1 = _wgslsmith_div_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(global0.x, global0.x, 0i, u_input.c)) ^ vec4<i32>(_wgslsmith_mod_i32(arg_1.a.x << (17378u % 32u), 23834i), 2147483647i, max(1i, global0.x), -29038i), arg_1.a);
    var_1 = arg_1.a;
    var var_2 = countOneBits(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-var_1.x, -25776i), vec2<i32>(arg_1.a.x, var_1.x | arg_1.a.x)), vec2<i32>(-66090i, 57723i)));
    var_0 = global0.x;
    return _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.x, ~u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~u_input.b), func_2()), arg_0), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(global0.x, -1i))) & vec2<i32>(~u_input.c, _wgslsmith_div_i32(global0.x, -2147483647i)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.c, u_input.c)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 18632i))))), _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.c, 37660i), _wgslsmith_div_vec2_i32(vec2<i32>(-21929i, global0.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), min(vec2<i32>(-20253i, 41557i), -vec2<i32>(-27409i, 1i)))));
    let var_0 = Struct_2(countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(u_input.d, u_input.a)), func_1(vec2<u32>(16402u, 1964u), Struct_1(vec4<i32>(-3447i, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, -1000f, 371f, 611f))), vec2<u32>(u_input.d, 4294967295u))));
    let var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(4075u, var_0.a.x, 0u), vec3<u32>(_wgslsmith_div_u32(39068u, ~14849u), _wgslsmith_sub_u32(~var_0.a.x, var_0.a.x), abs(_wgslsmith_clamp_u32(1u, 1u, 85267u)))));
    var var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(1f)));
    var var_3 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -u_input.c, -9578i), max(~(~vec3<i32>(u_input.c, 35752i, global0.x)), select(firstLeadingBit(vec3<i32>(u_input.c, global0.x, u_input.c)), -vec3<i32>(10927i, global0.x, 0i), vec3<bool>(true, false, false)))), select(reverseBits(vec3<i32>(abs(-31957i), ~2147483647i, reverseBits(62949i))), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, global0.x, -1i), vec3<i32>(0i, _wgslsmith_clamp_i32(global0.x, u_input.c, 6984i), u_input.c)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), true), vec3<bool>(select(false, false, true), all(vec4<bool>(true, false, false, false)), false), vec3<bool>(true, true, true))));
    let var_4 = Struct_1(vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 11002i, -27194i, 1i), vec4<i32>(0i, u_input.c, 0i, -32815i)), 2147483647i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 6005i, u_input.c), vec3<i32>(u_input.c, 46476i, -2147483647i)), _wgslsmith_div_i32(global0.x, var_3.x))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(131f, -856f)), var_2.x, _wgslsmith_f_op_f32(-1006f * var_2.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1273f * _wgslsmith_f_op_f32(var_2.x - 258f)), -1467f), _wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(var_2.x - -834f)), -142f, var_2.x), _wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, 18440u), _wgslsmith_sub_vec2_u32(var_1.yy, vec2<u32>(u_input.b, u_input.b) | vec2<u32>(16949u, u_input.b))), vec2<u32>(abs(2896u), ~var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), -248f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

