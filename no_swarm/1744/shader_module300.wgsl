struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = any(vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), true, true, !any(vec4<bool>(false, false, false, true))));
    let var_1 = var_0;
    var var_2 = Struct_2(true);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(918f, -1266f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1389f)) + _wgslsmith_f_op_f32(f32(-1f) * -546f)), all(select(vec4<bool>(var_1, true, true, var_0), vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, false, false, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -181f), -1711f, true))), !any(!vec3<bool>(var_2.a, false, var_0)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(471f, var_3.b, -1745f, var_3.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-2008f, -1154f, 285f, -1391f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, var_3.a.x, var_3.a.x, -154f) - vec4<f32>(var_3.a.x, var_3.a.x, 2373f, var_3.b))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.b, var_3.a.x, -319f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b, 272f, -1070f, var_3.a.x), vec4<f32>(-1674f, var_3.a.x, var_3.b, var_3.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-573f, var_3.b, var_3.b, var_3.a.x)))))));
    return u_input.b;
}

fn func_2() -> f32 {
    var var_0 = countOneBits(vec3<u32>(~u_input.a, ~reverseBits(_wgslsmith_sub_u32(19392u, u_input.c.x)), ~(32058u ^ ~u_input.c.x)));
    let var_1 = -(~(-1i)) > _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, ~u_input.b ^ u_input.b), u_input.b);
    var var_2 = vec4<i32>(u_input.b, ~u_input.b | _wgslsmith_clamp_i32(select(~u_input.b, -u_input.b, false), u_input.b, u_input.b), _wgslsmith_mult_i32(max(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -1i, -2147483647i), max(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, 2147483647i, -11697i))), min(-1i, -2147483647i >> (u_input.a % 32u))), ~_wgslsmith_mult_i32(func_3(1u), _wgslsmith_div_i32(41882i, -47890i))), -_wgslsmith_sub_i32(u_input.b, -1i));
    var_0 = u_input.c;
    var var_3 = vec4<f32>(1f, 1f, 1f, 1f);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(max(1655f, var_3.x)))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = !(!select(vec4<bool>(false, arg_0, false, arg_0), !vec4<bool>(false, false, arg_0, arg_0), !(u_input.b > arg_3)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_1);
    let var_2 = ~(~(~u_input.c));
    let var_3 = Struct_2(var_0.x);
    let var_4 = ~arg_3;
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = vec2<i32>(~max(u_input.b, -u_input.b), u_input.b);
    let var_1 = arg_1.x;
    var var_2 = arg_2;
    let var_3 = abs(~vec3<i32>(-12640i, var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -4076i), vec3<i32>(-2147483647i, u_input.b, 1736i)), vec3<i32>(2147483647i, 1i, var_0.x))));
    var var_4 = ~u_input.c;
    return func_4(arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(select(arg_0.b, -490f, false))), _wgslsmith_f_op_f32(func_2()), -1000f, _wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_3.x, 1153f, arg_0.b), vec4<f32>(-2112f, 1167f, 342f, 1367f), vec4<bool>(arg_1.x, false, arg_1.x, var_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, 1959f, 699f, arg_2.b))))), vec4<f32>(-1031f, 1349f, arg_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(302f)), -753f))))), var_3.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(any(!select(vec4<bool>(false, true, false, arg_3.a), !vec4<bool>(arg_3.a, arg_0.a, arg_1.a, arg_3.a), !vec4<bool>(true, true, arg_1.a, true))));
    var var_1 = vec2<f32>(arg_2.x, arg_2.x);
    var_1 = _wgslsmith_f_op_vec2_f32(sign(arg_2.yx));
    var var_2 = select(select(!vec3<bool>(u_input.c.x > u_input.a, any(vec3<bool>(arg_1.a, true, arg_1.a)), all(vec2<bool>(arg_3.a, arg_0.a))), select(vec3<bool>(select(false, false, false), var_0.a, true), !(!vec3<bool>(false, false, arg_0.a)), arg_1.a), !all(select(vec3<bool>(arg_1.a, true, false), vec3<bool>(false, arg_1.a, var_0.a), vec3<bool>(var_0.a, var_0.a, arg_3.a)))), select(select(!vec3<bool>(false, true, arg_3.a), select(select(vec3<bool>(arg_3.a, true, arg_3.a), vec3<bool>(arg_1.a, false, false), vec3<bool>(false, false, true)), !vec3<bool>(arg_3.a, true, arg_1.a), true), vec3<bool>(true, any(vec3<bool>(arg_0.a, false, false)), true)), vec3<bool>(false, false, func_1(Struct_1(arg_2.yy, arg_2.x), !vec2<bool>(true, arg_3.a), Struct_1(arg_2.zx, var_1.x), _wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(arg_2.x, arg_2.x, -1103f))).a), select(select(select(vec3<bool>(var_0.a, arg_3.a, true), vec3<bool>(false, false, false), true), vec3<bool>(arg_1.a, arg_0.a, false), arg_3.a), !vec3<bool>(true, arg_3.a, true), true)), var_0.a);
    var_2 = !vec3<bool>(select(false, func_4(!var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1890f, 1000f, 255f, -1331f) - vec4<f32>(var_1.x, arg_2.x, 1000f, 660f)), vec4<f32>(1994f, 1278f, arg_2.x, var_1.x), ~u_input.b).a, true), !arg_1.a, !arg_3.a);
    return arg_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(-32968i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, 10129i) & vec3<i32>(-1i, -1i, -12420i), vec3<i32>(u_input.b, -2147483647i, 2147483647i)), firstTrailingBit(_wgslsmith_sub_i32(2147483647i, u_input.b)));
    let var_1 = min(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(87400u, 0u)) & _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, u_input.a)), u_input.c.zx), ~4294967295u) >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u);
    var var_2 = vec4<bool>(true, all(func_6(vec2<bool>(true, all(vec2<bool>(false, true))), func_5(func_1(Struct_1(vec2<f32>(756f, 1000f), -113f), vec2<bool>(true, false), Struct_1(vec2<f32>(1730f, 2143f), -604f), vec3<f32>(159f, 1000f, 211f)), Struct_2(false), vec3<f32>(1f, 1f, 1f), Struct_2(false)), vec2<u32>(u_input.a, abs(1u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), u_input.c.x <= u_input.c.x, any(!vec3<bool>(true, func_5(Struct_2(false), Struct_2(true), vec3<f32>(1000f, -1007f, 387f), Struct_2(true)).a, true)));
    var_2 = !select(vec4<bool>(var_2.x, any(vec3<bool>(var_2.x, var_2.x, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), var_2.x), vec4<bool>(true, true, true, var_2.x), vec4<bool>(true, func_5(func_1(Struct_1(vec2<f32>(-267f, 2280f), 911f), var_2.xy, Struct_1(vec2<f32>(520f, -999f), 1879f), vec3<f32>(-161f, -178f, 1732f)), func_4(var_2.x, vec4<f32>(1209f, 763f, -731f, -689f), vec4<f32>(-643f, 207f, -159f, -484f), 45276i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(865f, 1878f, -1040f))), Struct_2(var_2.x)).a, all(select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, var_2.x), var_2.x)), true));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1, 37527u), _wgslsmith_f_op_f32(-136f - 161f));
}

