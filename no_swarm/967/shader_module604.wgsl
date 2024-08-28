struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648), 0u, -1182f), Struct_1(48407i, 0u, 356f), Struct_1(-17975i, 1u, 1185f), Struct_1(i32(-2147483648), 22640u, -1218f));

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global4: Struct_2 = Struct_2(vec4<f32>(1517f, -1000f, -1464f, -769f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_1, 4>();
    return -595f;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = min(vec4<i32>(_wgslsmith_clamp_i32(-9375i, 1i, _wgslsmith_sub_i32(u_input.a.x, -1i) >> (abs(77794u) % 32u)), -u_input.a.x, -2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(43175i, -13008i, u_input.a.x), u_input.a)), vec4<i32>(u_input.a.x, 1i, u_input.a.x, _wgslsmith_sub_i32(15082i, 19825i)));
    global2 = array<Struct_1, 21>();
    let var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), var_0.x), _wgslsmith_mod_i32(u_input.a.x | _wgslsmith_div_i32(var_0.x, 8124i), -abs(var_0.x)), abs(-_wgslsmith_dot_vec3_i32(var_0.xxx, vec3<i32>(2147483647i, u_input.a.x, -1i)))), abs(~abs(~42558u)), _wgslsmith_f_op_f32(ceil(arg_0.x)));
    global2 = array<Struct_1, 21>();
    global4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1417f, -722f, var_1.c, 959f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_1.c));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = vec2<bool>(-195f == _wgslsmith_f_op_f32(trunc(-297f)), arg_3);
    var var_1 = ~vec2<i32>(u_input.a.x, i32(-1i) * -33472i);
    let var_2 = global4.a.xw;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(2349u, arg_0))), firstLeadingBit(~(~vec2<u32>(0u, arg_0) | countOneBits(vec2<u32>(1u, arg_1)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(global4.a - global4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)));
    let var_2 = vec3<i32>(u_input.a.x, countOneBits(u_input.a.x), u_input.a.x);
    global3 = array<vec3<bool>, 3>();
    var var_3 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(global4.a.x, -318f, -440f, global4.a.x)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(13692u, 24028u), 1u, _wgslsmith_mod_u32(4975u, 7681u), true)), 617f), global4.a));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ~select(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), ~vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(1u), countOneBits(12207u), ~0u, firstLeadingBit(18468u)), vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 56193u, 6788u, 4294967295u))));
}

