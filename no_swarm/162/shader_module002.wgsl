struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    return _wgslsmith_mod_vec3_u32(~(~firstLeadingBit(min(vec3<u32>(global1.b, global1.b, 11669u), vec3<u32>(arg_0.b, arg_0.b, 32194u)))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(arg_0.b, max(23563u, 1u), 0u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global1.b, arg_0.b), vec3<u32>(3365u, 21348u, 37175u), vec3<u32>(4294967295u, 2806u, 1u)) | firstTrailingBit(vec3<u32>(global1.b, global1.b, 5611u))), vec3<u32>(1u >> (~global1.b % 32u), ~arg_0.b << (28736u % 32u), arg_0.b)));
}

fn func_2() -> vec3<u32> {
    return func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, 2993f, global1.d, 1210f), vec4<f32>(global1.d, global1.d, global1.d, -983f), vec4<bool>(global1.c, global1.c, true, global1.c))))), ~(~0u), global1.c, 335f));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = abs(vec3<i32>(-select(_wgslsmith_dot_vec4_i32(u_input.b, u_input.a), -53316i, true), firstLeadingBit(~(~1i)), ~max(-u_input.c.x, -11606i >> (arg_2 % 32u))));
    global0 = -383f;
    let var_1 = vec3<u32>(~(~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, arg_0.x, 36121u))), arg_0.x, 32213u);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.xzw + vec3<f32>(global1.a.x, 1000f, global1.a.x)), _wgslsmith_f_op_vec3_f32(-global1.a.wzz)))), _wgslsmith_f_op_vec3_f32(-global1.a.zzx))), global1.a.zxx, select(!vec3<bool>(any(vec3<bool>(true, global1.c, false)), global1.c, false), select(vec3<bool>(select(true, true, global1.c), any(vec4<bool>(true, global1.c, global1.c, global1.c)), global1.c), select(!vec3<bool>(true, global1.c, global1.c), select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(global1.c, global1.c, true), global1.c), vec3<bool>(true, true, true)), true), global1.c)));
    var var_3 = -select((vec4<i32>(var_0.x, u_input.a.x, var_0.x, -7685i) << (reverseBits(vec4<u32>(0u, 36481u, global1.b, var_1.x)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.x, 57999u, 0u, arg_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, 4294967295u), vec4<u32>(1u, 0u, arg_0.x, 1u))) % vec4<u32>(32u)), select(vec4<i32>(-u_input.a.x, ~(-6374i), 2147483647i, var_0.x ^ u_input.c.x), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.a), vec4<i32>(-53163i, 0i, -22489i, -1i)), !(!vec4<bool>(global1.c, false, true, true))), global1.c != global1.c);
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, global1.a))))), 73287u, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(global1.a.x)))))));
}

