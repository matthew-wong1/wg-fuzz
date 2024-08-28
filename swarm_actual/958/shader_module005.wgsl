struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(-1000f, -712f, select(select(global0.yyz, arg_0.c, !(!arg_0.d.c.x)), vec3<bool>(!(!arg_0.c.x), any(select(vec2<bool>(global0.x, false), vec2<bool>(arg_0.d.c.x, global0.x), global0.x)), select(all(arg_0.d.c), select(true, false, global0.x), false)), !any(vec4<bool>(global0.x, true, arg_0.d.c.x, arg_0.c.x))), arg_0.d, vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(arg_0.d.a, arg_0.e.x, 40137u)), select(~vec3<u32>(1u, arg_0.e.x, arg_0.d.a), arg_0.e.wzx, global0.zxz)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), ~4294967295u, _wgslsmith_mod_u32(u_input.a, 35049u)), ~(arg_0.e.ywz & arg_0.e.ywz)), 77979u, _wgslsmith_mult_u32(~arg_0.e.x, reverseBits(u_input.a & arg_0.e.x))));
    global0 = !var_0.d.c;
    var var_1 = Struct_4(arg_1, arg_0.d, var_0.c.x, _wgslsmith_mult_i32(arg_1.b, arg_1.b));
    var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-var_1.a.a.x), 241f, _wgslsmith_f_op_f32(f32(-1f) * -1724f))), var_1.b.d.x >> ((10123u ^ arg_0.e.x) % 32u)), Struct_1(reverseBits(5295u), ~vec2<i32>(9108i, ~21888i), vec4<bool>(any(vec2<bool>(true, true)), any(var_0.d.c.wx), var_1.c, all(select(arg_0.d.c, vec4<bool>(true, true, false, false), false))), _wgslsmith_mult_vec2_i32(var_1.b.b, ~vec2<i32>(arg_1.b, 0i))), any(vec4<bool>(false, global0.x, select(false, !global0.x, 1u >= var_1.b.a), true)), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d), u_input.b.zwy));
    global0 = vec4<bool>(all(vec3<bool>(true, all(vec2<bool>(true, true)), !(true && global0.x))), !arg_0.c.x, abs(countOneBits(36685u)) > ~(~u_input.e.x), true);
    return vec4<bool>(arg_1.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f * 1000f))), !(((var_0.d.a << (var_1.b.a % 32u)) & 1u) != ~(~var_1.b.a)), any(select(vec2<bool>(all(var_1.b.c.wx), 0u <= arg_0.d.a), select(global0.ww, arg_0.d.c.yw, vec2<bool>(arg_0.c.x, true)), any(!vec4<bool>(var_1.c, global0.x, global0.x, false)))), var_0.d.c.x);
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = select(!(!func_3(Struct_2(1104f, 577f, vec3<bool>(true, global0.x, global0.x), Struct_1(1u, vec2<i32>(u_input.c, u_input.c), vec4<bool>(global0.x, true, global0.x, true), vec2<i32>(u_input.d.x, -3156i)), vec4<u32>(0u, u_input.a, 1u, u_input.a)), Struct_3(vec4<f32>(-210f, -1265f, -1625f, -782f), -18279i))), select(vec4<bool>(!any(global0.wz), select(any(vec3<bool>(global0.x, true, global0.x)), any(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x), u_input.e.x >= 1u, global0.x), vec4<bool>(func_3(Struct_2(-1000f, 843f, global0.wwx, Struct_1(u_input.a, u_input.d.xy, vec4<bool>(global0.x, global0.x, false, false), u_input.d.xz), vec4<u32>(arg_0, 41927u, 4294967295u, 0u)), Struct_3(vec4<f32>(-723f, -947f, -147f, 2836f), u_input.d.x)).x, !(31347u >= arg_0), false, global0.x), select(!select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, false), global0.x), vec4<bool>(true, global0.x, true, global0.x | false), global0.x)), !(!vec4<bool>(true, true, false, global0.x)));
    var var_0 = Struct_3(vec4<f32>(-287f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-380f + 563f), true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1542f, -858f), _wgslsmith_f_op_f32(step(-783f, 1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1866f, -323f) + _wgslsmith_f_op_f32(511f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1745f, 1403f))), !global0.x || true))), u_input.d.x);
    var var_1 = abs(~max(u_input.b.x, _wgslsmith_mult_i32(-48664i, countOneBits(28850i))));
    let var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(15351u, arg_0), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 17775u, u_input.a), u_input.e), u_input.e & vec3<u32>(0u, 30506u, u_input.a)), u_input.e.x) >> (arg_0 % 32u), u_input.b.xw, !(!select(!vec4<bool>(global0.x, false, global0.x, global0.x), func_3(Struct_2(var_0.a.x, -321f, global0.yxw, Struct_1(arg_0, vec2<i32>(u_input.b.x, 2147483647i), vec4<bool>(global0.x, false, true, true), vec2<i32>(var_0.b, u_input.d.x)), vec4<u32>(arg_0, 4294967295u, u_input.a, u_input.e.x)), Struct_3(vec4<f32>(-1513f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b)), global0.x)), _wgslsmith_add_vec2_i32(u_input.b.xz, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 26317i), select(vec2<i32>(-1i, var_0.b), u_input.d.yx, global0.x)), select(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 4744i), u_input.d.yy), u_input.d.zy, global0.zx))));
    var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, -u_input.d.x) ^ (i32(-1i) * -487i), _wgslsmith_sub_i32(1i, firstTrailingBit(abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))));
    return !(!var_2.c.wx);
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global0 = vec4<bool>(all(!(!(!vec2<bool>(arg_1, false)))), true, true, true);
    let var_0 = select(!vec4<bool>(true, true, false, any(func_2(4294967295u))), vec4<bool>(true, !arg_1, true || (!arg_1 & true), true), vec4<bool>(true | global0.x, arg_1, true, false));
    global0 = var_0;
    var var_1 = ~u_input.a;
    var var_2 = ~abs(u_input.a);
    return -882f;
}

