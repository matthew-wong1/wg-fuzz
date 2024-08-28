struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    return ~(~(~countOneBits(countOneBits(vec2<u32>(arg_1.d, arg_1.d)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = max(_wgslsmith_div_i32(14965i, ~(~u_input.a)), 1i) >= ~(~(-27832i));
    var var_1 = arg_0;
    var var_2 = (firstTrailingBit(min(select(vec2<i32>(-446i, u_input.a), vec2<i32>(var_1.c, -3522i), vec2<bool>(false, arg_0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, -24007i), vec2<i32>(2147483647i, 0i)))) << (func_2(arg_1, arg_0, Struct_1(u_input.a > arg_0.c, vec4<bool>(true, arg_0.a, var_1.a, arg_0.a), _wgslsmith_mult_i32(var_1.c, arg_0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 11465u), vec2<u32>(4294967295u, arg_0.d)), vec4<bool>(var_1.e.x, true, false, false)), vec2<i32>(_wgslsmith_sub_i32(arg_0.c, -32544i), arg_0.c)) % vec2<u32>(32u))) ^ firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, var_1.c), vec2<i32>(1i, var_1.c)));
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = func_1(Struct_1(any(arg_0.b.yz), !vec4<bool>(true, arg_0.b.x, select(false, false, false), true), reverseBits(u_input.a), arg_0.d, vec4<bool>(any(!arg_0.e), abs(arg_0.d) < ~arg_0.d, max(20602i, arg_0.c) > arg_0.c, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(215f, 1381f, 899f), vec3<f32>(215f, 321f, 621f))), vec3<f32>(-822f, -384f, 233f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-181f, -1559f, -955f) - vec3<f32>(889f, -1393f, -850f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, -466f, -1785f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(716f, 767f, 706f) + vec3<f32>(-146f, 1405f, 441f)), vec3<f32>(-1207f, 1229f, 1000f), vec3<bool>(true, true, arg_0.e.x))))), -(2147483647i & firstTrailingBit(arg_0.c)) ^ (-100169i << (arg_0.d % 32u)));
    var_0 = Struct_1(false, arg_0.b, -_wgslsmith_mod_i32(-2147483647i, u_input.a), ~var_0.d | ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.d), vec2<u32>(var_0.d, 1u))), arg_0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-805f + -853f), 811f, -994f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(675f, 2124f, -1446f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 118f, -2364f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -169f, 762f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1090f, -760f, 564f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, 374f, 109f)), vec3<f32>(-1472f, 1483f, 1858f)))))), !var_0.b.zxx));
    var_0 = func_1(func_1(arg_0, var_1, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a, u_input.a, -15510i)), vec3<i32>(arg_0.c, abs(2147483647i), -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1, var_1), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 420f), vec3<f32>(-355f, var_1.x, -503f))))), _wgslsmith_mult_i32(~reverseBits(arg_0.c << (0u % 32u)), _wgslsmith_sub_i32(_wgslsmith_div_i32(15997i, arg_0.c | 0i), ~_wgslsmith_div_i32(arg_0.c, u_input.a))));
    var var_2 = ~(~countOneBits(vec2<u32>(countOneBits(var_0.d), 4294967295u)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 3>();
    var var_0 = Struct_1(!any(vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !func_3(func_1(Struct_1(true, vec4<bool>(true, false, false, false), -1i, 1u, vec4<bool>(false, true, false, true)), vec3<f32>(-991f, 330f, -208f), -674i)), true), -1i, ~0u, select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, false), !func_3(Struct_1(false, vec4<bool>(false, false, false, true), 1i, 0u, vec4<bool>(false, true, false, true))), all(!func_3(Struct_1(true, vec4<bool>(false, false, true, true), u_input.a, 0u, vec4<bool>(false, true, true, true))))));
    var_0 = Struct_1(true, var_0.b, -2147483647i, _wgslsmith_mult_u32(~var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, 12695u, var_0.d), firstLeadingBit(vec4<u32>(62841u, 4294967295u, 63228u, 4294967295u))) & _wgslsmith_sub_u32(select(64663u, var_0.d, var_0.b.x), firstLeadingBit(4294967295u))), var_0.b);
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(1i, -19283i), var_0.c);
    var_0 = Struct_1(true, !(!var_0.e), var_1.x, var_0.d, vec4<bool>(!(!(-2147483647i != var_1.x)), true, false, var_0.a));
    var_0 = Struct_1(!(!(true & !var_0.a)), vec4<bool>(true, var_0.b.x, !any(var_0.e.zx) & !(false & var_0.e.x), !(!var_0.a)), var_1.x >> (4294967295u % 32u), var_0.d, vec4<bool>(var_0.a, all(!vec3<bool>(var_0.e.x, var_0.b.x, true)), !(!var_0.b.x), all(func_1(func_1(Struct_1(var_0.e.x, var_0.b, -28057i, var_0.d, vec4<bool>(false, var_0.b.x, true, true)), vec3<f32>(-464f, -1000f, 824f), var_0.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -724f, -798f))), var_0.c).e.wx)));
    let var_2 = func_3(Struct_1(var_0.e.x, !vec4<bool>(true, true, select(false, true, var_0.a), true & var_0.a), u_input.a, ~(~4294967295u), !var_0.b)).x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.d, var_0.d), 3u)], vec3<u32>(56805u, 4294967295u, 1u)), global0[_wgslsmith_index_u32(var_0.d, 3u)]), -27945i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f - -1250f) * -690f)), 1f)), min(~(~(vec4<u32>(var_0.d, var_0.d, 19156u, var_0.d) >> (vec4<u32>(var_0.d, 4294967295u, var_0.d, 20559u) % vec4<u32>(32u)))), vec4<u32>(~51669u, var_0.d, ~1u & var_0.d, _wgslsmith_sub_u32(40190u, ~var_0.d))));
}

