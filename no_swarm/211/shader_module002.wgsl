struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-1438f, 1880f, 603f), false, 4294967295u, true), Struct_1(vec3<f32>(1054f, -232f, 1171f), true, 16776u, false), Struct_1(vec3<f32>(1618f, 1178f, 1627f), true, 0u, false), Struct_1(vec3<f32>(-1159f, -277f, 654f), true, 45249u, true), Struct_1(vec3<f32>(-861f, 2017f, -563f), false, 1u, true), Struct_1(vec3<f32>(1000f, -729f, -1496f), true, 4294967295u, true), Struct_1(vec3<f32>(361f, -247f, 646f), true, 9081u, false), Struct_1(vec3<f32>(166f, 1281f, -1195f), true, 4294967295u, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    global1 = array<vec4<i32>, 8>();
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 0u, 36511u, 79911u) | ~vec4<u32>(0u, 0u, 4294967295u, global0.c), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.c, global0.c, global0.c), vec4<u32>(0u, 28967u, 6891u, u_input.b)))), global0.c);
    let var_1 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))), global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - 1170f)), u_input.b > var_0.x, countOneBits(1u), true);
    return (abs(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, global0.c)), ~vec2<u32>(4294967295u, 16562u))) >> (~(~min(vec2<u32>(84603u, global0.c), vec2<u32>(12019u, 38338u))) % vec2<u32>(32u))) | vec2<u32>(~var_0.x, ~0u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    global1 = array<vec4<i32>, 8>();
    let var_0 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-878f, -455f)), _wgslsmith_f_op_f32(global0.a.x - -838f))) + global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, -1688f), _wgslsmith_div_f32(global0.a.x, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -718f)))));
    let var_1 = u_input.a | min(arg_0.x, 1i);
    return vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(arg_2.wwx, vec3<u32>(global0.c, 25332u, arg_2.x), ~vec3<u32>(26025u, global0.c, arg_2.x))), _wgslsmith_sub_vec3_u32(~firstLeadingBit(arg_2.zxy), select(vec3<u32>(10274u, 59141u, arg_2.x), arg_2.zzz, !vec3<bool>(global0.b, true, global0.b)))), u_input.b, _wgslsmith_add_u32(~arg_1.x, min(1u, 0u)), 24559u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = ~_wgslsmith_sub_u32(arg_1.c, global0.c);
    let var_1 = ~func_4(vec4<i32>(i32(-1i) * -9528i, u_input.a, _wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(arg_1.c, 8u)], vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))), func_3(), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c, 38006u, 58832u, u_input.b), min(vec4<u32>(arg_1.c, 4294967295u, var_0, 13459u), vec4<u32>(42727u, global0.c, u_input.b, var_0)))) | vec4<u32>(countOneBits(1u), global0.c, 1u, ~4294967295u);
    global2 = array<Struct_1, 8>();
    var var_2 = ~(~(~(var_1.zz | var_1.yy))) | vec2<u32>(func_4(_wgslsmith_clamp_vec4_i32(~global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.c, global0.c), 8u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 47351i, u_input.a, -1i), global1[_wgslsmith_index_u32(u_input.b, 8u)], vec4<i32>(u_input.a, -2147483647i, 30172i, 2147483647i))), var_1.yx, abs(_wgslsmith_div_vec4_u32(var_1, vec4<u32>(79858u, arg_1.c, u_input.b, 118678u)))).x, ~974u);
    var var_3 = false || all(select(select(select(vec2<bool>(arg_1.d, false), vec2<bool>(true, true), vec2<bool>(global0.b, global0.b)), vec2<bool>(true, false), false & global0.d), select(select(vec2<bool>(arg_1.d, false), vec2<bool>(arg_0, arg_0), arg_1.b), select(vec2<bool>(global0.d, arg_1.d), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(arg_1.b, arg_1.d)), !(!vec2<bool>(false, global0.b))));
    return _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(var_2.x, 8u)], vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.a, u_input.a)), u_input.a, ~u_input.a, max(u_input.a, u_input.a) ^ max(1i, u_input.a))) & select(vec4<i32>(~u_input.a, u_input.a, _wgslsmith_sub_i32(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -3495i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(-1i)), vec4<i32>(~_wgslsmith_clamp_i32(u_input.a, -27426i, u_input.a), 9311i, 2147483647i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 32734i), vec3<i32>(u_input.a, 76779i, u_input.a)))), select(!(!vec4<bool>(global0.d, arg_0, arg_0, true)), vec4<bool>(arg_1.d, all(vec4<bool>(global0.b, arg_1.d, true, arg_1.b)), arg_1.d, global0.a.x < global0.a.x), !select(vec4<bool>(arg_0, true, arg_1.b, true), vec4<bool>(global0.d, false, false, arg_1.d), vec4<bool>(global0.b, arg_1.b, false, arg_0))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<vec4<i32>, 8>();
    var var_0 = (-(~func_2(true, Struct_1(global0.a, global0.d, global0.c, global0.b))) & min(min(vec4<i32>(arg_1.x, 45302i, arg_1.x, 0i) | arg_1, vec4<i32>(1i, 5176i, 23928i, -1i)), _wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(arg_1.x, arg_2, 0i, 12078i)))) ^ vec4<i32>(func_2(any(vec3<bool>(arg_3.d, true, global0.b)), global2[_wgslsmith_index_u32(~arg_3.c, 8u)]).x, -1i, arg_1.x, -32170i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_3.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2091f, arg_3.a.x, global0.a.x) - _wgslsmith_f_op_vec3_f32(-global0.a))))), !any(vec4<bool>(arg_3.b, true, arg_3.d, true)), u_input.b, any(vec4<bool>(!(-12190i >= var_0.x), !arg_3.b, ~arg_3.c > ~16620u, true)));
    global2 = array<Struct_1, 8>();
    var var_2 = _wgslsmith_f_op_f32(-global0.a.x);
    return select(select(vec4<bool>(global0.d, any(vec2<bool>(false, true)), false, true), select(vec4<bool>(all(vec2<bool>(true, false)), !var_1.d, -1744f > var_1.a.x, var_1.b), select(!vec4<bool>(var_1.d, global0.b, arg_3.b, true), !vec4<bool>(false, true, arg_3.d, true), all(vec4<bool>(global0.b, true, true, true))), var_1.d), vec4<bool>(arg_3.b & true, true, true, false)), vec4<bool>(func_3().x < firstLeadingBit(arg_3.c), all(vec2<bool>(true, global0.b)), var_1.b, true | !any(vec4<bool>(arg_3.d, var_1.d, arg_3.d, false))), arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!(!vec4<bool>(global0.d, true, false, true)), !vec4<bool>(u_input.a == 0i, !global0.b, global0.b, true), select(select(!vec4<bool>(global0.d, global0.b, false, false), select(vec4<bool>(global0.b, global0.b, global0.d, false), vec4<bool>(global0.d, global0.b, true, global0.d), vec4<bool>(false, global0.d, global0.b, false)), func_1(vec4<f32>(-1061f, global0.a.x, -189f, -658f), vec4<i32>(-7520i, u_input.a, u_input.a, -7964i), 0i, global2[_wgslsmith_index_u32(global0.c, 8u)])), !vec4<bool>(false, false, global0.b, true), true || global0.d)));
    var var_1 = 0i;
    let var_2 = func_4(_wgslsmith_div_vec4_i32(~global1[_wgslsmith_index_u32(~global0.c, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(81509u, u_input.b), vec2<u32>(27952u, 1u)), u_input.b), 8u)]), vec2<u32>(global0.c, abs(479u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c, _wgslsmith_mult_u32(global0.c, 593u), 22845u, firstTrailingBit(u_input.b)), vec4<u32>(0u, 98809u, min(global0.c, 0u), func_4(vec4<i32>(43955i, u_input.a, u_input.a, -2147483647i), vec2<u32>(u_input.b, u_input.b), vec4<u32>(624u, u_input.b, u_input.b, 0u)).x)));
    var_1 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(func_2(!(global0.b & true), global2[_wgslsmith_index_u32(var_2.x | 1u, 8u)]).x, -(~2147483647i)));
    let var_3 = !func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, 1000f, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, 348f, global0.a.x, global0.a.x), vec4<bool>(false, true, true, global0.b)))))), -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~36215u, 1u), 8u)], abs(u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(global0.a)), global0.a)), any(!vec4<bool>(false, true, false, global0.d)), 0u, global0.d)).xx;
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(1196f, 893f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), -501f), vec4<f32>(1592f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1236f))), -206f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(sign(global0.a.x)))))));
    var var_5 = select(!func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1691f, -238f, global0.a.x, 433f) * vec4<f32>(-2028f, var_4.x, 561f, var_4.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(351f, global0.a.x, -563f, var_4.x), vec4<f32>(var_4.x, -474f, global0.a.x, var_4.x)))), global1[_wgslsmith_index_u32(u_input.b, 8u)], 1i, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, -493f, 1223f)), false, var_2.x, func_1(vec4<f32>(global0.a.x, var_4.x, global0.a.x, -1241f), global1[_wgslsmith_index_u32(15550u, 8u)], 2147483647i, Struct_1(vec3<f32>(var_4.x, global0.a.x, global0.a.x), true, 22490u, global0.b)).x)), !func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x) - vec4<f32>(global0.a.x, -607f, 1230f, var_4.x)), _wgslsmith_sub_vec4_i32(~global1[_wgslsmith_index_u32(u_input.b, 8u)], -global1[_wgslsmith_index_u32(var_2.x, 8u)]), -3806i, Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), var_4.x <= -987f, _wgslsmith_sub_u32(u_input.b, global0.c), true)), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~global0.c), var_2, ~(~(~u_input.b)));
}

