struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(57847u, 0u, 4294967295u), vec3<u32>(14732u, 59542u, 46486u), vec3<u32>(0u, 36088u, 117573u), vec3<u32>(4294967295u, 0u, 86312u), vec3<u32>(1u, 0u, 0u), vec3<u32>(96626u, 0u, 1u), vec3<u32>(4294967295u, 13354u, 4294967295u), vec3<u32>(1u, 0u, 11109u), vec3<u32>(4499u, 0u, 6694u), vec3<u32>(52948u, 1u, 4294967295u), vec3<u32>(15341u, 20866u, 12618u), vec3<u32>(5903u, 4294967295u, 73754u), vec3<u32>(0u, 4294967295u, 1155u), vec3<u32>(44730u, 0u, 29699u), vec3<u32>(44508u, 0u, 1u), vec3<u32>(28844u, 293u, 0u), vec3<u32>(4294967295u, 100100u, 30115u), vec3<u32>(4294967295u, 51740u, 4294967295u), vec3<u32>(1u, 1u, 71872u), vec3<u32>(1u, 29145u, 1u), vec3<u32>(0u, 0u, 50542u), vec3<u32>(0u, 7245u, 0u), vec3<u32>(3784u, 7158u, 12433u), vec3<u32>(0u, 10325u, 4294967295u), vec3<u32>(1u, 12684u, 4294967295u), vec3<u32>(22090u, 1u, 89315u), vec3<u32>(76772u, 12019u, 4294967295u), vec3<u32>(42853u, 4294967295u, 0u), vec3<u32>(73145u, 4294967295u, 0u));

