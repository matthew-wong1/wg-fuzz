struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-u_input.c.zww, u_input.c.zwy), ~(-14487i)), countOneBits(countOneBits(_wgslsmith_dot_vec3_i32(u_input.c.xxz, vec3<i32>(u_input.c.x, 1i, -19436i)))), 0i ^ u_input.c.x, 1i);
    var var_1 = !(!any(vec2<bool>(all(vec2<bool>(false, false)), true)));
    var var_2 = Struct_2(Struct_1(abs(u_input.c.x), 5919u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1148f, -2419f, 114f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1151f, -429f, -1000f), vec3<f32>(2359f, 1135f, 187f), true)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -789f, -107f), vec3<f32>(497f, -576f, -343f)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true, false), u_input.b.zz), vec3<u32>(12073u, u_input.b.x, ~_wgslsmith_div_u32(firstLeadingBit(u_input.a), ~207u)));
    let var_3 = Struct_2(var_2.a, u_input.b);
    var_1 = all(!(!vec4<bool>(var_3.a.d.x && true, var_2.a.d.x, any(vec4<bool>(var_3.a.d.x, var_3.a.d.x, var_3.a.d.x, var_2.a.d.x)), var_2.a.d.x)));
    return 4294967295u;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~reverseBits(u_input.c.x), _wgslsmith_add_u32(func_3(), _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b)), vec3<f32>(-1999f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, 587f)), _wgslsmith_f_op_f32(f32(-1f) * -344f)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), select(false, true, all(vec4<bool>(false, true, false, true))), true), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 6693u), arg_0) & _wgslsmith_div_vec2_u32(arg_0, u_input.b.xx), select(~arg_0, u_input.b.zx, select(true, true, false)), u_input.b.yx)), vec3<u32>(~_wgslsmith_clamp_u32(1u, arg_0.x, 0u) & ~u_input.b.x, 77680u, ~abs(_wgslsmith_mod_u32(u_input.b.x, 118525u))));
    var var_1 = vec3<u32>(countOneBits(arg_0.x), ~14866u, func_3());
    var_1 = vec3<u32>(_wgslsmith_add_u32(~arg_1, 131955u), arg_0.x, arg_1);
    var_1 = reverseBits(select(vec3<u32>(~0u, 74777u, var_1.x) | vec3<u32>(~1470u, ~0u, var_0.b.x), max(abs(vec3<u32>(var_1.x, arg_0.x, 0u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 24548u), u_input.b), ~(~vec3<u32>(32150u, u_input.a, arg_1))), !var_0.a.d));
    let var_2 = 964f;
    return var_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_1, vec3<u32>(~u_input.a >> (_wgslsmith_dot_vec3_u32(reverseBits(u_input.b), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(39524u, 33256u, 1u))) % 32u), ~_wgslsmith_sub_u32(u_input.a, min(u_input.b.x, u_input.a)), arg_1.e.x));
    var var_1 = Struct_1(-(~9031i), ~(~(32396u >> (u_input.a % 32u)) ^ 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), 1217f)), !select(!(!vec3<bool>(true, var_0.a.d.x, false)), vec3<bool>(var_0.a.c.x == arg_1.c.x, arg_1.d.x, func_2(var_0.a.e, u_input.b.x).d.x), var_0.a.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0.b.x >> (func_3() % 32u), 1u), _wgslsmith_sub_vec2_u32(arg_1.e, select(vec2<u32>(0u, 0u), vec2<u32>(0u, 14603u), false) << (vec2<u32>(arg_1.e.x, 1u) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, arg_1.b, 64879u)), firstTrailingBit(var_0.b.x) | u_input.a)));
    var_0 = Struct_2(Struct_1(abs(-2147483647i), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1945f, arg_1.c.x, var_0.a.c.x)), !func_2(~vec2<u32>(1u, 16880u), var_1.e.x << (57143u % 32u)).d, _wgslsmith_mod_vec2_u32(firstTrailingBit(min(vec2<u32>(var_0.b.x, var_1.b), u_input.b.zx)), u_input.b.zx)), select(vec3<u32>(~reverseBits(arg_1.e.x), arg_1.b, var_1.e.x), u_input.b, !vec3<bool>(arg_1.d.x, true, true & arg_1.d.x)));
    var var_2 = 0i;
    var_1 = Struct_1(-(~u_input.c.x), firstTrailingBit(reverseBits(reverseBits(arg_1.b) << (var_0.b.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.c, arg_1.c)))), select(vec3<bool>(!(var_1.c.x >= var_0.a.c.x), true, var_1.d.x), vec3<bool>(arg_0.x, var_0.a.d.x, true), true), arg_1.e);
    return Struct_2(var_0.a, vec3<u32>(~firstLeadingBit(u_input.a), 4294967295u, var_0.b.x) << (select(vec3<u32>(_wgslsmith_mod_u32(1u, arg_1.e.x), 16402u, 46183u), reverseBits(vec3<u32>(var_0.a.b, 1u, 0u)), vec3<bool>(any(vec4<bool>(true, arg_1.d.x, false, true)), arg_0.x, all(arg_1.d))) % vec3<u32>(32u)));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_4(!vec2<bool>(~84124u < _wgslsmith_clamp_u32(u_input.a, 1u, u_input.b.x), true), func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(16989u, u_input.a)), u_input.b.yx), ~(15083u & max(u_input.b.x, 1u))));
    var_0 = Struct_2(var_0.a, reverseBits(vec3<u32>(41518u >> (~var_0.b.x % 32u), _wgslsmith_sub_u32(u_input.b.x, u_input.a >> (var_0.a.b % 32u)), ~(var_0.a.e.x ^ 4294967295u))));
    var_0 = func_4(vec2<bool>(false, var_0.a.d.x), var_0.a);
    return 541f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.xw;
    let var_1 = Struct_1(var_0.x, 1242u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(859f + 591f), _wgslsmith_f_op_f32(select(-412f, -1212f, false)))), _wgslsmith_f_op_f32(-1000f * -864f)) + vec3<f32>(-2173f, 1f, -270f)), !vec3<bool>(1i >= var_0.x, false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), abs(u_input.b.xz));
    var_0 = u_input.c.zx;
    var var_2 = Struct_1(reverseBits(_wgslsmith_sub_i32(23945i, -26932i)), ~abs(36688u), var_1.c, vec3<bool>(true, any(!var_1.d), !(!(var_1.c.x < 1238f))), vec2<u32>(~58028u, _wgslsmith_add_u32(u_input.a, ~464u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-23827i)) - -148f) * _wgslsmith_f_op_f32(abs(var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.xx + var_1.c.xx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, -921f), vec2<f32>(1000f, var_3)) + _wgslsmith_f_op_vec2_f32(-var_2.c.zy)))), u_input.c ^ u_input.c, func_3());
}

