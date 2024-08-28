struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<bool>(true, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, true)), vec4<f32>(1649f, -741f, 1000f, 1103f)), vec3<bool>(false, false, false), vec3<i32>(-1i, -5368i, 31300i), Struct_3(Struct_1(vec3<bool>(false, true, false)), vec4<f32>(-443f, -412f, 1809f, -729f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec3<bool> {
    global2 = Struct_4(Struct_1(global2.c), global2.b, !global2.a.a, u_input.c.yzy | -abs(min(global2.d, vec3<i32>(u_input.a, 1i, 2147483647i))), Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.b.b.x)), global2.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2216f), _wgslsmith_f_op_f32(global2.e.b.x - global2.b.b.x)))));
    global0 = firstTrailingBit(-1i);
    var var_0 = global2.b.b.x;
    var var_1 = vec4<u32>(70058u, ~_wgslsmith_div_u32(0u, arg_0), ~(~_wgslsmith_dot_vec4_u32(~u_input.b, abs(u_input.b))), arg_0);
    let var_2 = Struct_2(false, _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, -_wgslsmith_mod_i32(global2.d.x, global2.d.x)), countOneBits(reverseBits(u_input.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.b.b.yxy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.e.b.zyz), _wgslsmith_div_vec3_f32(global2.e.b.yyz, vec3<f32>(global2.e.b.x, -1424f, 739f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global2.e.b.xxx, vec3<f32>(global2.b.b.x, global2.e.b.x, global2.b.b.x)))))), var_1.ywz);
    return !vec3<bool>(!any(global2.e.a.a) | all(select(vec4<bool>(global2.e.a.a.x, arg_1.x, arg_1.x, global2.b.a.a.x), vec4<bool>(var_2.a, true, false, true), vec4<bool>(global2.a.a.x, var_2.a, true, true))), true, false);
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_4(Struct_1(func_3(select(1u, ~u_input.b.x, true), !vec2<bool>(global2.b.a.a.x, true))), Struct_3(global2.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1022f, global2.b.b.x, global2.b.b.x, global2.b.b.x))), _wgslsmith_f_op_vec4_f32(floor(global2.b.b))))), global2.a.a, -u_input.c.xwz, global2.e);
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-global2.b.b.zxw), ~_wgslsmith_dot_vec2_u32(u_input.b.ww, ~vec2<u32>(8936u, arg_0)), var_0.d.x);
    global0 = global2.d.x;
    let var_2 = u_input.c;
    global0 = var_2.x;
    return -1i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~vec4<u32>(~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, firstTrailingBit(u_input.d), 1u), vec3<u32>(1u, u_input.d, u_input.d | u_input.b.x)), 4294967295u);
    var var_1 = max(u_input.a, _wgslsmith_dot_vec4_i32((abs(u_input.c) ^ vec4<i32>(u_input.a, u_input.a, 1564i, global2.d.x)) & _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, 36398i, u_input.a), vec4<i32>(1i, global2.d.x, 0i, 1i)), abs(vec4<i32>(func_2(1u), u_input.c.x, global2.d.x, 0i))));
    return global2.a;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    global0 = _wgslsmith_add_i32(func_2(arg_3) ^ ~4276i, abs(i32(-1i) * -13697i));
    var var_0 = arg_0;
    let var_1 = Struct_4(func_1(global2.e.b.x), global2.b, !select(select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), func_1(global2.b.b.x).a, vec3<bool>(arg_2.a.x, arg_2.a.x, global2.a.a.x)), select(global2.b.a.a, vec3<bool>(false, arg_2.a.x, false), global2.a.a.x), !global2.a.a), u_input.c.zxw, global2.b);
    let var_2 = Struct_2(!arg_2.a.x & !global2.b.a.a.x, ~_wgslsmith_mult_i32(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.xz, var_1.d.yy), vec2<i32>(53953i, -8118i))), vec3<f32>(_wgslsmith_f_op_f32(sign(690f)), global2.e.b.x, var_1.e.b.x), ~abs(~u_input.b.wyw) | u_input.b.xzx);
    let var_3 = ~vec2<u32>(1u, arg_3) ^ reverseBits(firstTrailingBit(~vec2<u32>(36587u, 87039u)) | _wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.b.zx));
    return Struct_3(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(var_1.e.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(305f, global2.e.b.x, -1000f, -129f), vec4<f32>(var_1.e.b.x, 1032f, 1117f, 1052f), true))))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = u_input.b.ywz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c));
    let var_2 = arg_0;
    global1 = ~(-countOneBits(_wgslsmith_dot_vec3_i32(u_input.c.xyy, ~vec3<i32>(arg_0.b, 36732i, 2147483647i))));
    var var_3 = vec2<bool>(!all(select(func_3(u_input.b.x, global2.a.a.xy), select(global2.b.a.a, vec3<bool>(false, false, false), vec3<bool>(arg_1.a.a.x, true, true)), true)), true);
    return max(u_input.c, u_input.c);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(func_3(25910u, vec2<bool>(true, any(global2.b.a.a.zy)))), Struct_3(global2.e.a, _wgslsmith_div_vec4_f32(global2.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, arg_1.c.x, 574f, 1434f))))), func_1(arg_2).a, firstLeadingBit(max(vec3<i32>(-2147483647i, 1i, 11420i), vec3<i32>(~u_input.c.x, -1i, _wgslsmith_add_i32(0i, 1i)))), Struct_3(global2.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global2.b.b.x, 488f, arg_1.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -532f, arg_1.c.x, arg_2))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.c)));
    var var_2 = global2.e.a.a.x;
    let var_3 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(~19037u, u_input.b.x, _wgslsmith_dot_vec3_u32(arg_1.d, vec3<u32>(u_input.b.x, arg_1.d.x, u_input.b.x)), ~(~u_input.d))));
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -632f))))), ~31393u, var_0.d.x ^ arg_0.x);
    return Struct_4(global2.b.a, Struct_3(Struct_1(global2.a.a), _wgslsmith_f_op_vec4_f32(-global2.b.b)), select(select(vec3<bool>(!arg_1.a, select(true, global2.a.a.x, global2.b.a.a.x), false), global2.a.a, vec3<bool>(true, true, true)), !select(vec3<bool>(var_0.c.x, false, true), vec3<bool>(global2.a.a.x, false, true), global2.b.a.a.x), true), select(~vec3<i32>(-var_0.d.x, 2147483647i, min(global2.d.x, var_0.d.x)), var_0.d, arg_1.a), func_4(0i, func_2(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b))), Struct_1(func_3(~0u, global2.c.zz)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.e;
    var var_1 = func_6(_wgslsmith_mult_vec4_i32(u_input.c, func_5(Struct_2(true, 1i, var_0.b.zzy, reverseBits(vec3<u32>(0u, u_input.d, u_input.d))), func_4(reverseBits(u_input.c.x), global2.d.x, func_1(-2702f), _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)), vec3<bool>(!var_0.a.a.x, true, !var_0.a.a.x))), Struct_2(true, firstTrailingBit(global2.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.x, _wgslsmith_f_op_f32(-global2.e.b.x), -238f)), ~u_input.b.wyy), -444f);
    var_1 = Struct_4(Struct_1(!(!(!vec3<bool>(global2.e.a.a.x, true, global2.e.a.a.x)))), var_1.b, !vec3<bool>(all(!vec4<bool>(false, false, global2.c.x, false)), func_6(vec4<i32>(global2.d.x, var_1.d.x, -43580i, global2.d.x) & vec4<i32>(u_input.c.x, var_1.d.x, 14104i, 1i), Struct_2(global2.c.x, -2147483647i, vec3<f32>(global2.b.b.x, -195f, -2318f), u_input.b.yyz), 1259f).b.a.a.x, !global2.e.a.a.x), ~vec3<i32>(global2.d.x, func_6(u_input.c, Struct_2(var_0.a.a.x, var_1.d.x, var_1.b.b.wyx, u_input.b.zyw), global2.b.b.x).d.x, _wgslsmith_clamp_i32(-2147483647i & global2.d.x, global2.d.x | 2147483647i, var_1.d.x | -13099i)), Struct_3(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1313f * var_0.b.x) - 1346f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.b.x + var_0.b.x), _wgslsmith_f_op_f32(-var_1.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, -1000f, global2.e.a.a.x)))))));
    let var_2 = u_input.b.wxz << (abs(u_input.b.zyy) % vec3<u32>(32u));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(837f, var_1.e.b.x, _wgslsmith_f_op_f32(step(-842f, 2023f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.e.b.xzz, global2.b.b.xyy)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b.x, -858f, var_0.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1311f, -218f, global2.e.b.x), vec3<f32>(var_0.b.x, var_1.e.b.x, var_0.b.x), vec3<bool>(global2.a.a.x, global2.b.a.a.x, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global2.d.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-568f, _wgslsmith_f_op_f32(1186f - var_4.x))), -330f, 1049f))), var_1.b.b.x, ~(~vec4<u32>(4294967295u, 1u, 4294967295u, var_2.x)));
}

