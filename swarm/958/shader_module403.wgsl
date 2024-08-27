struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-508f, true);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(2205f, true), Struct_1(1331f, true), Struct_1(827f, false), Struct_1(-1000f, false), Struct_1(-1216f, true), Struct_1(394f, true), Struct_1(283f, true), Struct_1(277f, true), Struct_1(313f, false), Struct_1(-462f, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = select(34575i, 2147483647i, select(false, true, any(vec3<bool>(true, global0.b, global0.b))) & (false && global0.b)) & ~_wgslsmith_sub_i32(firstLeadingBit(-u_input.a.x), -1i);
    var_0 = u_input.c;
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(global1.x, arg_0 & min(firstTrailingBit(global1.x), firstTrailingBit(9756u))), reverseBits(global1.x), arg_0);
    var var_2 = Struct_1(-225f, global0.b);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -514f);
    return -840f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -1000f, _wgslsmith_f_op_f32(func_3(25843u))), vec3<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), 730f, _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(arg_0.a * global0.a), arg_0.a)))));
    let var_1 = _wgslsmith_f_op_f32(global0.a - global0.a);
    let var_2 = Struct_1(1553f, true);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(-2257f, 1159f)), false);
    let var_4 = _wgslsmith_f_op_f32(var_0.x - 125f);
    return var_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3, arg_2.x), 10u)];
    var var_1 = func_2(global2[_wgslsmith_index_u32(45960u, 10u)], -_wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.d, u_input.a.x, u_input.d, 27662i) & vec4<i32>(u_input.c, u_input.d, 1i, u_input.b)), select(_wgslsmith_div_vec4_i32(vec4<i32>(7067i, 684i, u_input.b, u_input.a.x), vec4<i32>(-32i, u_input.b, 0i, 10964i)), vec4<i32>(2147483647i, u_input.c, u_input.a.x, u_input.d) & vec4<i32>(66519i, -1i, 8435i, -2147483647i), select(vec4<bool>(true, true, var_0.b, false), vec4<bool>(true, false, global0.b, arg_0), vec4<bool>(true, arg_0, arg_1.b, arg_1.b)))));
    var var_2 = -1143f;
    global1 = (~(~vec3<u32>(arg_2.x, arg_3, global1.x) ^ vec3<u32>(33797u, 1u, 1u)) | vec3<u32>(~(~global1.x), _wgslsmith_add_u32(arg_3, 1u), 4294967295u)) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(1u << (arg_3 % 32u), 4294967295u, 33720u), vec3<u32>(_wgslsmith_mult_u32(1u, 57200u), abs(arg_2.x), 0u)) ^ min(~vec3<u32>(arg_3, global1.x, 0u), countOneBits(vec3<u32>(6947u, global1.x, arg_3))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(44634u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))))), true);
    return vec2<u32>(1u, arg_2.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global1 = vec3<u32>(45484u, 0u, firstLeadingBit(select(_wgslsmith_sub_u32(~global1.x, ~arg_0.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(global1.x, 0u, var_0))), ~arg_0.x <= select(25551u, 1u, true))));
    global0 = arg_3;
    global0 = arg_3;
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, arg_1) << (var_0 % 32u), ~(~23291u)), _wgslsmith_add_u32(max(var_0, 41872u) >> (_wgslsmith_mod_u32(41791u, var_0) % 32u), func_1(global0.b, Struct_1(421f, global0.b), vec2<u32>(global1.x, global1.x), global1.x).x), ~arg_0.x, ~abs(~arg_0.x));
    return func_2(func_2(global2[_wgslsmith_index_u32(~var_0, 10u)], ~firstLeadingBit(reverseBits(vec4<i32>(u_input.d, 0i, u_input.e, u_input.b)))), _wgslsmith_sub_vec4_i32(-(abs(vec4<i32>(u_input.d, 13446i, 27110i, u_input.e)) ^ min(vec4<i32>(u_input.c, 14844i, u_input.b, 27623i), vec4<i32>(-8734i, u_input.b, 4607i, -29069i))), -vec4<i32>(firstTrailingBit(u_input.b), ~u_input.a.x, min(0i, -7686i), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 1u)), max(select(vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, global1.x), global0.b), func_1(true, Struct_1(global0.a, global0.b), vec2<u32>(28621u, 1u), global1.x))), vec2<u32>(firstTrailingBit(global1.x), global1.x)), abs(firstTrailingBit(global1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-971f, global0.a, global0.a, -1640f), vec4<f32>(-1294f, -2531f, global0.a, global0.a), vec4<bool>(true, false, global0.b, global0.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, global0.a, global0.a, 1241f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2461f, global0.a, 105f, global0.a))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1197f, _wgslsmith_f_op_f32(max(1302f, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(-1000f + global0.a)), vec4<f32>(_wgslsmith_f_op_f32(max(-659f, global0.a)), _wgslsmith_f_op_f32(-global0.a), global0.a, 726f)), global0.b)), func_2(global2[_wgslsmith_index_u32(global1.x, 10u)], vec4<i32>(~33782i, _wgslsmith_mult_i32(u_input.d, abs(u_input.b)), u_input.c, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(u_input.e, 18567i, ~select(~u_input.d, u_input.b, false), -41352i), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(14532u, 0u, global1.x)), ~vec3<u32>(0u, global1.x, global1.x) | ~vec3<u32>(0u, 49785u, 22077u)) & (select(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), vec3<u32>(global1.x, 5326u, 0u) >> (vec3<u32>(88687u, global1.x, global1.x) % vec3<u32>(32u)), select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, true, global0.b))) << (abs(vec3<u32>(global1.x, 73060u, 4294967295u)) % vec3<u32>(32u))), vec2<i32>(-497i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(24727i, 2147483647i, u_input.d, 33907i), vec4<i32>(u_input.b, u_input.b, u_input.c, 2147483647i)), u_input.a.x)) >> (global1.xy % vec2<u32>(32u)), _wgslsmith_clamp_i32(select(1i, _wgslsmith_add_i32(min(12650i, u_input.c), -1i), global0.b == global0.b), u_input.c, select(12852i ^ u_input.a.x, ~31702i, false)));
}

