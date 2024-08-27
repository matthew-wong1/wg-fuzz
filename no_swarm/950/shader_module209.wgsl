struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_1 = Struct_1(true, 50676u, vec4<bool>(true, true, false, true), vec3<u32>(12902u, 112359u, 4294967295u), true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, firstLeadingBit(-25040i)), -1i, abs(u_input.a.x), min(u_input.b.x, _wgslsmith_mod_i32(-1i, 8276i))), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x) >> (~arg_3.b % 32u), 2147483647i, select(abs(u_input.c.x), i32(-1i) * -2147483647i, true || global1.a), u_input.b.x ^ (i32(-1i) * -29187i)), min(vec4<i32>(-37092i, u_input.a.x | -24689i, 19909i, ~u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 32339i, u_input.c.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.a.x, u_input.b.x)) & -vec4<i32>(u_input.a.x, u_input.b.x, 0i, u_input.c.x))));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(520f, -1058f, 344f, -426f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1098f, 289f, -888f, -1237f), vec4<f32>(966f, 1167f, 909f, -1909f))))));
    return false;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global0 = select(!vec3<bool>(global0.x, any(vec3<bool>(true, true, false)), true), arg_0.c.zwx, vec3<bool>(true, func_4(arg_0, vec3<bool>(global0.x, true, global1.c.x), arg_0, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(145f, -1912f, 233f, 753f), vec4<f32>(105f, -1367f, -323f, 1957f)), vec2<bool>(true, global0.x), _wgslsmith_f_op_f32(abs(-400f)), arg_0)), !(select(1i, u_input.b.x, arg_0.c.x) == u_input.c.x)));
    global0 = !global1.c.xyx;
    global0 = global1.c.yyx;
    global0 = vec3<bool>(select(any(vec2<bool>(global1.e, global1.e)), !func_4(arg_0, !global1.c.ywx, arg_0, global1.a), !arg_0.a), arg_0.e, ((false || func_4(arg_0, vec3<bool>(global1.c.x, false, global1.a), arg_0, false)) && true) & global1.a);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f + _wgslsmith_f_op_f32(-1488f + _wgslsmith_f_op_f32(-391f * -281f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - 176f))));
    return vec3<i32>(-6920i, _wgslsmith_sub_i32(0i, 1i), -u_input.b.x) >> (vec3<u32>(~(~(~12462u)), 1u, global1.d.x) % vec3<u32>(32u));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(firstTrailingBit(min(func_2(Struct_1(false, global1.b, global1.c, global1.d, global0.x)) & vec3<i32>(u_input.c.x, -2147483647i, -2147483647i), -u_input.b)), vec3<i32>(arg_0, -_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(2147483647i, arg_0))), 1i));
    let var_1 = 1569f;
    let var_2 = select(vec3<u32>(12196u, _wgslsmith_dot_vec4_u32(vec4<u32>(10448u << (global1.d.x % 32u), ~66045u, min(global1.d.x, global1.d.x), global1.d.x & 1u), (vec4<u32>(global1.b, global1.d.x, global1.d.x, 22254u) >> (vec4<u32>(global1.d.x, 1u, 1u, 4294967295u) % vec4<u32>(32u))) >> (abs(vec4<u32>(global1.d.x, 4294967295u, 66816u, global1.b)) % vec4<u32>(32u))), global1.b), ~(~(~select(vec3<u32>(global1.b, global1.d.x, global1.d.x), vec3<u32>(74155u, global1.d.x, 1u), true))), false);
    let var_3 = global1.c;
    var var_4 = Struct_1(var_3.x, _wgslsmith_sub_u32(max(max(_wgslsmith_mult_u32(1u, global1.d.x), 4294967295u), ~1u), ~(~31772u)), vec4<bool>(false, !(!arg_1.x) && true, select(true, true, select(false, var_3.x, global1.b > 24030u)), true), global1.d, false);
    return Struct_1(global1.a, var_4.b, select(global1.c, global1.c, vec4<bool>(true, true, true, global0.x)), ~_wgslsmith_sub_vec3_u32(countOneBits(var_4.d), _wgslsmith_add_vec3_u32(var_2, max(global1.d, global1.d))), var_1 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) - var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(453f, 439f) * vec2<f32>(819f, -773f)))))));
    var var_2 = func_1(u_input.c.x, global1.c.wyw);
    let var_3 = global1.d.x;
    var var_4 = Struct_1(!global0.x || var_2.c.x, 0u, select(vec4<bool>(false, false && (5204u < var_2.b), global0.x, any(func_1(6166i, var_2.c.zwx).c)), !vec4<bool>(any(var_2.c.zzx), false, var_0.x > -1i, global1.c.x), global1.c), ~abs(var_2.d), 1i > var_0.x);
    global0 = vec3<bool>(true, false, var_4.c.x);
    let var_5 = ~(~abs(vec2<u32>(_wgslsmith_mult_u32(0u, 1u), global1.d.x)));
    var_4 = func_1(var_0.x, var_2.c.xyy);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.b.yz, vec2<f32>(-354f, 1351f));
}

