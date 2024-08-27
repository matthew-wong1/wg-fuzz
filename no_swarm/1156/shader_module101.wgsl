struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = !select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(arg_0.b.x, true, arg_3.b.x, false), vec4<bool>(false, arg_0.b.x, arg_3.b.x, arg_3.b.x), false), select(vec4<bool>(arg_3.b.x, arg_3.b.x, true, arg_0.b.x), vec4<bool>(arg_3.b.x, true, arg_3.b.x, arg_3.b.x), arg_0.b.x), any(vec4<bool>(arg_3.b.x, false, true, arg_3.b.x))), !select(!vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, false), !vec4<bool>(false, arg_0.b.x, true, arg_3.b.x), vec4<bool>(arg_0.b.x, false, false, arg_3.b.x)));
    var_0 = select(vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(arg_3.b.x, var_0.x), vec2<bool>(arg_3.b.x, true))), arg_3.b.x, true, select(true, all(arg_0.b), arg_0.b.x)), !(!vec4<bool>(select(arg_0.b.x, arg_3.b.x, false), true, 1557f < arg_3.c.x, true)), arg_0.b.x);
    return arg_3.d.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global1 = max(58543i >> (func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(714f, 852f) - vec2<f32>(440f, -734f)), vec2<bool>(false, false), _wgslsmith_div_vec3_f32(vec3<f32>(-1271f, 566f, 570f), vec3<f32>(-202f, -285f, -235f)), ~vec3<u32>(32523u, 1u, 1u), -2365f), ~arg_2.xy, -88287i, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(356f, -1000f) * vec2<f32>(1000f, -392f)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1119f, 864f, -577f) - vec3<f32>(-1271f, -643f, 856f)), ~vec3<u32>(4294967295u, 0u, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1251f))) % 32u), 78797i);
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2230f, _wgslsmith_f_op_f32(abs(-297f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(451f, -1560f) + vec2<f32>(723f, -1093f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-177f, -658f), vec2<f32>(-708f, -1076f)))))), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true), vec2<bool>(true, true | (arg_0 < -1i)), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(993f)))), 257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) - -1758f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1478f)), _wgslsmith_f_op_f32(select(-660f, 1146f, true)), -651f) * vec3<f32>(-1779f, 1000f, _wgslsmith_f_op_f32(-1443f * -865f)))), ~abs(~(~vec3<u32>(1u, 81500u, arg_3))), _wgslsmith_f_op_f32(select(-536f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-496f)) + -362f) - -335f), (true || all(vec4<bool>(false, true, false, false))) | true)));
    let var_1 = select(any(select(select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(true, true, false), true), select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), any(var_0.b))), !(!var_0.b.x), all(select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, var_0.b.x, false, var_0.b.x)))) | select(var_0.b.x | true, false, !(!any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), 1000f));
    global1 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1719f, _wgslsmith_f_op_f32(step(-397f, var_0.c.x)))), select(!var_0.b, vec2<bool>(select(false, var_1, false) | false, select(false, arg_0 >= u_input.a, arg_0 < arg_2.x)), !var_0.b.x != true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) - var_0.c), vec3<u32>(select(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, 33268u), arg_3), _wgslsmith_div_u32(var_0.d.x, 0u), ~arg_3 <= ~arg_1), arg_1, 1u), var_0.e);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = func_2(~(-48200i), ~(_wgslsmith_add_u32(arg_2.d.x, _wgslsmith_sub_u32(10619u, 1u)) & ~(arg_2.d.x | arg_3.d.x)), ~vec4<i32>(u_input.c.x, -u_input.c.x, -1i, -2147483647i & u_input.a) & ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 20477i, -3453i), vec3<i32>(u_input.b, u_input.b, u_input.a)), ~(-42318i), max(-8537i, u_input.a), _wgslsmith_div_i32(u_input.c.x, 2147483647i)), ~50966u);
    var var_1 = func_2(firstLeadingBit((u_input.c.x << ((53153u ^ var_0.d.x) % 32u)) ^ select(-87602i, select(1i, u_input.c.x, arg_2.b.x), var_0.b.x)), _wgslsmith_mod_u32(min(~arg_3.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, var_0.d.x, arg_2.d.x), vec3<u32>(arg_3.d.x, var_0.d.x, 0u))), 43493u), firstTrailingBit(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(3832i, u_input.b, u_input.b, 0i)), vec4<i32>(u_input.c.x, u_input.b, 0i, 31903i) >> (vec4<u32>(40029u, 1u, 94339u, 4610u) % vec4<u32>(32u)))), ~(~(~max(arg_3.d.x, var_0.d.x))));
    let var_2 = true;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(~var_1.d.x), ~139163u), reverseBits(1u)), _wgslsmith_mod_u32(var_0.d.x, _wgslsmith_sub_u32(0u, arg_2.d.x)));
    let var_4 = func_2(u_input.b, min(abs(~var_1.d.x), func_3(var_0, u_input.c, u_input.c.x, var_0)), countOneBits(~min(firstLeadingBit(vec4<i32>(-1i, u_input.c.x, u_input.a, -1i)), countOneBits(vec4<i32>(-1i, u_input.c.x, u_input.a, 1i)))), 18775u);
    return var_4.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(976f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1539f)), -986f))), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(139f, true, Struct_1(vec2<f32>(-1341f, 363f), vec2<bool>(false, false), vec3<f32>(548f, 1525f, -192f), vec3<u32>(77641u, 58556u, 4294967295u), -1700f), Struct_1(vec2<f32>(-1060f, 1152f), vec2<bool>(true, true), vec3<f32>(-478f, -1084f, -211f), vec3<u32>(51384u, 94957u, 4294967295u), -333f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2056f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-352f, true, func_2(9808i, 62450u, vec4<i32>(u_input.c.x, 6090i, u_input.b, u_input.a), 0u), func_2(u_input.a, 1u, vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.a), 59597u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(f32(-1f) * -1364f))), true))), ~vec3<u32>(~max(4294967295u, 1u), 38343u, 4294967295u), -212f);
    let var_1 = var_0.a.x;
    let var_2 = vec4<bool>(!func_2(21836i, firstLeadingBit(var_0.d.x), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.b), u_input.c.x, min(1i, -29622i), 1i), _wgslsmith_div_u32(var_0.d.x, 7902u)).b.x, !(var_0.b.x || var_0.b.x), true, min(~_wgslsmith_div_u32(var_0.d.x, var_0.d.x), func_3(var_0, u_input.c, u_input.a, Struct_1(vec2<f32>(1199f, var_0.e), vec2<bool>(false, true), var_0.c, var_0.d, -323f))) <= abs(1u));
    global1 = -u_input.a;
    let var_3 = _wgslsmith_mult_vec4_i32(-(firstTrailingBit(vec4<i32>(u_input.c.x, -31207i, u_input.c.x, -2147483647i)) >> (max(vec4<u32>(var_0.d.x, 0u, var_0.d.x, var_0.d.x), vec4<u32>(0u, 4294967295u, 0u, 88962u)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, -2147483647i, -1i, u_input.c.x)), select(vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.b), vec4<i32>(2147483647i, u_input.b, 2147483647i, 2147483647i), true)), firstTrailingBit(select(vec4<i32>(2147483647i, 1i, 3776i, u_input.b), vec4<i32>(0i, u_input.c.x, -44489i, -1i), var_0.b.x))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, u_input.a, u_input.c.x), vec4<i32>(-2147483647i, -2147483647i, u_input.b, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-17138i, u_input.c.x, u_input.a), vec3<i32>(u_input.c.x, u_input.b, -33148i))) << (vec4<u32>(var_0.d.x, 1u, 79155u, reverseBits(var_0.d.x)) % vec4<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_0.c);
    var var_5 = -928f;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -579i, 2147483647i, -2147483647i, u_input.a), max(~var_3.x, -22093i), vec3<i32>(2147483647i, var_3.x, max(max(var_3.x, var_3.x) >> (func_3(Struct_1(vec2<f32>(var_0.e, 2050f), var_6.b, vec3<f32>(var_0.c.x, -702f, 483f), var_6.d, -122f), var_3.xx, var_3.x, Struct_1(vec2<f32>(-541f, -521f), var_2.zx, vec3<f32>(var_0.e, var_0.a.x, var_0.c.x), vec3<u32>(4294967295u, var_6.d.x, var_6.d.x), -941f)) % 32u), -35720i)), 24646i);
}

