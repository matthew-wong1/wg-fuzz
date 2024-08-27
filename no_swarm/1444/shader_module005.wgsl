struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = Struct_5(reverseBits(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), ~u_input.d.zzw), u_input.d.wyy, select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), all(vec4<bool>(false, false, false, true))))), Struct_4(Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_mult_i32(abs(u_input.a), 37879i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, 1399f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(195f, arg_0, -1947f) * vec3<f32>(394f, -735f, arg_0))))));
    var_0 = Struct_5(~abs(firstLeadingBit(abs(vec3<u32>(var_0.a.x, var_0.a.x, 30912u)))), var_0.b);
    var_0 = Struct_5(~var_0.a, Struct_4(var_0.b.a, 1i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-704f, 798f, _wgslsmith_f_op_f32(f32(-1f) * -1130f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1135f, -852f, arg_1)) - var_0.b.c)))));
    var var_1 = _wgslsmith_f_op_f32(sign(-2577f));
    let var_2 = -var_0.b.b;
    return _wgslsmith_f_op_f32(min(var_0.b.c.x, _wgslsmith_f_op_f32(ceil(-1000f))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), 1272f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f));
    let var_1 = Struct_4(Struct_2(vec3<bool>(true, true, true)), 0i, vec3<f32>(321f, 241f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-559f + -448f), -1267f))))));
    let var_2 = vec4<bool>(any(vec4<bool>(false, !(var_1.c.x < 690f), var_1.a.a.x, var_1.a.a.x)), var_1.c.x >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.c.x)))), any(vec2<bool>(select(1u, u_input.b, var_1.a.a.x) <= 9235u, all(!vec3<bool>(false, true, var_1.a.a.x)))), var_1.a.a.x);
    let var_3 = var_1.a;
    return Struct_5(select(_wgslsmith_add_vec3_u32(u_input.d.wxz << (vec3<u32>(u_input.b, 28287u, u_input.b) % vec3<u32>(32u)), u_input.d.zzy | vec3<u32>(u_input.d.x, 51134u, 0u)), vec3<u32>(abs(0u), ~4294967295u, u_input.b | 21573u), false) >> (countOneBits(u_input.d.yzx) % vec3<u32>(32u)), var_1);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(449f * arg_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1804f), -2037f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(arg_0.b.c.x, -1991f, _wgslsmith_f_op_f32(select(arg_1.c.x, arg_0.b.c.x, true)), _wgslsmith_f_op_f32(-arg_0.b.c.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -144f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(334f, -292f), _wgslsmith_f_op_f32(max(554f, arg_1.c.x)))), 1f) + vec4<f32>(_wgslsmith_f_op_f32(181f * _wgslsmith_div_f32(1707f, -185f)), arg_0.b.c.x, _wgslsmith_f_op_f32(-arg_0.b.c.x), -1044f)));
    let var_1 = -_wgslsmith_mod_i32(1i, ~_wgslsmith_add_i32(arg_1.b, arg_0.b.b));
    var var_2 = Struct_3(func_2().b.a);
    var_2 = Struct_3(func_2().b.a);
    var_2 = Struct_3(Struct_2(arg_2.a));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(func_2().a, vec3<u32>(countOneBits(u_input.d.x), firstTrailingBit(27765u), arg_0.a.x)) ^ u_input.d.www, u_input.d.wyx);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = vec2<bool>(arg_0.a.a.x, arg_0.a.a.x | (~(u_input.b << (35717u % 32u)) > ~92107u));
    let var_1 = Struct_5(func_4(func_2(), Struct_4(Struct_2(vec3<bool>(true, true, true)), arg_1.x, vec3<f32>(_wgslsmith_div_f32(-524f, 1088f), _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(trunc(-135f)))), arg_0.a), Struct_4(arg_0.a, 1i, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1449f), -1139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1132f - -1870f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f * 323f) + func_2().b.c.x))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.x * var_1.b.c.x)), _wgslsmith_f_op_f32(func_3(var_1.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -211f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c.x, 1000f, var_1.b.c.x, var_1.b.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.c.x, 383f, var_1.b.c.x, var_1.b.c.x), vec4<f32>(var_1.b.c.x, var_1.b.c.x, 191f, var_1.b.c.x), var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(414f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.c.x, var_1.b.c.x, arg_0.a.a.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(var_1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.c.x))))), _wgslsmith_f_op_f32(var_1.b.c.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.c.x)))), var_1.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -499f;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_2(vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))))), select(vec4<i32>(countOneBits(-2147483647i), u_input.c, -33163i, u_input.a), vec4<i32>(~(~(-16206i)), -_wgslsmith_mod_i32(u_input.c, -2147483647i), -5268i, _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(u_input.a, u_input.a))), true)));
    let var_2 = _wgslsmith_div_vec3_f32(var_1.xwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1226f, 1273f)), var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - -1000f), _wgslsmith_f_op_f32(-var_1.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_3(func_2().b.a), vec4<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) << (u_input.d.yyz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -19240i, 23422i), vec3<i32>(u_input.a, u_input.a, u_input.c))), u_input.a), -2486i, ~47163i))).x;
    var_0 = var_2.x;
    let var_3 = (~42746u | u_input.b) == ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.zyw, vec3<u32>(u_input.d.x, 22122u, u_input.b) >> (u_input.d.xzy % vec3<u32>(32u))), reverseBits(vec3<u32>(61722u, 1u, 4294967295u)) ^ u_input.d.zyz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, u_input.a, -39389i, ~(-(~u_input.c))), vec2<u32>(~u_input.d.x, ~u_input.b), var_2.x);
}

