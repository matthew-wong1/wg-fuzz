struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 20> = array<i32, 20>(27905i, 2147483647i, i32(-2147483648), 57865i, -1i, i32(-2147483648), -34480i, 2147483647i, 0i, -35578i, 2147483647i, -36277i, -1i, i32(-2147483648), 2147483647i, 1i, -4879i, -582i, -8917i, -5094i);

var<private> global2: array<vec3<f32>, 6>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 20>();
    let var_0 = 30097u;
    global2 = array<vec3<f32>, 6>();
    return Struct_1(countOneBits(vec4<u32>(~4294967295u, var_0, 1880u, var_0)), var_0 & ~1u);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<i32> {
    var var_0 = select(vec4<bool>(1u <= (select(0u, 1u, true) | 0u), true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 79368u, 24067u, 5199u), vec4<u32>(9786u, 10972u, 4294967295u, 61549u)) > 12992u, !select(true, false, true), false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), select(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), true), !(all(vec2<bool>(false, false)) | false)));
    let var_1 = vec2<i32>(countOneBits(_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 20u)], (23730i & global1[_wgslsmith_index_u32(67808u, 20u)]) << ((4294967295u << (0u % 32u)) % 32u))), u_input.a);
    global1 = array<i32, 20>();
    global0 = false;
    global0 = true & (var_0.x || false);
    return vec2<i32>(i32(-1i) * -_wgslsmith_mod_i32(var_1.x, -1i << (1u % 32u)), 23495i);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = ~(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1401f * -1447f) - -496f)) | _wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -16977i), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-18910i, i32(-1i) * -1i)));
    var var_1 = Struct_2(select(~(~vec2<u32>(4294967295u, 5132u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 17652u), ~7999u), 0u), vec2<bool>(false, true)), true, ~vec3<i32>(~(~(-2147483647i)), countOneBits(2147483647i), min(6849i, _wgslsmith_sub_i32(var_0.x, var_0.x))));
    global0 = false;
    var var_2 = Struct_2(~(~(_wgslsmith_sub_vec2_u32(var_1.a, var_1.a) << (~vec2<u32>(75467u, 1218u) % vec2<u32>(32u)))), true, _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_1.c.x, _wgslsmith_sub_i32(reverseBits(var_1.c.x), var_0.x | -1i)), var_1.c));
    let var_3 = !vec4<bool>(true, false, all(select(!vec2<bool>(false, arg_0), !vec2<bool>(false, var_2.b), !vec2<bool>(arg_0, false))), any(select(!vec4<bool>(false, var_1.b, var_2.b, var_1.b), vec4<bool>(var_1.b, var_2.b, arg_0, true), !vec4<bool>(var_1.b, false, false, var_1.b))));
    return firstLeadingBit(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, var_1.a.x, 0u, var_1.a.x), vec4<u32>(var_2.a.x, 4294967295u, var_2.a.x, 1u)), vec4<u32>(min(var_1.a.x, 15568u), var_2.a.x, 1u, var_2.a.x & var_2.a.x), !(!var_3))) << (countOneBits(vec4<u32>(0u, _wgslsmith_div_u32(4294967295u, var_2.a.x), ~var_2.a.x, 4294967295u) | ~(~vec4<u32>(0u, 1u, 4294967295u, 4294967295u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    global2 = array<vec3<f32>, 6>();
    global0 = _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(32651u, 20u)], _wgslsmith_div_i32(1i, i32(-1i) * -16980i)) < -u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(~(~22422u), 20u)];
    var var_3 = global2[_wgslsmith_index_u32(var_1.a.x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zy, func_2(select(true, false, true)), 84235i, ~_wgslsmith_add_vec3_i32(vec3<i32>(~global1[_wgslsmith_index_u32(var_0.a.x, 20u)], global1[_wgslsmith_index_u32(~var_1.b, 20u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72088u, 7286u, 0u), vec4<u32>(var_1.b, 1u, 1u, 11976u)), 20u)]), ~select(vec3<i32>(47243i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, -1i), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), 299f, _wgslsmith_f_op_f32(-1113f - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1059f)), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, var_3.x)), _wgslsmith_div_f32(var_3.x, 1850f), 1752f, _wgslsmith_f_op_f32(282f * var_3.x))))));
}

