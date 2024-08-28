struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(false, -2224f, abs(~_wgslsmith_div_u32(71341u, abs(arg_2))), any(vec3<bool>(true, true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), var_0.b), _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-746f)) - _wgslsmith_f_op_f32(-arg_0.a))))), arg_0.b.zy, vec3<u32>(~var_0.c, 28562u, arg_0.c.x));
    let var_2 = (arg_0.c ^ arg_0.c) << (var_1.c.yy % vec2<u32>(32u));
    var var_3 = _wgslsmith_add_u32(arg_2, countOneBits(17057u));
    var var_4 = var_1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1596f, 1000f)) * _wgslsmith_div_f32(677f, 450f)))), _wgslsmith_f_op_f32(min(var_1.a, arg_0.a))) - -171f);
}

fn func_2() -> Struct_5 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1630f - -972f) + _wgslsmith_f_op_f32(func_3(Struct_3(-910f, vec3<i32>(1i, 15729i, u_input.a), vec2<u32>(825u, 32018u)), -65896i, 0u)))))), 882f);
    var var_1 = u_input.a;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1501f - var_0.x), -805f)))), _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(1i, reverseBits(u_input.a)) & firstLeadingBit(~u_input.a), u_input.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-193f)))) - -632f));
    let var_4 = max(14203i, _wgslsmith_mult_i32(var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-29665i, -1i, u_input.a, 2147483647i), vec4<i32>(var_2.b, -60727i, -2147483647i, -37780i))) >> (firstTrailingBit(_wgslsmith_mod_u32(1446u, 4294967295u)) % 32u)) & _wgslsmith_mod_i32(-2147483647i, 2147483647i);
    return Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~1i, 1785i), 2147483647i), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(4142i, var_4) & vec2<i32>(-46270i, 2147483647i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-799i, 46017i), vec2<i32>(u_input.a, 0i)))), all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: bool) -> vec2<f32> {
    let var_0 = firstTrailingBit(vec4<i32>(1440i, arg_0 >> ((_wgslsmith_mult_u32(1u, 94440u) << (1u % 32u)) % 32u), _wgslsmith_mod_i32(func_2().a, 0i), -32252i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -541f), -1i);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), 487f);
}

fn func_1() -> Struct_2 {
    let var_0 = (-2147483647i ^ u_input.a) ^ u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(~17804i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -1677f)), func_2(), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1154f, 266f), vec2<f32>(-723f, 935f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1670f, 1005f) + vec2<f32>(394f, 1176f)), vec2<bool>(true, false)))))));
    var var_2 = Struct_4(486f, _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, -12799i), vec3<i32>(var_0, 31684i, -1i), false), abs(vec3<i32>(5744i, 26578i, var_0)))), 2147483647i, _wgslsmith_mod_i32(var_0, 11527i)));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 271f) * _wgslsmith_f_op_f32(min(var_2.a, -155f)))))), vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(-35696i, var_0)) | 1i, -1i), reverseBits(vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_5(0i, select(!all(vec4<bool>(true, true, true, true)), (any(vec2<bool>(true, false)) || false) | true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)) | true));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-360f - -157f), _wgslsmith_f_op_f32(-var_0.a)))))));
    var var_3 = var_0.c.x;
    let var_4 = all(select(select(vec3<bool>(false, true, var_1.b), !vec3<bool>(true, var_1.b, var_1.b), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(var_1.b, false, var_1.b, false)))), !(!vec3<bool>(var_1.b, var_1.b, var_1.b)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(select(vec3<bool>(false, true, var_1.b), vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, true, var_1.b)), select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, true, false)), true), select(vec3<bool>(var_1.b, var_1.b, var_1.b), !vec3<bool>(var_1.b, false, var_1.b), !var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))) - -1458f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1214f, _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)), _wgslsmith_f_op_f32(var_0.a * var_0.a), -1910f) * vec4<f32>(var_0.a, _wgslsmith_f_op_f32(round(var_0.a)), var_0.a, _wgslsmith_f_op_f32(step(var_0.a, -180f))))), 54577u);
}

