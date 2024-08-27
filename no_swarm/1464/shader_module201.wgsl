struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(644u, 137102u), vec2<u32>(1u, 0u), vec2<u32>(0u, 75273u), vec2<u32>(10643u, 125369u), vec2<u32>(23507u, 1u), vec2<u32>(817u, 4294967295u));

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(-1i, 1i), -1i, true, vec4<i32>(-44049i, -8525i, i32(-2147483648), -21522i), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(i32(-2147483648), 16677i), -1i, false, vec4<i32>(i32(-2147483648), -44269i, -8513i, i32(-2147483648)), vec3<bool>(true, true, false)));

var<private> global3: array<vec3<u32>, 21>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-752f, _wgslsmith_f_op_f32(-arg_1)) * global1[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 24u)]));
    global2 = Struct_2(arg_0.wwy, global2.c, Struct_1((-global2.b.a ^ vec2<i32>(global2.c.b, -2147483647i)) << (u_input.c.xy % vec2<u32>(32u)), countOneBits(~u_input.b), false & any(select(vec3<bool>(false, false, global2.c.e.x), global2.c.e, global2.b.e)), vec4<i32>(_wgslsmith_mult_i32(u_input.b >> (u_input.a % 32u), -91770i), ~(~u_input.b), global2.c.d.x | 0i, -20100i), vec3<bool>(true, true, true)));
    let var_1 = ~_wgslsmith_mult_u32(17648u, 0u);
    return all(!vec2<bool>(global2.c.c, !global2.a.x));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(221f, 2002f, 1577f, -1460f) * vec4<f32>(-657f, 1068f, 466f, -1295f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(245f, -1430f, -610f, 1419f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1204f, -1004f, 608f, -340f) - vec4<f32>(181f, 1938f, -402f, 136f))), firstTrailingBit(94250u) > ~1u))))));
    var var_1 = _wgslsmith_dot_vec3_i32(~firstLeadingBit(global2.b.d.wyy), firstTrailingBit(select(~_wgslsmith_mod_vec3_i32(global2.b.d.wyx, vec3<i32>(global2.c.d.x, 0i, arg_0.c.b)), vec3<i32>(i32(-1i) * -50661i, global2.b.b ^ global2.b.a.x, -arg_0.c.d.x), any(global2.b.e))));
    var_1 = 2147483647i;
    global3 = array<vec3<u32>, 21>();
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.b | -94021i, 10086i << (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 4294967295u) % 32u)), 2147483647i), firstTrailingBit(~(~_wgslsmith_mult_i32(-2147483647i, arg_0.b.d.x))), false, vec4<i32>(_wgslsmith_dot_vec2_i32(global2.b.d.zw, arg_0.c.d.yw), _wgslsmith_clamp_i32(~1i, ~68066i, arg_0.c.b), i32(-1i) * -2147483647i, 1i), vec3<bool>(global2.c.e.x & global2.b.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -935f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1243f, -201f, global2.b.c)) - var_0.x), true));
    return -min(_wgslsmith_sub_vec2_i32(global2.c.a, -var_2.d.xz) ^ vec2<i32>(global2.c.d.x, -var_2.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, 2147483647i)) << (~(global0[_wgslsmith_index_u32(u_input.c.x, 6u)] << (u_input.c.xx % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(~reverseBits(func_3(arg_1)), -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_1.c.d.x, arg_0.x), arg_1.c.d.wyz)) >> ((firstLeadingBit(select(4294967295u, 0u, global2.a.x)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47288u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 7902u, u_input.c.x, u_input.c.x))) % 32u), arg_1.b.e.x, vec4<i32>(abs(-1i), abs(1i), -_wgslsmith_mod_i32(abs(-27115i), -1i << (u_input.c.x % 32u)), -1i), vec3<bool>(global2.b.c, arg_1.c.c, arg_1.b.e.x));
    var var_1 = firstTrailingBit(~vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.a.x, u_input.b), vec2<i32>(var_0.d.x, u_input.b)), _wgslsmith_dot_vec2_i32(~vec2<i32>(53860i, 1i), vec2<i32>(u_input.b, -2147483647i)), 63754i | (-27536i ^ global2.c.b)));
    global1 = array<vec2<f32>, 24>();
    global1 = array<vec2<f32>, 24>();
    let var_2 = arg_1;
    return !(any(vec3<bool>(true, true | var_2.a.x, true)) || func_1(vec4<bool>(true, false, var_2.a.x, any(vec2<bool>(var_0.e.x, var_2.b.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-2685f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(select(!global2.a, global2.a, select(!select(global2.c.e, vec3<bool>(false, false, false), true), global2.b.e, global2.b.e)), global2.c, arg_1);
    let var_1 = Struct_1(global2.c.d.wz, ~_wgslsmith_div_i32(abs(-2147483647i), 1i), global2.b.c, vec4<i32>(-countOneBits(global2.b.b), ~(~global2.b.b), abs(~reverseBits(arg_1.d.x)), i32(-1i) * -13489i), vec3<bool>(u_input.a <= arg_2, false, true));
    var var_2 = false;
    global2 = Struct_2(select(!var_0.a, vec3<bool>(all(!vec4<bool>(false, var_0.c.c, global2.b.c, true)), true, !arg_3), !arg_1.c), var_0.c, Struct_1(vec2<i32>(reverseBits(var_0.c.a.x), _wgslsmith_mod_i32(-1i, -19161i)), -_wgslsmith_add_i32(var_0.b.b, -14300i), false, select(vec4<i32>(arg_1.d.x, global2.c.b, -54405i, var_1.a.x) << (vec4<u32>(u_input.c.x, arg_2, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(var_1.d, global2.b.d), true) & firstTrailingBit(select(var_1.d, vec4<i32>(var_0.c.d.x, -2147483647i, arg_1.b, -1i), vec4<bool>(true, global2.a.x, true, false))), global2.a));
    let var_3 = var_1;
    return Struct_1(select(arg_1.a, -max(vec2<i32>(global2.b.b, -2147483647i), select(var_1.a, vec2<i32>(1i, u_input.b), var_1.e.x)), !select(arg_1.e.yy, select(vec2<bool>(false, arg_1.c), global2.a.yy, vec2<bool>(true, false)), true)), _wgslsmith_dot_vec4_i32(var_0.c.d, vec4<i32>(var_0.b.d.x, 20704i, var_0.b.b, u_input.b)), func_1(!vec4<bool>(arg_3, var_0.b.e.x, any(vec4<bool>(false, global2.b.e.x, false, var_3.c)), !var_3.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1538f * 883f) * arg_0)))), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.b, 2147483647i, arg_1.b, arg_1.b), -arg_1.d)) ^ countOneBits(select(-var_0.b.d, vec4<i32>(global2.b.b, var_3.a.x, -1i, 65384i), false)), vec3<bool>(var_1.c, any(!(!vec2<bool>(var_0.a.x, true))), !any(vec3<bool>(global2.c.e.x, false, false)) || global2.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a, func_4(_wgslsmith_f_op_f32(ceil(1681f)), Struct_1(-vec2<i32>(1i, 0i), max(global2.c.b ^ -106651i, u_input.b & global2.b.a.x), false, select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -8206i), global2.b.d), vec4<i32>(-2147483647i, u_input.b, global2.c.a.x, global2.c.d.x), select(vec4<bool>(true, global2.c.c, false, false), vec4<bool>(global2.c.e.x, global2.c.e.x, global2.b.e.x, global2.b.c), true)), vec3<bool>(true, func_1(vec4<bool>(true, true, global2.c.c, true), 107f), func_2(vec3<i32>(u_input.b, -1i, global2.c.d.x), Struct_2(vec3<bool>(false, global2.a.x, true), global2.c, Struct_1(vec2<i32>(-2341i, global2.c.d.x), 48475i, false, global2.b.d, vec3<bool>(true, global2.b.c, false)))))), select(u_input.a, select(u_input.a ^ u_input.c.x, 4294967295u, global2.a.x && false), global2.b.e.x), all(select(!vec4<bool>(global2.a.x, global2.b.c, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), global2.a.x), 0i > global2.c.a.x))), global2.c);
    global2 = Struct_2(!func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-679f)))), func_4(_wgslsmith_f_op_f32(564f + -1000f), Struct_1(global2.c.d.zw, -13730i, global2.a.x, global2.b.d, var_0.b.e), _wgslsmith_mod_u32(u_input.c.x, 4294967295u), false), u_input.c.x, true).e, func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -1335f), _wgslsmith_f_op_f32(abs(-129f)))))), Struct_1(_wgslsmith_clamp_vec2_i32(abs(var_0.c.a), -vec2<i32>(1i, global2.c.a.x), select(vec2<i32>(-62787i, -1i), vec2<i32>(-2147483647i, 0i), global2.a.yz)), -1i, true, global2.b.d, vec3<bool>(any(var_0.c.e.yy), !var_0.b.e.x, true)), u_input.c.x, true), global2.b);
    let var_1 = Struct_2(vec3<bool>(var_0.c.e.x, global2.a.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-793f))), Struct_1(vec2<i32>(var_0.c.b, 1i), _wgslsmith_clamp_i32(u_input.b, global2.b.d.x, 0i), true || global2.c.e.x, max(vec4<i32>(0i, u_input.b, 18854i, global2.c.a.x), var_0.c.d), vec3<bool>(true, false, true)), 13138u, any(vec3<bool>(false, false, true))).e.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-246f)))), var_0.b, u_input.a, true), func_4(-372f, Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, global2.b.a.x), vec3<i32>(u_input.b, -2315i, u_input.b)), 0i), u_input.b, func_4(1000f, func_4(584f, Struct_1(vec2<i32>(-1i, global2.b.a.x), global2.b.d.x, true, vec4<i32>(-28149i, 1i, 17345i, u_input.b), global2.b.e), 1u, var_0.b.e.x), ~0u, true).c, _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.c.d.x, 2147483647i, var_0.b.a.x, var_0.b.b), select(global2.b.d, var_0.c.d, vec4<bool>(global2.a.x, var_0.a.x, var_0.b.c, var_0.b.e.x))), !global2.a), ~_wgslsmith_add_u32(1u, 1u), true));
    var var_2 = Struct_2(vec3<bool>(!var_0.c.e.x, ~(-var_0.c.a.x) >= -_wgslsmith_mod_i32(global2.b.b, -2147483647i), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f * -871f) + _wgslsmith_f_op_f32(f32(-1f) * -107f)), Struct_1(~global2.b.d.wx, _wgslsmith_clamp_i32(var_0.b.b, global2.b.b, 0i), var_1.a.x, _wgslsmith_mult_vec4_i32(vec4<i32>(16630i, 0i, global2.c.d.x, var_1.c.a.x), var_1.c.d), var_1.c.e), max(0u, 6373u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(23682u, 0u, u_input.c.x, u_input.a), vec4<u32>(1u, u_input.c.x, 43398u, u_input.c.x)), any(func_4(629f, global2.c, 77658u, false).e.zz)).e.x), Struct_1(~abs(-var_0.c.d.zz), -_wgslsmith_sub_i32(~(-23842i), u_input.b), var_0.a.x, max(-max(vec4<i32>(var_1.c.d.x, var_1.b.d.x, 13090i, var_1.c.d.x), vec4<i32>(-29446i, var_1.c.b, -13706i, u_input.b)), global2.c.d), !(!vec3<bool>(global2.a.x, var_0.c.e.x, var_0.c.c))), Struct_1(vec2<i32>(-global2.c.d.x, -func_4(894f, Struct_1(var_1.c.a, var_0.b.a.x, var_1.a.x, vec4<i32>(-1i, var_0.c.d.x, 0i, var_0.c.d.x), vec3<bool>(global2.c.c, var_1.a.x, false)), u_input.c.x, false).d.x), var_1.c.a.x, any(select(vec2<bool>(var_0.b.e.x, global2.a.x), vec2<bool>(true, true), var_0.a.yy)), global2.b.d, vec3<bool>(!(false & var_1.c.e.x), false, 1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 27669u, u_input.c.x, u_input.a), vec4<u32>(u_input.a, u_input.a, 53092u, 0u)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-805f, -1490f, 1294f, -580f), vec4<f32>(-496f, -1351f, 687f, 304f), var_0.c.e.x)), vec4<f32>(1f, 1f, 1f, 1f), var_2.c.c)) - vec4<f32>(-229f, _wgslsmith_f_op_f32(step(-1139f, 1124f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), -1490f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1520f, 1099f, 774f, 3198f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1124f, -879f, 1129f, -211f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), 1152f, 1f, -1087f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1002f, 2475f, 496f, -1345f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.x)), var_3.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.x))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(var_3.x + -625f)), ~firstLeadingBit(firstTrailingBit(u_input.c) & vec3<u32>(u_input.a, 4294967295u, 4294967295u)));
}

