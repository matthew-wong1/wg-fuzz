struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_1.a.b;
    var var_1 = 22792u;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1221f * -220f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.a.x))))), _wgslsmith_f_op_f32(arg_0.a.a.b * _wgslsmith_f_op_f32(-arg_2.a.b)))));
    let var_3 = (firstLeadingBit(u_input.a) & -(~u_input.a << (arg_3.x % 32u))) ^ u_input.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(var_2, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-770f, arg_1.a.a.x, 2198f, arg_2.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, 1000f, 1000f, 246f) * _wgslsmith_f_op_vec4_f32(exp2(var_2)))), var_2, u_input.a >= u_input.a)), true));
    return _wgslsmith_f_op_f32(trunc(arg_1.a.b));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(true);
    var var_1 = Struct_3(true);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(181f * -1689f), _wgslsmith_f_op_f32(ceil(699f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-298f, -425f, false)))), -837f, _wgslsmith_f_op_f32(-377f - 926f), _wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1725f))))));
    var_1 = var_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.xwy - _wgslsmith_f_op_vec3_f32(exp2(var_3.zwy))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-775f + var_3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(Struct_1(vec3<f32>(139f, -769f, var_3.x), -646f))), Struct_2(Struct_1(var_3.yyy, -1000f)), Struct_2(Struct_1(vec3<f32>(var_3.x, var_3.x, -1086f), var_3.x)), vec3<u32>(75891u, 0u, 0u))))), 1046f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2039f, var_3.x))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_5(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(all(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), select(vec2<bool>(true, select(all(vec4<bool>(false, false, true, false)), true, all(vec3<bool>(true, false, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), (-154f <= arg_1.a.x) || true)), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(u_input.a, u_input.a, 1i) & vec3<i32>(u_input.a, 19069i, -10622i)) << (arg_2 % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(u_input.a), u_input.a, u_input.a & u_input.a), ~firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -1i)), abs(-vec3<i32>(1i, u_input.a, u_input.a))), vec3<i32>(1i, ~10729i, u_input.a) >> (vec3<u32>(_wgslsmith_div_u32(arg_2.x, arg_2.x), min(4294967295u, arg_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, arg_2.x, 72127u), vec4<u32>(1u, 4294967295u, arg_0.x, arg_2.x))) % vec3<u32>(32u))), Struct_2(func_2(-u_input.a)), 0i);
    let var_1 = Struct_4(Struct_2(var_0.d.a));
    var_0 = Struct_5(var_0.a, select(vec2<bool>(all(select(vec4<bool>(var_0.b.x, true, var_0.a.x, var_0.a.x), var_0.a, var_0.b.x)), any(var_0.a)), !select(vec2<bool>(var_0.b.x, var_0.a.x), select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.wz, vec2<bool>(var_0.b.x, false)), any(var_0.a.zyz)), all(var_0.a)), vec3<i32>(var_0.e, -13971i, abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, 43547i, var_0.e), vec3<i32>(29035i, 37168i, var_0.e)), _wgslsmith_add_i32(1i, u_input.a)))), Struct_2(arg_1), ~var_0.c.x);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0.e & min(u_input.a, u_input.a), -1i), 0i, -1i), max(_wgslsmith_mult_vec3_i32(var_0.c, max(var_0.c, vec3<i32>(u_input.a, u_input.a, u_input.a) >> (arg_2 % vec3<u32>(32u)))), var_0.c));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.x), 1f)), -273f))));
    return var_0.a.xx;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = func_4(vec2<u32>(25978u, 1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1, 0u), firstTrailingBit(vec3<u32>(36712u, 19144u, 1u))) % 32u)), func_2(firstTrailingBit(-2147483647i)), select(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 21014u), vec3<u32>(arg_1, 58655u, 127550u), vec3<u32>(arg_1, arg_1, arg_1)) >> ((vec3<u32>(arg_1, arg_1, 0u) & vec3<u32>(arg_1, 47169u, arg_1)) % vec3<u32>(32u))), ~(~vec3<u32>(arg_1, 47414u, 4294967295u) | vec3<u32>(arg_1, arg_1, 0u)), !(!(!vec3<bool>(false, true, arg_2)))));
    let var_1 = Struct_5(select(vec4<bool>(arg_0.a, all(select(var_0, vec2<bool>(var_0.x, true), var_0)), (var_0.x && arg_2) && !arg_2, !any(vec4<bool>(arg_0.a, var_0.x, arg_0.a, true))), !vec4<bool>(any(vec4<bool>(true, true, false, var_0.x)), true, false || var_0.x, all(vec3<bool>(false, arg_2, true))), arg_0.a), select(!vec2<bool>(arg_0.a & arg_2, all(vec2<bool>(arg_0.a, var_0.x))), !func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 16264u), vec2<u32>(arg_1, arg_1)), Struct_1(vec3<f32>(131f, -687f, 412f), -2024f), _wgslsmith_div_vec3_u32(vec3<u32>(47929u, 39565u, arg_1), vec3<u32>(50072u, 1u, 4294967295u))), true), abs(vec3<i32>(~0i, -u_input.a, u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-587f, 621f, -589f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(767f, 369f, 589f), vec3<f32>(-1809f, -252f, 1231f))))), -616f)), arg_3);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, var_1.d.a.a.x))), _wgslsmith_f_op_f32(-var_1.d.a.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-989f, var_1.d.a.a.x, var_1.d.a.a.x) + vec3<f32>(-614f, var_1.d.a.a.x, var_1.d.a.a.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b - var_2.a.a.x)), var_2.a.a.x, var_1.d.a.a.x)));
    let var_4 = -409f;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(Struct_3(false), _wgslsmith_div_u32(firstTrailingBit(53121u), 21832u), true, _wgslsmith_div_i32(reverseBits(u_input.a), 1i)));
    let var_1 = var_0.a;
    var var_2 = Struct_5(!vec4<bool>(var_1, all(select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, true, var_0.a), vec3<bool>(true, var_1, var_0.a))), var_1, var_0.a), select(select(select(vec2<bool>(var_1, false), vec2<bool>(false, true), !vec2<bool>(true, var_1)), vec2<bool>(true, true), select(!vec2<bool>(var_0.a, false), select(vec2<bool>(var_1, var_1), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true)), all(vec3<bool>(true, var_0.a, var_0.a)))), !(!vec2<bool>(false, var_0.a)), select(select(!vec2<bool>(false, var_1), vec2<bool>(true, true), true || var_0.a), func_4(select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), var_0.a), Struct_1(vec3<f32>(-1246f, 249f, 3312f), -630f), vec3<u32>(1u, 1u, 1u)), var_0.a)), max(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a), -max(vec3<i32>(-2147483647i, 11328i, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)) | max(reverseBits(vec3<i32>(u_input.a, 16252i, u_input.a)), -vec3<i32>(u_input.a, u_input.a, -2147483647i))), Struct_2(func_2(firstLeadingBit(u_input.a) & -10874i)), -u_input.a);
    var_2 = Struct_5(select(!select(select(vec4<bool>(var_0.a, true, var_0.a, true), var_2.a, var_1), select(vec4<bool>(false, false, true, false), var_2.a, vec4<bool>(true, var_0.a, var_0.a, false)), any(var_2.b)), !vec4<bool>(true, var_0.a & true, var_1, !var_1), select(select(var_2.a, vec4<bool>(var_2.b.x, false, false, true), select(var_2.a, vec4<bool>(true, var_2.a.x, false, true), vec4<bool>(true, var_1, false, var_2.a.x))), vec4<bool>(var_0.a, var_1, var_2.d.a.b <= -1000f, var_1 & var_0.a), !select(vec4<bool>(false, false, false, var_1), vec4<bool>(var_2.a.x, var_2.b.x, false, true), var_2.a.x))), var_2.b, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), var_2.c), vec3<i32>(-2147483647i, var_2.c.x | -1i, -43784i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e, 46802i, u_input.a, 56944i), vec4<i32>(u_input.a, var_2.e, 1i, 0i)), min(_wgslsmith_sub_i32(var_2.c.x, 2147483647i), ~u_input.a), -60420i)), var_2.d, -2147483647i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.a.a.x), var_2.d.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-890f - 1f) + 1f), var_2.d.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d.a.a.x, var_2.d.a.b) - -822f)) * var_2.d.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 1u, 43557u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-907f, var_2.d.a.a.x, 1302f, var_3.x)))))), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, func_2(56185i).b)), -828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-855f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d.a.a.x)))))));
}

