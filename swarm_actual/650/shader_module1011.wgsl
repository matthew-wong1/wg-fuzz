struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(61596i, i32(-2147483648), 2147483647i, 216i), vec4<i32>(-41394i, 2147483647i, 2147483647i, 1i), vec4<i32>(-1i, -7843i, i32(-2147483648), -35453i), vec4<i32>(i32(-2147483648), 1881i, -1i, 0i), vec4<i32>(-27250i, -19058i, i32(-2147483648), -17309i), vec4<i32>(20467i, 2147483647i, 1i, 38735i), vec4<i32>(-1i, 7086i, -37481i, -5104i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(-464f, -1217f)), -184f)))), ~u_input.a.yzx, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - -365f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)))), -881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-616f, 795f)))), countOneBits(i32(-1i) * -13789i));
    let var_1 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    global0 = array<vec4<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1322f);
    return var_0;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = select(select(!(!arg_2), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-23297i, 0i), vec2<i32>(-37928i, arg_0)) <= firstLeadingBit(u_input.b), true), !select(vec2<bool>(false, false), select(vec2<bool>(arg_1, arg_2.x), arg_2, false), false == arg_1)), arg_2, vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -915f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-458f, 2720f)))), any(vec2<bool>(arg_2.x, all(vec2<bool>(true, arg_2.x))))));
    global0 = array<vec4<i32>, 7>();
    var var_1 = -1495f;
    global0 = array<vec4<i32>, 7>();
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -573f, -855f, -1404f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 285f, -630f, 523f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1673f, -1092f, 1308f) + vec4<f32>(-966f, -462f, 382f, -795f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, -1903f, -924f, -161f)))))));
    return true;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -122f), vec2<f32>(-1336f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(339f, -1000f)))))))), var_0.b, var_0.c, u_input.b);
    return !vec2<bool>(!(!func_3(-8241i, true, vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), func_1(), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), true)), vec2<bool>(true, true), !(!all(vec3<bool>(true, true, true)))), false);
    global0 = array<vec4<i32>, 7>();
    global0 = array<vec4<i32>, 7>();
    var var_1 = i32(-1i) * -1i;
    var var_2 = Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, !all(!var_0)), Struct_2(func_2()), false, !(any(select(vec2<bool>(var_0.x, true), var_0, false)) & (abs(u_input.a.x) != ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(min(u_input.a.x, 4630u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(var_2.b.a.b.yx, vec2<u32>(0u, u_input.a.x))) | 14498u, ~var_2.b.a.b.x, u_input.a.x, ~u_input.a.x), (vec4<i32>(6434i, 0i, -1i, ~u_input.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.a.b.x, 0u, 41717u, u_input.a.x), firstLeadingBit(u_input.a)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(12998u, 28727u ^ u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 45679u, 4294967295u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 12217u, 17473u)), func_2().b.x), vec4<u32>(_wgslsmith_clamp_u32(1u, 3633u, 1u), 4294967295u, ~u_input.a.x, 49741u ^ u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(reverseBits(var_2.b.a.b.x), firstTrailingBit(u_input.a.x), firstLeadingBit(var_2.b.a.b.x), 1u), vec4<u32>(var_2.b.a.b.x, ~10039u, 68083u ^ var_2.b.a.b.x, 0u), var_2.c), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u) & u_input.a), var_2.b.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2.b.a.c.x)), _wgslsmith_f_op_f32(-206f - var_2.b.a.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_2.b.a.c.x, -1857f)))))))));
}

