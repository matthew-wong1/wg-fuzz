struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(686f, 1192f, -618f, -933f);

var<private> global3: vec2<u32> = vec2<u32>(0u, 64737u);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = -59501i | (1i >> (~(~min(global4.a.a.x, 1u)) % 32u));
    let var_1 = u_input.e.yzx;
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, _wgslsmith_mod_u32(~35460u, 97154u), ~firstTrailingBit(16132u)), abs(u_input.e.xxw >> (vec3<u32>(28181u, ~u_input.e.x, max(4602u, 1664u)) % vec3<u32>(32u))));
    let var_3 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(-653f)), -1819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.b.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(801f, -882f, true)), _wgslsmith_f_op_f32(round(1154f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = vec4<bool>(33380u > global4.a.a.x, true, !(!arg_2), firstTrailingBit(max(firstTrailingBit(global3.x), ~20273u)) != (43035u ^ _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.zw, vec2<u32>(u_input.a.x, global4.a.a.x)), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)))));
    let var_2 = var_0;
    var var_3 = ~reverseBits(4294967295u);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), global4.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))))) + _wgslsmith_f_op_vec3_f32(-global2.yyz));
    return _wgslsmith_f_op_f32(var_2 * arg_0.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    global4 = Struct_2(Struct_1(~abs(vec4<u32>(global3.x, global4.a.a.x, global3.x, 1u)), -vec3<i32>(u_input.d & -4576i, u_input.b.x, abs(-46019i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(220f * arg_0.x), _wgslsmith_f_op_f32(arg_0.x * global2.x), 353f) - vec3<f32>(_wgslsmith_div_f32(613f, -1670f), _wgslsmith_f_op_f32(round(-1138f)), _wgslsmith_f_op_f32(261f + global2.x)))));
    global0 = ~global4.a.b.x;
    let var_0 = Struct_5(global2.x, -35777i, Struct_3(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, global4.a.b.x), _wgslsmith_mult_vec2_i32(global4.a.b.xy, vec2<i32>(global4.a.b.x, 41861i))), 0i, reverseBits(select(global4.a.b.x, global4.a.b.x, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec2<bool>(arg_1, false)), 4294967295u, vec4<f32>(664f, 719f, arg_0.x, 1151f))))), select(!select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false)), select(!vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(false, true, arg_1, arg_1), true), -14659i == var_0.b), any(!select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false))))));
    let var_2 = Struct_2(Struct_1(vec4<u32>(select(global3.x, _wgslsmith_mult_u32(global3.x, 1u), true), firstTrailingBit(u_input.a.x), global3.x, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, ~global4.a.b.x, 1i), reverseBits(max(vec3<i32>(-3653i, global4.a.b.x, -64218i), vec3<i32>(1i, u_input.d, global4.a.b.x))))), _wgslsmith_f_op_vec3_f32(round(arg_0)));
    return u_input.d & -7002i;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(global4.b * _wgslsmith_f_op_vec3_f32(global4.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.x, arg_2.x) + global2.wxx))), false);
    global2 = vec4<f32>(-1501f, _wgslsmith_f_op_f32(1906f + _wgslsmith_f_op_f32(-global2.x)), global4.b.x, global2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(677f - 1000f) * global4.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-global2.yxw), vec4<bool>(true, true, true, false), true)), global4.b.x)));
    let var_2 = !vec4<bool>(all(vec2<bool>(true, true)), -2033f > var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, global4.a.a.x), vec4<u32>(global4.a.a.x, 1u, global4.a.a.x, u_input.e.x)) != ~countOneBits(60857u), false);
    global0 = 1i;
    return Struct_4(var_2.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(vec3<i32>(u_input.d, 0i, 1i) ^ vec3<i32>(u_input.b.x, -2147483647i | u_input.d, u_input.d)), global4.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global2.wx)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, -1170f, false)), global4.b.x)))));
    var var_1 = Struct_1(abs(vec4<u32>(global3.x, ~0u, ~1u, firstTrailingBit(50671u) | (u_input.c.x | 73235u))), _wgslsmith_add_vec3_i32(vec3<i32>(max(firstLeadingBit(u_input.b.x), 18487i >> (global3.x % 32u)), _wgslsmith_sub_i32(global4.a.b.x, reverseBits(global4.a.b.x)), _wgslsmith_div_i32(abs(-2147483647i), _wgslsmith_clamp_i32(-1i, 2147483647i, u_input.d))), vec3<i32>(abs(1i), -global4.a.b.x, 2147483647i)));
    global1 = true;
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), global4.b.x, _wgslsmith_f_op_f32(203f * 1000f), _wgslsmith_f_op_f32(-global4.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1886f, 1075f, global4.b.x, global2.x), vec4<f32>(-985f, global2.x, -897f, 1202f), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 692f, global4.b.x, global4.b.x), vec4<f32>(1134f, global2.x, -333f, global4.b.x)))))));
    var var_2 = Struct_5(global4.b.x, -2507i, Struct_3(firstLeadingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, var_1.b.x), global4.a.b))));
    let var_3 = !vec3<bool>(true, (~var_1.a.x >> (var_1.a.x % 32u)) < _wgslsmith_sub_u32(var_1.a.x, countOneBits(u_input.e.x)), -57326i == firstTrailingBit(_wgslsmith_dot_vec2_i32(global4.a.b.yx, vec2<i32>(var_2.c.a.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(286f)), global2.x)))))), ~(~(~u_input.c.x)) << (14676u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a, var_2.a, 250f), global2.xzy)))))));
}

