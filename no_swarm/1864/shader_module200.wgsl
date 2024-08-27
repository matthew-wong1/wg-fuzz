struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1347f, arg_0.c.b), vec2<f32>(arg_0.c.b, arg_0.c.b)));
    let var_1 = !vec2<bool>(arg_0.a.x, true);
    let var_2 = _wgslsmith_clamp_u32(~(~countOneBits(56677u)), arg_0.c.a, _wgslsmith_div_u32(max(arg_0.c.a ^ firstLeadingBit(0u), 0u), 41870u));
    let var_3 = arg_0.a.zy;
    let var_4 = arg_0.c;
    return var_0;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-140f, arg_1.c.b)))))), _wgslsmith_f_op_vec2_f32(func_3(arg_1, arg_1.c.d)), all(vec2<bool>(any(arg_1.a), !arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1095f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-430f * 1475f));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_div_f32(-2170f, _wgslsmith_f_op_f32(var_0.x * 167f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, _wgslsmith_div_f32(arg_1.c.b, 1447f))), vec2<bool>(true, true)))));
    var var_1 = select(!(!(!select(vec4<bool>(true, arg_1.a.x, true, arg_1.a.x), vec4<bool>(true, arg_1.a.x, false, true), false))), !(!vec4<bool>(var_0.x > -276f, !arg_1.a.x, arg_1.d.x < 1u, arg_1.a.x)), true);
    var var_2 = false;
    return arg_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    var var_0 = arg_0.b;
    var var_1 = false;
    var_1 = true;
    let var_2 = ~_wgslsmith_mod_u32(1u | arg_2.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a | 36786u, ~arg_0.c.x), arg_0.c.yx));
    return all(!vec2<bool>(true, 1i <= u_input.d));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1245f))), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(select(true, true, true), true, any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_4(func_2(select(4294967295u, 4294967295u, true), Struct_3(vec3<bool>(false, false, false), u_input.a, Struct_2(28215u, -1475f, vec3<u32>(6233u, 747u, 0u), Struct_1(u_input.a.yy, vec3<i32>(3525i, 18264i, u_input.b))), vec3<u32>(21738u, 75490u, 0u))), u_input.a.xy, func_2(_wgslsmith_mod_u32(4294967295u, 4294967295u), Struct_3(vec3<bool>(true, true, false), u_input.a, Struct_2(0u, 1201f, vec3<u32>(26140u, 4294967295u, 33083u), Struct_1(u_input.a.yz, vec3<i32>(u_input.c, u_input.d, -1i))), vec3<u32>(0u, 37975u, 4825u))))), false, Struct_2(16023u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec3<bool>(false, false, false), vec4<i32>(2147483647i, 16412i, u_input.c, -1i), Struct_2(0u, -2098f, vec3<u32>(4294967295u, 0u, 0u), Struct_1(u_input.a.wx, u_input.a.xzx)), vec3<u32>(24673u, 0u, 70458u)), Struct_1(vec2<i32>(-10352i, 0i), u_input.a.xwz))).x))), func_2(53555u, Struct_3(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), -vec4<i32>(0i, u_input.c, 34958i, u_input.a.x), func_2(71433u, Struct_3(vec3<bool>(false, false, false), vec4<i32>(0i, u_input.d, u_input.b, -16947i), Struct_2(4294967295u, 757f, vec3<u32>(4294967295u, 43103u, 13484u), Struct_1(u_input.a.ww, vec3<i32>(-16700i, 879i, 24785i))), vec3<u32>(39040u, 24893u, 4701u))), max(vec3<u32>(4294967295u, 0u, 4738u), vec3<u32>(4294967295u, 11875u, 76734u)))).c, Struct_1(vec2<i32>(_wgslsmith_sub_i32(u_input.d, u_input.a.x), -u_input.c), u_input.a.xxz)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(abs(0u), firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(1u, 4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(43259u, 0u), vec2<u32>(25431u, 0u)))), vec4<u32>(~86827u, firstTrailingBit(82107u), ~_wgslsmith_mult_u32(1u, 12909u), ~82593u)));
    var var_1 = func_2(var_0.e, Struct_3(vec3<bool>(var_0.b.x, any(select(vec4<bool>(false, var_0.b.x, false, true), vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.c, var_0.c, false, true))), false), min(u_input.a, select(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 1i, var_0.d.d.b.x, 18830i)), abs(u_input.a), select(vec4<bool>(true, var_0.c, false, true), vec4<bool>(true, false, true, var_0.c), false))), func_2(var_0.e, Struct_3(select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(false, var_0.b.x, true), false), ~vec4<i32>(var_0.d.d.b.x, var_0.d.d.a.x, -1i, u_input.b), func_2(var_0.e, Struct_3(vec3<bool>(var_0.c, true, true), vec4<i32>(var_0.d.d.b.x, var_0.d.d.b.x, var_0.d.d.b.x, var_0.d.d.a.x), var_0.d, vec3<u32>(var_0.e, var_0.d.c.x, 38392u))), ~var_0.d.c)), var_0.d.c)).d;
    let var_2 = 1i;
    return Struct_1(vec2<i32>(2147483647i, -var_0.d.d.a.x), ~_wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(var_1.b, u_input.a.ywx), ~var_1.b & var_0.d.d.b));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec4<f32> {
    let var_0 = abs(vec4<u32>(arg_1, _wgslsmith_clamp_u32(~(~arg_1), ~arg_1, min(~arg_1, 5793u)), arg_1, _wgslsmith_div_u32(~0u, abs(arg_1 >> (0u % 32u)))));
    let var_1 = abs(u_input.a.x);
    let var_2 = true;
    let var_3 = _wgslsmith_mult_vec4_u32(~(~var_0), vec4<u32>(72905u ^ (abs(var_0.x) >> (~84995u % 32u)), select((arg_1 << (var_0.x % 32u)) & (var_0.x | arg_1), arg_1, true), 14143u, 4294967295u));
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(max(u_input.c, u_input.b) >> (firstTrailingBit(~20071u) % 32u), select(u_input.a.x, arg_0.b.x, var_2) | 1i, var_1, -((-1i & arg_0.b.x) >> (16415u % 32u))), vec4<i32>(arg_0.a.x, arg_0.a.x, -2147483647i, 2147483647i));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(524f, arg_2, var_2))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 974f, 339f)), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 + 1322f)))), var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-1i, -(i32(-1i) * -4856i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1093f, -1637f, -836f, 222f))) + _wgslsmith_div_vec4_f32(vec4<f32>(815f, -1378f, 401f, -852f), vec4<f32>(-824f, -797f, -1000f, 919f))) - _wgslsmith_f_op_vec4_f32(func_5(func_1(), ~0u, _wgslsmith_div_f32(-1000f, 640f)))), vec4<f32>(377f, -1000f, -779f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1814f, -351f) * -2001f))));
    let var_2 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, true)))));
    var_0 = reverseBits(2147483647i);
    let var_3 = Struct_2(_wgslsmith_mult_u32(~firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(22700u, 0u, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(86777u, 84202u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(4294967295u, 1u, 59847u, 0u))) & max(1u, ~62562u)), var_1.x, ~abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(0u, 4294967295u, 27706u), vec3<u32>(0u, 1u, 5974u)), vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 0u)))), Struct_1(countOneBits(vec2<i32>(1i, 1i)) | _wgslsmith_mod_vec2_i32(-u_input.a.xx, vec2<i32>(u_input.b, 5649i)), reverseBits(_wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, 0i, u_input.c)), ~vec3<i32>(u_input.b, -15871i, -2147483647i)))));
    let var_4 = reverseBits(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_3.c.x, 35187u, var_3.a, var_3.a)), vec4<u32>(var_3.c.x, var_3.a, _wgslsmith_mod_u32(7732u, var_3.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.x, 104028u, var_3.a), var_3.c))));
    let var_5 = Struct_3(!(!vec3<bool>(false, any(vec3<bool>(var_2, true, false)), true)), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a), Struct_2(34339u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), ~var_4.zwz, Struct_1(vec2<i32>(min(u_input.c, 1i), -1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, var_3.d.a.x), vec3<i32>(var_3.d.b.x, var_3.d.a.x, -1649i)))), ~min(_wgslsmith_clamp_vec3_u32(~var_3.c, vec3<u32>(0u, 15256u, var_4.x), ~var_4.zwy), var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_3.c);
}

