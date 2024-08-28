struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    let var_0 = false;
    var var_1 = 123f;
    let var_2 = -263f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_2) - _wgslsmith_f_op_f32(f32(-1f) * -384f)))));
    let var_3 = Struct_1(u_input.a.x, select(select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), select(vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0), false), vec2<bool>(true, true), !select(vec2<bool>(var_0, true), !vec2<bool>(false, var_0), var_0)), !select(!vec4<bool>(var_0, true, var_0, var_0), select(!vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, false, true, false)), !(!vec4<bool>(var_0, var_0, true, false))), ~(~(~_wgslsmith_div_u32(u_input.a.x, 58969u))));
    return var_3.c.xy;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_3(countOneBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-130f))), select(any(vec3<bool>(true, true, true)), false, true));
    var var_1 = _wgslsmith_mod_i32(0i, -arg_0);
    var var_2 = Struct_1(~firstLeadingBit(11483u), func_3(), select(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), func_3().x, 1000f < var_0.b), select(!vec4<bool>(false, var_0.c, var_0.c, var_0.c), !vec4<bool>(false, true, var_0.c, false), true), true), vec4<bool>(_wgslsmith_sub_u32(74834u, u_input.a.x) < ~u_input.b.x, var_0.c, all(vec4<bool>(var_0.c, var_0.c, false, var_0.c)), false), (func_3().x | true) & ((var_0.c & var_0.c) && (0u >= u_input.a.x))), _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x));
    var var_3 = Struct_2(Struct_1(u_input.a.x, !vec2<bool>(false, var_0.c != true), var_2.c, 0u), Struct_1(firstTrailingBit(reverseBits(var_2.d)), var_2.b, select(!var_2.c, !(!vec4<bool>(true, var_2.b.x, true, var_2.b.x)), true != (100781u < u_input.b.x)), 4294967295u), Struct_1(_wgslsmith_mult_u32(var_2.a, reverseBits(var_2.a | 40992u)), func_3(), select(!var_2.c, var_2.c, var_2.c), 2407u), Struct_1(select(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(5936u, u_input.a.x), 0u), true), var_2.c.xz, select(!var_2.c, !var_2.c, var_0.c), ~var_2.d));
    var var_4 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * 1818f)) * _wgslsmith_f_op_f32(f32(-1f) * -763f)));
    return !(26483u == u_input.b.x) && !(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 36693u)) >= 33215u);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = select(!vec2<bool>(true, func_2(1i, firstTrailingBit(vec2<i32>(2147483647i, 2147483647i)))), !func_3(), false);
    var var_1 = Struct_3(2012i, _wgslsmith_f_op_f32(f32(-1f) * -394f), false);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b)), var_1.b, -397f, -1221f);
    var var_3 = ~2147483647i;
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(45606u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(29588u, u_input.b.x) >> (vec2<u32>(4294967295u, 18792u) % vec2<u32>(32u)))) << (~79070u % 32u), vec2<bool>(all(vec2<bool>(var_1.c, true)), all(select(!vec3<bool>(var_1.c, false, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_1.c, true), false), var_1.c))), !(!select(!vec4<bool>(var_1.c, var_0.x, true, true), !vec4<bool>(true, false, var_1.c, var_1.c), !vec4<bool>(true, var_0.x, var_1.c, var_1.c))), ~(~_wgslsmith_div_u32(1456u, 19449u) >> (u_input.a.x % 32u)));
    return Struct_1(u_input.a.x, var_0, select(vec4<bool>(!select(true, var_0.x, var_0.x), all(func_3()), all(select(vec3<bool>(false, false, var_4.b.x), var_4.c.wzz, vec3<bool>(var_1.c, false, var_0.x))), true), !var_4.c, var_4.c), u_input.b.x);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_1.b.a, arg_3.yy, vec4<bool>(arg_3.x, arg_2.d.c.x, any(func_1(vec4<f32>(arg_0, arg_0, -1000f, -1633f)).c.xzy), all(!arg_1.c.c)), 4294967295u >> (u_input.a.x % 32u)), Struct_1(~arg_1.c.d, arg_2.d.b, func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<f32>(arg_0, 1358f, 941f, -470f)))).c, 1u), arg_1.b, arg_2.a);
    return Struct_2(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, -373f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1585f))))), var_0.d, var_0.d, func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1066f, arg_0, arg_0, arg_0), vec4<f32>(-412f, 615f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -360f, -767f, -289f) + vec4<f32>(185f, arg_0, -672f, arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = u_input.b;
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-411f)), 1021f)), Struct_2(Struct_1(4294967295u, select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<bool>(all(vec2<bool>(false, false)), true, true, false), var_1.x), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2517f, 924f, -1000f, 568f)))), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1049f, 606f, 1161f, -1630f) - vec4<f32>(-1859f, -448f, -1000f, -311f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2788f, 861f, -166f, 1000f))))), func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), -520f, 1049f, _wgslsmith_f_op_f32(-1305f + 682f)))), Struct_2(Struct_1(6902u, vec2<bool>(true, false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, false, false)), u_input.a.x), Struct_1(u_input.b.x, select(func_1(vec4<f32>(-1206f, 1768f, 827f, -310f)).c.xw, vec2<bool>(true, true), vec2<bool>(true, true)), func_1(vec4<f32>(1426f, 899f, 1294f, -440f)).c, 4294967295u), Struct_1(~_wgslsmith_add_u32(59881u, var_1.x), vec2<bool>(true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), 4294967295u), Struct_1(var_1.x, vec2<bool>(true, func_2(-22530i, vec2<i32>(0i, -15177i))), vec4<bool>(true, func_3().x, true, false), select(abs(0u), ~0u, select(false, false, false)))), vec3<bool>(!(!select(false, true, true)), false, false));
    var_2 = Struct_2(var_2.d, var_2.c, var_2.c, var_2.d);
    let var_3 = var_2.a;
    var var_4 = !(!any(!var_2.d.c.ww));
    let var_5 = 120f;
    let var_6 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec4<i32>(1i, 58931i, -7752i, 0i))) & (vec4<i32>(_wgslsmith_sub_i32(-1i, -27038i), -2147483647i, _wgslsmith_add_i32(20810i, -2147483647i), -1i) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(20446u, 0u, 15626u, var_1.x)), vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_6)) % vec4<u32>(32u))));
}

