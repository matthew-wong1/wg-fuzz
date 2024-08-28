struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -26527i), vec4<i32>(i32(-2147483648), -13445i, 76638i, i32(-2147483648)), vec4<i32>(2147483647i, -17638i, 34363i, -24853i), vec4<i32>(2147483647i, -1i, 0i, 27845i), vec4<i32>(0i, 9351i, -2734i, 0i), vec4<i32>(-44945i, -39934i, 1i, -53493i), vec4<i32>(i32(-2147483648), -39161i, 36787i, 7424i), vec4<i32>(31512i, 1i, i32(-2147483648), 0i), vec4<i32>(-20385i, -6028i, 35585i, -36159i), vec4<i32>(i32(-2147483648), 10109i, 26009i, -19981i), vec4<i32>(37926i, -1i, 13904i, -14217i), vec4<i32>(-1014i, -10653i, 3243i, 23036i), vec4<i32>(15755i, 1856i, -1i, 20912i), vec4<i32>(-26880i, 33601i, -7637i, -41532i), vec4<i32>(29940i, 18261i, 11641i, 2147483647i), vec4<i32>(-6099i, -1i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -40587i));

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<bool, 28>;

var<private> global3: f32 = 210f;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -255f);
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(215f + 649f), -703f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-917f)))) * -1000f), true));
    var var_1 = true & global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.d, ~global1[_wgslsmith_index_u32(2337u, 25u)]), 97602u), 28u)];
    let var_2 = 1u;
    let var_3 = max(-1i, u_input.c);
    return _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~(reverseBits(var_2) | _wgslsmith_add_u32(u_input.e.x, 10016u))), vec2<u32>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27044u, 1u), vec3<u32>(31673u, 37436u, 62037u))), u_input.e.x));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = arg_2;
    global1 = array<vec3<u32>, 25>();
    global1 = array<vec3<u32>, 25>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.e.zy, abs((u_input.d.zz ^ u_input.d.zz) >> (func_3() % vec2<u32>(32u))), vec2<u32>(~firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(u_input.e.xy, u_input.e.zx))), !vec4<bool>(true, true == any(vec3<bool>(arg_2, true, arg_2)), (arg_0.d.x | global2[_wgslsmith_index_u32(arg_1, 28u)]) && all(vec3<bool>(global2[_wgslsmith_index_u32(39666u, 28u)], true, false)), true));
    var var_2 = arg_0;
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 35869u;
    let var_1 = Struct_1(~max(arg_2.a & vec2<u32>(u_input.e.x, 0u), vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), 0u)), arg_2.b);
    var_0 = func_2(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(119f, 1651f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, 232f, 358f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(324f, 1000f, -2190f), vec3<f32>(-344f, -753f, -462f), true)))), _wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(sign(-115f))), !var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-405f + 1000f))), u_input.e.x, true) << (~arg_1.x % 32u);
    global3 = -346f;
    var var_2 = u_input.b;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = false;
    global2 = array<bool, 28>();
    let var_1 = ~_wgslsmith_div_u32(arg_1.a.x, firstTrailingBit(arg_1.a.x ^ arg_1.a.x)) >> ((firstTrailingBit(4294967295u) << (_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(0u, u_input.d.x >> (arg_1.a.x % 32u))) % 32u)) % 32u);
    let var_2 = -1i;
    var var_3 = func_1(u_input.c, select(vec4<u32>(var_1 << (1u % 32u), arg_1.a.x ^ 4294967295u, arg_1.a.x, arg_1.a.x), select(~vec4<u32>(var_1, 0u, 1u, arg_1.a.x), u_input.e, !vec4<bool>(var_0, false, arg_1.b.x, true)), vec4<bool>(true, true, true, true)) << (vec4<u32>(10484u, select(arg_1.a.x, arg_1.a.x, true), u_input.d.x, 39860u) % vec4<u32>(32u)), arg_1);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1126f * arg_0.c))) - -896f)), _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-761f, -1239f, -1989f), vec3<f32>(-391f, 1395f, arg_0.a), arg_0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, 1678f, arg_0.a) + arg_0.b)), var_3.b.x))), 337f, func_1(var_2, u_input.e, func_1(var_2, u_input.e, Struct_1(var_3.a, arg_0.d))).b, _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(sign(1126f))));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    let var_0 = max(u_input.d, global1[_wgslsmith_index_u32(u_input.d.x, 25u)]);
    global3 = _wgslsmith_f_op_f32(floor(arg_0.b.x));
    var var_1 = _wgslsmith_add_i32(arg_1, arg_1);
    global1 = array<vec3<u32>, 25>();
    let var_2 = arg_0;
    return !select(arg_0.d, var_2.d, all(select(vec4<bool>(true, true, true, true), arg_0.d, arg_0.d)) || global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.b.ww, vec2<i32>(-1i, 0i)) & vec2<i32>(u_input.b.x, u_input.b.x))), u_input.a, global2[_wgslsmith_index_u32(~(~u_input.d.x), 28u)] | true);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(520f + -799f), -676f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(650f + 1788f), -1792f)), !(!global4.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-808f + 1f) * -1029f), _wgslsmith_f_op_f32(floor(520f)), _wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) * 509f))), !func_5(func_4(Struct_2(-3144f, vec3<f32>(1306f, 599f, 495f), 497f, vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], false, global4.x, global4.x), -905f), func_1(var_0.x, vec4<u32>(u_input.e.x, 1u, u_input.d.x, 1u), Struct_1(u_input.d.yz, vec4<bool>(true, global4.x, false, false)))), abs(u_input.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-146f)), -3108f), -552f)), -1000f)));
    var var_2 = Struct_1(~vec2<u32>(~(~u_input.e.x), 9852u), !(!var_1.d));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(-u_input.c, var_0.x & -203i, -2147483647i) | vec3<i32>(max(u_input.a.x, u_input.a.x), ~var_0.x, u_input.b.x)));
}

