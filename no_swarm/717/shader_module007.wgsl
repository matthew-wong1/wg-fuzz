struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-326f, 901f))) * -627f), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, 1306f)), _wgslsmith_f_op_f32(trunc(arg_0.b))))));
    let var_2 = Struct_4(any(!select(!vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, true, arg_0.a, true), vec4<bool>(true, true, false, arg_0.a))), _wgslsmith_f_op_f32(min(var_1.x, -735f)));
    let var_3 = Struct_4(true, 347f);
    let var_4 = _wgslsmith_div_f32(212f, var_1.x);
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(-26664i, _wgslsmith_dot_vec4_i32(u_input.b, select(u_input.b, u_input.b, vec4<bool>(var_2.a, true, var_2.a, false)))) << (42045u % 32u), countOneBits(arg_1.a.a & -1i));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1((0i >> ((u_input.d.x | 0u) % 32u)) >> (0u % 32u), u_input.d, vec3<i32>(u_input.b.x, func_3(Struct_4(arg_0.x, 655f), Struct_3(Struct_1(31087i, vec2<u32>(u_input.d.x, 0u), vec3<i32>(u_input.b.x, u_input.c, 2147483647i), 8141u))), u_input.b.x), ~1799u));
    var var_1 = !(!(!(!arg_0.x)) | all(vec4<bool>(arg_0.x, any(vec3<bool>(true, arg_0.x, arg_0.x)), !arg_0.x, arg_0.x)));
    let var_2 = ~abs(countOneBits(var_0.a.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-768f, _wgslsmith_f_op_f32(-639f + 660f), -996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)))));
    var_1 = arg_0.x;
    return var_0.a;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3(func_2(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec3<bool>(true, false, false)))));
    var var_1 = !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(false, true, true)), true, true), var_0.a.a == -19665i), vec3<bool>(select(false, false, any(vec3<bool>(false, true, false))), true, true), vec3<bool>(true, true, true));
    let var_2 = select(!(!(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), !select(vec4<bool>(true, !var_1.x, true, select(true, true, true)), vec4<bool>(var_1.x, true, true, true), vec4<bool>(!var_1.x, any(var_1.xy), var_1.x || true, var_1.x)), select(select(vec4<bool>(true, false, true, var_1.x), !(!vec4<bool>(false, false, true, var_1.x)), vec4<bool>(!var_1.x, var_1.x, true, !var_1.x)), vec4<bool>(true, !(u_input.c == var_0.a.c.x), true, -830f < _wgslsmith_f_op_f32(step(1028f, 1844f))), select(select(true, false, var_1.x), true, !var_1.x) || !(!var_1.x)));
    var_0 = Struct_3(Struct_1(-17160i, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.a.b.x), arg_0), reverseBits(vec3<i32>(u_input.b.x, min(-10657i, 30043i), 1i)), 0u));
    var var_3 = Struct_4(true, -2134f);
    return Struct_2(true, 4294967295u, func_2(!(!var_1.yz)), func_2(!var_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1291f, -2918f) + _wgslsmith_f_op_f32(max(-1007f, -1395f))))));
    var var_1 = Struct_4(true & !var_0.a, -1000f);
    var var_2 = Struct_5(Struct_1(-u_input.c, abs(vec2<u32>(firstTrailingBit(32777u), 3758u)), -u_input.b.xwz, u_input.a), ~(-abs(u_input.b.x)));
    var_1 = var_0;
    let var_3 = u_input.d;
    let var_4 = _wgslsmith_clamp_i32(28987i, 8474i, 0i);
    var_1 = var_0;
    var var_5 = func_1(abs(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, 0u, _wgslsmith_add_u32(~var_3.x, ~u_input.a) << (var_5.d.b.x % 32u), 0u), _wgslsmith_sub_vec4_i32(u_input.b, select(~vec4<i32>(var_2.b, u_input.b.x, 0i, 2759i), vec4<i32>(1i, ~var_4, ~2147483647i, _wgslsmith_mult_i32(var_2.b, 40892i)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b * -437f), _wgslsmith_f_op_f32(round(-248f)))) + _wgslsmith_f_op_f32(var_0.b + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1830f, var_1.b) * _wgslsmith_f_op_f32(var_0.b + -440f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b - var_1.b)))), all(!(!vec3<bool>(var_1.a, var_5.a, var_5.a))))), countOneBits(var_5.c.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 199f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), -1190f))));
}

