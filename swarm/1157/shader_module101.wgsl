struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | countOneBits(u_input.a), ~min(u_input.a, u_input.a)));
    let var_1 = Struct_3(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(arg_3.x, arg_0.x), !arg_0.x), select(arg_3.xz, vec2<bool>(true, true), !arg_3.xz), all(vec4<bool>(false, true, arg_3.x, false))), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), u_input.a.wxy ^ firstLeadingBit(u_input.a.yzw), select(~vec2<u32>(var_0.x, 1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.b), min(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.a.x, 19331u))), any(select(vec3<bool>(true, true, arg_3.x), arg_0, arg_0)))), Struct_1(arg_0.yy, ~var_0.x, u_input.a.wzy >> (var_0.xyy % vec3<u32>(32u)), ~(~var_0.zy | ~var_0.wx)), Struct_2(-countOneBits(firstTrailingBit(vec3<i32>(-1i, -851i, u_input.c)))), Struct_1(vec2<bool>(true, !select(arg_0.x, false, true)), 0u, _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(var_0.x), u_input.b & 0u, reverseBits(4294967295u)), u_input.a.yyw, u_input.a.yyx & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(25105u, var_0.x, u_input.b))), ~_wgslsmith_sub_vec2_u32(~var_0.zy, vec2<u32>(var_0.x, 1u))));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~1u), firstLeadingBit(1u), 0u, _wgslsmith_dot_vec3_u32(var_0.yzw ^ vec3<u32>(var_0.x, var_1.d.d.x, 0u), u_input.a.yxy) ^ var_1.a.d.x), abs((_wgslsmith_div_vec4_u32(var_0, vec4<u32>(4294967295u, 38792u, 49986u, 1u)) | ~u_input.a) << (u_input.a % vec4<u32>(32u))));
    let var_3 = -49922i;
    var var_4 = !(!arg_3);
    return arg_0.yy;
}

fn func_2() -> vec2<i32> {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.a.x, u_input.b), 1u, _wgslsmith_mult_u32(4294967295u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x | u_input.b, max(u_input.a.x, u_input.b), max(u_input.b, u_input.b)), vec4<u32>(u_input.b << (4294967295u % 32u), max(43260u, u_input.a.x), ~0u, u_input.a.x & u_input.b)));
    var_0 = u_input.a;
    let var_1 = Struct_3(Struct_1(select(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1148f, 1711f, -1777f, 1000f), vec4<f32>(802f, 1127f, 1577f, 1993f))), vec4<bool>(true, true, true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(true, true, true)), var_0.x, ~(~u_input.a.xxz) ^ u_input.a.wzy, var_0.yw), Struct_1(select(vec2<bool>(func_3(vec3<bool>(true, false, false), 415f, vec4<f32>(-455f, 301f, -240f, -1051f), vec4<bool>(false, false, false, true)).x, any(vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true)), var_0.x, ~vec3<u32>(0u, 71125u, u_input.b & var_0.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(17303u, var_0.x), countOneBits(u_input.a.xz))), Struct_2(-vec3<i32>(-1i ^ u_input.c, -2147483647i, u_input.c >> (u_input.b % 32u))), Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), 18305u, vec3<u32>(var_0.x, 86133u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38831u, 0u, 15025u, u_input.b), vec4<u32>(1u, var_0.x, u_input.a.x, 1u)), ~var_0.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(62830u, 5913u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.zw, vec2<u32>(45433u, 20873u))), min(vec2<u32>(u_input.a.x, var_0.x), vec2<u32>(u_input.b, 0u)), var_0.zy)));
    let var_2 = true;
    var_0 = firstLeadingBit(max(reverseBits(u_input.a), ~vec4<u32>(1u, ~u_input.b, _wgslsmith_clamp_u32(39634u, 7652u, 52528u), ~u_input.b)));
    return select(max(_wgslsmith_mod_vec2_i32(vec2<i32>(948i, 13178i), countOneBits(vec2<i32>(u_input.c, u_input.c))) ^ reverseBits(var_1.c.a.zx), abs(var_1.c.a.xy)), vec2<i32>(-1i) * -var_1.c.a.yz, false);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> vec2<u32> {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1808f))))))));
    let var_1 = any(vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(584f * -482f) * 1f)) - _wgslsmith_div_f32(1358f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -238f), _wgslsmith_f_op_f32(trunc(1457f)), u_input.c == arg_0.x))))));
    var_0 = _wgslsmith_f_op_f32(max(976f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-556f, -239f))), _wgslsmith_f_op_f32(abs(-1414f)))))));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(45807u, _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.b << (u_input.b % 32u)))), abs((~u_input.a.yy ^ reverseBits(vec2<u32>(u_input.b, 1u))) & firstTrailingBit(~vec2<u32>(0u, u_input.a.x))));
}

