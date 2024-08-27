struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 21> = array<u32, 21>(41060u, 54254u, 1u, 10632u, 14242u, 32775u, 25962u, 4294967295u, 36426u, 28814u, 13228u, 1u, 1u, 1u, 0u, 1u, 0u, 10180u, 33847u, 4294967295u, 14421u);

var<private> global3: array<Struct_2, 4>;

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = -2147483647i;
    global2 = array<u32, 21>();
    var var_1 = 2147483647i;
    var_1 = abs(abs(_wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 21u)]), abs(1u)), 4u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(185f - _wgslsmith_f_op_f32(f32(-1f) * -598f)), 1292f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1316f, 155f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(569f, -1073f) * vec2<f32>(-1108f, 1000f)))))), global1.zw));
    return ~(~vec2<u32>(33134u, u_input.a));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> bool {
    var var_0 = all(select(vec2<bool>(global1.x || !global1.x, true), select(global1.xw, vec2<bool>(global1.x, true), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 21u)] <= arg_2.x)), true & !select(true, true, global1.x)));
    var var_1 = ~select(arg_3, ~(arg_3 << (vec2<u32>(arg_2.x, arg_2.x) % vec2<u32>(32u))), !vec2<bool>(4294967295u <= arg_2.x, !global1.x));
    global2 = array<u32, 21>();
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(209f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f) + 1000f)));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(max(_wgslsmith_add_vec2_u32(select(arg_2, arg_2, global1.zy), ~vec2<u32>(9422u, u_input.a)), arg_2), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(23500u, global2[_wgslsmith_index_u32(4294967295u, 21u)])), 4294967295u), min(~arg_2, _wgslsmith_clamp_vec2_u32(arg_2, vec2<u32>(4294967295u, 48084u), arg_2)))));
    return 1000f != _wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2, -1893f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-154f, 443f)), var_2)));
}

fn func_2() -> vec4<u32> {
    let var_0 = global1.yw;
    var var_1 = -_wgslsmith_sub_i32(global4.x, abs(-25320i));
    global4 = u_input.b.yy;
    global1 = select(vec4<bool>(true, func_3(i32(-1i) * -8290i, abs(vec4<i32>(global4.x, -20363i, global4.x, global0[_wgslsmith_index_u32(11378u, 4u)])), countOneBits(~vec2<u32>(17555u, u_input.a)), -(vec2<i32>(1i, global4.x) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), true | global1.x, true), !select(vec4<bool>(false, all(vec4<bool>(false, false, false, true)), false, all(global1.xx)), !(!vec4<bool>(var_0.x, true, true, var_0.x)), !(!vec4<bool>(false, global1.x, global1.x, global1.x))), select(select(select(!vec4<bool>(global1.x, false, true, true), select(vec4<bool>(var_0.x, var_0.x, global1.x, false), vec4<bool>(true, global1.x, var_0.x, false), vec4<bool>(global1.x, var_0.x, global1.x, false)), true), !select(vec4<bool>(var_0.x, false, var_0.x, global1.x), vec4<bool>(var_0.x, var_0.x, false, true), true), !vec4<bool>(global1.x, true, var_0.x, false)), select(!vec4<bool>(global1.x, global1.x, true, global1.x), select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, true, true, global1.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(global1.x, var_0.x, true, true), var_0.x)), vec4<bool>(global1.x, global1.x, false, true)), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, false, global1.x, var_0.x), !(!vec4<bool>(true, var_0.x, global1.x, false)))));
    global2 = array<u32, 21>();
    return ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(u_input.a), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 21u)]), 20685u), abs(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(countOneBits(u_input.a), 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)])), global2[_wgslsmith_index_u32(71324u, 21u)], 40681u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -937f;
    let var_1 = 41921u;
    let var_2 = _wgslsmith_mult_vec2_u32(select(~vec2<u32>(var_1, 37048u), vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.a), 1u), 21u)], _wgslsmith_div_u32(u_input.a, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(378f, var_0)) <= var_0), _wgslsmith_add_vec2_u32(func_1(), vec2<u32>(4294967295u, 26405u << (_wgslsmith_clamp_u32(u_input.a, 9576u, 28695u) % 32u))));
    global3 = array<Struct_2, 4>();
    var var_3 = Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(func_2(), func_2()), abs(1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(131375u, var_1, var_2.x), vec3<u32>(1u, 46033u, u_input.a) >> (vec3<u32>(var_2.x, 1u, u_input.a) % vec3<u32>(32u))))), Struct_1(1u));
    global4 = vec2<i32>(~firstLeadingBit(min(1i, u_input.d) & _wgslsmith_mult_i32(global4.x, u_input.c.x)), u_input.b.x);
    global3 = array<Struct_2, 4>();
    global2 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(-319f, var_0), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1830f, -462f, -172f) * vec4<f32>(-1276f, var_0, -402f, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1000f, 717f))))), _wgslsmith_div_vec3_u32(var_3.a.wwz, max(vec3<u32>(var_3.b.a & u_input.a, 0u, 1u), ~countOneBits(vec3<u32>(var_3.a.x, 0u, 4294967295u)))));
}

