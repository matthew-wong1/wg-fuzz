struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec3<u32>(0u, 1u, 1u));

var<private> global1: vec3<f32> = vec3<f32>(-1216f, 279f, -1068f);

var<private> global2: u32;

var<private> global3: array<u32, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> i32 {
    global2 = arg_0.b.b.x;
    var var_0 = arg_0.b;
    global3 = array<u32, 23>();
    global3 = array<u32, 23>();
    let var_1 = arg_0.b;
    return 1i;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> bool {
    global0 = Struct_1(arg_0.x, ~abs(select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44353u, 23u)], 23u)], 23u)], 23u)], 6446u, global0.b.x), global0.b, false)) & vec3<u32>(max(~global0.b.x, min(6445u, 0u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(21111u, 23u)], 0u, u_input.a), vec4<u32>(1u, 1u, 21058u, global0.b.x)), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], global0.b.x, 1u, 2521u)), 23u)], 23u)], 1u));
    let var_0 = Struct_2(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~arg_0, vec3<i32>(global0.a, global0.a, -28926i) & vec3<i32>(38330i, arg_0.x, arg_0.x)), ~(-70198i)), Struct_1(countOneBits(_wgslsmith_sub_i32(2403i, -arg_0.x)), abs(~vec3<u32>(1u, u_input.a, u_input.a))));
    let var_1 = min(-1i, _wgslsmith_sub_i32(~select(-1i, global0.a, true), abs(~0i))) < 0i;
    let var_2 = var_0.b.b.yx;
    let var_3 = Struct_1(~(-1i), ~_wgslsmith_mult_vec3_u32(min(global0.b ^ var_0.b.b, abs(global0.b)), vec3<u32>(var_2.x >> (34633u % 32u), global0.b.x, firstTrailingBit(global3[_wgslsmith_index_u32(global0.b.x, 23u)]))));
    return var_1;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global0 = arg_3;
    var var_0 = arg_3;
    global2 = _wgslsmith_mod_u32(1u, ~15161u);
    global0 = Struct_1(~(~_wgslsmith_mult_i32(9064i, arg_0)) | _wgslsmith_div_i32(arg_0 ^ -arg_0, -59220i), ~(~(select(var_0.b, var_0.b, true) & (var_0.b | vec3<u32>(56875u, 0u, u_input.a)))));
    global3 = array<u32, 23>();
    return Struct_2(~(-(~(-1i) | -var_0.a)), arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)));
    let var_1 = 77206u;
    var var_2 = any(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true));
    let var_3 = arg_0.b;
    global0 = arg_0.b;
    return Struct_2(arg_0.b.a, func_4(~(~(global0.a ^ 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, global1.x, _wgslsmith_f_op_f32(-global1.x))), -395f, Struct_1(28154i, (global0.b & vec3<u32>(var_3.b.x, 41439u, 4294967295u)) | countOneBits(vec3<u32>(0u, 0u, global0.b.x)))).b);
}

fn func_1() -> vec4<i32> {
    let var_0 = global0.a;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, -1453f))))), global1.x, -966f);
    var var_1 = func_5(func_4(_wgslsmith_clamp_i32(global0.a, func_2(Struct_2(-2147483647i, Struct_1(1i, vec3<u32>(35230u, u_input.a, global0.b.x)))), global0.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(333f, -1268f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2038f, global1.x, global1.x)))), any(vec4<bool>(false, false, true, false)) | func_3(vec3<i32>(-20884i, -1i, 23876i), global1.x))), _wgslsmith_f_op_f32(floor(-1000f)), Struct_1(~51291i, ~select(global0.b, vec3<u32>(global3[_wgslsmith_index_u32(66146u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], u_input.a), false))), abs(_wgslsmith_add_u32(u_input.a ^ 1u, global0.b.x)));
    let var_2 = global3[_wgslsmith_index_u32(func_4(-reverseBits(firstTrailingBit(firstTrailingBit(var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, _wgslsmith_f_op_f32(-291f - -330f), _wgslsmith_f_op_f32(exp2(global1.x))))), global1.x, Struct_1(global0.a, func_4(func_2(Struct_2(var_1.b.a, Struct_1(-41861i, vec3<u32>(4294967295u, 1u, 1u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, -1700f), vec3<f32>(2083f, 866f, global1.x), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), var_1.b).b.b)).b.b.x, 23u)];
    let var_3 = global1.xy;
    return _wgslsmith_clamp_vec4_i32(countOneBits(firstTrailingBit(~(-vec4<i32>(var_1.a, -49730i, global0.a, global0.a)))), _wgslsmith_mod_vec4_i32(-min(firstLeadingBit(vec4<i32>(var_1.b.a, global0.a, var_1.a, var_1.a)), ~vec4<i32>(global0.a, -1i, -2147483647i, 1i)), -firstLeadingBit(min(vec4<i32>(1i, global0.a, global0.a, global0.a), vec4<i32>(31434i, 0i, 0i, var_1.a)))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, global0.a, var_1.b.a, -20751i), vec4<i32>(-2147483647i, 38179i, var_1.b.a, -22655i)), vec4<i32>(var_1.a, 47052i, -25086i, -3610i)) ^ var_1.b.a, i32(-1i) * -1i, -global0.a, func_4(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(4919i, -16609i, var_1.a)), vec3<i32>(-43217i, 55272i, 20416i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, 1285f, -731f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1851f, var_3.x, -913f) * vec3<f32>(var_3.x, -819f, -1000f)), _wgslsmith_f_op_f32(-global1.x), func_4(global0.a, vec3<f32>(1000f, 1000f, -1000f), global1.x, var_1.b).b).b).b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = max(0i, -2147483647i);
    global0 = Struct_1(-_wgslsmith_dot_vec4_i32(func_1(), _wgslsmith_div_vec4_i32(func_1(), -vec4<i32>(2147483647i, 23043i, var_0, -1i))), global0.b);
    let var_2 = global1.x;
    let var_3 = 59966i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(~(~vec4<i32>(0i, 14233i, 51364i, 2147483647i))), vec4<i32>(var_3, i32(-1i) * -2147483647i, ~7769i, func_4(_wgslsmith_add_i32(-1i, 12734i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(257f, 1349f, global1.x))), -1420f, Struct_1(-2147483647i, global0.b)).a)));
}

