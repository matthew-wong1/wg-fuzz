struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(525f, 1687f, -938f, 1502f)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-112f, 1328f, -1000f, 1402f)), Struct_1(vec2<i32>(-40311i, i32(-2147483648)), vec4<f32>(1445f, -355f, -697f, 639f)), Struct_1(vec2<i32>(36047i, 19164i), vec4<f32>(787f, 410f, -415f, -434f)), Struct_1(vec2<i32>(-30292i, 2147483647i), vec4<f32>(1561f, -744f, 940f, 587f)), Struct_1(vec2<i32>(-30883i, -3384i), vec4<f32>(451f, 858f, -256f, -245f)), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(321f, 1000f, -657f, -1400f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(206f, -422f, -724f, 2304f)), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<f32>(1676f, 504f, 189f, 977f)), Struct_1(vec2<i32>(-39093i, i32(-2147483648)), vec4<f32>(-977f, -680f, 199f, -786f)), Struct_1(vec2<i32>(0i, -1i), vec4<f32>(-1569f, 284f, -1000f, -111f)), Struct_1(vec2<i32>(31913i, 6431i), vec4<f32>(606f, 977f, 1221f, 2491f)), Struct_1(vec2<i32>(-1i, -19119i), vec4<f32>(-1118f, 210f, 425f, 1000f)), Struct_1(vec2<i32>(-5456i, -1i), vec4<f32>(274f, -1000f, 267f, 1226f)), Struct_1(vec2<i32>(-25172i, -1i), vec4<f32>(268f, -1965f, 1302f, 1458f)));

var<private> global1: u32 = 87326u;

var<private> global2: array<bool, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    global1 = ~(~u_input.a);
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(min(arg_2.x, 1094f));
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    return _wgslsmith_clamp_i32(arg_1.b.a.x, -arg_1.b.a.x, arg_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_0.c.b.b.x));
    var var_1 = select(!(!(!select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 27u)], true), vec4<bool>(global2[_wgslsmith_index_u32(54998u, 27u)], global2[_wgslsmith_index_u32(arg_0.c.c.x, 27u)], false, global2[_wgslsmith_index_u32(61619u, 27u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], false, true, false)))), !(!vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(75824u, u_input.a, 0u), vec3<u32>(0u, 0u, u_input.b)), 27u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4311u, 25120u), vec2<u32>(arg_0.c.c.x, 7534u)), 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)])), vec4<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], true, true))), !(!(-2623f != arg_0.c.a)), true, true));
    var var_2 = arg_0.c;
    var var_3 = var_1.zwy;
    let var_4 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), -_wgslsmith_div_i32(-1i, arg_0.c.b.a.x)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(1i, 15231i))), 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, var_2.b.a.x, 20216i, 2147483647i), vec4<i32>(13070i, arg_1, -2147483647i, 1i)), firstTrailingBit(vec4<i32>(18392i, u_input.e, arg_0.a.a.x, var_2.b.a.x))), countOneBits(-vec4<i32>(var_2.b.a.x, -21025i, 63325i, 0i)), firstLeadingBit(vec4<i32>(var_2.b.a.x, 2516i, var_2.b.a.x, 33042i))), firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(-53129i, 2147483647i, 2147483647i, 1i), vec4<i32>(1i, var_2.b.a.x, 0i, arg_0.c.b.a.x)))), select(i32(-1i) * -10048i, func_2(-u_input.d ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-31382i, 10135i, arg_1), vec3<i32>(var_2.b.a.x, 1i, arg_0.b.a.x)), arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d, 976f, 1292f, -1365f))))), any(vec2<bool>(true, true)) | var_1.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.b.b.x, var_2.b.b.x)))))), var_0);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    return 60602u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 15u)], Struct_1(vec2<i32>(u_input.e, u_input.d.x), vec4<f32>(-120f, 190f, 936f, -675f)), Struct_2(650f, Struct_1(u_input.d.yx, vec4<f32>(-100f, 103f, -720f, -1042f)), vec2<u32>(u_input.b, 10810u)), 101f), 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1111f))), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x, u_input.e, -37193i), -48169i) | u_input.d.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1183f, -747f, -1000f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-247f, 249f, 1000f, 824f), vec4<f32>(-1340f, -225f, -720f, -1761f), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 1183f, -706f, -1425f))))), ~(~(~(vec2<u32>(u_input.b, u_input.a) | vec2<u32>(25128u, u_input.b)))));
    var var_1 = var_0.c.x;
    global0 = array<Struct_1, 15>();
    let var_2 = global2[_wgslsmith_index_u32(0u, 27u)];
    var_1 = var_0.c.x;
    global1 = ~(~(~var_0.c.x));
    var var_3 = !vec3<bool>(!global2[_wgslsmith_index_u32(~43681u, 27u)], func_3(max(vec3<u32>(u_input.b, 5823u, u_input.b), vec3<u32>(57218u, 74674u, var_0.c.x)), Struct_3(var_0.b, Struct_1(vec2<i32>(var_0.b.a.x, var_0.b.a.x), var_0.b.b), var_0, 430f), -vec2<i32>(u_input.c, var_0.b.a.x), -401f) > min(0u, u_input.b), true);
    var var_4 = 1i;
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(-10073i, u_input.d.x, u_input.c, -4049i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.b.a.x, 44799i, 207i), vec4<i32>(1i, u_input.d.x, 70942i, var_0.b.a.x))), ~(vec4<i32>(u_input.d.x, u_input.d.x, 48134i, u_input.c) ^ vec4<i32>(var_0.b.a.x, -2147483647i, var_0.b.a.x, var_0.b.a.x)))), u_input.c);
}

