struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec4<i32>(u_input.a, -6770i, ~(-2147483647i), u_input.c.x) << (abs(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.d, 4294967295u, u_input.d, 60991u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, 20942u), vec4<u32>(u_input.d, u_input.d, 132922u, 9440u))))) % vec4<u32>(32u));
    var_0 = vec4<i32>(var_0.x, (~var_0.x << (11339u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.d, 34597u), u_input.d ^ 4294967295u, ~0u, u_input.d), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(59651u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 11718u, u_input.d, 55877u)), ~vec4<u32>(17360u, 1u, 0u, 1u), ~vec4<u32>(u_input.d, u_input.d, 80215u, u_input.d))) % 32u), -1i, u_input.a);
    var var_1 = Struct_3(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-623f, -1071f))))), 1f, ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 41509u) << (vec2<u32>(59992u, u_input.d) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, 30352u, 30699u)), ~vec3<u32>(0u, u_input.d, 4294967295u)), vec3<u32>(~firstTrailingBit(4294967295u), u_input.d, u_input.d)), u_input.c, !all(vec2<bool>(!arg_0, false)));
    var_1 = Struct_3(vec3<bool>(true, select(true, false, any(var_1.a)), (arg_0 & false) && true), var_1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.b.c.x, 15376u), ~countOneBits(var_1.c)), vec3<i32>(~(~u_input.c.x), _wgslsmith_mult_i32(0i, 1i), u_input.a), arg_0);
    let var_2 = Struct_3(vec3<bool>(arg_0, arg_0, !any(vec3<bool>(var_1.e, var_1.a.x, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1598f)) - _wgslsmith_f_op_f32(ceil(var_1.b.b))) - var_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.b, 551f)) + var_1.b.b)), vec2<u32>(~(~var_1.c.x), 4294967295u)), vec3<u32>(~_wgslsmith_sub_u32(~u_input.d, ~1u), var_1.b.c.x, 4294967295u), var_1.d, countOneBits(-19470i) > (max(38187i, min(0i, u_input.b.x)) | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11997i, 48534i), var_1.d.yy, vec2<i32>(var_0.x, var_1.d.x)), abs(var_0.wx))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.a), var_1.b.b))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false))), _wgslsmith_f_op_f32(func_3(u_input.c.x < u_input.c.x)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.x, -1245f))))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * -1333f) + 644f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))));
    var_1 = Struct_4(var_1.a);
    var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-var_1.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f - var_1.a.x) * _wgslsmith_f_op_f32(func_3(!var_0)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-481f))), 471f)));
    var var_1 = Struct_3(!select(!vec3<bool>(false, arg_0.b.x, arg_0.a.x), vec3<bool>(!arg_0.a.x, arg_0.a.x | false, any(vec2<bool>(false, arg_0.a.x))), false), Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.b.x))) + _wgslsmith_f_op_f32(-var_0.a.x)), ~(vec2<u32>(u_input.d, 13212u) << ((vec2<u32>(arg_0.c, u_input.d) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, arg_0.c, arg_0.c), vec3<u32>(4294967295u, arg_0.c, 21202u)), vec3<u32>(28640u, 0u, u_input.d)) >> ((vec3<u32>(47319u, arg_0.c, 4294967295u) ^ (vec3<u32>(arg_0.c, arg_0.c, arg_0.c) ^ vec3<u32>(u_input.d, 7120u, 19217u))) % vec3<u32>(32u))), (u_input.c | firstTrailingBit(select(vec3<i32>(-23523i, arg_2, -2147483647i), u_input.c, false))) ^ min(~(-u_input.c), _wgslsmith_div_vec3_i32(u_input.b.xwx, firstTrailingBit(vec3<i32>(2147483647i, -644i, u_input.c.x)))), all(select(!vec4<bool>(true, arg_0.b.x, true, false), select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), !vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.b.x, arg_0.b.x, arg_0.a.x)), all(select(arg_0.b, arg_0.b, arg_0.b)))));
    var_1 = Struct_3(!(!(!select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(arg_0.a.x, arg_0.b.x, false), arg_0.b.x))), var_1.b, _wgslsmith_add_vec3_u32(var_1.c, max(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c.x, 43861u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, u_input.d), vec3<u32>(1u, arg_0.c, 11275u)), var_1.c), var_1.c)), reverseBits(vec3<i32>(abs(~var_1.d.x), -var_1.d.x, min(8150i, _wgslsmith_mult_i32(arg_1.x, u_input.c.x)))), true);
    var var_2 = arg_0;
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, !(!(!vec2<bool>(var_2.b.x, var_1.a.x))))));
    return -473f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = !(_wgslsmith_clamp_i32(50164i, u_input.c.x, abs(u_input.b.x) >> (34914u % 32u)) <= _wgslsmith_mod_i32(~1i, 9367i));
    var var_2 = !vec3<bool>(var_1, !var_1, false);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-1262f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1288f, -1452f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(var_2.xz, vec2<bool>(var_2.x, false), 20812u), min(u_input.b.zy, u_input.b.zy), u_input.a)))), ~vec2<u32>(countOneBits(68736u) >> (u_input.d % 32u), 1u));
    let var_4 = 4294967295u;
    let var_5 = var_3;
    let var_6 = u_input.b.x;
    let var_7 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) + _wgslsmith_f_op_f32(var_5.a * var_5.b)) <= 485f, true, var_2.x), Struct_1(100f, var_5.a, vec2<u32>(var_4 | 87310u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_4, u_input.d), _wgslsmith_mod_u32(2887u, u_input.d)))), vec3<u32>(var_3.c.x, ~countOneBits(var_3.c.x) >> (var_3.c.x % 32u), ~var_3.c.x), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.c.xy), u_input.b.x ^ firstTrailingBit(-23429i)), !all(select(vec3<bool>(false, var_2.x, false), select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, var_1)), true || var_1)));
    var var_8 = vec2<bool>(var_7.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b)) - -385f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(-(var_7.d.x << (61330u % 32u))), _wgslsmith_clamp_i32(u_input.a, ~4087i >> (1u % 32u), _wgslsmith_sub_i32(-u_input.b.x, firstLeadingBit(var_6)))));
}

