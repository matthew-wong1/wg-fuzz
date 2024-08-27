struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(~reverseBits(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 33686u))));
    let var_1 = u_input.a;
    let var_2 = !(false && !arg_1);
    var var_3 = 1368f;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(u_input.e.xzz, _wgslsmith_mult_vec3_i32(~u_input.c, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 24066i, _wgslsmith_mod_i32(u_input.e.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.yxw, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.d, -16430i), u_input.c)))));
    let var_1 = arg_1;
    let var_2 = select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !vec2<bool>(true, 65724u <= arg_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-566f, 562f))) <= 568f), vec2<bool>(all(vec3<bool>(true, true, false)), false), true);
    var var_3 = 1277f;
    let var_4 = arg_1;
    return select(!select(vec4<bool>(false, var_2.x, true, var_2.x), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), true), vec4<bool>(true, any(vec3<bool>(true, false, var_2.x)), any(vec3<bool>(var_2.x, var_2.x, false)), !var_2.x)), !select(vec4<bool>(true, !var_2.x, all(vec3<bool>(true, var_2.x, false)), true), !vec4<bool>(var_2.x, false, true, var_2.x), _wgslsmith_f_op_f32(1320f + -602f) <= _wgslsmith_f_op_f32(step(809f, -1087f))), true);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1(select(~(~reverseBits(vec4<u32>(arg_1.x, 51573u, arg_0, arg_1.x))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, arg_1.x, arg_0, u_input.a.x)), vec4<u32>(_wgslsmith_add_u32(arg_1.x, 28400u), ~33155u, arg_1.x, reverseBits(u_input.a.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_1(vec4<u32>(45897u, 1u, 14016u, arg_1.x)), func_2(vec2<bool>(true, true), false), max(vec2<u32>(67575u, 84132u), arg_1)))));
    var_0 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(11618u, arg_1.x, 0u, var_0.a.x) | var_0.a, _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(arg_0, var_0.a.x, arg_0, u_input.a.x))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 74784u, 1u, arg_1.x), var_0.a), ~vec4<u32>(u_input.a.x, 37420u, arg_0, u_input.a.x), vec4<bool>(true, true, true, true)), ~(~var_0.a)), 6849u, 53877u));
    return 22705u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -17066i;
    var var_1 = ~(~func_1(_wgslsmith_dot_vec3_u32(u_input.a, abs(u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yz, u_input.a.xy), u_input.a.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1920f)), _wgslsmith_f_op_f32(-433f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-423f - 1148f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-702f, 662f, true)), 1000f))), true)), -2147483647i);
}