fn func_4(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(arg_0 - arg_0))));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, arg_0, -368f, 1369f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 101f, var_0, arg_0) + vec4<f32>(arg_0, var_0, -1547f, -708f)))), -abs(~20186i)), Struct_1(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b.x) >> (~vec2<u32>(u_input.e.x, 25197u) % vec2<u32>(32u)), ~(~vec2<i32>(u_input.c, -3218i))), func_3(Struct_2(_wgslsmith_f_op_f32(747f - arg_0), _wgslsmith_f_op_f32(-arg_0), !vec3<bool>(global0.x, true, global0.x), Struct_1(u_input.a, u_input.d.yy, vec4<bool>(false, true, global0.x, true), u_input.d.yz), ~vec4<u32>(0u, u_input.a, u_input.a, 18616u)), Struct_3(vec4<f32>(arg_0, arg_0, arg_0, 1688f), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.b.x, u_input.c, u_input.d.x)))), u_input.b.ww), true, ((-15333i << (firstLeadingBit(26862u) % 32u)) | _wgslsmith_clamp_i32(-1i, u_input.d.x, _wgslsmith_div_i32(u_input.c, u_input.c))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(3020u, 1u, _wgslsmith_sub_u32(u_input.e.x, 0u), _wgslsmith_div_u32(u_input.e.x, u_input.e.x)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 65273u), vec4<u32>(u_input.e.x, 4294967295u, 1u, u_input.a)))) % 32u));
    global0 = var_1.b.c;
    var var_2 = Struct_2(var_0, -541f, !global0.yxw, var_1.b, ~vec4<u32>(abs(max(1u, 53385u)), var_1.b.a, max(abs(u_input.e.x), ~1u), (90669u ^ u_input.a) & ~var_1.b.a));
    var_2 = Struct_2(var_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1221f, -364f, (14640u > var_2.e.x) && false)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(var_0, -135f, true)))))), !global0.zyw, var_2.d, var_2.e << (vec4<u32>(1u, _wgslsmith_mod_u32(~var_2.e.x, 1u), firstTrailingBit(_wgslsmith_mod_u32(21944u, 3343u)), _wgslsmith_div_u32(24253u, var_2.d.a) | var_2.d.a) % vec4<u32>(32u)));
    return ~(u_input.e.x << (14013u % 32u));
}

