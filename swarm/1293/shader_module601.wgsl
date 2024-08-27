struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-1098f, 765f, 510f, -618f, -147f, -175f);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 41491u, 4294967295u);

var<private> global2: Struct_4;

var<private> global3: f32 = 1240f;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(true, vec3<i32>(-20422i, 10985i, 68528i), false), Struct_2(true, vec3<i32>(-1i, -12468i, -3684i), false)), Struct_3(Struct_2(false, vec3<i32>(i32(-2147483648), -41454i, 18031i), true), Struct_2(false, vec3<i32>(1i, -14221i, i32(-2147483648)), true)), Struct_3(Struct_2(true, vec3<i32>(-10944i, 39809i, 1i), false), Struct_2(false, vec3<i32>(0i, -32016i, 1i), true)), Struct_3(Struct_2(false, vec3<i32>(-86175i, 6214i, -20677i), false), Struct_2(true, vec3<i32>(17215i, 2147483647i, 70220i), true)), Struct_3(Struct_2(false, vec3<i32>(1i, -55497i, 0i), false), Struct_2(false, vec3<i32>(-1i, -10923i, 30877i), false)), Struct_3(Struct_2(true, vec3<i32>(28311i, -1i, 1i), true), Struct_2(false, vec3<i32>(-63326i, 40232i, 2147483647i), true)), Struct_3(Struct_2(false, vec3<i32>(-28906i, 30959i, 14401i), false), Struct_2(true, vec3<i32>(i32(-2147483648), 2147483647i, 0i), false)), Struct_3(Struct_2(true, vec3<i32>(-1i, 1i, -51396i), false), Struct_2(true, vec3<i32>(2147483647i, 14157i, -1i), false)), Struct_3(Struct_2(true, vec3<i32>(1i, -1i, 37695i), true), Struct_2(false, vec3<i32>(1i, i32(-2147483648), -11806i), false)), Struct_3(Struct_2(true, vec3<i32>(i32(-2147483648), -19207i, 19610i), false), Struct_2(true, vec3<i32>(-14126i, 31279i, -1i), true)), Struct_3(Struct_2(true, vec3<i32>(-4891i, 2147483647i, 34919i), false), Struct_2(true, vec3<i32>(-15854i, 10699i, -53094i), true)), Struct_3(Struct_2(false, vec3<i32>(7216i, i32(-2147483648), i32(-2147483648)), true), Struct_2(false, vec3<i32>(21514i, 1i, -60381i), false)), Struct_3(Struct_2(true, vec3<i32>(-78088i, -1i, 9846i), false), Struct_2(true, vec3<i32>(-26546i, 0i, 1i), true)), Struct_3(Struct_2(true, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), false), Struct_2(true, vec3<i32>(37386i, 0i, -29353i), true)), Struct_3(Struct_2(false, vec3<i32>(-438i, 2147483647i, -4815i), true), Struct_2(true, vec3<i32>(i32(-2147483648), 0i, 1i), false)), Struct_3(Struct_2(true, vec3<i32>(1i, 1i, 2147483647i), true), Struct_2(false, vec3<i32>(-3116i, 2147483647i, -8837i), false)), Struct_3(Struct_2(false, vec3<i32>(-1i, 4363i, -1i), true), Struct_2(false, vec3<i32>(-1i, 2147483647i, 1i), true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global3 = 164f;
    let var_0 = _wgslsmith_f_op_f32(max(700f, 1270f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-242f, global2.a, 1083f), vec3<f32>(global0[_wgslsmith_index_u32(global2.b.x, 6u)], global0[_wgslsmith_index_u32(2191u, 6u)], global2.a))), vec3<f32>(-1181f, _wgslsmith_f_op_f32(f32(-1f) * -325f), -488f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, var_0, 1928f), vec3<f32>(666f, global0[_wgslsmith_index_u32(5903u, 6u)], var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 877f, var_0)))))));
    let var_2 = ~vec3<u32>(global1.x, global1.x, 1639u);
    global0 = array<f32, 6>();
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    global4 = array<Struct_3, 17>();
    let var_0 = func_3(abs(max(-_wgslsmith_sub_vec3_i32(vec3<i32>(23263i, -14453i, 31765i), vec3<i32>(u_input.b, -29563i, arg_0.c)), -(~vec3<i32>(2147483647i, global2.c, global2.c)))));
    global2 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1207f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(select(276f, arg_1, false))), true)))), max(firstTrailingBit(vec4<u32>(20160u, 1u, 18716u, var_0)) | vec4<u32>(~global1.x, global2.b.x >> (global2.b.x % 32u), ~4294967295u, 24036u), vec4<u32>(18938u, countOneBits(global2.b.x), 1u, ~_wgslsmith_dot_vec4_u32(global2.b, arg_0.b))), 79014i);
    global1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, ~(global2.b ^ vec4<u32>(global1.x, arg_0.b.x, 5794u, var_0))), arg_0.b, ~global2.b));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -535f)));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> Struct_4 {
    global2 = func_2(Struct_4(_wgslsmith_f_op_f32(sign(-1523f)), global2.b, 1i), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14394u, 0u), ~max(vec2<u32>(29345u, global2.b.x), vec2<u32>(10735u, 12023u))), 6u)])));
    var var_0 = !(!select(select(vec4<bool>(true, false, true, arg_0.a.a), select(vec4<bool>(false, false, arg_0.a.a, arg_2), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(arg_0.a.c, arg_0.b.c, arg_0.b.a, true)), true), vec4<bool>(345f >= global2.a, select(false, arg_0.a.a, false), arg_0.a.a, false), select(!vec4<bool>(true, arg_0.a.c, false, false), !vec4<bool>(true, arg_2, true, arg_0.b.c), !vec4<bool>(false, arg_0.a.c, true, arg_0.b.c))));
    var var_1 = arg_0.a;
    let var_2 = !(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(var_0.x, false, arg_2), vec3<bool>(arg_0.b.c, arg_2, arg_2), arg_2), all(vec2<bool>(arg_2, var_0.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global0[_wgslsmith_index_u32(global2.b.x, 6u)]))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + 2043f) * global0[_wgslsmith_index_u32(max(global2.b.x, global2.b.x), 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, global0[_wgslsmith_index_u32(4294967295u, 6u)]))))));
    return func_2(func_2(func_2(func_2(func_2(Struct_4(global2.a, vec4<u32>(global2.b.x, global2.b.x, 1u, global2.b.x), arg_0.b.b.x), 2438f), _wgslsmith_f_op_f32(f32(-1f) * -1553f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 45510u), 6u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1212f, global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.yxz;
    global1 = ~vec4<u32>(var_0.x | abs(1u), abs(~global1.x), _wgslsmith_dot_vec2_u32(abs(var_0.zz), select(vec2<u32>(0u, global2.b.x), vec2<u32>(44649u, 16229u), vec2<bool>(true, false))), _wgslsmith_div_u32(4294967295u, 1u)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x | var_0.x, _wgslsmith_sub_u32(21909u, global1.x), ~global2.b.x, var_0.x), global2.b) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a - -688f), -1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(49102u, 6u)])), 1698f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 1701f, 240f) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 302f, global0[_wgslsmith_index_u32(49545u, 6u)]))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - global0[_wgslsmith_index_u32(global2.b.x, 6u)]));
    var var_3 = func_1(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, 18468u)), ~abs(var_0.x)), 17u)], ~vec4<i32>(-_wgslsmith_mod_i32(global2.c, -1i), 0i, _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, u_input.a), vec2<i32>(global2.c, u_input.a))), _wgslsmith_mult_i32(25495i, global2.c)), !select(all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, false, true))) && true);
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(3853u, _wgslsmith_clamp_u32(~4294967295u, ~(~global1.x), 4294967295u), 11260u));
}

