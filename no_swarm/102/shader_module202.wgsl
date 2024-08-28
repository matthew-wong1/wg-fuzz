struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<f32>(1144f, -200f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), var_0.x);
    var var_1 = min(min(vec3<u32>(~1u ^ u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a), u_input.a)), firstTrailingBit(countOneBits(firstLeadingBit(vec3<u32>(67741u, 75386u, 12154u))))), max(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(1u, 1u, u_input.a.x) | 16966u, _wgslsmith_clamp_u32(19517u, 2750u, 112417u ^ u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, ~u_input.a.x, firstLeadingBit(24990u)), ~(~vec3<u32>(60472u, 25001u, u_input.a.x)))));
    var var_2 = 696f;
    let var_3 = select(~(vec2<i32>(~1i, ~25963i) >> (vec2<u32>(u_input.a.x, 59002u) % vec2<u32>(32u))), vec2<i32>(-_wgslsmith_div_i32(28178i << (var_1.x % 32u), _wgslsmith_clamp_i32(2147483647i, 2147483647i, -2147483647i)), _wgslsmith_sub_i32(~2147483647i, ~(-1i)) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(22563i, 0i, 60010i, 10114i), vec4<i32>(1i, 79735i, 5823i, -7628i))), countOneBits(abs(790u)) >= (var_1.x | 15295u));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_2(~select(~reverseBits(vec2<i32>(-1i, 0i)), vec2<i32>(1i, _wgslsmith_clamp_i32(arg_3.x, 36270i, arg_3.x)), any(vec2<bool>(true, true))), Struct_1(0i), _wgslsmith_f_op_f32(f32(-1f) * -504f), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false))), !func_3());
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(arg_3, firstTrailingBit(vec2<i32>(-5002i, 0i))), var_0.b, var_0.c, !select(select(!var_0.d, var_0.d, vec4<bool>(var_0.e.x, var_0.e.x, true, false)), select(vec4<bool>(true, true, true, true), !var_0.d, true || var_0.d.x), false), vec3<bool>(var_0.e.x, true & var_0.d.x, var_0.d.x));
    var_0 = Struct_2(countOneBits(~var_0.a), var_0.b, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c, var_0.c), 1000f))), var_0.d, vec3<bool>(any(select(!var_0.e.xz, !vec2<bool>(var_0.d.x, var_0.e.x), select(vec2<bool>(true, true), vec2<bool>(var_0.d.x, var_0.e.x), var_0.d.zx))), all(select(vec4<bool>(false, var_0.e.x, false, var_0.d.x), var_0.d, any(var_0.e.yz))), !(all(var_0.d) | var_0.d.x)));
    var var_1 = var_0.c;
    var_0 = Struct_2(firstTrailingBit(~var_0.a), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * var_0.c) * var_0.c) + var_0.c), !vec4<bool>(!any(vec2<bool>(true, var_0.d.x)), any(var_0.e), false, false), !(!var_0.d.yxy));
    return (_wgslsmith_clamp_u32(arg_1.x, u_input.a.x | 4294967295u, arg_1.x) << (u_input.a.x % 32u)) == firstTrailingBit(~(~select(arg_0, 22427u, false)));
}

fn func_1() -> Struct_1 {
    let var_0 = 1i;
    var var_1 = Struct_4(any(vec2<bool>(true, true)), any(select(vec4<bool>(false, func_2(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -1i, vec2<i32>(-12474i, var_0)), false, true), vec4<bool>(true, true, false, 34223u > u_input.a.x), 53777i < _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 2147483647i, var_0, -830i), vec4<i32>(0i, -22245i, -2147483647i, 0i)))), min(u_input.a, u_input.a) ^ u_input.a, vec2<i32>(-59757i, 29757i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(602f, 333f) * _wgslsmith_f_op_f32(f32(-1f) * -595f)))))), _wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(648f, _wgslsmith_f_op_f32(876f * -2702f))))));
    var_1 = Struct_4(all(!select(vec3<bool>(var_1.b, var_1.a, var_1.b), vec3<bool>(var_1.b, false, false), vec3<bool>(false, false, var_1.b))) & true, true, vec2<u32>(abs(~0u << (var_1.c.x % 32u)), 4740u), var_1.d);
    var_1 = Struct_4(var_1.b, abs(var_1.d.x) != ~var_0, ~vec2<u32>(firstTrailingBit(var_1.c.x ^ 59361u), 8069u), -min(~var_1.d | var_1.d, -vec2<i32>(2147483647i, var_1.d.x)));
    return Struct_1(1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-1i, -1i), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f + _wgslsmith_f_op_f32(round(765f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(592f, _wgslsmith_f_op_f32(select(2082f, -1229f, true)))))), !vec4<bool>(!any(vec2<bool>(false, false)), false, select(true, 1u >= u_input.a.x, u_input.a.x > u_input.a.x), true), !select(!func_3(), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(385f, -1087f))) - _wgslsmith_f_op_f32(-var_0.c))), var_0.c, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a.x, 24558u)), ~select(u_input.a, u_input.a, var_0.d.x)), select(u_input.a, u_input.a, true)) & ~(~vec2<u32>(min(u_input.a.x, 20995u), select(58905u, 75767u, var_0.d.x)));
    var_0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(1i, func_1().a), var_0.b.a), func_1(), var_1.x, var_0.d, select(var_0.e, vec3<bool>(true, any(var_0.e) | false, func_2(_wgslsmith_div_u32(var_2.x, var_2.x), ~vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_0.b.a, vec2<i32>(-28488i, -1i))), vec3<bool>(var_0.e.x, var_0.e.x, true)));
    let var_3 = u_input.a;
    var_0 = Struct_2(min(vec2<i32>(2147483647i, 2147483647i), var_0.a), Struct_1(~firstTrailingBit(_wgslsmith_clamp_i32(var_0.b.a, -45273i, -44637i))), -178f, vec4<bool>(true, any(vec4<bool>(func_3().x, false, all(var_0.d), var_0.d.x)), true, false), !var_0.d.xww);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(reverseBits(~var_0.b.a)), 1i, var_0.b.a, var_0.b.a), -18202i, firstLeadingBit(-max(vec4<i32>(47275i, 4132i, var_0.a.x, 49674i) | vec4<i32>(-10909i, 23886i, var_0.a.x, -12537i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.b.a, var_0.b.a, 2147483647i), vec4<i32>(-2147483647i, var_0.a.x, 0i, 1i)))));
}

