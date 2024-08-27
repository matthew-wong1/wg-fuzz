struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    return min(-countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(30133i, 1i, arg_0, 0i), vec4<i32>(arg_0, arg_0, -20754i, arg_0)))), vec4<i32>(-select(u_input.a.x, u_input.a.x | u_input.a.x, any(vec3<bool>(false, true, false))), select(~(-2147483647i), -arg_0, true), ~(~(arg_0 | arg_0)), 48794i));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, -664f, -143f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1872f, 357f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, 1201f, 275f) - vec3<f32>(-390f, -1000f, 286f)), select(arg_1.zwz, vec3<bool>(true, true, arg_0), arg_1.wzy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, -1613f, -1194f)))))));
    let var_1 = countOneBits(max(vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), -1i, -19280i, -2917i), firstLeadingBit(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) & func_3(1i);
    var var_2 = vec3<i32>(u_input.a.x >> ((~reverseBits(u_input.d.x) ^ 34892u) % 32u), -_wgslsmith_div_i32(var_1.x, min(-2147483647i, 2147483647i << (u_input.d.x % 32u))), _wgslsmith_div_i32(26063i, -1i));
    var_2 = func_3(38087i).zxw;
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2976f, -1207f) * vec3<f32>(var_0.x, 1621f, 483f))))))));
    return _wgslsmith_mod_u32(1u, u_input.d.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, -948f, 1000f) + vec3<f32>(2859f, -711f, -624f)))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), ~1u <= func_2(true, vec4<bool>(true, true, false, true), false)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -663f, 401f)))))));
    var var_1 = var_0.a;
    var var_2 = vec2<bool>(false, !select(true & (459f <= var_1.a.a.x), !(var_0.a.a.a.x == 604f), !var_1.b.x | all(vec4<bool>(true, var_0.a.b.x, false, var_1.b.x))));
    var_2 = !var_1.b.zx;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a.x, var_0.a.c.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -970f)), 398f, -135f, var_1.a.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c.a.x, var_1.c.a.x)), 1155f, _wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(exp2(var_0.a.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a.x, -1124f, 549f, var_1.c.a.x) - vec4<f32>(var_1.c.a.x, -1000f, 1010f, -182f)) - vec4<f32>(-792f, 803f, var_0.a.a.a.x, var_1.c.a.x)), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_0.a.b.x, true, false, var_0.a.b.x), select(vec4<bool>(true, false, var_1.b.x, var_0.a.b.x), vec4<bool>(true, var_0.a.b.x, var_1.b.x, var_1.b.x), var_0.a.b.x)))), vec4<bool>(true, any(vec2<bool>(false, false)) || var_0.a.b.x, var_2.x, !all(var_0.a.b.xx)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x), _wgslsmith_f_op_f32(select(1534f, -300f, var_1.b.x)), 619f, _wgslsmith_f_op_f32(var_0.a.c.a.x * var_0.a.c.a.x)), vec4<f32>(-599f, _wgslsmith_f_op_f32(trunc(var_0.a.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -303f), var_0.a.a.a.x), vec4<bool>(false && var_2.x, true, var_0.a.b.x, true)))));
    return Struct_2(var_1.c, !select(vec3<bool>(true, select(true, var_0.a.b.x, false), var_1.b.x), vec3<bool>(any(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x)), all(var_0.a.b), true), vec3<bool>(false, true, true)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.a, _wgslsmith_f_op_vec3_f32(-var_0.c.a)));
    var var_2 = Struct_1(var_0.c.a);
    var_1 = _wgslsmith_f_op_vec3_f32(-var_0.a.a);
    var_2 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.xx), vec2<u32>(u_input.d.x, u_input.d.x), countOneBits(reverseBits(reverseBits(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(20940i, u_input.c, 1i))))));
}

