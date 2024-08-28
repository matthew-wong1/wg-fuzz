struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, false, false, false, false, false, false, true, true, false, false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, global1.a, arg_2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.wzx + vec3<f32>(-1232f, global1.a, global1.a)))), vec3<bool>(all(global0.zz), arg_1, !(!global2[_wgslsmith_index_u32(62661u, 30u)])))));
    let var_1 = var_0.zx;
    var var_2 = vec4<i32>(~(~select(u_input.a, 1i ^ u_input.a, false)), -42917i, _wgslsmith_mod_i32(u_input.a, u_input.a), 1i);
    let var_3 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-23399i, var_2.x, 0i, 0i), max(vec4<i32>(8592i, _wgslsmith_mod_i32(u_input.a, 59006i), _wgslsmith_sub_i32(-2147483647i, u_input.a), -8071i), vec4<i32>(countOneBits(-2147483647i), ~u_input.a, max(-20090i, u_input.a), u_input.a | u_input.a)));
    var var_4 = !(!(!arg_0.x));
    return _wgslsmith_f_op_f32(trunc(842f));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec2<bool> {
    global0 = !(!vec3<bool>(true, false, !(false && global2[_wgslsmith_index_u32(62001u, 30u)])));
    global0 = !(!(!vec3<bool>(global0.x | global0.x, select(false, global0.x, false), global2[_wgslsmith_index_u32(abs(1u), 30u)])));
    var var_0 = ~abs(~vec3<u32>(1u, 1u, 1u));
    global1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x));
    global0 = vec3<bool>(false, global0.x | global2[_wgslsmith_index_u32(var_0.x, 30u)], !(!(u_input.a <= -arg_1)));
    return select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)] | all(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 30u)], global0.x, false), vec3<bool>(true, global0.x, global2[_wgslsmith_index_u32(var_0.x, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(7155u, 30u)], global0.x, global0.x)))), global0.yx, !global0.xx);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = select(!global0.yx, func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(global0.x, global0.x, global0.x, true), global0.x, vec4<f32>(global1.a, global1.a, 558f, -637f)))), _wgslsmith_f_op_f32(-534f * global1.a)), u_input.a & max(u_input.a, -u_input.a)), all(!select(select(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(96113u, 30u)]), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true)), !vec3<bool>(false, global2[_wgslsmith_index_u32(87389u, 30u)], global0.x), vec3<bool>(global2[_wgslsmith_index_u32(49409u, 30u)], false, false))));
    global0 = select(select(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 30u)], global2[_wgslsmith_index_u32(arg_1, 30u)]), vec3<bool>(false, global0.x, global2[_wgslsmith_index_u32(arg_1, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(86307u, 30u)], true, global0.x)), !vec3<bool>(false, false, global0.x), all(global0.zz)), !(!vec3<bool>(global0.x, global0.x, false)), global2[_wgslsmith_index_u32(~(50232u & arg_1), 30u)]), vec3<bool>(any(select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(arg_1, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], var_0.x, global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(arg_1, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 30u)], false, true, var_0.x))), select(arg_0.a != arg_0.a, true, all(vec3<bool>(true, true, true))), all(vec3<bool>(global0.x, false, var_0.x))), vec3<bool>(_wgslsmith_div_f32(global1.a, 119f) > _wgslsmith_f_op_f32(arg_0.a + -909f), all(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 30u)], var_0.x, true)), true)), vec3<bool>(false, any(vec4<bool>(global2[_wgslsmith_index_u32(~37159u, 30u)], any(vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 30u)], global0.x, global2[_wgslsmith_index_u32(arg_1, 30u)])), arg_1 < arg_1, false)), select(global2[_wgslsmith_index_u32(arg_1, 30u)], _wgslsmith_f_op_f32(global1.a * arg_0.a) > global1.a, 1u > ~arg_1)), select(vec3<bool>(!var_0.x, true, all(select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(370u, 30u)], global2[_wgslsmith_index_u32(arg_1, 30u)], false), vec4<bool>(var_0.x, global0.x, var_0.x, true), vec4<bool>(true, true, global0.x, true)))), vec3<bool>(true, true, true), arg_1 == 1u));
    global0 = select(vec3<bool>(!((arg_1 < 7763u) && global0.x), _wgslsmith_div_i32(u_input.a, i32(-1i) * -19058i) != 2147483647i, any(!select(vec3<bool>(false, false, false), vec3<bool>(global0.x, false, var_0.x), true))), select(vec3<bool>(true, !all(vec3<bool>(true, var_0.x, global2[_wgslsmith_index_u32(1u, 30u)])), all(!vec3<bool>(false, true, var_0.x))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(50997u, 1u), 30u)], global2[_wgslsmith_index_u32(arg_1, 30u)], 4294967295u >= ~arg_1), !vec3<bool>(global0.x, func_3(vec2<f32>(arg_0.a, global1.a), 2147483647i).x, true)), !(0i >= (u_input.a ^ ~u_input.a)));
    var_0 = !(!select(vec2<bool>(var_0.x, true), !(!global0.zy), (global2[_wgslsmith_index_u32(arg_1, 30u)] && global2[_wgslsmith_index_u32(44215u, 30u)]) && !global2[_wgslsmith_index_u32(arg_1, 30u)]));
    global1 = arg_0;
    return !(!select(true, var_0.x, !global2[_wgslsmith_index_u32(arg_1 >> (arg_1 % 32u), 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(-685f);
    let var_0 = !(!(!select(select(vec3<bool>(true, true, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(15612u, 30u)], true), false), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 30u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 30u)], true, true)), func_1(Struct_2(1131f), 13199u))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(32628i, u_input.a, -27158i)), vec3<i32>(u_input.a, u_input.a, -33363i)) >> (_wgslsmith_mod_u32(~4294967295u, 1u) % 32u), -13822i, -(~(-39467i) ^ u_input.a)) ^ 1i;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(reverseBits(756u), 1u), ~abs(vec2<u32>(0u, 0u)), !func_3(vec2<f32>(-683f, global1.a), u_input.a)), vec2<u32>(0u, ~44775u)), _wgslsmith_clamp_vec2_u32(max(min(~vec2<u32>(30248u, 20141u), vec2<u32>(1u, 1u)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1310u, 0u), vec4<u32>(88556u, 11931u, 0u, 53882u)))), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(global1.a, global1.a)), 2552i)), vec2<u32>(1u, 63228u)));
    global2 = array<bool, 30>();
    let var_3 = abs(_wgslsmith_div_i32(46i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)), vec4<f32>(global1.a, 2243f, _wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(-global1.a)), vec4<i32>(-2147483647i | firstTrailingBit(countOneBits(u_input.a)), _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -10694i, 26089i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))), -1i), var_3, var_3), -2147483647i);
}

