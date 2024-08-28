struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1573f), 922f, !select(true, false, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + arg_3) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(499f + arg_3), _wgslsmith_f_op_f32(sign(-548f)))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(1242f))));
    global0 = array<vec3<bool>, 28>();
    let var_1 = true;
    global1 = !(true && !var_1);
    global0 = array<vec3<bool>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)));
}

fn func_2() -> bool {
    global2 = all(vec4<bool>(true, select(false, true && any(vec2<bool>(false, false)), true), ~u_input.a.x <= -(~u_input.d.x), true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a), Struct_4(u_input.d.x), 13064u, -420f)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, select(u_input.d.x, -1157i, false), 26841i, ~0i), countOneBits(u_input.a)), _wgslsmith_mult_i32(u_input.d.x, 2147483647i));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-944f, 1000f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1239f, 155f), vec2<f32>(199f, 330f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, 877f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(654f, 767f))))))));
    global2 = !(u_input.b.x >= abs(max(countOneBits(u_input.c.x), 47823u)));
    return false;
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_3(arg_0);
    let var_1 = !(select(any(vec2<bool>(true, arg_1)), true, !arg_1) | select(func_2(), true, !(1i < arg_0)));
    global2 = arg_1;
    let var_2 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(10353i, 30044i)), u_input.d.yy, vec2<i32>(arg_0, firstTrailingBit(38479i)));
    var var_3 = Struct_1((_wgslsmith_div_u32(reverseBits(41603u), u_input.c.x) >> (~u_input.b.x % 32u)) != (1u ^ ~u_input.b.x), -max(_wgslsmith_mod_vec4_i32(u_input.a ^ vec4<i32>(-1i, -2964i, -22385i, var_2.x), vec4<i32>(-27600i, -66255i, -2147483647i, -1i)), ~abs(u_input.a)), 0i);
    return _wgslsmith_clamp_u32((~u_input.b.x ^ 78389u) | ~(~u_input.b.x), 4294967295u, 1u);
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<f32>(1788f, _wgslsmith_f_op_f32(floor(343f)), -1235f);
    global0 = array<vec3<bool>, 28>();
    global2 = !(!any(vec4<bool>(false, true, false, true))) & all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, all(vec2<bool>(true, false)))));
    let var_1 = select(select(select(vec3<bool>(select(true, true, true), all(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, true), true), vec3<bool>(true, !any(vec3<bool>(false, false, true)), true), vec3<bool>(!any(global0[_wgslsmith_index_u32(1u, 28u)]), false | all(vec2<bool>(false, false)), true)), vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), !any(vec3<bool>(false, true, false))), !(u_input.a.x > 0i));
    global2 = all(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.c.x), arg_0.x), 28u)], vec3<bool>(!(-852f == var_0.x), false, !(var_0.x <= var_0.x)), !vec3<bool>(false, true, func_2())));
    return Struct_2(firstTrailingBit(abs(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2192f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(400f, -133f)))))), 1100f);
    let var_1 = func_4(_wgslsmith_div_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(18703u, u_input.c.x, u_input.b.x, 60795u))), ~vec4<u32>(func_1(-4021i, true), ~1298u, u_input.c.x, u_input.b.x)));
    let var_2 = Struct_1(var_0 > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))), _wgslsmith_mod_vec4_i32(var_1.a, _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, u_input.d.x ^ var_1.a.x, u_input.a.x, 1i), firstTrailingBit(vec4<i32>(0i, -30335i, -1i, 2147483647i) & u_input.a))), var_1.a.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-650f, var_0))))), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1099f))), _wgslsmith_f_op_f32(var_0 * var_0));
    global1 = false;
    var var_4 = ~countOneBits(~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.b, var_1.a, !select(vec4<bool>(var_2.a, true, true, true), !vec4<bool>(var_2.a, true, false, true), var_2.a)), abs(var_2.b.wxx));
}

