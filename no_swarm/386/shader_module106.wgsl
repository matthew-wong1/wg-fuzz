struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_u32(3152u, _wgslsmith_sub_u32(select(select(1u, 1u, false), _wgslsmith_sub_u32(53070u, arg_2.x), true) & _wgslsmith_mult_u32(arg_2.x, 78578u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2.x, u_input.c, u_input.c)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13463u, 3126u), vec3<u32>(47271u, arg_2.x, 1u), vec3<u32>(u_input.c, 4294967295u, 1u)), ~vec3<u32>(1u, 1u, 1u))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2.x, 1u), 15623u), min(u_input.c, ~4294967295u)), _wgslsmith_add_u32(~u_input.b, _wgslsmith_add_u32(reverseBits(~arg_2.x), _wgslsmith_mod_u32(13091u, _wgslsmith_div_u32(u_input.c, 0u)))));
    var_0 = var_1;
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32((vec4<u32>(u_input.c, u_input.b, 11988u, 1u) >> (~vec4<u32>(0u, arg_2.x, 28351u, 4294967295u) % vec4<u32>(32u))) | (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, var_1, var_1), vec4<u32>(53809u, u_input.c, 0u, u_input.c)) >> (vec4<u32>(arg_2.x, 1u, arg_2.x, 1u) % vec4<u32>(32u))), ~(~select(vec4<u32>(arg_2.x, 28497u, arg_2.x, 81317u), vec4<u32>(u_input.b, arg_2.x, arg_2.x, 0u), vec4<bool>(false, false, true, true)))), 2237f, true, min(~_wgslsmith_clamp_u32(abs(arg_2.x), _wgslsmith_add_u32(u_input.b, 1u), 30675u), 1u << (~var_1 % 32u)));
    var_0 = 1u;
    return vec2<bool>(!(~1u > _wgslsmith_mult_u32(var_2.d, _wgslsmith_sub_u32(0u, arg_2.x))), !all(select(vec2<bool>(var_2.c, false), !vec2<bool>(true, var_2.c), vec2<bool>(false, false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = abs(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(10138u, u_input.c), vec2<u32>(4294967295u, 6693u), vec2<u32>(59563u, 29176u)) << (~vec2<u32>(19323u, u_input.c) % vec2<u32>(32u)), select(vec2<u32>(u_input.b, u_input.c), countOneBits(vec2<u32>(36519u, u_input.c)), func_3(vec2<f32>(-1410f, 757f), vec2<f32>(1004f, 196f), vec2<u32>(37444u, u_input.c)))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1120f + 542f) - 158f))), -arg_0.x, vec4<u32>(15477u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x), vec2<u32>(49924u, 1u))), ~(u_input.b << (1u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_0.x), ~var_0.x, 18117u), vec3<u32>(53460u, var_0.x, 1u)), u_input.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * -1141f), !(false | any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -673f) * _wgslsmith_f_op_f32(select(1132f, _wgslsmith_f_op_f32(round(-1630f)), all(vec2<bool>(true, true)))))));
    var_0 = -1489f;
    var var_1 = Struct_2(arg_1.x, arg_0.x, ~(~(~(vec4<u32>(u_input.c, 12535u, u_input.c, u_input.b) << (vec4<u32>(4928u, u_input.c, 4294967295u, 0u) % vec4<u32>(32u))))));
    let var_2 = func_2(arg_0.xz, var_1.b & 1i);
    return vec2<u32>(~(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.c.xzz), var_2.c.zwx) & 0u), ~(4294967295u << (max(~u_input.c, ~1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b, u_input.b), func_1(abs(-u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1228f, -342f, -1000f), vec3<f32>(-1000f, 181f, 136f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f + 444f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1477f, 1863f) * -1029f)))), 1268f, -971f);
    var var_2 = !any(!vec3<bool>(var_1.x == -1155f, all(vec2<bool>(true, true)), true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1081f)) + var_1.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, 1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), vec4<i32>(-u_input.a.x, -34801i, -1i, select(1i, u_input.a.x, true))), _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), ~vec4<u32>(~u_input.b, func_1(select(vec3<i32>(-56568i, -25210i, 1i), vec3<i32>(0i, u_input.a.x, -1i), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(406f, 1561f, var_1.x) + vec3<f32>(var_1.x, -897f, -414f))).x, var_0.x, 51438u));
    var var_4 = Struct_1(vec4<u32>(0u, countOneBits(1u), _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.c), _wgslsmith_mod_u32(var_3.c.x, ~_wgslsmith_mult_u32(0u, 0u))), var_1.x, false, var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~7514i, _wgslsmith_f_op_f32(trunc(var_4.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_4.a.wyx, _wgslsmith_div_vec3_u32(select(var_3.c.wyz, var_3.c.zyz, vec3<bool>(true, var_4.c, false)), ~var_4.a.www)), vec3<u32>(65999u, 1u, 1u)));
}

