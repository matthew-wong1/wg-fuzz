struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + arg_1.x)) * _wgslsmith_f_op_f32(sign(arg_3.b))));
    global0 = array<i32, 9>();
    var var_1 = Struct_1(arg_0.a, vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(arg_0.b.x))));
    global0 = array<i32, 9>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, var_1.b.x)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1209f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1845f, -944f)) * _wgslsmith_f_op_f32(round(var_0.b))), -712f)), _wgslsmith_div_f32(var_1.b.x, -488f), true));
}

fn func_4(arg_0: Struct_3) -> bool {
    global0 = array<i32, 9>();
    var var_0 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true))) && (true & any(vec3<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(false, true, false, true)))));
    let var_1 = Struct_1(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4643u, 33735u), 1u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(arg_0.b, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, -351f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, arg_0.b), vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1011f, 241f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -561f), vec2<f32>(1655f, arg_0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.a) * vec2<f32>(697f, 715f))))));
    var var_2 = vec3<u32>(max(abs(_wgslsmith_clamp_u32(25131u, var_1.a, 74695u)), var_1.a), 4294967295u, var_1.a & var_1.a) | firstTrailingBit(vec3<u32>(22951u, ~var_1.a << (abs(4294967295u) % 32u), var_1.a));
    let var_3 = select(~var_2.x, ~var_2.x | var_1.a, select(max(var_2.x, 1u) >= ~var_1.a, false && select(true, -411f < arg_0.a, all(vec4<bool>(true, false, true, false))), true));
    return select(!any(vec4<bool>(all(vec3<bool>(true, true, true)), select(true, false, false), true, true)), true, any(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> bool {
    var var_0 = !(!select(all(vec2<bool>(true, true)), false, (u_input.b < -29537i) && true));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) * _wgslsmith_f_op_f32(min(-550f, arg_1.x)))), arg_1.x);
    let var_2 = -(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_0), u_input.a.wz) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(98342u), ~44410u), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 10435u), vec2<u32>(8360u, 1u))), vec2<u32>(reverseBits(0u), firstTrailingBit(29688u))) % vec2<u32>(32u)));
    let var_3 = vec3<bool>(false, func_4(Struct_3(_wgslsmith_f_op_f32(func_3(Struct_1(0u, vec2<f32>(-474f, 779f)), vec4<f32>(var_1.a, -843f, arg_1.x, 1000f), 32778i, Struct_3(-846f, 1573f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f - -763f)))), any(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), true)));
    var var_4 = select(vec4<bool>((!var_3.x | var_3.x) && !any(vec3<bool>(false, var_3.x, var_3.x)), var_3.x, var_3.x, false), select(!select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, false), var_3.x), !vec4<bool>(false, var_3.x, var_3.x, true), true), !select(!vec4<bool>(var_3.x, false, var_3.x, var_3.x), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, true), true), vec4<bool>(false, false, false, var_3.x)), !(!vec4<bool>(false, var_3.x, var_3.x, true))), !(!select(!vec4<bool>(false, var_3.x, var_3.x, var_3.x), select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, false, true, var_3.x), var_3.x), true)));
    return true;
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = array<i32, 9>();
    var var_0 = Struct_3(702f, 290f);
    var var_1 = u_input.a.xzx;
    var_1 = -_wgslsmith_add_vec3_i32(vec3<i32>(-(~var_1.x), 0i | u_input.a.x, _wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(var_1.x, u_input.a.x, global0[_wgslsmith_index_u32(arg_0.x, 9u)]))), ~u_input.a.xwx);
    var var_2 = Struct_3(-986f, _wgslsmith_f_op_f32(var_0.a * -896f));
    return vec4<bool>(!any(vec4<bool>(true, arg_0.x < arg_0.x, false, true)), true, any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), var_2.a > var_0.a), vec2<bool>(func_2(-2147483647i, vec2<f32>(var_2.b, 342f)), var_2.a == var_0.b), vec2<bool>(true, true))), all(vec2<bool>(var_0.a == _wgslsmith_f_op_f32(-var_2.b), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(~_wgslsmith_div_u32(30417u, 23161u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 956f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, 704f)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(409f, 1212f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, -1000f) * vec2<f32>(-145f, 862f))))), 996f);
    global0 = array<i32, 9>();
    var var_1 = !(!func_1(vec4<u32>(~40719u, var_0.a.a | 2042u, ~0u, abs(var_0.a.a))));
    let var_2 = ~(~vec4<u32>(var_0.a.a, 4294967295u, var_0.a.a >> (var_0.a.a % 32u), ~(~var_0.a.a)));
    global0 = array<i32, 9>();
    var var_3 = ~(~(~5673u));
    let var_4 = var_0;
    var var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_4.a.a, 9u)], u_input.a.x), global0[_wgslsmith_index_u32(countOneBits(13937u), 9u)], firstTrailingBit(global0[_wgslsmith_index_u32(var_5.a, 9u)])), ~vec4<i32>(11280i, global0[_wgslsmith_index_u32(4294967295u, 9u)], -1i, 26188i)) << (var_0.a.a % 32u));
}

