struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(0i, -8007i, 0i, -1i, 19297i, -43221i, -1i, 84770i, i32(-2147483648), 57411i);

var<private> global1: array<Struct_5, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    var var_0 = -2147483647i;
    var_0 = 114731i;
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(arg_1, 10u)]);
    return _wgslsmith_div_f32(-870f, _wgslsmith_div_f32(1040f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2159f, -879f)), _wgslsmith_f_op_f32(1000f - -773f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> bool {
    var var_0 = vec2<i32>(-firstLeadingBit(_wgslsmith_div_i32(u_input.a, u_input.a)), -u_input.a);
    let var_1 = _wgslsmith_mult_i32(-12065i, var_0.x);
    let var_2 = false;
    let var_3 = Struct_2(Struct_1(min(var_0.x, ~u_input.a)), Struct_1(select((2147483647i | u_input.a) | global0[_wgslsmith_index_u32(arg_1.x, 10u)], abs(global0[_wgslsmith_index_u32(reverseBits(83032u), 10u)]), (arg_1.x >= arg_1.x) | true)), _wgslsmith_f_op_vec3_f32(step(arg_2.wxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.yzz - arg_0)))))), 985f, arg_0.x);
    global1 = array<Struct_5, 19>();
    return false;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = min(_wgslsmith_add_i32(-67264i, -20062i), _wgslsmith_sub_i32(u_input.a, ~55291i ^ firstTrailingBit(2147483647i)));
    global0 = array<i32, 10>();
    let var_1 = _wgslsmith_mod_u32(~(~20984u), firstTrailingBit(abs(~0u))) ^ 4294967295u;
    var var_2 = Struct_5(~_wgslsmith_sub_vec4_i32(~vec4<i32>(-28545i, -2147483647i, 0i, var_0) | -vec4<i32>(u_input.a, -25154i, 2147483647i, 0i), countOneBits(vec4<i32>(-37538i, var_0, 1i, 2147483647i) >> (vec4<u32>(var_1, var_1, 25302u, 48163u) % vec4<u32>(32u)))), select(!arg_0, !arg_0, !arg_0), !func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-637f, -1796f, 998f) + vec3<f32>(-1430f, 105f, 544f)), vec3<f32>(-619f, -847f, -442f)), vec3<u32>(1u, _wgslsmith_sub_u32(var_1, var_1), var_1), vec4<f32>(-904f, 341f, 158f, _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), 1u)))));
    let var_3 = select(var_2.b.x, false || any(!vec3<bool>(var_2.c, false, true)), arg_0.x);
    return _wgslsmith_mod_u32(var_1, firstTrailingBit(var_1));
}

fn func_1() -> vec2<u32> {
    let var_0 = !(_wgslsmith_sub_u32(~4294967295u, func_2(vec3<bool>(true, true, true))) < (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28314u, 51807u, 28898u), vec4<u32>(45394u, 1u, 16170u, 4294967295u))) | ~(~8150u)));
    let var_1 = true;
    var var_2 = vec4<bool>((-8406i <= -u_input.a) | func_4(vec3<f32>(_wgslsmith_div_f32(-150f, 354f), -558f, _wgslsmith_f_op_f32(211f - -475f)), max(~vec3<u32>(1u, 30190u, 1u), ~vec3<u32>(4294967295u, 18135u, 0u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), 721f, _wgslsmith_f_op_f32(max(-522f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -286f))), all(!select(vec3<bool>(true, var_0, false), select(vec3<bool>(true, false, var_1), vec3<bool>(false, var_1, var_0), vec3<bool>(true, true, true)), var_1)), var_0, false);
    global1 = array<Struct_5, 19>();
    global1 = array<Struct_5, 19>();
    return _wgslsmith_sub_vec2_u32(select(~(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(min(1u, _wgslsmith_mult_u32(0u, 1u)), abs(6754u)), var_2.x), ~select(~(~vec2<u32>(69735u, 1u)), abs(~vec2<u32>(1u, 0u)), !(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    var var_1 = true;
    let var_2 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(var_0.x, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 20716u, 0u), vec3<u32>(120194u, 699u, 13953u)), 14968u), var_0)), vec3<u32>(var_0.x, func_2(select(var_2.yxy, var_2.yxx, var_2.ywy)) >> (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u), 1u)), 19u)];
    var var_4 = Struct_1(_wgslsmith_mod_i32(var_3.a.x, u_input.a));
    let var_5 = ~_wgslsmith_sub_vec4_i32(var_3.a, var_3.a);
    var var_6 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -34512i, firstTrailingBit(~abs(-4403i))), 41770u);
}

