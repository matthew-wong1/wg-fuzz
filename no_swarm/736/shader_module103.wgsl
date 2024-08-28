struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_2, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<i32, 4>();
    let var_0 = u_input.a;
    global0 = array<i32, 4>();
    var var_1 = u_input.e.x;
    let var_2 = global1[_wgslsmith_index_u32(~(~61465u), 17u)];
    return var_2.b.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f), 719f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1056f)) * -714f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -233f), -1374f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1000f) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(func_2(false)), var_0))));
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 17u)];
    return var_3.b;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(!(!select(select(vec4<bool>(true, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, arg_0, arg_1.d.x, false), vec4<bool>(arg_0, false, true, true)), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, true, true, true))), Struct_1(-13882i, -vec3<i32>(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -9175i), arg_1.b.zy), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)])), arg_1.c, vec2<bool>((arg_1.d.x | true) || true, true), vec4<u32>(95718u, 4294967295u, ~(~u_input.b), firstTrailingBit(u_input.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, 40465i, global0[_wgslsmith_index_u32(0u, 4u)], 0i), vec4<i32>(-1i, arg_1.b.x, arg_1.b.x, -1i)), select(-1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_1.e.x), 4u)], false), _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(1u, 4u)], 16044i)), ~(-firstLeadingBit(arg_1.b))), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(-2060f + 562f))), -1236f, arg_1.c), arg_1.e.x);
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~u_input.b, ~(~18193u)) & _wgslsmith_div_u32(func_1(!vec3<bool>(var_0.a.x, arg_0, true), arg_1.d).e.x, 1u)), 17u)];
    global0 = array<i32, 4>();
    global1 = array<Struct_2, 17>();
    global1 = array<Struct_2, 17>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = Struct_2(select(select(vec4<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), u_input.a.x > 6995u), true), func_3(!select(true, true, false) | any(vec2<bool>(false, true)), func_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec2<bool>(true, true))), ~vec3<i32>(~global0[_wgslsmith_index_u32(u_input.c, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5676u, _wgslsmith_mod_u32(1u, 91623u), _wgslsmith_add_u32(4294967295u, u_input.e.x)), 4u)], max(2147483647i, global0[_wgslsmith_index_u32(8963u, 4u)]) ^ min(940i, global0[_wgslsmith_index_u32(49025u, 4u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-686f, func_1(vec3<bool>(true, false, false), vec2<bool>(false, true)).c, _wgslsmith_f_op_f32(-750f - 721f), -254f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(321f, -221f, 367f, 1335f), vec4<f32>(318f, 1434f, -666f, -1432f)))))), u_input.d.x);
    global1 = array<Struct_2, 17>();
    var var_2 = select(!select(select(select(var_1.a, var_1.a, var_1.b.d.x), var_1.a, var_1.a), !(!vec4<bool>(true, var_1.b.d.x, var_1.a.x, true)), var_1.a), var_1.a, select(var_1.a, vec4<bool>(true, false, !(var_1.b.b.x <= 34783i), all(vec3<bool>(var_1.a.x, var_1.b.d.x, var_1.b.d.x))), !select(false, var_1.a.x, any(vec4<bool>(var_1.a.x, var_1.b.d.x, var_1.b.d.x, var_1.b.d.x)))));
    var var_3 = var_1.c.x;
    global0 = array<i32, 4>();
    var var_4 = var_2.x & all(vec4<bool>(var_1.b.d.x, any(vec3<bool>(true, var_1.a.x, false)), var_2.x, func_3(var_2.x, func_3(false, Struct_1(var_1.b.a, var_1.b.b, -685f, vec2<bool>(false, true), vec4<u32>(1u, u_input.b, var_1.e, 50232u)))).d.x));
    var_2 = vec4<bool>(true, var_2.x, var_1.b.d.x, true);
    let var_5 = _wgslsmith_div_i32(i32(-1i) * -21846i, abs(abs(var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(4294967295u | ~_wgslsmith_sub_u32(u_input.b, var_1.e)), 45482i >> (0u % 32u), vec2<f32>(-2546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_3(true, Struct_1(var_1.b.a, var_1.b.b, 650f, vec2<bool>(false, var_1.a.x), vec4<u32>(0u, u_input.e.x, u_input.d.x, 4294967295u))).c, _wgslsmith_f_op_f32(max(var_1.d.x, var_1.b.c)))))));
}

