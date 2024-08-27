struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(1044f - 171f);
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var var_2 = false;
    var var_3 = Struct_3(!(!var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, _wgslsmith_f_op_f32(-2705f + 675f), 1f))));
    var var_4 = Struct_3(true, var_3.b);
    return vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 673f))))), _wgslsmith_f_op_f32(f32(-1f) * -2469f));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_3(arg_2.x == -u_input.b.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(-vec3<i32>(arg_2.x, arg_2.x, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f)), -963f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1877f * 1395f), -1452f))))));
    let var_1 = ~_wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 6598u, 12286u, 4294967295u), vec4<u32>(23972u, arg_0.x, arg_0.x, arg_0.x))), ~(vec4<u32>(u_input.c.x, 34120u, arg_0.x, u_input.a) & vec4<u32>(arg_0.x, 4294967295u, 8415u, 4294967295u)));
    var var_2 = Struct_4(global0.x, _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(arg_2.x, -58751i)), vec2<i32>(_wgslsmith_add_i32(select(17699i, -1i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -34811i, -37383i), vec4<i32>(global0.x, -57986i, -1i, 0i))), global0.x)), u_input.a);
    let var_3 = _wgslsmith_mod_vec3_i32(global0.ywz, global0.ywz);
    return 18574u;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(~(~vec2<i32>(i32(-1i) * -2147483647i, u_input.b.x ^ global0.x)), global0.xz);
    var var_1 = 4294967295u;
    global1 = array<vec4<bool>, 27>();
    let var_2 = vec4<u32>(func_2(~vec2<u32>(u_input.c.x, 0u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), vec2<i32>(-84228i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 25460i, 1i, global0.x), vec4<i32>(-47103i, var_0.x, -2147483647i, 20603i))) << (u_input.c % vec2<u32>(32u))), func_2(_wgslsmith_div_vec2_u32(max(~vec2<u32>(4294967295u, 65158u), abs(u_input.c)), reverseBits(vec2<u32>(u_input.a, 11062u))), vec3<bool>((4984u < u_input.c.x) | all(global1[_wgslsmith_index_u32(0u, 27u)]), true, _wgslsmith_f_op_f32(step(149f, -513f)) != _wgslsmith_f_op_f32(1969f + -1380f)), global0.zw | global0.xz), abs(~(select(u_input.a, 0u, false) | ~u_input.c.x)), _wgslsmith_sub_u32(~(~u_input.c.x) | 1675u, _wgslsmith_mult_u32(u_input.a, (u_input.a >> (113349u % 32u)) & _wgslsmith_mod_u32(u_input.a, 4294967295u))));
    let var_3 = _wgslsmith_add_vec2_u32(var_2.zx, _wgslsmith_add_vec2_u32(var_2.zw, _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x ^ 44420u, _wgslsmith_mod_u32(var_2.x, 0u)), vec2<u32>(1u, 0u))));
    return vec4<bool>(true, true, ~(-_wgslsmith_mod_i32(2147483647i, global0.x)) >= -2147483647i, firstTrailingBit(1u) < 41496u);
}

fn func_4(arg_0: vec4<bool>) -> bool {
    let var_0 = -vec4<i32>(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-11399i, global0.x, global0.x, global0.x), vec4<i32>(2147483647i, -2147483647i, global0.x, global0.x), vec4<bool>(arg_0.x, true, true, arg_0.x)), -vec4<i32>(46912i, u_input.b.x, -41471i, -2147483647i)), firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(30718i, global0.x, -11530i, 105572i), vec4<i32>(global0.x, u_input.b.x, global0.x, -50811i)))), -_wgslsmith_add_i32(0i, 2147483647i), u_input.b.x);
    var var_1 = !arg_0.x & !arg_0.x;
    let var_2 = Struct_2(_wgslsmith_div_i32(-global0.x, -(~global0.x)), Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1149f, 212f, -135f, 2403f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2160f, 867f, -612f, -1309f)))))), _wgslsmith_div_i32(max(max(u_input.b.x, var_0.x), var_0.x >> (31575u % 32u)), -_wgslsmith_dot_vec4_i32(var_0, var_0)), u_input.b, all(global1[_wgslsmith_index_u32(~u_input.c.x >> (~u_input.a % 32u), 27u)])));
    var var_3 = _wgslsmith_mult_i32(var_0.x, ~var_0.x);
    global0 = -firstLeadingBit(vec4<i32>(min(var_2.b.c, _wgslsmith_clamp_i32(0i, u_input.b.x, 12494i)), ~(-var_2.b.c), 1i, -114903i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_vec3_i32(select(vec3<i32>(21730i, var_0.x, 1i), var_0.ywx, arg_0.x), global0.yxz))).x) == _wgslsmith_f_op_f32(abs(-319f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!((_wgslsmith_f_op_f32(round(-809f)) > 583f) && !(u_input.c.x < 4294967295u)), func_4(func_1()), !all(select(vec4<bool>(false, false, true, true), select(global1[_wgslsmith_index_u32(0u, 27u)], vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(1u, 27u)]), all(vec2<bool>(false, false)))));
    let var_1 = firstLeadingBit(0i | _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.x, 2147483647i), vec2<i32>(u_input.b.x, global0.x)));
    let var_2 = Struct_3(firstLeadingBit((14798u << (u_input.c.x % 32u)) ^ u_input.a) == ~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(164f, 1000f, 1770f)))))));
    let var_3 = Struct_2(i32(-1i) * -_wgslsmith_mult_i32(16518i, u_input.b.x ^ 1i), Struct_1(116143u > _wgslsmith_add_u32(1u, u_input.c.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-865f, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_div_f32(var_2.b.x, 295f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -1420f, 840f, var_2.b.x) + vec4<f32>(var_2.b.x, var_2.b.x, 220f, var_2.b.x)), vec4<f32>(-1760f, 147f, 1195f, var_2.b.x)))), ~0i, vec2<i32>(_wgslsmith_add_i32(~var_1, _wgslsmith_add_i32(var_1, var_1)), -1i), (_wgslsmith_f_op_f32(-var_2.b.x) < var_2.b.x) && select(false, false, any(var_0.yy))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b.b - _wgslsmith_f_op_vec4_f32(-var_3.b.b)) - vec4<f32>(-700f, 778f, -279f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1303f)) + 990f)))));
    var var_5 = -617f;
    var var_6 = min(vec4<i32>(global0.x, 49751i, i32(-1i) * -_wgslsmith_sub_i32(13941i, global0.x), firstTrailingBit(_wgslsmith_div_i32(var_1, ~var_1))), vec4<i32>(-var_3.b.d.x, _wgslsmith_add_i32(-(var_3.b.d.x ^ -1i), 0i), select(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global0.x, var_1), vec4<i32>(var_1, -31021i, -15620i, 0i)), 46037i), global0.x, false | var_2.a), -8761i));
    var_5 = _wgslsmith_f_op_f32(-var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

