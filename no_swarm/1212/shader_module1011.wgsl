struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, 75604i, i32(-2147483648), 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(true));
    let var_1 = Struct_2(vec4<i32>(global0.a.x, -_wgslsmith_mult_i32(-35753i, global0.a.x), global0.a.x, global0.a.x));
    var_0 = Struct_3(Struct_1(var_0.a.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0);
    global0 = var_1;
    return var_1;
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    global0 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f + -1438f) * -492f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-872f, _wgslsmith_div_f32(349f, 2325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-317f, -1611f))))))));
    let var_0 = any(vec4<bool>(!(global0.a.x > -2147483647i) && true, true, (min(20969i, global0.a.x) << (_wgslsmith_clamp_u32(1u, 1u, 50986u) % 32u)) < _wgslsmith_dot_vec4_i32(reverseBits(global0.a), max(global0.a, vec4<i32>(-46519i, -25125i, global0.a.x, 0i))), true));
    let var_1 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, global0.a), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a.x, global0.a.x, global0.a.x), reverseBits(global0.a)), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 0i) | vec4<i32>(global0.a.x, 35606i, global0.a.x, 17785i))));
    return select(!select(vec4<bool>(false, var_0, select(var_0, var_0, true), all(vec4<bool>(false, var_0, var_0, var_0))), select(vec4<bool>(true, var_0, var_0, var_0), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, var_0, var_0, false), false), true), !vec4<bool>(false, var_0, var_0, var_0)), vec4<bool>(var_0, ~u_input.a.x < (45114u >> (u_input.b % 32u)), true, var_0), (abs(~var_1.a.x) << (_wgslsmith_mult_u32(39557u, u_input.a.x) % 32u)) == reverseBits(~(22026i & global0.a.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global0 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.a.x, -26948i, -2147483647i), ~(-2147483647i), select(726i, 31188i, arg_1.x), ~59484i), _wgslsmith_mod_vec4_i32(~global0.a, global0.a)), global0.a, min(min(global0.a, global0.a) << (vec4<u32>(4294967295u, u_input.a.x, 10658u, 4294967295u) % vec4<u32>(32u)), global0.a)));
    global0 = Struct_2(-firstLeadingBit(global0.a));
    global0 = func_2(arg_0);
    var var_0 = vec2<bool>(all(select(func_3(u_input.a.wx & u_input.a.yw), arg_1, arg_1)), ~global0.a.x >= global0.a.x);
    var_0 = arg_1.zw;
    return any(vec4<bool>(true, arg_2.a, !(u_input.a.x >= 35598u), any(arg_1.yxy))) || (true & all(vec3<bool>(true, any(arg_1.www), all(arg_1))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    return -(~1i);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<u32>(abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yy), vec2<u32>(1u, u_input.a.x)))), 0u, arg_0);
    var var_1 = select(select(!(!func_3(vec2<u32>(u_input.b, arg_0)).wzz), vec3<bool>(all(select(vec2<bool>(arg_1.a.a, true), vec2<bool>(arg_1.a.a, arg_1.a.a), arg_1.a.a)), func_3(reverseBits(vec2<u32>(4294967295u, var_0.x))).x, !arg_1.a.a), false), !vec3<bool>(all(!vec4<bool>(arg_1.a.a, arg_1.a.a, false, arg_1.a.a)), arg_1.a.a, any(vec4<bool>(false, arg_1.a.a, arg_1.a.a, arg_1.a.a))), func_3(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15951u, 4294967295u, 0u, 39159u), u_input.a), _wgslsmith_mult_u32(1u, 94719u))).wxy);
    var var_2 = Struct_2(vec4<i32>(0i, -(~(-2147483647i)), max(global0.a.x, arg_2), _wgslsmith_sub_i32(-firstTrailingBit(39361i), abs(-arg_2))));
    global0 = func_2(-964f);
    global0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -903f))));
    return Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(func_2(3216f).a.x, 15183i | arg_2), abs(abs(var_2.a.x)), reverseBits(-global0.a.x), ~(-21729i & var_2.a.x)), vec4<i32>(45239i << ((1u | u_input.b) % 32u), -_wgslsmith_dot_vec3_i32(global0.a.xxw, var_2.a.xzx), -2396i, 35635i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~45947u, Struct_3(Struct_1(all(vec3<bool>(false, false, false)))), func_4(2147483647i, !vec3<bool>(6628i <= global0.a.x, func_1(-264f, vec4<bool>(false, true, false, true), Struct_1(false)), true), Struct_1(true), u_input.a.yyw));
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1199f))) + _wgslsmith_f_op_f32(f32(-1f) * -1237f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-621f)))));
    let var_0 = 31118u;
    var var_1 = _wgslsmith_add_vec3_u32(u_input.a.wyw, u_input.a.zxx);
    var_1 = ~abs((u_input.a.xyx & _wgslsmith_add_vec3_u32(u_input.a.wyx, vec3<u32>(1u, u_input.b, var_1.x))) << (countOneBits(firstLeadingBit(u_input.a.wzy)) % vec3<u32>(32u)));
    var var_2 = ~(-global0.a.yx);
    var var_3 = vec3<u32>(~73287u, 1u, countOneBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(20405u, 10373u, var_1.x, 4294967295u)), vec4<u32>(u_input.b, var_0, 1u, 0u)), ~(u_input.a ^ u_input.a)), -1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - -898f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2042f, -1327f) * _wgslsmith_f_op_f32(round(469f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1065f)), _wgslsmith_f_op_f32(min(1157f, -501f)), true)))), var_1.xx);
}

