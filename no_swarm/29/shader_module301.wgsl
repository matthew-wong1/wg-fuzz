struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = ~(~_wgslsmith_add_vec3_i32(firstLeadingBit(select(arg_0, vec3<i32>(0i, -1i, -1i), arg_1.a.x)), -u_input.a));
    var var_1 = Struct_4(Struct_2(abs(abs(1i)), false), Struct_1(!select(arg_1.a, vec3<bool>(arg_1.a.x, false, false), select(arg_1.a, vec3<bool>(false, false, arg_1.a.x), arg_1.a.x)), -1430f), Struct_2(-_wgslsmith_clamp_i32(49266i, i32(-1i) * -2147483647i, -2962i), arg_1.a.x), vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2092f + 1140f), _wgslsmith_f_op_f32(-arg_1.b)))), arg_1.b, _wgslsmith_f_op_f32(606f * -950f)));
    var_1 = Struct_4(Struct_2(firstTrailingBit(_wgslsmith_add_i32(-18670i, countOneBits(arg_0.x))), true), Struct_1(vec3<bool>(false, true, false), _wgslsmith_f_op_f32(-var_1.d.x)), var_1.a, vec4<f32>(1313f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1181f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), -1235f));
    var_1 = Struct_4(Struct_2(-39969i >> ((35796u & ~arg_2) % 32u), true | all(vec2<bool>(true, true))), Struct_1(vec3<bool>(!all(vec4<bool>(false, false, true, false)), true, 4294967295u < arg_2), _wgslsmith_f_op_f32(-var_1.d.x)), Struct_2(arg_0.x, true), var_1.d);
    var var_2 = u_input.c.yzx;
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    let var_1 = firstLeadingBit(20631u) >> (func_3(~vec3<i32>(u_input.a.x, 2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), -728f), ~u_input.c.x) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2034f), _wgslsmith_f_op_f32(round(-335f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, 425f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), -245f))))));
    var var_3 = Struct_3(Struct_2(u_input.a.x, _wgslsmith_div_u32(u_input.c.x | 11187u, var_1) >= u_input.c.x), _wgslsmith_add_vec3_u32(u_input.c.wyy, vec3<u32>(9091u, u_input.c.x, _wgslsmith_sub_u32(func_3(u_input.a, Struct_1(vec3<bool>(true, true, true), 400f), 1u), u_input.c.x))), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, -442f)) + var_2)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), var_2.x)), Struct_2(_wgslsmith_sub_i32(18690i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, 12205i), ~u_input.a.x)), true));
    let var_4 = Struct_4(var_3.e, Struct_1(!(!select(vec3<bool>(var_3.a.b, false, true), vec3<bool>(var_3.e.b, var_3.a.b, false), var_3.a.b)), var_3.d.x), Struct_2((0i << (_wgslsmith_dot_vec3_u32(vec3<u32>(30232u, var_1, 43971u), var_3.b) % 32u)) | (u_input.a.x << (~30070u % 32u)), any(select(select(vec3<bool>(var_3.e.b, var_3.a.b, false), vec3<bool>(var_3.a.b, false, var_3.e.b), vec3<bool>(false, var_3.e.b, var_3.a.b)), select(vec3<bool>(var_3.a.b, false, var_3.a.b), vec3<bool>(false, true, var_3.a.b), false), !vec3<bool>(var_3.e.b, true, var_3.e.b)))), vec4<f32>(1308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.d.x, var_2.x)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -941f)));
    return Struct_1(var_4.b.a, _wgslsmith_f_op_f32(select(1000f, var_3.d.x, !var_4.b.a.x)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(0i, false), func_2(), Struct_2(reverseBits(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 602f), _wgslsmith_f_op_f32(abs(arg_0))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1176f, 1033f, arg_0, arg_0)))) * vec4<f32>(arg_0, func_2().b, 783f, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1011f), func_2().b, -837f, -810f)));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), 4294967295u, 1u);
    let var_2 = func_2().a;
    let var_3 = _wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))) - -253f));
    let var_4 = ~(~(~var_1.zy));
    return Struct_1(func_2().a, 924f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = u_input.b;
    let var_1 = countOneBits(arg_3.a.a) == (_wgslsmith_dot_vec3_i32(u_input.a, u_input.a & (vec3<i32>(u_input.b.x, var_0.x, var_0.x) ^ u_input.a)) & _wgslsmith_div_i32(0i, _wgslsmith_add_i32(-44738i, ~(-42034i))));
    var_0 = vec2<i32>(~u_input.b.x << (0u % 32u), ~(~var_0.x >> (arg_1.b.x % 32u)));
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_3.a.a, arg_1.a.a, arg_3.e.a), select(vec4<i32>(33261i, u_input.a.x, u_input.b.x, -38908i), vec4<i32>(-17774i, 3092i, arg_3.e.a, u_input.a.x), vec4<bool>(true, false, arg_2.a.x, arg_1.e.b))), select(select(vec4<i32>(arg_3.e.a, 1i, 49013i, arg_1.e.a), vec4<i32>(2147483647i, 2944i, u_input.a.x, 2147483647i), vec4<bool>(false, true, arg_1.a.b, false)), ~vec4<i32>(u_input.b.x, 966i, arg_3.e.a, -1i), arg_1.e.b)), reverseBits(-vec4<i32>(arg_3.e.a, u_input.a.x, -1i, arg_1.e.a) ^ countOneBits(vec4<i32>(var_0.x, arg_3.e.a, -85818i, 43843i)))), arg_1.e.a);
    let var_2 = 0i;
    return !var_1 && !(!all(select(arg_0.a, vec3<bool>(false, arg_2.a.x, true), arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec2<bool>(true, false), vec2<bool>(true, false), all(vec2<bool>(true, false)))) || !any(vec3<bool>(true, true, true));
    var_0 = true;
    let var_1 = Struct_4(Struct_2(-13187i, func_4(func_1(-409f, reverseBits(u_input.c.zx)), Struct_3(Struct_2(u_input.b.x, true), u_input.c.zyy, _wgslsmith_clamp_u32(15288u, 0u, u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(339f, -104f) + vec2<f32>(-1000f, -661f)), Struct_2(-1i, true)), Struct_1(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(sign(458f))), Struct_3(Struct_2(19980i, true), ~u_input.c.yyz, ~51022u, vec2<f32>(-748f, -1343f), Struct_2(-9838i, false)))), func_1(1178f, vec2<u32>(max(u_input.c.x, 69535u ^ u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.wz >> (u_input.c.wz % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x)))), Struct_2(firstTrailingBit(~_wgslsmith_div_i32(u_input.a.x, u_input.b.x)), all(vec2<bool>(false, false)) & all(vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-957f, -1083f) + -1548f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-322f)) * 414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(417f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f + 1085f) * _wgslsmith_f_op_f32(round(-207f))))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(803f + var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.b)) - _wgslsmith_f_op_f32(-1517f + var_1.b.b)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(839f + var_1.b.b), -1036f)))), var_1.b.b, 1119f, 1047f);
    var_0 = u_input.c.x == _wgslsmith_dot_vec4_u32(~max(u_input.c, vec4<u32>(121281u, 31169u, u_input.c.x, 5854u) ^ vec4<u32>(u_input.c.x, 0u, 29179u, u_input.c.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 7045u, 1u), min(~u_input.c, abs(u_input.c))));
    var var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_u32(u_input.c.x, max(u_input.c.x, u_input.c.x)), u_input.c.x, false), _wgslsmith_mod_vec4_i32(min(max(vec4<i32>(u_input.b.x, var_1.c.a, 30925i, -1i), -vec4<i32>(u_input.b.x, var_1.a.a, u_input.a.x, -29637i)), max(abs(vec4<i32>(-29546i, 2649i, u_input.b.x, -2147483647i)), min(vec4<i32>(-1i, var_1.c.a, 0i, var_1.a.a), vec4<i32>(-29224i, var_1.a.a, 0i, -22194i)))), ~(~firstTrailingBit(vec4<i32>(u_input.b.x, 31339i, -1i, var_1.c.a)))), u_input.c.zzw >> ((u_input.c.zwz << (~min(vec3<u32>(u_input.c.x, 30688u, u_input.c.x), u_input.c.xzw) % vec3<u32>(32u))) % vec3<u32>(32u)), 50752u, ~(-u_input.a.xz));
}

