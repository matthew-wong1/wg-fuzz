struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(281f, -1000f, 1920f)), Struct_1(vec3<f32>(1121f, 376f, 756f)), Struct_1(vec3<f32>(-1000f, -901f, 1608f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = ~vec3<u32>(~29450u >> (select(~11744u, 11068u << (1u % 32u), arg_1.x & arg_1.x) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(3899u, 607u, 16101u, 0u), ~vec4<u32>(23326u, 1u, 1u, 33355u)), 35040u, 1u), max(_wgslsmith_clamp_u32(34558u, 40685u, 58613u) << (1344u % 32u), ~34278u));
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 3u)];
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)), arg_2.a.x)));
    let var_2 = !arg_1.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_2.a.xy + _wgslsmith_f_op_vec2_f32(-arg_2.a.xy));
    return 2147483647i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = select(any(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))), true, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true)) | true);
    global0 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1903f))), _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_2 = Struct_1(arg_0.a);
    let var_3 = func_3(var_2, select(vec4<bool>(-1029f >= _wgslsmith_f_op_f32(var_1 - -700f), any(vec3<bool>(true, var_0, true)), any(vec3<bool>(var_0, false, true)), true), select(select(vec4<bool>(false, true, var_0, true), vec4<bool>(true, true, true, false), var_0), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, true)), ~94514u > _wgslsmith_clamp_u32(4294967295u, 131837u, 46499u)), vec4<bool>(true, true, all(!vec2<bool>(var_0, var_0)), all(select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, var_0, false, false), var_0)))), var_2);
    return var_3;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = arg_1;
    var var_1 = Struct_1(vec3<f32>(-2030f, arg_1.a.x, var_0.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_0.a.x, 948f)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-763f, -1434f, _wgslsmith_f_op_f32(ceil(-829f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-540f, -903f, var_2.a.x))), vec3<bool>(true, true, all(vec2<bool>(true, true)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = func_4(firstLeadingBit(abs(-1i)) | _wgslsmith_sub_i32(func_2(Struct_1(arg_0.a)), u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_0.a.x, 113f) - vec3<f32>(arg_0.a.x, arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1000f, arg_1.a.x) * arg_1.a)))));
    var_0 = func_4(_wgslsmith_mult_i32(u_input.b, select(2147483647i, -u_input.b << (32249u % 32u), true)), func_4(u_input.a, Struct_1(vec3<f32>(-169f, 1380f, 931f))));
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    return any(select(select(select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, true), var_1), var_1, select(var_1.x, false, true)), var_1, var_1), select(vec3<bool>(!var_1.x, var_1.x & true, var_1.x), !(!var_1), !(!var_1.x)), true));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = var_0.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~vec2<i32>(u_input.a >> (0u % 32u), 1i)), vec2<i32>(-1i) * -min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-25260i, u_input.a)), vec2<i32>(0i, u_input.a) & vec2<i32>(-2147483647i, 2147483647i)));
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1945f, -597f, 1000f)))))), all(vec3<bool>(true, true, true)) | all(vec4<bool>(func_1(Struct_1(vec3<f32>(-435f, 457f, 768f)), global0[_wgslsmith_index_u32(1u, 3u)]), any(vec4<bool>(false, false, true, false)), false, func_1(Struct_1(vec3<f32>(-997f, 1000f, -113f)), global0[_wgslsmith_index_u32(59593u, 3u)]))), global0[_wgslsmith_index_u32(~1u, 3u)], 31758i);
    global0 = array<Struct_1, 3>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_1.a)));
    global0 = array<Struct_1, 3>();
    let var_3 = var_0;
    global0 = array<Struct_1, 3>();
    var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(2864u, 99393u, 70472u))), min(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))), 3u)];
    var var_4 = ~(var_3.x << (~reverseBits(firstTrailingBit(64088u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(u_input.a, 30039i, 38663i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(8757i, u_input.a, -2147483647i, var_3.x), ~vec4<i32>(55466i, -2147483647i, u_input.b, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1967f, _wgslsmith_f_op_f32(var_1.a.x + 1716f), -630f), var_2.a, vec3<bool>(true, true, true)))), ~select(select(vec4<u32>(1u, 4294967295u, 901u, 4294967295u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 25231u), _wgslsmith_sub_u32(75424u, 31117u), 59229u, select(4294967295u, 36383u, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
}

