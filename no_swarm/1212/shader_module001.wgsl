struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(686f)))) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f + 1269f))), -728f, global1.x));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1109f, _wgslsmith_f_op_f32(select(global0.x, global1.x, false))), global0.x, any(vec2<bool>(true, true)))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -135f), 1937f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1629f, global0.x, global0.x, _wgslsmith_f_op_f32(-global1.x)))), firstTrailingBit(vec4<u32>(u_input.a.x, countOneBits(~u_input.a.x), ~6828u, 1u)));
    let var_2 = var_1.b;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a)))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1.a.wy, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.x, var_1.a.x))), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<f32>(global1.x, 1031f))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(400f * 995f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f - _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1282f, 368f)))), -1000f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global0.x, -536f, global1.x), vec4<f32>(1251f, global0.x, global0.x, -298f), false)))), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x), arg_1.x, ~reverseBits(1u))), !any(vec2<bool>(true, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.x, -991f, arg_0)))), 276f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x - 767f), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global0.x) - global0.x)), select(~vec4<u32>(57884u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(arg_1.x, arg_1.x, 4294967295u, u_input.a.x) ^ vec4<u32>(65694u, 1u, 18791u, u_input.a.x), true) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 63710u, arg_1.x), vec4<u32>(arg_1.x, 104863u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 28223u, arg_1.x))));
    let var_2 = Struct_4(any(vec3<bool>(all(vec2<bool>(true, false)), !var_1.c, all(select(vec3<bool>(true, true, var_1.c), vec3<bool>(arg_0, arg_0, arg_0), arg_0)))), _wgslsmith_dot_vec4_u32(~(~var_1.b.b), var_1.b.b), Struct_2(vec3<f32>(-640f, 1000f, _wgslsmith_f_op_f32(global1.x * var_1.d.a.x)), var_1.b, !(!(var_1.a.x == 231f)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.d.a + var_1.d.a))), (vec4<u32>(98867u, 107346u, 1u, var_1.d.b.x) | var_1.d.b) >> (~vec4<u32>(u_input.a.x, arg_1.x, arg_1.x, 36637u) % vec4<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, 163f))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.d.a))), vec4<u32>(110782u, ~1u, abs(var_1.d.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.b.x, 73130u, var_1.d.b.x, 1341u), vec4<u32>(arg_1.x, arg_1.x, 1u, 0u)))), any(!select(vec2<bool>(false, true), vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, false))), Struct_1(vec4<f32>(-246f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1000f + var_1.d.a.x), _wgslsmith_f_op_f32(-global1.x)), abs(vec4<u32>(var_1.b.b.x, var_1.d.b.x, arg_1.x, var_1.b.b.x)))));
    return select(!select(select(vec3<bool>(arg_0, false, var_1.c), vec3<bool>(false, false, false), any(vec2<bool>(false, arg_0))), !select(vec3<bool>(arg_0, false, false), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, true, false)), !(!vec3<bool>(var_2.a, var_1.c, true))), select(select(vec3<bool>(any(vec4<bool>(false, false, true, arg_0)), select(false, var_1.c, true), all(vec4<bool>(var_2.c.c, arg_0, arg_0, true))), !vec3<bool>(var_2.c.c, false, var_1.c), vec3<bool>(arg_0, any(vec3<bool>(arg_0, var_1.c, var_1.c)), false)), select(select(!vec3<bool>(arg_0, false, true), !vec3<bool>(var_1.c, var_1.c, false), !vec3<bool>(arg_0, false, true)), !select(vec3<bool>(true, arg_0, var_1.c), vec3<bool>(false, var_2.d.c, arg_0), vec3<bool>(false, true, false)), select(vec3<bool>(arg_0, var_2.a, true), select(vec3<bool>(var_2.a, false, var_1.c), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, var_2.a, var_1.c), var_2.c.c))), -28561i < (arg_2 & 1i)), vec3<bool>(true, true, true));
}

fn func_1() -> vec2<i32> {
    global1 = global0.xw;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global0.x, global1.x, global0.x)))))))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(52101u, u_input.a.x), reverseBits(12630u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(8243u, u_input.a.x, u_input.a.x, 7304u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), ~abs(vec4<u32>(u_input.a.x, 19232u, 61478u, 44240u)))));
    let var_1 = select(select(vec3<bool>(true, select(any(vec2<bool>(false, true)), true, true), any(vec3<bool>(false, true, true))), !func_2(any(vec4<bool>(false, false, false, true)), var_0.b.yxw | vec3<u32>(1u, 65074u, 58397u), ~(-2147483647i)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    var var_2 = 4294967295u;
    global1 = _wgslsmith_f_op_vec2_f32(-global0.xy);
    return vec2<i32>(1i, -(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(-vec2<i32>(1i, 1i)), select(vec2<i32>(max(97584i, 1i), -30008i), _wgslsmith_mod_vec2_i32(-vec2<i32>(24469i, -2147483647i), select(vec2<i32>(-1i, -40554i), vec2<i32>(6938i, -2147483647i), vec2<bool>(true, true))), vec2<bool>(select(true, true, false), true))), func_1(), -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 5697i), vec2<i32>(-3189i, 0i)), 0i << (1u % 32u)), _wgslsmith_clamp_i32(~40485i, abs(800i), func_1().x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1112f, -943f, global0.x, 838f)))))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(15994u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(6839u, 44113u, ~35403u, 1u >> (u_input.a.x % 32u))), min(10217u, ~(~4294967295u)), 59985u ^ u_input.a.x, 46336u));
    let var_2 = _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(firstTrailingBit(var_0.x), var_0.x, -8123i, var_0.x)), -vec4<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x & var_0.x, firstLeadingBit(69960i)), -21490i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1140i, var_0.x), vec2<i32>(var_0.x, -16259i)) << (u_input.a.x % 32u)));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-658f, _wgslsmith_f_op_f32(global0.x - global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1098f)) * _wgslsmith_f_op_f32(global0.x + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(248f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f * 653f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))), firstTrailingBit(var_1.b));
    global1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_4 = ~var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(1u), var_3.b.zw);
}

