struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 70028u, 1u);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 56356u, 4294967295u);

var<private> global2: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(7234i, i32(-2147483648), 14199i, -18958i), vec4<i32>(16918i, -49241i, 4762i, 41476i), vec4<i32>(2147483647i, 1725i, 1746i, -38544i), vec4<i32>(12267i, 27834i, -13773i, -1i), vec4<i32>(3866i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 10130i, -1i), vec4<i32>(2147483647i, -24573i, 2147483647i, 13118i), vec4<i32>(-8076i, -62053i, 19712i, 31572i), vec4<i32>(-28920i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-1i, -19098i, 4805i, i32(-2147483648)));

var<private> global3: Struct_1 = Struct_1(71824i, 4294967295u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = Struct_1(42439i, ~((~11036u << (global3.b % 32u)) << (arg_0.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + arg_1))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(979f, arg_1, 417f, 542f) - vec4<f32>(478f, -616f, arg_1, 1094f))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(round(-288f)), arg_1, _wgslsmith_f_op_f32(arg_1 - arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -686f, -1363f, arg_1) * vec4<f32>(arg_1, -552f, -1433f, arg_1)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2208f, arg_1, 934f, 982f), vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, false, false, false))))), select(vec4<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, true)), var_0.a != -42244i, true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), var_0.a < 0i), vec4<bool>(false, false, select(false, false, true), all(vec3<bool>(true, false, true)))))), vec4<f32>(-354f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1), !(_wgslsmith_dot_vec3_u32(vec3<u32>(8283u, u_input.a.x, 0u), ~vec3<u32>(44650u, global1.x, 4294967295u)) >= 35659u)));
    let var_3 = min(vec2<i32>(-2147483647i, var_0.a), vec2<i32>(0i, -2147483647i));
    global1 = vec3<u32>(firstTrailingBit(arg_0.x), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, ~1u), 24489u << ((arg_0.x & var_0.b) % 32u)), 18195u);
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-global3.a, min(firstLeadingBit(global1.x), max(1u, ~global3.b)) | ~_wgslsmith_div_u32(_wgslsmith_div_u32(84654u, 1u), u_input.a.x >> (global0.x % 32u)));
    let var_1 = var_0;
    var var_2 = global3.a;
    var var_3 = Struct_1(min(var_1.a, ~(_wgslsmith_add_i32(-7579i, 0i) << (~global0.x % 32u))), func_3(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1539f))))));
    let var_4 = ~_wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(firstTrailingBit(var_3.b), 53058u)) <= var_3.b;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global1 = vec3<u32>(arg_0.b, _wgslsmith_add_u32(69322u, _wgslsmith_mult_u32(1u, u_input.a.x) << (global1.x % 32u)), 9113u);
    var var_0 = !arg_1.x;
    var var_1 = min(u_input.a, u_input.a);
    var var_2 = all(arg_1.xwz);
    let var_3 = ~(~_wgslsmith_add_vec2_i32(vec2<i32>(-14129i, arg_0.a) << ((u_input.a.yz << (vec2<u32>(arg_0.b, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(arg_0.a, 0i)));
    return Struct_1(arg_0.a ^ global3.a, _wgslsmith_dot_vec2_u32(~global1.xx, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, var_1.x), vec2<u32>(arg_0.b, u_input.a.x))) | 4294967295u);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global3.b >> (u_input.a.x % 32u), ~47730u) & vec2<u32>(countOneBits(global1.x), global0.x)), ~firstLeadingBit(vec2<u32>(28713u, 0u)));
    var_0 = global1.x;
    global0 = select(u_input.a, u_input.a, false);
    var var_1 = -(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global3.a, global3.a) >> (u_input.a.xx % vec2<u32>(32u)), vec2<i32>(-37448i, 10527i))) << (global1.zz % vec2<u32>(32u)));
    var var_2 = func_4(func_2(), vec4<bool>(false, select(false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-102f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-142f, 612f))))) - -133f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1814f + 1043f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_1 = all(select(!vec3<bool>(67082u >= global3.b, true, var_0 <= 1456f), vec3<bool>(!any(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true)));
    var_1 = ((func_4(func_4(Struct_1(-2147483647i, global1.x), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)).b >> (global1.x % 32u)) <= ((_wgslsmith_dot_vec2_u32(vec2<u32>(36410u, 1u), vec2<u32>(1u, 0u)) & 0u) << (u_input.a.x % 32u))) | true;
    let var_2 = func_4(func_2(), vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1044f, 103f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_add_i32(~2353i, global3.a & var_2.a), -7806i)));
}

