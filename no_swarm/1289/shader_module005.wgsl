struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

var<private> global2: f32 = -744f;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> f32 {
    global2 = arg_2;
    var var_0 = vec2<u32>(abs(1u), ~(~(~arg_0.x >> (firstLeadingBit(u_input.e) % 32u))));
    var_0 = vec2<u32>(~_wgslsmith_div_u32(var_0.x, 1u), arg_0.x);
    let var_1 = arg_0;
    global1 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(24383u, u_input.d, 40048u, var_0.x))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 34216u, 12078u, arg_0.x), vec4<u32>(1u, 21484u, 0u, 4294967295u)), ~vec4<u32>(var_0.x, 4294967295u, arg_0.x, 4294967295u)), ~max(vec4<u32>(32776u, 0u, var_0.x, u_input.a), vec4<u32>(23152u, arg_0.x, 1u, arg_0.x))));
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = arg_0.a;
    let var_1 = arg_1.b.d.x;
    let var_2 = Struct_1(vec3<u32>(arg_0.b.a.x, ~select(52371u, ~u_input.e, all(global0.zy)), ~(~(~u_input.a))), -(arg_0.b.b >> (countOneBits(vec2<u32>(arg_0.b.a.x, u_input.d)) % vec2<u32>(32u))), select(vec2<bool>(!(-1i >= u_input.c.x), global0.x), select(!vec2<bool>(arg_1.b.c.x, arg_0.b.c.x), !(!vec2<bool>(global0.x, true)), !arg_0.b.c), true), arg_1.b.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.d.x, 153f, var_1, -265f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.x, 2742f, var_2.d.x, -386f) * vec4<f32>(var_1, var_1, var_1, 1000f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.d.x * -470f), -223f, _wgslsmith_f_op_f32(step(var_2.d.x, 812f)), -171f), vec4<f32>(arg_0.b.d.x, arg_0.b.d.x, var_2.d.x, arg_1.b.d.x)), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1393f - var_1) + 1081f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.d.x))), any(vec4<bool>(false, var_2.c.x, arg_0.a, true)) != !all(arg_1.b.c), true)));
    var var_4 = abs(abs(vec3<u32>(1u, 0u, arg_1.b.a.x)));
    return ~max(~_wgslsmith_mult_vec3_u32(var_2.a, vec3<u32>(25468u, 56694u, var_4.x)) & (_wgslsmith_mod_vec3_u32(vec3<u32>(55550u, arg_0.b.a.x, arg_0.b.a.x), arg_1.b.a) | _wgslsmith_mult_vec3_u32(arg_0.b.a, vec3<u32>(u_input.e, u_input.d, 1u))), arg_1.b.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = Struct_1((countOneBits(vec3<u32>(u_input.e, arg_3, 1u)) ^ func_3(Struct_2(global0.x, Struct_1(vec3<u32>(5101u, u_input.e, 52763u), u_input.b, global0.zy, arg_0.xw)), Struct_2(global0.x, Struct_1(vec3<u32>(40959u, 1u, 45155u), u_input.c.xx, vec2<bool>(arg_2, global0.x), vec2<f32>(-1267f, -277f))))) >> (~func_3(Struct_2(false, Struct_1(vec3<u32>(arg_3, 4294967295u, 1u), vec2<i32>(global3.x, 0i), vec2<bool>(true, global0.x), vec2<f32>(-708f, -1080f))), Struct_2(false, Struct_1(vec3<u32>(4294967295u, 4294967295u, arg_1), vec2<i32>(0i, 1i), global0.zx, vec2<f32>(-591f, -1366f)))) % vec3<u32>(32u)), abs(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1656i, -1i)), u_input.b.x)), select(global0.xz, vec2<bool>(global0.x, arg_2), vec2<bool>(arg_2, global0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_0.zw, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, var_0), arg_0.xw)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1197f * -1608f), _wgslsmith_f_op_f32(-arg_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(max(922f, 107f)), _wgslsmith_div_f32(arg_0.x, 528f)))));
    var var_2 = ~(~u_input.c);
    global1 = arg_1;
    let var_3 = 44716u;
    return Struct_1(~(~(~vec3<u32>(25715u, 1u, var_1.a.x))), vec2<i32>(max(var_1.b.x, global3.x ^ 19076i), max(var_1.b.x, abs(-global3.x))), vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xw)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, u_input.d), arg_2, var_0)), arg_0.x) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.d.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    return StorageBuffer(1229f, _wgslsmith_add_u32(99072u, ~min(u_input.d, _wgslsmith_add_u32(23457u, arg_0.a.x))), _wgslsmith_add_vec4_u32(select(vec4<u32>(25385u, reverseBits(u_input.e), _wgslsmith_dot_vec2_u32(arg_0.a.xx, vec2<u32>(44599u, u_input.d)), 1u), ~firstTrailingBit(vec4<u32>(u_input.e, u_input.d, arg_0.a.x, arg_0.a.x)), select(true, global0.x && global0.x, true)), vec4<u32>(_wgslsmith_dot_vec3_u32(min(arg_0.a, arg_0.a), vec3<u32>(u_input.d, u_input.d, u_input.a) ^ vec3<u32>(arg_0.a.x, u_input.a, arg_0.a.x)), ~(0u & arg_0.a.x), u_input.d & u_input.e, arg_0.a.x)), _wgslsmith_sub_u32(u_input.a, arg_0.a.x), firstLeadingBit(firstLeadingBit(vec4<u32>(97526u, arg_0.a.x, 30809u, 1u)) | vec4<u32>(465u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 10054u, 73952u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 31149u)), ~6540u, _wgslsmith_div_u32(u_input.d, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e & u_input.e;
    let x = u_input.a;
    s_output = func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(42081u, 4294967295u), false, 1437f)), _wgslsmith_f_op_f32(480f * -255f), -1118f, -1244f)), ~reverseBits(u_input.a), true, 53391u), select(!(all(vec3<bool>(false, false, true)) & (global0.x || global0.x)), global0.x, true));
}

