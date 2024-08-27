struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(~arg_1.b.x, select(arg_1.b.x, abs(~58477u), false)), abs(arg_1.b.x), u_input.c.x, ~63165u);
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_sub_i32(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2825u, _wgslsmith_add_u32(var_0.x, var_0.x), 0u), ~vec4<u32>(0u, 21788u, u_input.c.x, 1u)) % 32u), ~(~select(4824i, 2147483647i >> (var_0.x % 32u), true)));
    let var_3 = !all(global0[_wgslsmith_index_u32(arg_1.b.x, 25u)]);
    let var_4 = arg_1;
    return arg_1.c;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec4<bool>(true, select(all(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))) && true, false), false, true);
    global0 = array<vec4<bool>, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(1487f + arg_0))))), max(u_input.c.wz, countOneBits(u_input.c.zy)), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(ceil(514f)))))));
    global2 = 14970u;
    return _wgslsmith_f_op_f32(134f - 789f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(860f)), _wgslsmith_f_op_f32(trunc(arg_0.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-854f, 1000f) - vec2<f32>(arg_0.c, 749f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1583f, arg_0.a) - vec2<f32>(arg_0.a, arg_0.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(3542f, 411f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1747f) * var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = global0[_wgslsmith_index_u32(1u << (arg_0.b.x % 32u), 25u)];
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1240f)), _wgslsmith_f_op_f32(ceil(arg_0.a)))), u_input.c.yz & ~vec2<u32>(~arg_0.b.x, 18282u), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-425f, 765f)), _wgslsmith_f_op_f32(func_1(-1000f, Struct_1(411f, vec2<u32>(u_input.b, 46006u), -305f)))))), vec2<u32>(~(u_input.b >> (4294967295u % 32u)), u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) - -256f)), -vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.d), 1i, max(-1615i, -1i), _wgslsmith_div_i32(u_input.d, -23393i)) | (vec4<i32>(-2147483647i, 1i >> (u_input.c.x % 32u), u_input.d, u_input.d) ^ u_input.a), _wgslsmith_mod_vec2_i32(~u_input.a.zw, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -6164i), u_input.a.wy)));
    global1 = array<Struct_1, 22>();
    var var_1 = false;
    var var_2 = func_2(func_2(func_2(func_2(Struct_1(-667f, vec2<u32>(u_input.b, 4294967295u), -745f), u_input.a, u_input.a.ww), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), abs(vec4<i32>(48931i, 32101i, u_input.d, u_input.a.x))), u_input.a.yw), max(vec4<i32>(u_input.d, ~(-31364i), u_input.d, _wgslsmith_mod_i32(0i, u_input.d)), vec4<i32>(-41504i, u_input.d, _wgslsmith_mod_i32(u_input.a.x, -22207i), 8790i)), select(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.xz)), u_input.a.wz, vec2<bool>(true, false))), ~vec4<i32>(-_wgslsmith_mult_i32(u_input.a.x, -1i), i32(-1i) * -1i, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d, u_input.a.x), u_input.d, 0i)), -select(-vec2<i32>(38723i, 31851i), vec2<i32>(-21351i, u_input.a.x), true) & select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.ww), -11299i), -(~vec2<i32>(u_input.d, 1i)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a, var_0.c, var_2.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_0.a, -648f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(632f, 101f, 342f) - vec3<f32>(-1096f, -434f, -257f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1393f, var_0.a, var_2.c))))))), -u_input.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -1911f) * vec2<f32>(-384f, var_0.c))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1198f, 143f), vec2<f32>(475f, -1000f))))))), select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, 12902i, -4605i)), reverseBits(~u_input.a), u_input.a), vec4<i32>(_wgslsmith_div_i32(1i, u_input.d) ^ u_input.d, _wgslsmith_div_i32(u_input.d, -4140i), 16463i, reverseBits(u_input.d)), any(vec2<bool>(false, true))));
}

