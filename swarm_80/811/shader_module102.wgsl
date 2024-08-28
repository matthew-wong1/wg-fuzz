struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(11826i, Struct_1(true, vec2<f32>(-765f, -1890f), vec4<bool>(false, false, true, true), 1u, vec4<bool>(false, true, true, false)), Struct_1(false, vec2<f32>(1775f, -814f), vec4<bool>(false, false, false, false), 10073u, vec4<bool>(false, true, true, true)), vec3<i32>(25464i, 2147483647i, 6265i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global0 = Struct_2(0i, Struct_1(false, global0.c.b, global0.b.c, 6823u, !global0.b.c), Struct_1(select(~global0.c.d != global0.b.d, !global0.b.e.x, global0.c.e.x), _wgslsmith_f_op_vec2_f32(min(global0.b.b, vec2<f32>(_wgslsmith_f_op_f32(-707f - -113f), _wgslsmith_f_op_f32(-855f + global0.c.b.x)))), !vec4<bool>(global0.b.c.x, select(true, true, true), 2147483647i == global0.a, !global0.b.c.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, global0.c.d, 2709u)), countOneBits(vec3<u32>(4294967295u, global0.b.d, 15632u)) & vec3<u32>(28512u, 4294967295u, global0.b.d)), select(!global0.b.e, select(vec4<bool>(false, false, false, true), global0.b.c, select(vec4<bool>(true, true, true, true), global0.b.e, global0.b.a)), vec4<bool>(!global0.c.a, global0.b.c.x, true, !global0.b.a))), global0.d ^ global0.d);
    let var_0 = vec4<u32>(abs(42884u), 6689u, ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.d, 4294967295u, global0.c.d), vec3<u32>(0u, 61772u, global0.b.d)), ~global0.c.d)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(global0.b.d, _wgslsmith_sub_u32(global0.c.d, global0.c.d)), 1u));
    global0 = Struct_2(_wgslsmith_sub_i32(global0.d.x, global0.d.x), global0.c, global0.b, global0.d);
    var var_1 = any(vec2<bool>(true, false));
    let var_2 = 54102i;
    return _wgslsmith_f_op_f32(-143f * -1154f);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = Struct_2(27972i, Struct_1(any(vec4<bool>(true, true, u_input.a > u_input.b, 4294967295u >= global0.b.d)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(642f)), 1772f))), vec4<bool>(true, false, any(select(vec2<bool>(global0.c.a, global0.b.a), global0.b.e.wy, global0.b.e.ww)), global0.b.c.x), ~global0.c.d, global0.c.e), Struct_1(!(!global0.c.a), vec2<f32>(_wgslsmith_f_op_f32(func_3()), global0.b.b.x), global0.c.e, global0.c.d, global0.c.c), reverseBits(global0.d | global0.d));
    let var_0 = global0.c;
    let var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(28644u, 5224u, global0.c.d, var_0.d) | vec4<u32>(var_0.d, 1u, var_0.d, global0.b.d), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.d, global0.c.d, 1u, 0u), vec4<u32>(global0.c.d, 1u, 7775u, var_0.d))) << (~vec4<u32>(countOneBits(global0.c.d), ~1u, countOneBits(0u), _wgslsmith_clamp_u32(1u, global0.c.d, var_0.d)) % vec4<u32>(32u)), ~(~vec4<u32>(15352u, var_0.d, global0.c.d, 35262u) ^ vec4<u32>(~3446u, _wgslsmith_dot_vec3_u32(vec3<u32>(22780u, 0u, 4294967295u), vec3<u32>(4294967295u, 7667u, global0.c.d)), ~global0.c.d, 4294967295u)));
    var var_2 = Struct_2(1i, Struct_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b.x, 746f) * var_0.b), select(vec4<bool>(all(var_0.c.wwx), var_0.c.x, !global0.b.c.x, any(vec4<bool>(var_0.e.x, global0.c.c.x, global0.c.a, true))), !(!var_0.e), select(vec4<bool>(true, var_0.e.x, false, false), vec4<bool>(var_0.e.x, true, false, false), vec4<bool>(true, false, global0.b.c.x, global0.b.c.x))), ~var_1.x, vec4<bool>(true, select(true, any(global0.c.c.yxy), !global0.b.c.x), global0.c.e.x, !any(vec3<bool>(false, true, global0.c.e.x)))), global0.c, ~global0.d);
    global0 = Struct_2(abs(firstTrailingBit(2147483647i)), global0.b, var_2.b, _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i | var_2.a, i32(-1i) * -1i, ~(-30976i)), var_2.d, _wgslsmith_clamp_vec3_i32(var_2.d, -global0.d, global0.d)));
    return global0.c;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_2(global0.d.x, func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(213f * global0.c.b.x))), 946f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.b.x + global0.b.b.x), _wgslsmith_f_op_f32(global0.c.b.x * -290f)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1281f, global0.c.b.x, global0.b.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(global0.c.b.x * global0.b.b.x), global0.c.b.x, 1228f))), max(countOneBits(vec3<i32>(u_input.a, u_input.a, 2147483647i)), global0.d));
    var_0 = Struct_2(global0.d.x, Struct_1(all(var_0.c.c.wz) || (_wgslsmith_f_op_f32(-global0.c.b.x) != -1432f), _wgslsmith_f_op_vec2_f32(global0.c.b * global0.c.b), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, global0.b.b.x, 662f))).e, ~(~1u), global0.c.e), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.b.x, 923f, var_0.c.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, 1454f, 1060f)) - vec3<f32>(global0.b.b.x, var_0.c.b.x, -106f))))), ~_wgslsmith_add_vec3_i32(firstLeadingBit(~vec3<i32>(var_0.a, 1i, global0.d.x)), vec3<i32>(-1i, var_0.a, 1i)));
    var var_1 = 9765i;
    var var_2 = select(vec2<bool>(true, global0.c.e.x), global0.c.c.ww, !select(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1090f, -2160f, global0.b.b.x), vec3<f32>(var_0.c.b.x, var_0.b.b.x, 400f)))).c.wz, vec2<bool>(true | global0.b.e.x, false), global0.c.e.zz));
    var_1 = _wgslsmith_clamp_i32(global0.d.x, 35213i, global0.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.b - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-592f, -117f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.b.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-500f, var_0.b.b.x))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1.b;
    let var_1 = vec2<u32>(23805u, arg_1.b.d);
    global0 = arg_1;
    global0 = arg_1;
    var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b.x, -808f, arg_1.b.b.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c.b.x, -1254f, 831f), vec3<f32>(var_0.b.x, -1411f, arg_1.c.b.x)))))), vec3<f32>(arg_2.a.b.x, -1028f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-552f)))))));
    return Struct_2(-1080i, arg_2.a, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1985f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(373f, var_0.b.x, var_0.b.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.x, -597f, 303f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.d.x, var_0.b.x, 348f)))))), vec3<i32>(firstTrailingBit(global0.d.x), arg_1.d.x, arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(-942f, Struct_2(~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, 24048i), global0.d.x << (81829u % 32u)), global0.b, Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(false))), vec4<bool>(any(vec2<bool>(global0.c.e.x, global0.c.c.x)), global0.c.a, global0.c.a || global0.b.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.d, global0.c.d), select(vec2<u32>(global0.b.d, 59646u), vec2<u32>(1984u, global0.b.d), true)), func_2(vec3<f32>(-2311f, global0.c.b.x, global0.b.b.x)).c), global0.d), Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, -560f, global0.b.b.x)))), _wgslsmith_f_op_f32(min(-970f, _wgslsmith_f_op_f32(global0.b.b.x + global0.b.b.x))), global0.c.e.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.b.b.x, 1000f), _wgslsmith_f_op_f32(-global0.b.b.x)))), vec4<i32>(firstLeadingBit(global0.a), u_input.b, _wgslsmith_mod_i32(-12660i, ~global0.a), 1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(global0.d.x), global0.d.x, max(u_input.b, u_input.a), -17686i << (global0.c.d % 32u)), firstLeadingBit(vec4<i32>(-23355i, -15905i, global0.a, -49246i)) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.d.x, u_input.b, global0.a, -19155i), vec4<i32>(-1i, u_input.b, global0.a, -25894i))));
    global0 = func_4(_wgslsmith_f_op_f32(abs(1686f)), func_4(487f, func_4(144f, Struct_2(2147483647i, func_4(-1575f, Struct_2(1i, Struct_1(true, global0.c.b, global0.b.c, 19614u, global0.b.e), global0.b, vec3<i32>(-8983i, u_input.b, 0i)), Struct_3(Struct_1(global0.c.e.x, global0.c.b, global0.c.c, 4294967295u, vec4<bool>(global0.c.c.x, global0.c.a, true, false)), -416f, global0.b.c.x, global0.b.b), vec4<i32>(1i, -518i, u_input.a, -44432i)).c, Struct_1(global0.c.c.x, global0.b.b, vec4<bool>(global0.b.a, global0.c.e.x, true, false), 1u, global0.b.e), vec3<i32>(-7092i, global0.d.x, u_input.b)), Struct_3(Struct_1(global0.c.c.x, vec2<f32>(global0.b.b.x, global0.c.b.x), global0.c.c, global0.c.d, vec4<bool>(global0.c.e.x, global0.b.e.x, global0.c.e.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -2373f), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, -297f))), ~(-vec4<i32>(2147483647i, u_input.b, -1i, global0.a))), Struct_3(Struct_1(true, global0.b.b, func_2(vec3<f32>(global0.b.b.x, global0.c.b.x, 181f)).c, ~0u, !vec4<bool>(true, true, true, global0.b.e.x)), global0.b.b.x, global0.c.a, _wgslsmith_f_op_vec2_f32(-global0.c.b)), -countOneBits(vec4<i32>(25213i, 1i, u_input.b, -1i) & vec4<i32>(global0.d.x, global0.d.x, global0.d.x, u_input.b))), Struct_3(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), 639f), !func_2(vec3<f32>(global0.c.b.x, -686f, -131f)).c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.d, global0.b.d), vec2<u32>(global0.c.d, global0.b.d)), global0.c.c), _wgslsmith_f_op_f32(f32(-1f) * -885f), all(!global0.c.c.yy), _wgslsmith_div_vec2_f32(global0.b.b, _wgslsmith_f_op_vec2_f32(func_1(true)))), _wgslsmith_mult_vec4_i32(-vec4<i32>(~u_input.a, 627i, global0.d.x | -1i, global0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, -30996i, global0.d.x, -2147483647i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.c.d, 1u, global0.c.d), vec4<u32>(1u, global0.b.d, global0.c.d, global0.c.d)) % vec4<u32>(32u)), vec4<i32>(select(u_input.b, global0.a, global0.b.e.x), u_input.b, ~global0.d.x, i32(-1i) * -2315i))));
    var var_0 = min(2147483647i, ~(-50232i));
    var var_1 = false;
    var var_2 = Struct_4(global0.c.c.xwy, vec2<f32>(_wgslsmith_f_op_f32(global0.b.b.x + global0.c.b.x), _wgslsmith_f_op_f32(abs(-182f))), _wgslsmith_f_op_vec2_f32(sign(global0.b.b)), _wgslsmith_f_op_vec2_f32(-global0.c.b), global0.b);
    var var_3 = Struct_3(var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) - var_2.c.x), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, 878f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_2.d - var_2.e.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.b.b - vec2<f32>(-1216f, var_2.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.b.x, global0.b.b.x), var_2.c), global0.b.e.yx)))));
    let x = u_input.a;
    s_output = StorageBuffer(~13787u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b.x, 899f) - vec2<f32>(1341f, -289f)) * vec2<f32>(-299f, -159f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1013f, -241f))) + vec2<f32>(var_2.b.x, 636f))))), min(select(min(vec4<u32>(global0.c.d, 0u, global0.c.d, global0.c.d), vec4<u32>(global0.b.d, var_2.e.d, var_2.e.d, 40226u) ^ vec4<u32>(8548u, 70441u, var_2.e.d, var_2.e.d)), firstTrailingBit(~vec4<u32>(1u, 4294967295u, 57917u, 34750u)), !var_3.a.c), select(~vec4<u32>(4028u, 4294967295u, var_2.e.d, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(26894u, var_3.a.d, var_2.e.d, 0u), vec4<u32>(var_2.e.d, 140075u, global0.c.d, var_3.a.d)), !func_2(vec3<f32>(-196f, var_2.d.x, -156f)).c.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(~(-6112i), global0.d.x, -40178i), -global0.d), vec2<u32>(var_3.a.d, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(83932u, var_2.e.d))) | min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.d, var_2.e.d) | vec2<u32>(var_3.a.d, 59643u), _wgslsmith_sub_vec2_u32(vec2<u32>(47047u, var_2.e.d), vec2<u32>(global0.b.d, 13953u)), vec2<u32>(48469u, var_3.a.d) << (vec2<u32>(17766u, 13606u) % vec2<u32>(32u))), ~vec2<u32>(60762u, global0.c.d)));
}

