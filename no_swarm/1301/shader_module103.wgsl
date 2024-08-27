struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 4826u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2622u, 0u), vec2<u32>(4294967295u, 100986u), vec2<u32>(29811u, 0u), vec2<u32>(28656u, 1u), vec2<u32>(0u, 35172u), vec2<u32>(61708u, 48897u), vec2<u32>(0u, 24479u), vec2<u32>(22872u, 304u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(34314u, 0u), vec2<u32>(59156u, 12976u), vec2<u32>(11488u, 51872u), vec2<u32>(37117u, 4294967295u), vec2<u32>(103490u, 44662u), vec2<u32>(0u, 0u), vec2<u32>(28323u, 1u), vec2<u32>(30300u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_2(~0i);
    global0 = array<vec2<u32>, 21>();
    let var_1 = -1025f;
    let var_2 = !(!vec4<bool>(!arg_2, !any(vec3<bool>(false, arg_2, false)), arg_2, true));
    var var_3 = Struct_2(32912i);
    return u_input.d.x;
}

fn func_3() -> vec4<i32> {
    var var_0 = select(!vec4<bool>(select(true, true, false), false, 0i < _wgslsmith_add_i32(40992i, u_input.b), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, 47131u <= ~u_input.d.x), !vec4<bool>(false, select(true, false, false), true, true), any(vec2<bool>(-2147483647i < u_input.a, 71820u > u_input.c))), vec4<bool>(true, false, true, false));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1345f))) - _wgslsmith_f_op_f32(sign(-104f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f - -868f))), select(vec4<i32>(abs(-16723i), u_input.b, -1i, u_input.b), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)), u_input.a >= u_input.b), vec4<i32>(~(-u_input.b) << (~0u % 32u), ~(-2147483647i), -30513i, i32(-1i) * -firstLeadingBit(u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, -555f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-758f, -423f), vec2<f32>(-1247f, 532f)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(437f, 1000f)))) - vec2<f32>(202f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1818f)))))), global0[_wgslsmith_index_u32(36766u, 21u)]);
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)), -(~(-var_1.c)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.c.x, 2147483647i), _wgslsmith_dot_vec3_i32(var_1.c.wxy, var_1.c.wyw)), select(var_1.c.x, u_input.a, !var_0.x), 0i, min(-41898i, reverseBits(-1i))), var_1.a, ~(~(var_1.e ^ var_1.e))), var_1, Struct_2(firstTrailingBit(~abs(u_input.b))), Struct_2(-2147483647i));
    return vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.d.a, 34317i), -(vec2<i32>(-1i, u_input.b) ^ vec2<i32>(-1i, u_input.b)))), -12284i, ~_wgslsmith_mult_i32(u_input.a, i32(-1i) * -2147483647i), u_input.a);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = arg_2.b.x;
    var_0 = ~(-_wgslsmith_dot_vec4_i32(arg_2.a.b & vec4<i32>(-33112i, u_input.a, u_input.a, u_input.a), -arg_2.a.c)) == -firstLeadingBit(arg_2.a.b.x);
    let var_1 = i32(-1i) * -(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15026i, u_input.b), vec3<i32>(arg_2.a.c.x, u_input.a, 22455i))));
    let var_2 = Struct_3(Struct_1(arg_2.a.d, arg_2.a.b, func_3(), vec2<f32>(_wgslsmith_f_op_f32(622f - arg_2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-494f, -1244f)) + _wgslsmith_f_op_f32(step(403f, -3086f)))), u_input.d.yz), arg_2.a, Struct_2(func_3().x), Struct_2(-1i));
    var_0 = (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, arg_0), 19140u), 4294967295u) >> (~u_input.d.x % 32u)) > 66797u;
    return vec4<bool>(all(select(vec3<bool>(true, all(vec4<bool>(true, arg_2.b.x, arg_2.b.x, true)), true), arg_3, arg_3)), select(!any(!vec4<bool>(false, true, arg_3.x, arg_2.b.x)), false || any(!arg_3.xx), arg_2.b.x != arg_3.x), false, arg_2.b.x);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(389f, _wgslsmith_f_op_f32(floor(-255f)), -393f));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_1 = Struct_4(Struct_1(vec2<f32>(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -34048i, u_input.b, u_input.b), vec4<i32>(u_input.a, -5913i, u_input.a, u_input.b))), -_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 47102i, u_input.b, 0i)), ~vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-521f, -301f), vec2<f32>(-1000f, var_0.x), false)) + _wgslsmith_f_op_vec2_f32(-var_0.xy)) + var_0.yy), ~global0[_wgslsmith_index_u32(~(~u_input.c), 21u)]), !func_2(arg_0, 1u, Struct_4(Struct_1(var_0.zz, vec4<i32>(12551i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(6054i, 47050i, 0i, u_input.a), var_0.xz, vec2<u32>(49271u, arg_0)), !vec2<bool>(false, arg_1), Struct_1(vec2<f32>(-2149f, arg_2.x), vec4<i32>(2147483647i, 14432i, -1i, 1778i), vec4<i32>(u_input.b, u_input.a, u_input.b, -5324i), arg_2.zx, vec2<u32>(u_input.d.x, 0u)), firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i))), !func_2(u_input.c, 14459u, Struct_4(Struct_1(var_0.xy, vec4<i32>(u_input.a, u_input.a, u_input.b, 2147483647i), vec4<i32>(-2147483647i, u_input.a, u_input.a, 14387i), var_0.zy, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(true, arg_1), Struct_1(vec2<f32>(-1576f, var_0.x), vec4<i32>(-35553i, 0i, 58894i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.b, -2147483647i), arg_2.xz, vec2<u32>(u_input.d.x, 51651u)), vec4<i32>(u_input.b, -1i, u_input.a, -15740i)), vec3<bool>(false, true, false)).wzy).xz, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(6446i, -1i, 0i, u_input.b) | vec4<i32>(u_input.a, u_input.b, -2147483647i, -58860i)), vec4<i32>((-38463i | u_input.a) >> (u_input.d.x % 32u), u_input.b, u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, _wgslsmith_f_op_f32(max(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1285f, var_0.x), vec2<f32>(724f, 751f), vec2<bool>(true, arg_1))))), u_input.d.yy), _wgslsmith_clamp_vec4_i32(~firstLeadingBit(reverseBits(vec4<i32>(-7705i, u_input.a, u_input.a, 4606i))), vec4<i32>(select(u_input.a, -50374i, arg_1), _wgslsmith_sub_i32(53805i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i)), _wgslsmith_mult_i32(-11533i, -u_input.a), -u_input.b), vec4<i32>(u_input.b, 23387i, _wgslsmith_clamp_i32(max(u_input.b, u_input.b), u_input.b, -u_input.a), _wgslsmith_sub_i32(i32(-1i) * -1i, 46057i))));
    return func_1(min(-(~firstLeadingBit(var_1.a.c.yyy)), ~var_1.d.zww), _wgslsmith_f_op_f32(min(585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(floor(var_1.c.a.x))) - _wgslsmith_f_op_f32(round(var_0.x))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(func_1(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -1i, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1058f), ~u_input.a < u_input.b) << (func_4(_wgslsmith_add_u32(14810u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), any(func_2(u_input.d.x, u_input.c, Struct_4(Struct_1(vec2<f32>(-746f, 281f), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -16178i, u_input.a, u_input.a), vec2<f32>(316f, -1538f), vec2<u32>(1u, u_input.c)), vec2<bool>(false, true), Struct_1(vec2<f32>(551f, -294f), vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec4<i32>(61819i, u_input.b, 47379i, u_input.b), vec2<f32>(-1880f, 279f), vec2<u32>(u_input.c, 29411u)), vec4<i32>(-2147483647i, 32899i, u_input.a, 0i)), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1693f, 180f, -1003f))), _wgslsmith_div_vec3_f32(vec3<f32>(-615f, -1031f, -183f), vec3<f32>(1163f, -1942f, 1640f)), func_2(4294967295u, u_input.d.x, Struct_4(Struct_1(vec2<f32>(-1000f, 1559f), vec4<i32>(51540i, u_input.b, u_input.a, u_input.b), vec4<i32>(u_input.b, -10115i, -1i, u_input.b), vec2<f32>(-182f, -838f), vec2<u32>(10914u, u_input.d.x)), vec2<bool>(false, true), Struct_1(vec2<f32>(-1673f, -467f), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.b, u_input.b, -39641i, u_input.a), vec2<f32>(105f, 568f), vec2<u32>(4294967295u, u_input.d.x)), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.b)), vec3<bool>(false, true, false)).x))) % 32u), ~(firstTrailingBit(4294967295u) & _wgslsmith_add_u32(u_input.d.x, u_input.c)));
    var_0 = u_input.d.x;
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, max(func_4(u_input.c, true, vec3<f32>(-1790f, 1806f, 1000f)), _wgslsmith_div_u32(u_input.d.x, u_input.d.x))), 5329u, ~func_1(~vec3<i32>(u_input.b, u_input.a, -1i), _wgslsmith_f_op_f32(floor(144f)), any(vec2<bool>(false, true)))), u_input.d.x, func_4(max(37766u, u_input.c) << (~(u_input.d.x ^ 1u) % 32u), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-178f, 1000f, -1000f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f - -854f)), -850f, -664f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(921f)), _wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(sign(687f)))))));
    var var_3 = abs(-vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 0i, u_input.b), ~vec3<i32>(u_input.a, 0i, -2147483647i)), u_input.a, -6875i));
    let var_4 = !vec3<bool>(!any(vec4<bool>(true, true, false, true)), false, false);
    var var_5 = _wgslsmith_clamp_vec3_i32(-(reverseBits(-vec3<i32>(19686i, u_input.b, 1i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 12798u, 33969u), ~vec3<u32>(0u, u_input.d.x, 63502u)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, 1i, 17631i) & abs(_wgslsmith_div_vec3_i32(vec3<i32>(4932i, u_input.a, -58107i), vec3<i32>(23019i, var_3.x, 23931i))), vec3<i32>(~u_input.b >> (10026u % 32u), u_input.b, u_input.a)), ~(~(-abs(vec3<i32>(var_3.x, -1i, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.x, _wgslsmith_f_op_f32(sign(var_2.x)), u_input.d);
}

