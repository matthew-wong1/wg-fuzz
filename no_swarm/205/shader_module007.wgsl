struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: bool;

var<private> global2: u32 = 1u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(-1000f, -firstLeadingBit(_wgslsmith_add_i32(abs(47659i), max(arg_2, 16174i))), _wgslsmith_f_op_vec2_f32(-arg_3), !(!select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, false, arg_1), true), select(vec3<bool>(false, true, false), vec3<bool>(arg_1, false, false), true))), select(!select(!vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_1), vec3<bool>(false, false, arg_1)), select(arg_1, arg_1, true)), select(vec3<bool>(arg_1 & true, any(vec3<bool>(true, false, true)), any(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), vec3<bool>(all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1, !arg_1), any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, true), arg_1))), !any(vec4<bool>(arg_1, true, false, arg_1))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - arg_0), -1000f, _wgslsmith_f_op_f32(step(var_0.a, -290f)), 775f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1643f))), -853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c.x, arg_0)))), _wgslsmith_f_op_f32(abs(arg_3.x)))));
    var var_2 = vec4<u32>(~(~0u), firstTrailingBit(min(~4294967295u, 1u)), _wgslsmith_add_u32(58093u, u_input.b), u_input.b);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1651f), _wgslsmith_dot_vec2_i32(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, 1i))), abs((vec2<i32>(var_0.b, 3425i) >> (vec2<u32>(38438u, u_input.b) % vec2<u32>(32u))) & (vec2<i32>(-14985i, arg_2) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a - 596f), _wgslsmith_f_op_f32(exp2(arg_0)))))), vec3<bool>(all(vec2<bool>(var_0.e.x != false, global0[_wgslsmith_index_u32(u_input.b, 30u)] <= 1i)), !(var_0.a == _wgslsmith_f_op_f32(-arg_3.x)), 0i >= var_0.b), select(var_0.e, !select(vec3<bool>(false, false, arg_1), var_0.e, vec3<bool>(true, var_0.e.x, false)), true));
    global1 = select(!(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(11128i, arg_2), vec2<i32>(27319i, -1i)), -40791i) < u_input.a), true, var_0.d.x);
    return !vec3<bool>(all(var_3.d.zx), true, !(!(!var_3.e.x)));
}

