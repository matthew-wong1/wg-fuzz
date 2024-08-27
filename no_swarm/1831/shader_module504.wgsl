struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 27> = array<i32, 27>(2147483647i, 2147483647i, 57249i, i32(-2147483648), 3688i, 2147483647i, 26054i, -204i, -32666i, -1i, -18829i, -33975i, 9054i, -1i, 27505i, 56305i, -1i, 2147483647i, 2147483647i, -53766i, -2506i, 44887i, -11855i, i32(-2147483648), -25980i, -84088i, 19403i);

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<u32>, 9>;

var<private> global4: array<bool, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    global4 = array<bool, 5>();
    var var_0 = ~(~select(arg_1.c, ~(~35251u), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-278f - global0.x))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(global0.x))))));
    let var_2 = arg_1.d.yx;
    let var_3 = arg_1;
    return arg_1.c;
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_1(arg_0, vec3<i32>(7990i, -1i ^ _wgslsmith_add_i32(u_input.a, ~(-21599i)), -(~countOneBits(global1[_wgslsmith_index_u32(50968u, 27u)]))), ~_wgslsmith_clamp_u32(0u, ~(u_input.b.x << (u_input.b.x % 32u)), func_1(Struct_1(vec4<bool>(arg_0.x, global4[_wgslsmith_index_u32(1u, 5u)], true, global4[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<i32>(42921i, 6568i, 0i), u_input.b.x, vec3<i32>(-11461i, u_input.a, 46007i)), Struct_1(vec4<bool>(false, arg_0.x, false, false), vec3<i32>(0i, -31188i, 0i), 54812u, vec3<i32>(u_input.a, -1i, 43478i)), global1[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 27u)])), vec3<i32>(countOneBits(~global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), ~u_input.a, 1i));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-183f, -956f)) - _wgslsmith_f_op_f32(f32(-1f) * -222f)), -1000f, arg_0.x)) + global0.x)));
    var var_2 = 176f;
    global1 = array<i32, 27>();
    let var_3 = Struct_1(arg_0, var_0.b, ~abs(~var_0.c), var_0.b);
    return vec3<i32>(-_wgslsmith_mod_i32(var_0.d.x, reverseBits(reverseBits(global1[_wgslsmith_index_u32(1u, 27u)]))), global1[_wgslsmith_index_u32(~(~u_input.b.x), 27u)], min(i32(-1i) * -42845i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(6914i, var_0.d.x, global1[_wgslsmith_index_u32(var_0.c, 27u)], var_3.d.x), vec4<i32>(-38674i, var_3.d.x, u_input.a, 14981i), global4[_wgslsmith_index_u32(u_input.b.x, 5u)]) << (abs(vec4<u32>(4294967295u, var_0.c, var_0.c, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(0i, 16089i, var_3.b.x | global1[_wgslsmith_index_u32(4294967295u, 27u)], var_0.d.x))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(global0.x));
    var var_1 = Struct_1(select(vec4<bool>(true, 8224u < u_input.b.x, false, all(!vec2<bool>(arg_0, false))), !vec4<bool>(arg_0, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], global4[_wgslsmith_index_u32(u_input.b.x, 5u)])), global1[_wgslsmith_index_u32(0u, 27u)] < u_input.a, global2.x | false), all(!vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(arg_1, 5u)], false)) & global4[_wgslsmith_index_u32(u_input.b.x, 5u)]), _wgslsmith_sub_vec3_i32(-firstTrailingBit(func_3(vec4<bool>(false, arg_2, global4[_wgslsmith_index_u32(arg_1, 5u)], global4[_wgslsmith_index_u32(arg_1, 5u)]))), vec3<i32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(49380u, 27u)], _wgslsmith_mod_i32(u_input.a, -1i) | global1[_wgslsmith_index_u32(59660u, 27u)])), 0u, countOneBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, 7732i), vec3<i32>(u_input.a, 36409i, 0i))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(arg_1, arg_1, 4294967295u))) % vec3<u32>(32u)));
    let var_2 = select(~(-var_1.b.x), var_1.b.x, arg_0);
    var var_3 = global2.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(global0.x + global0.x), -486f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1858f, global0.x, -268f, global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(-939f + 159f), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(1633f, 681f), _wgslsmith_f_op_f32(-global0.x)))));
    return Struct_1(var_1.a, vec3<i32>(-58756i, 4571i, -2147483647i), 4294967295u, firstTrailingBit(var_1.d | ~select(vec3<i32>(u_input.a, 2147483647i, global1[_wgslsmith_index_u32(24860u, 27u)]), var_1.d, var_1.a.wwy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(1359u, ~func_1(Struct_1(vec4<bool>(false, true, false, global2.x), vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), 0u, vec3<i32>(-1i, u_input.a, u_input.a)), Struct_1(vec4<bool>(global4[_wgslsmith_index_u32(21707u, 5u)], false, false, global4[_wgslsmith_index_u32(6456u, 5u)]), vec3<i32>(-84898i, 1i, global1[_wgslsmith_index_u32(0u, 27u)]), 27369u, vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 5644i, global1[_wgslsmith_index_u32(1u, 27u)])), 13566i), u_input.b.x));
    let var_1 = func_2(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1438f, global0.x)) <= -150f), _wgslsmith_dot_vec2_u32(u_input.b, var_0.zz), true);
    let var_2 = func_2(var_1.a.x, var_1.c, all(select(!select(var_1.a.zzz, var_1.a.zzw, true), !vec3<bool>(false, global2.x, false), var_1.a.x)));
    global3 = array<vec4<u32>, 9>();
    let var_3 = func_2(true, var_0.x, global2.x);
    global3 = array<vec4<u32>, 9>();
    var var_4 = u_input.b;
    let var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(70841u, u_input.b.x, 4294967295u, 24467u) >> (vec4<u32>(60562u, 24345u, 0u, var_2.c) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(~var_1.c, 9u)]), global3[_wgslsmith_index_u32(1u, 9u)]), vec2<f32>(1f, 120f));
}

