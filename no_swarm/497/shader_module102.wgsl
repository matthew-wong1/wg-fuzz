struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(2147483647i, 1i), vec2<bool>(true, true), 37077i, false, 0u), Struct_1(vec2<i32>(40543i, 1i), vec2<bool>(true, false), -1i, true, 82635u), Struct_1(vec2<i32>(1i, -1i), vec2<bool>(false, true), 1i, false, 53612u), Struct_1(vec2<i32>(16509i, 16383i), vec2<bool>(true, false), i32(-2147483648), false, 55945u), Struct_1(vec2<i32>(1i, -47062i), vec2<bool>(false, false), -8563i, false, 88514u), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(true, false), i32(-2147483648), false, 1u), Struct_1(vec2<i32>(-16842i, -1i), vec2<bool>(false, false), 1i, false, 15358u), Struct_1(vec2<i32>(0i, -16989i), vec2<bool>(false, false), -11769i, true, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -19984i), vec2<bool>(false, true), i32(-2147483648), false, 0u), Struct_1(vec2<i32>(0i, 1579i), vec2<bool>(true, false), -43177i, false, 94930u), Struct_1(vec2<i32>(0i, -11801i), vec2<bool>(false, false), -7579i, true, 71018u), Struct_1(vec2<i32>(-42289i, -18208i), vec2<bool>(true, false), 2147483647i, true, 4294967295u), Struct_1(vec2<i32>(4347i, 2147483647i), vec2<bool>(false, true), 21754i, true, 0u), Struct_1(vec2<i32>(i32(-2147483648), 84425i), vec2<bool>(false, true), -41465i, true, 1u), Struct_1(vec2<i32>(0i, 31636i), vec2<bool>(false, true), 13186i, true, 77865u), Struct_1(vec2<i32>(29741i, -1i), vec2<bool>(true, false), -8688i, false, 82265u), Struct_1(vec2<i32>(10065i, 0i), vec2<bool>(true, false), 55414i, true, 1u), Struct_1(vec2<i32>(-2655i, 0i), vec2<bool>(false, false), 0i, true, 1u), Struct_1(vec2<i32>(1i, 0i), vec2<bool>(false, false), 1i, true, 1u), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(true, false), 1i, false, 1u), Struct_1(vec2<i32>(21606i, 1i), vec2<bool>(false, false), 0i, false, 68104u), Struct_1(vec2<i32>(-49879i, 4906i), vec2<bool>(false, true), -39951i, true, 0u), Struct_1(vec2<i32>(-85716i, 2147483647i), vec2<bool>(false, true), 0i, true, 1u), Struct_1(vec2<i32>(34308i, 2147483647i), vec2<bool>(true, false), -32506i, true, 4294967295u), Struct_1(vec2<i32>(88317i, 1i), vec2<bool>(false, false), 1i, true, 77491u), Struct_1(vec2<i32>(4694i, i32(-2147483648)), vec2<bool>(false, false), i32(-2147483648), true, 1u), Struct_1(vec2<i32>(30754i, 0i), vec2<bool>(true, true), 3638i, false, 1u), Struct_1(vec2<i32>(-29917i, -18396i), vec2<bool>(false, false), -19365i, false, 2720u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1746f))))), _wgslsmith_f_op_f32(f32(-1f) * -384f));
    let var_1 = 1u;
    var var_2 = u_input.b;
    global0 = array<Struct_1, 28>();
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1193f - _wgslsmith_div_f32(-2672f, _wgslsmith_f_op_f32(-var_0.x))), var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -841f) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), max(min(1u, _wgslsmith_mult_u32(0u, 13682u)), reverseBits(u_input.b.x ^ 4294967295u)) != 1u));
    return firstLeadingBit(vec3<i32>(u_input.c.x, -(~u_input.c.x), -firstTrailingBit(u_input.c.x)) | vec3<i32>(0i, u_input.a, _wgslsmith_dot_vec2_i32(u_input.c.yy, select(u_input.c.zy, u_input.c.yy, vec2<bool>(true, true)))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.e << (~1u % 32u), 0u, _wgslsmith_dot_vec3_u32(~(~u_input.b.www), u_input.b.xzx)), vec3<u32>(firstTrailingBit(56423u << (_wgslsmith_clamp_u32(0u, u_input.b.x, 1u) % 32u)), 27556u, 6640u));
    let var_1 = Struct_3(Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(50602u), -arg_0.a, vec3<i32>(1840i, arg_0.a.x, 0i)), vec3<i32>(u_input.a, u_input.c.x, reverseBits(-23361i)), arg_0.a), Struct_1(u_input.c.xx, !vec2<bool>(arg_0.b.b.x, arg_0.b.b.x), _wgslsmith_sub_i32(-u_input.a, 40167i), false, _wgslsmith_add_u32(~var_0.x, max(var_0.x, 19830u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, 943f), _wgslsmith_f_op_f32(887f * arg_0.c.x), arg_0.e.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.e)))), select(select(!arg_0.d, !vec4<bool>(true, arg_0.b.d, true, arg_0.d.x), all(vec4<bool>(arg_0.b.d, false, arg_0.b.b.x, arg_0.d.x))), select(!vec4<bool>(true, arg_0.b.b.x, true, true), arg_0.d, !vec4<bool>(true, false, arg_0.d.x, true)), !any(arg_0.d.zxx)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.x, 2765f, true))), _wgslsmith_f_op_f32(trunc(arg_0.e.x)), _wgslsmith_f_op_f32(-arg_0.e.x))));
    let var_2 = -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, abs(4661i), _wgslsmith_clamp_i32(var_1.a.a.x << (arg_0.b.e % 32u), arg_0.b.c, _wgslsmith_mult_i32(0i, -1i))), -u_input.c);
    global0 = array<Struct_1, 28>();
    var var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(0u, 1u, u_input.b.x)), _wgslsmith_sub_u32(max(4294967295u, 74026u ^ u_input.b.x), _wgslsmith_mod_u32(firstLeadingBit(var_0.x), arg_0.b.e ^ 0u))), ~(~u_input.b.x));
    return Struct_3(Struct_2(vec3<i32>(u_input.a, abs(1i), select(-1i, _wgslsmith_add_i32(-54228i, arg_0.a.x), false)), Struct_1(~vec2<i32>(1i, u_input.a), !var_1.a.b.b, -1i, !(0i < arg_0.a.x), ~u_input.b.x & _wgslsmith_add_u32(var_1.a.b.e, 6445u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(581f, arg_0.e.x, var_1.a.c.x) * vec3<f32>(arg_0.c.x, -1152f, arg_0.c.x))))), vec4<bool>(true, any(select(vec3<bool>(false, arg_0.b.d, true), arg_0.d.wzz, var_1.a.d.ywx)), true, true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.c * var_1.a.c)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = func_2(arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-980f, arg_0.c.x))), var_0.a.e.yx))) * vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1409f + _wgslsmith_f_op_f32(floor(var_0.a.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)))));
    let var_2 = ~u_input.b.x;
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.b.e, u_input.b.x, 4294967295u), countOneBits(u_input.b.wxx)) << (~(~766u) % 32u), abs(~(~0u))), 28u)];
    global0 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(375f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, arg_0.e.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(139f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c, Struct_1(vec2<i32>(13841i, u_input.c.x), vec2<bool>(false, true), 2147483647i, false, u_input.b.x), vec3<f32>(-1207f, 578f, -620f), vec4<bool>(false, true, false, true), vec3<f32>(1016f, -122f, -1204f)), vec2<i32>(u_input.a, u_input.c.x), 4294967295u == u_input.b.x, u_input.b.x)), func_2(func_2(Struct_2(u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec3<f32>(728f, 1158f, 960f), vec4<bool>(true, false, true, true), vec3<f32>(-563f, 706f, -230f))).a).a.e.x))));
    let var_1 = func_2(Struct_2(vec3<i32>(u_input.a, -(u_input.a ^ 2147483647i), _wgslsmith_clamp_i32(19055i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), u_input.c.x)), func_2(Struct_2(~u_input.c, Struct_1(u_input.c.xz, vec2<bool>(false, false), u_input.a, false, 0u), vec3<f32>(1732f, 492f, 951f), vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -1093f, 190f))).a.b, _wgslsmith_f_op_vec3_f32(-func_2(Struct_2(u_input.c, Struct_1(u_input.c.yy, vec2<bool>(false, false), -1i, false, 5642u), vec3<f32>(322f, 1649f, -207f), vec4<bool>(true, false, true, true), vec3<f32>(-254f, 1467f, 2108f))).a.e), vec4<bool>(false, true, all(func_2(Struct_2(u_input.c, global0[_wgslsmith_index_u32(0u, 28u)], vec3<f32>(180f, 737f, 1828f), vec4<bool>(false, false, false, false), vec3<f32>(-766f, 1225f, 1600f))).a.d.zwy), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f)), _wgslsmith_f_op_f32(-794f + -1335f)))).a;
    var var_2 = var_1.b.e;
    var var_3 = func_2(var_1);
    var var_4 = Struct_2(~(-((var_1.a | u_input.c) << (select(u_input.b.yww, vec3<u32>(1u, 4294967295u, 21683u), true) % vec3<u32>(32u)))), Struct_1(select(vec2<i32>(-u_input.a, 31168i), func_3(1u).zy, var_1.b.b), select(select(func_2(Struct_2(var_1.a, var_3.a.b, vec3<f32>(var_3.a.e.x, -1935f, var_3.a.e.x), var_3.a.d, vec3<f32>(var_3.a.e.x, -844f, var_1.c.x))).a.d.xw, vec2<bool>(var_1.b.d, var_1.d.x), !vec2<bool>(false, var_1.b.b.x)), vec2<bool>(!var_1.b.b.x, var_1.d.x), var_1.d.x), var_3.a.a.x, any(vec4<bool>(any(var_1.d), true, true, all(var_3.a.d.yyx))), 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, var_3.a.c.x, var_3.a.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, 100f, -1082f)))))), vec4<bool>(all(vec3<bool>(any(var_3.a.d.xx), false, var_3.a.a.x <= var_1.a.x)), var_3.a.d.x, true, (u_input.b.x != _wgslsmith_div_u32(48085u, u_input.b.x)) || var_3.a.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.a.e.x)), _wgslsmith_f_op_f32(ceil(var_3.a.e.x)), _wgslsmith_f_op_f32(-var_3.a.e.x)) - vec3<f32>(_wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(1495f + var_3.a.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.a.c.x - var_1.e.x), func_2(var_3.a).a.e.x)), var_3.a.e.x)));
    var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.e.x, var_3.a.e.x, var_3.a.c.x))) - vec3<f32>(var_3.a.e.x, var_3.a.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-635f * 1282f))))), vec3<i32>(-1i, var_3.a.b.c, var_4.a.x));
}

