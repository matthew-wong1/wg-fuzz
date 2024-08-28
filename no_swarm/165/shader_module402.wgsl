struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<bool>(select(-194f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f + 2068f) + arg_0.e.x), true & all(select(vec4<bool>(true, false, false, false), arg_0.d, false)), any(!(!arg_0.d.zy))), ~58359u == reverseBits(_wgslsmith_add_u32(1u, u_input.d) ^ u_input.a.x), arg_0.c, true);
    var var_1 = Struct_1(79723u, u_input.c.x, !arg_0.d.x, arg_0.d, arg_0.e);
    let var_2 = ~(~min(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(67615u, 0u, u_input.a.x)), var_1.a & u_input.a.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.c.x)), ~u_input.a.xx)));
    let var_3 = select(select(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(0u, var_1.b)), var_1.b), vec2<u32>(17955u, max(1u, var_1.a))), ~_wgslsmith_sub_vec2_u32(abs(u_input.a.xz), ~vec2<u32>(1u, 0u)), arg_0.c), ~(max(firstTrailingBit(vec2<u32>(31024u, 1u)), u_input.c.zy) | vec2<u32>(0u, firstLeadingBit(0u))), !arg_0.d.yx);
    let var_4 = countOneBits(1i) << (min(reverseBits(~select(0u, var_2, arg_0.d.x)), max(1u, arg_0.a)) % 32u);
    return ~(~_wgslsmith_sub_u32(~min(u_input.d, var_1.a), 1u));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, ~0u & firstTrailingBit(22016u), 1u, ~u_input.c.x), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.e.x), u_input.c.xz), _wgslsmith_mod_u32(u_input.d, 53032u), 0u, func_3(Struct_1(u_input.a.x, u_input.e.x, false, vec4<bool>(false, false, false, true), vec2<f32>(322f, 1000f)))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 39315u), _wgslsmith_clamp_vec4_u32(vec4<u32>(119974u, u_input.a.x, 0u, 21921u), vec4<u32>(1u, u_input.a.x, 62745u, 4294967295u), vec4<u32>(0u, 13556u, u_input.c.x, 24312u))) % vec4<u32>(32u))), ~_wgslsmith_mod_u32(~max(u_input.d, 1u), 0u));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, 0u, 1u), ~vec4<u32>(var_0.x, 17981u, var_0.x, var_0.x))), _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.c.x, 4294967295u), vec4<u32>(var_0.x, 4294967295u, 23008u, 27256u)) >> ((vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) ^ vec4<u32>(4294967295u, 42304u, u_input.e.x, var_0.x)) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 38514u, var_0.x, var_0.x), vec4<u32>(103798u, var_0.x, u_input.c.x, var_0.x)), ~vec4<u32>(u_input.e.x, 3977u, 26929u, 0u))));
    var_1 = 4294967295u ^ u_input.e.x;
    var_1 = abs(_wgslsmith_clamp_u32(abs(var_0.x), u_input.e.x, 1u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1138f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, 146f, 368f) - vec3<f32>(1f, 1f, 1f)), !(u_input.d > u_input.d))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-517f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(381f, 123f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1780f)))))), !vec4<bool>(false, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), true, true), Struct_2(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(23871u, var_0.x), u_input.c.xx)), 0i, !all(vec4<bool>(false, false, false, true)), ~select(reverseBits(vec3<u32>(14118u, 1u, u_input.e.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.d, u_input.c.x), vec3<u32>(u_input.e.x, u_input.e.x, 31751u)), vec3<bool>(true, true, true)), vec3<f32>(-625f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-714f, -1793f)), _wgslsmith_f_op_f32(1352f + 150f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_0.x), countOneBits(29889u)), ~u_input.e), min(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, 2147483647i), vec4<i32>(-2147483647i, -35653i, u_input.b, 1699i)), -vec4<i32>(14916i, u_input.b, u_input.b, -1i)), -(~vec4<i32>(u_input.b, -1i, u_input.b, -11396i))) & vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-4496i, 1i, u_input.b, -2147483647i), select(vec4<i32>(-908i, u_input.b, u_input.b, 1i), vec4<i32>(-7178i, u_input.b, -1i, u_input.b), true)), select(u_input.b, select(u_input.b, -33617i, false), all(vec3<bool>(false, true, true))), 36196i, u_input.b));
    return Struct_2(~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 90402u, 0u), vec4<u32>(29748u, 4294967295u, 5559u, var_0.x))), 30093i, false, _wgslsmith_div_vec3_u32(var_0, abs(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_2.d, 4294967295u, u_input.e.x)), select(var_0, var_0, var_2.b.zxw)))), vec3<f32>(_wgslsmith_f_op_f32(select(-1316f, var_2.c.e.x, !(!var_2.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.x)) - _wgslsmith_f_op_f32(-var_2.c.e.x)), -704f));
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = -2147483647i;
    let var_1 = func_2();
    let var_2 = var_1;
    let var_3 = u_input.b;
    var_0 = ~abs(3451i);
    return ~max(firstTrailingBit(-vec2<i32>(20735i, 1i)), select(abs(vec2<i32>(var_2.b, -2147483647i) << (u_input.c.xy % vec2<u32>(32u))), -vec2<i32>(-1i, -1i) ^ (vec2<i32>(u_input.b, 12804i) >> (vec2<u32>(2060u, 4294967295u) % vec2<u32>(32u))), vec2<bool>(true, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.b >> (_wgslsmith_mod_u32(u_input.a.x, arg_2.a) % 32u);
    var var_1 = select(false, !(true != !arg_2.c) & ((_wgslsmith_add_u32(41226u, arg_2.a) <= arg_2.b) & true), all(select(select(select(vec3<bool>(true, false, arg_2.d.x), vec3<bool>(arg_2.c, false, false), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)), !vec3<bool>(arg_2.c, true, true), true), !(!vec3<bool>(true, arg_2.c, false)), select(select(arg_2.d.zzw, vec3<bool>(false, arg_2.c, true), arg_2.d.x), arg_2.d.wxw, !vec3<bool>(arg_2.d.x, true, arg_2.d.x)))));
    let var_2 = ~2147483647i;
    let var_3 = ~select(_wgslsmith_add_u32(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(46708u, arg_2.a, 26949u, arg_2.b), vec4<u32>(1u, 83765u, u_input.e.x, 42745u))), func_2().a, arg_2.c);
    let var_4 = (_wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, arg_2.a, 6166u, 4294967295u)), ~(~vec4<u32>(arg_2.a, var_3, u_input.d, 104975u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.d, var_3, 26266u), vec4<u32>(arg_2.a, u_input.d, 0u, 63576u), vec4<u32>(1u, 0u, var_3, arg_2.a))) ^ reverseBits(min(vec4<u32>(arg_2.a, var_3, var_3, u_input.e.x) << (vec4<u32>(u_input.c.x, var_3, 89007u, u_input.a.x) % vec4<u32>(32u)), min(vec4<u32>(u_input.e.x, 1322u, var_3, 1u), vec4<u32>(0u, 49283u, var_3, arg_2.b))))) & (vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, reverseBits(0u)), arg_2.b, ~abs(23063u), arg_2.a) << (~select(~vec4<u32>(u_input.e.x, arg_2.a, var_3, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, arg_2.b, 2417u, arg_2.a), vec4<u32>(u_input.c.x, var_3, 30296u, var_3)), vec4<bool>(true, arg_2.d.x, arg_2.c, true)) % vec4<u32>(32u)));
    return Struct_2(_wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(40859u)), var_4.x), arg_0.x << (u_input.a.x % 32u), true | (any(arg_2.d.yzx) & arg_2.c), reverseBits(var_4.wxy), vec3<f32>(-217f, arg_2.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.x) * _wgslsmith_f_op_f32(sign(-1297f))), arg_2.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<i32>(-1i, -_wgslsmith_div_i32(-u_input.b, min(-1431i, u_input.b))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(621f, -784f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, -184f))))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(32640u, u_input.e.x, u_input.c.x, u_input.e.x), vec4<u32>(4294967295u, u_input.d, u_input.e.x, 4087u)), vec4<u32>(50790u, 9647u, 28690u, 4294967295u)), select(~vec4<u32>(u_input.c.x, 0u, u_input.d, 4294967295u), select(vec4<u32>(u_input.d, u_input.c.x, 32698u, 23367u), vec4<u32>(0u, u_input.e.x, u_input.a.x, u_input.e.x), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f * 143f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(609f)), _wgslsmith_f_op_f32(select(1766f, -2086f, true)))), select(vec4<bool>(all(vec3<bool>(false, true, true)), true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(555f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1019f))))));
    var_0 = Struct_2(1u, 8770i, var_0.c, firstTrailingBit(vec3<u32>(~(23079u & u_input.a.x), 1u | u_input.d, _wgslsmith_add_u32(var_0.a, ~var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(112f)))))), 1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))));
    var var_1 = Struct_1(select(1u, 69102u, true), 2299u << (var_0.d.x % 32u), ~reverseBits(u_input.c.x) > 67669u, !(!vec4<bool>(var_0.c, any(vec3<bool>(var_0.c, false, false)), false, var_0.c)), var_0.e.zz);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x))) + _wgslsmith_f_op_vec3_f32(-var_0.e))), !var_1.d, func_2(), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_1.a, var_1.b), var_1.b & var_1.b, var_0.d.x, var_0.d.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.d.x, var_0.d.x, 1u, 1u), vec4<u32>(var_1.a, 94466u, var_0.a, u_input.c.x))), ~select(~vec4<u32>(u_input.c.x, var_1.b, 4294967295u, u_input.c.x), vec4<u32>(var_1.a, var_0.d.x, var_1.a, var_1.b), !var_0.c)), abs(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), var_0.b << (59857u % 32u), (-28189i ^ var_0.b) & ~var_0.b, ~(-2147483647i))));
    var var_3 = 27551i;
    let var_4 = Struct_1(var_2.d, var_2.d, false, select(select(var_2.b, !var_1.d, vec4<bool>(var_1.c, !var_1.d.x, true, func_2().c)), select(var_2.b, !vec4<bool>(false, false, var_0.c, var_2.c.c), vec4<bool>(var_2.b.x, true, !var_1.c, true)), var_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.xy))));
    let var_5 = _wgslsmith_mod_i32(var_0.b, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(func_1(var_4.e).x | (var_2.e.x << (u_input.d % 32u)), 42295i, -var_2.e.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(50361i, -2147483647i), firstLeadingBit(var_2.e.xx))));
    var var_6 = Struct_3(vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + 865f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.e.x) * var_2.c.e.x)), var_2.c.e.x), vec4<bool>(!(!(var_2.c.e.x >= var_2.a.x)), all(!vec3<bool>(var_0.c, true, var_1.c)), 4294967295u < func_3(Struct_1(u_input.a.x, var_2.c.a, false, vec4<bool>(var_0.c, false, true, false), var_0.e.yx)), true), func_4(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b >> (u_input.e.x % 32u)), var_2.e.xx), firstTrailingBit(vec2<i32>(1i, ~(-2147483647i))), var_4), 0u, -(~_wgslsmith_div_vec4_i32(~var_2.e, select(vec4<i32>(var_5, 1i, var_0.b, -1i), var_2.e, vec4<bool>(false, var_1.d.x, var_2.b.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

