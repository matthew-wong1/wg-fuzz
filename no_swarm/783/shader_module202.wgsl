struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), select(vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(all(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, false)), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true), max(_wgslsmith_sub_i32(-1i, u_input.c), reverseBits(0i)) > 1i), select(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), false, !(arg_0.a.x > u_input.a.x)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), true));
    var var_1 = Struct_3(vec4<bool>(true, !all(!vec3<bool>(var_0.x, false, false)), !var_0.x, true == (var_0.x | false)), arg_0, ~reverseBits(abs(vec4<i32>(2147483647i, arg_0.a.x, arg_0.a.x, u_input.a.x))), _wgslsmith_sub_u32(601u, select(10987u, 4294967295u, false) >> (firstLeadingBit(~0u) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1604f)) + 907f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1566f, -1000f, var_0.x)) * -1780f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(770f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1526f, 2133f, -1517f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-131f, 249f, -1000f) * vec3<f32>(-1000f, -943f, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-608f, 1334f, 465f), vec3<f32>(-722f, -828f, -102f), var_0.x)) + vec3<f32>(-1000f, 1551f, 261f)))));
    var_1 = Struct_3(var_1.a, var_1.b, -_wgslsmith_div_vec4_i32(var_1.c, reverseBits(var_1.c)), ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1.d, var_1.d, var_1.d) | vec3<u32>(0u, 1u, 1u)), max(~vec3<u32>(var_1.d, 15635u, var_1.d), vec3<u32>(81116u, 0u, 100756u) | vec3<u32>(39467u, var_1.d, var_1.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1369f, var_1.e.x, var_1.e.x), var_1.e)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(floor(var_1.e.x)), _wgslsmith_f_op_f32(min(185f, -1893f)))));
    var_1 = Struct_3(select(vec4<bool>(true, true, false, abs(var_1.d) == abs(var_1.d)), !var_1.a, any(vec2<bool>(false, false)) && var_0.x), Struct_1(_wgslsmith_clamp_vec2_i32(max(arg_0.a, arg_0.a), abs(arg_0.a), arg_0.a)), _wgslsmith_mult_vec4_i32(var_1.c, vec4<i32>(-2147483647i, var_1.c.x, var_1.b.a.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 31051i, 21733i), var_1.c.xwx), ~(-2147483647i) >> (~var_1.d % 32u))), var_1.d & firstLeadingBit(_wgslsmith_div_u32(var_1.d, _wgslsmith_clamp_u32(1u, 12581u, 29894u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.e)))));
    let var_2 = var_0.x;
    return !select(vec4<bool>(false, var_1.a.x, true == select(false, true, var_1.a.x), false), select(vec4<bool>(!var_1.a.x, !var_0.x, all(vec3<bool>(true, true, var_1.a.x)), var_1.a.x | false), select(var_1.a, var_1.a, var_1.e.x == 321f), var_1.a.x), false);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_1(-_wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.d, u_input.a.x) & vec2<i32>(-26280i, u_input.a.x)), u_input.a));
    var_0 = Struct_1(vec2<i32>(-19395i, _wgslsmith_mult_i32(var_0.a.x, var_0.a.x)));
    let var_1 = Struct_2(Struct_1(vec2<i32>(0i, u_input.c)), -1000f, func_3(Struct_1(vec2<i32>(_wgslsmith_mod_i32(-1i, -83519i), _wgslsmith_mod_i32(0i, u_input.c)))), Struct_1(vec2<i32>(5665i, abs(min(var_0.a.x, var_0.a.x)))));
    var var_2 = _wgslsmith_mod_i32(2147483647i, -25920i);
    let var_3 = var_1.a.a;
    return arg_2.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = arg_2;
    var var_1 = Struct_3(!vec4<bool>(false && func_2(arg_0, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(arg_0.x, false, arg_0.x, true)), true, true, true), arg_1, vec4<i32>(-27294i ^ ~_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(arg_1.a.x, arg_2.x)), _wgslsmith_mult_i32(~_wgslsmith_add_i32(0i, arg_1.a.x), arg_1.a.x), reverseBits(~(~var_0.x)), u_input.c), max(reverseBits(_wgslsmith_clamp_u32(~0u, 0u, 55824u)), 1u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(967f, -835f, 291f), vec3<f32>(1503f, -368f, 1722f))))))));
    var var_2 = Struct_3(vec4<bool>(true, false, func_3(arg_1).x, true), arg_1, _wgslsmith_mod_vec4_i32(-vec4<i32>(-arg_2.x, 69173i, select(32077i, -16710i, false), _wgslsmith_add_i32(var_1.c.x, u_input.d)), vec4<i32>(_wgslsmith_mult_i32(-11828i, -1i), _wgslsmith_dot_vec3_i32(arg_2.xwy, -var_1.c.zwy), arg_2.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, arg_1.a.x))), abs(~(~(~90318u))), vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_div_f32(-718f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - var_1.e.x))))));
    let var_3 = !any(var_2.a.wyz);
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false), Struct_1(u_input.a), vec4<i32>(-17725i, 1i, u_input.a.x, 8532i))), _wgslsmith_f_op_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), Struct_1(u_input.a), abs(vec4<i32>(85305i, 11839i, 2147483647i, u_input.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) * _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_1(vec2<i32>(2147483647i, -32537i)), vec4<i32>(-17903i, 2147483647i, u_input.b, u_input.c)))), true)));
    var var_1 = ~vec4<u32>(~firstTrailingBit(~60880u), max(~max(0u, 0u), select(10963u, 8368u, func_2(vec3<bool>(true, false, true), vec2<u32>(4025u, 21020u), vec4<bool>(false, false, false, false)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(17900u, 14477u, 54190u))), _wgslsmith_div_u32(firstTrailingBit(0u), 1u) & min(select(0u, 4294967295u, false), 9915u));
    let var_2 = u_input.a;
    var_1 = ~vec4<u32>(~(~_wgslsmith_dot_vec3_u32(var_1.www, var_1.yzy)), firstTrailingBit(var_1.x) | var_1.x, ~(~26630u), firstTrailingBit(1u));
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(539f, var_0)), -805f, _wgslsmith_f_op_f32(-687f + var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)))))));
}

