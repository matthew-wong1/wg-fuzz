struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1u), Struct_1(64418u), Struct_1(27656u), Struct_1(11226u), Struct_1(3657u), Struct_1(0u), Struct_1(4294967295u), Struct_1(23409u), Struct_1(0u), Struct_1(23431u), Struct_1(16588u), Struct_1(4294967295u), Struct_1(1u), Struct_1(50961u), Struct_1(22856u), Struct_1(0u), Struct_1(1u));

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    global1 = global0[_wgslsmith_index_u32(36641u, 17u)];
    var var_1 = false;
    var var_2 = vec3<u32>(~34265u, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1 ^ select(0u, 0u, true), ~arg_0 & min(global1.a, global1.a), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(43753u, arg_0))), abs(~(~vec3<u32>(u_input.c.x, var_0.a, global1.a)))), max(4294967295u, u_input.c.x));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_1), 17u)];
    return !(!vec2<bool>(!(var_0.a > 33718u), any(vec2<bool>(true, true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1.a, abs(u_input.a)), 17u)];
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = ~_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d.zw & -vec2<i32>(u_input.b, u_input.d.x)), select(vec2<i32>(28386i, -1i), vec2<i32>(-37073i, u_input.d.x) << (arg_0 % vec2<u32>(32u)), !func_3(arg_0.x, u_input.a, -243f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 1788f, 1347f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-823f, 1367f, 814f), vec3<f32>(-1000f, 2208f, -2738f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, -1000f, 522f) * vec3<f32>(-1457f, -508f, 954f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1229f, -792f, 1282f), vec3<f32>(-1274f, -2229f, 2694f)))), vec3<f32>(-1858f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f), -990f), -1106f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1663f)), -605f, _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, -547f, 1000f)), vec3<f32>(694f, 1896f, -191f), all(arg_1.ww)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(888f, 1248f, 732f), vec3<f32>(-1173f, -113f, 1501f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1145f, 168f, 1369f), vec3<f32>(436f, 435f, 1599f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-205f, 2232f, -483f))), vec3<bool>(false, false, arg_2))))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(30093u, reverseBits(14319u), 17791u), 17u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = func_2(select(~u_input.c, u_input.c, vec2<bool>(true, any(func_3(0u, 1u, -280f)))), vec4<bool>(all(vec3<bool>(true, true, any(vec4<bool>(false, true, false, true)))), false, select(!select(false, false, false), true, true), (~48621u < select(41451u, arg_1.a, false)) && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1520f - -784f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - -1864f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(579f))) * _wgslsmith_f_op_f32(f32(-1f) * -1525f)));
    var var_0 = (arg_1.a & arg_0.a) & arg_0.a;
    var_0 = arg_1.a;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.c >> (firstLeadingBit(u_input.c) % vec2<u32>(32u)), u_input.c), ~arg_1.a);
    let var_2 = !(!(any(vec3<bool>(true, true, false)) | true));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = u_input.a;
    let var_1 = func_4(global0[_wgslsmith_index_u32(1u, 17u)], func_2(firstLeadingBit(~u_input.c), vec4<bool>(true, true, true, true), all(vec2<bool>(arg_1.x >= u_input.c.x, true))));
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(func_2(u_input.c, vec4<bool>(true, true, false, true), false).a, firstTrailingBit(arg_1.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), 39964u << (1u % 32u)), vec2<u32>(arg_0, firstTrailingBit(0u)))), arg_1.yy);
    let var_3 = Struct_1(~arg_1.x);
    return global0[_wgslsmith_index_u32(~4294967295u & _wgslsmith_dot_vec2_u32(~((var_2 >> (arg_1.xx % vec2<u32>(32u))) ^ vec2<u32>(var_1.a, 2474u)), vec2<u32>(abs(19284u), arg_1.x)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = func_1(~(77933u | _wgslsmith_sub_u32(reverseBits(global1.a), max(global1.a, u_input.a))), select(vec4<u32>(~_wgslsmith_mod_u32(global1.a, u_input.a), max(countOneBits(u_input.c.x), ~u_input.c.x), 33686u, _wgslsmith_mod_u32(14483u, _wgslsmith_div_u32(u_input.c.x, global1.a))), firstLeadingBit(vec4<u32>(firstLeadingBit(global1.a), u_input.a, global1.a, 1u)), false), Struct_1(firstLeadingBit(u_input.a)), ~16968u);
    var var_1 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 25745u, 17911u, 1u), vec4<u32>(19633u, 1u, 0u, global1.a)), u_input.a), _wgslsmith_add_vec3_u32(~vec3<u32>(global1.a, 68211u, 18032u), select(vec3<u32>(13192u, 1u, var_0.a), vec3<u32>(var_0.a, var_0.a, 4294967295u), true)))), min(vec3<u32>(~(var_0.a ^ var_0.a), global1.a, 22534u), vec3<u32>(global1.a << (_wgslsmith_div_u32(46263u, global1.a) % 32u), var_0.a, var_0.a)));
    global0 = array<Struct_1, 17>();
    global1 = Struct_1(1u);
    var var_2 = !vec4<bool>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0.a), vec3<u32>(var_0.a, 85824u, var_1.x))) != ~69871u, any(vec4<bool>(true, false, true, true)) && false, all(vec4<bool>(true, true, true, false)), func_3(60870u, abs(var_1.x | var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f))).x);
    let var_3 = vec4<bool>(any(vec4<bool>(!(u_input.a < var_0.a), true, true, !select(var_2.x, var_2.x, var_2.x))), !var_2.x & !(!var_2.x & (var_2.x && true)), var_2.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1950f, -1736f, -264f), vec3<f32>(742f, -445f, 1718f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1079f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -704f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1001f, -275f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-174f, 222f), vec2<f32>(1000f, -922f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-881f, 1376f)))), vec2<bool>(true, ~(-1i) == (u_input.e.x ^ u_input.e.x)))), vec3<i32>(u_input.e.x, 2147483647i, -2147483647i));
}