fn func_5(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(u_input.e.x, arg_0, select(vec4<bool>(!global0.x, true & (false || global0.x), false, !global0.x), !vec4<bool>(false, any(vec4<bool>(global0.x, false, global0.x, false)), true, true), vec4<bool>(global0.x || false, any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, global0.x, false), global0.x)), !global0.x & (global0.x & true), !(!global0.x))), vec2<i32>(abs(_wgslsmith_sub_i32(-arg_0.x, arg_0.x)), 4010i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(781f)))), _wgslsmith_div_f32(-600f, -366f))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(755f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1091f, 248f)))));
    var var_3 = 1f;
    var var_4 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_1(-2147483647i, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), var_2, 367f), var_0.b.x), var_0, false, -2147483647i);
    return _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.a.a.x)))) * 388f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(abs(u_input.b.xz), _wgslsmith_clamp_u32(((u_input.e.x ^ 61763u) ^ ~18665u) | u_input.e.x, ~u_input.e.x, _wgslsmith_div_u32(~1u, func_4(_wgslsmith_f_op_f32(func_1(u_input.d.x, global0.x)))))));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * 1000f), _wgslsmith_f_op_f32(sign(var_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(trunc(514f)))), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1452f), _wgslsmith_f_op_f32(746f * var_0)), _wgslsmith_mult_i32(-2147483647i ^ u_input.b.x, u_input.c));
    var var_2 = all(!vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(19519u, 0u, 4294967295u), vec3<u32>(4294967295u, 3354u, u_input.a)) != _wgslsmith_mod_u32(u_input.e.x, 43430u), u_input.e.x <= ~u_input.e.x, !any(global0.zy), global0.x));
    var var_3 = max(vec2<i32>(u_input.b.x, reverseBits(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.c, var_1.b), vec4<i32>(24249i, 47892i, 1i, 8019i))))), vec2<i32>(_wgslsmith_add_i32(u_input.d.x, firstTrailingBit(_wgslsmith_mod_i32(var_1.b, 9970i))), countOneBits(~1i) | _wgslsmith_add_i32(var_1.b, ~(-28514i))));
    var var_4 = !(!select(false, global0.x, false));
    let var_5 = -196f;
    let var_6 = !(!select(select(!vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, false, true, global0.x)), vec4<bool>(!global0.x, any(vec2<bool>(global0.x, true)), true, true), true && !global0.x));
    let var_7 = Struct_4(var_1, Struct_1(~abs(~51572u), vec2<i32>(_wgslsmith_mult_i32(abs(var_3.x), 2147483647i), -var_3.x), !select(!var_6, select(vec4<bool>(false, true, false, global0.x), var_6, var_6), var_6), abs(_wgslsmith_sub_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(u_input.b.zw, vec2<i32>(0i, 0i))))), global0.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(abs(-2147483647i), -2147483647i, global0.x), 1648i), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(40718i), _wgslsmith_sub_i32(2147483647i, u_input.c), _wgslsmith_clamp_i32(u_input.b.x, var_1.b, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), firstTrailingBit(u_input.d.x), _wgslsmith_add_i32(var_1.b, -1i))), _wgslsmith_dot_vec3_i32(abs(u_input.b.zyw), u_input.b.xxy)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, u_input.e, u_input.e.xy, i32(-1i) * -1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

