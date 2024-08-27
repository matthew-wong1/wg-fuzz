struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<bool> {
    let var_0 = 24000i;
    let var_1 = Struct_3(max(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.d.x, u_input.d.x, 0i), vec4<i32>(var_0, var_0, -51579i, -54333i)), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(31709i, var_0)), -7190i, -2147483647i), vec4<i32>(var_0 << (4294967295u % 32u), _wgslsmith_mod_i32(5314i, -1i), 1i, 0i), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.d.x, 0i, u_input.d.x, var_0)), min(firstTrailingBit(vec4<i32>(u_input.d.x, var_0, u_input.d.x, u_input.d.x)), vec4<i32>(-1i, 17225i, -20576i, u_input.d.x) ^ vec4<i32>(u_input.d.x, 2147483647i, var_0, var_0)))), true);
    let var_2 = var_1;
    var var_3 = var_1.a.zwz;
    var_3 = vec3<i32>(_wgslsmith_mult_i32(min(i32(-1i) * -24296i, ~var_3.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2159i), ~var_1.a.zw), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0, u_input.d.x), vec2<i32>(28790i, var_2.a.x)), vec2<i32>(0i, var_3.x))), min(~firstLeadingBit(-var_1.a.x), countOneBits(_wgslsmith_clamp_i32(2147483647i, -1i, 0i))), min(1i, ~_wgslsmith_mod_i32(reverseBits(var_3.x), _wgslsmith_clamp_i32(var_0, -39489i, var_2.a.x))));
    return !select(!select(!vec3<bool>(var_2.b, var_1.b, var_1.b), !vec3<bool>(true, true, var_2.b), false), !vec3<bool>(var_1.b, var_1.b, any(vec2<bool>(true, false))), !(!vec3<bool>(var_2.b, var_2.b, false)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_0);
    let var_1 = firstTrailingBit(u_input.d);
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = _wgslsmith_add_vec3_u32(u_input.b, min(_wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(u_input.c, u_input.e, ~u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, min(u_input.a.x, u_input.c)), vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.b.x), 1u, u_input.c))));
    return select(!vec3<bool>(true, var_0.a, any(vec4<bool>(false, true, var_2.a, true))), select(vec3<bool>(true, true, var_2.a | all(vec3<bool>(var_0.a, true, true))), func_3(), var_2.a), vec3<bool>(arg_0, any(select(vec2<bool>(var_2.a, var_0.a), vec2<bool>(true, true), vec2<bool>(var_0.a, arg_0))), false));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = 252f;
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mod_vec4_i32(reverseBits(max(-vec4<i32>(-17716i, 47796i, u_input.d.x, 0i), min(vec4<i32>(-1i, u_input.d.x, -4254i, -26133i), vec4<i32>(21752i, u_input.d.x, 24289i, u_input.d.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 1u, 1694u, u_input.c) ^ vec4<u32>(u_input.b.x, 17804u, 37869u, 1u), firstTrailingBit(vec4<u32>(u_input.e, u_input.b.x, 25350u, u_input.c))) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-(~vec4<i32>(var_1, 1i, u_input.d.x, -2147483647i)), max(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, u_input.d.x, u_input.d.x, 0i), vec4<i32>(-2147483647i, var_1, -76419i, var_1)), max(vec4<i32>(1i, 1i, -1i, 42894i), vec4<i32>(-1i, 17328i, 874i, -46901i)))) | vec4<i32>(reverseBits(u_input.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, 51417i), vec3<i32>(-37098i, var_1, 2147483647i), vec3<i32>(-1i, var_1, 63479i)), select(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(2147483647i, u_input.d.x, -1i), arg_1.x)), 2147483647i, -49808i));
    var var_3 = Struct_4(-8888i & u_input.d.x, arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1000f))))) * vec2<f32>(-298f, _wgslsmith_f_op_f32(f32(-1f) * -1831f))), var_2.zzx | ~(-var_2.wwy), var_2);
    var_3 = Struct_4(select(~(var_3.d.x & 2147483647i) >> (u_input.c % 32u), -_wgslsmith_add_i32(var_2.x, _wgslsmith_sub_i32(-1i, u_input.d.x)), var_3.b), false, vec2<f32>(var_3.c.x, var_3.c.x), vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(var_3.e.yzz, var_2.zwy)), vec3<i32>(u_input.d.x << (u_input.c % 32u), _wgslsmith_add_i32(u_input.d.x, var_1), -var_2.x)), 24735i, var_2.x), _wgslsmith_div_vec4_i32(var_2, ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 2147483647i, -1i, var_3.d.x), var_3.e) << (~abs(vec4<u32>(4294967295u, 7769u, 89244u, 1u)) % vec4<u32>(32u))));
    return Struct_1(true);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    let var_0 = func_4(712f, func_2(false, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(307f - -921f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, arg_0.x))), arg_0.x, -776f)));
    var var_1 = min(vec3<u32>(firstLeadingBit(u_input.e ^ firstLeadingBit(u_input.b.x)), u_input.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 6989u, 0u) | u_input.b, u_input.b), u_input.b.x)), u_input.b);
    var_1 = countOneBits(~vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, var_1.x, var_1.x))), var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.c, 0u) | vec4<u32>(1u, 0u, var_1.x, 4294967295u), ~vec4<u32>(u_input.e, u_input.c, 29290u, u_input.a.x))));
    var var_2 = _wgslsmith_div_vec3_i32(~(-(~vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x))), vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x | -59422i));
    var var_3 = Struct_2(Struct_1(!(true == var_0.a)), 8400u, var_0);
    return 12309u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(40745u, _wgslsmith_add_u32(~abs(76790u), _wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_mult_u32(u_input.b.x, ~4294967295u)), vec3<u32>(abs(_wgslsmith_add_u32(~u_input.c, ~u_input.e)), func_1(vec3<f32>(1f, 1f, 1f), true), ~57527u));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1754f))) - _wgslsmith_f_op_f32(-396f + 1000f)), func_2(!func_4(-1116f, vec3<bool>(false, false, true)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -295f, -1000f, 1418f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(705f, -1000f, 2049f, 1399f))))));
    var var_2 = -2147483647i;
    var var_3 = -2147483647i;
    var var_4 = 19727u;
    let var_5 = Struct_4(min(max(0i, -1i), u_input.d.x), -14110i > ~_wgslsmith_add_i32(-u_input.d.x, _wgslsmith_clamp_i32(792i, 1789i, -1i)), vec2<f32>(172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1061f, -1253f)), _wgslsmith_f_op_f32(max(230f, -139f)))))), vec3<i32>(u_input.d.x, -u_input.d.x, -24810i) & abs(abs(-vec3<i32>(2147483647i, -64716i, 32192i))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-44177i, 2147483647i, u_input.d.x, -2147483647i), select(vec4<i32>(38354i, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, 8523i, -1i), var_1.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(13791i, u_input.d.x, 1i, 25409i), vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i)) >> (select(vec4<u32>(48184u, var_0.x, 1u, var_0.x), vec4<u32>(u_input.e, 1u, 0u, var_0.x), var_1.a) % vec4<u32>(32u))));
    var_4 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, countOneBits(-(-u_input.d.x << (abs(u_input.e) % 32u))), var_5.c);
}

