struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 578f;

var<private> global1: array<Struct_3, 24>;

var<private> global2: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.c;
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(52028i, u_input.a)), ~(-vec2<i32>(u_input.a, 0i))) << (u_input.c % vec2<u32>(32u)));
    var var_2 = vec4<bool>(any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), true, !any(vec4<bool>(true, true, true, true)), false);
    var_0 = u_input.c;
    let var_3 = !(!(!select(!vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(var_2.x, var_2.x, true, var_2.x))));
    return var_3;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(select(func_3(), vec4<bool>(true, true, func_3().x, true), vec4<bool>(true, true, true, true)), Struct_1(abs(~1u), u_input.a, -vec3<i32>(23395i, -1i, u_input.a) >> (~vec3<u32>(u_input.b, u_input.c.x, u_input.d) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_u32(u_input.b, 0u), select(firstLeadingBit(2147483647i), u_input.a, all(vec4<bool>(true, false, true, false))), ~(-vec3<i32>(-1i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(1f * 1727f)), Struct_1(~1u, u_input.a, max(vec3<i32>(2147483647i, 26332i, u_input.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a, 1i, u_input.a)), ~vec3<i32>(u_input.a, -34014i, u_input.a)))), -932f, Struct_2(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, false), -32403i <= u_input.a), vec4<bool>(true, true, true, true)), Struct_1(u_input.d << (4294967295u % 32u), u_input.a, vec3<i32>(u_input.a, -40706i, -u_input.a)), Struct_1(u_input.c.x, u_input.a, -(vec3<i32>(u_input.a, 1i, u_input.a) & vec3<i32>(u_input.a, 1i, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) + _wgslsmith_f_op_f32(ceil(663f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f + -605f) * -460f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(310f)))));
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.c.b, -1i, _wgslsmith_div_i32(52488i, u_input.a), _wgslsmith_sub_i32(-1i, u_input.a)), vec4<i32>(~var_0.b.b, _wgslsmith_mod_i32(16393i, u_input.a), 5927i, -var_0.b.c.x)) & vec4<i32>(u_input.a, ~(-u_input.a), max(-1i, u_input.a << (0u % 32u)), -_wgslsmith_mod_i32(1i, 10515i)));
    var var_2 = true;
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.d * -544f) + var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.d.d, 999f), var_0.a.d, var_0.d.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-863f * 1014f))))) > var_0.a.d;
    global2 = ~var_1.x;
    return var_0.d.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-467f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(206f)))))), vec2<bool>(false, true));
    global1 = array<Struct_3, 24>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1730f), _wgslsmith_f_op_f32(-603f + -957f), _wgslsmith_f_op_f32(max(-797f, 127f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -325f, -1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(522f, 1000f, 747f)))))), vec3<f32>(-826f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-290f, 508f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-784f)))))), vec2<bool>(true, u_input.d <= u_input.c.x));
    let var_2 = !select(vec3<bool>(true, !select(true, false, false), true), func_3().zxw, true);
    var var_3 = _wgslsmith_f_op_f32(ceil(1552f));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(32033u), 1u));
}

