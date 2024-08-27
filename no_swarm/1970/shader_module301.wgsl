struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = select(true, !(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))) == false), false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(983f)), ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(914u, 3304u, 0u), vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(16821u, 4294967295u, 14490u))), ~(~vec3<u32>(6642u, 1u, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -479f), !select(vec3<bool>(any(vec2<bool>(var_0, false)), !var_0, var_0 && false), select(vec3<bool>(true, false, false), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, true, var_0), var_0), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0))), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, -493f, 130f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, 1000f, -818f)))))));
    let var_2 = true;
    var var_3 = Struct_3(select(var_1.d.zz, vec2<bool>(true, true), any(var_1.d)), Struct_2(~countOneBits(118792u), !vec4<bool>(false, !var_1.d.x, true || var_0, select(false, false, false))), var_1, _wgslsmith_mult_u32(1u | var_1.b.x, _wgslsmith_add_u32(var_1.b.x, var_1.b.x)));
    var_3 = Struct_3(select(var_3.c.d.xy, var_3.b.b.wx, select(var_3.a, select(!var_1.d.yy, vec2<bool>(true, false), !var_1.d.zz), vec2<bool>(var_0 != false, var_0))), var_3.b, Struct_1(var_3.c.a, _wgslsmith_add_vec3_u32(var_1.b, var_3.c.b), _wgslsmith_div_f32(2121f, 1059f), vec3<bool>(!(!var_0), any(vec2<bool>(true, true)), all(!vec3<bool>(var_0, var_2, var_1.d.x))), _wgslsmith_f_op_vec3_f32(var_3.c.e + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, -460f, var_3.c.c))))), 27329u ^ abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.b.x, 1u), 1u)));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = vec2<bool>(all(!select(vec4<bool>(true, arg_2, arg_2, arg_0.d.x), select(vec4<bool>(arg_0.d.x, false, false, arg_0.d.x), vec4<bool>(true, arg_0.d.x, arg_2, true), vec4<bool>(true, false, arg_2, false)), !vec4<bool>(arg_2, true, arg_2, arg_0.d.x))), false);
    let var_1 = Struct_3(arg_0.d.zx, Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(13633u, arg_0.b.x, arg_0.b.x, ~0u), ~select(vec4<u32>(arg_0.b.x, 4294967295u, arg_0.b.x, 0u), vec4<u32>(arg_0.b.x, 2619u, arg_0.b.x, 1u), false)), !vec4<bool>(true & arg_2, all(vec4<bool>(var_0.x, false, var_0.x, false)), true, arg_0.b.x >= arg_0.b.x)), Struct_1(arg_0.c, arg_0.b >> ((_wgslsmith_mod_vec3_u32(arg_0.b, arg_0.b) | reverseBits(arg_0.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + 731f) * _wgslsmith_f_op_f32(-arg_0.c)))), !vec3<bool>(func_2().d.x, any(vec4<bool>(false, arg_0.d.x, false, true)), var_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1058f, 792f, arg_0.a), _wgslsmith_f_op_vec3_f32(arg_0.e - vec3<f32>(arg_0.a, arg_0.a, 871f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-100f, arg_0.c, 1337f), arg_0.e, var_0.x)))))), reverseBits(arg_0.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), ~(vec3<u32>(~var_1.d, var_1.d | 43412u, var_1.d ^ arg_0.b.x) & arg_0.b), -1034f, !select(!select(arg_0.d, var_1.c.d, var_0.x), !func_2().d, true), arg_0.e);
    var_2 = Struct_1(719f, var_2.b, var_1.c.c, arg_0.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.e))))));
    var var_3 = var_2.b;
    return var_2.e.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.b >> (min(abs(1u), 3005u) % 32u), _wgslsmith_div_i32(~u_input.a.x, u_input.b) | max(0i, -72769i), 5869i, abs(_wgslsmith_mult_i32(~0i & (u_input.a.x << (4294967295u % 32u)), select(min(u_input.a.x, u_input.b), u_input.a.x, !arg_0.b.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(), u_input.a.x, !(arg_0.b.x != arg_0.b.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(10187u, 0u, arg_0.a)), ~(~vec3<u32>(1u, 0u, arg_0.a))), vec3<u32>(~(~arg_0.a), 73522u, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), !arg_0.b.wzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2193f, 1075f, 619f)))) + vec3<f32>(-484f, _wgslsmith_f_op_f32(step(1148f, 695f)), 250f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1408f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f * 580f) - _wgslsmith_f_op_f32(-711f - -1107f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f * 1000f)))));
    var_1 = func_2();
    let var_2 = -firstLeadingBit(select(-(~var_0.yy), -abs(var_0.zx), arg_0.b.xw));
    let var_3 = ~min(arg_0.a, 19871u);
    return Struct_1(_wgslsmith_f_op_f32(-970f + var_1.a), abs(~(~(~var_1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1827f, var_1.e.x)), _wgslsmith_f_op_f32(max(1087f, var_1.c)))), select(!var_1.d, select(select(var_1.d, vec3<bool>(var_1.d.x, arg_0.b.x, var_1.d.x), vec3<bool>(var_1.d.x, false, var_1.d.x)), !var_1.d, true), 836f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c, -949f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(624f, var_1.a, var_1.a) * vec3<f32>(var_1.a, var_1.a, -573f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c)))), arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f + arg_0.c) + 262f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.a, -1484f)), _wgslsmith_f_op_f32(f32(-1f) * -1815f))))));
    var var_1 = u_input.b;
    var var_2 = Struct_3(arg_0.d.yx, Struct_2(func_2().b.x, vec4<bool>(-41766i >= u_input.a.x, true, true, false)), arg_0, (~arg_1 | _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, arg_0.b.x, 62022u, arg_1), vec4<u32>(1u, 4294967295u, 1u, 33261u), arg_0.d.x), vec4<u32>(arg_0.b.x, 4294967295u, 2874u, 1u))) >> (4294967295u % 32u));
    var_1 = 14037i;
    let var_3 = any(!arg_0.d.xy);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(0u, ~0u);
    var var_1 = func_4(func_1(Struct_2(var_0.x, !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)))), ~0u);
    var var_2 = -u_input.a ^ u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.a, 522f, -118f)))));
}