fn func_1() -> bool {
    global1 = func_4(firstTrailingBit(_wgslsmith_add_vec3_u32(~func_2(), _wgslsmith_add_vec3_u32(~vec3<u32>(global1.b, 33731u, global1.b), _wgslsmith_add_vec3_u32(vec3<u32>(30403u, 0u, 1746u), vec3<u32>(global1.b, 0u, 1u))))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(30989u ^ global1.b, _wgslsmith_add_u32(global1.b, global1.b)), global1.b), firstTrailingBit(~countOneBits(global1.b)) << (~0u % 32u));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.a + global1.a), _wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, -128f, global1.a.x, global1.d)), _wgslsmith_mod_u32(64083u, global1.b) <= _wgslsmith_div_u32(0u, global1.b))))), _wgslsmith_add_u32(~_wgslsmith_add_u32(global1.b, global1.b << (0u % 32u)), firstLeadingBit(global1.b)), global1.c & all(vec3<bool>(global1.c, all(vec3<bool>(global1.c, global1.c, global1.c)), global1.c)), -711f);
    let var_0 = -vec4<i32>(1197i ^ u_input.a.x, u_input.a.x, -_wgslsmith_mod_i32(u_input.c.x, u_input.a.x), u_input.b.x);
    let var_1 = _wgslsmith_add_u32(func_4(vec3<u32>(~(~18777u), global1.b, 4294967295u), max(~global1.b, reverseBits(global1.b)) ^ ~(~34930u), countOneBits(firstTrailingBit(abs(0u)))).b, abs(~firstLeadingBit(392u)));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * vec4<f32>(506f, _wgslsmith_f_op_f32(min(-589f, global1.a.x)), _wgslsmith_f_op_f32(round(-1211f)), _wgslsmith_f_op_f32(-global1.a.x))), ~28317u, global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(357f)) + _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-global1.d))), vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c.x, var_0.x), -2147483647i), (vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -33900i), vec2<i32>(-57027i, -60768i)), ~var_0.x, -191i, u_input.c.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(69579u, global1.b, 4294967295u, var_1), _wgslsmith_mult_vec4_u32(vec4<u32>(13307u, var_1, global1.b, var_1), vec4<u32>(global1.b, 1u, 4294967295u, var_1)), firstTrailingBit(vec4<u32>(var_1, 65034u, global1.b, global1.b))) % vec4<u32>(32u))) ^ abs(u_input.a), global1.b, vec4<f32>(884f, 1130f, _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(104f)))), 482f));
    return true;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(func_4(vec3<u32>(19938u, global1.b, arg_0), global1.b, _wgslsmith_sub_u32(global1.b, global1.b ^ global1.b)), -(~firstTrailingBit(reverseBits(vec3<i32>(-40879i, u_input.a.x, u_input.a.x)))), ~u_input.b ^ ~u_input.b, ~(reverseBits(max(32572u, 5100u)) | max(~0u, global1.b)), vec4<f32>(-395f, global1.a.x, global1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-global1.a.x))))));
    var var_1 = vec4<u32>(~20934u, select(~(~53222u) << (~(var_0.a.b & arg_0) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18446u), vec2<u32>(global1.b, 0u)) | ~arg_0, !var_0.a.c & !(!arg_1.x)), 91328u, 22215u);
    global0 = global1.a.x;
    let var_2 = func_4(~var_1.zwx, 63832u, arg_0);
    var var_3 = Struct_5(var_1.ww, Struct_4(func_4(func_2(), 9509u, (var_1.x & var_1.x) | countOneBits(0u)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.b.x, u_input.b.x, var_0.b.x), ~(u_input.a.zzy & u_input.c)), var_0.c, _wgslsmith_div_u32(var_0.a.b, abs(global1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_2.a.x, -1254f, -158f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, -488f, 852f, global1.d)))))));
    return func_4(vec3<u32>(firstTrailingBit(~1u), ~(1u & (var_1.x & 55019u)), ~4294967295u), max(global1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(15925u >> (1u % 32u), ~4294967295u, 71535u, _wgslsmith_sub_u32(4294967295u, var_2.b)), vec4<u32>(var_3.b.d ^ 0u, _wgslsmith_mult_u32(global1.b, 6891u), var_3.a.x, _wgslsmith_mod_u32(4294967295u, var_3.a.x)))), _wgslsmith_mod_u32(func_4(var_1.wxy, 44736u, var_2.b).b, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global1.b, vec3<bool>((u_input.b.x & u_input.c.x) >= ~max(u_input.a.x, -48976i), all(vec3<bool>(true, func_1(), global1.c)), false));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(534f))), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-588f)) * global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f - -139f) * func_5(36443u, vec3<bool>(global1.c, true, false)).d))), 6551u, !(!(!global1.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(global1.b, vec3<bool>(false, global1.c, false)).d)))));
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(func_2().yy), abs(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(21961u, global1.b) % vec2<u32>(32u))) >> (~vec2<u32>(global1.b, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.a.x)))) - _wgslsmith_div_f32(-1550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), 1i);
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1270f, 121f), func_4(vec3<u32>(countOneBits(_wgslsmith_sub_u32(global1.b, 1u)), countOneBits(2947u), min(0u, ~99000u)), abs(~43479u >> (global1.b % 32u)), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, global1.b, 112024u), vec3<u32>(var_0.a.x, var_0.a.x, global1.b)), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 19668u, global1.b), vec3<u32>(var_0.a.x, 42445u, 0u))).b | ~_wgslsmith_clamp_u32(80020u, 4294967295u, global1.b)).b, func_4(min(~vec3<u32>(var_0.a.x, 46368u, var_0.a.x), func_2()) ^ func_3(func_4(vec3<u32>(global1.b, var_0.a.x, var_0.a.x), 4294967295u, 83203u)), 78187u, global1.b).c, var_0.b);
    let var_1 = Struct_1(countOneBits(~_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(11395u, 0u))), _wgslsmith_div_f32(func_4(vec3<u32>(0u, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x), ~global1.b), _wgslsmith_clamp_u32(1u, var_0.a.x, 1u), var_0.a.x).a.x, global1.a.x), var_0.c);
    var var_2 = ~vec3<u32>(global1.b, 17740u, func_4(vec3<u32>(4294967295u, global1.b, var_1.a.x), abs(_wgslsmith_mult_u32(var_1.a.x, var_1.a.x)), ~0u).b);
    let var_3 = -min(vec4<i32>(_wgslsmith_div_i32(-31464i, -u_input.c.x), u_input.b.x, i32(-1i) * -1i, abs(-1i)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(334f, global1.a.x, 1000f, var_1.b) - vec4<f32>(593f, global1.a.x, -1934f, 184f))))), _wgslsmith_div_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 0u, 8730u), vec3<u32>(var_1.a.x, global1.b, 4294967295u))), vec3<u32>(14914u, global1.b, ~(~var_0.a.x))), global1.a.x, 1104f);
}

