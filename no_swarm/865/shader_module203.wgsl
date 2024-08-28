struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec4<u32> {
    var var_0 = 0u;
    let var_1 = !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(true, u_input.b >= 1i, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, 704f, 1042f, -1100f));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(377f)) * _wgslsmith_f_op_f32(f32(-1f) * -881f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(716f, var_2.x) + _wgslsmith_f_op_vec2_f32(exp2(var_2.zw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx - vec2<f32>(-611f, var_2.x))), !(false || var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1802f, var_2.x) * var_2.xz) * var_2.zw) - vec2<f32>(_wgslsmith_div_f32(var_2.x, -733f), _wgslsmith_f_op_f32(var_2.x * var_2.x)))));
    var var_4 = vec4<i32>(-1i) * -(~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), u_input.a, ~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)));
    return abs(~vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<u32> {
    var var_0 = vec2<i32>(-29094i, 30035i);
    return func_2();
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = select(!vec3<bool>(arg_0.x > -534f, arg_1, !arg_1), select(select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, arg_1), true), !vec3<bool>(arg_1, true, arg_1), arg_1), arg_1), select(select(select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), false), select(vec3<bool>(true, false, true), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, false, arg_1)), !vec3<bool>(arg_1, true, arg_1)), vec3<bool>(true, true != arg_1, arg_1 || true), false), _wgslsmith_mult_i32(u_input.a, u_input.b) >= select(_wgslsmith_add_i32(u_input.b, u_input.a), u_input.a, arg_1)), vec3<bool>(!any(vec4<bool>(arg_1, arg_1, arg_1, false)) && arg_1, arg_1, false));
    let var_1 = 0u;
    var var_2 = select(select(0i, 1i, !(var_1 > var_1)), 0i, !(~var_1 <= 44242u));
    var_2 = _wgslsmith_dot_vec2_i32(arg_2.ww, arg_2.xz);
    var_2 = firstTrailingBit(~3689i);
    return ~min(abs(vec4<u32>(~4294967295u, var_1, 1u << (var_1 % 32u), var_1 >> (1333u % 32u))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = ~(~(~countOneBits(vec4<u32>(79410u, var_0.x, var_0.x, var_0.x))) << (_wgslsmith_add_vec4_u32(vec4<u32>(~4366u, var_0.x, 10970u, reverseBits(4294967295u)), reverseBits(vec4<u32>(42802u, var_0.x, 34536u, var_0.x))) % vec4<u32>(32u)));
    var_0 = ~(~(func_1(723f, false) & func_3(vec3<f32>(-1000f, 507f, -867f), true, vec4<i32>(-20208i, -3423i, 2147483647i, 2147483647i))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) | countOneBits(vec4<u32>(var_0.x, 13877u, var_0.x, var_0.x)), ~(~vec4<u32>(46783u, var_0.x, 1u, var_0.x))));
    var var_1 = u_input.a;
    var var_2 = any(!vec2<bool>(_wgslsmith_f_op_f32(-505f - -387f) > _wgslsmith_f_op_f32(select(-453f, 720f, false)), true));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 8349i), vec2<i32>(u_input.b, 7549i)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, 1i), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))) >> (~vec2<u32>(~var_0.x, _wgslsmith_div_u32(0u, var_0.x)) % vec2<u32>(32u)));
}

