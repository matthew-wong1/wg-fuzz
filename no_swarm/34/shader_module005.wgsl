struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    return 272f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(vec2<i32>(firstTrailingBit(-(~5351i)), -28270i), global0.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-286f, -323f, -964f), vec3<f32>(-2115f, 262f, -181f))))), _wgslsmith_div_f32(-657f, 1f), Struct_2(global0.a));
    let var_1 = var_0.e;
    global0 = var_1;
    let var_2 = var_0;
    global0 = Struct_2(Struct_1(-(_wgslsmith_mod_vec3_i32(var_0.e.a.a, var_2.e.a.a) << (select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<bool>(var_0.e.a.c, var_2.e.a.c, true)) % vec3<u32>(32u))), ~_wgslsmith_div_i32(11204i, -var_0.b.x), false, _wgslsmith_mult_vec2_i32(vec2<i32>(16908i, var_0.a.x) << (u_input.a % vec2<u32>(32u)), var_0.b), var_0.e.a.e));
    return var_1;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = global0.a.c;
    var var_1 = countOneBits(max(~(~min(1u, 18702u)), ~(~(~4294967295u))));
    global0 = func_2();
    var var_2 = _wgslsmith_mod_u32(~17803u, 69730u);
    var_2 = u_input.a.x;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1295f + -506f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) - -220f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(abs(-188f))))) + vec2<f32>(arg_0.x, -719f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 501f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) - -1464f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(578f, -399f, false)), _wgslsmith_f_op_f32(446f + 1099f)))) * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-809f, 1273f, -880f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(581f, 1042f, -219f)))), func_2(), -firstTrailingBit(vec4<i32>(var_0.d.x, 3220i, global0.a.a.x, 1i))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))))) * -1282f);
    global0 = Struct_2(global0.a);
    let var_3 = Struct_3(abs(_wgslsmith_clamp_i32(13662i, var_0.a.x, -34411i)) >> (min(~min(u_input.a.x, u_input.a.x), abs(max(u_input.a.x, u_input.a.x))) % 32u), !select(!select(vec2<bool>(false, global0.a.c), vec2<bool>(true, var_0.c), false), !(!vec2<bool>(true, global0.a.c)), !var_0.c), global0.a.a.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x), -540f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1686f) - 1068f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(218f, 625f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(448f, -695f, 114f), vec3<f32>(1293f, var_2, -435f), vec3<bool>(var_0.c, false, false))), Struct_2(Struct_1(global0.a.a, var_3.a, var_0.c, vec2<i32>(var_3.c, -1i), 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.a.x, -6225i, -1i, var_3.a), vec4<i32>(global0.a.d.x, var_0.e, 0i, global0.a.b)))).x - _wgslsmith_f_op_f32(trunc(301f))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-895f, var_1.x);
}

