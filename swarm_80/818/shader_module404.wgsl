struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)));

var<private> global1: i32 = -26193i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec4<f32> {
    global0 = array<Struct_1, 14>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 14u)];
    let var_1 = Struct_1(select(!vec2<bool>(any(vec3<bool>(false, false, var_0.a.x)), !var_0.a.x), select(vec2<bool>(true, true), vec2<bool>(arg_1 >= arg_1, var_0.a.x), true), select(vec2<bool>(!var_0.a.x, false), select(select(var_0.a, var_0.a, false), !var_0.a, vec2<bool>(false, var_0.a.x)), var_0.a.x)));
    global0 = array<Struct_1, 14>();
    var var_2 = _wgslsmith_add_vec4_i32(-vec4<i32>(max(u_input.d.x, 0i) ^ (u_input.b.x ^ u_input.d.x), ~0i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2772i, u_input.e.x, 0i, u_input.d.x)), ~vec4<i32>(u_input.e.x, -18073i, u_input.b.x, -25635i)), 57867i), vec4<i32>(_wgslsmith_div_i32(u_input.d.x, _wgslsmith_sub_i32(0i, u_input.b.x)) ^ 1i, 11356i, _wgslsmith_mult_i32(abs(-2147483647i), countOneBits(u_input.d.x)), ~u_input.d.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-949f, arg_1), arg_1, _wgslsmith_f_op_f32(max(arg_1, arg_1)), 1436f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, -1338f))) + vec4<f32>(arg_1, arg_1, arg_1, 448f)), select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<bool>(false, var_1.a.x, true, var_0.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, true)), vec4<bool>(false, var_1.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, true))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 1000f, 1685f, 876f))))))));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), 1000f)))))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(250f, 519f, 861f, 1131f) + vec4<f32>(-136f, 693f, -158f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1317f, -142f, 760f))))))));
    global1 = -3826i;
    var var_2 = _wgslsmith_mult_i32(1i, 1i);
    global0 = array<Struct_1, 14>();
    return var_1.wwz;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_1 = all(select(vec2<bool>(true, all(select(arg_0.a, arg_2.a, vec2<bool>(true, arg_2.a.x)))), arg_0.a, arg_0.a.x));
    global1 = _wgslsmith_div_i32(_wgslsmith_add_i32(min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-42685i, u_input.b.x, u_input.d.x, u_input.b.x), vec4<i32>(arg_1.x, u_input.e.x, 0i, -18395i))), i32(-1i) * -2147483647i), ~arg_1.x) | u_input.d.x;
    let var_2 = 1u ^ u_input.c.x;
    var var_3 = arg_0;
    return ~abs(_wgslsmith_sub_i32(-1i, -u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(-((52290i | u_input.b.x) >> (~12816u % 32u)));
    global1 = func_1(global0[_wgslsmith_index_u32(1u, 14u)], ~firstTrailingBit(vec4<i32>(-2147483647i, -1i, u_input.b.x, -31385i)), Struct_1(vec2<bool>(true, true)));
    let var_1 = false;
    global1 = max(min(-(~u_input.e.x), _wgslsmith_mult_i32(-25362i, -_wgslsmith_mod_i32(-44131i, 1i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, var_0), firstLeadingBit(_wgslsmith_add_i32(32863i, u_input.d.x))));
    global1 = _wgslsmith_clamp_i32(~1797i, -2277i, ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1184f);
}

