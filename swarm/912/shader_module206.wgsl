struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(7707u, 4294967295u, 0u), vec3<u32>(31749u, 43789u, 3588u));

var<private> global2: vec3<f32> = vec3<f32>(286f, 1476f, 1774f);

var<private> global3: array<Struct_2, 10>;

var<private> global4: array<i32, 9> = array<i32, 9>(1i, 27353i, -4875i, 35299i, 4494i, 1i, 49109i, 8191i, 9293i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = vec4<u32>(78742u, 59999u, 1u >> (u_input.a.x % 32u), 1u);
    let var_1 = Struct_2(arg_1);
    let var_2 = arg_0;
    global4 = array<i32, 9>();
    let var_3 = var_2;
    return ~vec2<i32>(-14817i, arg_2) & vec2<i32>(-global4[_wgslsmith_index_u32(~var_3.c, 9u)], ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, 2147483647i), global4[_wgslsmith_index_u32(var_0.x, 9u)], _wgslsmith_sub_i32(-29369i, 19948i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = array<Struct_2, 5>();
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-1451f * global2.x)));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(~u_input.a.x, 9u)], _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, 18403i), arg_1), ~vec2<i32>(-9111i, arg_1.x)), -_wgslsmith_mult_i32(arg_1.x, global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), i32(-1i) * -global4[_wgslsmith_index_u32(120651u, 9u)]), -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -36468i), reverseBits(vec4<i32>(-19646i, global4[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_1.x, -2147483647i)))) << (u_input.a.x % 32u);
    var var_2 = u_input.a.x;
    return select(vec4<u32>(u_input.a.x, reverseBits(~13595u), max(~u_input.a.x, u_input.a.x), u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x)), true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, _wgslsmith_sub_u32(var_0.c, firstLeadingBit(102543u)), 11162u, _wgslsmith_div_u32(911u, 58516u)), vec4<u32>(firstLeadingBit(4294967295u), u_input.a.x, ~arg_1.c, ~var_0.c) >> (~vec4<u32>(var_0.a, u_input.a.x, var_0.a, arg_1.a) % vec4<u32>(32u))) ^ 5666u;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yx)), global2.yz);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_3(select(vec4<bool>(arg_2.x, arg_0.a, arg_2.x, false), !vec4<bool>(arg_1.b, false, arg_0.a, false), select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(false, arg_1.b, arg_1.b, true), vec4<bool>(arg_0.a, var_0.b, false, arg_2.x))), firstLeadingBit(func_2(arg_1, true, global4[_wgslsmith_index_u32(0u, 9u)], arg_1)), !vec4<bool>(true, arg_2.x, arg_0.a, false)) << (_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 1u, u_input.a.x, 4294967295u)), (vec4<u32>(39313u, arg_1.c, arg_1.a, 4369u) ^ vec4<u32>(4294967295u, var_0.a, arg_1.a, u_input.a.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(15206u, arg_1.a, 4294967295u, u_input.a.x), vec4<u32>(arg_1.a, 51063u, 47628u, var_0.c))) % vec4<u32>(32u)), ~vec4<u32>(~arg_1.c | 2519u, _wgslsmith_sub_u32(4294967295u, 95657u) >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, arg_1.c) & vec2<u32>(64447u, 33151u), firstLeadingBit(vec2<u32>(1015u, 7483u))), abs(u_input.a.x >> (u_input.a.x % 32u)))), 10u)];
    global3 = array<Struct_2, 10>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a.x);
    global1 = array<vec3<u32>, 3>();
    global3 = array<Struct_2, 10>();
    global4 = array<i32, 9>();
    global4 = array<i32, 9>();
    global4 = array<i32, 9>();
    global4 = array<i32, 9>();
    var var_1 = !(!vec3<bool>(true | (global4[_wgslsmith_index_u32(var_0, 9u)] != global4[_wgslsmith_index_u32(1u, 9u)]), true, func_1(Struct_2(true), Struct_1(1u, false, u_input.a.x), vec3<bool>(true, true, true))));
    var var_2 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x * global2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x + 234f), -707f)))) + _wgslsmith_f_op_f32(-global2.x)));
}

