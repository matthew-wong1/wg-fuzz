struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec3<bool>, 10>;

var<private> global3: Struct_5 = Struct_5(vec4<u32>(1u, 25922u, 1u, 5824u), 416f, Struct_3(17144u, -1858f, vec2<u32>(0u, 42608u)));

var<private> global4: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(5745u, -2014f, vec2<u32>(0u, 1u)), Struct_3(4294967295u, 313f, vec2<u32>(28018u, 0u)), Struct_3(1u, 2052f, vec2<u32>(0u, 967u)), Struct_3(18730u, -236f, vec2<u32>(1u, 0u)), Struct_3(16476u, -577f, vec2<u32>(36341u, 0u)), Struct_3(63197u, -800f, vec2<u32>(0u, 34570u)), Struct_3(4294967295u, 415f, vec2<u32>(3569u, 1u)), Struct_3(4294967295u, -831f, vec2<u32>(0u, 0u)), Struct_3(1u, -496f, vec2<u32>(1u, 4294967295u)), Struct_3(1u, -148f, vec2<u32>(33136u, 4294967295u)), Struct_3(0u, 283f, vec2<u32>(4294967295u, 1u)), Struct_3(0u, 260f, vec2<u32>(56051u, 1u)), Struct_3(35243u, -900f, vec2<u32>(1u, 58117u)), Struct_3(41288u, -378f, vec2<u32>(4294967295u, 18346u)), Struct_3(4294967295u, -728f, vec2<u32>(0u, 57352u)), Struct_3(86282u, 203f, vec2<u32>(3724u, 50676u)), Struct_3(46217u, -981f, vec2<u32>(35467u, 1u)), Struct_3(4294967295u, 155f, vec2<u32>(27714u, 1u)), Struct_3(1u, 966f, vec2<u32>(598u, 850u)), Struct_3(4294967295u, -233f, vec2<u32>(33010u, 4294967295u)), Struct_3(4294967295u, -1674f, vec2<u32>(41343u, 29029u)), Struct_3(0u, 2258f, vec2<u32>(0u, 0u)), Struct_3(22790u, 1210f, vec2<u32>(1u, 1u)), Struct_3(6997u, -1155f, vec2<u32>(40404u, 101206u)), Struct_3(16360u, 492f, vec2<u32>(1u, 7592u)), Struct_3(83928u, -1647f, vec2<u32>(5204u, 21050u)), Struct_3(43970u, 164f, vec2<u32>(7909u, 41805u)), Struct_3(6009u, 1000f, vec2<u32>(2u, 0u)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    global3 = Struct_5(countOneBits(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * -806f), Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 4294967295u) ^ vec2<u32>(4294967295u, 0u), ~arg_0.c.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.b - 1035f)))), abs(~(vec2<u32>(global3.a.x, global3.c.c.x) >> (arg_0.a.wz % vec2<u32>(32u))))));
    var var_0 = ~arg_0.c.c.x;
    let var_1 = -2147483647i;
    let var_2 = Struct_4(false, _wgslsmith_mod_i32(countOneBits(-u_input.a.x), u_input.a.x));
    let var_3 = Struct_4(all(select(select(global2[_wgslsmith_index_u32(~49063u, 10u)], vec3<bool>(arg_1.x, false, false), true), vec3<bool>(!global1.x, var_2.a, true), !(!vec3<bool>(global0.x, false, false)))), var_1);
    return 1000f;
}

fn func_2() -> bool {
    let var_0 = -1287f;
    var var_1 = Struct_4(true, (i32(-1i) * -27583i) | u_input.a.x);
    global2 = array<vec3<bool>, 10>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<u32>(global3.a.x, global3.a.x, 0u, global3.c.c.x), var_0, global3.c), global2[_wgslsmith_index_u32(global3.a.x, 10u)], 22553u << (global3.a.x % 32u))))));
    var var_3 = Struct_4(global0.x, -13148i);
    return all(vec3<bool>(var_2, select(false, false, !all(global2[_wgslsmith_index_u32(global3.c.c.x, 10u)])), global3.c.a >= ~select(1u, 114615u, global1.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_3(~0u, -932f, firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_1.zz, vec2<u32>(1u, ~1u), ~reverseBits(vec2<u32>(arg_1.x, 1u)))));
    global0 = select(vec2<bool>(true, global1.x), vec2<bool>(arg_3, func_2()), global1.x);
    global0 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(global0.x, global1.x), vec2<bool>(arg_2, true))), vec2<bool>(true, _wgslsmith_dot_vec2_i32(u_input.a.yy, arg_0.xz) < (u_input.a.x << (global3.c.a % 32u))), any(vec3<bool>(all(vec2<bool>(arg_3, true)), all(vec4<bool>(true, false, false, global1.x)), global0.x)));
    global0 = !(!select(vec2<bool>(global1.x, arg_3), !(!vec2<bool>(global0.x, global0.x)), select(!vec2<bool>(false, global0.x), !vec2<bool>(false, arg_3), vec2<bool>(true, true))));
    let var_1 = vec2<f32>(-1413f, -1262f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c.b)));
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(24338u, global3.c.c.x, global3.c.c.x, global3.a.x), global3.a))), vec3<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -684f) >= _wgslsmith_f_op_f32(step(arg_0, -286f)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 * global3.c.b), _wgslsmith_f_op_f32(func_1(u_input.a.xwz, global3.a, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c.b)) * global3.c.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -502f), vec2<f32>(_wgslsmith_f_op_f32(global3.c.b - arg_0), -1010f))))));
    global2 = array<vec3<bool>, 10>();
    var var_1 = Struct_2(var_0.a, vec2<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-219f, _wgslsmith_f_op_f32(arg_0 + -2330f))))));
    global4 = array<Struct_3, 28>();
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, global3.c.b)));
    return Struct_1(var_2.a.a, var_1.a.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(trunc(-850f))), var_1.a.c), 257f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.wxw, vec4<u32>(4294967295u, 1u, global3.a.x, 12130u), global0.x, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.c.b, global3.b)))))));
    let var_1 = ~1u;
    let var_2 = global3.a;
    global0 = !var_0.a.b.xx;
    var var_3 = Struct_3(var_2.x, var_0.b.x, var_2.zy);
    global2 = array<vec3<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> (var_0.a.a.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(223f, -488f, global3.b, 1893f), vec4<f32>(var_0.a.c.x, -1000f, -1000f, 458f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, -602f, -102f, global3.b) + vec4<f32>(-1000f, -1001f, 118f, 100f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, var_3.b))))), vec2<f32>(func_4(_wgslsmith_f_op_f32(abs(-525f))).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * var_3.b), _wgslsmith_f_op_f32(485f * var_0.a.d))), true)), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -2147483647i, ~u_input.a.x, 1i, _wgslsmith_mult_i32(u_input.a.x, 51501i)) | _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)));
}

