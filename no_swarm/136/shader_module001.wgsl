struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = -832f;
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(552f, 1491f, 251f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(318f, 1196f, -1733f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1553f, -426f, 1310f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1382f, -237f, -250f))), vec3<bool>(true, true, true)))), ~(vec3<i32>(-27904i, -u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)) & abs(-vec3<i32>(0i, -6921i, u_input.b))), -firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)));
    var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_div_f32(447f, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - 963f)), 357f) + vec3<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1487f) - var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - 593f)))), select(-var_1.c, var_1.d << (~(~u_input.c) % vec3<u32>(32u)), vec3<bool>(true, true & !var_1.a, !var_1.a)), abs(vec3<i32>(-1i) * -(vec3<i32>(10757i, 0i, var_1.c.x) ^ var_1.d)));
    var_1 = Struct_1(any(select(vec2<bool>(true, false), vec2<bool>(2147483647i <= u_input.b, var_1.a), !select(vec2<bool>(true, true), vec2<bool>(false, var_1.a), var_1.a))), var_1.b, ~vec3<i32>(2147483647i, u_input.b, 1i) | (~max(vec3<i32>(var_1.d.x, -1i, -1i), var_1.c) >> (~vec3<u32>(u_input.a.x, u_input.c.x, 92830u) % vec3<u32>(32u))), vec3<i32>((-2147483647i | u_input.b) | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, 1i), vec4<i32>(-59771i, var_1.c.x, u_input.b, u_input.b)), vec4<i32>(-10829i, var_1.d.x, 1i, 1i)), _wgslsmith_mod_i32(max(select(66625i, 0i, var_1.a), var_1.c.x), u_input.b), -21936i));
    var var_2 = 1i;
    return var_1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = any(select(vec4<bool>(1i == select(u_input.b, -2147483647i, false), (u_input.a.x >= 0u) | false, true, true), !vec4<bool>(false, true, arg_1.a, arg_1.a), false));
    let var_1 = arg_1;
    var_0 = true;
    let var_2 = Struct_1(all(vec4<bool>(!all(vec3<bool>(true, var_1.a, arg_1.a)), arg_1.a, arg_1.b.x < arg_1.b.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, 528f, arg_0.x)), _wgslsmith_f_op_f32(max(arg_1.b.x, var_1.b.x)), 1235f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -599f, arg_1.b.x))))), arg_1.c, var_1.c);
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(-430f, var_2.b.x, 301f)) - _wgslsmith_f_op_vec3_f32(-arg_1.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b * vec3<f32>(325f, var_1.b.x, var_1.b.x))))), vec3<i32>(-30217i, -42387i, arg_1.d.x), ~var_2.d);
    return var_2.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = -961f;
    var var_0 = -1089f;
    var var_1 = Struct_1(func_4(vec3<bool>(all(vec2<bool>(false, true)), func_3(), arg_0.a), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.b))), firstTrailingBit(arg_0.c), countOneBits(vec3<i32>(-2147483647i, ~1i << (u_input.a.x % 32u), ~arg_0.d.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -876f);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> bool {
    global0 = arg_1.b.x;
    global0 = _wgslsmith_f_op_f32(func_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-61429i, arg_2), arg_1.c.xx), vec2<i32>(u_input.b, arg_2)), ~u_input.b ^ 0i, ~arg_1.c.x), arg_1.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, all(vec4<bool>(select(func_1(1000f, Struct_1(false, vec3<f32>(162f, -905f, 1275f), vec3<i32>(0i, u_input.b, -27769i), vec3<i32>(u_input.b, u_input.b, u_input.b)), 4433i, vec3<bool>(false, true, false)), true, true), true, any(vec4<bool>(false, false, false, false)), false)), true, true);
    var var_1 = var_0.x;
    var_0 = select(select(select(vec4<bool>(true, select(false, var_0.x, false), !var_0.x, func_4(var_0.zyz, Struct_1(true, vec3<f32>(-555f, -1398f, 363f), vec3<i32>(u_input.b, 1i, 2147483647i), vec3<i32>(-11273i, 27364i, -37081i)))), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))), vec4<bool>(any(vec3<bool>(false, var_0.x, true)) & select(var_0.x, var_0.x, var_0.x), var_0.x, any(vec3<bool>(false, var_0.x, false)), var_0.x), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(select(select(!vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(false, false, 1u < u_input.a.x, true), !vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(true, func_4(var_0.zyy, Struct_1(false, vec3<f32>(-350f, 3644f, 149f), vec3<i32>(-11636i, 0i, u_input.b), vec3<i32>(u_input.b, u_input.b, -1i))), all(vec2<bool>(false, var_0.x)), true), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false)))), vec4<bool>(all(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), false, any(vec4<bool>(false, false, true, false)), var_0.x)), true, any(!var_0.xx), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, 209f, -823f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, 174f, -1036f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, -162f, -180f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1080f, -874f, -1000f) - vec3<f32>(-1523f, 383f, 1523f))))))), max(vec3<i32>(u_input.b, _wgslsmith_add_i32(countOneBits(u_input.b), -1i), -7911i), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(1i, u_input.b, u_input.b)), ~vec3<i32>(23476i, u_input.b, u_input.b)) >> (_wgslsmith_sub_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))), abs(vec3<i32>(-(~7743i), u_input.b, u_input.b)));
    var_0 = !(!(!select(select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, false, false, true), vec4<bool>(false, var_2.a, var_0.x, false)), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_2.a, var_0.x, false), true), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_2.a, true, false), vec4<bool>(var_2.a, false, var_2.a, false)))));
    let var_3 = u_input.b;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + 1f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.x, var_2.b, var_2.d, vec3<i32>(1i, var_2.c.x, u_input.b)))), _wgslsmith_f_op_f32(f32(-1f) * -131f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x) + _wgslsmith_f_op_f32(-var_2.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.b.x, var_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.x)) - var_2.b.x) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(round(-1220f))))), ~(~vec3<i32>(var_2.c.x, u_input.b << (1u % 32u), min(u_input.b, 33080i))), min(-select(select(vec3<i32>(var_2.d.x, var_2.d.x, 3711i), vec3<i32>(var_2.c.x, 1i, 35281i), var_0.x), _wgslsmith_add_vec3_i32(var_2.c, vec3<i32>(-15938i, var_2.c.x, 38469i)), select(true, false, true)), ~var_2.c | var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.d.x, 60864u, ~(u_input.a.x & abs(u_input.c.x)));
}

