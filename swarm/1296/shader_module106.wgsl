struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32;

var<private> global2: vec4<f32>;

var<private> global3: vec4<u32>;

var<private> global4: vec3<f32> = vec3<f32>(-365f, -220f, -1301f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = vec4<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + 1000f))), global4.x);
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(min(1u, _wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(4294967295u, 53293u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(17437u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, global3.x, 1u, global3.x))), ~_wgslsmith_sub_u32(4294967295u, 20766u))), min(~(~_wgslsmith_mod_u32(u_input.a, 5566u)), u_input.a));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(~vec4<i32>(~1i, 0i << (0u % 32u), 1i, i32(-1i) * -2147483647i), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = select(select(vec2<bool>(true, true), vec2<bool>(global0.x, true), vec2<bool>(true, true)), select(select(vec2<bool>(any(vec3<bool>(global0.x, false, false)), true), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), !vec2<bool>(global0.x, global0.x)), !vec2<bool>(global2.x > 374f, true), vec2<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, true)), true && select(false, false, false))), select(select(!(!vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(global0.x && false, any(vec3<bool>(true, true, true)))), !vec2<bool>(true, any(vec4<bool>(true, global0.x, false, global0.x))), vec2<bool>(global0.x, global0.x)));
    let var_2 = var_1;
    return true;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = func_3();
    let var_1 = -64777i;
    var var_2 = !select(!(!select(vec2<bool>(true, global0.x), vec2<bool>(true, var_0), var_0)), select(vec2<bool>(true, global0.x), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), any(!vec3<bool>(false, var_0, true))), vec2<bool>(-1620f <= _wgslsmith_f_op_f32(max(global4.x, -319f)), global0.x));
    var var_3 = Struct_2(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, 2147483647i, var_1, var_1), vec4<i32>(2147483647i, -22373i, -46499i, var_1)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1, -43404i, var_1), vec4<i32>(var_1, var_1, var_1, var_1)), _wgslsmith_clamp_vec4_i32(vec4<i32>(18998i, var_1, var_1, var_1), vec4<i32>(-1i, 1i, -7837i, var_1), vec4<i32>(26112i, -2147483647i, 0i, var_1)))));
    let var_4 = !vec3<bool>(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, arg_0)), -699f, !var_0)), any(vec2<bool>(true, u_input.a == u_input.a)), false);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(700f))))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * arg_0))), -1591f, _wgslsmith_f_op_f32(sign(global2.x))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + 1592f));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, 812f)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 1272f) - var_0.a), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f - arg_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-161f, arg_2.x)), arg_2.x)))), 1018f, _wgslsmith_f_op_f32(var_0.a * -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.x * 1000f), -975f)))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), var_0.a, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -835f))) + vec4<f32>(-545f, 1195f, _wgslsmith_div_f32(1f, global2.x), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(716f * arg_2.x))))));
    global3 = vec4<u32>(17926u, 0u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(global3.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(15846u, u_input.a, 88684u), global3.ywy)), u_input.a), global3.x);
    return _wgslsmith_f_op_vec3_f32(min(global2.zxw, _wgslsmith_f_op_vec3_f32(-global2.zzz)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) + _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(-arg_2.a.x)) + global2.x);
    let var_0 = Struct_3(arg_1.x);
    global4 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, global3.x, _wgslsmith_div_u32(u_input.a, u_input.a)), vec3<u32>(u_input.a, 4294967295u, ~67824u)), vec2<i32>(3960i, arg_2.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1238f, var_0.a, arg_2.a.x), arg_2.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -169f, 1443f, global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -461f, 170f, global2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(select(arg_2.a.x, 546f, false))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, -235f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1060f)) * 242f));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(869f)), _wgslsmith_f_op_f32(-var_0.a), select(arg_2.c.x, true, true))))));
    return ~max(vec3<u32>(1u, firstLeadingBit(64897u), abs(0u)), firstLeadingBit(~firstLeadingBit(vec3<u32>(0u, 11750u, u_input.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = arg_1.d.yz;
    var var_1 = Struct_2(vec4<i32>(countOneBits(arg_0.d.x), 1i, 1713i, arg_0.e) << (vec4<u32>(~(49167u & u_input.a), abs(32949u), ~reverseBits(global3.x), 18075u) % vec4<u32>(32u)));
    let var_2 = Struct_4(Struct_3(_wgslsmith_div_f32(-1150f, _wgslsmith_f_op_f32(trunc(687f)))), Struct_1(vec4<f32>(global4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-2420f, arg_0.a.x)))), _wgslsmith_f_op_f32(1133f * _wgslsmith_f_op_f32(-global2.x)), global4.x), var_0.x & arg_0.d.x, arg_1.c, -(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, arg_1.b, var_1.a.x, 2147483647i), arg_1.d) << (~vec4<u32>(u_input.a, arg_2, 4294967295u, 1u) % vec4<u32>(32u))), 1i), false, Struct_3(-625f));
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(min(global4.x, -1304f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1695f, -2338f)), _wgslsmith_f_op_f32(min(1000f, arg_0.a.x)), all(var_2.b.c.ww)))), arg_1.a.x, 1000f));
    var var_3 = (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 33497u, u_input.a), vec3<u32>(12980u, u_input.a, 0u))), ~(~global3.xwz)) | _wgslsmith_mult_u32(u_input.a, 62868u)) > max(abs(abs(1u)), _wgslsmith_mult_u32(func_1(1u, vec2<f32>(448f, 816f), arg_1).x, ~u_input.a));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(min(arg_1.a.x, global2.x))), -653f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(1542f + global4.x))), _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, 626f, -1361f, global2.x))), -11781i, vec4<bool>(true, global0.x, global0.x, global0.x), -vec4<i32>(-1237i, 1i, -2147483647i, -2147483647i), select(53858i, 29416i, global0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, global2.x, 1488f, global2.x)), -10299i, !vec4<bool>(global0.x, global0.x, true, global0.x), vec4<i32>(-7248i, -1i, 79845i, 10634i), select(2147483647i, -44005i, global0.x)), _wgslsmith_dot_vec3_u32(func_1(4294967295u, vec2<f32>(763f, global2.x), Struct_1(vec4<f32>(1125f, 770f, 567f, 266f), 1i, vec4<bool>(global0.x, global0.x, false, false), vec4<i32>(1i, -35457i, 28443i, -51377i), 17015i)), global3.xwy))), global2.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_vec3_f32(func_4(1u, vec2<i32>(1i, 47772i), vec4<f32>(-658f, global2.x, global4.x, 770f))).x), vec3<f32>(_wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -844f), global4.x), global0.x || true))))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -569f, global2.x, -234f)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 22475i), vec3<i32>(-61445i, -10504i, 55216i))), select(vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(global0.x, global0.x, false, global0.x), true), vec4<i32>(-10695i, min(2147483647i, -21569i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-40137i, 0i)), -1i), _wgslsmith_clamp_i32(-2147i, 1i, 1i) | 1i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, 2128f, global4.x, global2.x) * vec4<f32>(567f, -688f, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-222f, -153f, global2.x, global4.x)))), ~10822i, select(vec4<bool>(false, global0.x, false, false), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false)), !global0.x), vec4<i32>(1i, 47654i, 27657i, -1i) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), max(abs(-2147483647i), 0i)), global3.x & ~func_1(u_input.a, global4.xz, Struct_1(vec4<f32>(-1699f, global4.x, global4.x, global2.x), -1i, vec4<bool>(global0.x, true, false, global0.x), vec4<i32>(-2147483647i, -30281i, -23352i, -28489i), -27165i)).x)), _wgslsmith_f_op_f32(f32(-1f) * -138f));
    global1 = 881f;
    let var_1 = 1i;
    var var_2 = Struct_2(firstTrailingBit((-vec4<i32>(var_1, var_1, 1i, var_1) >> (abs(vec4<u32>(global3.x, 12079u, global3.x, 33578u)) % vec4<u32>(32u))) | (vec4<i32>(var_1, var_1, var_1, var_1) | (vec4<i32>(var_1, 1i, 1i, var_1) & vec4<i32>(-13264i, var_1, var_1, 1i)))));
    var_2 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(~var_1), var_2.a.x, reverseBits(_wgslsmith_div_i32(var_2.a.x, -1i)), ~(-var_1)), var_2.a));
    var var_3 = ~global3.x;
    let var_4 = Struct_2(vec4<i32>(-2116i, -48166i, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, var_2.a.x), vec2<i32>(var_1, var_1)), vec2<i32>(-6598i, var_2.a.x))), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), _wgslsmith_f_op_vec4_f32(func_2(global2.x)).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xx))))), vec4<i32>(i32(-1i) * -1i, firstTrailingBit(firstTrailingBit(var_1)), _wgslsmith_add_i32(var_1, abs(~(-12728i))), ~(~(-19932i))), firstTrailingBit(~vec2<u32>(~0u, firstLeadingBit(89229u))), _wgslsmith_f_op_vec4_f32(func_2(158f)).www, global3.yxx);
}

