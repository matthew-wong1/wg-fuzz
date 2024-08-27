struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = vec4<i32>(arg_2, -2147483647i, -(~arg_2), -22035i);
    var var_1 = false;
    var_1 = !(!(856f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(-var_0.wzw, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(24225i, var_0.x), u_input.a, arg_2), -(~vec3<i32>(19764i, u_input.b, -2147483647i)))), vec4<f32>(229f, _wgslsmith_f_op_f32(ceil(arg_0.c.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a))), 322f));
    let var_3 = arg_0.c.b;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-559f)))), -676f, var_2.b.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(arg_2.b.a, vec3<i32>(~(-39623i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1649i, -1i, arg_2.b.a.x), vec4<i32>(arg_2.b.a.x, arg_0.x, 0i, -2469i)), _wgslsmith_dot_vec3_i32(arg_2.b.a, vec3<i32>(2147483647i, arg_0.x, 2147483647i))), 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(-539f, vec4<f32>(-413f, -928f, arg_2.a.x, arg_2.a.x), Struct_2(vec4<f32>(arg_2.b.b.x, -459f, arg_2.b.b.x, arg_3.x), arg_2.b)), _wgslsmith_f_op_f32(-1167f - -2578f), arg_0.x, ~vec3<u32>(1u, 0u, 4294967295u))))) * _wgslsmith_f_op_vec4_f32(-arg_2.a)));
    var var_1 = -abs(arg_2.b.a.x);
    var_1 = ~u_input.b;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1771f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-857f)))), _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(arg_2.b.b.x, arg_2.b.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.x, 143f, arg_2.a.x, arg_3.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), -259f, -435f))), arg_2.b);
    var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-48241i, var_2.b.a.x, -78821i), var_2.b.a), var_0.a.x));
    return select(!select(vec2<bool>(select(arg_1, true, arg_1), arg_1 || true), !vec2<bool>(arg_1, arg_1), all(vec3<bool>(arg_1, false, true))), vec2<bool>(all(select(vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(arg_1, true, false, arg_1), !vec4<bool>(arg_1, false, arg_1, false))), arg_1), arg_1);
}

fn func_1() -> vec3<bool> {
    var var_0 = any(vec2<bool>(!select(true, true, false), 1i != _wgslsmith_sub_i32(u_input.b, u_input.a))) || all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), !func_2(vec3<i32>(u_input.b, u_input.b, u_input.b), false, Struct_2(vec4<f32>(-694f, -340f, 1301f, 2113f), Struct_1(vec3<i32>(2147483647i, u_input.b, u_input.a), vec4<f32>(1000f, -171f, -797f, 1000f))), vec2<f32>(265f, -1420f)), vec2<bool>(func_2(vec3<i32>(1i, u_input.b, u_input.b), false, Struct_2(vec4<f32>(594f, -1335f, 1056f, -354f), Struct_1(vec3<i32>(-3294i, 1i, -2147483647i), vec4<f32>(-550f, 974f, 2406f, 262f))), vec2<f32>(-309f, -158f)).x, any(vec4<bool>(true, true, false, false)))));
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 27357u, 10000u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 51636u, 443u)), vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(_wgslsmith_div_u32(1u, 19177u), 10432u, 51291u, ~65431u), ~(~vec4<u32>(0u, 56094u, 5507u, 4294967295u)), true)) != 21284u;
    var var_1 = vec2<bool>(true, true);
    var var_2 = -55998i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    return select(select(select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, false), !vec3<bool>(var_1.x, false, false)), vec3<bool>(var_1.x, var_1.x, true), !(!var_1.x)), vec3<bool>(true, !var_1.x, all(!vec3<bool>(true, var_1.x, true))), select(vec3<bool>(-2147483647i <= u_input.b, true, var_1.x), vec3<bool>(true, func_2(vec3<i32>(u_input.b, u_input.a, -2147483647i), var_1.x, Struct_2(vec4<f32>(var_3, var_3, 1249f, 529f), Struct_1(vec3<i32>(u_input.a, -7638i, -64414i), vec4<f32>(var_3, 1000f, 320f, var_3))), vec2<f32>(var_3, var_3)).x, true), vec3<bool>(1012f > var_3, true, false))), !vec3<bool>(var_1.x, var_1.x, var_1.x), !(-u_input.a < select(-2147483647i, u_input.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(), func_1(), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_div_f32(-1053f, -1000f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(474f)), _wgslsmith_f_op_f32(sign(732f)))), true, true));
    var_0 = vec3<bool>(var_0.x, var_0.x, any(vec3<bool>(var_0.x, any(func_1()), func_1().x & all(var_0.zx))));
    var_0 = !vec3<bool>(var_0.x, true, false);
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(-2147483647i, u_input.a, -1i, 2147483647i)), ~firstTrailingBit(countOneBits(vec4<i32>(u_input.b, -2147483647i, 13133i, -1i)))), ~vec4<i32>(8919i, 0i, ~2147483647i, firstTrailingBit(35312i)));
    var_0 = vec3<bool>(var_0.x, false, true);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-876f + 198f), -865f), -974f, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(679f, -966f)), _wgslsmith_div_f32(2391f, _wgslsmith_f_op_f32(select(-530f, -617f, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2007f, _wgslsmith_f_op_f32(-1159f + -1997f), _wgslsmith_f_op_f32(f32(-1f) * -656f), 371f))), Struct_1(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(var_1.wxy, var_1.yyy), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(670f, -1195f, 364f, 1936f) * vec4<f32>(-1000f, -423f, 634f, -367f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -822f, 1000f, 463f) + vec4<f32>(357f, 1591f, -966f, -374f)))))));
    var var_3 = Struct_1(vec3<i32>(~min(-27784i, var_1.x), max(var_2.b.a.x, 1i), ~(-2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, -2147483647i), _wgslsmith_dot_vec3_i32(var_2.b.a, vec3<i32>(2147483647i, 2147483647i, var_1.x)), max(var_1.x, -12516i)), var_1.xyx), _wgslsmith_f_op_vec4_f32(-var_2.b.b));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f + -1000f)))), -1583f, true)), vec4<f32>(_wgslsmith_div_f32(var_3.b.x, -565f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.b.b.x, 1063f))))), 488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.b.x)))) * -289f)), var_2);
    var_3 = Struct_1(_wgslsmith_mod_vec3_i32(var_2.b.a, vec3<i32>(_wgslsmith_mod_i32(var_4.c.b.a.x, 2147483647i), select(_wgslsmith_clamp_i32(-8940i, -12388i, -1i), -2147483647i, var_0.x), u_input.b)), _wgslsmith_f_op_vec4_f32(-var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, ~_wgslsmith_sub_u32(59782u, 22449u), ~(~1u), ~_wgslsmith_mult_u32(64179u, 0u)), 1u, countOneBits(vec3<u32>(max(countOneBits(22529u), 1527u), min(1u, abs(115786u)), min(select(18654u, 75687u, false), ~30880u))));
}

