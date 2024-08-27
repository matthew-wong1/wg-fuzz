struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51171u;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = firstTrailingBit(global1.x);
    var var_0 = 1u;
    let var_1 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    var_0 = arg_0;
    var var_2 = 1i;
    return abs(-31372i);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    global1 = ~vec4<u32>(global1.x, global1.x, ~(~1u), _wgslsmith_add_u32(abs(~global1.x), _wgslsmith_add_u32(~global1.x, ~global1.x)));
    var var_0 = Struct_1(select(arg_1, select(select(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1), !arg_1, select(vec2<bool>(true, arg_1.x), arg_1, arg_1.x)), arg_1, arg_1.x), arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, -1725f, 803f)) * _wgslsmith_div_vec3_f32(vec3<f32>(787f, -1000f, 272f), vec3<f32>(-1955f, 340f, 859f)))))), vec3<f32>(_wgslsmith_f_op_f32(1f + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f - -2823f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f * -714f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(406f))))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(29708i, func_3(global1.x), 1i, arg_0), -vec4<i32>(-12169i, arg_0, arg_0, -41587i)), min(firstLeadingBit(vec4<i32>(arg_0, 6459i, 59366i, -4781i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, arg_0, arg_0), vec4<i32>(1i, arg_0, u_input.a, 1i)), firstLeadingBit(1i), min(u_input.a, 0i), 3181i))), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, u_input.a)), -reverseBits(reverseBits(vec2<i32>(u_input.a, 42884i)))));
    global1 = vec4<u32>(_wgslsmith_add_u32(~global1.x, _wgslsmith_div_u32(~52284u, global1.x)), ~_wgslsmith_add_u32(global1.x, global1.x), _wgslsmith_mod_u32(firstTrailingBit(~max(15494u, global1.x)), reverseBits(28784u)), _wgslsmith_add_u32(global1.x, 64751u));
    var_0 = Struct_1(!(!var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(var_0.b.x, 187f, 1590f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, 901f, -737f), vec3<f32>(832f, var_0.b.x, var_0.b.x)), !vec3<bool>(arg_1.x, var_0.a.x, false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(674f, -1547f, var_0.c.x)))) - vec3<f32>(_wgslsmith_div_f32(-1839f, 1119f), _wgslsmith_f_op_f32(round(var_0.b.x)), -251f))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, -1i, u_input.a, var_0.d.x), var_0.d) | (vec4<i32>(var_0.d.x, u_input.a, -1i, arg_0) ^ vec4<i32>(-2147483647i, 2147483647i, -70234i, 2147483647i)), reverseBits(vec4<i32>(u_input.a, var_0.e, u_input.a, arg_0))) ^ var_0.d, _wgslsmith_sub_i32(u_input.a, var_0.e));
    return _wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_div_u32(88850u, ~_wgslsmith_mod_u32(global1.x, 47079u)));
}

fn func_1() -> Struct_5 {
    global0 = abs(func_2((u_input.a | u_input.a) | (i32(-1i) * -1i), vec2<bool>(true, true)) >> (~(~(~global1.x)) % 32u));
    let var_0 = -601f;
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, 1000f, 149f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1182f, 800f), vec3<f32>(-1191f, var_0, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(1322f, var_0, var_0), vec3<f32>(-1006f, var_0, var_0)))))), true, -min(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 28118i, u_input.a, 1i), vec4<i32>(2147483647i, u_input.a, 30270i, 2147483647i)), min(vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), vec4<i32>(35220i, u_input.a, 12479i, -16074i)), true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, u_input.a, -998i), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 54332i, 34604i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(arg_2.a.x + 152f)), _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(169f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1377f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -871f))))));
    var_0 = arg_2.a.zy;
    global0 = 1u;
    global1 = vec4<u32>(227u, global1.x, ~0u, ~_wgslsmith_add_u32(17890u, global1.x >> (~0u % 32u)));
    var var_1 = all(vec3<bool>(true, true, arg_2.b | false));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(global1.x, select(~global1.x, global1.x, func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, 1095i, 56504i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -17707i, -14825i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, 0i))), ~select(vec3<i32>(-1i, u_input.a, -59716i), vec3<i32>(2147483647i, u_input.a, 1i), false), func_1(), Struct_3(firstTrailingBit(u_input.a)))), countOneBits(global1.x | global1.x));
    var var_0 = firstTrailingBit(i32(-1i) * -1i);
    global1 = vec4<u32>(86038u, abs(4294967295u), 18371u, 0u);
    var_0 = _wgslsmith_add_i32(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(16339i), -2147483647i, reverseBits(-2147483647i)), _wgslsmith_div_i32(-5984i, ~(-9884i))), u_input.a);
    var var_1 = func_1();
    var var_2 = Struct_4(-854f);
    let var_3 = var_1.a.x;
    let var_4 = global1.x;
    global0 = global1.x ^ abs(countOneBits(global1.x >> (~0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), var_2.a, _wgslsmith_f_op_f32(exp2(var_2.a)), -299f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1183f, -181f, 1284f, var_2.a), vec4<f32>(var_1.a.x, var_1.a.x, 806f, var_2.a))), all(!vec4<bool>(var_1.b, false, false, true)))))), _wgslsmith_f_op_vec2_f32(-var_1.a.yy), 2248i ^ firstTrailingBit(~(-2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(210f, -835f) + _wgslsmith_f_op_f32(f32(-1f) * -528f)));
}

