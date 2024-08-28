struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_4(-select(u_input.b, vec4<i32>(~33336i, -6211i, ~17925i, u_input.a >> (1u % 32u)), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.b.x >= countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(-2147483647i, u_input.a)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yzw, u_input.b.wyz), u_input.a, u_input.b.x, -1i), u_input.b), vec4<i32>(0i, -34394i >> (1u % 32u), 2147483647i, ~(-1i))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-388f, -460f) - -1560f), 1550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * -426f)), _wgslsmith_f_op_f32(f32(-1f) * -370f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, 863f, 283f, 504f)) * vec4<f32>(-1938f, 126f, _wgslsmith_f_op_f32(f32(-1f) * -818f), -1000f)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), all(vec2<bool>(false, true))), vec4<bool>(any(vec3<bool>(true, true, true)), false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1885f, 1248f)), _wgslsmith_f_op_f32(111f * 1077f))))));
    var var_1 = Struct_4(~vec4<i32>(_wgslsmith_mult_i32(-u_input.a, max(0i, var_0.c)), firstTrailingBit(0i), ~u_input.b.x, -1i), vec4<bool>(!any(!var_0.b), var_0.b.x & (var_0.d.x < _wgslsmith_div_f32(-1599f, -1000f)), ((var_0.a.x & -1i) << (4294967295u % 32u)) < -1i, var_0.b.x && all(!var_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, min(-u_input.b.x, firstTrailingBit(1i)), var_0.c), u_input.b.zxx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, 1121f, 2361f, 1822f))), vec4<f32>(252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(490f - var_0.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.e)), _wgslsmith_f_op_f32(-1208f + -1127f)))), !var_0.b.x)), var_0.d.x);
    global0 = 0u;
    var var_2 = ~(~(firstTrailingBit(vec4<u32>(1u, 2202u, 1u, 4588u)) | ~vec4<u32>(4294967295u, 1u, 66592u, 5738u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)) ^ ~(~34920u), ~4294967295u, _wgslsmith_mult_u32(4294967295u, 0u), 8474u);
    var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(34308u, 41714u), var_2.x, ~102446u, ~min(var_2.x, ~15078u)));
    return var_1.e;
}

fn func_2() -> Struct_4 {
    global0 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, ~_wgslsmith_mult_u32(19885u, 1u)), max(~_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 107756u, 1u), vec4<u32>(1u, 33522u, 1u, 27513u)))));
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = u_input.b.xx;
    return Struct_4(_wgslsmith_mult_vec4_i32(u_input.b, -_wgslsmith_add_vec4_i32(u_input.b << (vec4<u32>(64719u, 2921u, 10032u, 1u) % vec4<u32>(32u)), -u_input.b)), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))) || (-117f < _wgslsmith_f_op_f32(select(-979f, -1598f, true))), select(true, true, false), false, true), 2147483647i, vec4<f32>(-714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-484f, _wgslsmith_f_op_f32(1038f * -564f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, -943f))), _wgslsmith_div_f32(-935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(991f)) * -430f)), _wgslsmith_f_op_f32(abs(-379f))), 2081f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = any(!var_0.b);
    var_1 = true;
    let var_2 = Struct_4(~vec4<i32>(func_2().a.x, ~(i32(-1i) * -2147483647i), -27409i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.c, var_0.c) ^ u_input.b.wyx, _wgslsmith_sub_vec3_i32(u_input.b.yxw, vec3<i32>(-1i, -48982i, 0i)))), !vec4<bool>(func_2().b.x, true, func_2().b.x, select(true, any(var_0.b.xx), true)), _wgslsmith_dot_vec3_i32(u_input.b.xwz, u_input.b.yxy ^ countOneBits(u_input.b.ywz)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e))), _wgslsmith_f_op_f32(-arg_0)), arg_0, arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f))))), 1000f);
    let var_3 = var_2.a.zz;
    return Struct_1(func_2().b.xyw, _wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2().e))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = select(vec4<bool>(!select(true, all(vec3<bool>(true, arg_1.a.x, arg_1.a.x)), true), false, arg_1.a.x, true), vec4<bool>(!arg_1.a.x, any(vec2<bool>(!arg_1.a.x, func_2().b.x)), any(!(!arg_1.a.zx)), !(!any(vec2<bool>(true, true)))), !(!arg_1.a.x & any(arg_1.a)));
    var var_1 = min(min(vec2<u32>(10486u, arg_0), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(arg_0 << (22288u % 32u), _wgslsmith_mult_u32(arg_0, 7868u)))), vec2<u32>(~(arg_0 << (1u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, 46693u), ~vec3<u32>(1u, 1u, arg_0))));
    var_1 = firstTrailingBit(max(firstLeadingBit(vec2<u32>(1u, arg_0)) >> (~vec2<u32>(48949u, var_1.x) % vec2<u32>(32u)), vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(63362u, 114222u), vec2<u32>(arg_0, var_1.x)))) | vec2<u32>(_wgslsmith_div_u32(4294967295u, var_1.x >> (30188u % 32u)), abs(select(0u, 4294967295u, false))));
    let var_2 = Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(150f, -1838f, arg_1.c, arg_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, arg_1.c, -824f, arg_1.b)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1358f, -1000f, -291f, -709f)))), Struct_2(func_1(_wgslsmith_f_op_f32(sign(func_1(arg_1.b).b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) + arg_1.b))), arg_1.a.x);
    var var_3 = Struct_3(Struct_1(var_2.a.a, -167f, arg_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(arg_1.c, arg_1.b, var_0.x)), _wgslsmith_f_op_f32(-var_2.c.a.b), _wgslsmith_f_op_f32(1699f * arg_1.b)) * var_2.b) + vec4<f32>(_wgslsmith_f_op_f32(-566f - arg_1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-362f)))), _wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))), !arg_1.a.x);
    return -3902i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_clamp_u32(~11827u, ~0u, _wgslsmith_add_u32(1975u, 0u)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-516f, 1008f)) * _wgslsmith_f_op_f32(-472f + -1616f)))));
    var var_1 = !(!vec2<bool>(true, any(vec3<bool>(false, false, false)) | false));
    var_1 = vec2<bool>(var_1.x, false);
    let var_2 = firstTrailingBit(countOneBits(vec3<u32>(~(~40071u), 0u, 5037u)));
    var var_3 = vec3<i32>(-1i) * -u_input.b.xww;
    var_1 = func_1(1000f).a.zz;
    var_1 = func_2().b.xz;
    global0 = (22440u >> (var_2.x % 32u)) << (1u % 32u);
    var var_4 = _wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(200f)))) + 1659f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(1395f)), var_2.x);
}

