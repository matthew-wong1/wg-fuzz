struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> bool {
    global0 = vec3<bool>(all(!(!vec4<bool>(arg_2, global0.x, true, false))), global0.x, global0.x);
    global0 = !(!vec3<bool>((u_input.a.x != 81964u) & (true || global0.x), arg_2, arg_2));
    global0 = select(!vec3<bool>(!arg_2, global0.x, all(select(global0.yz, global0.zx, arg_2))), !vec3<bool>(true, arg_2, false), false);
    var var_0 = max(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(~arg_1.x, _wgslsmith_div_i32(-35107i, u_input.d)), -93065i), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(select(65230i, -72983i, true), arg_0.a | -2147483647i), -(~69668i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-904f)) * _wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1271f, 2438f), -132f)))));
    return arg_2;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(437f)), _wgslsmith_f_op_f32(step(-263f, -779f)), func_3(Struct_1(u_input.e), u_input.b, true, -14776i)))))));
    let var_1 = Struct_4(!select(!vec4<bool>(arg_0.x, arg_0.x, global0.x, arg_0.x), select(select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(false, true, false, global0.x), global0.x), select(vec4<bool>(false, false, global0.x, arg_0.x), vec4<bool>(true, false, global0.x, true), vec4<bool>(true, true, true, true)), !vec4<bool>(global0.x, false, false, global0.x)), arg_0.x), Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(~u_input.b, u_input.b))), Struct_2(Struct_1(u_input.b.x), Struct_1(-29962i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - 900f), 2398f, 1368f, -283f), Struct_1(firstTrailingBit(u_input.e)), vec2<bool>(false, true)));
    var var_2 = _wgslsmith_div_f32(var_0, 412f);
    var_2 = -256f;
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(firstTrailingBit(2147483647i), -1i), 0i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.b.a, abs(min(u_input.e, -2147483647i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-58387i, reverseBits(u_input.b.x)), 0i), u_input.d), _wgslsmith_sub_i32(var_1.b.a, 2147483647i));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.c.x) - -1937f) == _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 868f) + -1581f)));
}

fn func_1() -> vec3<bool> {
    global0 = select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, !(u_input.e >= _wgslsmith_sub_i32(u_input.b.x, u_input.e)), true), true);
    global0 = vec3<bool>(true, true, all(!(!select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, true, true, global0.x)))));
    global0 = select(select(vec3<bool>(global0.x, any(!vec3<bool>(global0.x, false, global0.x)), global0.x), vec3<bool>(func_2(!vec3<bool>(global0.x, true, true)), all(vec2<bool>(global0.x, global0.x)), (u_input.a.x < 4294967295u) | !global0.x), select(!global0.x, !any(vec3<bool>(global0.x, false, false)), global0.x | global0.x)), !vec3<bool>((u_input.e >> (4294967295u % 32u)) == 0i, -1i < -u_input.e, global0.x), true && !global0.x);
    let var_0 = Struct_3(true, Struct_2(Struct_1(u_input.e), Struct_1(1i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)), _wgslsmith_f_op_f32(trunc(795f)), 1f), Struct_1(1i >> (_wgslsmith_mult_u32(u_input.a.x, 5052u) % 32u)), global0.xx), Struct_1(_wgslsmith_add_i32(0i, u_input.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(481f + 1691f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(f32(-1f) * -558f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, 1000f, 1221f, 252f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1155f, 248f, 779f, 292f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, 1000f, 365f, -2453f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1262f, 1405f, -978f, 1371f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1828f, 1830f, 891f, 915f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-258f, -473f, -295f, 299f), vec4<f32>(-1026f, 548f, -934f, -996f))))), Struct_1(13172i));
    var var_1 = !func_2(vec3<bool>((false || var_0.a) & global0.x, !var_0.b.e.x, select(true, var_0.a, any(vec4<bool>(global0.x, false, true, global0.x)))));
    return vec3<bool>(global0.x, !var_0.b.e.x, ~countOneBits(-u_input.d) == u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = func_1();
    var_0 = true;
    let var_1 = Struct_3(!(!select(func_3(Struct_1(u_input.b.x), vec4<i32>(1i, -1i, -17037i, -23601i), false, 36116i), global0.x, all(vec4<bool>(false, true, global0.x, global0.x)))), Struct_2(Struct_1(-1i), Struct_1(u_input.e ^ u_input.b.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-565f, _wgslsmith_f_op_f32(ceil(779f)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(abs(-1000f))))), Struct_1(max(~u_input.c.x, -1i)), global0.xx), Struct_1(-u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, 1039f, 1371f, 949f) + vec4<f32>(-237f, -1305f, 1018f, 585f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(391f, 1014f, -659f, 347f) + vec4<f32>(1454f, -863f, -920f, 1177f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, -655f, -537f, 766f) * vec4<f32>(-183f, 321f, 1195f, -929f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1116f, -314f, 1463f, -1000f)))))), Struct_1(reverseBits(-1i)));
    var_0 = !(!(global0.x || (!var_1.b.e.x == all(vec4<bool>(global0.x, false, false, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.d.x)), _wgslsmith_f_op_f32(390f * var_1.b.c.x))), _wgslsmith_f_op_f32(sign(1f))))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.xy, min(abs(vec2<i32>(var_1.b.b.a, -1i)), ~u_input.c.zz)), -u_input.b.wx));
}

