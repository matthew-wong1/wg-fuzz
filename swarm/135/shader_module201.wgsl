struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 754f, 130f)) - arg_1) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-568f, arg_1.x, arg_1.x))))));
    let var_1 = arg_0;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(arg_1.x + 349f)), var_0.x, var_0.x);
    var var_2 = Struct_1(firstTrailingBit(~(~vec2<u32>(arg_0.a.x, 1u))) >> (arg_0.a % vec2<u32>(32u)), -countOneBits(0i), 2147483647i, select(select(vec4<bool>(var_1.d.x, true, select(false, var_1.d.x, arg_0.d.x), true), var_1.d, select(vec4<bool>(false, false, var_1.d.x, var_1.d.x), select(vec4<bool>(arg_0.d.x, true, false, arg_0.d.x), vec4<bool>(var_1.d.x, false, false, arg_0.d.x), arg_0.d), vec4<bool>(var_1.d.x, var_1.d.x, arg_0.d.x, true))), var_1.d, var_1.d.x), min(0u << (1u % 32u), u_input.b.x << (0u % 32u)));
    var var_3 = arg_0;
    return var_1.a.x;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = u_input.b.zy;
    let var_1 = !vec2<bool>(false, any(vec4<bool>(arg_2.d.x, any(arg_2.d), any(vec2<bool>(arg_2.d.x, arg_2.d.x)), any(vec2<bool>(arg_2.d.x, arg_1.x)))));
    var_0 = vec2<u32>(~(~u_input.b.x), 4294967295u);
    let var_2 = arg_2;
    let var_3 = u_input.c.yy;
    return true;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(~select((arg_3.yx | vec2<u32>(23569u, 29182u)) << (u_input.b.zx % vec2<u32>(32u)), arg_3.yy, false), u_input.a.x, -17532i, select(vec4<bool>(true, arg_0, !(!arg_2), select(arg_3.x <= 7513u, true, false)), vec4<bool>(reverseBits(4294967295u) <= arg_3.x, false, func_4(func_3(Struct_1(arg_3.yx, u_input.a.x, u_input.c.x, vec4<bool>(arg_0, arg_2, true, arg_0), u_input.b.x), vec3<f32>(955f, 246f, 898f), vec2<i32>(u_input.c.x, 0i)), vec2<bool>(true, true), Struct_1(arg_3.yx, 52341i, 30054i, vec4<bool>(false, arg_2, false, arg_2), arg_3.x)), func_4(func_3(Struct_1(arg_3.zz, u_input.c.x, -32969i, vec4<bool>(arg_2, arg_2, true, false), 4294967295u), vec3<f32>(285f, -1000f, -1106f), vec2<i32>(-27065i, u_input.c.x)), !vec2<bool>(arg_2, arg_0), Struct_1(vec2<u32>(u_input.b.x, 47469u), 0i, u_input.c.x, vec4<bool>(false, arg_2, true, false), 14502u))), !all(vec4<bool>(arg_2, false, true, arg_2))), _wgslsmith_mod_u32(~(~arg_3.x), u_input.b.x));
    let var_1 = Struct_1(~(var_0.a | ~u_input.b.yy), firstTrailingBit(_wgslsmith_dot_vec3_i32(-u_input.c, max(u_input.a.zxy, vec3<i32>(1i, u_input.a.x, 2147483647i)))) | (countOneBits(var_0.b) ^ min(reverseBits(19084i), u_input.c.x)), ~(30706i & (0i ^ (3127i ^ u_input.c.x))), !select(var_0.d, vec4<bool>(all(var_0.d), true, select(false, arg_0, var_0.d.x), !arg_0), var_0.d.x), arg_3.x);
    var var_2 = _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -847f)));
    var var_3 = select(!var_0.d.zxz, var_0.d.xyx, false);
    let var_4 = Struct_1(_wgslsmith_div_vec2_u32(u_input.b.yy, max(abs(u_input.b.yy), arg_3.zz)), u_input.a.x, -max(1i >> ((var_0.a.x << (arg_3.x % 32u)) % 32u), _wgslsmith_mult_i32(-1i, 53803i)), vec4<bool>(var_1.d.x, true | (firstTrailingBit(0u) <= (var_1.a.x >> (63261u % 32u))), var_3.x, all(vec2<bool>(func_4(0u, vec2<bool>(false, var_3.x), Struct_1(u_input.b.zx, u_input.a.x, var_0.c, vec4<bool>(true, false, var_3.x, true), 4294967295u)), func_4(46677u, vec2<bool>(arg_2, var_0.d.x), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), 1i, -1573i, var_0.d, 32273u))))), abs(arg_3.x ^ u_input.b.x));
    return var_4.d.zzz;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = -u_input.a.yy;
    var var_1 = !(!(!(!(!vec3<bool>(arg_0, arg_0, false)))));
    var_1 = func_2(!(!(!(arg_1 == 475f))), _wgslsmith_f_op_f32(-arg_1), false, vec3<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, 1u) ^ 4294967295u, u_input.b.x) << (u_input.b % vec3<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, 1u) << (~vec4<u32>(8107u, 0u, 67538u, 67531u) % vec4<u32>(32u))), abs(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x >> (4294967295u % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 59681u, u_input.b.x)));
    let var_3 = vec3<bool>(var_1.x, u_input.b.x == u_input.b.x, true);
    return Struct_1(firstTrailingBit(~u_input.b.yz), (_wgslsmith_dot_vec3_i32(u_input.c, ~u_input.c) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 6241u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, 41136u), vec4<u32>(21640u, 9968u, 1u, u_input.b.x))) % 32u)) | (32168i >> (0u % 32u)), 9185i, !(!vec4<bool>(var_1.x, any(vec2<bool>(false, true)), select(var_3.x, var_3.x, var_1.x), any(vec4<bool>(false, false, var_3.x, false)))), _wgslsmith_clamp_u32(56411u, _wgslsmith_div_u32(u_input.b.x ^ ~18657u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(6888u, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(39809u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 26768u, 15806u)))), u_input.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, ~(~u_input.b.x), func_3(arg_2, vec3<f32>(222f, arg_3.x, arg_3.x), firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)))), reverseBits(firstTrailingBit(select(u_input.b, vec3<u32>(arg_2.e, arg_2.a.x, arg_0.a.x), arg_2.d.xwy)))));
    var_0 = u_input.b;
    var_0 = select(~vec3<u32>(func_1(arg_0.d.x, 1f).e, ~(~arg_0.a.x), 4294967295u), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.e, 51923u, 44170u), reverseBits(u_input.b)), min(vec3<u32>(1u, _wgslsmith_sub_u32(1u, var_0.x), 1u << (arg_1.x % 32u)), vec3<u32>(~58941u, arg_1.x | var_0.x, 35041u))), !vec3<bool>(arg_0.d.x, arg_0.c > (10340i ^ arg_2.b), !(arg_0.d.x & arg_2.d.x)));
    var var_1 = func_1(!arg_0.d.x, _wgslsmith_f_op_f32(trunc(arg_3.x)));
    var var_2 = ((_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, arg_2.b), 50371i) | -38743i) ^ 2147483647i) <= -(~78230i);
    return !arg_0.d.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_5(Struct_1(u_input.b.zz, _wgslsmith_mult_i32(-47631i, u_input.c.x), -1026i << (u_input.b.x % 32u), vec4<bool>(true, true, true, true), 15195u), u_input.b.yx, func_1(all(vec4<bool>(false, true, false, true)), 1728f), vec2<f32>(-1368f, -108f)), vec3<bool>(true, true, true), vec3<bool>(true, func_1(true, -659f).d.x, !select(false, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_f32(-1662f - -679f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-533f, 108f)) - -1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-346f - 305f))))));
    let var_2 = abs(u_input.a.x) << (reverseBits(1u) % 32u);
    let var_3 = (_wgslsmith_mod_i32(2147483647i, abs(firstTrailingBit(var_2))) & -10099i) << ((max(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 37663u) ^ 1u) << (~(~u_input.b.x) % 32u)) % 32u);
    let var_4 = ~select((~u_input.a.xwx | ~u_input.a.xwz) | u_input.c, vec3<i32>(1i, 2147483647i, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) <= _wgslsmith_f_op_f32(-var_1.x));
    var var_5 = Struct_1(u_input.b.xz, var_4.x, 21545i, vec4<bool>(var_0.x, true, !any(vec4<bool>(true, var_0.x, true, var_0.x)) || (0u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 23064u, u_input.b.x), vec3<u32>(55683u, u_input.b.x, u_input.b.x))), -39926i <= ((1i | var_2) << (u_input.b.x % 32u))), ~(~u_input.b.x));
    var var_6 = _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b, ~u_input.b, vec3<u32>(u_input.b.x, 0u, u_input.b.x)) & u_input.b, max(firstTrailingBit(u_input.b), ~(~vec3<u32>(71541u, 42324u, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.a.wy);
}

