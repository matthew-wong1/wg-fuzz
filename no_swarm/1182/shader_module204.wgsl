struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-678f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f + 253f)), -360f))), true);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b)));
    let var_2 = _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(u_input.b << (40580u % 32u), 2147483647i), u_input.b, u_input.a), vec3<i32>(u_input.a, (i32(-1i) * -4885i) | min(u_input.a, u_input.b), u_input.a) | firstTrailingBit(reverseBits(-vec3<i32>(23877i, u_input.b, 20896i))));
    var var_3 = firstTrailingBit(~(firstTrailingBit(~vec4<u32>(28352u, 4294967295u, 67121u, 29694u)) ^ vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30237u), vec2<u32>(37231u, 47999u)), 3648u, _wgslsmith_mult_u32(1u, 21704u))));
    var var_4 = Struct_4(false, false, var_1.a, 216f);
    return select(!(!vec3<bool>(any(vec3<bool>(var_1.a.a.b, false, var_0.b)), select(true, true, true), select(var_0.b, false, var_1.a.a.b))), select(!(!vec3<bool>(false, var_1.a.a.b, var_1.a.a.b)), vec3<bool>(true, any(vec3<bool>(var_1.a.a.b, false, var_1.a.a.b)) | true, !all(vec2<bool>(var_0.b, false))), !select(vec3<bool>(false, true, var_1.a.a.b), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, true, false), true), false)), vec3<bool>(any(vec2<bool>(var_1.a.a.b, true)), all(select(select(vec2<bool>(var_4.b, var_4.a), vec2<bool>(var_0.b, var_1.a.a.b), vec2<bool>(var_1.a.a.b, var_1.a.a.b)), vec2<bool>(var_0.b, var_1.a.a.b), select(vec2<bool>(var_4.a, var_4.b), vec2<bool>(false, false), var_4.c.a.b))), any(!(!vec4<bool>(var_4.a, var_1.a.a.b, var_1.a.a.b, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-547f)), u_input.a > _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 5827i) ^ u_input.b, ~(~1i), 0i));
    let var_1 = select(vec2<bool>(arg_0.b, !(all(vec2<bool>(var_0.b, false)) && arg_1.c.a.b)), select(select(vec2<bool>(true, any(vec3<bool>(arg_0.b, true, true))), !vec2<bool>(var_0.b, false), vec2<bool>(true, arg_0.b)), vec2<bool>(arg_1.c.a.b, true), any(func_3())), select(!(!func_3().xz), select(vec2<bool>(true, true), vec2<bool>(arg_1.b, true), !select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, var_0.b), false)), var_0.b));
    let var_2 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, firstLeadingBit(-7934i), -10732i, 1i), vec4<i32>(_wgslsmith_add_i32(u_input.a, -31923i), max(-34112i, u_input.b), abs(u_input.a), 36757i)) | u_input.a, u_input.b);
    var var_3 = abs(vec3<u32>(1u, 1u, 1u));
    var_3 = ~(~(~(vec3<u32>(71753u, 33902u, 35991u) & vec3<u32>(var_3.x, 0u, var_3.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x), countOneBits(vec3<u32>(var_3.x, var_3.x, 1u)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(278f, arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))), !all(vec4<bool>(var_0.b, true, !var_1.x, false)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_4(arg_0.b, !arg_0.c.a.b, arg_2, _wgslsmith_f_op_f32(-arg_0.c.a.a));
    let var_1 = func_2(arg_0.c.a, var_0);
    var var_2 = 471f;
    var var_3 = ~arg_1;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(294f * var_0.d), true));
    return ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(0u, 10571u)), ~12957u), arg_1.x, ~(~arg_1.x), var_3.x) & select(~(~vec4<u32>(arg_1.x, 5097u, 16366u, arg_1.x)), firstTrailingBit(abs(select(vec4<u32>(97213u, 1u, 67887u, arg_1.x), vec4<u32>(75845u, 49975u, arg_1.x, arg_1.x), arg_0.a))), !var_4.a.b);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(arg_0, arg_0)), true));
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_3(Struct_2(func_2(Struct_1(-976f, !arg_1.x), Struct_4(true, all(vec3<bool>(var_0.a.b, false, var_0.a.b)), Struct_2(Struct_1(-894f, var_0.a.b)), arg_0))));
    var_0 = Struct_2(func_2(var_0.a, Struct_4(u_input.b < ~u_input.a, var_0.a.b, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = -reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_3), vec3<i32>(arg_3, u_input.a, 1910i)), -6792i), vec3<i32>(-1i) * -vec3<i32>(u_input.a, -1i, -8705i), select(select(vec3<i32>(arg_3, 1i, u_input.b), vec3<i32>(-2147483647i, -8807i, 0i), arg_1.x), -vec3<i32>(arg_3, 391i, 44717i), !vec3<bool>(false, false, arg_1.x))));
    return Struct_4(true, true & arg_1.x, Struct_2(func_2(Struct_1(-146f, any(arg_1)), Struct_4(var_1.a.a.b, var_0.a.b, var_1.a, 264f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(-var_0.a.a)));
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(1u, 0u), _wgslsmith_add_u32(37874u, 63588u), max(22349u, 42741u), firstTrailingBit(32965u)), reverseBits(~vec4<u32>(1u, 4294967295u, 30164u, 1u))), max(~countOneBits(24991u), 53303u)) | abs(~(~(~1u)));
    var var_1 = vec3<bool>(arg_0.c.a.b, arg_0.c.a.b, any(vec4<bool>(func_3().x, func_3().x, true, -u_input.b == _wgslsmith_mod_i32(u_input.b, -1405i))));
    var_0 = ~4294967295u;
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(arg_0.c.a.a + arg_0.c.a.a)) * _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(-arg_0.c.a.a))) * arg_0.c.a.a), vec3<bool>(arg_0.b, all(!vec2<bool>(var_1.x, var_1.x)), true), firstTrailingBit(~(~(~vec4<u32>(4294967295u, 25627u, 4294967295u, 108434u)))), -29680i).c;
    var_2 = arg_0.c;
    return StorageBuffer(vec4<i32>(25603i, 0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(-11395i, u_input.b)) << (1u % 32u), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(-1194f, !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(20838u, 1u, 32758u, 53191u))), func_1(Struct_4(true, true, Struct_2(Struct_1(1095f, false)), 182f), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 25752u), vec2<u32>(1u, 1u)), Struct_2(Struct_1(-1160f, true)))), 42020i));
}

