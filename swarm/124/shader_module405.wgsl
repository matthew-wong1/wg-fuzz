struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    return abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, abs(u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b, max(u_input.b, vec2<u32>(u_input.b.x, u_input.a))), u_input.b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(-(~(~vec3<i32>(2147483647i, u_input.c.x, u_input.c.x))) << (~abs(select(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), vec3<u32>(73154u, 1u, u_input.a), false)) % vec3<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, _wgslsmith_div_u32(53232u, 19892u), ~u_input.a, u_input.b.x), select(~vec4<u32>(0u, u_input.b.x, 34423u, u_input.b.x), ~(~vec4<u32>(u_input.b.x, u_input.a, 64977u, 4709u)), vec4<bool>(true, true, true, true))), u_input.c.zz, 1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-959f, -461f, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-226f, -181f, -683f)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(632f)), _wgslsmith_f_op_f32(306f - 241f), _wgslsmith_f_op_f32(902f * -1000f)))), !(1u <= select(u_input.b.x, u_input.b.x, false)))));
    let var_1 = Struct_2(var_0.b.xw, any(vec2<bool>(true, true)));
    var var_2 = -6996i;
    var var_3 = var_1.a;
    var var_4 = Struct_1(var_0.a | var_0.a, countOneBits(var_0.b), ~(~u_input.c.yx), 4294967295u, var_0.e);
    return u_input.b;
}

fn func_1() -> bool {
    var var_0 = false;
    let var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x << (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xzx)), u_input.c.zz) << (_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(func_2(u_input.c.x), u_input.b), ~u_input.b)) % 32u);
    var var_2 = Struct_2(func_3(), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)) || any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var_0 = any(select(!vec4<bool>(!var_2.b, true, any(vec2<bool>(false, var_2.b)), var_2.b), select(vec4<bool>(var_2.b, var_2.b, all(vec2<bool>(var_2.b, var_2.b)), true), vec4<bool>(var_2.b, !var_2.b, var_2.b, !var_2.b), select(vec4<bool>(true, false, var_2.b, var_2.b), select(vec4<bool>(false, false, true, false), vec4<bool>(var_2.b, var_2.b, var_2.b, true), var_2.b), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, var_2.b), true))), vec4<bool>(true, all(vec4<bool>(var_2.b, var_2.b, var_2.b, true)), !var_2.b, var_2.b)));
    var var_3 = Struct_2(~_wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(var_2.a, var_2.a), select(u_input.b, vec2<u32>(var_2.a.x, var_2.a.x), vec2<bool>(var_2.b, true)), !vec2<bool>(var_2.b, true)), u_input.b), any(select(!vec2<bool>(var_2.b, true), select(!vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, false)), select(!vec2<bool>(var_2.b, false), !vec2<bool>(var_2.b, false), vec2<bool>(true, true)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(func_1(), !(21958u > u_input.a), true, true), !vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, select(false, false, false)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(339f, -1474f), _wgslsmith_f_op_f32(f32(-1f) * -2020f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1205f * 1556f), 1225f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(701f, -504f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1556f, 170f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(569f, 956f), _wgslsmith_div_vec2_f32(vec2<f32>(-1059f, -1268f), vec2<f32>(239f, 366f)), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1604f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(881f, -698f)) * _wgslsmith_f_op_f32(min(1000f, 144f)))))));
    var var_2 = Struct_2(select(u_input.b, u_input.b, select(vec2<bool>(var_0.x, all(vec2<bool>(false, var_0.x))), !var_0.zy, var_0.zy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) * _wgslsmith_f_op_f32(sign(var_1.x))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-555f * var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 1463f)))));
    var var_3 = all(!vec4<bool>(any(select(vec4<bool>(true, var_2.b, var_2.b, var_0.x), vec4<bool>(true, false, false, var_0.x), false)), all(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x, 0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53044u, 42115u, 4294967295u), vec4<u32>(4294967295u, 63319u, 1u, 4294967295u))));
    var var_4 = firstTrailingBit((vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), var_2.a.x, var_2.a.x) ^ ~(~vec3<u32>(1963u, 0u, u_input.a))) >> (firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.a, 284u, 118555u)) | ~vec3<u32>(var_2.a.x, u_input.b.x, 0u)) % vec3<u32>(32u)));
    let var_5 = -2147483647i;
    var var_6 = Struct_2(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(var_2.a.x, u_input.a))), var_2.b);
    let var_7 = ~(select(~vec4<u32>(0u, u_input.b.x, 1u, 4294967295u), ~abs(vec4<u32>(var_4.x, u_input.b.x, var_2.a.x, 4294967295u)), !var_2.b) << (min(vec4<u32>(abs(var_4.x), _wgslsmith_mult_u32(u_input.a, var_6.a.x), ~var_2.a.x, abs(var_4.x)), ~vec4<u32>(1u, u_input.b.x, 1u, 0u)) % vec4<u32>(32u)));
    var_3 = ~select(~10357u, 4294967295u, true) <= var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, var_5), var_5));
}

