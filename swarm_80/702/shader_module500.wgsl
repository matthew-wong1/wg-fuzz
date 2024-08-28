struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true), -1i, true);

var<private> global2: i32 = 67885i;

var<private> global3: array<f32, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec2<i32> {
    global0 = global1.a;
    var var_0 = abs(~abs(select(select(vec2<u32>(1u, u_input.b), vec2<u32>(arg_0, 9708u), global0.x), vec2<u32>(arg_0, arg_0) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), global1.a.x || global0.x)));
    let var_1 = Struct_1(!select(select(!global1.b.xy, vec2<bool>(false, global1.a.x), global0.x), global1.a, !(!global1.a)), select(vec3<bool>(global3[_wgslsmith_index_u32(67605u, 16u)] == 237f, any(vec2<bool>(global1.d, false)), true), vec3<bool>(any(!global1.b), select(true, any(vec2<bool>(global0.x, true)), any(vec4<bool>(global0.x, global1.d, true, true))), true), vec3<bool>(!(u_input.b < var_0.x), true && global1.a.x, global0.x)), 6421i, global1.b.x);
    global3 = array<f32, 16>();
    var var_2 = false;
    return ~arg_1;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = global1.a;
    global3 = array<f32, 16>();
    var var_0 = select(~min(vec2<i32>(1i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(46807i, global1.c), vec2<i32>(global1.c, u_input.a))), -vec2<i32>(global1.c, i32(-1i) * -2147483647i), vec2<bool>(any(vec2<bool>(false, global0.x)), global1.b.x)) | (~func_3(_wgslsmith_add_u32(arg_0, arg_0), -vec2<i32>(0i, 17562i)) ^ vec2<i32>(global1.c, 45315i));
    var var_1 = ~(vec2<i32>(var_0.x, u_input.c) ^ firstLeadingBit(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(global1.c, global1.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(33790i, u_input.a), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(global1.c, u_input.a) & vec2<i32>(global1.c, 26815i))));
    var var_2 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(23661u, arg_0, u_input.b, u_input.b), vec4<u32>(1u, 0u, arg_0, arg_0)), ~vec2<i32>(var_0.x, var_0.x)).x, -u_input.c, _wgslsmith_add_i32(_wgslsmith_div_i32(-39205i, u_input.c), 1i), var_1.x)), -firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(13760i, 24564i), max(var_0.x, 0i), _wgslsmith_mult_i32(1i, -2147483647i), var_1.x)));
    return select(global1.a, !select(global1.b.yy, vec2<bool>(global1.a.x || global0.x, global1.a.x | true), any(select(global1.a, vec2<bool>(global0.x, global0.x), global1.d))), !vec2<bool>(global1.c >= _wgslsmith_mod_i32(-57735i, var_0.x), !all(global1.a)));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_1(select(!vec2<bool>(true && global1.a.x, all(vec3<bool>(true, global0.x, false))), func_2(_wgslsmith_mult_u32(abs(4294967295u), arg_0)), global0.x), !global1.b, ~global1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(0u, 16u)])) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 16u)])))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 16u)]))) + _wgslsmith_f_op_f32(max(-1178f, -119f))));
    global0 = func_2(4294967295u);
    var var_1 = !select(vec2<bool>(global1.a.x, true), vec2<bool>(all(var_0.b), func_2(arg_0 << (u_input.b % 32u)).x), true);
    let var_2 = var_0;
    let var_3 = vec4<u32>(1u, 1u, u_input.b, u_input.b);
    return countOneBits((vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c, 27212i, var_0.c), vec3<i32>(0i, 1i, var_0.c))) | vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-11838i, 21276i)), vec2<i32>(var_0.c, 0i)), var_2.c, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.yy;
    let var_1 = func_1(30120u);
    var var_2 = global1.b;
    let var_3 = u_input.b;
    var var_4 = select(!(!func_2(1u)), !vec2<bool>(!(global3[_wgslsmith_index_u32(var_3, 16u)] != 315f), 2147483647i >= u_input.a), true);
    let var_5 = Struct_1(global1.a, !global1.b, 0i, func_2(0u).x);
    var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(global1.d, false)), false, !var_5.b.x), global1.b), vec3<bool>(all(vec4<bool>(var_5.a.x, true, true, var_2.x)), false, true), !(~(-1i) < global1.c));
    var_2 = select(vec3<bool>(global1.d, all(vec2<bool>(var_4.x, global1.a.x)), !var_2.x), select(select(global1.b, !vec3<bool>(global0.x, false, true), !var_5.b), select(!vec3<bool>(var_2.x, true, var_0.x), select(vec3<bool>(false, false, var_2.x), vec3<bool>(false, true, var_4.x), select(global1.b, global1.b, var_5.b.x)), all(!vec4<bool>(true, global1.d, var_5.d, true))), var_4.x), var_5.b);
    let var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(round(-553f)), -470f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1280f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_3, 525u, var_3, u_input.b), vec4<u32>(var_3, 1190u, u_input.b, 40455u)), ~vec4<u32>(var_3, var_3, var_3, u_input.b)), 16u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 16u)], global3[_wgslsmith_index_u32(var_3, 16u)]) - global3[_wgslsmith_index_u32(var_3, 16u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 16u)]), global3[_wgslsmith_index_u32(~1u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1715f, global3[_wgslsmith_index_u32(47306u, 16u)], global3[_wgslsmith_index_u32(50933u, 16u)]) * vec3<f32>(338f, -795f, 677f))))), global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, abs(-6294i), var_5.c, -2147483647i));
}

