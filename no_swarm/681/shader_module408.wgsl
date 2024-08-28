struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-2536i, i32(-2147483648), 0i, 1i), vec4<i32>(0i, 0i, 49580i, 16768i), vec4<i32>(171i, 21921i, i32(-2147483648), 0i), vec4<i32>(-21763i, -4138i, -49449i, 1i), vec4<i32>(2147483647i, -1i, -9996i, 1i), vec4<i32>(35341i, 2147483647i, i32(-2147483648), -22499i), vec4<i32>(9974i, i32(-2147483648), -13718i, 21417i), vec4<i32>(-18098i, -287i, 2147483647i, 1i), vec4<i32>(-14691i, 1i, -20064i, 24557i), vec4<i32>(i32(-2147483648), -1i, -1i, -1i), vec4<i32>(-32214i, 2177i, 1i, -4211i), vec4<i32>(-19916i, -4505i, i32(-2147483648), -27986i), vec4<i32>(75988i, -1i, -21866i, -10220i), vec4<i32>(0i, 2147483647i, 2147483647i, -11059i), vec4<i32>(32669i, 2147483647i, 2147483647i, -87988i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<i32>(-1i, -15630i, -1i, -16283i), vec4<i32>(-1i, 17034i, 1i, -1i), vec4<i32>(-25758i, 2147483647i, 1i, -40617i), vec4<i32>(-1i, i32(-2147483648), 1i, 4820i));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(100f, -276f, 1043f, -648f), 74107u), Struct_1(vec4<f32>(1857f, 1239f, 770f, 846f), 0u), Struct_1(vec4<f32>(-502f, 340f, 1754f, -762f), 25566u), Struct_1(vec4<f32>(807f, -256f, 1023f, 423f), 0u), Struct_1(vec4<f32>(-297f, 1000f, 233f, -1037f), 54434u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(1739f - global0.a.x));
    var var_1 = u_input.a.yy;
    var_1 = vec2<i32>(~(-26061i), abs(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1460i, -1i, var_1.x, u_input.a.x)), reverseBits(global1[_wgslsmith_index_u32(4294967295u, 20u)])))));
    global1 = array<vec4<i32>, 20>();
    var var_2 = firstLeadingBit(min(vec2<u32>(2555u, 4294967295u) ^ max(vec2<u32>(u_input.b.x, 54953u), u_input.b), select(_wgslsmith_div_vec2_u32(u_input.b, u_input.b), vec2<u32>(1u, global0.b), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))) << (u_input.b % vec2<u32>(32u)));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = ~(~select(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 111492u, 4294967295u, arg_2), vec4<u32>(arg_0.b, 0u, global0.b, arg_2)), vec4<u32>(arg_0.b, 9846u, ~arg_2, _wgslsmith_div_u32(80444u, arg_0.b)), false));
    var var_1 = vec2<bool>(false, !((func_3(-214f) > 2147483647i) != false));
    var var_2 = abs(vec2<u32>(select(abs(~124212u), ~87432u, !arg_1.x), global0.b));
    var var_3 = vec3<i32>(_wgslsmith_add_i32(-4032i >> (arg_0.b % 32u), min(_wgslsmith_dot_vec2_i32(~vec2<i32>(3047i, u_input.a.x), abs(vec2<i32>(arg_3, u_input.a.x))), abs(0i))), ~(-1i), arg_3);
    let var_4 = arg_0;
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(1063f, _wgslsmith_f_op_f32(round(global0.a.x))), arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x)))))), arg_1.b);
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = firstLeadingBit(~2147483647i);
    var_0 = 2147483647i;
    return global2[_wgslsmith_index_u32(arg_1.b, 5u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = max(arg_0.x, arg_0.x);
    global2 = array<Struct_1, 5>();
    let var_1 = 0u;
    global1 = array<vec4<i32>, 20>();
    var var_2 = func_4(_wgslsmith_mult_vec4_i32(~countOneBits(-global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(global2[_wgslsmith_index_u32(4294967295u, 5u)], vec3<bool>(false, false, true), var_1, 0i), -u_input.a.x, -18813i, u_input.a.x << (1u % 32u)), abs(arg_0))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 405f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(trunc(global0.a.x)))), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, false)))), countOneBits(u_input.b.x)));
    return StorageBuffer(firstLeadingBit(func_4(arg_0, arg_1).b), ~select(~min(4294967295u, arg_1.b), ~0u, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(25729u, u_input.b.x), 5u)];
    let x = u_input.a;
    s_output = func_1(vec4<i32>(-1i, u_input.a.x, _wgslsmith_mult_i32(2147483647i, u_input.a.x), reverseBits(1i)), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(countOneBits(var_0.b) >> (global0.b % 32u), global0.b >> (global0.b % 32u))), 5u)]);
}

