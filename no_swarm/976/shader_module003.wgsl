struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(-611f), Struct_1(-407f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-2793f, 104f, true)), _wgslsmith_f_op_f32(-150f + 1266f), true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(842f - -1696f), _wgslsmith_f_op_f32(sign(-882f))) - -1000f)));
    global0 = 906f;
    var var_1 = vec4<bool>(true, select(true, true, false), select(true, true, false), true);
    var var_2 = Struct_2(var_0.c, var_0.b, var_0.a, Struct_1(-401f));
    let var_3 = any(!var_1.xyw) | var_1.x;
    return Struct_3(firstLeadingBit(u_input.a.x));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(~66169u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f));
    var var_1 = arg_1.a;
    var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1752f * -1138f), _wgslsmith_f_op_f32(sign(-1010f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1674f, _wgslsmith_f_op_f32(var_2.a + -748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), arg_0)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1570f))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x) ^ u_input.a.x);
    global0 = -972f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.a), arg_2.b.a) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 491f)))))))) + vec2<f32>(arg_2.d.a, 954f));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(341f, arg_0, var_1.x) * vec3<f32>(846f, 1431f, 872f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_1.x, 1164f) + vec3<f32>(arg_2.b.a, arg_0, arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(true, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1000f) + arg_2.d.a))))));
    var var_3 = arg_2;
    return Struct_3(~firstLeadingBit(abs(~arg_1.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = any(!vec2<bool>(true, arg_0.x)) | true;
    let var_2 = Struct_2(Struct_1(-1000f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f - 1021f) + _wgslsmith_f_op_f32(floor(-660f))) * -197f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -168f)), Struct_1(_wgslsmith_f_op_f32(sign(-747f))));
    let var_3 = min(~(-(firstTrailingBit(vec3<i32>(23654i, 37885i, 0i)) | vec3<i32>(-5479i, 5092i, 2147483647i))), vec3<i32>(1i, 1i, 1i));
    let var_4 = abs(0i);
    return func_2(reverseBits(abs(u_input.a)) | abs(u_input.a));
}

fn func_1() -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) * 1016f);
    global0 = 1698f;
    let var_0 = func_5(!select(vec2<bool>(true, true), vec2<bool>(true, select(true, false, true)), any(vec4<bool>(false, true, true, true))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f * 452f)), _wgslsmith_f_op_f32(sign(-1244f))), func_2(vec2<u32>(~14508u, u_input.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(false, Struct_3(u_input.a.x)))), Struct_1(_wgslsmith_div_f32(281f, 1484f)), Struct_1(-619f), Struct_1(-424f))));
    var var_1 = 21723i;
    let var_2 = 1015f;
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f + var_2) + _wgslsmith_f_op_f32(trunc(var_2))))), 1317f);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.x);
    global0 = _wgslsmith_f_op_f32(floor(-439f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) * var_0.a) - _wgslsmith_f_op_vec2_f32(func_1()).x)), var_0, var_0, Struct_1(var_0.a));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -761f))))), 649f);
    var_2 = _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(func_3(false, func_5(vec2<bool>(true, arg_3.x), Struct_3(u_input.a.x))))) + arg_0.x));
    return var_0;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3(true, func_4(arg_1.a, Struct_3(arg_2.a), Struct_2(func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1258f, 1149f)), vec3<i32>(-2147483647i, -13338i, -13127i), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), Struct_1(arg_1.a), func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -2251f) - vec2<f32>(arg_1.a, 733f)), ~vec3<i32>(-27927i, 1i, 1i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec4<bool>(true, true, true, false)), func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 138f) - vec2<f32>(arg_1.a, 664f)), abs(vec3<i32>(53619i, -45312i, 28386i)), vec3<bool>(true, true, false), vec4<bool>(true, true, true, true))))));
    global0 = 311f;
    return Struct_1(_wgslsmith_f_op_f32(max(var_0, -2838f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_7(Struct_3(_wgslsmith_dot_vec3_u32(u_input.b, reverseBits(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b)))), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-690f, -770f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(609f, -967f))))) + _wgslsmith_f_op_vec2_f32(func_1())), -select(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), false), !vec3<bool>(true, true, var_0), !select(!vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, false, var_0, false), any(vec4<bool>(var_0, false, var_0, var_0)))), Struct_3(countOneBits(select(abs(0u), ~u_input.a.x, any(vec3<bool>(var_0, var_0, var_0))))));
    global0 = var_1.a;
    global0 = _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(max(var_1.a, 1524f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)), 572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1597f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1795f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, (i32(-1i) * -abs(2147483647i)) << (func_2(vec2<u32>(4294967295u, u_input.b.x)).a % 32u), min(max(vec2<i32>(1i, 1i), vec2<i32>(-2999i, min(2147483647i, -1i))), vec2<i32>(53545i, 1i)));
}

