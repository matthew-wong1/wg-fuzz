struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(69495u, 4294967295u, 0u);

var<private> global1: vec4<bool>;

var<private> global2: i32 = -18484i;

var<private> global3: array<i32, 3> = array<i32, 3>(-1i, 2147483647i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = !(!vec4<bool>(any(vec4<bool>(global1.x, true, global1.x, true)), true, firstLeadingBit(global0.x) <= ~81875u, select(false, false, select(false, false, arg_0.c))));
    global2 = _wgslsmith_add_i32(2147483647i, arg_0.a.x);
    global0 = countOneBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.b.x, arg_0.b.x, 9440u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 6530u, arg_0.b.x) ^ arg_0.b.yxz, vec3<u32>(global0.x, 4294967295u, global0.x))));
    var_0 = !vec4<bool>(any(vec4<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), select(false, arg_0.c, false), true, !var_0.x)), global3[_wgslsmith_index_u32(0u, 3u)] == (_wgslsmith_sub_i32(8440i, u_input.b.x) >> (abs(1u) % 32u)), arg_0.c, true);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(494f + arg_0.e), 1196f), _wgslsmith_f_op_f32(arg_0.d + arg_0.d), arg_0.e);
    return arg_0.b;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(u_input.c.xzy, ~func_3(Struct_1(u_input.c.wyw, vec4<u32>(global0.x, 67898u, 35229u, arg_0), false, 694f, 360f)), !global1.x, 1803f, _wgslsmith_f_op_f32(f32(-1f) * -564f)));
    var var_1 = var_0;
    var var_2 = -1i;
    let var_3 = var_1.a;
    let var_4 = var_0;
    return abs(var_0.a.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~38422u, u_input.e.x ^ global0.x, 4293u, abs(1u)), _wgslsmith_div_vec4_u32(max(vec4<u32>(1u, u_input.a.x, 28372u, 133220u), vec4<u32>(var_0.b.x, arg_3.a.b.x, 0u, 1u)), abs(vec4<u32>(var_0.b.x, var_0.b.x, u_input.e.x, u_input.a.x)))), arg_3.a.b.xwy), vec4<u32>(u_input.e.x, 4294967295u, ~_wgslsmith_dot_vec4_u32(arg_3.a.b | vec4<u32>(arg_3.a.b.x, 35563u, arg_1.b.x, arg_3.a.b.x), arg_1.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_3.a.b.wz, u_input.a), arg_1.b.x), _wgslsmith_mod_u32(firstTrailingBit(var_0.b.x), _wgslsmith_mult_u32(4294967295u, arg_1.b.x)))), arg_3.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1759f), 1000f);
    var var_1 = arg_3.a;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d, -390f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(323f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_1.e))) - 963f)), 220f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_1.e));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.e, var_2.x, -1314f, -2195f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2281f, arg_1.d, -1586f, -459f), vec4<f32>(1226f, var_1.e, var_2.x, 2026f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -1124f, arg_1.e, -873f)))))));
    return ~select(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(49829u, 14253u, 4294967295u) & vec3<u32>(global0.x, 4294967295u, u_input.e.x))), any(vec2<bool>(true, any(vec4<bool>(var_0.c, arg_2.x, arg_2.x, arg_3.a.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(-14416i, -countOneBits(~73972i), ~select(2147483647i, ~(-2147483647i), true)), _wgslsmith_add_vec4_u32(select(~(~vec4<u32>(36204u, u_input.e.x, u_input.d.x, 1u)), vec4<u32>(global0.x, func_1(vec4<i32>(1i, u_input.c.x, 25223i, u_input.b.x), Struct_1(u_input.c.xzw, vec4<u32>(1u, 1u, u_input.d.x, global0.x), global1.x, 526f, 1265f), vec4<bool>(global1.x, global1.x, false, true), Struct_2(Struct_1(u_input.c.ywz, vec4<u32>(36009u, 38244u, 21188u, u_input.e.x), true, 1261f, 536f))), _wgslsmith_clamp_u32(4294967295u, 1u, 1u), 0u), vec4<bool>(global1.x, global1.x, false, select(false, global1.x, false))), vec4<u32>(~u_input.a.x, 4294967295u, u_input.d.x, 1u)), global1.x, 206f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-876f)))));
    var var_1 = vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(global1.x, var_0.c), global1.x)) && true, var_0.c);
    let var_2 = Struct_1(abs(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i))), func_3(var_0), true, 408f, -128f);
    let var_3 = Struct_2(var_2);
    let var_4 = all(global1.wz);
    global1 = vec4<bool>(var_3.a.c, var_0.b.x < var_2.b.x, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.x, _wgslsmith_dot_vec3_i32(countOneBits(abs(-var_3.a.a)), max(u_input.c.wyx, vec3<i32>(18620i, ~38380i, var_3.a.a.x))));
}