fn func_2() -> f32 {
    global2 = _wgslsmith_mod_u32(u_input.b, 1u);
    global0 = array<i32, 30>();
    global1 = all(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), func_3(_wgslsmith_f_op_f32(-445f - -332f), true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(81465u, u_input.b, u_input.b), 30u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1154f, -966f), vec2<f32>(106f, 221f)))), !func_3(758f, false, 0i, vec2<f32>(1000f, 945f)).x));
    global2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(min(_wgslsmith_sub_u32(u_input.b & 33255u, 38661u), ~(~u_input.b)), u_input.b), (u_input.b | u_input.b) | ~1u, abs(_wgslsmith_div_u32(4294967295u, ~u_input.b)));
    global0 = array<i32, 30>();
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_u32(firstLeadingBit(arg_1), ~(~(~7203u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f - arg_0.c.x) * -391f))), _wgslsmith_f_op_f32(-arg_0.c.x), -1505f);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-193f, _wgslsmith_div_f32(var_1.x, var_1.x))))))) != var_1.x;
    global0 = array<i32, 30>();
    global2 = ~(~(~(~u_input.b)) ^ 56795u);
    return arg_0;
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(Struct_1(-526f, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 30u)]), vec2<f32>(_wgslsmith_f_op_f32(810f * _wgslsmith_div_f32(-150f, -1396f)), _wgslsmith_f_op_f32(func_2())), select(vec3<bool>(true, true, true), func_3(-701f, false, reverseBits(-1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(356f, -1001f) * vec2<f32>(-1530f, -793f))), true), vec3<bool>(true, 1u <= (0u >> (u_input.b % 32u)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))))), ~0u >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -599f));
    var var_2 = var_0;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1991f, 166f)))), -1427f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    global1 = arg_0.e.x;
    global0 = array<i32, 30>();
    let var_1 = func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -608f), -arg_2.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1189f, -1063f))), arg_2.d, func_4(Struct_1(arg_0.a, u_input.c, vec2<f32>(-578f, arg_2.a), vec3<bool>(arg_0.e.x, true, true), vec3<bool>(false, true, arg_0.e.x)), arg_1.x).e), arg_1.x), 3823u), countOneBits(~max(33505u, 4294967295u) >> (arg_1.x % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f * arg_0.a) - func_4(var_1, arg_1.x).c.x)))), ~_wgslsmith_clamp_i32(1i, 2147483647i, max(~(-28442i), var_1.b)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(f32(-1f) * -857f))), !var_0.d, var_1.e);
    return _wgslsmith_mod_u32(max(~1433u, 1u), (~reverseBits(u_input.b) & (_wgslsmith_div_u32(arg_1.x, u_input.b) & 57418u)) >> (u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (~_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(52453u, u_input.b), vec2<u32>(0u, 1u))) & u_input.b) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(70808u, u_input.b), abs(~u_input.b) | select(_wgslsmith_mult_u32(0u, 0u), 52589u, false));
    let var_0 = firstLeadingBit(firstTrailingBit(~(~vec2<u32>(1u, 1u))));
    global1 = all(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true), !any(vec4<bool>(true, true, true, true))));
    var var_1 = func_5(Struct_1(873f, 5728i, _wgslsmith_f_op_vec2_f32(func_1()), select(!func_3(-1394f, false, -14524i, vec2<f32>(-932f, -1603f)), vec3<bool>(true, false, true), !(global0[_wgslsmith_index_u32(var_0.x, 30u)] < -25296i)), func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true, 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-992f, 331f), vec2<f32>(-991f, -1477f)))))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, ~38106u, _wgslsmith_sub_u32(4294967295u, 29551u), 26780u ^ var_0.x), vec4<u32>(~9376u, ~u_input.b, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(5352u, var_0.x)), 22058u))), func_4(func_4(func_4(Struct_1(299f, global0[_wgslsmith_index_u32(1u, 30u)], vec2<f32>(-619f, -1000f), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), reverseBits(4294967295u)), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 18738u), _wgslsmith_sub_u32(u_input.b, var_0.x))), firstTrailingBit(8222u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f), func_4(func_4(Struct_1(176f, -9351i, vec2<f32>(-459f, 119f), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 61665u), 1u).a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, _wgslsmith_clamp_i32(50587i, global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)]), abs(-49866i), u_input.a | -43772i), (vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.b, 30u)], u_input.c)) | vec4<i32>(reverseBits(1i), ~u_input.a, u_input.d, 1i)), func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -370f) + _wgslsmith_f_op_f32(-301f * -264f)), global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-449f, -991f), _wgslsmith_div_vec2_f32(vec2<f32>(2675f, 1708f), vec2<f32>(-1024f, 197f)), vec2<bool>(false, true))), vec3<bool>(false, true, true), func_4(func_4(Struct_1(-368f, 1i, vec2<f32>(636f, -915f), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), u_input.b), 44293u).d), _wgslsmith_sub_u32(80499u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 1u, u_input.b))) & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 56348u, u_input.b, var_0.x), vec4<u32>(var_0.x, var_0.x, u_input.b, 40360u)), 0u)).c, vec3<bool>(true, false, all(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), true))), !func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)), any(vec4<bool>(true, true, true, true)) && true, reverseBits(select(global0[_wgslsmith_index_u32(u_input.b, 30u)], 24266i, false)), vec2<f32>(1f, 1f)));
    global2 = 4294967295u;
    global1 = any(vec4<bool>(!var_2.e.x, var_2.e.x, func_4(Struct_1(-673f, u_input.c, vec2<f32>(var_2.a, var_2.c.x), func_3(var_2.c.x, var_2.e.x, -6028i, vec2<f32>(var_2.a, 1619f)), var_2.e), 4294967295u).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * -333f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-561f, -276f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~9409u, ~(~abs(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b ^ var_0.x, 1u), var_0), var_0.x));
}

