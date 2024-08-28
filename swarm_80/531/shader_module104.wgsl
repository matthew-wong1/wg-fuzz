struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = arg_0.d.a;
    var var_1 = Struct_4(u_input.a.x);
    var var_2 = any(vec4<bool>(!(!var_0.a), false, arg_0.d.d, all(!vec4<bool>(true, arg_0.a.d.x, true, var_0.a))));
    var_2 = any(vec4<bool>(var_0.d.x, true, var_0.d.x, !((arg_0.c.x == var_0.d.x) || any(arg_0.a.d.xx))));
    let var_3 = u_input.a;
    return !select(!select(select(global0[_wgslsmith_index_u32(49585u, 11u)], vec4<bool>(true, var_0.d.x, false, var_0.a), true), !vec4<bool>(arg_0.c.x, true, true, arg_0.c.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(var_0.b, arg_0.d.e, 53912u)), 11u)]), select(select(vec4<bool>(var_0.a, var_0.d.x, var_0.a, var_0.a), select(global0[_wgslsmith_index_u32(arg_0.d.e, 11u)], vec4<bool>(true, arg_0.a.a, true, true), vec4<bool>(true, var_0.a, var_0.d.x, false)), !vec4<bool>(false, false, var_0.a, arg_0.c.x)), vec4<bool>(var_0.d.x, true, false, true), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8905u, var_0.c.x, 0u, arg_0.a.b), vec4<u32>(6494u, 0u, arg_0.d.a.c.x, var_0.c.x)), 11u)]), any(select(arg_0.d.a.d.yx, vec2<bool>(false, true), false)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    var var_0 = Struct_4(u_input.a.x);
    return Struct_1(false, 1u, vec3<u32>(~firstLeadingBit(abs(36522u)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 90937u, 4294967295u), 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 19507u), vec3<u32>(15502u, 35831u, 69240u))), 918u), select(vec3<bool>(any(vec3<bool>(true, true, true)), any(func_3(Struct_5(Struct_1(true, 4294967295u, vec3<u32>(1u, 1u, 94832u), vec3<bool>(true, false, true)), -4392i, vec2<bool>(true, false), Struct_3(Struct_1(true, 0u, vec3<u32>(4294967295u, 0u, 49125u), vec3<bool>(false, false, true)), 426f, false, true, 1u), arg_0.x))), _wgslsmith_f_op_f32(round(-134f)) > _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), vec3<bool>(true, true, true), !vec3<bool>(true, func_3(Struct_5(Struct_1(true, 78628u, vec3<u32>(48415u, 5207u, 61428u), vec3<bool>(true, true, false)), var_0.a, vec2<bool>(true, true), Struct_3(Struct_1(false, 5942u, vec3<u32>(5454u, 78556u, 28448u), vec3<bool>(false, true, true)), 1842f, false, false, 41949u), arg_0.x)).x, true)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, arg_1.b, -1070f, _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 11>();
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 20596i), u_input.a) << (~abs(64215u) % 32u), arg_2 & ~(-55174i)), abs(u_input.a.x >> (1u % 32u)), -26859i);
    return Struct_2(var_1.a.b, var_1.a.b, arg_1.a, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-165f, 626f, var_1.b, 786f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(340f, arg_1.b, 422f, var_1.b))))))), reverseBits(~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, arg_2, u_input.a.x, -1i), vec4<i32>(-48658i, 1i, arg_2, -87664i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = abs(arg_0.e.x);
    let var_1 = vec3<bool>(true, all(func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(218f, arg_3.b, arg_3.b, arg_3.b), vec4<f32>(arg_3.b, -870f, -305f, -1765f)))).d) && (_wgslsmith_dot_vec2_i32(vec2<i32>(26153i, -1i), arg_0.e.wx) == ((-2147483647i >> (arg_3.a.b % 32u)) ^ _wgslsmith_clamp_i32(arg_1.a, arg_2.a, arg_2.a))), true);
    var_0 = arg_1.a;
    var var_2 = arg_3.a;
    let var_3 = arg_0;
    return arg_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(any(vec3<bool>(true, true, true)), !(any(vec3<bool>(false, true, false)) | true));
    var var_1 = (vec4<u32>(_wgslsmith_add_u32(0u, ~45684u), ~1u, abs(~4294967295u), func_4(func_1(909u, Struct_3(Struct_1(var_0.x, 4294967295u, vec3<u32>(4294967295u, 1828u, 25852u), vec3<bool>(var_0.x, false, var_0.x)), -2169f, true, var_0.x, 58739u), u_input.a.x), Struct_4(u_input.a.x), Struct_4(u_input.a.x), Struct_3(Struct_1(true, 56269u, vec3<u32>(0u, 1u, 39320u), vec3<bool>(false, var_0.x, var_0.x)), 1679f, var_0.x, false, 26477u))) << (vec4<u32>(~0u, 1u, 16630u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 73441u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u))) & vec4<u32>(1u, 1u, 1u, 1u);
    global0 = array<vec4<bool>, 11>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3070f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1399f, -987f))))))));
    var var_3 = Struct_5(func_1(var_1.x, Struct_3(func_1(~28811u, Struct_3(Struct_1(var_0.x, 1u, vec3<u32>(96439u, 17011u, 19488u), vec3<bool>(true, var_0.x, false)), 1146f, var_0.x, false, var_1.x), u_input.a.x).d, _wgslsmith_f_op_f32(abs(-1602f)), all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), false)), var_0.x, select(var_1.x, _wgslsmith_sub_u32(var_1.x, var_1.x), var_0.x)), 1i).c, -6748i | func_1(var_1.x, Struct_3(func_1(var_1.x, Struct_3(Struct_1(var_0.x, var_1.x, var_1.xxy, vec3<bool>(var_0.x, true, var_0.x)), -1427f, var_0.x, var_0.x, var_1.x), 2147483647i).c, 1139f, var_0.x, func_2(vec4<f32>(-1086f, 374f, 1373f, -1008f)).d.x, _wgslsmith_dot_vec3_u32(var_1.xyw, vec3<u32>(var_1.x, 4294967295u, var_1.x))), u_input.a.x).e.x, !(!vec2<bool>(var_0.x, false)), Struct_3(func_1(countOneBits(~4294967295u), Struct_3(Struct_1(true, 14228u, var_1.ywy, vec3<bool>(false, var_0.x, false)), -1598f, var_0.x, any(global0[_wgslsmith_index_u32(62595u, 11u)]), 1u), -u_input.a.x).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -754f)))), !func_1(reverseBits(var_1.x), Struct_3(Struct_1(var_0.x, 4294967295u, var_1.xyz, vec3<bool>(false, var_0.x, false)), 1374f, true, var_0.x, 27825u), -8330i).d.a, !((var_0.x || false) | any(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1263f - -1815f), 373f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~77100u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-571f, var_3.d.b))), vec4<f32>(var_3.d.b, _wgslsmith_f_op_f32(ceil(465f)), 1410f, _wgslsmith_f_op_f32(f32(-1f) * -689f)), vec3<u32>(_wgslsmith_mod_u32(31352u, reverseBits(~45993u)), var_3.d.a.c.x, countOneBits(58264u & var_3.a.c.x)));
}

