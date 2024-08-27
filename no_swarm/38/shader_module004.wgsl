struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 25> = array<i32, 25>(1i, -1228i, 0i, 0i, 37897i, i32(-2147483648), i32(-2147483648), 758i, 7111i, i32(-2147483648), 18388i, -25068i, 1i, 0i, 32466i, -1i, i32(-2147483648), -1i, 0i, i32(-2147483648), -89i, 11575i, 1i, 0i, 2147483647i);

var<private> global2: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-1i, 0i, 1i), vec3<i32>(61338i, -1i, -19400i), vec3<i32>(-9107i, 50996i, 0i), vec3<i32>(-1940i, -15064i, 1i), vec3<i32>(-25549i, 0i, i32(-2147483648)), vec3<i32>(0i, 62370i, 1i), vec3<i32>(-36426i, 1691i, 0i), vec3<i32>(30604i, -19536i, 34416i), vec3<i32>(2147483647i, 8857i, -4725i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(-47290i, 0i, 0i), vec3<i32>(-31619i, 3668i, 2147483647i), vec3<i32>(44246i, 1i, -11078i), vec3<i32>(0i, 12691i, -65356i), vec3<i32>(-74255i, 0i, -66141i), vec3<i32>(1i, -66776i, -69606i), vec3<i32>(15036i, -1i, -9292i), vec3<i32>(i32(-2147483648), 1i, -17625i), vec3<i32>(2147483647i, 0i, 13626i), vec3<i32>(-1i, 2147483647i, 26675i), vec3<i32>(52675i, 1i, 2147483647i), vec3<i32>(33380i, -56254i, -39488i), vec3<i32>(0i, i32(-2147483648), -1i));

var<private> global3: Struct_2;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> f32 {
    global2 = array<vec3<i32>, 23>();
    global0 = (_wgslsmith_add_i32(global3.a.a, ~(-14261i)) | global3.d) | 1i;
    return _wgslsmith_div_f32(-290f, _wgslsmith_div_f32(-750f, -756f));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global3.a.c.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.c.yz - vec2<f32>(1015f, global3.e.c.x)))))));
    var var_1 = global3.a.c;
    var_1 = global3.a.c;
    var var_2 = -704f;
    let var_3 = select(vec3<bool>(all(vec3<bool>(false, !global3.a.d, true)), true, !any(select(vec3<bool>(global3.a.d, true, global3.e.d), vec3<bool>(false, global3.e.d, global3.a.d), vec3<bool>(true, false, global3.a.d)))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1597f, var_1.x)) < -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f + -282f)) <= var_1.x, any(!vec2<bool>(true, global3.e.d))), true && all(select(!vec3<bool>(true, global3.e.d, true), !vec3<bool>(global3.e.d, true, true), vec3<bool>(false, true, true))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c, 317f, -494f), vec3<f32>(428f, -428f, -1152f), var_3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.c) - vec3<f32>(global3.a.c.x, -982f, 1240f))) - global3.a.c));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(global3.a.c - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, _wgslsmith_f_op_f32(-global3.e.c.x), -1667f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global3.a.c, global3.a.c)) + global3.e.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))));
    global3 = Struct_2(global3.e, _wgslsmith_add_vec4_u32(global3.b, reverseBits(select(~vec4<u32>(u_input.a.x, 6119u, 1u, 35847u), global3.b & vec4<u32>(global3.b.x, 1206u, u_input.b.x, 0u), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global3.c) + var_0.x) * global3.e.c.x) * -930f), global3.e.b.x, Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(-2147483647i), i32(-1i) * -20089i), (global1[_wgslsmith_index_u32(4294967295u, 25u)] << (6873u % 32u)) >> (abs(global3.b.x) % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)] >> (3905u % 32u), countOneBits(-2147483647i), countOneBits(-21984i), _wgslsmith_mult_i32(52382i, global3.e.b.x)), (global3.e.b & global3.a.b) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 26267i, global1[_wgslsmith_index_u32(53844u, 25u)], global3.e.a), global3.e.b)), global3.e.c, true));
    var var_1 = firstLeadingBit(global3.e.b.x | (abs(1i) << (global3.b.x % 32u)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.e.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-258f, var_0.x))))))));
    var_1 = ~(-26037i);
    return Struct_2(global3.e, ~global3.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))))), -min(-1i, abs(countOneBits(-2147483647i))), global3.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = select(true, false, !global3.a.d);
    global2 = array<vec3<i32>, 23>();
    global0 = global1[_wgslsmith_index_u32(global3.b.x, 25u)];
    return vec4<bool>((firstLeadingBit(firstTrailingBit(27919u)) ^ 1u) > ~_wgslsmith_mult_u32(~1u, 57876u << (arg_0.b.x % 32u)), global3.a.d, _wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_dot_vec3_u32(min(u_input.b, u_input.b), firstTrailingBit(u_input.a.xxw))) <= ~_wgslsmith_div_u32(select(u_input.a.x, u_input.b.x, var_0), u_input.a.x), !(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.a.d), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.c.xz) * vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)))));
    global2 = array<vec3<i32>, 23>();
    global2 = array<vec3<i32>, 23>();
    global2 = array<vec3<i32>, 23>();
    var var_1 = select(vec4<bool>(true & global3.a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-297f - 1677f), _wgslsmith_f_op_f32(ceil(global3.a.c.x)), false)) != var_0.x, !global3.e.d, any(vec4<bool>(true, true, global3.a.d, false))), vec4<bool>(true, all(!(!vec4<bool>(true, global3.a.d, true, false))), any(vec4<bool>(true || global3.a.d, global3.e.d, global3.e.d, !global3.a.d)), false), func_4(func_2(), _wgslsmith_add_vec2_u32(vec2<u32>(7043u, u_input.a.x), ~vec2<u32>(u_input.a.x, u_input.b.x)) & _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(0u, 53886u)), firstLeadingBit(u_input.b.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(-global3.a.b.x >> (global3.b.x % 32u));
}

