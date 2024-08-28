struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 1u, 13569u, 70054u), vec4<u32>(0u, 1u, 20452u, 1u), vec4<u32>(0u, 46251u, 34578u, 23011u), vec4<u32>(5342u, 89297u, 35384u, 19930u), vec4<u32>(4294967295u, 0u, 75220u, 60291u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_2(select(!select(arg_1.wy, vec2<bool>(arg_0.b.a, true), !vec2<bool>(arg_0.a.a, arg_0.b.b.x)), arg_0.b.b.zy, arg_1.x), abs(1u), arg_0.b, vec3<u32>(u_input.a, u_input.a, 42891u));
    var_0 = Struct_2(vec2<bool>(true, !(abs(var_0.d.x) == ~u_input.a)), 1u, Struct_1(true, !select(vec4<bool>(false, arg_0.a.a, false, var_0.a.x), select(var_0.c.b, arg_1, vec4<bool>(true, arg_1.x, true, arg_1.x)), true)), vec3<u32>(_wgslsmith_mod_u32(16560u, _wgslsmith_dot_vec3_u32(var_0.d, var_0.d)), 0u, ~(~u_input.a)));
    let var_1 = _wgslsmith_mult_vec2_u32(abs(~select(~vec2<u32>(41494u, u_input.a), ~var_0.d.xy, select(arg_0.a.b.xy, vec2<bool>(arg_1.x, arg_1.x), arg_1.x))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(var_0.b, var_0.d.x))));
    var_0 = Struct_2(arg_1.xy, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.d.x, 1u), vec4<u32>(u_input.a, 65123u, u_input.a, 4294967295u))), (u_input.a >> (var_0.d.x % 32u)) | _wgslsmith_add_u32(var_1.x, u_input.a)), _wgslsmith_clamp_u32(0u, var_0.b, 0u)), var_0.c, max(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b, var_0.d.x, var_1.x) & vec3<u32>(var_0.d.x, 43572u, var_1.x), ~var_0.d << (var_0.d % vec3<u32>(32u))), ~min(~var_0.d, var_0.d)));
    var var_2 = !var_0.c.b.yyz;
    return -190f;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    let var_0 = select(arg_1, !select(select(arg_1, vec3<bool>(true, true, arg_0), !arg_0), arg_1, all(vec3<bool>(arg_1.x, false, arg_0)) || any(vec2<bool>(true, arg_1.x))), select(vec3<bool>(true, 1u < ~u_input.a, all(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_0, true), true))), arg_1, arg_1));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, 1217f, _wgslsmith_f_op_f32(min(1041f, _wgslsmith_f_op_f32(func_3(Struct_5(Struct_1(true, vec4<bool>(false, true, arg_1.x, arg_1.x)), Struct_1(var_0.x, vec4<bool>(var_0.x, arg_1.x, arg_0, arg_0))), vec4<bool>(true, var_0.x, arg_0, true)))))));
    global0 = array<vec4<u32>, 5>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(floor(1539f)), vec2<bool>((_wgslsmith_f_op_f32(exp2(var_1.x)) > _wgslsmith_div_f32(var_1.x, 2617f)) != true, var_0.x), _wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, 2147483647i, 10334i, 22472i), vec4<i32>(-41782i, -41849i, -2147483647i, -2125i), arg_1.x), -vec4<i32>(2147483647i, -52261i, 1i, -2523i))), ~min(min(vec4<i32>(-2490i, 1i, 87265i, -7397i), vec4<i32>(27010i, 1i, -21062i, 0i)), select(vec4<i32>(2147483647i, -4710i, 2147483647i, -20573i), vec4<i32>(-2147483647i, -4140i, 2147483647i, 0i), vec4<bool>(false, arg_1.x, var_0.x, arg_0)))), Struct_2(arg_1.zx, min(max(~0u, ~u_input.a), ~4294967295u), Struct_1(!any(vec2<bool>(arg_1.x, true)), vec4<bool>(var_0.x, true, !var_0.x, !var_0.x)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)));
    var var_3 = var_2.d.c;
    return firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(43452u, var_2.d.d.x, 15012u), var_2.d.b, ~80242u, u_input.a), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(24511u, var_2.d.d.x, var_2.d.d.x, u_input.a), global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(29528u, 5u)]), ~global0[_wgslsmith_index_u32(u_input.a, 5u)])), 4294967295u));
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    var var_0 = Struct_5(Struct_1(true, vec4<bool>(true, all(vec3<bool>(false, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true)), Struct_1(true, vec4<bool>(true, u_input.a >= 1u, _wgslsmith_div_f32(721f, -377f) != _wgslsmith_f_op_f32(ceil(1000f)), true)));
    global0 = array<vec4<u32>, 5>();
    return Struct_1(false, var_0.a.b);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> vec3<f32> {
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    var var_0 = arg_1;
    let var_1 = func_4(func_2(true, select(arg_1.b.b.zzz, select(vec3<bool>(arg_0.b.a, arg_1.a.a, arg_1.a.b.x), select(arg_1.b.b.xxy, vec3<bool>(arg_0.b.b.x, false, arg_0.b.a), arg_0.a.b.zxz), vec3<bool>(false, false, false)), var_0.a.b.x)));
    let var_2 = select(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.a) >> ((1u | u_input.a) % 32u), 45389u) | max(_wgslsmith_sub_u32(125284u, 0u) | u_input.a, ~u_input.a ^ (u_input.a | u_input.a)), any(!(!func_4(u_input.a).b.xw)));
    return vec3<f32>(1f, 1f, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_1(false, vec4<bool>(false, false, false, false)), Struct_1(false, vec4<bool>(true, true, false, true))), Struct_5(Struct_1(true, vec4<bool>(false, false, false, false)), Struct_1(true, vec4<bool>(false, false, false, true))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(158f, 988f, 1299f), vec3<f32>(-292f, 237f, 1028f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(428f, 2036f, 117f) - vec3<f32>(991f, 180f, -1138f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1029f, -352f, 2183f), vec3<f32>(1730f, -2470f, 1324f))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_add_i32(-28361i, 14349i));
}

