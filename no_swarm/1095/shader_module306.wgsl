struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global3: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(457f, _wgslsmith_f_op_f32(f32(-1f) * -1624f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) + 700f), _wgslsmith_div_f32(_wgslsmith_div_f32(391f, 608f), _wgslsmith_f_op_f32(trunc(-643f))))));
    var var_1 = Struct_1(vec3<i32>(abs(u_input.a.x), u_input.a.x, u_input.a.x));
    var var_2 = ~_wgslsmith_add_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 62894u), vec2<u32>(0u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(41663u, 8338u), vec2<u32>(51434u, 0u)), true), vec2<u32>(1u, ~_wgslsmith_div_u32(25545u, 36547u)));
    let var_3 = 0u;
    var_0 = vec3<f32>(108f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-765f + var_0.x), 352f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(var_0.x + 154f)))));
    return !any(select(vec2<bool>(true, true), vec2<bool>(true, true), (68174i > u_input.a.x) & true));
}

fn func_2() -> Struct_2 {
    global2 = array<vec3<bool>, 17>();
    global3 = ~4294967295u;
    var var_0 = select(vec4<bool>(func_3(), true, true, true), !select(vec4<bool>(any(vec4<bool>(true, false, true, true)), false, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, false));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(select(4294967295u, select(1u, 1u, var_0.x), false), ~(~6113u)), 37957u, max(~7971u, 0u)), 6u)];
    let var_2 = Struct_2(-u_input.a.x, (var_1.x & 75078u) >= var_1.x);
    return Struct_2(countOneBits(0i), !var_0.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    global2 = array<vec3<bool>, 17>();
    let var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(58301u, arg_0 ^ select(~arg_0, arg_1, arg_3.x != -55655i), ~(min(arg_0, 4294967295u) & 1u)), 28u)];
    return _wgslsmith_f_op_f32(-arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !all(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), 4294967295u << (0u % 32u)), 17u)]), select(max(~7964i, u_input.a.x ^ 0i) == -_wgslsmith_mod_i32(-2147483647i, u_input.a.x), -25683i == _wgslsmith_sub_i32(49087i | u_input.a.x, u_input.a.x), true), true);
    var var_1 = vec2<u32>(1u, 1u);
    var var_2 = u_input.a.x;
    var var_3 = -51734i;
    let var_4 = global1[_wgslsmith_index_u32(var_1.x & 4294967295u, 28u)];
    var var_5 = var_0.x;
    global2 = array<vec3<bool>, 17>();
    let var_6 = _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(reverseBits(0u), 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)]);
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_1.x, 18452u, -1078f, vec4<i32>(75885i, var_4.a.x, u_input.a.x, -1i)))) - _wgslsmith_f_op_f32(-1000f + -823f))));
    let x = u_input.a;
    s_output = StorageBuffer(-549f, ~var_6.zx, 1013u);
}

