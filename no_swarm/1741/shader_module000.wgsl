struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 14>;

var<private> global2: array<i32, 10>;

var<private> global3: array<bool, 27>;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    global4 = ~((vec2<u32>(4294967295u, ~u_input.a) | (vec2<u32>(4294967295u, global4.x) | (vec2<u32>(1u, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(24930u, 0u) & vec2<u32>(u_input.a, 71099u), countOneBits(vec2<u32>(u_input.a, global4.x))), max(vec2<u32>(global4.x, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(4294967295u, 51046u) >> (vec2<u32>(global4.x, global4.x) % vec2<u32>(32u))), ~firstTrailingBit(vec2<u32>(1u, global4.x))));
    global1 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(min(~1u, firstTrailingBit(19309u)), 14u)], 1000f));
    global2 = array<i32, 10>();
    var var_1 = Struct_1(u_input.a, _wgslsmith_div_u32(select(global4.x, firstTrailingBit(u_input.a), global4.x <= u_input.a) >> (u_input.a % 32u), ~u_input.a), ~(~vec2<i32>(global2[_wgslsmith_index_u32(61187u, 10u)] | global2[_wgslsmith_index_u32(1894u, 10u)], global2[_wgslsmith_index_u32(20994u, 10u)] & global2[_wgslsmith_index_u32(58189u, 10u)])), countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(global4.x, 18434u, 1u, u_input.a)), vec4<u32>(global4.x, 55404u, 1357u, 4294967295u)), ~(vec4<u32>(54457u, 1u, global4.x, 1290u) | vec4<u32>(0u, 23132u, u_input.a, global4.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global4.x, 2148u, 7430u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)))));
    return (~((global4.x | 1089u) | select(var_1.b, 1u, global3[_wgslsmith_index_u32(u_input.a, 27u)])) << (global4.x % 32u)) << (((~global4.x ^ 1u) << (reverseBits(firstLeadingBit(~0u)) % 32u)) % 32u);
}

