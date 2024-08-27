struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, false, true, true, true, false, true, false, false, true, false, false, false, false, false, true, true, false, true, true, false, true, true, false, false, false);

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, false, false, true, false, false, false, false, true, false, false, true, false, false, true, true, false);

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    global1 = array<bool, 19>();
    var var_0 = !(!select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 19u)]), global0[_wgslsmith_index_u32(67264u, 27u)]));
    var_0 = !(!(!vec2<bool>(global0[_wgslsmith_index_u32(~global3.a, 27u)], false)));
    let var_1 = any(vec3<bool>(select(select(true, global1[_wgslsmith_index_u32(42779u, 19u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(18353u, 19u)], false))), true, true), false, false));
    var var_2 = vec3<i32>(1i, ~_wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(1i, select(u_input.b.x, u_input.b.x, false))), max(u_input.a, u_input.b.x));
    return abs(u_input.a) << (~18129u % 32u);
}

fn func_3() -> i32 {
    let var_0 = ~min(u_input.b.x, select(u_input.b.x, u_input.b.x, true));
    var var_1 = select(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)], false, global1[_wgslsmith_index_u32(global3.a, 19u)])), vec4<bool>(!global1[_wgslsmith_index_u32(select(33922u, global3.a, true), 19u)], !(!global1[_wgslsmith_index_u32(34381u, 19u)]), true, true), select(vec4<bool>(false, false, !global1[_wgslsmith_index_u32(global3.a, 19u)], 0u < global3.a), select(vec4<bool>(false, global1[_wgslsmith_index_u32(4690u, 19u)], global0[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(71058u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global3.a, 19u)], global0[_wgslsmith_index_u32(31691u, 27u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(global3.a, 19u)], global0[_wgslsmith_index_u32(1u, 27u)], false)), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true)), global1[_wgslsmith_index_u32(~0u, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(14174u, global3.a), 19u)], select(true, true, global1[_wgslsmith_index_u32(69837u, 19u)])))), select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true, true, true)), !vec4<bool>(global0[_wgslsmith_index_u32(global3.a, 27u)], global1[_wgslsmith_index_u32(global3.a, 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 19u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(global3.a, 27u)], global0[_wgslsmith_index_u32(98688u, 27u)], global1[_wgslsmith_index_u32(global3.a, 19u)])), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(global3.a, 27u)], false, global0[_wgslsmith_index_u32(1u, 27u)], false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)], true, global1[_wgslsmith_index_u32(global3.a, 19u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 27u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(80338u, 19u)], true, global0[_wgslsmith_index_u32(1u, 27u)])), global1[_wgslsmith_index_u32(~global3.a, 19u)]), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(global3.a, 27u)], false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], false, global1[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(global3.a, 27u)], false, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(25942u, 27u)], global0[_wgslsmith_index_u32(60188u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], true), vec4<bool>(true, false, true, false), true)), vec4<bool>(true, false, true, false & global1[_wgslsmith_index_u32(58810u, 19u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(~abs(global3.a), 27u)], any(select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 27u)]), vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(95134u, 27u)], global0[_wgslsmith_index_u32(global3.a, 27u)], true, global0[_wgslsmith_index_u32(4294967295u, 27u)]))), all(vec4<bool>(global1[_wgslsmith_index_u32(global3.a, 19u)], true, global0[_wgslsmith_index_u32(global3.a, 27u)], global0[_wgslsmith_index_u32(8002u, 27u)])))), true);
    global0 = array<bool, 27>();
    let var_2 = -64496i;
    global0 = array<bool, 27>();
    return ~(~1i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(arg_0.a, 19u)];
    var var_0 = firstTrailingBit(vec4<i32>(-1i) * -abs(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.a) >> (vec4<u32>(4294967295u, arg_0.a, 612u, arg_0.a) % vec4<u32>(32u))));
    var var_1 = select(~vec4<i32>(func_2(arg_0, 27064u), var_0.x, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -67924i), vec2<i32>(u_input.b.x, var_0.x) ^ vec2<i32>(-18023i, -2147483647i))), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 0i, -40161i, -3106i), vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a))), -_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a, var_0.x, -55434i, -1i)), vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x))), !(!vec4<bool>(select(global0[_wgslsmith_index_u32(0u, 27u)], false, global0[_wgslsmith_index_u32(arg_0.a, 27u)]), false || global1[_wgslsmith_index_u32(4294967295u, 19u)], any(vec3<bool>(true, true, false)), true)));
    let var_2 = vec2<bool>(all(vec2<bool>(_wgslsmith_f_op_f32(sign(-786f)) < _wgslsmith_f_op_f32(f32(-1f) * -1094f), true)), -1i != ~reverseBits(-var_1.x));
    var_1 = vec4<i32>(~2147483647i, i32(-1i) * -func_3(), _wgslsmith_div_i32(-2147483647i, 1i), abs(_wgslsmith_sub_i32(-var_0.x, _wgslsmith_clamp_i32(~var_0.x, _wgslsmith_mult_i32(var_0.x, 2147483647i), -14657i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = Struct_1(1u);
    global2 = global1[_wgslsmith_index_u32(~max(4294967295u, var_0.a), 19u)];
    global2 = true;
    var var_1 = func_1(var_0);
    global3 = var_0;
    let var_2 = any(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 19u)], false), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global3.a, 27u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.a, 19u)])), vec2<bool>(true, true)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(var_1.a, 27u)]), !vec2<bool>(select(false, global1[_wgslsmith_index_u32(var_0.a, 19u)], true), global0[_wgslsmith_index_u32(var_0.a, 27u)]), vec2<bool>(true, true)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x, vec3<i32>(-(u_input.b.x | _wgslsmith_add_i32(34583i, u_input.b.x)), abs(firstLeadingBit(~u_input.a)), 1i), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-426f + _wgslsmith_f_op_f32(427f + -2078f)))), 398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1282f)) + _wgslsmith_f_op_f32(f32(-1f) * -1327f)), -787f));
}

