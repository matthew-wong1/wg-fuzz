struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, 218f))), arg_0.a)), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(1034f)), _wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -772f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a) + vec4<f32>(127f, arg_0.a, arg_0.a, 822f))), select(!vec4<bool>(arg_0.c, true, true, arg_0.c), vec4<bool>(false, true, false, false), select(vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(arg_0.c, false, true, arg_0.c), false))))), any(!vec2<bool>(arg_0.c, false)) | arg_0.c, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-29318i, arg_0.b, -2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, u_input.c.x, 0i), vec3<i32>(arg_0.b, 0i, u_input.a))), ~(~countOneBits(vec3<i32>(-44893i, 2147483647i, 1i)))));
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(var_0.b, 25519u))), vec2<u32>(41646u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, ~var_0.b), countOneBits(abs(vec2<u32>(5066u, 0u))))), ~_wgslsmith_sub_u32(1u, (var_0.b >> (1u % 32u)) ^ u_input.b), select(!vec3<bool>(all(vec3<bool>(true, arg_0.c, var_0.d)), any(vec3<bool>(false, var_0.d, true)), var_0.d), !select(vec3<bool>(true, true, arg_0.c), select(vec3<bool>(arg_0.c, false, var_0.d), vec3<bool>(false, true, false), var_0.d), !vec3<bool>(arg_0.c, false, var_0.d)), vec3<bool>(any(vec4<bool>(true, true, true, true)), var_0.d, arg_0.c)), vec4<bool>(true, all(select(vec2<bool>(true, false), !vec2<bool>(var_0.d, false), true)), true, true));
    let var_3 = ~vec2<u32>(_wgslsmith_add_u32(~9234u, max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(41975u, var_0.b)))), _wgslsmith_div_u32(u_input.b, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 4294967295u, 0u), vec3<u32>(104204u, u_input.b, var_0.b)))));
    let var_4 = var_2;
    return var_2.d.xyw;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(790f - 451f))), Struct_1(~(~vec2<u32>(u_input.b, u_input.b)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 5428u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b))) << (u_input.b % 32u), !(!func_3(Struct_4(-413f, u_input.c.x, false))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_f32(-1536f * 720f));
    var var_1 = Struct_4(var_0.a, 1i, var_0.c > -1265f);
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a))))), var_1.b, all(var_0.b.d.yx));
    let var_2 = var_1.b;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f * var_0.a) - _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_0.a))));
    return Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.b, var_0.b.a.x) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, 18651u))), ~(~var_0.b.a.x), vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(200f, 853f), 188f, true)) <= var_1.a, var_3.b.c.x, var_1.c), var_3.b.d);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = (_wgslsmith_sub_i32(reverseBits(-52227i), arg_0) ^ -63602i) & reverseBits((i32(-1i) * -u_input.a) >> (_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u) % 32u));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-420f)) * -1265f)));
    let var_2 = u_input.b;
    let var_3 = func_2();
    return Struct_2(var_1.x, func_2(), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~22577i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-300f + 773f), _wgslsmith_f_op_f32(105f + 914f))), 1381f)), vec3<i32>(~23334i, -1i, -reverseBits(~1i)));
    let var_1 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.b, ~27411u), 7262u, ~_wgslsmith_add_u32(u_input.b, u_input.b))), ~select(countOneBits(~vec3<u32>(var_0.b.b, 1u, 7945u)), (vec3<u32>(var_0.b.b, 40797u, 0u) & vec3<u32>(10506u, 10230u, 1u)) ^ vec3<u32>(12479u, var_0.b.b, 71893u), vec3<bool>(var_0.b.c.x, var_0.b.c.x, !var_0.b.c.x)), ~vec3<u32>(89256u, 30195u, 41089u));
    var var_2 = func_1(u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-207f - var_0.a), var_0.a))))), select(vec3<i32>(reverseBits(u_input.a), u_input.a, _wgslsmith_mod_i32(-37612i, i32(-1i) * -2147483647i)), max(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-40993i, 12418i, u_input.a)), vec3<i32>(1i, ~85164i, _wgslsmith_div_i32(-26373i, u_input.a))), vec3<bool>(true, false, !var_0.b.d.x)));
    var_0 = Struct_2(var_2.a, var_0.b, 218f);
    var var_3 = Struct_2(-1001f, var_0.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(104f))))), var_2.b.b);
}

