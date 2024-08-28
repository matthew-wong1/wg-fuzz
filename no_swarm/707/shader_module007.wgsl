struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(-20659i | max(36654i, u_input.d & u_input.a.x), u_input.c.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(25523u, u_input.e, u_input.e, 13633u) | _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 49884u), u_input.b), select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 21765u), ~u_input.b, vec4<bool>(arg_1, arg_1, true, false))), ~vec2<i32>(8366i, ~(-1i)), arg_1), ~1u, !any(!vec4<bool>(arg_1, false, arg_1, arg_1)), 39306i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, arg_0, arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, arg_0, arg_0, arg_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1622f, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(false, arg_1, true, false), vec4<bool>(true, true, arg_1, false), vec4<bool>(false, arg_1, true, arg_1)))))));
    var var_1 = all(vec3<bool>(true, !any(vec4<bool>(false, arg_1, var_0.a.e, arg_1)), var_0.a.e));
    var var_2 = !(!select(!select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, true, var_0.c, true)), vec4<bool>(true, true, true, any(vec4<bool>(var_0.a.e, true, true, var_0.a.e))), arg_1));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) * -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.x * -366f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-760f, var_0.e.x) * _wgslsmith_f_op_f32(sign(arg_0))))));
    var_2 = !vec4<bool>(max(~1u, u_input.e) == _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 4294967295u, var_0.a.c.x, var_0.a.c.x)), 1u), all(select(vec3<bool>(true, false, false), vec3<bool>(var_0.c, false, var_0.c), var_2.yzz)), var_0.a.e, !(!(var_0.a.e || var_0.a.e)));
    return min(vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, var_0.a.a), vec2<i32>(2147483647i, 1i)) >> (select(vec2<u32>(u_input.b.x, var_0.a.c.x), vec2<u32>(u_input.e, 50112u), arg_1) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b >> (u_input.e % 32u), ~23191i, max(-10333i, var_0.a.b)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.a, 36316i, u_input.a.x), u_input.c.wwy << (u_input.b.xxw % vec3<u32>(32u)))), 0i));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = vec2<i32>(max(~(-(u_input.d << (u_input.b.x % 32u))), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_add_i32(arg_0.x, var_0.x), 19220i, vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.e), u_input.b.x, u_input.b.x, 1u), _wgslsmith_add_vec2_i32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1118f - -428f))), false), ~(-reverseBits(arg_0.xx))), !(!all(vec2<bool>(true, true))));
    var var_2 = 7378i;
    var var_3 = var_1.e;
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d & ~1i, _wgslsmith_dot_vec2_i32((var_1.d >> (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u))) >> (vec2<u32>(var_1.c.x, 4294967295u) % vec2<u32>(32u)), var_0)), ~abs(_wgslsmith_div_vec2_i32(var_0, vec2<i32>(-20457i, 39790i) & u_input.a.wz)));
    return any(select(select(select(!vec3<bool>(true, true, var_1.e), select(vec3<bool>(false, false, var_1.e), vec3<bool>(true, true, false), false), u_input.b.x != var_1.c.x), !(!vec3<bool>(var_1.e, true, var_1.e)), vec3<bool>(var_1.e, var_1.e, true)), !(!select(vec3<bool>(var_1.e, true, false), vec3<bool>(var_1.e, var_1.e, true), vec3<bool>(false, var_1.e, var_1.e))), select(!(!vec3<bool>(var_1.e, var_1.e, var_1.e)), !select(vec3<bool>(var_1.e, var_1.e, true), vec3<bool>(true, var_1.e, true), var_1.e), var_1.e)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(793f - _wgslsmith_f_op_f32(select(842f, _wgslsmith_f_op_f32(f32(-1f) * -469f), true))), 450f)));
    var var_1 = !func_2(u_input.a.xxy);
    var var_2 = Struct_1(u_input.a.x, u_input.a.x, _wgslsmith_sub_vec4_u32(u_input.b, ~vec4<u32>(firstLeadingBit(u_input.e), 0u, 17842u, 25980u)), -((u_input.c.zy | u_input.c.ww) << (vec2<u32>(u_input.e, 4294967295u) % vec2<u32>(32u))) | ~firstTrailingBit(vec2<i32>(-57724i, 23310i)), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), u_input.c.x >= -1i), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(false, true, true, false))));
    var_2 = Struct_1(var_2.d.x, i32(-1i) * -27323i, reverseBits(var_2.c), firstLeadingBit(reverseBits(~vec2<i32>(0i, 5656i))), func_2(vec3<i32>(~(-53557i), _wgslsmith_div_i32(var_2.d.x, -19878i), _wgslsmith_mod_i32(u_input.c.x, var_2.b))) || true);
    var_0 = -905f;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = arg_1.x;
    let var_1 = Struct_2(Struct_1(62612i, -54499i, (u_input.b | ~u_input.b) & u_input.b, abs(-u_input.a.zz), select(true, _wgslsmith_f_op_f32(abs(arg_0.x)) < _wgslsmith_f_op_f32(round(arg_0.x)), true)), ~(~u_input.b.x), false, i32(-1i) * -(~_wgslsmith_div_i32(u_input.a.x, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1))))) + _wgslsmith_f_op_vec4_f32(-arg_1)));
    var var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.d, countOneBits(-1i)), u_input.d) & ((27404i << (abs(0u) % 32u)) >> (u_input.e % 32u)), ~_wgslsmith_div_i32(2147483647i, firstTrailingBit(-var_1.d)), ~vec4<u32>(~var_1.b | _wgslsmith_add_u32(var_1.a.c.x, var_1.b), u_input.b.x, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, u_input.b.x)), firstTrailingBit(firstLeadingBit(var_1.b))), vec2<i32>(~(-var_1.a.d.x), ~2147483647i), func_2(vec3<i32>(37996i, ~u_input.c.x & var_1.d, firstTrailingBit(-var_1.a.b))));
    var var_3 = arg_1.x;
    let var_4 = Struct_1(2147483647i, 2147483647i, ~vec4<u32>(min(1u, var_1.a.c.x), select(7531u, 63059u, false), 21325u, _wgslsmith_add_u32(4222u, var_2.c.x)) & ~(~countOneBits(vec4<u32>(16612u, 12140u, u_input.b.x, var_1.a.c.x))), var_1.a.d, all(vec4<bool>(all(vec3<bool>(var_1.c, var_2.e, true)), true, var_1.a.e, false)));
    return Struct_4(Struct_3(_wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(var_2.d, vec2<i32>(var_4.a, 24547i)), vec2<i32>(var_2.b, u_input.a.x)), var_1.a, firstTrailingBit(max(30363i, -2147483647i)) | -u_input.c.x, _wgslsmith_add_i32(firstTrailingBit(firstLeadingBit(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-54540i, -1i, -1i), u_input.a.xxy) << (~var_4.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1247f, -866f, -333f) + vec3<f32>(-2614f, 623f, 144f)) - vec3<f32>(409f, 1830f, 488f)) - vec3<f32>(-297f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(169f, -445f, 277f), vec3<f32>(-1000f, 363f, 1000f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-313f, -351f, -817f)))), vec3<f32>(992f, _wgslsmith_f_op_f32(max(-1417f, 2562f)), _wgslsmith_div_f32(-505f, 947f)))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(875f, -1641f, -806f, 1460f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(715f, -438f, 683f, 1471f) + vec4<f32>(1100f, 472f, 1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1628f, -121f, 1296f, 1131f) - vec4<f32>(-415f, 1000f, -477f, -1868f)))))));
    let var_1 = abs(i32(-1i) * -1i);
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-860f, _wgslsmith_f_op_f32(2072f + 1000f), _wgslsmith_f_op_f32(round(254f)))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1080f, -631f, 722f, 1550f)))));
    let var_2 = 83514u & var_0.a.b.c.x;
    var var_3 = _wgslsmith_clamp_i32(select((var_1 & _wgslsmith_add_i32(-32801i, 2147483647i)) & -2147483647i, u_input.a.x, true), countOneBits(abs(abs(abs(var_1)))), -abs(min(-var_1, countOneBits(var_1))));
    var var_4 = ~((-_wgslsmith_div_vec3_i32(vec3<i32>(-10653i, -9624i, var_1), u_input.a.yyw) ^ ~vec3<i32>(7954i, var_1, u_input.a.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a.b.c.x, _wgslsmith_mult_u32(u_input.e, 23222u)), ~var_0.a.b.c.yxx) % vec3<u32>(32u)));
    var var_5 = -272f;
    var_3 = 0i;
    var var_6 = Struct_4(Struct_3(var_4.xx, var_0.a.b, 1i, -23891i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(56885u), ~reverseBits(~vec4<u32>(var_2, var_6.a.b.c.x, 8955u, 4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))), 1612f)), 8398u, countOneBits(~1i >> (~var_6.a.b.c.x % 32u)));
}

