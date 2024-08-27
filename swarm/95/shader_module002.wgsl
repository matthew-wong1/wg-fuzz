struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(~40511i, true);
    var var_1 = any(!global0.e);
    var var_2 = var_0;
    global0 = Struct_1(firstLeadingBit(min(min(2643i, global0.a), ~var_2.a)) & select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, var_0.a), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, var_0.a), global0.b)), max(var_2.a, _wgslsmith_div_i32(-3017i, global0.b.x)), !(var_0.a <= var_0.a)), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(abs(var_0.a), _wgslsmith_sub_i32(var_2.a, 252i)), global0.b)), false, true, vec4<bool>(true, var_2.b, var_2.b | var_0.b, true));
    var var_3 = Struct_1(select(var_0.a, ~0i, false), reverseBits(countOneBits(vec2<i32>(_wgslsmith_mod_i32(global0.b.x, 2090i), global0.a))), true, var_0.b, !vec4<bool>(false, true, !select(false, true, var_0.b), false));
    return var_3.c;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(max(-2147483647i, 17302i), all(!select(select(arg_2.e.zwx, vec3<bool>(false, arg_2.e.x, true), false), !arg_2.e.zyx, select(arg_2.e.wxw, global0.e.yyx, true))));
    var var_1 = _wgslsmith_f_op_f32(round(561f));
    var var_2 = !vec2<bool>(any(!vec2<bool>(true, var_0.b)), (_wgslsmith_f_op_f32(trunc(-521f)) < _wgslsmith_f_op_f32(trunc(1000f))) | all(arg_2.e));
    var var_3 = var_0;
    let var_4 = ~(~vec4<i32>(arg_2.b.x << (4294967295u % 32u), 0i, 2147483647i, abs(0i))) | vec4<i32>(0i, var_3.a, global0.a, 0i);
    return func_3();
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: bool) -> vec3<f32> {
    var var_0 = vec3<u32>(~arg_0, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, 0u, 28324u), vec4<u32>(3946u, 42540u, u_input.b.x, 3213u))), 92449u) >> (vec3<u32>(_wgslsmith_div_u32(~(~6819u), ~(4294967295u & arg_0)), 4294967295u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, arg_0), 0u)) % vec3<u32>(32u));
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(global0.a, global0.b.x)), -abs(vec2<i32>(0i, global0.b.x))), firstTrailingBit(_wgslsmith_mult_i32(0i, global0.b.x)) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_0.x, arg_0)), ~vec3<u32>(var_0.x, 0u, 44528u))) % 32u));
    let var_2 = reverseBits(~firstLeadingBit(~vec3<u32>(37713u, arg_0, 1u))) >> (~vec3<u32>(u_input.a, ~54686u << (firstLeadingBit(arg_0) % 32u), ~1u) % vec3<u32>(32u));
    var var_3 = global0.b;
    let var_4 = Struct_1(1i, vec2<i32>((0i | var_1.x) >> (_wgslsmith_add_u32(0u, var_0.x) % 32u), 1i) ^ select(~vec2<i32>(var_1.x, 15279i), firstLeadingBit(firstLeadingBit(global0.b)), true), true, true, !(!global0.e));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2062f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1417f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-503f, 1000f, -218f), vec3<f32>(-126f, -169f, -1936f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(758f, 512f, -633f))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<i32> {
    global0 = Struct_1(-reverseBits(~global0.b.x), ~global0.b, func_3(), global0.c, !(!select(global0.e, vec4<bool>(true, false, global0.c, global0.c), global0.e)));
    var var_0 = vec4<i32>(-1i, max(~1i, _wgslsmith_mod_i32(16075i, -1i)), global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(~vec4<i32>(global0.b.x, -1i, global0.b.x, global0.b.x)), vec4<i32>(-1i) * -vec4<i32>(-15894i, global0.a, 13377i, global0.a)), vec4<i32>(global0.a, _wgslsmith_sub_i32(global0.b.x, 47545i), 0i, global0.a) ^ vec4<i32>(10199i, global0.a, -33922i, 2147483647i)));
    let var_1 = Struct_2(-(_wgslsmith_dot_vec3_i32(-vec3<i32>(26740i, -16047i, global0.b.x), abs(vec3<i32>(14017i, -2147483647i, 0i))) << (_wgslsmith_mod_u32(~5928u, ~u_input.a) % 32u)), true);
    var_0 = countOneBits(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(var_1.a, var_0.x, var_0.x, global0.b.x)));
    var var_2 = true;
    return var_0.zz;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_2 {
    global0 = Struct_1(-42472i >> (0u % 32u), func_5(_wgslsmith_f_op_vec3_f32(func_4(~62550u, arg_0.a, func_2(u_input.b.x, ~6813u, Struct_1(-1i, global0.b, arg_0.b, false, global0.e)))), vec4<u32>(93017u, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 48156u, u_input.a), vec4<u32>(39153u, u_input.b.x, arg_1.x, 0u)), 29567u) & (vec4<u32>(4294967295u, 8812u, 0u, 4294967295u) | vec4<u32>(u_input.a, arg_1.x, 74838u, u_input.c))), arg_2.x, true, select(!global0.e, !vec4<bool>(true, global0.a <= arg_0.a, arg_2.x, arg_2.x), select(!vec4<bool>(false, global0.e.x, global0.d, true), global0.e, arg_2.x)));
    global0 = Struct_1(-global0.b.x, _wgslsmith_div_vec2_i32(min(vec2<i32>(arg_0.a, global0.a), vec2<i32>(15035i, global0.a)) | global0.b, -_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, -1i), vec2<i32>(1i, arg_0.a), global0.b)) & (vec2<i32>(~arg_0.a, 1i) >> ((~vec2<u32>(90034u, u_input.c) >> (~vec2<u32>(59374u, 13314u) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_2.x | true, (arg_0.a == arg_0.a) || arg_0.b, vec4<bool>(global0.d, false, true, global0.d));
    global0 = Struct_1(_wgslsmith_clamp_i32(abs(global0.b.x), ~global0.b.x, 23005i), vec2<i32>(~_wgslsmith_mult_i32(~16906i, -39909i), _wgslsmith_sub_i32(49149i, ~(-28520i))), arg_2.x, arg_0.b, vec4<bool>(true, select(true, true, true), arg_2.x, arg_2.x));
    var var_0 = arg_0;
    global0 = Struct_1(min(i32(-1i) * -2147483647i, ~global0.a), ~global0.b, arg_0.b, true, vec4<bool>(false, arg_0.b, var_0.b, arg_2.x));
    return Struct_2(-8308i ^ ~arg_0.a, true);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(func_5(vec3<f32>(-347f, 100f, 567f), vec4<u32>(u_input.b.x, u_input.c, u_input.a, u_input.a) << (vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c) % vec4<u32>(32u))), abs(vec2<i32>(0i, arg_2.a))) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(max(reverseBits(_wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(arg_1.a, arg_3.a))), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i) & arg_3.b, vec2<i32>(arg_3.b.x, arg_2.a))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(select(arg_3.b, vec2<i32>(global0.b.x, arg_1.a), vec2<bool>(arg_1.b, arg_2.b)), arg_3.b), ~func_5(vec3<f32>(-412f, 486f, -2012f), vec4<u32>(0u, 39658u, 1u, u_input.b.x)))));
    let var_1 = _wgslsmith_mult_vec4_i32(min(~(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -3353i, arg_1.a, arg_3.a), vec4<i32>(-60563i, -1i, var_0.x, arg_1.a))), _wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(arg_3.b.x, -22105i, 0i, global0.a)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(946i, arg_3.a, 7306i, arg_0)), abs(vec4<i32>(arg_1.a, 16844i, 55054i, arg_0))))), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, global0.b.x, 66735i, 1i), vec4<i32>(41062i, -2147483647i, var_0.x, var_0.x))) & ~vec4<i32>(1i, i32(-1i) * -1i, func_5(vec3<f32>(1154f, -127f, 1439f), vec4<u32>(0u, 7256u, u_input.a, u_input.c)).x, ~2147483647i));
    global0 = Struct_1(_wgslsmith_div_i32(max(1i, reverseBits(4396i)), 1i), ~firstTrailingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, arg_0), var_1.xw)), !all(vec2<bool>(false, func_1(arg_2, vec3<u32>(4294967295u, 3536u, u_input.a), vec3<bool>(false, false, arg_2.b)).b)), ~(u_input.a >> (~u_input.b.x % 32u)) > _wgslsmith_mod_u32(1u, u_input.b.x), select(arg_3.e, select(select(select(vec4<bool>(false, arg_1.b, true, true), global0.e, arg_3.e), select(arg_3.e, global0.e, arg_3.e), false), !arg_3.e, any(select(arg_3.e.zyw, vec3<bool>(arg_1.b, true, arg_3.e.x), arg_3.e.xyx))), select(arg_3.e, vec4<bool>(any(vec3<bool>(arg_3.d, arg_1.b, true)), !arg_3.c, arg_1.b, func_2(39366u, 72130u, Struct_1(-2147483647i, arg_3.b, global0.e.x, true, vec4<bool>(global0.e.x, arg_1.b, arg_2.b, arg_1.b)))), select(select(vec4<bool>(true, false, false, false), arg_3.e, false), vec4<bool>(false, false, false, arg_2.b), all(vec2<bool>(arg_1.b, true))))));
    global0 = arg_3;
    let var_2 = arg_3;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(-41030i, func_1(Struct_2(15487i, any(select(global0.e, global0.e, false))), vec3<u32>(1u, _wgslsmith_mult_u32(u_input.a ^ u_input.c, _wgslsmith_add_u32(2170u, 1u)), u_input.c), select(vec3<bool>(true, !global0.e.x, true), vec3<bool>(true, true, true), false)), Struct_2(-20154i, any(global0.e) & global0.e.x), Struct_1(_wgslsmith_sub_i32(-(~global0.a), -1i), global0.b ^ vec2<i32>(~global0.b.x, i32(-1i) * -12855i), ~_wgslsmith_add_u32(0u, u_input.b.x) < u_input.c, global0.c, select(select(vec4<bool>(false, global0.c, true, true), select(vec4<bool>(true, true, global0.d, false), vec4<bool>(global0.d, false, false, false), global0.e.x), vec4<bool>(global0.d, global0.e.x, false, false)), !global0.e, select(!vec4<bool>(global0.d, global0.c, global0.c, global0.e.x), vec4<bool>(true, global0.c, global0.d, global0.e.x), !vec4<bool>(global0.d, true, global0.e.x, true)))));
    var var_0 = u_input.b.x;
    var var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(585f, 595f, -879f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_3 = Struct_2(-22973i, false);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(412f - var_2.x), var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -295f)))), _wgslsmith_f_op_f32(-var_2.x), -1754f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1104f, 849f, -855f, 687f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 895f, 289f, 960f) + vec4<f32>(1088f, var_2.x, 1117f, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 731f) * vec4<f32>(681f, 1957f, var_2.x, 234f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2129f, _wgslsmith_f_op_f32(-var_2.x), 357f, var_2.x)))));
}

