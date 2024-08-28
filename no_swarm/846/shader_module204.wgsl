struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = Struct_5(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true), false), 0u, Struct_2(countOneBits(~(vec3<u32>(arg_1, 0u, 3401u) & vec3<u32>(4294967295u, 4294967295u, 46749u))), Struct_1(34253u, false, u_input.c), arg_0));
    var var_1 = Struct_4(var_0.b, _wgslsmith_f_op_f32(ceil(arg_2)), var_0.c.b, var_0.a.wz, var_0.c.b.b);
    let var_2 = var_0.c.b;
    var var_3 = Struct_5(var_0.a, 11067u, var_0.c);
    var var_4 = vec2<bool>(var_3.c.b.b, false);
    return true;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-695f, -1459f)), -1217f)))), _wgslsmith_f_op_f32(f32(-1f) * -1146f));
    let var_1 = Struct_3(!func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(346f, var_0.x, var_0.x, -165f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1520f, var_0.x, 2307f) * vec4<f32>(-308f, -1650f, -787f, -1108f))), _wgslsmith_sub_u32(7144u, 1u & u_input.b.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -405f))), Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, 0u), vec4<u32>(u_input.d.x, 17617u, 0u, u_input.c.x)), u_input.c.x, _wgslsmith_mod_u32(4294967295u, select(u_input.d.x, 4294967295u, false))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(5800u, 0u, u_input.b.x), u_input.c.ywz) ^ _wgslsmith_mod_u32(u_input.c.x, 11068u), func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-613f, -405f, var_0.x, 1000f))), u_input.b.x, 284f), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 34086u, 15056u, 0u), u_input.c), vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, 0u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), -943f, _wgslsmith_f_op_f32(min(860f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec4<bool>(!arg_0, true, arg_0, !arg_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 197f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(796f, var_0.x, var_0.x)))))));
    var var_2 = Struct_3(false, var_1.b, var_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) - var_0.x), 1f, 104f)));
    var var_3 = (var_2.b.b.c.x > _wgslsmith_clamp_u32(_wgslsmith_add_u32(max(u_input.d.x, var_2.b.a.x), ~66997u), ~(~var_1.b.a.x), ~u_input.b.x)) && all(var_2.c);
    let var_4 = var_1.b.b.a;
    return u_input.a.zww;
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_clamp_i32(-(_wgslsmith_add_i32(2147483647i, u_input.a.x) & -_wgslsmith_mult_i32(-12436i, 1i)), _wgslsmith_mult_i32(u_input.a.x, 2147483647i), -2147483647i);
    var var_1 = u_input.a.xxx;
    var_1 = func_2(!(!(false & arg_0.c.x)) | any(vec4<bool>(true, arg_0.a | arg_0.a, arg_0.a, false)));
    let var_2 = 14486i;
    let var_3 = arg_0;
    return countOneBits(~var_3.b.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b.x, 96416u, 57491u, u_input.d.x) ^ max(vec4<u32>(u_input.c.x, 42100u, u_input.c.x, u_input.b.x), func_1(Struct_3(false, Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 9213u), Struct_1(u_input.c.x, true, vec4<u32>(31552u, 81309u, u_input.c.x, 4657u)), vec4<f32>(-1595f, 150f, -244f, -2034f)), vec4<bool>(false, false, false, true), vec3<f32>(-1489f, -666f, 2525f))))), vec4<u32>(4294967295u, abs(func_1(Struct_3(true, Struct_2(u_input.c.wzz, Struct_1(u_input.c.x, true, u_input.c), vec4<f32>(273f, -1735f, -1064f, 1113f)), vec4<bool>(true, false, true, false), vec3<f32>(128f, 844f, -684f))).x ^ ~u_input.d.x), 0u, 1u));
    let var_1 = Struct_5(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, select(false, false, true)), false), u_input.b.x, Struct_2(var_0.www, Struct_1(countOneBits(var_0.x), all(vec4<bool>(true, false, true, false)), (vec4<u32>(0u, 4294967295u, 45712u, u_input.c.x) >> (u_input.c % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(70500u, u_input.d.x, 1u, u_input.b.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(337f, -504f, -1000f, 657f))), vec4<f32>(-634f, -599f, 1771f, -1869f))))));
    let var_2 = !(!var_1.c.b.b);
    let var_3 = Struct_3(var_1.a.x, Struct_2(var_1.c.b.c.zwz, Struct_1(~var_0.x, !(2147483647i != u_input.a.x), u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.c, var_1.c.c))))), vec4<bool>(true, true, true, any(!vec2<bool>(var_1.a.x, var_1.c.b.b))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-654f - _wgslsmith_div_f32(-674f, -1594f)))), _wgslsmith_f_op_f32(-1f), 662f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, ~vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xyw, u_input.a.wzx)), -30755i, -2147483647i, -30058i), vec2<f32>(_wgslsmith_f_op_f32(var_1.c.c.x - 1601f), 1129f), _wgslsmith_dot_vec2_u32(var_3.b.b.c.zx, ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.c.a, vec3<u32>(0u, 53986u, 0u)), var_0.x)));
}