fn func_1() -> bool {
    let var_0 = false;
    let var_1 = !(!(!(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, var_0, false, true)))));
    let var_2 = Struct_1(!select(!(!var_1.yz), var_1.zz, var_1.wz), ~1u, ~u_input.a.yyz, ~min(vec2<u32>(1u, 0u), func_4(func_2(), -u_input.c)));
    var var_3 = vec2<bool>(var_2.a.x, false == !all(var_1.xxy));
    var_3 = var_2.a;
    return !(var_0 & true) && false;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_3.a);
    let var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(~select(vec3<i32>(var_0.a.x, -1i, 0i), vec3<i32>(arg_3.a.x, var_0.a.x, 0i), true), -(arg_3.a & vec3<i32>(var_0.a.x, 349i, 31807i)), (arg_3.a & vec3<i32>(-2147483647i, u_input.c, var_0.a.x)) | vec3<i32>(u_input.c, arg_3.a.x, u_input.c)), var_0.a);
    var var_2 = arg_3;
    var var_3 = _wgslsmith_sub_i32(u_input.c & arg_3.a.x, ~(-func_2().x));
    var_2 = arg_3;
    return Struct_2(vec3<i32>(66012i, var_1.x, _wgslsmith_sub_i32(0i, -5139i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(true, true, true, false & (func_1() && any(vec2<bool>(false, false)))), true, Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), u_input.b, select(firstTrailingBit(u_input.a.xxw) & vec3<u32>(71891u, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<bool>(true, true, true)), u_input.a.zz), Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(2987i, u_input.c, 15683i), abs(vec3<i32>(-14409i, 85264i, u_input.c) >> (u_input.a.zzz % vec3<u32>(32u))))));
    var var_1 = Struct_3(Struct_1(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_3(vec3<bool>(false, false, false), -2461f, vec4<f32>(1154f, -383f, 1297f, 1000f), vec4<bool>(true, true, true, true))), vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false))), ~(48854u << (0u % 32u)), u_input.a.zwx, vec2<u32>(1u, 0u)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_clamp_u32(4294967295u, ~4294967295u, u_input.a.x), ~u_input.a.yzy, ~firstLeadingBit(u_input.a.zx)), Struct_2(reverseBits(var_0.a)), Struct_1(vec2<bool>(true, true), abs(1u), u_input.a.yxx, ~vec2<u32>(u_input.b, 1u)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1078f, -1640f), 158f)), _wgslsmith_f_op_f32(round(-1158f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1688f - -1000f)), 126f, 560f)));
    var_1 = Struct_3(Struct_1(var_1.d.a, var_1.a.b, var_1.a.c, vec2<u32>(var_1.a.b, firstTrailingBit(5379u & u_input.b))), var_1.b, Struct_2(-vec3<i32>(-36022i, u_input.c, ~0i)), Struct_1(select(var_1.d.a, var_1.a.a, var_1.a.a), ~min(67656u, ~var_1.b.b), ~(~(~vec3<u32>(4294967295u, var_1.a.d.x, 42639u))), vec2<u32>(firstLeadingBit(59669u), countOneBits(~var_1.d.b))));
    var var_3 = vec2<i32>(countOneBits(-673i), ~(~(-(var_1.c.a.x << (0u % 32u)))));
    var var_4 = Struct_3(Struct_1(var_1.b.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(~27052u, _wgslsmith_mult_u32(1u, 0u)), 1u | (1u & var_1.d.c.x)), var_1.a.c, ~reverseBits(u_input.a.xw)), Struct_1(func_3(vec3<bool>(true, var_1.d.a.x, true), _wgslsmith_f_op_f32(-292f * -738f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 398f, var_2.x, -494f) * vec4<f32>(408f, 1226f, 895f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, var_2.x, var_2.x, var_2.x) * vec4<f32>(var_2.x, var_2.x, -156f, -210f))), !select(vec4<bool>(true, var_1.b.a.x, true, var_1.b.a.x), vec4<bool>(var_1.b.a.x, true, var_1.d.a.x, var_1.b.a.x), vec4<bool>(var_1.a.a.x, false, true, false))), func_4(var_0.a.zx, var_0.a.x).x, vec3<u32>(min(67023u, 0u), 0u & u_input.a.x, 47459u) & select(u_input.a.wzy >> (vec3<u32>(var_1.b.c.x, 20042u, 1u) % vec3<u32>(32u)), vec3<u32>(71075u, 0u, 58625u) ^ vec3<u32>(23612u, u_input.b, u_input.b), all(var_1.d.a)), ~var_1.a.c.yy), var_1.c, Struct_1(vec2<bool>(true, true), 44373u, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.b, u_input.b, u_input.b), var_1.d.c)), u_input.a.yw));
    var var_5 = Struct_3(var_1.d, var_1.b, var_1.c, var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a.x, var_0.a.yy);
}

