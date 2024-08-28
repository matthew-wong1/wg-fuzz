struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_3(-vec3<i32>(select(countOneBits(11049i), i32(-1i) * -30824i, true), 2147483647i, 40094i));
    let var_1 = Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, u_input.b.x, ~1i), ~var_0.a), vec3<i32>(-25232i, -1i, 37909i)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = var_1;
    let var_3 = _wgslsmith_add_vec3_u32(arg_2.xzw, arg_2.yzy);
    return vec3<u32>(0u, countOneBits(min(select(arg_2.x, ~4294967295u, -2147483647i >= global0.a.x), 0u)), u_input.c.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = abs(~vec4<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(~arg_0.x, 21827u), 73374u, firstLeadingBit(countOneBits(53180u))));
    let var_1 = 85421i;
    let var_2 = true;
    global0 = Struct_3(vec3<i32>(var_1, global0.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)));
    var var_3 = global0.a.zy;
    return Struct_1(abs(~(~(vec4<u32>(u_input.a.x, var_0.x, 32545u, var_0.x) ^ vec4<u32>(11848u, 1u, 16271u, 1u)))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, _wgslsmith_f_op_f32(-1429f - 758f), _wgslsmith_div_f32(-721f, -1066f), _wgslsmith_div_f32(-951f, 620f))), ~(~(-13222i)), firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, arg_0.x, arg_0.x), vec4<u32>(25099u, 70830u, 29213u, 0u)), ~vec4<u32>(0u, 4294967295u, 64654u, 93860u))), ~countOneBits(var_3.x) < firstLeadingBit(var_3.x)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = Struct_3(global0.a);
    let var_0 = vec2<bool>(928f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(select(398f, arg_1, false)))), true);
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - arg_1);
    let var_2 = _wgslsmith_clamp_u32(countOneBits(4294967295u), 4294967295u ^ ~u_input.c.x, 58735u) < func_2(min(firstLeadingBit(u_input.a) | arg_2.a.zx, vec2<u32>(4294967295u, 4100u) | ~arg_2.b.xx)).a.x;
    return select(true, all(vec2<bool>(!any(var_0), !all(vec2<bool>(var_0.x, true)))), any(vec3<bool>(all(var_0), false, false)) || false);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    var var_0 = u_input.b.x;
    var_0 = -(i32(-1i) * -8735i);
    var var_1 = vec3<bool>(arg_1.x, arg_1.x, all(vec4<bool>(true && all(arg_1), true, arg_1.x, !all(vec4<bool>(false, false, true, arg_1.x)))));
    var_1 = !(!select(vec3<bool>(any(vec3<bool>(arg_1.x, var_1.x, false)), arg_1.x, all(vec4<bool>(arg_1.x, var_1.x, true, var_1.x))), select(vec3<bool>(var_1.x, true, arg_1.x), !vec3<bool>(var_1.x, var_1.x, arg_1.x), 1u < u_input.a.x), true));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(333f))))))));
    return Struct_3(-vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b.x), ~(arg_2.x | -36890i), -7897i));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> vec3<i32> {
    var var_0 = func_5(0u, vec2<bool>(false, !func_4(1i, arg_0, func_2(vec2<u32>(1u, u_input.c.x)), 594f)), abs(vec4<i32>(-17138i, u_input.b.x, ~0i, -(~0i))), ~abs(64465u));
    var var_1 = var_0.a.zy;
    global1 = 13565i;
    var var_2 = Struct_2(_wgslsmith_clamp_i32(arg_1.x, 1i, -18073i) >= (-13422i << (u_input.c.x % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 716f) - _wgslsmith_div_f32(-468f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(270f, 914f)) - arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1057f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, 330f))))), Struct_1(~reverseBits(~vec4<u32>(0u, u_input.c.x, 22900u, u_input.a.x)), abs(abs(~vec3<u32>(u_input.a.x, 24909u, 70142u)))), _wgslsmith_dot_vec2_u32(u_input.a, u_input.c), func_2(vec2<u32>(41264u, u_input.c.x)));
    global0 = Struct_3(arg_1.wxx);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-15118i, reverseBits(arg_1.x)), vec2<i32>(_wgslsmith_add_i32(-42674i, -23836i), ~1i)), -vec2<i32>(_wgslsmith_div_i32(var_0.a.x, 0i), -2147483647i)), ~(~u_input.b.x) >> (1u % 32u), (~2147483647i >> (abs(~var_2.c.b.x) % 32u)) & -12837i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1810f, 486f), _wgslsmith_div_f32(306f, -238f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, 11950i, 0i, u_input.b.x) ^ (vec4<i32>(u_input.b.x, global0.a.x, -38268i, 68538i) >> (vec4<u32>(6666u, u_input.c.x, 15904u, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(-1243i, -48922i, global0.a.x, -46561i) >> (firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(vec4<i32>(-32489i, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, u_input.b.x, -2147483647i))), _wgslsmith_f_op_f32(step(445f, _wgslsmith_f_op_f32(floor(-560f))))));
    global1 = _wgslsmith_mod_i32(~global0.a.x, -_wgslsmith_clamp_i32(var_0.a.x, i32(-1i) * -var_0.a.x, 36163i));
    var var_1 = func_2(~select(~abs(vec2<u32>(1u, u_input.c.x)), func_2(u_input.c).a.xx, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    global1 = reverseBits(-abs(-var_0.a.x) & 1i);
    var var_2 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(396f, 460f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, 2000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), func_2(~(~(vec2<u32>(4294967295u, 4294967295u) << (var_1.a.zx % vec2<u32>(32u))))), reverseBits(~0u), func_2(~(~vec2<u32>(u_input.a.x, 0u)) & countOneBits(vec2<u32>(u_input.c.x, 4294967295u))));
    let var_3 = ~var_1.a;
    let var_4 = ~_wgslsmith_add_vec4_u32(~(~(vec4<u32>(var_2.d, 34257u, var_1.b.x, var_2.e.a.x) >> (var_1.a % vec4<u32>(32u)))), vec4<u32>(~u_input.c.x << (countOneBits(var_1.b.x) % 32u), abs(u_input.c.x), 4294967295u, (var_3.x & u_input.c.x) ^ _wgslsmith_sub_u32(37374u, 28712u)));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, 713f), 379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_f_op_f32(step(var_2.b.x, var_2.b.x)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(849f, var_2.b.x))))))), var_2.b.x);
}

