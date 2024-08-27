struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15538i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = 20664u;
    let var_1 = vec3<bool>(true, true, false);
    global0 = abs(-1i);
    var_0 = 1u;
    let var_2 = abs(vec4<u32>(13578u, _wgslsmith_mod_u32(1u, 1u), ~abs(select(u_input.b, 14132u, var_1.x)), 38828u));
    return u_input.a;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = abs(-1i);
    global0 = abs(~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(72724i, 1i, -2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(76179i, 2316i, 2147483647i, -2147483647i), vec4<i32>(28172i, 14657i, -64394i, 2147483647i)))));
    var var_0 = u_input.a;
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~(~u_input.a.x)), ~_wgslsmith_mult_u32(0u, var_0.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 790u), u_input.a) % 32u)), func_3());
    global0 = 1i;
    return Struct_2(reverseBits(reverseBits(vec4<u32>(10686u, 0u, u_input.b, 36447u) >> (vec4<u32>(u_input.b, u_input.b, var_0.x, u_input.a.x) % vec4<u32>(32u)))) & ~vec4<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(var_0.x, 4294967295u), countOneBits(u_input.b), ~u_input.a.x), vec3<u32>(12574u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 659u, var_0.x, 1u), vec4<u32>(0u, 51804u, var_0.x, var_0.x)), ~(var_0.x ^ 0u)), var_0.x), _wgslsmith_div_f32(1390f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f - 487f) * -134f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(1210f, 743f)))))), _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(-12389i, 12701i), _wgslsmith_mod_i32(-1i, -32922i))), 23902i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    let var_0 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c))), -528f)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-1000f + arg_0.c)));
    var var_2 = arg_0.a.x;
    global0 = firstTrailingBit(_wgslsmith_sub_i32(-arg_0.d, 16395i) >> ((~1u ^ var_0.x) % 32u));
    var_2 = select(25449u, ~1u, arg_2) & ~1u;
    return arg_0.b;
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_2(countOneBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, 47433u, u_input.b), vec4<u32>(1u, 58788u, u_input.b, u_input.b)), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 44287u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)))), ~(~func_4(func_2(arg_0.x), vec3<i32>(1i, 1i, 1i), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1563f), _wgslsmith_f_op_f32(-1744f - _wgslsmith_div_f32(-578f, -1000f))))), min(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 1i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, -37286i), ~(-17707i))), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 29607i, -15960i), vec3<i32>(0i, -15657i, 2147483647i))));
    let var_1 = Struct_2(var_0.a ^ vec4<u32>(countOneBits(var_0.b.x) & ~var_0.b.x, var_0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, var_0.a.x, u_input.b), vec4<u32>(u_input.a.x, var_0.b.x, var_0.b.x, 1u)), max(var_0.a, var_0.a)), 1u & ~u_input.b), vec3<u32>(~(1u << (var_0.a.x % 32u)), ~u_input.a.x, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 51614u) & 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(-1896f, var_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, var_0.c, arg_0.x)) - var_0.c))), abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, var_0.d, -894i, -86586i), vec4<i32>(1i, var_0.d, var_0.d, 25897i))) | var_0.d);
    var var_2 = var_1;
    var var_3 = !select(vec4<bool>(arg_0.x != select(false, false, false), all(arg_0), (arg_0.x || arg_0.x) || !arg_0.x, any(select(arg_0, arg_0, arg_0))), !vec4<bool>(false, arg_0.x, false, all(vec2<bool>(arg_0.x, arg_0.x))), any(select(select(arg_0, vec3<bool>(false, true, false), arg_0), arg_0, true)));
    var var_4 = 1136f;
    return vec4<i32>(-abs(_wgslsmith_mult_i32(var_1.d, 29172i)), var_1.d, var_0.d, -2147483647i & var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(func_1(vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-27191i, -1i, -25885i, 1i << (u_input.a.x % 32u)), vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), 2147483647i, _wgslsmith_sub_i32(-4890i, 58500i), -2147483647i))), all(vec3<bool>(true, any(vec3<bool>(true, true, true)), false)), min(countOneBits(~max(1i, 26276i)), ~_wgslsmith_sub_i32(-22936i, -1002i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1283f)) - func_2(false).c), -785f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - 306f) - _wgslsmith_f_op_f32(648f - 627f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) - 232f))), _wgslsmith_f_op_f32(-1240f - -1000f));
    let var_1 = 16186i;
    var_0 = Struct_1(countOneBits(var_0.a) | vec4<i32>(_wgslsmith_dot_vec2_i32(-var_0.a.zx, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_0.a.x), vec2<i32>(var_1, var_0.a.x))), 35409i, var_0.a.x, -1434i), true, _wgslsmith_div_i32(-countOneBits(_wgslsmith_mod_i32(var_0.c, var_0.a.x)), abs(var_0.a.x ^ var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), 1000f, var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_0.b).c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, -1233f)), _wgslsmith_f_op_f32(f32(-1f) * -1640f), func_2(!var_0.b).c, _wgslsmith_f_op_f32(ceil(-177f))) - vec4<f32>(-1194f, var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -873f), var_0.d.x)) * vec4<f32>(_wgslsmith_div_f32(var_0.e, 537f), _wgslsmith_f_op_f32(trunc(979f)), -1504f, var_0.e));
    global0 = -2147483647i;
    var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), -2147483647i, ~(-1i), var_1), vec4<i32>(_wgslsmith_sub_i32(var_0.a.x & var_0.c, -2147483647i), var_1, abs(_wgslsmith_mult_i32(var_1, -2147483647i)), func_1(vec3<bool>(true, true, true)).x)), var_0.b, reverseBits(-1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_2.x)), 205f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x));
    global0 = -_wgslsmith_div_i32(-1i, min(15674i, max(var_0.a.x, func_2(true).d)));
    global0 = ~(-1i >> (~(_wgslsmith_div_u32(1u, u_input.b) >> (4294967295u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-445i, vec3<u32>(0u, max(firstTrailingBit(~u_input.a.x), 58327u), max(abs(~20564u), u_input.a.x)), _wgslsmith_mod_i32(var_1, 0i), vec3<f32>(611f, _wgslsmith_f_op_f32(min(var_2.x, -512f)), _wgslsmith_f_op_f32(abs(-236f))), var_2.x);
}

