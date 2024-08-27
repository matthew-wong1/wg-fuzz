struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, reverseBits(arg_0.b.x), _wgslsmith_sub_i32(-47967i, arg_0.b.x | u_input.a)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, 2147483647i), vec3<i32>(u_input.a, -36921i, -2147483647i)), -1i), ~u_input.a, arg_0.b.x)), -1i, arg_0.b.x);
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(29318i, firstLeadingBit(~(-26390i)), ~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10967i, -11712i, -2147483647i) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), 0i, ~20550i))), vec3<i32>(arg_0.b.x, -(~0i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b, vec2<i32>(44081i, u_input.a)), var_0.yx ^ var_0.zz)) >> (vec3<u32>(~_wgslsmith_clamp_u32(1984u, 1u, 83462u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x) << (0u % 32u), _wgslsmith_mult_u32(~4294967295u, 24268u ^ u_input.b.x)) % vec3<u32>(32u)));
    var_0 = ~_wgslsmith_sub_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, 33114i) & -vec3<i32>(var_0.x, 340i, 391i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(-1i, arg_0.b.x, -23899i), arg_0.a), max(vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, u_input.a))) | (countOneBits(vec3<i32>(u_input.a, u_input.a, -59246i)) << (~vec3<u32>(15280u, 4294967295u, u_input.b.x) % vec3<u32>(32u))));
    global0 = 1000f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1550f)), _wgslsmith_f_op_f32(-501f - 996f)))))) * -1974f);
    return -1i;
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 46667u, 0u)), countOneBits(~vec4<u32>(1u, 22795u, 31546u, u_input.b.x))), ~u_input.b.x);
    var var_1 = false;
    let var_2 = Struct_2(firstLeadingBit(-1i >> (max(var_0, u_input.b.x) % 32u)), -firstTrailingBit(_wgslsmith_div_i32(2147483647i, u_input.a)) & func_3(Struct_1(vec3<bool>(true, true, true), select(vec2<i32>(1303i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)))), true, false);
    var var_3 = -(~_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(1i, -71671i)));
    var var_4 = var_2;
    return u_input.b.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(~reverseBits(_wgslsmith_sub_u32(~1u, 1u)), 0u >> (func_2() % 32u), 7424u);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1108f, -758f), _wgslsmith_f_op_f32(-1203f - _wgslsmith_f_op_f32(1365f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(966f - 811f)))))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(325f, 726f)) + -1060f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -444f))))))));
    let var_1 = Struct_2((-func_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-1i, u_input.a))) ^ 2147483647i) | 5471i, u_input.a, !select(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    var_0 = vec3<u32>(0u, func_2(), 1u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2607f;
    var var_0 = Struct_3(func_1(), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), max(vec4<i32>(_wgslsmith_mod_i32(u_input.a >> (10242u % 32u), u_input.a), ~(~u_input.a), -u_input.a, -abs(u_input.a)), reverseBits(vec4<i32>(9215i, u_input.a & u_input.a, _wgslsmith_add_i32(u_input.a, 41798i), _wgslsmith_div_i32(u_input.a, 20573i)))), -u_input.a);
    let var_1 = _wgslsmith_dot_vec2_i32(-select(var_0.c.xz, ~vec2<i32>(0i, -1i), !select(vec2<bool>(var_0.a.c, false), vec2<bool>(var_0.a.d, true), var_0.b)), vec2<i32>(u_input.a, u_input.a));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1789f)), _wgslsmith_f_op_f32(round(-1000f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-702f, 809f, -531f, -582f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -1000f, 170f, -1203f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1150f, 1696f, 696f, 544f), vec4<f32>(-786f, 339f, -1000f, 2422f), var_0.a.c))), !select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(true, false, true, true), var_0.a.c))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x))) + var_2.x));
    let var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), abs(vec3<u32>(~1u, ~1u, u_input.b.x))), u_input.a >> (~(max(88529u, 26314u) << (u_input.b.x % 32u)) % 32u), _wgslsmith_add_u32(1u, min(~(~64080u), ~u_input.b.x)), vec4<i32>(_wgslsmith_div_i32(~(~var_1), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.b, -39564i, 1i), vec3<i32>(-1i, -1i, -2147483647i), var_0.c.wzy), vec3<i32>(~u_input.a, firstTrailingBit(var_0.d), ~(-11861i))), -u_input.a, max(countOneBits(-2147483647i), var_1)), -var_0.c.x);
}

