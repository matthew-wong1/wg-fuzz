struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(740f, vec3<bool>(false, false, false));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(232f, arg_0.x, global0.b.b.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -833f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, global0.c.x))))))));
    global2 = Struct_1(_wgslsmith_div_f32(-1648f, -1562f), select(vec3<bool>(true, true, global1.b.x), !(!vec3<bool>(global2.b.x, true, true)), vec3<bool>(true, global1.b.x, true)));
    global2 = Struct_1(global1.a, vec3<bool>(global1.b.x | (true || global1.b.x), !any(select(vec4<bool>(global0.b.b.b.x, false, global0.a.b.b.x, global0.b.b.b.x), vec4<bool>(true, true, global2.b.x, true), vec4<bool>(true, global0.a.b.b.x, global0.a.b.b.x, false))), true));
    let var_1 = arg_0;
    var var_2 = global0.a.b;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, 1756i, u_input.d, u_input.d)), -abs(vec4<i32>(u_input.d, 14828i, u_input.a.x, 1i))), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d, 41884i, u_input.b, 22407i), -vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.b)), countOneBits(-vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_i32(u_input.d, abs(-2147483647i)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: u32) -> vec2<i32> {
    var var_0 = global0.b;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-u_input.a.x, func_3(arg_2)), _wgslsmith_sub_vec2_i32(arg_1.a, firstLeadingBit(arg_1.c)), select(vec2<bool>(global2.b.x, false), vec2<bool>(global2.b.x, false), var_0.b.b.x | global0.b.b.b.x)), arg_1.c & select(_wgslsmith_add_vec2_i32(arg_1.a, u_input.a.yz), ~u_input.a.zy, select(global0.a.b.b.yz, vec2<bool>(global2.b.x, global1.b.x), global0.a.b.b.zy))), vec2<i32>(-23801i, ~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(348f, -544f, -772f) + vec3<f32>(-1000f, -333f, global0.c.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_2(-167f, Struct_1(-931f, vec3<bool>(global1.b.x, global0.b.b.b.x, true)));
    var var_1 = arg_1.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c))), _wgslsmith_f_op_vec2_f32(-global0.c)));
    var var_3 = ~1u;
    let var_4 = ~(vec2<u32>(_wgslsmith_mult_u32(arg_1.b.x, 1u) >> (arg_1.b.x % 32u), 1u) & u_input.c.yz);
    return arg_1;
}

fn func_1() -> vec2<f32> {
    var var_0 = global0.b;
    var var_1 = select(10019u, min(~_wgslsmith_mult_u32(30584u, u_input.c.x), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 94784u, 43912u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 34438u, u_input.c.x, 60837u)))), !select(all(!vec4<bool>(global1.b.x, true, global0.b.b.b.x, global0.b.b.b.x)), !(false | global1.b.x), true));
    var var_2 = func_4(var_0.b.b.xz, Struct_3(vec2<i32>(u_input.d, u_input.b >> (countOneBits(u_input.c.x) % 32u)), select(countOneBits(vec4<u32>(19129u, 0u, 35026u, u_input.c.x)), vec4<u32>(1u, ~1u, 94088u, u_input.c.x), !(!vec4<bool>(var_0.b.b.x, var_0.b.b.x, global2.b.x, global2.b.x))), func_2(0i, Struct_3(vec2<i32>(u_input.d, u_input.d), vec4<u32>(22705u, u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(-11183i, 31683i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a, 403f, global1.a)))), 7393u ^ _wgslsmith_div_u32(u_input.c.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-547f)) - _wgslsmith_f_op_f32(-682f + -969f))) - global0.a.a));
    var var_3 = var_2.c.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -239f))), global0.a.b.b);
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1()))));
    let var_1 = var_0;
    var var_2 = var_1.b.b.b;
    global0 = var_0;
    var var_3 = ~vec4<i32>(~select(func_3(vec3<f32>(247f, global0.a.b.a, 1805f)), _wgslsmith_mult_i32(0i, 0i), !var_2.x), 27945i, abs(u_input.b), -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, u_input.b, 25588i, -6727i)), vec4<i32>(u_input.b, 28563i, -20308i, -36062i) | vec4<i32>(15990i, -38621i, u_input.d, 9903i)));
    var_3 = abs(-vec4<i32>(~(-var_3.x), u_input.d, func_4(vec2<bool>(true, global0.a.b.b.x), Struct_3(vec2<i32>(1i, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec2<i32>(var_3.x, 0i)), _wgslsmith_f_op_f32(var_0.b.b.a * global2.a)).a.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(9955u, ~firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, 0u))), ~var_3.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.a, global1.a, 1372f) * vec3<f32>(396f, global2.a, -859f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1557f, -1623f, var_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, 1622f, -218f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(841f, var_0.a.a, 1718f), vec3<f32>(global1.a, 904f, global0.c.x))), true))));
}

