struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_4(Struct_2(all(!(!vec3<bool>(arg_0.x, arg_0.x, false))), true || !arg_0.x, false, arg_0.x));
    let var_1 = u_input.b.zyx;
    let var_2 = _wgslsmith_mult_u32(abs(countOneBits(u_input.a.x | _wgslsmith_sub_u32(18306u, 1u))), ~((4294967295u ^ _wgslsmith_clamp_u32(4294967295u, 19126u, u_input.a.x)) >> (_wgslsmith_sub_u32(~46863u, u_input.a.x) % 32u)));
    let var_3 = Struct_5(!select(!select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.x, arg_1.a.d)), vec3<bool>(true, !arg_1.a.d, arg_1.a.d), true), Struct_2(false == all(!vec4<bool>(true, false, arg_0.x, true)), arg_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(23253u, 57705u), u_input.a), vec2<u32>(var_2, 1u) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) >= 4294967295u, false), _wgslsmith_f_op_f32(-1f), ~(vec4<u32>(var_2, 141290u, 1u, var_2) << (~vec4<u32>(u_input.a.x, u_input.a.x, 32789u, var_2) % vec4<u32>(32u))) & select(~(~vec4<u32>(u_input.a.x, var_2, u_input.a.x, 0u)), max(~vec4<u32>(22336u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(52643u, 1u, 4294967295u, 10704u)), any(arg_0)));
    global0 = array<Struct_3, 8>();
    return 51545u;
}

fn func_2(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = all(!(!select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, false)), vec2<bool>(arg_0, arg_0))));
    var var_1 = countOneBits(abs(abs(0i))) < u_input.c;
    global0 = array<Struct_3, 8>();
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(arg_1, select(_wgslsmith_mod_u32(arg_1, u_input.a.x), func_3(vec2<bool>(true, false), Struct_4(Struct_2(arg_0, false, var_0, true))), true)) | reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 75194u, 62411u), ~vec3<u32>(20199u, u_input.a.x, 4294967295u))));
    global0 = array<Struct_3, 8>();
    return abs(max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(1u, 12083u)), arg_1), _wgslsmith_mod_u32(1u, ~func_3(vec2<bool>(true, false), Struct_4(Struct_2(arg_0, false, false, var_0))))));
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_3, 8>();
    let var_0 = !(func_2(true, ~(~u_input.a.x)) <= abs(0u));
    let var_1 = 54680u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(988f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-176f, 1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f * 989f) - _wgslsmith_f_op_f32(449f * -1222f)), 196f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1629f);
    let var_3 = Struct_4(Struct_2(-42705i != u_input.c, true, var_0, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, var_0, true, false)), vec4<bool>(var_0, var_0, true, false), true))));
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_4 {
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    var var_0 = Struct_1(0u, vec2<bool>(_wgslsmith_f_op_f32(-arg_2.c) <= -1341f, ((-28126i < u_input.c) && false) || arg_2.b.a), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-959f)), _wgslsmith_f_op_f32(-arg_2.c))))), _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - 179f) * _wgslsmith_f_op_f32(min(-315f, arg_2.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.c, arg_2.c), vec2<f32>(356f, arg_2.c))) * vec2<f32>(arg_2.c, arg_2.c))) - vec2<f32>(1335f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_2.c, 118f)))))));
    let var_1 = func_1().a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), vec2<bool>(func_1().a.b, true), Struct_5(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_2(false, any(vec4<bool>(true, true, true, true)), true, true || any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(936f * 1085f), _wgslsmith_f_op_f32(floor(1104f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2082f), 1354f))), ~(~(~vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x)))));
    var var_1 = _wgslsmith_mod_u32(~(~abs(u_input.a.x & 0u)), u_input.a.x);
    var var_2 = Struct_1(25845u & ~select(4294967295u, ~u_input.a.x, any(vec4<bool>(true, var_0.a.a, true, true))), !select(vec2<bool>(true, !var_0.a.a), vec2<bool>(true, var_0.a.d), vec2<bool>(var_0.a.a, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1036f, -233f, false)) + _wgslsmith_f_op_f32(step(416f, 1000f))) * 387f), -664f, 484f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-322f, 442f)))))))));
    let var_3 = Struct_5(select(!vec3<bool>(var_0.a.d, true, false), select(vec3<bool>(any(vec3<bool>(var_0.a.b, var_2.b.x, var_0.a.c)), 702f <= var_2.c.x, true), !vec3<bool>(false, var_0.a.a, false), vec3<bool>(any(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_0.a.d)), var_0.a.c, var_2.b.x)), all(var_2.b)), Struct_2(true, !any(select(var_2.b, vec2<bool>(var_2.b.x, true), false)), any(!select(vec4<bool>(var_2.b.x, var_0.a.c, false, true), vec4<bool>(false, true, false, var_2.b.x), var_0.a.d)), !any(!var_2.b)), -1271f, reverseBits(vec4<u32>(1u, ~u_input.a.x, _wgslsmith_sub_u32(var_2.a | var_2.a, ~u_input.a.x), 4294967295u)));
    var_0 = func_4(func_4(func_1(), var_2.b, var_3), !select(vec2<bool>(var_2.b.x || var_3.b.d, u_input.b.x >= 0i), vec2<bool>(true, true), (var_3.b.c == var_0.a.d) || var_3.b.b), Struct_5(var_3.a, var_3.b, _wgslsmith_f_op_f32(324f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.d.x + var_3.c), _wgslsmith_f_op_f32(var_3.c + 1347f)))), var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(40715u ^ u_input.a.x, ~4294967295u, u_input.b.x);
}

