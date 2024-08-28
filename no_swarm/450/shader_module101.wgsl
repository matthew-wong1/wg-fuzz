struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

var<private> global1: Struct_4;

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(4294967295u, 11550u, 4294967295u, 17147u), vec4<u32>(0u, 26727u, 72676u, 4294967295u), vec4<u32>(40460u, 22188u, 4294967295u, 75972u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(29876u, 84120u, 4294967295u, 1u), vec4<u32>(4294967295u, 50567u, 0u, 4294967295u), vec4<u32>(147542u, 1u, 0u, 20120u), vec4<u32>(0u, 38468u, 43092u, 12270u), vec4<u32>(0u, 0u, 1u, 1161u), vec4<u32>(0u, 90092u, 106432u, 0u), vec4<u32>(9448u, 14722u, 1u, 60008u), vec4<u32>(25163u, 52402u, 0u, 80922u), vec4<u32>(4294967295u, 4294967295u, 64068u, 63738u), vec4<u32>(57061u, 2069u, 43272u, 4294967295u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(4294967295u, 8293u, 61913u, 9215u), vec4<u32>(24849u, 1u, 4294967295u, 51794u), vec4<u32>(1u, 0u, 2770u, 1u), vec4<u32>(31820u, 9165u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 57554u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(18945u, 4294967295u, 4294967295u, 24184u), vec4<u32>(4294967295u, 4294967295u, 1u, 62338u), vec4<u32>(4294967295u, 11976u, 22281u, 1u), vec4<u32>(16831u, 8007u, 57295u, 1u), vec4<u32>(38528u, 0u, 5259u, 4294967295u), vec4<u32>(1u, 0u, 47057u, 106886u), vec4<u32>(4587u, 1u, 69855u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 9341u), vec4<u32>(10016u, 13341u, 4294967295u, 4294967295u), vec4<u32>(0u, 20508u, 0u, 1u));

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    var var_0 = global1.c.x;
    global2 = array<vec4<u32>, 31>();
    let var_1 = global1.a.b;
    return Struct_3(u_input.a.x, Struct_1(var_1.a, global1.a.e.a.x >= 74681u, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), 856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f + global1.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(569f, -1082f)))) + global1.a.e.d)), vec3<bool>(arg_1, false, arg_1), global1.a.d, Struct_1(~var_1.a, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(floor(var_1.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.c.x)), var_1.d.x)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    let var_0 = func_1(_wgslsmith_add_u32(69670u, ~(~arg_1)), true);
    var var_1 = ~1u;
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(20933i, -22082i, 35244i), vec3<i32>(-1i, -2147483647i, 2147483647i), vec3<i32>(-1i, 1i, 30396i))) >> (~arg_0.a.x % 32u), 1i, abs(~(~5257i)), 1i));
    let var_3 = var_0;
    var var_4 = select(vec4<bool>(false, all(!select(vec4<bool>(arg_0.b, false, false, true), vec4<bool>(true, arg_0.b, true, false), var_3.e.b)), any(vec4<bool>(!global1.b, true, true, select(var_0.e.b, var_3.b.b, true))), var_0.b.c.x != _wgslsmith_f_op_f32(max(-209f, _wgslsmith_f_op_f32(f32(-1f) * -685f)))), vec4<bool>(!(2063i < firstLeadingBit(var_2.x)), false, false, all(var_3.c.zx) & true), vec4<bool>(global1.b, ~arg_1 <= 0u, !global1.b, false));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1287f, var_0.d.d.x))), -704f, _wgslsmith_f_op_f32(var_3.d.c.x + _wgslsmith_f_op_f32(min(2542f, var_0.d.d.x))))), _wgslsmith_f_op_vec3_f32(-arg_0.c.yyw)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = true;
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(global1.a.e, 39366u));
    global0 = array<Struct_4, 23>();
    let var_3 = any(!select(!(!vec3<bool>(false, global1.b, false)), vec3<bool>(var_0 | false, false, any(arg_2.c.xy)), !all(vec3<bool>(false, arg_0.d.b, arg_2.c.x))));
    return global0[_wgslsmith_index_u32(23391u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 31>();
    global0 = array<Struct_4, 23>();
    global1 = global0[_wgslsmith_index_u32(6164u, 23u)];
    global1 = func_2(func_1(u_input.a.x, global1.b), ~u_input.a, Struct_3(1u, Struct_1(vec2<u32>(1u, global1.a.a), !global1.a.c.x && false, vec4<f32>(641f, global1.c.x, _wgslsmith_f_op_f32(select(-461f, global1.a.d.d.x, true)), _wgslsmith_f_op_f32(global1.a.b.c.x - -1632f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.c.yz, vec2<f32>(global1.a.d.c.x, global1.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) - vec2<f32>(global1.c.x, 1771f)))), vec3<bool>(global1.b, any(!vec3<bool>(global1.b, false, global1.b)), ~1u < (0u & u_input.a.x)), Struct_1(u_input.a.zz, !global1.a.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d.c.x, global1.a.b.d.x, global1.a.b.d.x, global1.c.x)), _wgslsmith_f_op_vec2_f32(-global1.c.yy)), global1.a.e), func_1(_wgslsmith_div_u32(u_input.a.x, select(4294967295u, _wgslsmith_clamp_u32(global1.a.d.a.x, global1.a.a, u_input.a.x), global1.a.e.b)), true).e.d);
    var var_0 = 34853u;
    global0 = array<Struct_4, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-_wgslsmith_add_i32(abs(17656i), 80521i), _wgslsmith_sub_i32(-2147483647i, ~1i)), global1.c.xz);
}

