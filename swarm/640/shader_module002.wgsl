struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)), -970f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, -450f) + -255f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-751f))), -437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-965f))), -642f))));
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), false, Struct_1(-1i), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = var_1.c;
    var_2 = var_1.c;
    let var_3 = var_0.xzy;
    return vec4<u32>(~(~arg_0.x), 1u, ~59897u, 1748u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    var var_0 = select(func_3(~u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, (u_input.c.x & 96560u) | countOneBits(57216u), 1u), reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(23847u, 4294967295u, u_input.c.x, u_input.a), min(vec4<u32>(u_input.c.x, u_input.a, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 4294967295u, 57172u))))), !arg_1);
    var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x) << (vec4<u32>(51517u, var_0.x, u_input.c.x, 2594u) % vec4<u32>(32u)), vec4<u32>(1u, 18669u, 1u, 19023u)), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.c.x, 14826u, u_input.a, 4294967295u)))), vec4<u32>(~1u ^ _wgslsmith_dot_vec2_u32(~var_0.xy, var_0.xw >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~u_input.a, ~_wgslsmith_add_u32(min(var_0.x, u_input.a), 1u), ~_wgslsmith_mult_u32(4294967295u, 1u)));
    let var_1 = Struct_2(!select(vec4<bool>(any(vec4<bool>(arg_0.x, arg_0.x, false, arg_1)), arg_2.x | arg_0.x, all(vec2<bool>(false, false)), !arg_1), !select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(false, arg_0.x, arg_2.x, true), vec4<bool>(arg_0.x, true, false, arg_1)), false), arg_1, Struct_1(_wgslsmith_sub_i32(~(~39028i), (i32(-1i) * -12275i) & -u_input.d)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1122f, 819f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(780f)) + _wgslsmith_div_f32(1542f, -936f))), _wgslsmith_f_op_f32(-1f)));
    var_0 = ~vec4<u32>(14201u, ~(~(var_0.x ^ var_0.x)), 11490u, abs(abs(4294967295u)));
    let var_2 = -vec3<i32>(firstTrailingBit(u_input.d) | ~var_1.c.a, _wgslsmith_div_i32(var_1.c.a, 1i), _wgslsmith_dot_vec2_i32(-countOneBits(u_input.b), _wgslsmith_mult_vec2_i32(~u_input.b, u_input.b)));
    return u_input.d;
}

fn func_1() -> Struct_2 {
    let var_0 = reverseBits(~vec2<i32>(func_2(vec2<bool>(false, false), true, vec3<bool>(false, true, false)), func_2(vec2<bool>(false, true), false, vec3<bool>(true, false, false)))) >> (vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, 9532u), vec3<u32>(u_input.c.x, u_input.a, u_input.a)), vec3<u32>(u_input.a, 31949u, u_input.c.x))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(786f, 710f, 700f, 701f), vec4<f32>(-208f, 1619f, -2392f, 493f))), vec4<f32>(234f, 378f, 311f, -935f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, -1450f, 1164f, -1000f)))))));
    let var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    var var_3 = ~_wgslsmith_div_u32(~4294967295u, ~0u);
    var var_4 = select(u_input.c, vec2<u32>(u_input.a, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 17021u, u_input.c.x), vec3<u32>(u_input.a, u_input.c.x, 0u)) >> (0u % 32u))), vec2<bool>(false, true));
    return Struct_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, false, false))), true, Struct_1(18579i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1437f, var_2)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_1.wy)))))) + _wgslsmith_f_op_vec2_f32(-var_1.ww)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    let var_2 = func_1().c;
    let var_3 = func_1().c;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)));
    var var_5 = Struct_1(1i);
    var_4 = 1098f;
    let var_6 = var_0;
    let var_7 = Struct_1(abs(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(6469i, var_6.c.a, 2147483647i, -1i), vec4<i32>(38395i, var_5.a, var_0.c.a, 1i), var_6.a), ~firstLeadingBit(vec4<i32>(var_3.a, -60i, -20709i, 12059i)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c));
}

