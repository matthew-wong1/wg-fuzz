struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(i32(-2147483648), -3821i, 31045i), vec3<i32>(0i, 1017i, 204i), vec3<i32>(1i, 80288i, i32(-2147483648)), vec3<i32>(37974i, -28016i, 2147483647i), vec3<i32>(-1382i, 0i, 55373i), vec3<i32>(0i, i32(-2147483648), -34184i));

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, vec2<f32>(-1426f, 569f)), Struct_1(true, vec2<f32>(1000f, -591f)), Struct_1(true, vec2<f32>(1651f, 299f)), Struct_1(true, vec2<f32>(545f, -552f)), Struct_1(true, vec2<f32>(101f, -958f)), Struct_1(true, vec2<f32>(538f, -671f)), Struct_1(false, vec2<f32>(-973f, -443f)), Struct_1(true, vec2<f32>(1509f, 272f)), Struct_1(false, vec2<f32>(1464f, 638f)), Struct_1(false, vec2<f32>(304f, 1000f)), Struct_1(false, vec2<f32>(-184f, -811f)));

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    global4 = ~(~(~(~arg_0.zy)));
    let var_0 = arg_2;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)));
    let var_2 = ~arg_0;
    let var_3 = Struct_2(831f);
    return !select(!(!vec4<bool>(true, true, true, var_0.a)), vec4<bool>(all(vec3<bool>(arg_2.a, true, true)), any(vec2<bool>(true, arg_2.a)), true, true & any(vec4<bool>(true, arg_2.a, false, arg_2.a))), any(vec3<bool>(true, var_0.a, true)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(-2017f)));
    global2 = arg_0;
    let var_0 = select(vec2<bool>(arg_2, !(false && arg_2)), vec2<bool>(arg_2, true), any(!func_3(vec4<u32>(global4.x, 24117u, 18772u, u_input.a), Struct_2(-1380f), global3[_wgslsmith_index_u32(~1u, 11u)], vec3<f32>(431f, -259f, 1326f))));
    global3 = array<Struct_1, 11>();
    var var_1 = ~10379u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(189f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(func_2(arg_3, arg_1.x, false))))), -626f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a), -1381f, _wgslsmith_f_op_f32(f32(-1f) * -603f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1012f, -611f, global2.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-850f, -1022f, 334f)))))));
    let var_1 = (vec4<u32>(firstLeadingBit(~global4.x), u_input.a, u_input.a, abs(~4294967295u)) & select(vec4<u32>(global4.x & global4.x, abs(global4.x), ~1u, 1u), vec4<u32>(abs(global4.x), 4294967295u, max(u_input.a, 0u), u_input.a), -arg_1.x < _wgslsmith_mod_i32(arg_1.x, arg_1.x))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, max(global4.x, global4.x), global4.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, u_input.a, 17814u, global4.x), vec4<u32>(global4.x, 10641u, 4294967295u, 1u), vec4<u32>(29352u, u_input.a, 4294967295u, 9917u))), ~(~u_input.a), ~1u, ~(~(~0u))) % vec4<u32>(32u));
    global4 = vec2<u32>(0u, min(~(var_1.x & 0u), 50377u) ^ _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, 1u, 10377u) >> (vec3<u32>(var_1.x, 0u, 4294967295u) % vec3<u32>(32u))), ~(var_1.xww ^ var_1.xwz)));
    global2 = Struct_2(arg_0.b.x);
    global0 = array<vec3<i32>, 6>();
    return min(~global4.x, _wgslsmith_add_u32(0u, ~(~abs(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-435f, _wgslsmith_div_f32(-779f, -713f)))), -628f));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(global1.a)));
    let var_2 = ~vec3<u32>(~(func_1(global3[_wgslsmith_index_u32(global4.x, 11u)], global0[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(global4.x, 11u)], Struct_2(-865f)) ^ _wgslsmith_clamp_u32(u_input.a, u_input.a, global4.x)), _wgslsmith_div_u32(~0u, _wgslsmith_mod_u32(57737u, u_input.a)), ~56826u);
    var var_3 = vec4<u32>(u_input.a, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~max(vec4<u32>(global4.x, 4294967295u, global4.x, global4.x), vec4<u32>(var_2.x, var_2.x, 65071u, 4294967295u)), firstLeadingBit(vec4<u32>(var_2.x, 0u, 48785u, 6431u)) & vec4<u32>(1u, global4.x, var_2.x, 35605u)), _wgslsmith_sub_vec4_u32(vec4<u32>(28445u, var_2.x, global4.x, 15325u), vec4<u32>(u_input.a, global4.x, u_input.a, 18400u)) >> (vec4<u32>(countOneBits(4294967295u), max(global4.x, 40245u), ~41803u, global4.x) % vec4<u32>(32u))), global4.x);
    global3 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(0i), 1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, -7642i), vec4<i32>(27246i, 0i, 2147483647i, 16277i)))), global1.a, _wgslsmith_sub_i32(~0i, -14707i ^ (4259i << (_wgslsmith_clamp_u32(19268u, var_3.x, 1u) % 32u))));
}

