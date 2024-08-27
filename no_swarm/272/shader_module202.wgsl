struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_4(Struct_2(any(vec2<bool>(2147483647i > u_input.b.x, any(vec2<bool>(true, false)))), vec2<bool>(false, _wgslsmith_f_op_f32(arg_0 * arg_0) <= _wgslsmith_f_op_f32(-arg_0)), false, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 32488u), u_input.a.wy) > u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1760f)), _wgslsmith_div_vec3_f32(vec3<f32>(-431f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -237f) - vec3<f32>(1000f, -196f, 660f))))), all(select(vec3<bool>(false, u_input.b.x <= u_input.b.x, arg_0 > -626f), vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x < u_input.a.x, all(vec4<bool>(true, false, true, false))))));
    let var_1 = u_input.a.x < 69228u;
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))))))), all(!(!(!vec3<bool>(true, var_0.a.c, var_0.c)))));
    let var_2 = !(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(var_1, var_0.c, true), vec3<bool>(var_1, true, var_1)), !vec3<bool>(var_0.a.b.x, true, var_0.c), vec3<bool>(var_0.c, var_1, true)), !(!vec3<bool>(var_1, true, var_1)), all(!var_0.a.b)));
    var var_3 = var_0.a;
    return arg_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = vec2<u32>(~(~3040u >> (1u % 32u)), arg_3.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.yw);
    let var_2 = Struct_4(Struct_2(false, !(!(!arg_0.yz)), any(vec3<bool>(arg_1.x == var_1.x, true, arg_0.x)), arg_1.x < _wgslsmith_f_op_f32(f32(-1f) * -449f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(func_3(var_1.x))), arg_1.x, 1283f), true);
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(abs(var_0.x), _wgslsmith_div_u32(14392u, _wgslsmith_mult_u32(arg_3.x, arg_3.x)) << (select(var_0.x, firstLeadingBit(var_0.x), false) % 32u)), ~0u);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + 852f))))) * _wgslsmith_div_vec2_f32(var_2.b.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_1.x)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(-340f - arg_1.x), 706f, var_2.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -846f, -1565f, var_2.b.x)))));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(true, !(!all(vec2<bool>(false, true))), true, !all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, -379f, -706f, 1190f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(168f, 322f, -898f, 1000f)))))), true, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zzx, _wgslsmith_div_vec3_u32(vec3<u32>(25817u, u_input.a.x, 0u), u_input.a.wyw)), ~firstLeadingBit(~u_input.a.x), u_input.a.x)));
    let var_1 = u_input.b;
    let var_2 = false;
    let var_3 = Struct_3(Struct_2(true, select(vec2<bool>(all(vec2<bool>(var_2, false)), var_0.x <= var_0.x), select(vec2<bool>(true, true), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), true), select(vec2<bool>(var_2, true), vec2<bool>(var_2, false), vec2<bool>(true, false))), vec2<bool>(false, var_2)), !(true && !var_2), var_2), Struct_2(!var_2, select(select(!vec2<bool>(false, var_2), select(vec2<bool>(var_2, false), vec2<bool>(var_2, var_2), vec2<bool>(true, true)), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), var_2), !vec2<bool>(var_2, false), true), !select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), true)), true, !(false || !var_2)), Struct_2(var_2, vec2<bool>(true, true), true, true));
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(var_0.x, 423f, var_0.x, 1238f), var_2)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1057f, var_0.x, var_0.x, var_0.x))), !vec4<bool>(var_2, var_2, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(-1701f - 416f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x)));
    return select(!select(vec2<bool>(var_2 || false, false), select(select(var_3.b.b, vec2<bool>(var_3.b.b.x, var_2), true), var_3.c.b, true), var_2), select(vec2<bool>(true, var_2), select(!var_3.c.b, vec2<bool>(true | var_3.a.b.x, all(var_3.b.b)), select(var_3.c.b, vec2<bool>(false, var_2), var_2)), select(!select(var_3.b.b, var_3.c.b, var_3.a.b), select(vec2<bool>(var_3.a.a, false), vec2<bool>(true, var_3.b.a), select(var_3.a.b, var_3.b.b, true)), all(!vec3<bool>(var_3.b.a, var_3.b.b.x, var_3.a.d)))), select(!(!select(vec2<bool>(var_2, var_3.a.c), var_3.b.b, var_3.b.a)), var_3.c.b, any(!(!vec3<bool>(var_3.c.a, var_3.a.b.x, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, false), func_1())), select(vec2<bool>(true, true), vec2<bool>(true, false), 4294967295u < _wgslsmith_sub_u32(u_input.a.x, 8050u)), false);
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, ~1u, max(4294967295u, 1u)), u_input.a, ~(~reverseBits(u_input.a)));
    var var_2 = !(!select(select(vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x))), !vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, true, true, all(vec3<bool>(false, true, var_0.x)))));
    var_0 = var_2.yy;
    var var_3 = Struct_4(Struct_2(var_2.x, !select(select(vec2<bool>(true, var_0.x), var_2.yy, vec2<bool>(var_0.x, var_2.x)), var_2.ww, any(vec4<bool>(var_2.x, true, var_0.x, var_0.x))), var_2.x, false), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1749f + 154f), _wgslsmith_f_op_f32(abs(-686f)))), 1267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1473f * -1763f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-377f, 1300f, var_2.x))))), all(vec4<bool>(all(vec2<bool>(var_2.x, false)), all(var_2.zzz), !(!var_2.x), select(true, var_2.x, all(var_2.yz)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(var_3.b.x + -438f)) * _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_div_f32(var_3.b.x, var_3.b.x))))) + -436f);
    var_0 = select(vec2<bool>(all(vec4<bool>(select(true, var_2.x, false), var_2.x, var_0.x, -1i <= u_input.b.x)), !var_3.a.d), !vec2<bool>(select(true, false, !var_3.a.d), true), func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x & select(~_wgslsmith_add_u32(var_1.x, u_input.a.x), ~var_1.x, -14351i < _wgslsmith_mult_i32(2147483647i, u_input.b.x)));
}

