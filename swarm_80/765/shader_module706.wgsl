struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -3638i, 28697i), true, false), Struct_1(vec4<i32>(1i, 0i, -1533i, 1i), false, false), Struct_1(vec4<i32>(-2092i, -41179i, 2147483647i, 3828i), true, false), Struct_1(vec4<i32>(2058i, -1i, i32(-2147483648), 0i), true, true), Struct_1(vec4<i32>(3062i, 12534i, 2147483647i, -44052i), false, false), Struct_1(vec4<i32>(-30898i, 92815i, -12074i, -25063i), true, true), Struct_1(vec4<i32>(-18995i, 1i, -29636i, -1724i), true, true), Struct_1(vec4<i32>(49166i, 2147483647i, i32(-2147483648), -49617i), false, true), Struct_1(vec4<i32>(-1i, 1i, 0i, 2147483647i), false, true), Struct_1(vec4<i32>(-77222i, 0i, -54239i, 6818i), false, true), Struct_1(vec4<i32>(-1i, -36598i, -1i, 0i), true, false), Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 22247i), false, false), Struct_1(vec4<i32>(2147483647i, -428i, 27579i, 0i), true, true));

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2911i, 6038i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -19488i), vec2<i32>(-19651i, 8999i), vec2<i32>(6078i, 20732i), vec2<i32>(-29558i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2136i, 2147483647i), vec2<i32>(36277i, 0i), vec2<i32>(0i, 0i), vec2<i32>(-38470i, -28902i), vec2<i32>(i32(-2147483648), 51259i), vec2<i32>(20437i, i32(-2147483648)), vec2<i32>(2147483647i, 739i), vec2<i32>(i32(-2147483648), -16792i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 27414i), vec2<i32>(13271i, i32(-2147483648)), vec2<i32>(-1i, -11940i), vec2<i32>(-5583i, -84547i), vec2<i32>(-12477i, 2147483647i), vec2<i32>(27405i, 38296i));

var<private> global3: array<u32, 27> = array<u32, 27>(0u, 0u, 4294967295u, 44978u, 43304u, 2642u, 4294967295u, 42771u, 4294967295u, 1u, 4294967295u, 1u, 20168u, 17229u, 41922u, 0u, 4294967295u, 1u, 4294967295u, 10705u, 38143u, 0u, 68182u, 4294967295u, 1u, 15937u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 13>();
    var var_0 = -((vec3<i32>(i32(-1i) * -2147483647i, -1i, ~u_input.b) & countOneBits(vec3<i32>(1i, 17690i, 52958i) & vec3<i32>(-2223i, u_input.b, -2147483647i))) ^ _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, u_input.b, 23108i) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, 0i, u_input.b)), vec3<i32>(~u_input.b, abs(u_input.b), 1i), ~vec3<i32>(-1i, u_input.b, u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2559f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1305f, -197f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -166f), -261f)), true)))) * -246f);
    global2 = array<vec2<i32>, 24>();
    var var_2 = vec2<i32>(u_input.b, ~(max(2147483647i, abs(u_input.b)) | -6554i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), 1227f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(594f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f * arg_2.x) - arg_2.x);
    let var_1 = arg_1;
    var var_2 = var_1.a.ww;
    var var_3 = !(!select(!vec2<bool>(var_1.b, false), !vec2<bool>(arg_1.c, arg_1.c), select(select(vec2<bool>(arg_1.c, arg_1.b), vec2<bool>(arg_1.b, var_1.b), vec2<bool>(false, var_1.b)), vec2<bool>(true, arg_1.b), select(vec2<bool>(arg_1.b, var_1.c), vec2<bool>(false, true), vec2<bool>(false, arg_1.b)))));
    let var_4 = _wgslsmith_f_op_f32(floor(arg_0.x));
    return abs(-(~var_1.a >> (~select(vec4<u32>(66649u, global3[_wgslsmith_index_u32(u_input.a.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], 4294967295u), vec4<u32>(1u, 1u, u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), var_1.b) % vec4<u32>(32u))));
}

fn func_2() -> vec4<bool> {
    global2 = array<vec2<i32>, 24>();
    var var_0 = ~(~vec3<i32>(i32(-1i) * -12198i, u_input.b, -1i));
    var var_1 = false;
    var var_2 = Struct_1(func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-472f)), -1563f), -1000f, -511f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -548f) + _wgslsmith_f_op_f32(func_3()))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(27059u, 11446u, 21911u), vec3<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)])), 27u)]), 13u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f * -615f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f + -938f) + -1160f)), _wgslsmith_mult_vec3_i32(~max(vec3<i32>(2147483647i, var_0.x, 31047i), vec3<i32>(-1i, u_input.b, u_input.b)), -vec3<i32>(var_0.x, u_input.b, u_input.b))), true | !(!any(vec3<bool>(false, false, true))), countOneBits(u_input.a.x) >= (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(35092u, u_input.a.x), vec2<u32>(6502u, 1u)), u_input.a & u_input.a), 27u)] | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(32291u, 27u)], u_input.a.x), vec3<u32>(1u, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)]))));
    global2 = array<vec2<i32>, 24>();
    return vec4<bool>(true | var_2.b, false, true, all(select(vec3<bool>(any(vec2<bool>(var_2.b, var_2.c)), all(vec3<bool>(false, false, true)), any(vec3<bool>(var_2.b, false, var_2.b))), vec3<bool>(var_2.c, !var_2.c, true), all(vec3<bool>(false, true, var_2.c)))));
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(~3863u), 13u)];
    global3 = array<u32, 27>();
    global0 = all(vec4<bool>(var_0.x | (func_2().x || var_1.c), false, !var_1.c, var_0.x));
    global3 = array<u32, 27>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(40150u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 15238u), 27u)], 27u)]), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), ~vec2<u32>(45903u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 27u)], 0u), u_input.a)), u_input.a)), u_input.a.x, global3[_wgslsmith_index_u32(~min(_wgslsmith_mod_u32(~330u, ~9403u), _wgslsmith_dot_vec4_u32(vec4<u32>(52349u, u_input.a.x, 60256u, global3[_wgslsmith_index_u32(0u, 27u)]), ~vec4<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(2043u, 27u)], 46740u))), 27u)]);
    global2 = array<vec2<i32>, 24>();
    global2 = array<vec2<i32>, 24>();
    global1 = array<Struct_1, 13>();
    let var_1 = Struct_1(vec4<i32>(-(~_wgslsmith_add_i32(u_input.b, u_input.b)), u_input.b, -2147483647i, _wgslsmith_dot_vec2_i32(~(vec2<i32>(20935i, u_input.b) & vec2<i32>(-2147483647i, u_input.b)), global2[_wgslsmith_index_u32((47328u << (u_input.a.x % 32u)) & (var_0.x | u_input.a.x), 24u)])), any(vec2<bool>(true, true)), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_mult_vec3_i32(var_1.a.zxw | var_1.a.yzw, -vec3<i32>(var_1.a.x | ~u_input.b, -var_1.a.x, _wgslsmith_sub_i32(var_1.a.x, abs(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, 558f, 819f, 209f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2857f), -1732f, _wgslsmith_f_op_f32(floor(-1231f)), _wgslsmith_f_op_f32(-149f + -341f))), select(vec3<i32>(reverseBits(-2147483647i), ~u_input.b, i32(-1i) * -2147483647i), ~vec3<i32>(u_input.b, 1720i, 2147483647i), !func_1()) & _wgslsmith_div_vec3_i32(var_1.a.xxw, var_1.a.wzy), -370f);
}

