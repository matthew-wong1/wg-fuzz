struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(-1227i, 38722i), 4294967295u, vec2<f32>(772f, 2608f), i32(-2147483648), 3435u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = Struct_4(global0.a, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, global0.b, 38836u) & ~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, global0.b), ~4294967295u, _wgslsmith_div_u32(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - global0.c.x)), _wgslsmith_f_op_f32(trunc(-1251f))))), 17074i, 1u >> (u_input.a.x % 32u));
    global0 = Struct_4(vec2<i32>(u_input.c.x, -1i) >> (~(~vec2<u32>(global0.e, 4294967295u)) % vec2<u32>(32u)), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), 1709f)), u_input.c.x, abs(abs(_wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(4294967295u, 1u)))));
    var var_0 = min(~(u_input.a.x & 0u), 6630u);
    global0 = Struct_4(~_wgslsmith_mult_vec2_i32(~u_input.c.ww, global0.a), _wgslsmith_dot_vec2_u32(arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, global0.e), vec2<u32>(27446u, firstTrailingBit(u_input.a.x)), max(countOneBits(u_input.a.zy), vec2<u32>(global0.e, global0.e)))), global0.c, _wgslsmith_add_i32(select(u_input.c.x, -2147483647i, true), 31362i & global0.a.x), max(arg_0.x, 4294967295u));
    var_0 = u_input.b;
    return ~global0.b & ~firstTrailingBit(arg_0.x);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_5) -> i32 {
    var var_0 = arg_3.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -201f, -463f, 1265f)) - vec4<f32>(global0.c.x, 1325f, arg_0, 675f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, -1261f, 354f))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -702f))));
    global0 = Struct_4(var_0.a.d, ~(~(~func_3(vec2<u32>(21374u, var_0.d)))), _wgslsmith_f_op_vec2_f32(-var_1.zz), var_0.b << (arg_3.d.x % 32u), ~0u);
    var_0 = Struct_2(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-arg_1), 82359i, ~(1i ^ var_0.b)), firstTrailingBit(-_wgslsmith_div_vec3_i32(u_input.c.zzy, u_input.c.wzw))), arg_3.b.a.x, ~(~min(56084u, 84030u)));
    return global0.d;
}

