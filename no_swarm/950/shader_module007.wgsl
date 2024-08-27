struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(4294967295u, true, vec4<i32>(53911i, 0i, 4742i, 15882i), Struct_3(-1i));

var<private> global2: vec4<u32>;

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global0 = true;
    var var_0 = vec2<u32>(min(~(u_input.a.x | 12506u), arg_0.x) ^ global2.x, ~_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_clamp_u32(39185u, ~4294967295u, 0u & u_input.b), countOneBits(1u)));
    global3 = !global1.b;
    global2 = ~(~min(u_input.a, _wgslsmith_clamp_vec4_u32(~arg_0, vec4<u32>(6724u, var_0.x, 4294967295u, u_input.c), u_input.a)));
    var_0 = _wgslsmith_mod_vec2_u32(abs(abs(~(~vec2<u32>(0u, 16947u)))), arg_0.zx);
    return 62255i;
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(global1.b, vec3<f32>(_wgslsmith_f_op_f32(1f * arg_0.x), -1278f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(982f * 227f)))));
    var var_1 = ~abs(vec4<i32>(min(-u_input.d, countOneBits(1i)), ~(-global1.d.a), _wgslsmith_dot_vec4_i32(~global1.c, reverseBits(vec4<i32>(-64451i, global1.d.a, u_input.d, -21364i))), func_3(u_input.a, var_0.a.a) ^ min(4200i, u_input.d)));
    global0 = any(vec2<bool>(false, false)) || !(!(global1.c.x > -2147483647i));
    global1 = Struct_4(firstLeadingBit(4294967295u), select(false != (any(vec3<bool>(false, var_0.a.a, true)) | global1.b), any(!vec2<bool>(global1.b, false)), all(select(!vec3<bool>(global1.b, var_0.a.a, true), vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), select(vec3<bool>(true, true, true), vec3<bool>(false, true, global1.b), vec3<bool>(true, true, global1.b))))), vec4<i32>(var_1.x, 64118i, _wgslsmith_mod_i32(~0i, _wgslsmith_add_i32(-u_input.d, -21897i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 13602i) | global1.c.wz, vec2<i32>(global1.c.x, global1.d.a), vec2<i32>(var_1.x, 28015i)), global1.c.yy)), global1.d);
    let var_2 = ~(var_1.zxy | global1.c.yxw);
    return !(!vec2<bool>(any(!vec4<bool>(true, var_0.a.a, true, false)), !var_0.a.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(global1.c.x, ~(-_wgslsmith_clamp_i32(0i, u_input.d, global1.c.x)), abs(select(u_input.d, ~global1.d.a, arg_1.x)), u_input.d), -min(global1.c, global1.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(1387f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1549f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-325f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) * _wgslsmith_f_op_f32(f32(-1f) * -1241f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1490f, -941f, 676f, -582f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, -474f, -103f, -1338f))) - vec4<f32>(_wgslsmith_f_op_f32(max(-515f, 1237f)), _wgslsmith_f_op_f32(552f + 455f), _wgslsmith_f_op_f32(floor(204f)), _wgslsmith_f_op_f32(-560f + -1334f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1914f, -1832f, -791f))), _wgslsmith_div_vec4_f32(vec4<f32>(570f, 217f, -143f, -2201f), vec4<f32>(692f, -991f, 535f, 1051f)))))));
    global1 = Struct_4(_wgslsmith_add_u32((_wgslsmith_dot_vec3_u32(global2.yzz, vec3<u32>(arg_0.x, arg_0.x, 15004u)) | abs(4294967295u)) | u_input.a.x, _wgslsmith_add_u32(0u, global1.a)), all(select(select(arg_1, !arg_1, arg_1), !func_2(var_1.wxx), arg_1.x)), var_0, Struct_3(~min(i32(-1i) * -2147483647i, 0i)));
    global2 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(min(abs(arg_0.x), u_input.c), 18949u, _wgslsmith_add_u32(13920u, 1u), 4294967295u), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 23517u, 0u, global1.a), vec4<u32>(global1.a, 4294967295u, global2.x, u_input.b)), global1.a | 22609u, arg_0.x, global1.a >> (global1.a % 32u)), !vec4<bool>(arg_1.x, true, false, global1.a < global1.a)), abs(vec4<u32>(reverseBits(global1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(35751u, 1u, u_input.a.x), arg_0), ~1u, _wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(global1.a, 4294967295u))) << (~(~vec4<u32>(global1.a, global2.x, 46561u, u_input.a.x)) % vec4<u32>(32u))));
    global3 = false;
    return !select(!select(select(vec4<bool>(true, arg_1.x, true, global1.b), vec4<bool>(global1.b, global1.b, global1.b, false), arg_1.x), vec4<bool>(global1.b, global1.b, false, true), vec4<bool>(false, arg_1.x, arg_1.x, true)), !select(!vec4<bool>(false, arg_1.x, global1.b, true), vec4<bool>(false, arg_1.x, false, false), select(vec4<bool>(false, true, false, global1.b), vec4<bool>(true, false, global1.b, global1.b), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), vec4<bool>(true, true, any(select(vec2<bool>(false, global1.b), vec2<bool>(false, false), global1.b)), arg_1.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = Struct_4(17658u, global1.b, -global1.c, Struct_3(global1.c.x ^ _wgslsmith_sub_i32(~(-61245i), 1821i)));
    global3 = global1.b;
    let var_0 = global1.b;
    let var_1 = ~(~arg_1);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-849f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x))) * _wgslsmith_f_op_f32(step(-532f, 1172f)));
    return !func_4(u_input.a.wxz, select(select(!vec2<bool>(false, global1.b), !vec2<bool>(global1.b, false), !vec2<bool>(global1.b, global1.b)), select(func_2(vec3<f32>(var_2, var_2, arg_0.x)), !vec2<bool>(global1.b, true), arg_0.x != var_2), !select(vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, true), global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~global1.a), global1.a, abs(~global1.a), 86906u), u_input.a) ^ u_input.a;
    global3 = all(select(select(select(vec4<bool>(false, false, global1.b, false), vec4<bool>(false, global1.b, false, global1.b), func_1(vec2<f32>(-336f, -304f), u_input.a.zx)), vec4<bool>(true, true, global1.b, global1.b), any(!vec4<bool>(global1.b, global1.b, global1.b, false))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(315f, 681f) - vec2<f32>(-102f, -104f))), _wgslsmith_mod_vec2_u32(global2.zy, firstLeadingBit(vec2<u32>(global2.x, 1u)))), !vec4<bool>(true, global1.b, !global1.b, true)));
    global0 = true;
    var var_0 = Struct_5(6925u);
    let var_1 = _wgslsmith_div_u32(var_0.a, var_0.a) <= ((firstTrailingBit(global1.a ^ global2.x) << (0u % 32u)) >> (60801u % 32u));
    var var_2 = Struct_2(Struct_1(global1.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1367f))), _wgslsmith_f_op_f32(round(-1971f)), _wgslsmith_f_op_f32(1093f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(0u), firstLeadingBit(1u), _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(33719u, u_input.c)), max(var_0.a, u_input.a.x << (global1.a % 32u))));
    let var_3 = select(func_4(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, 1u, var_0.a), vec3<u32>(81357u, u_input.a.x, var_0.a), var_2.a.a), abs(vec3<u32>(var_0.a, u_input.b, u_input.b))), vec2<bool>(true, true)).wxy, vec3<bool>(var_1, var_0.a > countOneBits(select(64389u, var_0.a, true)), global1.b), false & !var_2.a.a);
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.b.x), reverseBits(vec4<u32>(~26650u, ~_wgslsmith_mult_u32(12624u, global2.x), u_input.c, ~(~var_0.a))), -1000f);
}

