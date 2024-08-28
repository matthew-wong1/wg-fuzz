struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2083f), _wgslsmith_f_op_f32(abs(-393f))))), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(729f * -610f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.b.x)))), arg_1.d);
    var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = var_1.d;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_1.c))))));
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = ~(~vec4<u32>(reverseBits(37007u), 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(0u, 37793u, 44190u)), _wgslsmith_div_u32(u_input.d, u_input.b)), _wgslsmith_dot_vec2_u32(~vec2<u32>(28128u, 1u), ~u_input.a)));
    let var_1 = firstTrailingBit(max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.e.x, -1i, arg_0.x) ^ vec4<i32>(arg_0.x, -2147483647i, -1i, -2147483647i), min(vec4<i32>(u_input.c, -2147483647i, -22956i, 1i), vec4<i32>(arg_0.x, arg_0.x, u_input.e.x, 0i)), vec4<i32>(2147483647i, u_input.e.x, 61153i, -1i)), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, arg_0.x, arg_0.x, u_input.e.x), vec4<i32>(-2147483647i, -40754i, -13871i, -6111i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(f32(-1f) * -509f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-774f, -1518f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1238f * -382f) - _wgslsmith_f_op_f32(func_3(-1126f, Struct_1(var_0.yxy, vec4<f32>(-213f, -1000f, 1341f, 1000f), 419f, vec3<bool>(false, false, true)))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1125f + _wgslsmith_div_f32(-673f, -1324f)), Struct_1(vec3<u32>(u_input.b, 4294967295u, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, -194f, 458f, -1405f)), -992f, vec3<bool>(true, false, true))))));
    let var_3 = Struct_1(~firstTrailingBit(vec3<u32>(27182u, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(round(-3452f)), _wgslsmith_f_op_f32(var_2.x + 247f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, 576f, var_2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 936f, var_2.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), vec4<bool>(true, true, true, true)))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.x))))), vec3<bool>(true, true, true));
    var_2 = var_3.b.xzy;
    return vec3<bool>(all(var_3.d.xz), any(select(vec3<bool>(var_3.a.x != 1u, all(var_3.d), var_3.d.x & var_3.d.x), select(!var_3.d, var_3.d, false), var_3.d)), !select(select(!var_3.d.x, true, var_3.d.x), false, false));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1145f, _wgslsmith_div_f32(-617f, -564f), arg_0.b.x, arg_0.c)));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.c)), arg_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))))) * _wgslsmith_f_op_f32(trunc(arg_0.c)));
    var_1 = _wgslsmith_f_op_f32(func_3(arg_0.b.x, arg_0));
    let var_2 = arg_0.d.x;
    return _wgslsmith_add_vec4_u32(reverseBits(countOneBits(select(vec4<u32>(4294967295u, 3837u, u_input.d, u_input.b), vec4<u32>(arg_0.a.x, arg_0.a.x, 74175u, 0u), var_2))) >> (vec4<u32>(4294967295u, u_input.b, 15636u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, ~0u, u_input.b, ~u_input.a.x) << (vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(81814u), arg_0.a.x << (28650u % 32u)), abs(~4294967295u), ~1u, arg_0.a.x) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_1(~(_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(4294967295u, 4294967295u, 40626u)) >> (_wgslsmith_sub_vec3_u32(arg_0.a, vec3<u32>(22487u, 70368u, 16866u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 616f, arg_0.c, arg_0.b.x) - arg_0.b)))), _wgslsmith_f_op_f32(abs(arg_0.b.x)), func_2(u_input.e)), arg_0.d.xx);
    var var_1 = arg_0;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-7253i), ~(u_input.c & u_input.c)), reverseBits(select(-u_input.e, vec2<i32>(1i, u_input.c), select(vec2<bool>(arg_1.d.x, arg_2.d.x), vec2<bool>(false, arg_0.d.x), arg_1.d.x)))), _wgslsmith_add_vec2_i32(-(~(vec2<i32>(51368i, u_input.e.x) >> (arg_1.a.yy % vec2<u32>(32u)))), min(_wgslsmith_sub_vec2_i32(u_input.e ^ vec2<i32>(u_input.c, -15015i), firstTrailingBit(vec2<i32>(-2147483647i, u_input.e.x))), u_input.e)));
    let var_1 = -1451f;
    let var_2 = arg_2.a.x;
    var var_3 = 1i;
    var_3 = _wgslsmith_clamp_i32(-84525i, -var_0, 22770i);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f + 1723f) - -1141f) * _wgslsmith_f_op_f32(f32(-1f) * -1628f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec3<u32>(4294967295u, 59829u, 17165u), vec4<f32>(487f, -1061f, 1887f, -2586f), 1000f, vec3<bool>(true, false, true))), Struct_1(vec3<u32>(u_input.d, u_input.b, u_input.b), vec4<f32>(1231f, 1627f, 1524f, -848f), 1432f, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(u_input.b, 0u, 0u), vec4<f32>(610f, -452f, -282f, 167f), 391f, vec3<bool>(true, true, false)))) + _wgslsmith_div_f32(-217f, func_1(Struct_1(vec3<u32>(56089u, u_input.d, u_input.b), vec4<f32>(1000f, 704f, -983f, 583f), -161f, vec3<bool>(true, true, false))).b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1758f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-562f, 229f)) + -725f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, -765f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(823f, 2289f)), _wgslsmith_f_op_f32(step(528f, -664f))))))));
    var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-306f, -2023f), -333f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1657f - -999f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1850f, 1435f) * _wgslsmith_f_op_f32(-427f - -1146f)), true)))), Struct_1(~(vec3<u32>(0u, u_input.b, u_input.d) & vec3<u32>(49309u, u_input.b, 0u)) & ~vec3<u32>(u_input.a.x, u_input.b, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1306f, -783f, _wgslsmith_f_op_f32(861f - -1777f), _wgslsmith_div_f32(-243f, -705f))), -1000f, vec3<bool>(true, true, true))));
    let var_1 = Struct_1(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(44886u, _wgslsmith_clamp_u32(u_input.a.x, 26741u, 857u)), u_input.d), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2082f, 1270f, 599f, -425f), vec4<f32>(699f, -547f, -215f, -780f))), vec4<f32>(1894f, -1000f, 223f, 931f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-986f, 1000f))), select(func_2(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c, u_input.c), select(u_input.e, u_input.e, vec2<bool>(false, false)), abs(u_input.e))), func_1(Struct_1(~vec3<u32>(0u, u_input.a.x, 43228u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, -343f, -1228f, -486f)), _wgslsmith_f_op_f32(abs(984f)), func_2(vec2<i32>(u_input.e.x, 0i)))).d, true));
    let var_2 = Struct_1(abs(var_1.a), func_1(func_1(var_1)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(-var_1.c)))) + -1233f), func_1(var_1).d);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a) << (1u % 32u), ~_wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.e, vec2<i32>(u_input.c, u_input.e.x)), vec2<i32>(u_input.c, 0i)), ~u_input.e.x, u_input.c);
}

