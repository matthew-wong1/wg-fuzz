struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, u_input.d.x) & 26u, 0u), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1148f, _wgslsmith_f_op_f32(trunc(411f))))));
    let var_1 = Struct_3(~var_0.a.b.xzy, var_0.a.b, var_0.a.c, true);
    var var_2 = Struct_1(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(min(943f, -193f)), -493f, 175f), var_0.a.c.x == reverseBits(31387i));
    var var_3 = vec3<bool>(var_1.d && !(!var_2.b || all(vec4<bool>(true, var_2.b, false, true))), !(firstTrailingBit(-var_1.c.x) > -1i), var_2.b);
    global1 = var_0.a.c.wy;
    return select(select(!vec2<bool>(true, select(false, var_2.b, false)), select(vec2<bool>(any(var_3.xy), var_1.d && true), vec2<bool>(any(vec3<bool>(true, true, var_0.a.d)), true), vec2<bool>(var_0.a.d && var_1.d, true)), vec2<bool>(!(!var_1.d), var_2.b)), var_3.zy, var_3.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_5 {
    var var_0 = select(vec2<bool>(!arg_1, true), func_3(), true);
    global0 = array<Struct_3, 7>();
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(ceil(1213f)));
    var var_2 = var_1.a.d;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(805f, 489f, -608f, 286f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, -434f, -1928f, arg_0.x) * vec4<f32>(1339f, arg_0.x, -320f, -543f)))))), 0u < var_1.a.a.x);
    return Struct_5(global0[_wgslsmith_index_u32(~83222u, 7u)], var_3.a.xzy, -u_input.a.x, _wgslsmith_f_op_f32(-var_1.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = arg_0.yww;
    let var_1 = vec3<bool>(all(var_0), false, true);
    global1 = select(vec2<i32>(21413i, 1i), vec2<i32>(~(arg_2.c >> (0u % 32u)), global1.x), ((_wgslsmith_mod_i32(global1.x, arg_2.c) <= _wgslsmith_mult_i32(global1.x, global1.x)) || !(var_1.x & arg_0.x)) & false);
    global0 = array<Struct_3, 7>();
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(~u_input.c, 7u)], arg_2.d);
    return Struct_2(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, u_input.c), select(var_2.a.a, vec3<u32>(18541u, var_2.a.a.x, 0u), vec3<bool>(var_0.x, arg_2.a.d, var_2.a.d)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    return func_4(select(vec4<bool>(true, true, u_input.d.x != u_input.d.x, false), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), all(vec2<bool>(true, u_input.a.x > u_input.a.x))), 4294967295u, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(761f, 1070f, 1000f))))), !(!(global1.x >= arg_0))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_2) -> bool {
    global1 = -_wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec3_i32(arg_2.a.c.wxz, arg_0.c.xwz), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_0.c.x), vec2<i32>(global1.x, arg_2.a.c.x))), arg_0.c.xw);
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-557f))));
    global1 = _wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.b.xx | arg_0.c.zz, reverseBits(vec2<i32>(-17771i, -43754i))) << (vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.b.x, 1u, u_input.d.x), arg_2.a.b.yyy), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a.x, 50204u), vec2<u32>(arg_2.a.b.x, arg_2.a.a.x))) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_mod_i32(abs(arg_0.c.x), i32(-1i) * -1i), 2147483647i));
    let var_1 = ~_wgslsmith_mult_vec4_i32(max(firstTrailingBit(_wgslsmith_clamp_vec4_i32(arg_2.a.c, vec4<i32>(0i, arg_2.a.c.x, global1.x, arg_0.c.x), vec4<i32>(arg_2.a.c.x, 35927i, 2147483647i, u_input.e.x))), abs(vec4<i32>(-7282i, arg_2.a.c.x, u_input.b.x, arg_2.c) & vec4<i32>(-1i, 30120i, 24674i, global1.x))), vec4<i32>(-2147483647i, ~arg_0.c.x, -2147483647i, u_input.b.x));
    let var_2 = ~(~_wgslsmith_sub_vec4_i32(arg_2.a.c, arg_0.c >> ((arg_2.a.b >> (vec4<u32>(18942u, 0u, arg_3.a, 85031u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e;
    var var_0 = u_input.b.yy;
    let var_1 = abs(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 529u, u_input.d.x, u_input.c), vec4<u32>(4294967295u, ~1u, abs(4294967295u), u_input.c), select(~vec4<u32>(56134u, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(64994u, u_input.c, 20056u, 4294967295u), vec4<bool>(true, true, true, true))));
    global1 = u_input.a.xz;
    var var_2 = Struct_3(~var_1.wxw, ~_wgslsmith_clamp_vec4_u32(var_1, ~vec4<u32>(u_input.c, var_1.x, 0u, 22646u), ~min(vec4<u32>(u_input.c, 4294967295u, var_1.x, u_input.d.x), var_1)), min(-vec4<i32>(max(2147483647i, -39267i), firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(0i, -17063i), ~0i), vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, 23208i, u_input.b.x), vec4<i32>(81589i, 2147483647i, -2147483647i, u_input.b.x)), -44581i), 2147483647i, 11134i, i32(-1i) * -2147483647i)), func_5(Struct_3(vec3<u32>(var_1.x, 1u, 5201u), vec4<u32>(var_1.x, 4294967295u, 1u, var_1.x) >> (vec4<u32>(0u, 63782u, u_input.c, var_1.x) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.a.x, 0i, global1.x), true), vec2<f32>(_wgslsmith_f_op_f32(trunc(1840f)), _wgslsmith_f_op_f32(ceil(-1337f))), Struct_5(global0[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_div_vec3_f32(vec3<f32>(972f, -708f, 940f), vec3<f32>(873f, -566f, 1000f)), abs(-68006i), _wgslsmith_f_op_f32(f32(-1f) * -1083f)), func_1(var_0.x | var_0.x)) || true);
    global0 = array<Struct_3, 7>();
    var var_3 = global1.x ^ ~1i;
    let var_4 = vec2<bool>(var_2.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(-26910i, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.c.zw, firstLeadingBit(var_2.c.yw)), -(vec2<i32>(6311i, var_0.x) << (var_1.xx % vec2<u32>(32u)))), select(1i, reverseBits(-1i) ^ countOneBits(global1.x), func_5(global0[_wgslsmith_index_u32(~var_2.b.x, 7u)], vec2<f32>(988f, -915f), func_2(vec3<f32>(-1081f, -2393f, 473f), true), Struct_2(1u))), -2147483647i), 1u, u_input.b, func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(266f, 578f, -780f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(240f, 437f, -411f), vec3<f32>(485f, 320f, 1242f))), select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.d, false, var_4.x), vec3<bool>(var_4.x, var_2.d, false), vec3<bool>(var_2.d, var_2.d, true)), !vec3<bool>(var_2.d, true, false)))), !((u_input.d.x < u_input.c) | any(vec4<bool>(false, var_4.x, var_4.x, var_2.d)))).a.b);
}

