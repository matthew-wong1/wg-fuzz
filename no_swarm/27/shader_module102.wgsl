struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(round(arg_0.a.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2582f, _wgslsmith_div_f32(arg_0.d.x, 340f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.e.x, arg_0.e.x), arg_0.d.x)));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(301f)), _wgslsmith_div_f32(-628f, arg_0.a.x), _wgslsmith_f_op_f32(-770f - 1392f)));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1618f - -284f)), arg_0.a.x)));
    return arg_0.b.x << ((abs(1u) >> (~u_input.b % 32u)) % 32u);
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = u_input.b;
    var var_1 = (_wgslsmith_dot_vec2_u32(~vec2<u32>(59339u, 0u) | _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(60048u, 1u)), vec2<u32>(~u_input.a, 0u)) < u_input.a) & any(vec2<bool>(arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f + 893f))))));
    var_1 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-934f, _wgslsmith_f_op_f32(-1125f * -1915f), _wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(sign(253f)))))), vec2<i32>(-6722i, -18737i), vec2<i32>(_wgslsmith_sub_i32(-79541i, -1654i) & select(-1i, -1i, arg_0.x), reverseBits(-1i)) << (_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(54532u, 28161u)), ~vec2<u32>(var_0, 9897u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-832f, -500f))), _wgslsmith_div_vec2_f32(vec2<f32>(740f, -1966f), vec2<f32>(2135f, -1096f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-390f, 811f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1967f, 687f)))))), vec4<f32>(-1601f, -579f, -1997f, 457f));
    return var_3.c;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1149f)))));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -891f, arg_2, -1215f) + vec4<f32>(-474f, 1368f, arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -838f, arg_2, arg_2))))), ~(-(vec2<i32>(1i, u_input.c) & vec2<i32>(1i, -9127i))), vec2<i32>(-2147483647i | abs(func_2(Struct_1(vec4<f32>(arg_1.a.x, 871f, -1000f, -1015f), vec2<i32>(u_input.c, 3441i), vec2<i32>(2147483647i, u_input.c), vec2<f32>(arg_2, 995f), vec4<f32>(arg_1.a.x, arg_2, -1093f, -1800f)))), min(_wgslsmith_dot_vec2_i32(func_3(vec4<bool>(false, arg_0, arg_0, arg_0)), ~vec2<i32>(u_input.c, u_input.c)), (i32(-1i) * -39250i) | u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1476f)), _wgslsmith_div_f32(arg_1.a.x, 265f))) + arg_1.a.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -761f, 932f, arg_1.a.x)))))));
    let var_4 = arg_1;
    return all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(all(!vec3<bool>(arg_0, arg_0, true)), !(-210f == var_3.a.x)), select(vec2<bool>(true, arg_0), select(!vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(true, arg_0)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = select(vec3<bool>(false, true, (-u_input.c == _wgslsmith_mult_i32(0i, -31098i)) && false), vec3<bool>(!func_1(select(true, false, false), Struct_2(vec3<f32>(923f, -1000f, 265f)), _wgslsmith_div_f32(1000f, -447f), u_input.a), all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), !vec3<bool>(_wgslsmith_f_op_f32(select(-1369f, -1648f, true)) <= _wgslsmith_f_op_f32(step(561f, 1308f)), true, true));
    var_1 = select(select(!(!vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(false, true || var_1.x, all(var_1.zx)), var_1.x), select(select(vec3<bool>(any(vec2<bool>(true, var_1.x)), u_input.c < u_input.c, var_1.x), !select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, true, var_1.x), vec3<bool>(true, var_1.x, true)), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(all(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), var_1.x)), false, false), vec3<bool>(true, var_1.x, 9575i == _wgslsmith_sub_i32(u_input.c, u_input.c))), var_1.x);
    let var_2 = !vec3<bool>(true, true, var_1.x);
    var_1 = !(!vec3<bool>(all(!var_2.xx), var_2.x | func_1(var_1.x, Struct_2(vec3<f32>(477f, 925f, 1219f)), 920f, u_input.b), any(!var_2.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(~(u_input.a ^ 84129u), u_input.b, u_input.a)), abs(vec4<u32>(var_0, u_input.b, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.b, 0u, 1531u)), vec4<u32>(var_0, var_0, 8106u, var_0)), 4294967295u)));
}