fn func_4(arg_0: i32) -> Struct_3 {
    global0 = Struct_4(_wgslsmith_mod_vec2_i32(global0.a, vec2<i32>(0i, ~u_input.c.x)), 1u, _wgslsmith_f_op_vec2_f32(-global0.c), global0.a.x, 37673u);
    global0 = Struct_4(_wgslsmith_mod_vec2_i32(select(u_input.c.zx, ~reverseBits(global0.a), true), global0.a), firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, abs(13387u))), _wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-2438f * 806f)) * _wgslsmith_f_op_vec2_f32(floor(global0.c)))), global0.d, ~_wgslsmith_dot_vec2_u32(u_input.a.yx, _wgslsmith_add_vec2_u32(~u_input.a.zz, select(u_input.a.wz, u_input.a.xw, vec2<bool>(false, true)))));
    var var_0 = vec2<i32>(-u_input.c.x, global0.d);
    var_0 = abs(firstLeadingBit(u_input.c.wz & _wgslsmith_div_vec2_i32(~u_input.c.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(-16721i, arg_0), vec2<i32>(var_0.x, u_input.c.x)))));
    var var_1 = abs(countOneBits(global0.b & min(max(0u, global0.b), u_input.b >> (u_input.a.x % 32u))));
    return Struct_3(Struct_1(!vec3<bool>(any(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(false, true))), global0.b, -1727f, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-17515i, var_0.x), u_input.c.zx), reverseBits(vec2<i32>(0i, var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), global0.a)), vec2<i32>(abs(2147483647i), 21247i)), _wgslsmith_dot_vec3_i32(u_input.c.wwx & vec3<i32>(-46065i, u_input.c.x, -30506i), vec3<i32>(var_0.x, -2147483647i, u_input.c.x)) >> (select(u_input.b, u_input.a.x, true) % 32u)), Struct_2(Struct_1(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), u_input.b <= 0u), 53907u, _wgslsmith_f_op_f32(-global0.c.x), ~u_input.c.xz, func_2(_wgslsmith_f_op_f32(min(854f, 861f)), arg_0, min(u_input.b, 0u), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, true), 45400u, global0.c.x, u_input.c.xz, 3805i), 2147483647i, true, 1u), Struct_1(vec3<bool>(true, true, true), 10047u, global0.c.x, global0.a, global0.d), 2147483647i, vec4<u32>(8330u, u_input.a.x, global0.e, global0.e)))), firstTrailingBit(-2147483647i), false, ~18451u), -785f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = arg_1.a.d.x;
    let var_2 = u_input.c;
    var var_3 = func_4(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a.d >> (vec2<u32>(arg_1.a.b, 5009u) % vec2<u32>(32u)), u_input.c.zw), abs(vec2<i32>(1i, -20712i))));
    global0 = Struct_4((vec2<i32>(var_2.x, _wgslsmith_sub_i32(31085i, global0.a.x)) & arg_1.b.a.d) & _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c.x, var_3.b.b), global0.a), ~24609u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -405f)), global0.c)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c.x, var_3.a.c))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, arg_1.b.a.c), arg_0.xy)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy + vec2<f32>(1060f, -230f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(223f, -1186f)))))), global0.a.x, ~40868u);
    return var_3.a;
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1298f, -1356f, global0.c.x) * vec3<f32>(global0.c.x, 1217f, global0.c.x)) + vec3<f32>(217f, global0.c.x, -129f))), func_4(func_2(124f, u_input.c.x, 1u, Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), 38800u, global0.c.x, vec2<i32>(global0.a.x, u_input.c.x), global0.a.x), global0.a.x, true, 629u), Struct_1(vec3<bool>(true, false, true), global0.e, -898f, vec2<i32>(36190i, 0i), u_input.c.x), global0.d, vec4<u32>(10597u, 47145u, arg_0, 0u))))), _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(max(11331i, ~(-1706i)), ~global0.d)), true, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(44861u, global0.e, arg_0, global0.b)), 4294967295u) << (~86368u % 32u));
    var var_1 = func_4(var_0.a.e).a.b;
    let var_2 = var_0.a.a.x;
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), select(reverseBits(~u_input.a.yy), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(5210u, 8185u), vec2<u32>(u_input.a.x, u_input.a.x))), func_4(1i).b.a.a.xx)), select(u_input.a.xx, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(47477u, global0.e), vec2<u32>(arg_0, var_0.a.b))), select(var_0.a.a.zy, vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.a.a.x))) >> (u_input.a.zz % vec2<u32>(32u)));
    global0 = Struct_4(_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_0.b, var_0.b) & vec2<i32>(u_input.c.x, global0.d), _wgslsmith_div_vec2_i32(-vec2<i32>(var_0.a.d.x, global0.d), -var_0.a.d)), -(vec2<i32>(var_0.a.d.x, u_input.c.x) >> (u_input.a.yy % vec2<u32>(32u)))), 17699u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.c)), global0.c) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(480f, 519f))), _wgslsmith_f_op_vec2_f32(-global0.c)))), ~(-11145i), ~0u);
    return Struct_4(~u_input.c.xw, 4294967295u, global0.c, u_input.c.x, _wgslsmith_add_u32(_wgslsmith_div_u32(select(arg_0, global0.b, false), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1036f, 408f, -1546f)), Struct_3(Struct_1(var_0.a.a, u_input.a.x, -855f, vec2<i32>(global0.a.x, global0.d), global0.d), Struct_2(Struct_1(vec3<bool>(false, false, var_0.c), 7760u, global0.c.x, vec2<i32>(var_0.b, global0.d), 2182i), u_input.c.x, true, 28868u), -337f)).b), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(28855u);
    let var_1 = any(!select(vec2<bool>(true, true), !func_4(-17271i).b.a.a.xz, vec2<bool>(false, true)));
    let var_2 = Struct_2(func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 1000f, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.x, -860f, -742f)))))), Struct_3(Struct_1(select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, var_1)), ~var_0.e, -1389f, _wgslsmith_div_vec2_i32(global0.a, var_0.a), -u_input.c.x), Struct_2(Struct_1(vec3<bool>(var_1, var_1, true), u_input.b, -909f, vec2<i32>(29097i, -2147483647i), global0.a.x), global0.d ^ var_0.d, var_1, ~u_input.a.x), -499f)), -(~func_1(4294967295u).d) << (u_input.a.x % 32u), (i32(-1i) * -31171i) == _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(10630i, 14942i), _wgslsmith_clamp_i32(u_input.c.x, var_0.a.x, var_0.a.x)), func_5(vec3<f32>(756f, var_0.c.x, 486f), Struct_3(Struct_1(vec3<bool>(var_1, false, true), 61049u, global0.c.x, u_input.c.xw, u_input.c.x), Struct_2(Struct_1(vec3<bool>(var_1, false, true), 1u, var_0.c.x, vec2<i32>(global0.d, 3238i), global0.d), 0i, var_1, 0u), -470f)).d | min(global0.a, vec2<i32>(u_input.c.x, var_0.d))), firstTrailingBit(25343u));
    var var_3 = global0.c.x;
    let var_4 = Struct_5(var_2, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, -2439f) - vec3<f32>(global0.c.x, 1012f, -534f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1153f, var_0.c.x, var_2.a.c), vec3<f32>(1399f, var_0.c.x, 1025f))))), func_4(-5064i)), global0.a.x, u_input.a);
    let var_5 = !var_4.b.a.zz;
    global0 = var_0;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(((1i | u_input.c.x) >> (u_input.b % 32u)) << (u_input.b % 32u), 2147483647i, 47848i));
}

