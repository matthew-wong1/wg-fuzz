struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(-(-2147483647i & u_input.d) | -26691i), abs(reverseBits(~vec4<u32>(arg_1.x, 11380u, arg_1.x, arg_1.x)) ^ vec4<u32>(~17871u, arg_1.x & 4294967295u, max(u_input.c, u_input.c), ~48318u)));
    let var_1 = Struct_2(var_0.a, (~max(var_0.b, vec4<u32>(var_0.b.x, 7037u, 1u, u_input.c)) ^ abs(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u))) & select(max(select(var_0.b, var_0.b, vec4<bool>(false, false, true, true)), firstTrailingBit(var_0.b)), vec4<u32>(_wgslsmith_sub_u32(0u, var_0.b.x), abs(u_input.c), arg_1.x, 1u), vec4<bool>(true, true, true, true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
    var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(331f * var_2.x), _wgslsmith_f_op_f32(min(-787f, -346f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1425f, arg_0.x) - vec2<f32>(var_2.x, -355f)) + arg_0))), arg_0));
    let var_3 = _wgslsmith_f_op_f32(trunc(-1474f));
    return var_0.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<u32>) -> bool {
    var var_0 = !select(!vec4<bool>(any(vec2<bool>(false, true)), true, true, any(vec2<bool>(true, false))), vec4<bool>(true, all(vec2<bool>(false, false)), true, false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_0.a > arg_0.a, true, u_input.d == arg_2)));
    return !all(vec3<bool>(all(select(vec2<bool>(var_0.x, var_0.x), var_0.ww, var_0.yy)), var_0.x, any(var_0.xzy)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = (func_4(Struct_1(func_3(vec2<f32>(-847f, -174f), vec2<u32>(arg_0, 4294967295u))), abs(vec2<i32>(u_input.a, u_input.b) & vec2<i32>(-12655i, u_input.d)), -u_input.a, vec2<u32>(1u, 1u)) && (abs(firstTrailingBit(u_input.c)) == ~u_input.c)) | !func_4(Struct_1(firstTrailingBit(28595i)), vec2<i32>(-u_input.b, u_input.b >> (1u % 32u)), _wgslsmith_sub_i32(u_input.b, -2147483647i), abs(~vec2<u32>(u_input.c, arg_0)));
    return Struct_1(_wgslsmith_add_i32(-2147483647i, i32(-1i) * -7159i));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(u_input.b), vec4<u32>(~37279u, min(u_input.c << (u_input.c % 32u), u_input.c | ~4294967295u), 1u, _wgslsmith_mult_u32(1u, ~u_input.c)));
    var var_1 = Struct_1(abs(_wgslsmith_mult_i32(arg_0 | 38904i, u_input.b) >> (abs(abs(97068u)) % 32u)));
    var var_2 = var_0.a;
    var var_3 = ~u_input.c < (max(3744u, var_0.b.x) | u_input.c);
    var_2 = func_2(9933u);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_1(_wgslsmith_sub_i32(-u_input.a, u_input.b)));
    var_0 = Struct_1(func_1(func_2(u_input.c).a));
    var var_1 = vec4<u32>(0u, _wgslsmith_mod_u32(u_input.c, ~u_input.c), 1u, firstTrailingBit(87168u));
    var var_2 = func_2(28331u);
    var_2 = func_2(~var_1.x);
    let var_3 = select(_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 0u, 49067u, 1u), vec4<u32>(var_1.x, var_1.x, 1u, 0u))), vec4<u32>(1u, countOneBits(var_1.x), ~0u, 77593u)), abs(reverseBits(vec4<u32>(u_input.c, 63322u, var_1.x, 0u))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true))) >> (vec4<u32>(~max(37868u, u_input.c) >> (0u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 23858u), vec2<u32>(0u, var_1.x)) & u_input.c, 4294967295u, _wgslsmith_div_u32(~u_input.c, var_1.x)) % vec4<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1409f, 1566f, -395f), vec3<f32>(-916f, 533f, -1447f)))) * vec3<f32>(-600f, 658f, -1421f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(826f * -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-767f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(ceil(var_4.x)))), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x)))), var_4.x, vec4<i32>(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_2.a, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_2.a, var_2.a), vec3<i32>(-3740i, u_input.d, 39505i)), _wgslsmith_mod_i32(var_2.a, var_0.a))), _wgslsmith_mod_i32(firstTrailingBit(var_0.a), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1018f, var_4.x) * vec2<f32>(var_4.x, var_4.x)), var_3.xw)), var_2.a, 9484i), u_input.a, ~(~(-6061i >> (var_3.x % 32u))));
}

