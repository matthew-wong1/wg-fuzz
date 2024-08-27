struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1;

var<private> global2: u32 = 0u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    global1 = Struct_1(~firstLeadingBit(~global1.a), ~(-global1.b), ~(~(global1.c | global1.c)) & global1.c, u_input.a);
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(reverseBits(abs(vec3<u32>(0u, u_input.a, u_input.a))), abs(vec3<u32>(global1.d, 69892u, 42280u))) >> (abs(abs(vec3<u32>(4294967295u, arg_1.x, u_input.a)) & vec3<u32>(55921u, global1.a.x, u_input.a)) % vec3<u32>(32u)));
    let var_1 = Struct_1(select(vec4<u32>(1u, ~32313u, _wgslsmith_sub_u32(~1u, var_0.x), 1u), reverseBits(global1.a), false), arg_2, vec4<i32>(1i, arg_0, -1i, -1i), arg_1.x << (1u % 32u));
    global2 = 1u;
    var var_2 = vec3<u32>(0u, u_input.a, u_input.a);
    return 932f;
}

fn func_2() -> bool {
    global1 = Struct_1(global1.a, -max(-1i, global1.b), _wgslsmith_sub_vec4_i32(~vec4<i32>(-25257i, global1.b, global1.b, global1.c.x), global1.c) & vec4<i32>(-1i, ~1i, global1.b, 280i), u_input.a);
    global0 = vec3<f32>(global0.x, -487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f * _wgslsmith_f_op_f32(-global0.x))));
    var var_0 = Struct_1(firstTrailingBit(global1.a) ^ global1.a, global1.b, select(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.x, global1.b, -2147483647i, global1.c.x), ~global1.c), ~(~vec4<i32>(global1.c.x, 2147483647i, global1.b, global1.c.x)), vec4<bool>(false, true, select(false, true, true), all(vec4<bool>(false, false, true, true)))) >> (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 0u, 0u, 20150u)), vec4<u32>(global1.d, u_input.a, global1.d, global1.d)) % vec4<u32>(32u)), global1.a.x);
    let var_1 = abs(var_0.b) < var_0.b;
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(413f * global0.x), -1000f), _wgslsmith_f_op_f32(func_3(~(~(-global1.c.x)), vec3<u32>(global1.d, 1u, reverseBits(var_0.d)), global1.b, select(vec3<bool>(true, true, !var_1), vec3<bool>(var_1, !var_1, var_1), global1.b < _wgslsmith_div_i32(54638i, var_0.c.x)))), _wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1498f + 463f))))));
    return !all(vec2<bool>(true, var_1));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 156f, global0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(153f, global0.x, -857f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_div_f32(302f, global0.x)), func_2())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, global0.x, -571f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), vec3<bool>(true, true, firstTrailingBit(u_input.a) >= ~1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1815f, 1009f)), vec3<f32>(global0.x, global0.x, 737f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1631f, -281f) * vec3<f32>(946f, -1000f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -840f, 831f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, 870f))))))));
    global2 = ~((~global1.d << (61684u % 32u)) ^ ~countOneBits(~u_input.a));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(942f, -1954f)), _wgslsmith_f_op_f32(exp2(global0.x))), global0.x, global0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1802f, global0.x, 930f), vec3<f32>(global0.x, 889f, global0.x))))));
    global1 = Struct_1(~countOneBits(global1.a), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-54995i, global1.b), global1.c.wz), -2147483647i), vec4<i32>(~arg_0.c.x, global1.c.x, -global1.b, -2147483647i | global1.b), countOneBits(~(~_wgslsmith_div_u32(4294967295u, global1.a.x))));
    var var_0 = arg_0;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = ~global1.b;
    var var_2 = var_0.a.x;
    var var_3 = ~52254u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 5719u), ~vec2<u32>(arg_2.d >> (arg_2.a.x % 32u), 80526u)) % 32u);
    var_3 = _wgslsmith_mod_u32(~(~(arg_2.d ^ 27793u) ^ 76515u), _wgslsmith_dot_vec4_u32(~firstLeadingBit(var_0.a) << (_wgslsmith_clamp_vec4_u32(~arg_2.a, vec4<u32>(4294967295u, 37237u, 1u, 31414u), _wgslsmith_div_vec4_u32(arg_2.a, var_0.a)) % vec4<u32>(32u)), ~vec4<u32>(global1.d << (global1.a.x % 32u), _wgslsmith_add_u32(global1.a.x, 0u), func_1(arg_2).a.x, ~0u)));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.yz;
    var var_1 = vec2<i32>(-34221i >> (func_4(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, func_1(Struct_1(global1.a, global1.b, global1.c, 44724u))) % 32u), abs(global1.b));
    let var_2 = global1.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 1426f, -1050f), vec3<f32>(1000f, global0.x, global0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1210f, global0.x), vec3<f32>(384f, 515f, var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-193f, 135f, var_0.x), vec3<f32>(global0.x, -762f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1002f, 911f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, 2581f, -913f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 208f), vec3<f32>(var_0.x, global0.x, var_0.x), vec3<bool>(true, false, false))) + vec3<f32>(global0.x, global0.x, -1179f))))));
    let x = u_input.a;
    s_output = StorageBuffer(40653u, vec4<f32>(-2253f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1005f - _wgslsmith_f_op_f32(var_3.x - global0.x)))), -1351f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1902f) * _wgslsmith_div_f32(-579f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, -467f)) + _wgslsmith_f_op_f32(-1535f * -1131f))))), -110f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), 1f)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -618f)), -1331f));
}

