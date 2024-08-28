struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = 14392i;
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_1 = vec2<bool>(!any(vec2<bool>(false, true)), !any(vec3<bool>(true, false, false)) || all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))));
    let var_2 = abs(vec2<u32>(~1u, 56116u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1000f, false)), -691f) - -357f);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 32>();
    let var_0 = Struct_1(u_input.a, arg_1);
    global0 = array<vec4<i32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) - 1000f);
    global0 = array<vec4<i32>, 32>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1033f, vec4<i32>(var_0.a.x, arg_3.a.x, 1i, arg_3.a.x), vec4<u32>(var_0.b, 4294967295u, arg_1, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, var_1))) - _wgslsmith_f_op_f32(f32(-1f) * -1395f))));
}

fn func_4(arg_0: f32) -> Struct_1 {
    global0 = array<vec4<i32>, 32>();
    let var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, _wgslsmith_div_f32(arg_0, arg_0) < arg_0, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 32u)], vec4<i32>(u_input.b, u_input.a.x, u_input.b, 32837i)) <= firstTrailingBit(u_input.a.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, _wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.zx, u_input.a.zy)), u_input.c, ~_wgslsmith_sub_i32(~(-26022i), _wgslsmith_add_i32(18691i, 1i))), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    var var_0 = true;
    var_0 = any(select(vec3<bool>(!(arg_3 | true), false, arg_3), !vec3<bool>(arg_0.a.x != arg_0.a.x, arg_3, -22226i == u_input.b), vec3<bool>(!(!arg_3), true, true)));
    var var_1 = Struct_1(arg_0.a >> (arg_1 % vec3<u32>(32u)), func_4(-121f).b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(253f, -862f)) - 121f)))) > _wgslsmith_f_op_f32(419f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f + 793f) + -1000f));
    var var_3 = select(select(select(vec4<bool>(arg_3, arg_3, !arg_3, 20992u != arg_2.b), vec4<bool>(var_2, true, var_2, arg_3), !vec4<bool>(var_2, var_2, true, false)), vec4<bool>(true, var_2, arg_3, !(arg_2.b >= var_1.b)), select(select(vec4<bool>(var_2, false, false, false), select(vec4<bool>(arg_3, true, var_2, arg_3), vec4<bool>(arg_3, false, false, false), var_2), !vec4<bool>(false, arg_3, arg_3, var_2)), !vec4<bool>(var_2, false, true, false), select(!vec4<bool>(var_2, false, arg_3, false), vec4<bool>(false, false, arg_3, false), all(vec3<bool>(arg_3, var_2, var_2))))), !select(select(!vec4<bool>(false, var_2, true, arg_3), select(vec4<bool>(false, arg_3, true, false), vec4<bool>(var_2, var_2, true, false), true), true), !vec4<bool>(var_2, var_2, false, var_2), all(vec2<bool>(true, true))), var_2 & false);
    return -arg_0.a.zy;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_i32(-u_input.a.zx, func_5(func_4(_wgslsmith_div_f32(-356f, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 32u)], 29573u, vec3<f32>(-1087f, -414f, -1000f), Struct_1(vec3<i32>(-14296i, u_input.b, 36584i), 0u))))), vec3<u32>(func_4(1327f).b, 1u, 1u), Struct_1(min(min(u_input.a, u_input.a), u_input.a), ~reverseBits(4294967295u)), true));
    let var_1 = !(-532f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - 2502f)))));
    let var_2 = vec2<i32>(u_input.a.x, _wgslsmith_add_i32(1721i, _wgslsmith_sub_i32(u_input.c, firstTrailingBit(~(-2147483647i)))));
    return Struct_1(vec3<i32>(min(-15450i, var_0.x), select(-10283i, var_2.x, false), var_0.x), ~_wgslsmith_add_u32(1u, 1u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), 707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * -1968f) + _wgslsmith_f_op_f32(f32(-1f) * -315f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1628f, 1490f))))));
    var var_1 = _wgslsmith_sub_i32(arg_1.a.x, arg_0.a.x);
    let var_2 = func_1();
    let var_3 = arg_1;
    var var_4 = abs(0u);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 32>();
    var var_0 = func_6(func_1(), Struct_1(abs(u_input.a), ~_wgslsmith_sub_u32(13141u, _wgslsmith_dot_vec4_u32(vec4<u32>(12537u, 1u, 86047u, 4294967295u), vec4<u32>(4294967295u, 15017u, 4294967295u, 1u)))));
    global0 = array<vec4<i32>, 32>();
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = all(vec2<bool>(true, true));
    var var_3 = max(vec3<u32>(~19972u, _wgslsmith_mult_u32(func_4(920f).b, 22203u), 19834u), vec3<u32>(~(~(12718u >> (1u % 32u))), 70993u, 1u));
    var var_4 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, u_input.c, u_input.a.x), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -1222i, u_input.b))) >> (vec3<u32>(20607u, var_3.x, var_3.x) % vec3<u32>(32u))), var_3.x);
    var var_5 = Struct_1(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(~(-2147483647i), u_input.c), u_input.c), firstLeadingBit(abs(var_4.b)));
    let var_6 = func_4(208f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1185f, 356f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 547f), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], 7616u, vec3<f32>(1000f, -577f, -982f), Struct_1(vec3<i32>(var_6.a.x, var_6.a.x, -1i), 22786u))) > _wgslsmith_div_f32(-335f, -440f))), -1000f), _wgslsmith_f_op_f32(-453f * -442f), ~1i, _wgslsmith_div_u32(var_3.x, var_3.x), 136u);
}

