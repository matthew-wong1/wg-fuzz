struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(49166u, -26964i, Struct_1(1637f, -1i), 0i);

var<private> global1: Struct_1 = Struct_1(429f, 19i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(60473u, arg_1.x), arg_1.yy), vec2<u32>(arg_1.x, 69059u)), arg_0.a), arg_0.d, Struct_1(_wgslsmith_div_f32(281f, global0.c.a), 1i), global0.b);
    global0 = Struct_2(arg_0.a, _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -2147483647i), max(global0.b, max(arg_0.c.b ^ -641i, global0.d))), Struct_1(2414f, 35363i), -43991i);
    global0 = Struct_2(~max(firstTrailingBit(19470u), 1u), arg_0.c.b, Struct_1(-161f, abs(0i)), 0i);
    global0 = arg_0;
    var var_1 = global0.c;
    return vec2<i32>(firstTrailingBit(var_0.c.b), ~global1.b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(max(_wgslsmith_mult_i32(firstLeadingBit(arg_1.b), global1.b), global0.d), global0.c.b);
    var_0 = global1.b;
    var_0 = ~(-1i);
    let var_1 = global0.c.b;
    let var_2 = Struct_2(global0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-24779i, 54548i), func_3(Struct_2(u_input.c.x, 35847i, arg_1, 1i), ~vec4<u32>(0u, u_input.e.x, 4294967295u, u_input.a))), ~vec2<i32>(global1.b, 2147483647i)), arg_0, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_1.b, arg_0.b & -2147483647i), abs(vec2<i32>(arg_1.b, arg_1.b)) ^ (vec2<i32>(-64186i, global0.b) ^ vec2<i32>(global0.d, 1i))), ~23619i));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.a)))), arg_1.b | min(-2147483647i, global0.b));
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = arg_0;
    return all(vec4<bool>(false, _wgslsmith_div_u32(~4294967295u, ~arg_0.a) < ~reverseBits(arg_0.a), true, false));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = Struct_2(9092u, arg_1 & (-(global0.c.b ^ -41887i) ^ firstLeadingBit(_wgslsmith_mult_i32(0i, arg_1))), Struct_1(-1000f, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, global0.b), vec2<i32>(global1.b, global0.c.b)))), -2147483647i);
    let var_1 = vec2<i32>(~(-2147483647i), arg_2.d);
    let var_2 = var_0;
    var var_3 = any(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), func_4(Struct_2(~0u, -10267i, func_2(arg_2.c, Struct_1(global0.c.a, arg_1)), max(-2147483647i, arg_1)))));
    var var_4 = !(!vec2<bool>(true, 1124f >= _wgslsmith_f_op_f32(922f * var_0.c.a)));
    return vec3<i32>(firstTrailingBit(~(-1i)), 1366i, -2869i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    global1 = func_2(global0.c, arg_1);
    global0 = Struct_2(4294967295u, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.b, arg_1.b), -28854i), ~select(arg_0.x, _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(global0.d, global1.b, arg_0.x)), true)), func_2(Struct_1(372f, ~22590i), func_2(func_2(Struct_1(global1.a, global1.b), Struct_1(global0.c.a, 0i)), arg_1)), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, ~(-2147483647i)), global0.b));
    let var_0 = Struct_2(u_input.c.x, ~0i, Struct_1(_wgslsmith_f_op_f32(max(global0.c.a, arg_1.a)), i32(-1i) * -(30460i >> (u_input.e.x % 32u))), 1i);
    global0 = Struct_2(select(~0u, u_input.d.x, false), _wgslsmith_dot_vec2_i32(abs(reverseBits(firstTrailingBit(vec2<i32>(-1863i, 46934i)))), func_3(var_0, _wgslsmith_div_vec4_u32(vec4<u32>(global0.a, var_0.a, var_0.a, 0u), ~vec4<u32>(0u, global0.a, global0.a, 1u)))), func_2(var_0.c, var_0.c), _wgslsmith_dot_vec2_i32(arg_0.zz, firstLeadingBit(vec2<i32>(-2147483647i, -1i))) ^ global1.b);
    var var_1 = _wgslsmith_mod_i32(var_0.b, 74005i | (global1.b & 1i));
    return -18543i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(step(-914f, -286f)), ~min(func_5(func_1(global0.a, 2147483647i, Struct_2(global0.a, 10630i, Struct_1(global1.a, global0.b), global1.b)), func_2(Struct_1(-1000f, global0.b), Struct_1(-675f, -24045i))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xy, global0.d, _wgslsmith_f_op_f32(-global0.c.a), 499f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), -216f, _wgslsmith_f_op_f32(480f - global1.a)) * vec3<f32>(_wgslsmith_f_op_f32(-1669f - 888f), _wgslsmith_f_op_f32(-global0.c.a), -304f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, global1.a, 607f) - vec3<f32>(1045f, 124f, -271f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(global1.a, -594f)), _wgslsmith_f_op_f32(select(global1.a, global0.c.a, true)), _wgslsmith_f_op_f32(trunc(-1186f)))), false)));
}

