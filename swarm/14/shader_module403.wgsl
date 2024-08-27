struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(63438i, 0i), vec2<i32>(-842i, 1i), vec2<i32>(47246i, 13094i), vec2<i32>(75386i, -36094i), vec2<i32>(-9707i, 1i), vec2<i32>(-12801i, 91059i), vec2<i32>(i32(-2147483648), -33609i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(6697i, -17289i), vec2<i32>(-15406i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(-47908i, -7396i), vec2<i32>(15600i, 9559i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -11979i), vec2<i32>(-1i, 0i));

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<vec2<f32>, 14>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1((true || arg_1.c.x) & select(arg_2.e.x, any(arg_2.e), false), 3374u, vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1583f)), _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x)) <= -702f, !all(vec2<bool>(false, arg_1.e.x)), arg_2.c.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(902f, 1030f, 2235f, arg_0.d.x))))), arg_1.d, arg_1.c)), select(vec4<bool>(!arg_0.e.x, !any(vec3<bool>(arg_2.e.x, true, arg_0.e.x)), arg_0.a, true), vec4<bool>(arg_0.e.x, !(!arg_2.c.x), arg_2.c.x, arg_1.a), arg_0.e.x));
    let var_1 = ~21566u;
    var var_2 = arg_2.d;
    global2 = array<Struct_1, 24>();
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * arg_0.d.x), 2623f))), arg_0.d.x, arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f)) + _wgslsmith_div_f32(-1078f, arg_0.d.x)) * arg_0.d.x));
    return arg_0.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    global2 = array<Struct_1, 24>();
    var var_0 = Struct_1(false, 35974u, select(select(vec4<bool>(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_1(false, 4294967295u, vec4<bool>(false, true, true, true), vec4<f32>(111f, -847f, -1403f, 2767f), vec4<bool>(true, false, true, true)), Struct_1(false, 4294967295u, vec4<bool>(false, false, true, false), vec4<f32>(760f, -101f, -657f, 951f), vec4<bool>(false, true, true, true))), -2147483647i <= u_input.a.x, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(-148f * -1240f)) * 537f), -1098f, -1078f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1113f, 348f))))), vec4<bool>(~_wgslsmith_mod_i32(34684i, -2147483647i) >= (-arg_0.x << (u_input.b.x % 32u)), !any(vec4<bool>(false, false, true, false)) & any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !(!any(vec2<bool>(false, false)))));
    var var_1 = 38879u;
    global2 = array<Struct_1, 24>();
    global3 = array<vec2<f32>, 14>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-106f - -602f), var_0.d.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1223f, var_0.d.x)), 1126f)))));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(-12855i, -2147483647i, 3138i), u_input.a.x)), -1067f, _wgslsmith_f_op_f32(1f * -794f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-581f)), 1598f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63748u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~(u_input.b.x ^ u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(2742u, u_input.b.x, 1u), u_input.b.yyw)), u_input.b.x | u_input.b.x), 22u)];
    var var_2 = vec2<i32>(-1i, u_input.a.x);
    global0 = array<vec2<i32>, 17>();
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, (countOneBits(var_1.b) << (abs(u_input.b.x) % 32u)) << (var_1.b % 32u)), ~u_input.b.x, u_input.b.x);
    return select(vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) <= -186f, all(select(vec3<bool>(arg_1, false, true), select(vec3<bool>(arg_1, false, false), vec3<bool>(var_1.e.x, true, arg_1), var_1.c.yxx), select(vec3<bool>(false, false, var_1.a), vec3<bool>(true, arg_1, false), vec3<bool>(var_1.a, false, arg_1)))), !all(var_1.c), !func_3(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(45211u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)]) & !(var_2.x > var_2.x)), vec4<bool>(true, false, !(!var_1.e.x), var_1.a), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<u32>(u_input.b.x, countOneBits(select(1806u, 49744u, false)), _wgslsmith_dot_vec3_u32(countOneBits(u_input.b.xxy), ~u_input.b.xzx)), ~u_input.b.xwy, 0u <= ((u_input.b.x ^ u_input.b.x) << (35246u % 32u))) << (countOneBits(~_wgslsmith_div_vec3_u32(~u_input.b.yxx, _wgslsmith_mod_vec3_u32(u_input.b.zyx, vec3<u32>(34692u, 1455u, 22223u)))) % vec3<u32>(32u));
    global3 = array<vec2<f32>, 14>();
    let var_1 = Struct_1(true, 22903u << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u), select(select(vec4<bool>(true, select(true, false, true), true, u_input.a.x != u_input.a.x), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), all(func_1(-583f, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, false)))), select(func_1(_wgslsmith_f_op_f32(895f + -297f), true), vec4<bool>(true, true, true, true), select(true, u_input.a.x < u_input.a.x, func_3(global1[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_1(true, 11112u, vec4<bool>(true, false, false, false), vec4<f32>(-1026f, -1736f, 543f, 1829f), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1255f, 782f, -2287f, 431f))), vec4<f32>(1380f, -391f, -799f, 1460f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(553f, 1079f, 1018f, -849f) - vec4<f32>(792f, -129f, 2429f, 378f)))))), vec4<bool>(func_3(Struct_1(true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, u_input.b.x), vec3<u32>(1u, var_0.x, u_input.b.x)), vec4<bool>(false, true, false, false), vec4<f32>(1768f, 358f, -630f, 488f), vec4<bool>(true, true, true, true)), Struct_1(true, 10609u, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, 199f, 795f, 465f)), vec4<bool>(true, true, true, true)), Struct_1(true, var_0.x, vec4<bool>(true, false, true, false), vec4<f32>(629f, 243f, -529f, 1273f), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false))), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!func_1(1358f, false).x), any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), func_1(100f, false).x))));
    global3 = array<vec2<f32>, 14>();
    var var_2 = abs(~(~_wgslsmith_div_u32(var_0.x, var_1.b)));
    var var_3 = reverseBits(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(8705u, 16258u) ^ vec2<u32>(var_0.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, var_0.x), ~u_input.b.yz, vec2<u32>(var_0.x, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(208f - var_1.d.x) * var_1.d.x), _wgslsmith_f_op_f32(-1065f + -588f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(694f, var_1.d.x, -372f), vec3<f32>(var_1.d.x, var_1.d.x, -1041f)))));
}

