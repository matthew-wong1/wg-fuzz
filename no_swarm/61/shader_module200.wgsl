struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = select(vec3<bool>(!(_wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, -37477i, u_input.a, -116i)) >= _wgslsmith_add_i32(u_input.e, arg_0.a.x)), !(!any(vec3<bool>(false, true, false))), false), vec3<bool>(!(-478f < _wgslsmith_f_op_f32(step(431f, 1000f))), u_input.a == (~(-2147483647i) >> (arg_1 % 32u)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), true);
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~(~reverseBits(vec4<u32>(1u, 35673u, 31039u, 10081u))), abs(abs(vec4<u32>(4294967295u, 11979u, arg_1, 1070u))), vec4<u32>(4294967295u, u_input.c, 114545u, _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(u_input.c, u_input.c)))), vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, u_input.b, arg_0.a.x), arg_0.a.xyx), reverseBits(u_input.e)), i32(-1i) * -1i), 9734u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(395f, 191f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1295f - -702f) * -260f)), _wgslsmith_f_op_f32(f32(-1f) * -815f), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-157f, -187f)))))));
    var_1 = Struct_1(abs(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(1u, 6808u, arg_1, 1u) & vec4<u32>(arg_1, arg_1, var_1.c, var_1.a.x)), _wgslsmith_add_u32(~0u, arg_1 << (0u % 32u)), 1u)), vec2<i32>(firstLeadingBit(var_1.b.x), 1i), var_1.c, vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.x, -222f, var_0.x)) * _wgslsmith_f_op_f32(min(1106f, -1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-416f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x))), var_1.d.x));
    var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~firstLeadingBit(~var_1.a), var_1.a), countOneBits(vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-33132i, -8731i), arg_0.a.wx), max(arg_0.a.x, -23734i), var_0.x | true), _wgslsmith_dot_vec2_i32(var_1.b, var_1.b) >> (~arg_1 % 32u))), ~(~(~_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(37147u, 1u, arg_1, 0u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(var_1.d))))))));
    let var_2 = abs(4294967295u);
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_1.c, var_1.c), abs(var_2));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec2<u32>(~(~u_input.c), arg_1 ^ _wgslsmith_mod_u32(_wgslsmith_add_u32(~6561u, 1u), u_input.c));
    var_0 = select(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(50938u, arg_1), vec2<u32>(32387u, arg_0)), vec2<u32>(arg_1, 1u)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 0u), vec2<u32>(1u, arg_2.a.x)), ~vec2<u32>(var_0.x, arg_2.c))), arg_2.a.yy, select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    let var_1 = Struct_3(max(reverseBits(~vec4<i32>(-55199i, 46068i, arg_2.b.x, arg_2.b.x) >> (arg_2.a % vec4<u32>(32u))), vec4<i32>(-1i) * -(~vec4<i32>(u_input.d.x, u_input.e, u_input.d.x, arg_2.b.x))));
    var_0 = vec2<u32>(_wgslsmith_mod_u32(1u, arg_0) ^ 4294967295u, ~(1u << (_wgslsmith_sub_u32(arg_0, 41440u) % 32u)) ^ max(111123u, var_0.x));
    return vec3<u32>(73966u, var_0.x, _wgslsmith_div_u32(1u, countOneBits(var_0.x)));
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(func_4(firstLeadingBit(func_3(Struct_3(vec4<i32>(1i, 0i, 17887i, -37631i)), 30732u)), min(19839u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 62659u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, 4294967295u, 36738u))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(17073u, 50855u, 0u, u_input.c), vec4<u32>(22343u, u_input.c, u_input.c, 4294967295u)), reverseBits(vec2<i32>(u_input.a, -1i)), u_input.c, vec4<f32>(-223f, 414f, -1071f, 321f))), vec3<u32>(1u, _wgslsmith_add_u32(1u, u_input.c), 9589u) & select(~vec3<u32>(u_input.c, u_input.c, u_input.c), max(vec3<u32>(u_input.c, 38860u, 9226u), vec3<u32>(1u, 1u, u_input.c)), vec3<bool>(true, false, true)));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -48163i), vec3<i32>(u_input.e, 13713i, -19432i)), 28142i, u_input.a);
    var var_2 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, u_input.c, _wgslsmith_add_u32(13300u, 19904u), ~4294967295u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 5029u, u_input.c), vec4<u32>(0u, 53859u, u_input.c, var_0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(81193u, 4294967295u, var_0.x, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 107465u)), ~vec4<u32>(u_input.c, var_0.x, var_0.x, 0u))) | ~(~(~vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.c))));
    var_1 = ~vec3<i32>(min(min(1i, 2147483647i), u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.c, 55102u), vec3<u32>(0u, 122614u, u_input.c)) % 32u), u_input.b, var_1.x);
    let var_3 = min(u_input.c >> (var_2.x % 32u), 7455u) >> (22748u % 32u);
    return !(true | all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -794f)), _wgslsmith_f_op_f32(select(742f, -1309f, func_2())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1169f), -710f)), -512f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-544f + 283f))) + var_0.wyw);
    var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) * var_1.x))), var_1.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.xz - _wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, var_1.x) - vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(step(-211f, var_1.x)), arg_0.x > u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1178f, 1570f)))));
    let var_3 = -_wgslsmith_mod_i32(2147483647i, 32314i);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~u_input.d, vec2<i32>(28620i, u_input.d.x));
    var_0 = u_input.d;
    var_0 = u_input.d;
    var var_1 = vec2<i32>(func_1(vec4<u32>(0u, 12027u, u_input.c, reverseBits(u_input.c)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), var_0.x) >> (~max(vec2<u32>(u_input.c ^ 16155u, countOneBits(4294967295u)), vec2<u32>(_wgslsmith_add_u32(40769u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(37079u, 81586u), vec2<u32>(4294967295u, 1u)))) % vec2<u32>(32u));
    var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1742f, -501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f))));
}

