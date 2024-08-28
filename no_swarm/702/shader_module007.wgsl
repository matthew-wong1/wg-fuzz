struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> bool {
    var var_0 = Struct_1(select(max(16677i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-22606i, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(62871i, 29089i), vec2<i32>(3548i, 7817i), vec2<i32>(-2147483647i, 2147483647i)))), -12525i, false));
    global0 = any(!vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), false, _wgslsmith_f_op_f32(abs(arg_0.x)) != _wgslsmith_f_op_f32(trunc(1152f))));
    let var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.x);
    let var_2 = Struct_4(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(true, false, true)), all(vec4<bool>(true, true, true, true))), min(~firstTrailingBit(vec4<u32>(1u, 4294967295u, u_input.a.x, 1u)) ^ (select(vec4<u32>(4294967295u, u_input.b.x, arg_1, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_1), false) | abs(vec4<u32>(arg_1, arg_1, 4294967295u, 0u))), vec4<u32>(~(~35420u), abs(reverseBits(u_input.a.x)), 1u, _wgslsmith_mod_u32(0u, firstLeadingBit(95619u)))), select(!vec2<bool>(600f < var_1.x, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec3<bool>(false, false, false))), vec2<bool>(true, true), true), true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)));
    return var_2.a.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    global0 = all(!select(vec4<bool>(true, true, all(vec2<bool>(false, false)), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    global0 = all(select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, func_3(vec2<f32>(208f, 1767f), 52976u)), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(825f, 508f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(594f * 170f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-116f, arg_1.x), arg_1, all(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1823f, 170f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -669f, -1096f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-124f, arg_1.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0.x, -1533f, arg_1.x)))), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)))));
    return firstTrailingBit(~(-(_wgslsmith_div_i32(0i, -34035i) | (0i << (u_input.a.x % 32u)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> vec4<u32> {
    global0 = any(vec3<bool>(_wgslsmith_sub_i32(func_2(829f, vec2<f32>(-1287f, -627f)), arg_1.x) > ~arg_1.x, select(!all(vec4<bool>(false, true, true, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), min(53948u, 42629u) != arg_0.x), _wgslsmith_f_op_f32(min(-2004f, _wgslsmith_f_op_f32(1080f + 592f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(764f))))));
    let var_0 = Struct_4(vec4<bool>(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1466f)) - _wgslsmith_f_op_f32(ceil(135f))) != 1572f, false, 1i < firstTrailingBit(abs(27440i))), vec4<u32>(min(1u, arg_0.x), u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, ~(~u_input.a.x))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f * 1835f) - _wgslsmith_f_op_f32(ceil(-368f))) <= 1490f, !any(vec4<bool>(true, false, false, false)) & true));
    var var_1 = Struct_3(~u_input.b.x, Struct_2(true && var_0.c.x), !(!var_0.a), Struct_2(any(var_0.a.zx)), var_0.a.x);
    global0 = true;
    var_1 = Struct_3(1u, var_1.b, var_0.a, Struct_2(any(!var_1.c.www)), var_1.c.x);
    return _wgslsmith_add_vec4_u32(var_0.b, min(~var_0.b, ~(~(~vec4<u32>(arg_0.x, var_0.b.x, var_0.b.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a, vec3<i32>(44479i, 2147483647i, _wgslsmith_add_i32(-10881i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16309i, -34128i, 1i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, 29402i), vec4<i32>(-2796i, 2147483647i, -307i, -1i))))));
    let var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true), true);
    let var_2 = Struct_3(abs(_wgslsmith_dot_vec2_u32(select(select(var_0.zz, vec2<u32>(0u, 4294967295u), vec2<bool>(var_1.x, var_1.x)), firstLeadingBit(var_0.yw), true), vec2<u32>(abs(u_input.b.x), ~84316u))), Struct_2(true), select(select(select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), !vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<bool>(var_1.x, true, false, true), func_3(vec2<f32>(201f, -684f), 0u) && true), select(vec4<bool>(all(var_1), all(vec2<bool>(var_1.x, false)), all(vec3<bool>(false, false, var_1.x)), true), !select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec2<bool>(true, true)), true)), Struct_2(true), var_1.x);
    var var_3 = min(reverseBits(select(min(vec3<i32>(-70886i, 2147483647i, 0i), vec3<i32>(1445i, -43941i, -13165i)), -vec3<i32>(3694i, -29232i, 50266i), true)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-30170i, 12157i), _wgslsmith_mod_i32(-1i, 1i)), 2147483647i, select(~10542i, 31844i, !var_1.x))) | _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-17954i, 0i), vec2<i32>(0i, -67348i)), (i32(-1i) * -1i) << (var_0.x % 32u), ~select(23373i, -1i, false)), _wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(2147483647i, -2147483647i, -2147483647i)), ~max(vec3<i32>(23946i, 36810i, 0i), vec3<i32>(2147483647i, -55859i, -1i))));
    let var_4 = ~var_3.x;
    var var_5 = any(var_2.c.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 120f)), 583f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-666f, 789f, -744f, 1620f), vec4<f32>(268f, -865f, -812f, -738f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-530f, -1469f, 639f, 318f), vec4<f32>(671f, 2532f, 304f, -969f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, -1584f, -944f, 612f)))));
}

