struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(6255u, 1u, 92636u), vec3<u32>(62892u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 69633u, 27611u), vec3<u32>(57299u, 68749u, 22312u), vec3<u32>(1u, 37759u, 7317u), vec3<u32>(1u, 4294967295u, 16080u), vec3<u32>(109777u, 1u, 0u), vec3<u32>(6995u, 65863u, 1u), vec3<u32>(0u, 0u, 2522u), vec3<u32>(0u, 1u, 1u), vec3<u32>(29834u, 4253u, 15980u), vec3<u32>(45658u, 0u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 36605u, 0u), vec3<u32>(54328u, 12361u, 1u), vec3<u32>(33442u, 0u, 51488u), vec3<u32>(11026u, 37302u, 13182u), vec3<u32>(1u, 80495u, 26705u), vec3<u32>(1u, 16554u, 9426u), vec3<u32>(0u, 8138u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 49697u, 46925u), vec3<u32>(0u, 57335u, 47748u));

var<private> global1: vec2<i32> = vec2<i32>(-1i, -1i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(all(vec2<bool>(true, !select(false, true, false))), -1327f, Struct_2(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-708f, -1501f, _wgslsmith_f_op_f32(max(151f, 522f))))), Struct_1((vec2<u32>(4294967295u, u_input.b.x) >> (vec2<u32>(35071u, 121790u) % vec2<u32>(32u))) ^ ~u_input.b.yz, true), vec2<bool>(true, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(45103u, 16296u)) >= _wgslsmith_mult_u32(u_input.b.x, 1u)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), u_input.b.x, select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), !vec3<bool>(true, any(vec3<bool>(true, false, true)), false), all(vec2<bool>(true, true))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1077f))) < _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1015f - var_0.b), _wgslsmith_f_op_f32(1172f * var_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - 525f))) * _wgslsmith_f_op_f32(-1428f - _wgslsmith_f_op_f32(round(1460f)))) + _wgslsmith_f_op_f32(-var_0.b)), var_0.c, ~var_0.d, vec3<bool>(var_0.a, var_0.e.x, all(vec4<bool>(true, any(var_0.e), any(vec4<bool>(false, var_0.a, false, true)), var_0.d <= var_0.d))));
    var var_1 = Struct_2(var_0.c.e || true, var_0.c.b, Struct_1(~vec2<u32>(_wgslsmith_add_u32(30870u, 0u), var_0.d), any(select(select(vec4<bool>(var_0.e.x, false, false, var_0.a), vec4<bool>(var_0.e.x, var_0.e.x, var_0.c.a, var_0.c.a), vec4<bool>(var_0.a, true, true, false)), select(vec4<bool>(false, var_0.a, var_0.e.x, var_0.e.x), vec4<bool>(true, var_0.c.e, true, true), vec4<bool>(var_0.e.x, false, true, var_0.a)), !vec4<bool>(false, false, true, var_0.c.d.x)))), select(vec2<bool>(any(var_0.c.d) | (var_0.b > -720f), 16163i > (u_input.a.x & u_input.a.x)), select(vec2<bool>(any(vec3<bool>(var_0.a, false, false)), select(false, var_0.c.c.b, var_0.e.x)), select(var_0.e.zz, vec2<bool>(true, var_0.e.x), select(var_0.c.c.b, var_0.e.x, false)), var_0.e.yx), select(vec2<bool>(var_0.e.x, all(vec2<bool>(var_0.a, var_0.c.c.b))), var_0.c.d, var_0.c.d)), var_0.a);
    var var_2 = Struct_2(!(!var_0.e.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(sign(-1000f)), 1f))), var_1.c, !var_0.e.yz, true);
    var_2 = var_0.c;
    return firstLeadingBit(-19865i);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-803f - -404f), -640f) - vec2<f32>(_wgslsmith_f_op_f32(max(-737f, 765f)), _wgslsmith_f_op_f32(1000f - -1981f)))))));
    global0 = array<vec3<u32>, 24>();
    global1 = countOneBits(_wgslsmith_mult_vec2_i32(-(~u_input.a.zy), u_input.a.yy));
    global1 = vec2<i32>((func_3() | _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 42705i)), vec2<i32>(u_input.a.x, global1.x))) & func_3(), (u_input.a.x << ((~4203u | u_input.b.x) % 32u)) | ~min(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(12509i, 0i, u_input.a.x)), -1i & global1.x));
    global1 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-23662i, global1.x), vec2<i32>(-26873i, global1.x)), u_input.a.xy) ^ vec2<i32>(u_input.a.x, max(select(-1i << (u_input.b.x % 32u), global1.x, false), -24492i));
    return Struct_1(countOneBits(vec2<u32>(~1u, _wgslsmith_div_u32(1u, min(61596u, u_input.b.x)))), true);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> bool {
    let var_0 = firstTrailingBit(global1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(arg_1, arg_1, !select(vec2<bool>(true, false), vec2<bool>(true, false), false))))));
    let var_2 = func_2();
    global1 = vec2<i32>(~_wgslsmith_sub_i32(abs(var_0 | var_0), -var_0), min(var_0 << (abs(u_input.b.x) % 32u), _wgslsmith_mod_i32(max(1i, select(u_input.a.x, 1i, var_2.b)), abs(var_0))));
    return (1i < firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zy))) || (all(!(!vec3<bool>(true, false, var_2.b))) || false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 72888u;
    let var_1 = Struct_3(true, -171f, Struct_2(!(!func_1(-710f, vec2<f32>(1559f, 348f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, 660f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(248f, -122f, -1046f), vec3<f32>(909f, -438f, -1415f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-171f, -1304f, 210f) - vec3<f32>(-1152f, 185f, 522f)))), func_2(), !vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), true), ~20844u, select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, func_2().b, true), !vec3<bool>(false, false, all(vec2<bool>(false, false)))));
    global1 = _wgslsmith_add_vec2_i32(u_input.a.yx, vec2<i32>(-u_input.a.x, global1.x));
    global0 = array<vec3<u32>, 24>();
    var var_2 = var_1;
    var var_3 = var_1;
    global1 = vec2<i32>(global1.x, (((1i >> (var_1.d % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(19957i, 2147483647i, -8712i), vec3<i32>(2147483647i, global1.x, u_input.a.x))) & 11755i) >> (1u % 32u));
    var var_4 = Struct_2(any(vec4<bool>(!(false && var_2.a), func_2().b, func_2().a.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(13819u, u_input.b.x), vec2<u32>(var_3.d, var_3.d)), !var_1.c.c.b | false)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.c.b * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_3.b, -247f) * vec3<f32>(var_3.b, var_2.b, var_1.c.b.x)), _wgslsmith_f_op_vec3_f32(max(var_2.c.b, var_1.c.b))))))), func_2(), !var_1.c.d, var_3.c.a);
    var var_5 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, u_input.a.x), vec4<i32>(1i, -2147483647i, global1.x, global1.x)), firstTrailingBit(vec4<i32>(-17492i, global1.x, 1i, -1i))), firstTrailingBit(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 49642i), vec4<i32>(14148i, global1.x, global1.x, u_input.a.x), vec4<bool>(var_1.e.x, var_2.a, false, false)))), vec4<i32>(~min(-6397i, -39591i), u_input.a.x, global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 44335i), vec3<i32>(1i, -8647i, 21786i))) & vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1.x, 17125i, -1i)), vec3<i32>(u_input.a.x, global1.x, global1.x)), u_input.a.x ^ min(global1.x, -2147483647i), ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(reverseBits(firstTrailingBit(-1i))), ~11816i >> (_wgslsmith_mod_u32(1u, var_1.c.c.a.x) % 32u)), var_5.wyx, vec3<i32>(17317i, var_5.x >> (reverseBits(6858u) % 32u), var_5.x) | ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global1.x, var_5.x) & vec3<i32>(var_5.x, global1.x, 8239i), u_input.a), _wgslsmith_f_op_f32(-var_3.c.b.x), u_input.a.x);
}

