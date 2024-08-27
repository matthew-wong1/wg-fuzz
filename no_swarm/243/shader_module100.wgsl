struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(167f, -191f, 1953f, 355f), vec4<f32>(1000f, -1919f, -1243f, 1267f), vec4<f32>(-569f, 619f, 366f, 452f), vec4<f32>(1011f, -1000f, 742f, -1087f), vec4<f32>(-602f, 845f, 407f, -1129f), vec4<f32>(-1000f, 656f, -2491f, -194f), vec4<f32>(1105f, -1082f, 1212f, 408f), vec4<f32>(1915f, -1681f, -231f, -1068f), vec4<f32>(480f, 1470f, 422f, 935f), vec4<f32>(400f, -856f, -988f, -493f), vec4<f32>(585f, 1187f, -504f, 1280f), vec4<f32>(1552f, -908f, 1000f, -743f), vec4<f32>(-335f, 1139f, -356f, -1581f), vec4<f32>(376f, -892f, -152f, 1661f), vec4<f32>(-582f, -994f, -2623f, -835f), vec4<f32>(-1000f, -1000f, -1076f, 700f), vec4<f32>(527f, 929f, 1618f, -409f), vec4<f32>(-882f, 601f, -178f, 540f), vec4<f32>(-789f, -558f, -1150f, 1147f), vec4<f32>(-773f, -279f, 138f, -901f));

var<private> global1: array<bool, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_1 = Struct_2(arg_3.a.x, Struct_1(vec4<bool>(all(arg_3.a.zy), false, true != (arg_1 || arg_0.a.x), true)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, firstTrailingBit(133146u)), 7u)], true, arg_0.a.x & true, true)), _wgslsmith_div_vec2_i32(-u_input.a, vec2<i32>(select(27652i, u_input.a.x, true), ~(-1i)) & u_input.b.ww));
    var var_2 = arg_0;
    global0 = array<vec4<f32>, 20>();
    var_2 = arg_3;
    return ~u_input.a;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = arg_2.x;
    let var_2 = !all(select(vec3<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 7u)], select(false, false, true), true || arg_1), select(vec3<bool>(global1[_wgslsmith_index_u32(46343u, 7u)], true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(65227u, 7u)], arg_0), global1[_wgslsmith_index_u32(~arg_2.x, 7u)]), true));
    var var_3 = select(~vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.wyx ^ u_input.b.zyz, ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x))), min(-func_3(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 7u)], arg_0, global1[_wgslsmith_index_u32(arg_2.x, 7u)], arg_0)), var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, 763f)), Struct_1(vec4<bool>(var_2, false, true, true))), vec2<i32>(~22772i, firstLeadingBit(19120i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), firstTrailingBit(u_input.b.zw))), !vec2<bool>(var_2, var_2));
    let var_4 = min(u_input.b, -vec4<i32>(min(var_3.x, 1i), _wgslsmith_dot_vec3_i32(u_input.b.zxz, vec3<i32>(u_input.a.x, var_3.x, -2147483647i)), func_3(Struct_1(vec4<bool>(arg_0, arg_0, true, true)), var_2, vec2<f32>(1237f, 1000f), Struct_1(vec4<bool>(arg_1, true, false, false))).x, -u_input.a.x)) << (firstLeadingBit(arg_2) % vec4<u32>(32u));
    return Struct_2(true, Struct_1(vec4<bool>(true, arg_1, !arg_1, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_2.x), 7u)])), Struct_1(vec4<bool>(arg_2.x <= arg_2.x, arg_0, false && any(vec2<bool>(arg_1, false)), any(!vec4<bool>(false, false, var_2, true)))), -abs(-vec2<i32>(var_4.x, -1i)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0.b.a.x;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~(~4294967295u), firstTrailingBit(_wgslsmith_mult_u32(0u, 26052u))), 1u), countOneBits(vec2<u32>(3999u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(43752u, 25067u)), vec2<u32>(1u, 1u), var_1.b.a.xz)));
    let var_3 = true;
    var var_4 = firstLeadingBit(var_2.x);
    return func_2(!arg_0.a, false, _wgslsmith_mod_vec4_u32(~vec4<u32>(15097u, var_2.x, var_2.x, var_2.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 22726u, var_2.x, var_2.x), vec4<u32>(1u, var_2.x, 168u, 27174u)) % vec4<u32>(32u)), ~vec4<u32>(18098u, 32347u, 77115u, var_2.x) & ~vec4<u32>(var_2.x, var_2.x, 1u, 22587u)) ^ vec4<u32>(1u, ~var_2.x, _wgslsmith_clamp_u32(~8277u, 1u, 75409u), var_2.x)).b;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(true, func_4(func_2((arg_0.x < arg_0.x) & !global1[_wgslsmith_index_u32(arg_0.x, 7u)], all(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 7u)])), vec4<u32>(firstLeadingBit(arg_0.x), arg_0.x << (arg_0.x % 32u), 780u, reverseBits(16206u))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(arg_0.x, 4294967295u) | countOneBits(arg_0.x)), 7u)]), Struct_1(!vec4<bool>(true, true || global1[_wgslsmith_index_u32(7782u, 7u)], global1[_wgslsmith_index_u32(arg_0.x, 7u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 7u)], global1[_wgslsmith_index_u32(arg_0.x, 7u)], true)))), _wgslsmith_div_vec2_i32(select(u_input.a, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false)), countOneBits(vec2<i32>(u_input.a.x, 2147483647i))), global1[_wgslsmith_index_u32(41936u, 7u)]), -vec2<i32>(func_3(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 7u)], global1[_wgslsmith_index_u32(arg_0.x, 7u)], true, global1[_wgslsmith_index_u32(arg_0.x, 7u)])), global1[_wgslsmith_index_u32(arg_0.x, 7u)], vec2<f32>(-108f, 1146f), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], false, false))).x, ~u_input.a.x)));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    var var_1 = Struct_1(select(!var_0.c.a, vec4<bool>(all(!vec4<bool>(var_0.c.a.x, global1[_wgslsmith_index_u32(42418u, 7u)], global1[_wgslsmith_index_u32(arg_0.x, 7u)], true)), true, true, false), vec4<bool>(!global1[_wgslsmith_index_u32(1u, 7u)], any(vec2<bool>(var_0.a, var_0.a)), arg_0.x > 1u, false)));
    let var_2 = all(vec2<bool>(true, true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(firstTrailingBit(~vec2<u32>(58746u, 46854u)) | vec2<u32>(5440u, 16829u)));
    let var_1 = var_0.c.a;
    var var_2 = false;
    let var_3 = vec4<bool>(var_0.b.a.x, select(global1[_wgslsmith_index_u32(~0u, 7u)], any(func_2(true, true, abs(vec4<u32>(0u, 0u, 33828u, 0u))).b.a.wzz), global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~13706u, 18964u << (0u % 32u)), 70754u, var_1.x), 7u)]), any(var_1), global1[_wgslsmith_index_u32(~54921u, 7u)]);
    global0 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5502u, 1u, 0u), vec4<u32>(1u, 11887u, 31523u, 30775u)))) << (0u % 32u));
}

