struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(39852u, 70800u, 1u, 1u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    let var_0 = -firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, 0i, u_input.a.x, 12280i), vec4<i32>(2147483647i, arg_2.a.x, -2147483647i, -49076i), vec4<i32>(-11252i, 29756i, -2147483647i, arg_2.a.x)), _wgslsmith_mod_vec4_i32(arg_2.a, arg_2.a)), _wgslsmith_mod_i32(-7474i, _wgslsmith_div_i32(u_input.a.x, arg_2.a.x))));
    global0 = Struct_3(vec4<u32>(1u, 1u, 95646u, min(abs(~u_input.c), global0.a.x)));
    global0 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, 0u), 1u, _wgslsmith_clamp_u32(u_input.d.x, arg_1.a.x, arg_1.a.x)), firstLeadingBit(global0.a)), vec4<u32>(~0u, 95641u, arg_1.a.x, _wgslsmith_clamp_u32(4294967295u, global0.a.x, u_input.d.x) >> (arg_1.a.x % 32u))));
    global0 = Struct_3(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c), vec4<u32>(4999u, 0u, arg_1.a.x, arg_1.a.x)), vec4<u32>(0u, global0.a.x, 0u, arg_1.a.x)) | (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, global0.a.x), global0.a) >> (_wgslsmith_mod_vec4_u32(global0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, 17563u, 96621u, global0.a.x), vec4<u32>(0u, 4294967295u, 20804u, arg_1.a.x))) % vec4<u32>(32u))));
    global0 = Struct_3(vec4<u32>(arg_1.a.x << (abs(~u_input.c) % 32u), _wgslsmith_sub_u32((76372u >> (arg_1.a.x % 32u)) ^ abs(u_input.c), firstLeadingBit(firstLeadingBit(45138u))), 16127u, arg_1.a.x));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(~arg_1.a.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(23479u, u_input.c) ^ arg_1.a.xz, u_input.d.xz), true), ~countOneBits(~vec2<u32>(global0.a.x, 1217u))), countOneBits(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstTrailingBit(1u), _wgslsmith_clamp_u32(9897u, 0u, global0.a.x), 1u >> (arg_1.a.x % 32u)), firstTrailingBit(global0.a)) % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(max(abs(~global0.a.wxw), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, u_input.d.x, global0.a.x, u_input.d.x), global0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 945u, 919u), vec3<u32>(1u, u_input.c, 24143u)), 1u)) << (~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 0u), vec3<u32>(24546u, global0.a.x, u_input.c)), abs(vec3<u32>(global0.a.x, 18391u, u_input.d.x))) % vec3<u32>(32u)));
    let var_1 = Struct_2(min(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 1i), ~firstTrailingBit(vec4<i32>(-67477i, -3448i, -2147483647i, u_input.b))), firstTrailingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, 1i)), vec4<i32>(-1i, -4953i, u_input.a.x, u_input.a.x)))));
    global0 = Struct_3(select(vec4<u32>(_wgslsmith_div_u32(~61514u, func_3(vec3<f32>(-1789f, 430f, -411f), Struct_4(u_input.d), var_1)), 25796u, 1u, ~(~89362u)), global0.a, select(vec4<bool>(false, 4294967295u >= u_input.c, true, any(vec2<bool>(true, true))), vec4<bool>(false, var_0.a.x < 4294967295u, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec4<bool>(false, false, false, false)), false))));
    var var_2 = vec3<bool>(any(vec4<bool>(true, false, select(true, all(vec3<bool>(true, true, true)), true), false)), !(~5587u <= global0.a.x), any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), true)));
    let var_3 = 67695i;
    return Struct_2(var_1.a);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-469f, -543f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-527f, 1285f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(579f, -227f)))), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, -737f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-565f, -1576f)))), vec2<bool>(true, true), ~(~(reverseBits(global0.a) | ~global0.a)), arg_1);
    return Struct_1(var_0.a, select(var_0.b, select(vec2<bool>(true, all(vec3<bool>(var_0.b.x, false, true))), select(select(vec2<bool>(var_0.b.x, arg_0), var_0.b, vec2<bool>(false, false)), select(var_0.b, var_0.b, true), false), select(var_0.b, vec2<bool>(var_0.b.x, arg_0), !vec2<bool>(arg_0, true))), !(!select(vec2<bool>(true, false), var_0.b, var_0.b.x))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 0u, 4106u), var_0.c)) & ~var_0.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.c.zyw, vec3<u32>(global0.a.x, 4294967295u, ~u_input.d.x)), 23666u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.x;
    let var_1 = Struct_4(_wgslsmith_mod_vec3_u32(global0.a.wxy >> (vec3<u32>(~69831u, arg_0.x, var_0 | 9197u) % vec3<u32>(32u)), global0.a.xwz));
    var var_2 = false;
    var var_3 = ~global0.a.x;
    var var_4 = var_1;
    return func_4(true, 0u, func_2());
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, true))), 899f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) * 1071f))));
    var var_1 = _wgslsmith_f_op_f32(round(func_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.d), arg_0.c.wz), max(0u, arg_0.d), select(arg_0.c.x, 4294967295u, arg_2.x) | u_input.d.x), vec3<u32>(u_input.c, global0.a.x >> (_wgslsmith_mod_u32(26212u, arg_0.d) % 32u), 23939u ^ arg_1)).a.x));
    var var_2 = vec2<u32>(0u, _wgslsmith_dot_vec2_u32(arg_0.c.zx, vec2<u32>(36547u, 0u)));
    let var_3 = !(!(!arg_2.zz));
    let var_4 = Struct_3(arg_0.c);
    return -min(~vec4<i32>(u_input.a.x, u_input.b, abs(0i), -2147483647i), vec4<i32>(u_input.a.x, -(-2147483647i << (0u % 32u)), -(u_input.a.x | 1i), func_2().a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(func_1(max(vec3<u32>(1u, 56684u, global0.a.x) << (u_input.d % vec3<u32>(32u)), ~global0.a.zww), global0.a.zwz), ~u_input.c, vec3<bool>(true, all(vec4<bool>(true, true, true, true)), u_input.a.x >= u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(abs(134f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1174f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, -1204f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1086f, -1200f), _wgslsmith_f_op_vec2_f32(vec2<f32>(641f, -528f) + vec2<f32>(-138f, -859f))))))));
    let var_3 = Struct_3(firstLeadingBit(~(~global0.a)));
    var_0 = Struct_2(vec4<i32>(u_input.b, -2147483647i, var_0.a.x, -73442i));
    var_1 = -2338f;
    let var_4 = var_3;
    var var_5 = var_3.a;
    var_5 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_5.x >> (global0.a.x % 32u), 1u), global0.a.x, var_3.a.x, reverseBits(var_4.a.x)), ~firstLeadingBit(~global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_4.a.zwz, min(~vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.d.x, 4294967295u, 0u) | var_3.a.yxz), false));
}

