struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> vec2<u32> {
    var var_0 = countOneBits(~1u);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -950f)));
    global0 = vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, arg_1), ~arg_2.xyy));
    var_0 = ~71373u;
    var var_2 = Struct_4(reverseBits(abs(~_wgslsmith_div_vec2_i32(arg_0.b, arg_0.b))), Struct_1(abs(arg_2.zz), vec2<bool>(true, arg_0.a), arg_2));
    return select(firstTrailingBit(var_2.b.a), vec2<u32>(~60993u | ~var_2.b.a.x, firstTrailingBit(u_input.b)), all(select(!vec2<bool>(false, arg_0.a), vec2<bool>(var_2.b.b.x, arg_0.a), !vec2<bool>(var_2.b.b.x, var_2.b.b.x)))) | var_2.b.a;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> i32 {
    global0 = (firstTrailingBit(~vec2<u32>(global0.x, 1419u)) & firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(u_input.b, global0.x)))) | max(firstTrailingBit(vec2<u32>(0u, ~global0.x)), ~(~(vec2<u32>(u_input.b, global0.x) & vec2<u32>(36525u, 37193u))));
    global0 = max(min(select(vec2<u32>(u_input.b << (u_input.b % 32u), global0.x), ~firstTrailingBit(vec2<u32>(1u, 0u)), !(!vec2<bool>(arg_1, arg_0))), vec2<u32>(14689u, global0.x)), vec2<u32>(12160u >> (0u % 32u), 1u));
    let var_0 = Struct_5(!arg_0, ~36322u, -1i);
    global0 = ~(~_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(21887u, global0.x)), ~vec2<u32>(69378u, var_0.b), ~vec2<u32>(1u, var_0.b))) ^ vec2<u32>(_wgslsmith_mod_u32(global0.x, ~(var_0.b >> (41623u % 32u))), global0.x);
    global0 = max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, global0.x), select(vec2<u32>(countOneBits(var_0.b), max(u_input.b, global0.x)), vec2<u32>(~63450u, ~var_0.b), true)), func_3(Struct_2(false, min(_wgslsmith_div_vec2_i32(u_input.c.xy, vec2<i32>(14214i, 2147483647i)), vec2<i32>(2147483647i, 11220i))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x), max(vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(46097u, u_input.b, 1u))), vec4<u32>(reverseBits(81934u) << (global0.x % 32u), _wgslsmith_div_u32(u_input.b, 4294967295u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global0.x, 21682u))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -62515i, 1i, 2147483647i), vec4<i32>(u_input.d, u_input.c.x, var_0.c, u_input.a.x)))));
    return var_0.c;
}

fn func_1() -> f32 {
    let var_0 = max(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x) ^ -u_input.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-18989i, 1i, 0i), vec3<i32>(-1i, u_input.c.x, u_input.c.x))), 0i);
    let var_1 = -vec4<i32>(-func_2(true, true, _wgslsmith_f_op_f32(1130f - -1432f)), -u_input.a.x, -1i, 0i);
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, _wgslsmith_sub_u32(96049u, u_input.b)), reverseBits(max(vec2<u32>(1u, 4294967295u), vec2<u32>(global0.x, 76496u)) ^ vec2<u32>(39381u, 0u))), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), ~vec4<u32>(u_input.b, _wgslsmith_mod_u32(~1u, select(global0.x, 38858u, false)), u_input.b, _wgslsmith_mult_u32(func_3(Struct_2(true, u_input.c.xx), 0u, vec4<u32>(global0.x, global0.x, global0.x, global0.x), 52929i).x, global0.x)));
    global0 = vec2<u32>(firstLeadingBit(global0.x), func_3(Struct_2(true, var_1.ww), 54727u, ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, 21433u, u_input.b, 19927u)), vec4<u32>(var_2.a.x, global0.x, u_input.b, u_input.b)), 38422i).x);
    var var_3 = firstTrailingBit(~reverseBits(func_3(Struct_2(var_2.b.x, vec2<i32>(var_1.x, 12542i)), var_2.a.x, ~vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), func_2(var_2.b.x, var_2.b.x, 284f)).x));
    return 1000f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = ~select(global0.x, ~global0.x << (1u % 32u), true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(-arg_1.x))));
    var_1 = arg_1.x;
    return Struct_4(vec2<i32>(0i, -52366i), Struct_1(func_3(Struct_2(all(vec4<bool>(false, true, false, true)), min(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, 0i))), abs(global0.x), vec4<u32>(u_input.b, ~26120u, var_0, ~29577u), u_input.d), vec2<bool>(true, true), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u | var_0, firstTrailingBit(67422u), select(var_0, 94890u, false), _wgslsmith_div_u32(global0.x, 18596u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 39399u, var_0, 90214u) ^ vec4<u32>(var_0, 0u, 40734u, 41487u), ~vec4<u32>(var_0, u_input.b, 0u, 25646u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~(vec2<u32>(u_input.b, u_input.b) & ~vec2<u32>(1u, 57201u))));
    var var_0 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(f32(-1f) * -530f), -1113f), vec3<f32>(321f, 1461f, _wgslsmith_f_op_f32(-497f - 425f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), -420f))));
    let var_1 = !vec3<bool>(var_0.b.b.x, any(!var_0.b.b), firstLeadingBit(var_0.b.c.x) >= 4294967295u);
    let var_2 = vec2<bool>(var_1.x, true);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2134f, -1000f, 384f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, 914f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1285f, -209f, 757f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, 1118f, 1515f)))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 272f, 268f)), vec2<f32>(-1478f, -862f)).b.b.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-262f, 761f, _wgslsmith_f_op_f32(round(511f))))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1908f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f), 1081f)))));
    var_3 = Struct_4(~vec2<i32>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1598f, 2385f, -1859f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1023f, 1169f), vec2<f32>(-683f, -921f)))).a.x, i32(-1i) * -2147483647i), func_4(vec3<f32>(_wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(select(1485f, 300f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f) + _wgslsmith_f_op_f32(-181f + 186f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1083f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(232f, 243f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1443f, 1000f) - vec2<f32>(186f, 1172f)))))).b);
    var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(-1164f)), -416f, -171f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-554f, 1832f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -23557i, 16149i, u_input.a.x), vec4<i32>(-19718i, -4999i, 2147483647i, var_3.a.x), vec4<i32>(var_0.a.x, var_0.a.x, var_3.a.x, u_input.d))), firstTrailingBit(vec4<i32>(firstLeadingBit(36561i), _wgslsmith_sub_i32(-1i, var_3.a.x), var_0.a.x, -10718i))), -1406f, max(0i, 1i | var_3.a.x) >> ((abs(81048u) & u_input.b) % 32u), -1403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

