struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(1i, 28890i));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(-6533i, 2147483647i)), Struct_2(vec2<i32>(i32(-2147483648), -27450i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(27040i, -1i)), Struct_2(vec2<i32>(-9156i, 51083i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = (26077u << (select(u_input.b.x, _wgslsmith_add_u32(abs(u_input.a), 1u), (1i | global0.a.x) != u_input.c.x) % 32u)) <= 0u;
    global0 = global1[_wgslsmith_index_u32(~30999u, 6u)];
    var var_1 = ~select(global0.a | abs(vec2<i32>(global0.a.x, 0i)), ~u_input.c.yy, vec2<bool>(!(u_input.c.x < -23681i), true));
    var var_2 = 1u | min(_wgslsmith_clamp_u32(46123u, 1u, 0u), (u_input.b.x >> (_wgslsmith_clamp_u32(u_input.a, u_input.b.x, u_input.a) % 32u)) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 50040u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, 32836u)), u_input.a | u_input.a));
    var_1 = global0.a | _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xz, ~vec2<i32>(-1i, var_1.x)), select(-vec2<i32>(1i, var_1.x), firstLeadingBit(-vec2<i32>(global0.a.x, 1i)), true));
    return 124f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1827f, 1686f))), -1000f));
    var var_1 = !all(vec2<bool>(!any(vec2<bool>(false, false)), true));
    let var_2 = false;
    var var_3 = !any(vec4<bool>(var_2, var_2, var_0.x <= var_0.x, any(select(vec3<bool>(true, var_2, true), vec3<bool>(false, var_2, var_2), false))));
    var var_4 = true;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(-140f * var_0.x)))), -859f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(var_0.x * var_0.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1658f, var_0.x, var_2)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = any(!vec3<bool>(false, u_input.a > ~1u, true));
    let var_2 = vec4<bool>(1i < _wgslsmith_mod_i32(abs(max(1i, global0.a.x)), 0i), any(arg_0.a.xww), true, all(vec4<bool>(true, false == (arg_3 > var_0.b.x), true, func_2() || all(vec2<bool>(false, true)))));
    var var_3 = vec4<f32>(1324f, arg_0.b.x, arg_3, 1000f);
    let var_4 = var_0.b.zy;
    return Struct_3(global1[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(max(-vec2<i32>(~(-7601i), ~0i), -(~vec2<i32>(7435i, 0i)) << (~u_input.b.zy % vec2<u32>(32u))));
    global1 = array<Struct_2, 6>();
    var var_1 = func_1(Struct_1(!vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1272f, 457f, 671f, -307f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, 388f, 1000f, -1625f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(904f, -480f, -292f, 1504f), vec4<f32>(389f, 1568f, -129f, 623f)))), -global0.a.x <= _wgslsmith_mult_i32(var_0.a.x, 6640i))), true), any(vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec3_u32(~select(u_input.b, vec3<u32>(u_input.b.x, 0u, 0u), vec3<bool>(true, true, true)), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -364f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(135f, 1102f)))))));
    let var_2 = ~u_input.c.x;
    global1 = array<Struct_2, 6>();
    var var_3 = u_input.c.x;
    let var_4 = select(select(vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true))), all(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false))));
    var var_5 = (u_input.b >> (u_input.b % vec3<u32>(32u))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(min(u_input.a, 1351u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 73074u, 4294967295u, 2829u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)), 109443u), u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1079f, 1361f), _wgslsmith_f_op_vec2_f32(vec2<f32>(748f, -121f) + vec2<f32>(394f, 1641f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, 1171f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, 2151f))), select(!var_4, !var_4, !vec2<bool>(var_4.x, true)))))));
}

