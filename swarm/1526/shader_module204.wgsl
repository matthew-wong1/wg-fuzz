struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<f32>(-910f, 2045f, -1000f), false, 15324i);

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1000f, -756f), vec2<f32>(490f, 2557f), vec2<f32>(-241f, -255f), vec2<f32>(254f, -259f), vec2<f32>(-696f, 524f), vec2<f32>(105f, 1331f), vec2<f32>(-342f, -492f), vec2<f32>(-685f, -2038f), vec2<f32>(283f, 457f), vec2<f32>(1535f, -104f), vec2<f32>(1000f, -735f), vec2<f32>(724f, 1055f), vec2<f32>(809f, -1641f), vec2<f32>(1000f, -482f), vec2<f32>(-234f, 1268f), vec2<f32>(223f, -1922f), vec2<f32>(-729f, -592f), vec2<f32>(321f, 563f), vec2<f32>(763f, 1826f), vec2<f32>(1970f, 330f), vec2<f32>(1362f, 467f), vec2<f32>(-725f, -2325f), vec2<f32>(1642f, -382f), vec2<f32>(1000f, 1562f), vec2<f32>(1353f, 351f), vec2<f32>(1000f, -739f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(~global0.d >= 1i, global0.b, all(vec2<bool>(u_input.c.x <= _wgslsmith_div_u32(u_input.a, u_input.b.x), true)), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(global0.d), 0i), global0.d, -33063i));
    let var_1 = var_0;
    global1 = array<vec2<f32>, 26>();
    var var_2 = -365f;
    var var_3 = !vec2<bool>(true | all(select(vec4<bool>(true, false, var_0.c, true), vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.a, true, false, global0.a))), any(vec4<bool>(true, true, global0.a, true)));
    return 0u;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = any(vec2<bool>(_wgslsmith_add_u32(~u_input.a, 0u) > ~(u_input.c.x | 36633u), true));
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b)))), !any(vec2<bool>(global0.c, true)) && !global0.c, global0.d), Struct_1(countOneBits(firstTrailingBit(15400u)) < (~u_input.b.x & (4294967295u >> (u_input.a % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -569f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, arg_0.x, -2116f) - vec3<f32>(arg_0.x, global0.b.x, -3013f))))), true, ~min(_wgslsmith_dot_vec2_i32(arg_1, arg_1), arg_1.x)), ~14801u);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(134f + -489f), _wgslsmith_f_op_f32(max(486f, -305f)))), -978f)), any(!select(select(vec4<bool>(false, global0.c, true, var_1.a.c), vec4<bool>(false, false, false, false), false), !vec4<bool>(var_1.b.a, var_1.a.a, true, false), vec4<bool>(true, true, var_1.b.c, false))), ~global0.d);
    var_0 = select(false & !global0.c, global0.c, _wgslsmith_mod_i32(~(arg_1.x << (4294967295u % 32u)), 2147483647i) >= -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 20688i, -22290i), -vec3<i32>(2147483647i, arg_1.x, -2147483647i)));
    var_0 = !(!all(vec3<bool>(var_1.a.a, var_1.a.a, true)) || any(select(vec4<bool>(var_1.a.a, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(global0.c, global0.a, false, global0.c), global0.a), select(vec4<bool>(false, var_1.a.c, true, true), vec4<bool>(true, false, false, global0.c), vec4<bool>(global0.a, var_1.a.a, true, global0.a)))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.yxw, vec3<f32>(global0.b.x, -567f, global0.b.x))) * vec3<f32>(var_1.a.b.x, var_1.a.b.x, 504f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, global0.b.x, -714f)))) + var_1.b.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(385f - arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.b.x), 2117f))));
}

fn func_2() -> StorageBuffer {
    global0 = Struct_1(!global0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.b, _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(346f, 2065f, global0.b.x, global0.b.x), vec2<i32>(global0.d, global0.d))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, 1000f, global0.b.x))))))), all(!vec3<bool>(false, true, global0.a)), 2147483647i);
    return StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d, global0.d), vec2<i32>(global0.d, -1i), vec2<i32>(global0.d, -2147483647i)) << (~vec2<u32>(15658u, 58950u) % vec2<u32>(32u)), ~abs(vec2<i32>(global0.d, -21092i)), -vec2<i32>(-1i, 1i) >> (~vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(2147483647i, firstLeadingBit(global0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x), global0.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(14822i, global0.d, 1i), ~vec3<i32>(global0.d | global0.d, -18396i, global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(2825u, ~21872u);
    var var_1 = vec2<u32>(func_1(), 20337u);
    var var_2 = Struct_1(-943f == global0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, _wgslsmith_f_op_f32(global0.b.x * -1410f), _wgslsmith_f_op_f32(422f - global0.b.x)) - global0.b) - _wgslsmith_f_op_vec3_f32(sign(global0.b))), !(~u_input.c.x > ~var_1.x) && !any(!vec3<bool>(false, global0.c, global0.a)), select(-60047i, 1i, false));
    let x = u_input.a;
    s_output = func_2();
}