fn func_2() -> vec2<u32> {
    global3 = array<bool, 27>();
    return vec2<u32>(~_wgslsmith_add_u32(~_wgslsmith_mult_u32(72706u, u_input.a), _wgslsmith_mult_u32(func_3(global3[_wgslsmith_index_u32(u_input.a, 27u)]), u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u ^ u_input.a, abs(u_input.a)), vec2<u32>(~u_input.a, 1u)) & ~global4.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec4<u32> {
    global4 = vec2<u32>(arg_0.x >> (68936u % 32u), 54989u) ^ func_2();
    global0 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(~115299u, _wgslsmith_dot_vec3_u32(~(arg_0 << (vec3<u32>(arg_0.x, 143871u, global4.x) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.a.d.x, u_input.a, 1841u), vec3<u32>(arg_1.b, 4294967295u, arg_1.b)))))), 27u)];
    global4 = _wgslsmith_add_vec2_u32(arg_1.a.a.d.zz, ~vec2<u32>(u_input.a, u_input.a));
    global3 = array<bool, 27>();
    var var_0 = vec3<f32>(_wgslsmith_div_f32(988f, _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4.x, 14u)]))), global3[_wgslsmith_index_u32(~651u, 27u)]))), arg_1.d.x, -412f);
    return vec4<u32>(select(reverseBits(4294967295u), (select(82301u, 4294967295u, global3[_wgslsmith_index_u32(arg_0.x, 27u)]) << (abs(34544u) % 32u)) | u_input.a, (~u_input.a >= ~u_input.a) & global3[_wgslsmith_index_u32(~min(u_input.a, 4294967295u), 27u)]), arg_1.a.a.b, _wgslsmith_div_u32(61605u, 47445u) << (arg_1.a.a.b % 32u), abs(_wgslsmith_add_u32(~(~arg_1.a.a.d.x), 4294967295u & global4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    let var_0 = Struct_2(~vec2<i32>(-1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global4.x, u_input.a)) % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, global2[_wgslsmith_index_u32(95164u, 10u)]), global2[_wgslsmith_index_u32(22969u, 10u)])), Struct_1(max(global4.x, ~u_input.a), max(~_wgslsmith_div_u32(u_input.a, 4294967295u), global4.x), -_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(global4.x, 10u)]), ~vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], -36632i)), _wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, global4.x, 1u, 0u), vec4<u32>(92761u, u_input.a, global4.x, 1u)), ~vec4<u32>(global4.x, global4.x, u_input.a, u_input.a), !vec4<bool>(global3[_wgslsmith_index_u32(37749u, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], true, global3[_wgslsmith_index_u32(u_input.a, 27u)])), ~func_1(vec3<u32>(4294967295u, u_input.a, 4294967295u), Struct_4(Struct_3(Struct_1(1u, global4.x, vec2<i32>(global2[_wgslsmith_index_u32(global4.x, 10u)], -21915i), vec4<u32>(global4.x, 0u, 11420u, u_input.a))), u_input.a, 0i, vec3<f32>(-235f, 713f, global1[_wgslsmith_index_u32(u_input.a, 14u)])), vec3<f32>(-820f, global1[_wgslsmith_index_u32(197598u, 14u)], 405f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~4294967295u, 14u)], global1[_wgslsmith_index_u32(select(global4.x, global4.x, false), 14u)], -1084f) + vec3<f32>(_wgslsmith_f_op_f32(max(-477f, global1[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_f_op_f32(129f + global1[_wgslsmith_index_u32(37304u, 14u)]), global1[_wgslsmith_index_u32(abs(8660u), 14u)]))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(5380u, 2904u, 29303u, 11627u), max(vec4<u32>(global4.x, 76351u, global4.x, 9913u), vec4<u32>(global4.x, global4.x, u_input.a, 0u))) << (func_1(~vec3<u32>(global4.x, global4.x, u_input.a), Struct_4(Struct_3(Struct_1(4294967295u, u_input.a, vec2<i32>(-1i, 14573i), vec4<u32>(4294967295u, global4.x, global4.x, 4294967295u))), global4.x, global2[_wgslsmith_index_u32(22962u, 10u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], -307f, global1[_wgslsmith_index_u32(21551u, 14u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)])))).x % 32u), _wgslsmith_mult_u32(~(~global4.x), 1u), min(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, 1i)), firstTrailingBit(-vec2<i32>(global2[_wgslsmith_index_u32(62170u, 10u)], 62288i))), ~vec4<u32>(51862u, 0u, global4.x, ~u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -753f))))));
    global4 = vec2<u32>(var_0.b.b, 95639u);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.c, !vec3<bool>(global3[_wgslsmith_index_u32(countOneBits(var_0.b.b) >> (global4.x % 32u), 27u)], !(global1[_wgslsmith_index_u32(0u, 14u)] != global1[_wgslsmith_index_u32(81911u, 14u)]), !all(vec2<bool>(global3[_wgslsmith_index_u32(29979u, 27u)], true)))));
    global4 = var_0.d.d.ww;
    let var_2 = select(!vec4<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(var_0.b.b, 27u)])), global3[_wgslsmith_index_u32(4294967295u, 27u)], !all(vec2<bool>(false, global3[_wgslsmith_index_u32(28968u, 27u)])), false), select(vec4<bool>(true, true, true, true), select(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 27u)], false, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(5164u, 27u)])), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(2909u, 27u)], true, false))), vec4<bool>(global4.x >= 64116u, true, !(global3[_wgslsmith_index_u32(1u, 27u)] == false), global3[_wgslsmith_index_u32(~4294967295u >> (min(0u, global4.x) % 32u), 27u)])), select(select(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 27u)], true), vec4<bool>(834f >= var_0.e, true, var_0.c.x <= -749f, true), !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, global4.x), 27u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(func_2().x, 27u)], global3[_wgslsmith_index_u32(~global4.x, 27u)], true, global3[_wgslsmith_index_u32(~u_input.a, 27u)]), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 27u)], true, true)), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.b.b, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(68449u, 27u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], true), true)), select(select(select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(44152u, 27u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 27u)], false), vec4<bool>(global3[_wgslsmith_index_u32(15417u, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], global3[_wgslsmith_index_u32(global4.x, 27u)], true)), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 27u)], true, false), !vec4<bool>(global3[_wgslsmith_index_u32(6819u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], true, false)), select(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 27u)], false, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(var_0.b.b, 27u)]), select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(11824u, 27u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(global4.x, 27u)], false, false), false), any(vec2<bool>(true, false))), !vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(1u, 27u)]))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.xy))), _wgslsmith_f_op_vec2_f32(trunc(var_0.c.yz))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(global4.x, 14u)], -1305f), var_0.c.zz)), vec2<f32>(var_0.e, global1[_wgslsmith_index_u32(~7457u, 14u)]))), var_1.xy, vec2<bool>(global3[_wgslsmith_index_u32(abs(47577u), 27u)], !(var_2.x & var_2.x))));
    var var_4 = Struct_1(u_input.a, abs(_wgslsmith_mult_u32(1u, u_input.a)), max(vec2<i32>(-8261i | firstTrailingBit(-14951i), var_0.a.x), _wgslsmith_div_vec2_i32(~(var_0.b.c & var_0.d.c), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.b.c.x), var_0.b.c))), ~firstLeadingBit(select(var_0.b.d, _wgslsmith_clamp_vec4_u32(var_0.d.d, vec4<u32>(0u, var_0.d.d.x, var_0.b.a, 1u), vec4<u32>(var_0.b.d.x, 1u, var_0.b.d.x, u_input.a)), any(vec3<bool>(var_2.x, var_2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(reverseBits(var_0.b.b << (1u % 32u)), 10u)], var_0.b.c.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a, 10u)], var_0.d.c.x) << (13066u % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, var_0.e, var_0.c.x, 723f) - vec4<f32>(var_1.x, -1228f, var_3.x, 859f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, -603f, -1000f, var_0.c.x) * vec4<f32>(-720f, -3031f, -375f, var_0.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], -1000f, var_0.c.x, 648f)))))));
}

