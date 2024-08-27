struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    let var_0 = select(select(vec2<bool>(any(vec2<bool>(true, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1297f)))), arg_1.x)) >= _wgslsmith_f_op_f32(trunc(arg_1.x)));
    var var_1 = Struct_2(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.a.zy, arg_0.a.xy), arg_0.a.yy ^ arg_0.a.yx), vec4<bool>(var_0.x | true, !var_0.x, true, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 840u, 0u, 25055u), abs(vec4<u32>(4294967295u, 38909u, 143407u, 4294967295u))) == 1u), u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, arg_1.x) - vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, 763f, true)), _wgslsmith_f_op_f32(max(arg_1.x, -1769f)), _wgslsmith_f_op_f32(575f - arg_1.x), -1533f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-290f, arg_1.x)) + 682f), -581f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-717f, arg_1.x))), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))));
    let var_2 = ~(~(~vec3<u32>(1u, 1u, 1u) << (vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(8434u, 42501u, 1u, 0u), vec4<u32>(25870u, 0u, 1u, 1u)), max(4294967295u, 19089u)) % vec3<u32>(32u))));
    var var_3 = !select(select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), !var_0), vec2<bool>(true, var_0.x), var_1.b.yz), var_1.b.xy, var_1.b.x);
    var_3 = select(var_0, vec2<bool>(!var_0.x, any(select(var_1.b.zwz, !var_1.b.yzy, false))), select(!vec2<bool>(var_1.b.x && false, true), vec2<bool>(true, true), !(!any(var_1.b))));
    return 3016f >= arg_1.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(vec3<i32>(~(-min(u_input.a, 20979i)), -u_input.a, 1i));
    let var_1 = Struct_2(vec2<i32>(max(min(2147483647i, u_input.a), _wgslsmith_mod_i32(36506i, ~u_input.a)), var_0.a.x), select(vec4<bool>(false, !any(vec2<bool>(false, true)), !select(false, false, false), true & func_3(Struct_3(var_0.a), vec4<f32>(-128f, 1213f, 450f, -1261f))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1628f, -711f, 1000f, -2147f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-170f))), -331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(641f, -1587f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1300f, 363f)) + var_1.e.x), var_1.e.x), _wgslsmith_f_op_f32(-1690f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1252f)), 106f))))));
    let var_3 = var_1.e.yzx;
    var var_4 = vec3<bool>(var_1.b.x, var_1.b.x, any(var_1.b.xwy));
    return 15988u;
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~(~43008u), func_2(), ~_wgslsmith_mult_u32(0u, 0u)), countOneBits(1u));
    var var_1 = _wgslsmith_div_i32(1i ^ (_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 2147483647i, 0i), vec3<i32>(-9976i, u_input.a, u_input.a)), abs(vec3<i32>(u_input.a, u_input.a, 1i))) >> (var_0 % 32u)), i32(-1i) * -34832i);
    var_1 = -u_input.a;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-739f - -631f)))), all(vec2<bool>(any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0, true)), true))));
    var var_3 = 4294967295u;
    return Struct_4(-52980i, vec3<i32>(_wgslsmith_div_i32(32199i, u_input.a), abs(u_input.a), -65467i & (1i >> (_wgslsmith_mod_u32(var_0, var_0) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(vec4<bool>(any(vec4<bool>(true, true, true, true)) & true, true, any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, _wgslsmith_mod_i32(u_input.a, u_input.a) > u_input.a), all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)))));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(661f, _wgslsmith_f_op_f32(step(-343f, -1955f)), _wgslsmith_f_op_f32(trunc(-577f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1445f, -127f, -336f), vec3<f32>(816f, 697f, 696f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1463f, -1396f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1851f, -452f)))));
    let var_3 = select(1i, var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(0u, 0u), 0u), max(vec3<u32>(0u, 32164u, 17305u), vec3<u32>(24972u, 30699u, 3995u))) != func_2());
    let x = u_input.a;
    s_output = StorageBuffer(6650u, 53009u, countOneBits(firstTrailingBit(~vec2<u32>(1u, 1u))), var_2.x);
}

