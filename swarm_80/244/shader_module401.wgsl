struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 17>;

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(2689f, -340f, 1355f), vec3<f32>(1223f, -1194f, 1102f), vec3<f32>(-829f, 1286f, -217f), vec3<f32>(855f, 300f, -939f), vec3<f32>(-1645f, -171f, 616f), vec3<f32>(-1028f, -1705f, 1000f), vec3<f32>(967f, -726f, 1216f));

var<private> global3: array<f32, 16> = array<f32, 16>(-206f, -1000f, 858f, -249f, -541f, 309f, -156f, -954f, -310f, -347f, -1135f, -291f, -2500f, -609f, -642f, -668f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    global1 = array<vec3<u32>, 17>();
    global3 = array<f32, 16>();
    let var_0 = countOneBits(global1[_wgslsmith_index_u32(u_input.b, 17u)]);
    var var_1 = Struct_1(~6866i | _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), u_input.d), -vec3<i32>(-u_input.d, u_input.d, min(abs(32466i), 0i)));
    let var_2 = _wgslsmith_add_vec2_i32(~(var_1.b.zy & (_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_1.a), vec2<i32>(1i, var_1.b.x)) & vec2<i32>(var_1.b.x, u_input.d))), vec2<i32>(1i, 2147483647i << (~_wgslsmith_mult_u32(var_0.x, u_input.a.x) % 32u)));
    return 11488i;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = ~((~(vec3<u32>(u_input.c, u_input.c, 4294967295u) >> (vec3<u32>(5734u, 1u, 1u) % vec3<u32>(32u))) << (~vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u))) | (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.c, u_input.a.x)), u_input.a.xwy << (global1[_wgslsmith_index_u32(1u, 17u)] % vec3<u32>(32u))) ^ ~vec3<u32>(1u, u_input.a.x, 9443u)));
    var var_1 = arg_2;
    let var_2 = arg_0;
    let var_3 = (select(var_2, true, select(arg_3.x < var_1.a, 562f <= global3[_wgslsmith_index_u32(1u, 16u)], false)) || arg_0) && (firstTrailingBit(23986u | _wgslsmith_sub_u32(u_input.b, u_input.b)) < var_0.x);
    let var_4 = vec2<f32>(934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1798f * _wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 16u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1431f, global3[_wgslsmith_index_u32(0u, 16u)])) * 693f))));
    return !vec4<bool>(false, all(!vec3<bool>(arg_0, var_2, false)), !(~var_1.b.x != arg_3.x), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = firstTrailingBit(vec4<i32>(arg_1.x, 16792i, -arg_1.x, 0i));
    var var_1 = !select(vec4<bool>(false, any(func_3(false, arg_0, arg_0, vec4<i32>(1i, arg_1.x, 1i, 28387i))), true, all(func_3(arg_2.x, Struct_1(-1i, vec3<i32>(u_input.d, var_0.x, arg_1.x)), Struct_1(u_input.d, arg_1), vec4<i32>(2147483647i, 0i, -2147483647i, var_0.x)))), vec4<bool>(all(!vec4<bool>(true, arg_2.x, true, arg_2.x)), all(vec4<bool>(false, arg_2.x, true, true)) != arg_2.x, true, arg_2.x), func_3(arg_2.x, arg_0, arg_0, abs(vec4<i32>(12205i, -60961i, 53826i, 0i) & vec4<i32>(var_0.x, 1i, var_0.x, -1i))));
    var var_2 = vec4<bool>(arg_2.x, arg_2.x, abs(~u_input.d) > (-51034i ^ _wgslsmith_sub_i32(max(-2147483647i, 0i), -419i | arg_1.x)), !func_3(false, Struct_1(u_input.d >> (16989u % 32u), arg_1 << (vec3<u32>(u_input.a.x, u_input.b, 5725u) % vec3<u32>(32u))), arg_0, vec4<i32>(-2147483647i, arg_1.x, arg_1.x, _wgslsmith_div_i32(u_input.d, arg_0.b.x))).x);
    let var_3 = vec4<i32>(arg_1.x, arg_1.x, ~countOneBits(1i), _wgslsmith_div_i32(24706i, select(arg_0.b.x, _wgslsmith_div_i32(10273i, var_0.x), false))) ^ firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, arg_0.a, u_input.d), _wgslsmith_sub_i32(arg_0.a, arg_1.x), reverseBits(arg_0.a), -20126i) >> (u_input.a % vec4<u32>(32u)));
    global2 = array<vec3<f32>, 7>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(5271u, 22720u, 1u, 61943u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 14587u, u_input.a.x, u_input.a.x), u_input.a)), u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(57690u, 39304u, 51114u | u_input.c, ~1u) | u_input.a, firstTrailingBit(vec4<u32>(select(1u, 4294967295u, var_2.x), 1u, u_input.b, ~u_input.c))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = array<f32, 16>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(15487u, 16u)])))), _wgslsmith_f_op_f32(1155f * arg_0))));
    let var_0 = vec3<i32>(arg_2.a | ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.b.x, u_input.d), arg_2.b), _wgslsmith_add_i32(-22783i, u_input.d)), 0i, -2147483647i);
    global1 = array<vec3<u32>, 17>();
    var var_1 = 60399u;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(26684i, -29012i, (u_input.d ^ (func_1() | ~1i)) << (28893u % 32u), _wgslsmith_add_i32(2147483647i, -(u_input.d | firstTrailingBit(u_input.d))));
    var var_1 = Struct_1(max(-var_0.x, _wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(27535i, var_0.x, var_0.x, 37463i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, -2147483647i, 2147483647i), vec4<i32>(-1i, var_0.x, u_input.d, 2147483647i)), any(vec2<bool>(false, false))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.d, 20445i, 1i, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.d, u_input.d, -17228i, u_input.d))))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(select(var_0.xzw, vec3<i32>(2147483647i, u_input.d, var_0.x), vec3<bool>(true, true, true)), var_0.xwx ^ var_0.xyz), var_0.wxz));
    let var_2 = Struct_1(1i, countOneBits(_wgslsmith_div_vec3_i32(var_1.b >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.d, var_0.x, var_1.a))) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.d, -2147483647i), vec3<i32>(abs(0i), ~0i, var_1.a)));
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(func_2(Struct_1(11982i, vec3<i32>(-12867i, var_0.x, var_1.b.x)), ~vec3<i32>(var_0.x, var_0.x, -3609i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 16u)], -1509f))), var_2, var_2, Struct_1(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.d), vec4<i32>(u_input.d, var_1.b.x, 0i, var_2.b.x)), var_0.x, true) ^ max(var_0.x, ~var_1.b.x), (vec3<i32>(-1i) * -var_0.yyx) | (var_0.xxx >> (vec3<u32>(u_input.c, 0u, 1u) % vec3<u32>(32u)))));
    global2 = array<vec3<f32>, 7>();
    var_0 = vec4<i32>(-24875i, var_2.b.x, 0i, 15607i);
    var var_4 = var_3;
    let var_5 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(14493u, 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_0.x, _wgslsmith_mod_i32(abs(u_input.d), _wgslsmith_div_i32(1i >> (u_input.a.x % 32u), abs(-2147483647i)))), _wgslsmith_sub_i32(~var_3.a, ~var_2.a));
}

