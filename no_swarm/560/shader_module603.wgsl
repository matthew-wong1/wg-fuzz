struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: bool;

var<private> global3: i32 = -1i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 2812u, global1.x, 3804u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(24410u, global1.x, u_input.a), vec3<u32>(1u, 17835u, 0u)), ~1u, u_input.a, 1u)), ~abs(vec4<u32>(global1.x, 29556u, global1.x, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1341f, -455f, -123f))), vec3<f32>(_wgslsmith_div_f32(-223f, 1514f), _wgslsmith_f_op_f32(ceil(423f)), _wgslsmith_f_op_f32(abs(1449f))))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(465f, 699f, 379f), vec3<f32>(-1667f, -411f, -981f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-945f)), _wgslsmith_div_f32(-419f, 117f), _wgslsmith_f_op_f32(abs(1593f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1119f, -359f, 304f), vec3<f32>(140f, 1010f, 818f)))))));
    var var_2 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(36678u, arg_0) & ~19640u, ~_wgslsmith_add_u32(0u, arg_0), _wgslsmith_mult_u32(global1.x, u_input.a) << ((arg_0 | 1u) % 32u), _wgslsmith_mult_u32(60660u, 0u)), vec4<u32>(global1.x, 43509u >> ((var_0.x >> (u_input.a % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(26855u, var_0.x), reverseBits(arg_0)), ~(~0u)), ~reverseBits(select(vec4<u32>(0u, var_0.x, 7109u, 0u), vec4<u32>(var_0.x, var_0.x, arg_0, 14083u), false))));
    var var_3 = Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), true, 36584u), !vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), true), Struct_1(var_1.x, 1243f, true, (~var_0.x | _wgslsmith_mod_u32(1u, global1.x)) & 4988u));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b)))));
    return 46736i;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    global1 = ~(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 25440u)), u_input.a, firstTrailingBit(u_input.a))));
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, ~1i < func_3(u_input.a, vec4<i32>(-2147483647i, 0i, -2147483647i, 18422i)), u_input.a));
    global2 = arg_1;
    let var_1 = Struct_2(var_0.a, vec2<bool>(arg_1, !(_wgslsmith_dot_vec2_u32(global1.zy, vec2<u32>(global1.x, u_input.a)) <= (0u | global1.x))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -176f), 598f, var_0.a.c)), _wgslsmith_f_op_f32(abs(var_0.a.a)), true, ~firstLeadingBit(select(18674u, u_input.a, true))));
    var var_2 = Struct_2(var_1.a, vec2<bool>(any(vec2<bool>(true, true)), arg_1), var_1.a);
    return ~(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, global1.x, 68011u) ^ vec3<u32>(var_0.a.d, var_2.c.d, 1u), vec3<u32>(var_0.a.d, global1.x, 4294967295u)), ~vec3<u32>(4294967295u, var_1.a.d, 46557u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 37364u, var_2.a.d), vec3<u32>(var_0.a.d, global1.x, var_1.a.d)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    global1 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(0u, arg_2.d)), _wgslsmith_div_u32(u_input.a | global1.x, 0u)) ^ 20940u, 35175u, _wgslsmith_add_u32(_wgslsmith_mod_u32(min(max(0u, 1u), 0u), func_2(_wgslsmith_f_op_f32(ceil(arg_1.a.b)), true)), ~(~u_input.a)));
    var var_0 = arg_1.a.a;
    var_0 = 639f;
    global2 = true;
    var var_1 = global1.xy;
    return !(any(!select(vec4<bool>(true, arg_2.c, true, arg_3.x), vec4<bool>(true, arg_1.a.c, false, false), true)) & !(select(15303i, 18051i, true) <= 12269i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec3<bool>(true, true, true));
    global3 = ~(~reverseBits(-1i));
    var var_0 = select(select(vec2<bool>(func_1(vec2<f32>(1197f, 1256f), Struct_3(Struct_1(2309f, 486f, true, 1u)), Struct_1(364f, 236f, false, global1.x), vec3<bool>(true, false, false)) || any(vec4<bool>(false, false, false, true)), true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true), select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(false, true)), !vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(all(vec2<bool>(true, true)), false)), all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))) && !(!all(vec4<bool>(false, false, false, false))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(564f + -613f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(476f))))), -686f, var_0.x, ~0u << (u_input.a % 32u)), !(!vec2<bool>(var_0.x, !var_0.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -780f), -909f, all(vec2<bool>(true, true)), ~0u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(536f, 472f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b + _wgslsmith_f_op_f32(-var_1.c.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.a.b)), var_1.c.a)) >= 1178f, ~min(firstLeadingBit(global1.x), _wgslsmith_clamp_u32(global1.x, u_input.a, u_input.a))), !select(!(!var_1.b), var_1.b, var_1.a.c), var_1.c);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(abs(vec3<i32>(-19852i, -1i, 1i)))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(abs(-123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a + -101f))), -252f), -1943f);
}

