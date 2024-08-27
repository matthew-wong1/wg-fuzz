struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 30736u;

var<private> global2: bool;

var<private> global3: array<f32, 18> = array<f32, 18>(-1516f, 760f, 137f, -818f, 734f, -502f, -1034f, -501f, 995f, 530f, -741f, -1000f, -273f, 455f, -1595f, 218f, -300f, -572f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = select(!vec2<bool>(!any(arg_1.a.yyy), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) < 4294967295u), select(arg_0.a.yx, arg_0.a.wy, !(!(!vec2<bool>(true, arg_0.a.x)))), !(!arg_1.a.zz));
    var var_1 = vec2<bool>(select(~(~arg_1.c.a.x), 2147483647i | arg_0.b.x, arg_1.a.x) < -2147483647i, var_0.x);
    global2 = arg_0.a.x;
    global3 = array<f32, 18>();
    global1 = ~(~4294967295u);
    return reverseBits(arg_0.b.x);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_3(arg_1.c);
    global2 = arg_1.a.x;
    let var_1 = arg_1.b.x;
    let var_2 = Struct_3(Struct_1(-global0.a.a, var_0.a.b));
    var var_3 = ~(-4279i) == _wgslsmith_mult_i32(select(-28128i, func_3(Struct_2(arg_1.a, vec3<i32>(-4807i, var_1, var_2.a.a.x), Struct_1(var_0.a.a, vec4<u32>(69393u, 87656u, 12551u, 4294967295u)), 589f), Struct_2(arg_1.a, vec3<i32>(u_input.b.x, 18930i, var_2.a.a.x), var_0.a, -747f)), arg_1.a.x), 18131i);
    return vec3<bool>(((_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)] * arg_1.d) <= -1654f) == any(vec4<bool>(false, false, true, arg_1.a.x))) && (all(!arg_1.a.wx) || true), arg_1.a.x, all(!select(select(vec2<bool>(false, arg_1.a.x), arg_1.a.zz, true), !vec2<bool>(arg_0, true), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global3 = array<f32, 18>();
    var var_0 = 1i;
    global0 = Struct_3(global0.a);
    global0 = Struct_3(global0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-335f)))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a.b.x, u_input.a.x), 18u)]));
    return Struct_1(~vec4<i32>(select(~arg_2, arg_0.x, true && arg_1), arg_2, ~(~(-35863i)), 49006i), ~_wgslsmith_clamp_vec4_u32(reverseBits(max(vec4<u32>(1110u, 1u, 0u, 4294967295u), global0.a.b)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.b.x, 1u, global0.a.b.x, global0.a.b.x), global0.a.b)), (global0.a.b & global0.a.b) | countOneBits(vec4<u32>(63898u, u_input.a.x, 1u, 17462u))));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4(vec3<i32>(-1525i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -30031i, -55566i), vec3<i32>(-2147483647i, u_input.b.x, -1i)), abs(_wgslsmith_sub_i32(global0.a.a.x, u_input.b.x)), i32(-1i) * -1i) ^ global0.a.a.yxx, all(func_2(!all(vec3<bool>(false, true, false)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(u_input.b.x, u_input.b.x, -25063i), global0.a, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 18u)])))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3240f, global3[_wgslsmith_index_u32(15575u, 18u)], 534f, 466f)))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.a.b.x, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0, 18u)] - -173f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(20688u, 0u), u_input.a.yz), 18u)]), 698f)));
    var var_2 = func_2(func_2(false, Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), -(vec3<i32>(u_input.b.x, global0.a.a.x, -2147483647i) | vec3<i32>(global0.a.a.x, 28297i, -45548i)), func_4(countOneBits(var_0.a.yww), true, 2147483647i), _wgslsmith_f_op_f32(floor(var_1.x)))).x, Struct_2(vec4<bool>(true, false != any(vec4<bool>(true, true, true, true)), 10611u <= arg_0, true), max(vec3<i32>(0i, ~2147483647i, ~global0.a.a.x), global0.a.a.zzy), func_4(var_0.a.yxx, _wgslsmith_add_u32(6727u, arg_0) != 20033u, 0i), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b.x, 18u)] * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), _wgslsmith_f_op_f32(f32(-1f) * -588f))))));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-countOneBits(1i), var_0.a.x), -(~_wgslsmith_mod_i32(u_input.b.x, 11377i) ^ u_input.b.x), global0.a.a.x);
    let var_4 = Struct_2(select(select(!select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), true), vec4<bool>(select(false, var_2.x, var_2.x), var_2.x | true, true, any(vec2<bool>(var_2.x, var_2.x))), !vec4<bool>(true, true, false, var_2.x)), select(!select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, false)), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x), var_2.x || var_2.x)), !vec4<bool>(false, !var_2.x, var_2.x, var_2.x)), vec3<i32>(u_input.b.x, var_3 | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -25890i, var_3, global0.a.a.x), var_0.a), select(-_wgslsmith_add_i32(global0.a.a.x, var_0.a.x), func_3(Struct_2(vec4<bool>(false, var_2.x, var_2.x, var_2.x), u_input.b, global0.a, 1666f), Struct_2(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec3<i32>(global0.a.a.x, -10202i, -61828i), global0.a, 1522f)), (var_2.x | var_2.x) || !var_2.x)), Struct_1(var_0.a | -var_0.a, ~(~global0.a.b)), global3[_wgslsmith_index_u32(~arg_0, 18u)]);
    return -1547f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1325f, -483f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.a.b.x, 18u)] * -1093f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), global3[_wgslsmith_index_u32(~1u, 18u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0.a.b.x, 18u)], _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1243f - -1301f) + _wgslsmith_f_op_f32(f32(-1f) * -521f)))));
    global1 = _wgslsmith_sub_u32(93431u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.a.b.x, 1u), 56906u), ~global0.a.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1968f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(1u, 18u)], var_1.x, true)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(13441u, 18u)])) * _wgslsmith_f_op_f32(func_1(56425u))), _wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)] + global3[_wgslsmith_index_u32(global0.a.b.x, 18u)])))));
    let var_3 = Struct_2(select(select(select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(false, true, false, var_0.x), var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_1.x <= global3[_wgslsmith_index_u32(1u, 18u)], all(vec2<bool>(true, true)), var_0.x, all(vec2<bool>(false, var_0.x)))), vec4<bool>(var_0.x, true, !select(true, false, true), !(-1088f <= global3[_wgslsmith_index_u32(global0.a.b.x, 18u)])), true), max(vec3<i32>(u_input.b.x, ~942i, -2147483647i << (~u_input.a.x % 32u)), vec3<i32>(~_wgslsmith_mult_i32(global0.a.a.x, -25600i), global0.a.a.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x) | 2147483647i)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstLeadingBit(46191u), 18u)]))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 18u)])), !any(vec4<bool>(var_0.x, false, var_0.x, var_0.x))))));
    let var_4 = var_3.c.a.x;
    var_0 = select(select(!select(!vec4<bool>(var_0.x, true, var_3.a.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_3.a.x, var_0.x, var_3.a.x, var_0.x)), vec4<bool>(var_0.x, min(var_3.b.x, var_3.c.a.x) < ~(-49206i), !var_0.x, false), (var_0.x && true) && (_wgslsmith_div_i32(var_4, -28983i) != _wgslsmith_clamp_i32(var_4, -1457i, 1i))), var_3.a, true);
    let var_5 = global0.a;
    var var_6 = firstTrailingBit(firstLeadingBit(vec2<u32>(reverseBits(var_3.c.b.x), _wgslsmith_dot_vec2_u32(global0.a.b.xw, vec2<u32>(var_5.b.x, 0u))) >> (vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 24940u, 1u), _wgslsmith_mod_u32(4294967295u, 43945u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.xwx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * var_3.d), var_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) - var_3.d), -608f));
}

