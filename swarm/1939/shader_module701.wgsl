struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -247f), -1000f)))), reverseBits(abs(0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) >> (vec3<u32>(5106u, 11147u, 88295u) % vec3<u32>(32u)), countOneBits(u_input.b))), arg_3.c);
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(ceil(arg_0.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-157f, arg_0.x, true)))))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_3.b, firstLeadingBit(103887u), arg_3.b, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_0.b, var_0.b, 36540u), reverseBits(vec4<u32>(3119u, 80963u, 4294967295u, 0u)))), select(var_0.c, vec2<i32>((-55610i & var_0.c.x) & var_0.c.x, _wgslsmith_sub_i32(u_input.a.x, 30436i)), all(!select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), true))));
    var_2 = arg_3;
    let var_3 = !select(!select(select(vec4<bool>(arg_1, true, arg_2, true), vec4<bool>(arg_1, true, true, arg_2), true), !vec4<bool>(arg_2, arg_1, arg_2, arg_1), select(vec4<bool>(true, arg_1, arg_2, arg_1), vec4<bool>(false, false, arg_1, true), false)), select(vec4<bool>(true, arg_1, any(vec3<bool>(arg_1, arg_1, true)), true), vec4<bool>(any(vec2<bool>(false, arg_1)), true, true, select(false, false, arg_2)), vec4<bool>(arg_1, true, !arg_1, arg_2)), !(!vec4<bool>(arg_2, false, arg_2, arg_1)));
    return -1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-496f, _wgslsmith_f_op_f32(min(-1008f, _wgslsmith_f_op_f32(-1503f - 320f)))))), u_input.b.x << (u_input.b.x % 32u), _wgslsmith_add_vec2_i32((vec2<i32>(14283i, u_input.c.x) | u_input.a) << (vec2<u32>(4943u ^ u_input.b.x, 0u) % vec2<u32>(32u)), u_input.a));
    var var_1 = ~countOneBits(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 1121f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a))), true, _wgslsmith_f_op_f32(-var_0.a) >= _wgslsmith_f_op_f32(-var_0.a), Struct_1(_wgslsmith_f_op_f32(1000f - 148f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 2655u, var_0.b, u_input.b.x), vec4<u32>(1u, var_0.b, 4294967295u, var_0.b)), -vec2<i32>(var_0.c.x, -65503i))));
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = Struct_1(var_0.a, min(u_input.b.x, abs(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), ~var_0.c);
    return Struct_1(var_0.a, var_0.b, min(var_0.c, abs(vec2<i32>(-15804i >> (0u % 32u), -50216i))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, 190f, -1098f)) * vec3<f32>(-139f, 1000f, _wgslsmith_div_f32(-922f, -1000f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, 1000f, 349f) - vec3<f32>(-234f, -1242f, -259f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, 1299f, -310f) * vec3<f32>(1000f, 712f, -1133f))))))));
    let var_1 = _wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    var var_2 = func_2();
    var var_3 = select(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(all(vec2<bool>(false, true)), true)), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec4<bool>(true, false, false, false))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), !vec2<bool>(select(false, true, false), false), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), true);
    var_2 = func_2();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<i32>) -> bool {
    let var_0 = max(max(u_input.b, vec3<u32>(func_2().b, 1u, 0u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b, 5582u, arg_0.b), vec3<u32>(4294967295u, 0u, 1738u)))), u_input.b, vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(2542u, 0u, arg_0.b, 12817u), vec4<u32>(116940u, arg_0.b, u_input.b.x, 4294967295u)), u_input.b.x, arg_1.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1159f, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-128f, 380f, 1055f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, arg_1.a, -1179f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, arg_0.a, arg_1.a))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.a, 1222f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(-1i >> (arg_1.b % 32u)).a, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + arg_0.a) + _wgslsmith_f_op_f32(ceil(arg_1.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(291f, 461f, -847f) * vec3<f32>(arg_0.a, -392f, -386f))))))));
    var var_2 = arg_1;
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-1000f - var_2.a), -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1029f, -600f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(((_wgslsmith_f_op_f32(floor(-843f)) >= -1173f) && true) != func_4(func_1(u_input.a.x), func_2(), ~vec4<i32>(u_input.a.x, 53122i, u_input.c.x, u_input.c.x) << (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), countOneBits(u_input.c.yyw)), !any(vec3<bool>(true, true, true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-287f * 1000f), -277f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-825f)) * _wgslsmith_f_op_f32(round(-1000f))))))));
    var var_2 = Struct_1(func_2().a, 54771u, u_input.a);
    let var_3 = select(select(vec3<bool>((var_0.x || false) && any(vec3<bool>(true, var_0.x, var_0.x)), true, true), select(vec3<bool>(!var_0.x, var_0.x, var_0.x), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x != false), !select(vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), false), var_0.x)), select(vec3<bool>(!func_4(Struct_1(var_1.x, var_2.b, vec2<i32>(-1i, -2147483647i)), Struct_1(-289f, u_input.b.x, u_input.c.yy), vec4<i32>(var_2.c.x, 3737i, u_input.a.x, -8440i), vec3<i32>(var_2.c.x, 2147483647i, 14397i)), !(var_0.x || var_0.x), true), vec3<bool>(!any(vec3<bool>(false, var_0.x, true)), var_2.c.x == (var_2.c.x | var_2.c.x), false), true), var_0.x);
    var_0 = select(var_3.zy, !select(!var_3.zx, !(!var_3.zx), true), var_3.zx);
    var_2 = func_2();
    var var_4 = vec4<bool>(u_input.b.x < 0u, !func_4(func_1(max(u_input.a.x, u_input.c.x)), func_2(), ~abs(u_input.c), vec3<i32>(u_input.c.x, u_input.c.x, ~var_2.c.x)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2040f * var_2.a)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), !all(var_3.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 1308f, var_2.a, var_2.a) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -708f, var_2.a, 187f), vec4<f32>(441f, 760f, -653f, 1053f)))))), -1000f, u_input.a);
}

