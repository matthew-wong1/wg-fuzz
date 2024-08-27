struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 98801u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = !(!all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, ~29395u, 4294967295u), min(29400u, 4807u));
    let var_1 = Struct_3(select(select(vec3<bool>(false, true, var_0), vec3<bool>(true, true | var_0, -1i <= u_input.c), select(!vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, var_0), any(vec3<bool>(true, false, var_0)))), !(!vec3<bool>(true, false, var_0)), vec3<bool>(!(false && var_0), all(!vec3<bool>(var_0, false, false)), select(u_input.e, -2147483647i, true) == (-1i ^ u_input.e))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(947f)))), _wgslsmith_f_op_f32(f32(-1f) * -270f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 590f)) + 1516f), !any(!vec4<bool>(false, true, var_0, true)), !var_0, 4294967295u));
    let var_2 = 125f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.b.a)), var_2))));
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(select(vec3<bool>(true, !select(true, true, true), 13507u == u_input.b), select(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !((u_input.e < u_input.d.x) || true)), Struct_2(_wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(-1560f * _wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_div_f32(-1000f, -410f), true || any(vec4<bool>(false, false, false, false)), true, 1u));
    global0 = _wgslsmith_clamp_u32(74664u, abs(var_0.b.e), 0u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-209f))))), var_0.b.c, !(!func_3()), _wgslsmith_sub_u32(min(u_input.a | 7167u, _wgslsmith_clamp_u32(var_0.b.e, 1u, u_input.b)), u_input.a) << (~_wgslsmith_mult_u32(47739u, _wgslsmith_mult_u32(var_0.b.e, var_0.b.e)) % 32u));
    var var_2 = var_0;
    var var_3 = _wgslsmith_mod_u32(0u, var_1.e);
    return Struct_3(vec3<bool>(var_2.a.x, false, var_2.b.c && !var_1.d), Struct_2(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.a, var_0.b.a)))))), !all(!vec4<bool>(false, var_1.c, var_2.a.x, var_0.a.x)), !var_1.d || !(true | var_0.b.d), ~max(27458u ^ var_0.b.e, 48428u | u_input.b)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.b.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-834f)) * _wgslsmith_f_op_f32(-arg_0.b.b.b)) * _wgslsmith_f_op_f32(-711f - 1066f)))));
    let var_1 = _wgslsmith_sub_i32(2147483647i, ~(-1i));
    var var_2 = ~vec3<i32>(-3393i, _wgslsmith_add_i32(arg_2.a & -2147483647i, _wgslsmith_sub_i32(-23452i, _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(-61902i, -35618i)))), firstTrailingBit(arg_2.a));
    var var_3 = Struct_4(_wgslsmith_clamp_i32(-arg_2.a, ~48807i, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(39278i, var_1), select(arg_2.a, -24718i | var_1, var_1 < arg_2.a))), func_2());
    var var_4 = Struct_2(-202f, -1001f, ~func_2().b.e > arg_3.x, (var_3.b.a.x || var_3.b.a.x) & false, _wgslsmith_mult_u32(12874u, ~max(firstLeadingBit(arg_3.x), 6513u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2992f, _wgslsmith_f_op_f32(var_0 + -1172f)), var_0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) - -612f))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: bool) -> vec2<f32> {
    let var_0 = func_2().b;
    let var_1 = vec2<bool>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.e | arg_0.e, _wgslsmith_div_u32(0u, arg_1)), ~func_2().b.e) >= ~46279u, func_2().b.d);
    let var_2 = Struct_1(arg_0.b, 617f);
    global0 = 1u;
    let var_3 = u_input.e;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-var_2.b)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    let var_0 = u_input.d.yy;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(-35718i, Struct_3(arg_1, Struct_2(-377f, 218f, arg_1.x, true, u_input.b))), func_2(), Struct_4(u_input.c, Struct_3(arg_1, Struct_2(2009f, 2534f, arg_1.x, true, 1u))), vec3<u32>(25043u, arg_0, 1u) << (vec3<u32>(arg_0, 0u, 0u) % vec3<u32>(32u)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1177f, 213f))), _wgslsmith_f_op_f32(-344f - 1000f), any(!select(vec2<bool>(false, arg_1.x), arg_1.zz, arg_1.zx)), true, 4294967295u), u_input.b, -2147483647i, true));
    global0 = _wgslsmith_sub_u32(~max(select(28209u, _wgslsmith_clamp_u32(u_input.b, 30821u, arg_0), false), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(117067u, 0u, 10711u), vec3<u32>(u_input.b, 1u, u_input.b)))), _wgslsmith_clamp_u32(~arg_0 << (4294967295u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(14983u, 1u, 12486u, u_input.a) & ~vec4<u32>(arg_0, arg_0, 46389u, u_input.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, u_input.a, arg_0, arg_0), abs(vec4<u32>(4294967295u, u_input.a, arg_0, 4294967295u)), select(vec4<u32>(39945u, 1u, 0u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)))), ~84864u));
    let var_2 = Struct_4(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.d.x, -84541i), countOneBits(~u_input.e)) >> (16216u % 32u), Struct_3(select(select(select(arg_1, arg_1, arg_1), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1), !(!arg_1), countOneBits(8936u) != ~arg_0), Struct_2(-1976f, var_1.x, arg_1.x, true, min(_wgslsmith_dot_vec4_u32(vec4<u32>(33060u, arg_0, 0u, u_input.a), vec4<u32>(u_input.a, 11894u, u_input.a, 4294967295u)), ~44339u))));
    var var_3 = ~u_input.d;
    return var_2.b.b.e >> (u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = ~func_1((~u_input.b ^ u_input.a) ^ u_input.b, vec3<bool>(false, true, true));
    var var_0 = vec2<bool>(!select(0u != (u_input.b ^ 17542u), false, false), true);
    let var_1 = Struct_4(19566i, func_2());
    var_0 = !select(!var_1.b.a.yy, func_2().a.yx, select(!(!var_1.b.a.yx), vec2<bool>(func_3(), all(vec4<bool>(var_0.x, true, true, false))), !(!var_1.b.b.d)));
    global0 = 23702u;
    var var_2 = 36306i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().b.a, _wgslsmith_f_op_f32(sign(-442f)), -256f, -1542f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.b.a)) - 1056f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.b * var_1.b.b.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(929f, var_1.b.b.b, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, 2133f, 798f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 205f, 619f), vec3<f32>(var_1.b.b.a, var_1.b.b.a, -392f), var_1.b.b.d))))), u_input.d, u_input.d.zzy);
}

