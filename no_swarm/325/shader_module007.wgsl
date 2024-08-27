struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: Struct_1 = Struct_1(723f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = 53371u;
    global2 = Struct_1(-850f);
    global0 = Struct_1(global2.a);
    var var_1 = ~abs(~((arg_1.x & -13219i) | -42812i));
    return Struct_1(_wgslsmith_f_op_f32(-1240f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-277f))) + global2.a)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global2 = func_2(u_input.a.x, firstLeadingBit(~(-reverseBits(vec2<i32>(arg_1, -1i)))));
    let var_0 = 584f;
    let var_1 = vec3<bool>(all(vec3<bool>((-29924i & arg_1) == _wgslsmith_sub_i32(arg_1, -25787i), _wgslsmith_f_op_f32(arg_2.a * global2.a) == 542f, arg_1 >= -2147483647i)), true, -73443i >= select(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, 13184i, arg_1)), max(52173i, arg_1), all(vec4<bool>(false, false, false, false))));
    global0 = Struct_1(var_0);
    global1 = array<vec3<f32>, 29>();
    return Struct_1(_wgslsmith_f_op_f32(-arg_0));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -417f))))));
    var var_1 = _wgslsmith_div_i32(1i, 19318i);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.yy * arg_2.xz))))));
    var var_4 = 14795u;
    return Struct_1(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(select(var_3.x, 589f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(1277f);
    var var_2 = 2187f;
    global0 = func_3(func_1(-1000f, _wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -6870i, abs(2147483647i)), ~1i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1187f)) - _wgslsmith_f_op_f32(abs(109f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1107f + var_1.a), -620f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, _wgslsmith_f_op_f32(select(-753f, _wgslsmith_div_f32(var_1.a, 193f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) + _wgslsmith_div_f32(1723f, -209f)))));
    var var_3 = all(vec4<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), true)), _wgslsmith_div_u32(max(u_input.a.x, 1u), 13433u) == abs(_wgslsmith_mult_u32(u_input.a.x, 0u)), all(vec2<bool>(false, true)), false));
    var_2 = var_1.a;
    let var_4 = _wgslsmith_mult_i32(-40423i, 1i);
    let var_5 = 10329i;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(var_4, abs(var_4)), _wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_5, -41713i, -25029i), vec4<i32>(-1i, 20969i, var_5, var_5)), min(vec4<i32>(var_5, -2147483647i, 27108i, -1i), ~vec4<i32>(50509i, 2147483647i, var_5, -1i)), vec4<bool>(true, true, true, true)), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(24791i, -2147483647i, -1218i, 46826i), vec4<i32>(0i, 2147483647i, var_4, var_5), vec4<i32>(1i, var_4, 14889i, var_5)) >> (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1025u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), true) % vec4<u32>(32u)))));
}

