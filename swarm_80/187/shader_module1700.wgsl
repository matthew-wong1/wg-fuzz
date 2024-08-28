struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec3<u32> = vec3<u32>(3805u, 4294967295u, 4294967295u);

var<private> global1: array<vec4<f32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<u32> {
    var var_0 = 1011f;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(arg_0.b, 6u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, 619f, -484f, 726f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -572f, 227f, -227f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-506f + 2610f), _wgslsmith_f_op_f32(1891f - -1524f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f * 696f) * _wgslsmith_f_op_f32(step(-176f, 538f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f + -919f) + -508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_div_f32(-852f, 395f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(321f)), 633f)))));
    let var_2 = arg_0;
    global0 = vec3<u32>(_wgslsmith_div_u32(global0.x, countOneBits(min(var_2.b, 0u))), global0.x, ~arg_0.b);
    global1 = array<vec4<f32>, 6>();
    return ~(~select(vec3<u32>(arg_0.b, 1u, var_2.b), vec3<u32>(global0.x, 0u, var_2.b), vec3<bool>(false, var_2.d, var_2.d)) & (_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.x, global0.x), vec3<u32>(global0.x, 4294967295u, var_2.b)) >> (~vec3<u32>(33180u, global0.x, var_2.b) % vec3<u32>(32u)))) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 33655u, ~global0.x), vec3<u32>(_wgslsmith_clamp_u32(arg_0.b, global0.x, 15251u), ~var_2.b, arg_0.b)) & ~vec3<u32>(var_2.b, _wgslsmith_div_u32(4294967295u, arg_0.b), ~51941u)) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 6447u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, global0.x, 21429u))), reverseBits(~func_3(Struct_2(Struct_1(vec3<i32>(arg_0.a.x, u_input.a, 4783i)), 1u, Struct_1(vec3<i32>(u_input.a, -43345i, u_input.a)), false), -3757i)));
    global0 = ~(~countOneBits(vec3<u32>(~32842u, _wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_sub_u32(30505u, global0.x))));
    global1 = array<vec4<f32>, 6>();
    var var_0 = _wgslsmith_div_i32(u_input.a & (max(1i ^ arg_0.a.x, u_input.a) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 88118u, global0.x), vec4<u32>(global0.x, 0u, global0.x, 68916u)), ~19045u) % 32u)), u_input.a);
    var var_1 = (max(1i, _wgslsmith_add_i32(37738i, 0i << (global0.x % 32u))) | -21061i) << (max(countOneBits(~1u), global0.x) % 32u);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -844f), -433f));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec3<i32>(u_input.a, countOneBits(reverseBits(25388i)), ~29134i));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(-u_input.a, abs(-13609i)) >> (global0.x % 32u), ~(-2147483647i), u_input.a));
    var var_2 = !(!(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1627f + 1437f), 101f))));
    let var_4 = Struct_1(var_0.a);
    return var_2.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = select(2216u, arg_3.x, arg_0.x);
    global1 = array<vec4<f32>, 6>();
    let var_1 = arg_0.x;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1017f * arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2), true)) - 372f), arg_2, 1759f, -1338f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, -1301f, arg_2, -1025f)));
    return vec4<bool>(true, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.zwx), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(u_input.a, 20431i, 1i)))), var_3.x, _wgslsmith_f_op_f32(-arg_2)))), true, !(all(select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(true, var_1, true, true), vec4<bool>(var_1, false, var_1, false))) & false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, all(vec2<bool>(true, true)), true, true || select(false, true, false)), vec4<bool>(!all(vec2<bool>(false, false)), any(func_1(vec3<bool>(false, true, false), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a)), 504f, vec4<u32>(global0.x, 11385u, 21632u, 4294967295u))), true, true), !vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true));
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x >> (global0.x % 32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x), ~vec3<u32>(71179u, 4294967295u, 0u)) & ~(~(~vec3<u32>(global0.x, global0.x, 4294967295u))));
    let var_1 = vec3<bool>(var_0.x, !var_0.x, var_0.x);
    global1 = array<vec4<f32>, 6>();
    let var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~u_input.a & ~(2147483647i << (global0.x % 32u)), i32(-1i) * -u_input.a));
}

