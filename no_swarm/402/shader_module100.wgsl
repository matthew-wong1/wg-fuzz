struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec4<bool>(false || all(vec3<bool>(1u <= u_input.a.x, true, true)), countOneBits(select(~8452u, max(u_input.a.x, 4294967295u), true)) < _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, 40123u)), _wgslsmith_add_u32(u_input.a.x, 57029u)), max(~17559u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 63170u, 90944u), vec4<u32>(46581u, u_input.a.x, 1u, 0u)))), all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), 1i >= ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -18760i, 25953i), vec4<i32>(0i, 2147483647i, -2147483647i, 1i))));
    global0 = min(-1i, _wgslsmith_dot_vec4_i32(abs(firstLeadingBit(-vec4<i32>(-2147483647i, -2147483647i, 4785i, 13711i))), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = any(!(!(!var_0.xyz)));
    var var_2 = Struct_1(-1000f);
    let var_3 = select(~(~abs(vec4<u32>(36922u, 88856u, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_u32(~(vec4<u32>(0u, 4294967295u, 0u, u_input.a.x) ^ vec4<u32>(37561u, 55346u, 1u, u_input.a.x)), vec4<u32>(77277u, 0u, 14498u ^ u_input.a.x, 4111u)), false);
    return _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(44490i, -52833i, 2147483647i)), -vec3<i32>(_wgslsmith_mod_i32(9051i, 1646i), 2147483647i, firstTrailingBit(9393i)), ~vec3<i32>(1i, 1i, 1i)), reverseBits(abs(abs(vec3<i32>(1i, 1i, 1i)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(-1000f);
    global0 = _wgslsmith_mult_i32(~1i, -_wgslsmith_sub_i32(-_wgslsmith_sub_i32(4790i, -1i), _wgslsmith_div_i32(~0i, _wgslsmith_div_i32(16667i, -1i))));
    var_0 = global1[_wgslsmith_index_u32(18813u, 23u)];
    global0 = _wgslsmith_dot_vec3_i32(-((vec3<i32>(37118i, -28481i, 2147483647i) << (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))) & vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(14575i, -4172i, 2147483647i), func_3())) & (i32(-1i) * -2147483647i);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(2042f, var_0.a), 170f);
    return !(!select(vec4<bool>(false, true, true, !arg_1.x), !vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(true, false, all(arg_1.zz), true)));
}

fn func_1() -> StorageBuffer {
    var var_0 = select(!select(func_2(Struct_1(-303f), vec3<bool>(false, true, false)), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), true), vec4<bool>(true, true, true, select(true, any(vec3<bool>(true, false, true)) | true, !(u_input.a.x <= u_input.a.x))), all(vec3<bool>(!any(vec4<bool>(true, true, true, true)), false, !any(vec2<bool>(true, false)))));
    return StorageBuffer(_wgslsmith_sub_i32(select(-2147483647i, 2147483647i, var_0.x) & _wgslsmith_div_i32(35823i, -13481i), -1i) & abs(func_3().x), vec4<u32>(~1u, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, 1u), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x) | vec4<u32>(4294967295u, 4608u, u_input.a.x, 0u))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(~u_input.a.x) | u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-739f)), _wgslsmith_div_f32(-1469f, 1912f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2305f, -353f)), _wgslsmith_f_op_f32(f32(-1f) * -143f), any(vec2<bool>(var_0.x, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -2151f))))), ~(-vec2<i32>(-12627i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_add_i32(-6389i, max(-1932i, -1512i))), vec2<i32>(~(-49240i), _wgslsmith_clamp_i32(2147483647i, ~abs(2147483647i), -(~5114i))));
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = false;
    var var_2 = var_0.x;
    var_1 = !all(!vec2<bool>(var_0.x, var_0.x || false));
    let x = u_input.a;
    s_output = func_1();
}

