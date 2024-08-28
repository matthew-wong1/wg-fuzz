struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = vec4<i32>(arg_1.d, -2147483647i, -13137i, arg_0);
    let var_1 = arg_1;
    var var_2 = ~(12164u | ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 31845u)), vec2<u32>(4294967295u, 50724u)));
    var_2 = 27553u;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-898f))));
    return var_1.c;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.a.xyw;
    let var_1 = ~abs(u_input.d.yw) | u_input.d.zw;
    let var_2 = Struct_2(u_input.d.xy, _wgslsmith_clamp_vec2_i32(~var_0.xy, vec2<i32>(abs(~u_input.b.x), 24898i), ~vec2<i32>(-49464i, -51732i)), vec2<f32>(_wgslsmith_f_op_f32(func_3(11997i, Struct_1(u_input.c.x, _wgslsmith_div_i32(101935i, -1i), arg_0, u_input.c.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) + arg_0)), vec3<f32>(arg_0, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-235f, arg_0)))));
    var var_3 = var_2;
    var_3 = Struct_2(vec2<u32>(var_1.x, select(~18881u, 4294967295u, true | (-1446f > var_3.c.x))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-min(6608i, var_3.b.x), select(var_3.b.x, u_input.e, false) >> (~var_2.a.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 * 150f))), arg_0, var_3.c.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, arg_0, 807f)), _wgslsmith_f_op_vec3_f32(max(var_2.d, vec3<f32>(arg_0, arg_0, var_3.c.x))))));
    return Struct_1(u_input.c.x, 41597i, _wgslsmith_f_op_f32(exp2(var_2.d.x)), -var_3.b.x);
}

fn func_1() -> vec3<bool> {
    let var_0 = select(vec3<bool>(false, select(true, true, !(u_input.b.x < u_input.a.x)), true & !all(vec4<bool>(false, false, true, false))), vec3<bool>(true, any(vec3<bool>(select(false, true, true), true, all(vec2<bool>(true, false)))), !(!all(vec2<bool>(true, true)))), !(-(~(-2147483647i)) >= ~u_input.b.x));
    var var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1734f));
    var_1 = Struct_1(18764i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a, -2147483647i & u_input.c.x), vec2<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.yxw, -vec3<i32>(u_input.e, u_input.b.x, u_input.a.x)), _wgslsmith_add_i32(-21492i, -798i))), var_1.c, abs(var_1.d) & 16271i);
    var var_2 = true;
    let var_3 = var_1.c;
    return !vec3<bool>(true, true, !(!var_0.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = arg_3;
    var var_2 = var_0.b.x;
    var var_3 = select(u_input.d.wyy, u_input.d.yyx, select(select(select(!var_1.zwx, !var_1.xyz, select(arg_3.xxy, vec3<bool>(false, true, false), arg_0.x)), arg_0, arg_3.x), vec3<bool>(true, all(func_1().xy), -400f < _wgslsmith_f_op_f32(var_0.d.x - var_0.c.x)), !(!select(var_1.xyy, var_1.zyy, arg_0))));
    var var_4 = arg_2;
    return Struct_2(vec2<u32>(0u, ~59532u), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2120i, _wgslsmith_add_i32(-1i, -1i)), ~max(var_4.b, var_0.b)), arg_2.b ^ -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, arg_2.b.x), u_input.c.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, -510f))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-332f)), _wgslsmith_f_op_f32(-arg_2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.d * vec3<f32>(-238f, _wgslsmith_f_op_f32(sign(-1297f)), var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(704f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(1000f * 1929f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-148f)) + -1000f)), -416f));
    let var_1 = func_4(func_1(), Struct_1(~((u_input.e ^ u_input.c.x) & 0i), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(0i, u_input.e, u_input.e)), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(1575i, 3139i), 39641i)), 839f, 0i), Struct_2(abs(_wgslsmith_mult_vec2_u32(u_input.d.ww, vec2<u32>(4294967295u, u_input.d.x)) & vec2<u32>(4294967295u, u_input.d.x)), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.a.x, u_input.c.x), u_input.a), vec4<i32>(1226i, u_input.c.x, -53352i, u_input.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_0.yy)), _wgslsmith_f_op_vec2_f32(-var_0.yx)))), vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, -1454f)))), !(!vec4<bool>(true, true, -1i == u_input.b.x, any(vec4<bool>(true, false, true, true)))));
    let var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1.d.x)))), _wgslsmith_f_op_f32(-866f * var_1.c.x), var_0.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 476f, 343f, -1118f)))), vec4<f32>(_wgslsmith_div_f32(var_0.x, var_1.c.x), _wgslsmith_f_op_f32(trunc(-489f)), 307f, func_4(vec3<bool>(true, true, true), func_2(var_0.x), func_4(vec3<bool>(false, false, true), Struct_1(u_input.b.x, var_1.b.x, 1000f, 2147483647i), var_1, vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)).c.x)))));
    var var_4 = vec2<i32>(max(_wgslsmith_div_i32(u_input.b.x, u_input.c.x ^ 886i), _wgslsmith_mult_i32(1i, -1i)) << (1u % 32u), var_1.b.x);
    let var_5 = _wgslsmith_clamp_i32(2147483647i, -316i, ~_wgslsmith_mod_i32(1i, var_1.b.x));
    let var_6 = ~(~vec2<u32>(abs(u_input.d.x), _wgslsmith_clamp_u32(52504u, u_input.d.x, u_input.d.x)) & (var_1.a << (vec2<u32>(var_2.x, 1u) % vec2<u32>(32u))));
    let var_7 = vec4<i32>(~(2147483647i & (-var_1.b.x >> (0u % 32u))), u_input.e, func_4(vec3<bool>(true, true, false), Struct_1(-96574i, var_1.b.x & max(var_5, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), -u_input.a.x), Struct_2(~_wgslsmith_mult_vec2_u32(u_input.d.ww, vec2<u32>(4294967295u, 36268u)), var_1.b, _wgslsmith_f_op_vec2_f32(floor(var_3.yy)), _wgslsmith_f_op_vec3_f32(floor(var_1.d))), select(vec4<bool>(true, true, select(true, true, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true)))).b.x, -12464i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1476f, func_2(1068f).c), vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)))), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1949f))));
}