var<private> global1: array<vec2<u32>, 31>;

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 19> = array<f32, 19>(735f, -492f, -393f, -705f, 1651f, 1000f, -884f, -308f, -164f, 136f, 475f, 1091f, -1000f, 623f, -962f, -761f, 841f, 103f, -597f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<vec3<u32>, 30>();
    let var_0 = vec4<bool>(select(!(!any(vec3<bool>(true, global2.x, global2.x))), all(vec2<bool>(true, !global2.x)), global2.x), !select(global2.x, global2.x, global2.x), true, false);
    global3 = array<f32, 19>();
    global2 = !select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(global2.x, var_0.x), var_0.xw), vec2<bool>(all(vec4<bool>(false, var_0.x, true, var_0.x)), !global2.x), vec2<bool>(false || var_0.x, false)), vec2<bool>(select(any(var_0.xy), true, global2.x), any(!vec3<bool>(global2.x, var_0.x, global2.x))));
    var var_1 = Struct_4(abs(_wgslsmith_mult_i32(0i, 24031i)), 1159f);
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_4(-2147483647i, _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -133f)))));
    var var_1 = 32308i;
    let var_2 = _wgslsmith_add_i32(var_0.a, u_input.a);
    var_1 = i32(-1i) * -(~var_0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 366f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(409f, _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 364f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-2936f, var_0.b), vec2<f32>(var_0.b, global3[_wgslsmith_index_u32(96290u, 19u)])))))));
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 19u)], 510f, global3[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<f32>(1000f, 361f, global3[_wgslsmith_index_u32(40002u, 19u)]))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], -523f, global3[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(arg_1, 19u)]))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1111f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(54107u, 19u)] + global3[_wgslsmith_index_u32(arg_1, 19u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(24796u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)])))), !(!vec3<bool>(global2.x, false, arg_2)))))), Struct_2(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(arg_2, false), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(513f, 497f, -603f)) + vec3<f32>(-624f, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(arg_1, 19u)]))), vec4<u32>(31632u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 21506u), _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c)), 12708u, ~_wgslsmith_sub_u32(u_input.c.x, arg_0)), Struct_1(!vec2<bool>(global2.x, arg_2), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), 19u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(67205u, 19u)], global3[_wgslsmith_index_u32(3928u, 19u)], global3[_wgslsmith_index_u32(arg_1, 19u)]))))), Struct_1(vec2<bool>(any(vec3<bool>(true, global2.x, arg_2)), false), _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(40879u, 19u)] - -1169f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-551f, global3[_wgslsmith_index_u32(arg_1, 19u)], global3[_wgslsmith_index_u32(arg_1, 19u)]), vec3<f32>(-1183f, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(u_input.c.x, 19u)])))), select(vec3<bool>(global2.x & true, false, true), !(!vec3<bool>(arg_2, true, global2.x)), global2.x)), global2.x, Struct_2(Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(global2.x, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(true, true), global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(56107u, 19u)], -2068f, global3[_wgslsmith_index_u32(arg_1, 19u)]), vec3<f32>(143f, global3[_wgslsmith_index_u32(arg_1, 19u)], 895f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(6407u, 19u)], 1984f, 794f) - vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 19u)], -1797f, global3[_wgslsmith_index_u32(arg_0, 19u)])))), vec4<u32>(u_input.b, _wgslsmith_add_u32(firstTrailingBit(17094u), ~40646u), ~0u, 0u), Struct_1(!select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, false), vec2<bool>(arg_2, arg_2)), 365f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], 1282f) * vec3<f32>(global3[_wgslsmith_index_u32(12799u, 19u)], 296f, 381f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(62236u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(52893u, 19u)])))), Struct_1(vec2<bool>(true, select(true, global2.x, arg_2)), global3[_wgslsmith_index_u32(99936u, 19u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2113f, global3[_wgslsmith_index_u32(arg_1, 19u)], global3[_wgslsmith_index_u32(u_input.c.x, 19u)]), vec3<f32>(-258f, 121f, -179f)))), !vec3<bool>(true, !global2.x, true)));
    global3 = array<f32, 19>();
    let var_1 = Struct_2(var_0.b.a, ~vec4<u32>(arg_0, 0u, 15493u >> (1u % 32u), ~(u_input.c.x & arg_1)), Struct_1(!select(var_0.b.e.zz, vec2<bool>(true, false), vec2<bool>(global2.x, false)), _wgslsmith_f_op_f32(sign(var_0.d.d.b)), var_0.a), var_0.b.d, var_0.d.e);
    let var_2 = countOneBits(-(~abs(abs(vec4<i32>(u_input.a, 2147483647i, -40373i, -1i)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(-var_1.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(~(~4294967295u), 19u)]))), -605f);
    return var_1.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = -192f;
    var var_1 = arg_0.a.c;
    var var_2 = u_input.b;
    let var_3 = arg_0.c.b;
    let var_4 = func_4(_wgslsmith_sub_u32(arg_1.b.b.x, arg_1.d.b.x) << (13874u % 32u), _wgslsmith_add_u32(func_2(true), max(0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b.x, 39648u, 4294967295u)), vec3<u32>(arg_1.d.b.x, u_input.c.x, arg_0.b.x) & vec3<u32>(u_input.c.x, 47635u, 46091u)))), u_input.b <= u_input.b);
    return _wgslsmith_f_op_f32(trunc(arg_0.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), global3[_wgslsmith_index_u32(~(u_input.c.x >> (u_input.b % 32u)), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec2<bool>(false, global2.x), -1917f, vec3<f32>(573f, global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 364f)), vec4<u32>(u_input.b, 0u, 4294967295u, 63638u), Struct_1(vec2<bool>(global2.x, global2.x), global3[_wgslsmith_index_u32(u_input.b, 19u)], vec3<f32>(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(1009u, 19u)])), Struct_1(vec2<bool>(global2.x, global2.x), -1582f, vec3<f32>(1203f, -341f, 1000f)), vec3<bool>(false, false, global2.x)), Struct_3(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 979f, -529f), Struct_2(Struct_1(vec2<bool>(true, global2.x), global3[_wgslsmith_index_u32(6883u, 19u)], vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], -471f, global3[_wgslsmith_index_u32(1u, 19u)])), vec4<u32>(31238u, u_input.b, u_input.b, 1u), Struct_1(vec2<bool>(true, false), 650f, vec3<f32>(-1000f, -2545f, global3[_wgslsmith_index_u32(7388u, 19u)])), Struct_1(vec2<bool>(global2.x, false), global3[_wgslsmith_index_u32(61098u, 19u)], vec3<f32>(-657f, global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(u_input.c.x, 19u)])), vec3<bool>(true, global2.x, false)), true, Struct_2(Struct_1(vec2<bool>(false, true), -107f, vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global3[_wgslsmith_index_u32(33092u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)])), vec4<u32>(u_input.b, 0u, u_input.c.x, 0u), Struct_1(vec2<bool>(global2.x, global2.x), -481f, vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global3[_wgslsmith_index_u32(4211u, 19u)], global3[_wgslsmith_index_u32(2470u, 19u)])), Struct_1(vec2<bool>(global2.x, false), -1091f, vec3<f32>(-406f, global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(u_input.c.x, 19u)])), vec3<bool>(true, false, global2.x))))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-144f, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)]) - vec3<f32>(global3[_wgslsmith_index_u32(31260u, 19u)], -362f, global3[_wgslsmith_index_u32(1u, 19u)]))))))), Struct_2(Struct_1(!vec2<bool>(global2.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.c.x, 19u)]))), vec3<f32>(global3[_wgslsmith_index_u32(~50164u, 19u)], -2234f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.b, 19u)])))), vec4<u32>(countOneBits(60718u), max(45139u, u_input.b), ~1u, ~1u), Struct_1(!(!vec2<bool>(global2.x, true)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(27408u, 0u, global2.x), 19u)]), vec3<f32>(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global3[_wgslsmith_index_u32(12214u, 19u)], false)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(sign(-127f)))), Struct_1(vec2<bool>(all(vec2<bool>(false, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(487f)) + 150f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3[_wgslsmith_index_u32(u_input.b, 19u)], -1000f)))), vec3<bool>(all(vec4<bool>(global2.x, global2.x, true, global2.x)), any(!vec3<bool>(false, global2.x, true)), false)), global2.x, Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1858f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], -678f, 838f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1316f, 743f, 576f)))), ~abs(vec4<u32>(u_input.b, 27971u, u_input.c.x, u_input.b)) & vec4<u32>(func_4(u_input.b, 1277u, true), firstTrailingBit(46466u), ~u_input.c.x, 4294967295u), Struct_1(vec2<bool>(true, u_input.a < -2147483647i), _wgslsmith_f_op_f32(-442f - 670f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(23339u, 19u)], global3[_wgslsmith_index_u32(2425u, 19u)]), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1175f, global3[_wgslsmith_index_u32(66450u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)]))), select(vec3<bool>(global2.x, false, true), vec3<bool>(false, false, true), global2.x)))), Struct_1(vec2<bool>(true, -2147483647i >= u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f - global3[_wgslsmith_index_u32(u_input.c.x, 19u)]) - _wgslsmith_f_op_f32(abs(-1334f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], -651f, -684f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 397f, global3[_wgslsmith_index_u32(23412u, 19u)]))))), select(!vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, true, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, false)), any(vec4<bool>(true, global2.x, false, global2.x))), global2.x)));
    let var_2 = var_1;
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_2.b.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 38445i, select(0i, u_input.a, true)), ~37648i), -105456i ^ -u_input.a, -26563i, max(u_input.a, 25480i)), _wgslsmith_f_op_f32(var_1.b.a.c.x - var_1.d.c.b));
}

