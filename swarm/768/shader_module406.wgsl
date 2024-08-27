struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    global1 = array<Struct_4, 21>();
    let var_0 = Struct_5(Struct_1(select(select(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), select(vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, false)), arg_0.x), select(!vec4<bool>(true, false, arg_0.x, false), !vec4<bool>(false, true, arg_0.x, false), all(vec4<bool>(arg_0.x, true, true, true)))), u_input.c.x, _wgslsmith_f_op_f32(1f - -935f)));
    var var_1 = true;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-335f, var_0.a.c)), 652f))))));
    let var_3 = !arg_0;
    return vec4<bool>(arg_0.x, false, !var_0.a.a.x, true);
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    global1 = array<Struct_4, 21>();
    global0 = -67445i ^ ~(~(~u_input.a.x) << (u_input.d.x % 32u));
    let var_0 = Struct_5(Struct_1(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), reverseBits(0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-181f, arg_0.x) * arg_0.x), 1053f)));
    global0 = u_input.a.x;
    let var_1 = arg_0;
    return max(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~(u_input.c.x ^ u_input.a.x) & var_0.a.b, select(_wgslsmith_div_i32(abs(2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(u_input.a.x, var_0.a.b))), select(-2147483647i, -1i, var_0.a.a.x), true), _wgslsmith_div_i32(-1i | ~u_input.a.x, -var_0.a.b)), vec4<i32>(firstTrailingBit(reverseBits(i32(-1i) * -628i)), _wgslsmith_clamp_i32(34302i, var_0.a.b, min(u_input.a.x, var_0.a.b)) << (u_input.b % 32u), u_input.a.x, var_0.a.b));
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = select(u_input.c, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, arg_0.a.c, -2886f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1268f, arg_1, arg_1) * vec3<f32>(-1647f, arg_2.x, arg_1))))), arg_0.a.a.x || arg_0.a.a.x);
    let var_1 = arg_0.a.a;
    global0 = -27998i;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_1));
    global1 = array<Struct_4, 21>();
    return select(arg_0.a.a.yy, !select(arg_0.a.a.zy, !(!vec2<bool>(arg_0.a.a.x, false)), vec2<bool>(select(var_1.x, true, true), arg_0.a.a.x)), vec2<bool>(false, select(any(select(var_1.xz, vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), var_1.x)), var_1.x, all(arg_0.a.a))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = u_input.a.x;
    global0 = -(i32(-1i) * -1i);
    global0 = _wgslsmith_clamp_i32(43659i, u_input.c.x, arg_0.b.b);
    let var_0 = Struct_3(u_input.c.xzz);
    let var_1 = Struct_3(max(vec3<i32>(arg_0.d.b, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(~arg_0.e.xz, u_input.c.wx)), countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, -11363i), vec3<i32>(0i, -24120i, 1i)))));
    return Struct_1(arg_0.d.a, 2147483647i, 1358f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(min(-1353f, 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1321f - -885f)))), -1000f);
    let var_1 = func_4(Struct_2(all(select(vec2<bool>(true, false), func_1(Struct_5(Struct_1(vec4<bool>(true, false, false, false), 1i, var_0.x)), -451f, vec3<f32>(193f, var_0.x, -1086f)), false)), Struct_1(vec4<bool>(true, any(vec2<bool>(false, false)), true, true), abs(u_input.c.x), 670f), true, Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), firstLeadingBit(u_input.c.x ^ 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f * -1705f))), min(~u_input.c.zyz, firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x)) | u_input.c.yww)), var_0.x, !(!func_3(func_1(Struct_5(Struct_1(vec4<bool>(true, true, true, true), u_input.c.x, var_0.x)), 223f, vec3<f32>(var_0.x, var_0.x, 311f))).yy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, _wgslsmith_div_u32(firstLeadingBit(u_input.e.x), ~1u), u_input.d.x, 4294967295u));
}

