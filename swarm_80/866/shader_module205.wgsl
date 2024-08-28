struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    let var_0 = !select(vec3<bool>(any(vec2<bool>(true, true)), true, 0i == abs(global0.a.x)), select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), true);
    var var_1 = Struct_1(-vec4<i32>(_wgslsmith_mult_i32(arg_1.a.x, global0.a.x), countOneBits(_wgslsmith_dot_vec3_i32(arg_0.a.xzz, arg_0.a.wxy)), _wgslsmith_add_i32(2880i, -48936i), _wgslsmith_div_i32(global0.a.x, global0.a.x) << ((4294967295u ^ u_input.b.x) % 32u)), firstTrailingBit(~firstLeadingBit(_wgslsmith_add_u32(arg_0.b, 27597u))));
    global0 = Struct_1(max(vec4<i32>((arg_0.a.x >> (41787u % 32u)) & (var_1.a.x | -2147483647i), 7262i, firstTrailingBit(i32(-1i) * -1i), abs(i32(-1i) * -19554i)), global0.a), _wgslsmith_mult_u32(~u_input.b.x, countOneBits(arg_1.b)));
    var var_2 = Struct_1(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, -64787i, var_1.a.x, 1i), select(vec4<i32>(arg_0.a.x, 1i, -2147483647i, arg_0.a.x) >> (vec4<u32>(4284u, 17210u, 18561u, 25678u) % vec4<u32>(32u)), select(arg_1.a, arg_1.a, vec4<bool>(true, var_0.x, false, var_0.x)), var_0.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_1.b, 1u, global0.b), select(u_input.b.x, var_1.b, false), var_1.b), 16u, 1u), vec3<u32>(firstTrailingBit(global0.b) << (u_input.a % 32u), ~min(1u, 1u), ~arg_1.b)));
    var_1 = Struct_1(global0.a, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.b, 4294967295u, 1u, 1u), ~vec4<u32>(1u, var_1.b, 4294967295u, 8521u)));
    return vec4<u32>(countOneBits(_wgslsmith_add_u32(firstTrailingBit(~arg_1.b), 45761u >> (~arg_0.b % 32u))), 30640u, var_2.b, ~_wgslsmith_mod_u32(8976u, 1u));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(global0.a, 98971u);
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    var_0 = global1[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_add_u32(var_0.b, _wgslsmith_add_u32(var_0.b, global0.b)))), 24u)];
    global1 = array<Struct_1, 24>();
    var var_1 = ~(~_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(0u, u_input.a, 0u, 4294967295u), vec4<u32>(0u, 31377u, u_input.a, var_0.b), vec4<bool>(true, true, true, false))), ~vec4<u32>(4294967295u, 2491u, var_0.b, 0u) >> (func_3(Struct_1(vec4<i32>(0i, 33743i, global0.a.x, arg_0.x), var_0.b), Struct_1(var_0.a, 1u), var_0.a.x) % vec4<u32>(32u))));
    return global1[_wgslsmith_index_u32(u_input.b.x, 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_1, 24>();
    var var_0 = func_2(-(vec4<i32>(~(-6665i), _wgslsmith_sub_i32(arg_0.a.x, global0.a.x), arg_2, ~global0.a.x) & -reverseBits(vec4<i32>(-2147483647i, 0i, global0.a.x, arg_1.a.x))));
    var var_1 = func_2(_wgslsmith_add_vec4_i32(arg_1.a, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a, var_0.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, arg_1.b, arg_0.b, global0.b), vec4<u32>(var_0.b, 1u, arg_0.b, 4294967295u)) % vec4<u32>(32u)), min(reverseBits(global0.a), _wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(global0.a.x, arg_0.a.x, -16040i, global0.a.x))))));
    var var_2 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), true || all(vec2<bool>(false, false))));
    var_0 = func_2(max(select(-(~vec4<i32>(arg_2, arg_2, arg_1.a.x, var_1.a.x)), (var_0.a & vec4<i32>(var_0.a.x, -2147483647i, -2147483647i, 291i)) & vec4<i32>(0i, 1i, arg_2, var_0.a.x), !(!vec4<bool>(false, var_2.x, var_2.x, true))), var_1.a));
    return func_2(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -arg_0.a.x, -_wgslsmith_div_i32(1i, -2147483647i)), -(~(~vec4<i32>(global0.a.x, 2147483647i, -26990i, arg_2)))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = firstTrailingBit(2147483647i);
    global0 = func_4(func_2(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, global0.a.x, -1i, global0.a.x), vec4<i32>(33845i, -58616i, var_0, var_0))))), func_2(_wgslsmith_mod_vec4_i32(-global0.a, _wgslsmith_clamp_vec4_i32(global0.a, global0.a, global0.a)) ^ (vec4<i32>(global0.a.x, var_0, var_0, 2147483647i) & _wgslsmith_mult_vec4_i32(vec4<i32>(-23314i, -2147483647i, var_0, 36388i), global0.a))), -var_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) * _wgslsmith_f_op_f32(642f + -424f)), -623f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(217f, 1161f), vec2<f32>(-355f, -461f), vec2<bool>(true, arg_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -603f))))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f)))), 2014f));
    let var_2 = vec3<i32>(var_0, global0.a.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(func_2(global0.a | vec4<i32>(31154i, 2147483647i, -1182i, -15663i)).a.x, i32(-1i) * -var_0), i32(-1i) * -global0.a.x));
    var var_3 = global0.a.yx;
    return vec3<bool>(!select(!(false || arg_0.x), false, arg_0.x), select(arg_0.x, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    var var_0 = !(!(!func_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false))));
    var_0 = vec3<bool>(var_0.x, !var_0.x, true | all(select(!vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(vec4<u32>(1u, global0.b, 0u, global0.b)))));
}

